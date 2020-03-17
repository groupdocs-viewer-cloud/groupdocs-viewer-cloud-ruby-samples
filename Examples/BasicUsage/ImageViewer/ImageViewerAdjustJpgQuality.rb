# Import modules
require './Common.rb'

# This example demonstrates how to adjust quality of the output JPG image
class ImageViewerAdjustJpgQuality
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "JPG"
        viewOptions.render_options = GroupDocsViewerCloud::ImageOptions.new
        viewOptions.render_options.jpeg_quality = 50  

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("ImageViewerAdjustJpgQuality completed: " + response.pages.length.to_s)
    end
end
