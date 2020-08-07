require 'xml-sitemap'

def create_sitemap
  map = XmlSitemap::Map.new('arun-tech-blogs.herokuapp.com',:secure => true) do |m|
    # Adds a simple page
    m.add '/', :priority => 0.5, :updated => Date.today, :period => :weekly

    # You can drop leading slash, it will be automatically added
    m.add '/blog/solid-principles' , :priority => 0.9, :updated => Date.new(2020,07,30), :period => :weekly

    # Set the page priority
    m.add '/about', :priority => 0.6, :updated => Date.new(2020,07,30), :period => :weekly

    # Set the page priority
    m.add '/search', :priority => 0.6, :updated => Date.new(2020,05,30), :period => :monthly

  end

  # Render the sitemap XML
  map.render

  # Render and save XML to the output file
  map.render_to('./public/site-map.xml')
end
