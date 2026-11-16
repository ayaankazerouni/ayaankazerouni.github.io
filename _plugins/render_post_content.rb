module Jekyll
  # Monkey-patch Page to expose rendered_content in Liquid
  class Page
    def to_liquid(attrs = nil)
      super(attrs).tap do |hash|
        hash['rendered_content'] = data['rendered_content'] if data['rendered_content']
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
      end
    end
  end
end
