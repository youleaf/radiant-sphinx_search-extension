class SphinxSearchExtension < Radiant::Extension
  version YAML::load_file(File.join(File.dirname(__FILE__), 'VERSION'))
  description "Search Pages with ThinkingSphinx"
  url "http://digitalpulp.com"
  
  def activate
    Page.send(:include, SphinxSearch::PageExtensions)
    PageContext.send(:include, SphinxSearch::PageContextExtensions)
  end
  
  def deactivate
  end
  
end