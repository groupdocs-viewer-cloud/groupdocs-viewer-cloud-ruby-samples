# Import modules
require './Common.rb'

# This example demonstrates how to render hidden page
class RenderHiddenPages
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_hidden_page.pptx"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.render_hidden_pages = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderHiddenPages completed: " + response.pages.length.to_s)
    end
end
