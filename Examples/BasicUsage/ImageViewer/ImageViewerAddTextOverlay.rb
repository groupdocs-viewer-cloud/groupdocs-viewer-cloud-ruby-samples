# Import modules
require './Common.rb'

# This example demonstrates how to render document for display with text
class ImageViewerAddTextOverlay
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "PNG"
        viewOptions.render_options = GroupDocsViewerCloud::ImageOptions.new
        viewOptions.render_options.extract_text = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("ImageViewerAddTextOverlay completed: " + response.pages.length.to_s)
    end
end
