module Jekyll
  # Monkey-patch Page to expose rendered_content in Liquid
  class Page
    def to_liquid(attrs = nil)
      super(attrs).tap do |hash|
        hash['rendered_content'] = data['rendered_content'] if data['rendered_content']
        hash['feed_content'] = data['feed_content'] if data['feed_content']
      end
    end
  end

  # A Jekyll generator plugin that processes blog post pages to first render Liquid filters
  class RenderPostContentGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      # Process all pages in the blog directory
      blog_pages = site.pages.select do |page|
        page.url.include?("/blog/") &&
        page.url != "/blog/" &&
        page.url != "/blog/feed.xml" &&
        page.data['layout'] == 'post'
      end

      blog_pages.each do |page|
        # First, render Liquid filters in the Markdown content
        template = site.liquid_renderer.file(page.path).parse(page.content)

        payload = site.site_payload.merge({
          "page" => page.to_liquid,
          "post" => page.to_liquid
        })

        info = {
          registers: {
            site: site,
            page: page
          },
          strict_filters: site.config["liquid"]["strict_filters"],
          strict_variables: site.config["liquid"]["strict_variables"]
        }

        # Render the Liquid filters
        liquid_rendered = template.render!(payload, info)

        # Now convert the Markdown to HTML
        converter = site.find_converter_instance(Jekyll::Converters::Markdown)
        html_content = converter.convert(liquid_rendered)

        # Store the fully rendered HTML content
        page.data['rendered_content'] = html_content

        # Feed-safe variant: readers strip inline <svg> and block external
        # <use>, and relative URLs have no base inside a feed entry.
        base = "#{site.config['url']}#{site.baseurl}#{page.url}"
        page.data['feed_content'] = feed_safe(html_content, base)
      end
    end

    private

    # Replace <svg> wrappers around <use href="./file.svg#id"> with <img>,
    # then make all "./" src/href URLs absolute.
    def feed_safe(html, base)
      html = html.gsub(%r{<svg\b[^>]*>.*?</svg>}m) do |svg|
        use = svg.match(/<use\b[^>]*\bhref="(\.\/[^"#]+)/)
        next svg unless use

        alt = svg[%r{<desc\b[^>]*>(.*?)</desc>}m, 1] ||
              svg[/\baria-label="([^"]*)"/, 1] || ""
        %(<img src="#{use[1]}" alt="#{alt.strip.gsub('"', '&quot;')}">)
      end

      html.gsub(/\b(src|href)="\.\//) { %(#{$1}="#{base}) }
    end
  end
end
