# Import modules
require './Common.rb'

# This example demonstrates how to set output image size limits when rendering single image to PDF/HTML.
class HtmlViewerLimitImageSize
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.jpg"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.image_max_width = 800
        viewOptions.render_options.image_max_height = 800

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("HtmlViewerLimitImageSize completed: " + response.pages.length.to_s)
    end
end
