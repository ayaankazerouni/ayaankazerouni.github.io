module Jekyll
  class PrevNextGenerator < Generator
    safe true
    def generate(site)
      # If the page is within a "coursenotes" directory, and not the index file directly within "coursenotes"
      # set "next" and "previous" links in their front matter
      site.pages.each do |page|
        if page.url.include?("/coursenotes/") && !page.url.end_with?("/coursenotes/") && !page.url.end_with?("/index.html") 
          # Get the pages in sibling directories of the current page's directory
          page_dir = File.dirname(page.path)
          chapter_name = File.basename(page_dir)
          coursenotes_dir = File.dirname(page_dir)

          # Get the list of pages in the coursenotes directory in alphabetical order
          coursenotes_pages = site.pages.select { |p| p.url.include? coursenotes_dir }
            .sort_by { |p| p.url }

          # Get the index of the current page in the list of coursenotes pages
          page_index = coursenotes_pages.index(page)

          # Set the "previous" and "next" links in the page's front matter
          if page_index > 0
            page.data["previous"] = coursenotes_pages[page_index - 1].url
          end
          if page_index < coursenotes_pages.length - 1
            page.data["next"] = coursenotes_pages[page_index + 1].url
          end
        end
      end
    end
  end
end
