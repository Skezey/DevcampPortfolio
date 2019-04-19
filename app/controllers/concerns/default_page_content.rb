module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Scott's Portfolio"
    @seo_keywords = "Scott Young Portfolio"
  end

end
