# Import modules
require './Common.rb'

# This example demonstrates how to set output image size
class ImageViewerAdjustImageSize
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "JPG"
        viewOptions.render_options = GroupDocsViewerCloud::ImageOptions.new
        viewOptions.render_options.width = 600
        viewOptions.render_options.height = 800

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("ImageViewerAdjustImageSize completed: " + response.pages.length.to_s)
    end
end
