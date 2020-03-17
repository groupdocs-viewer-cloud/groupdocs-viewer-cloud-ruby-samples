# Import modules
require './Common.rb'

# This example demonstrates how to retrieve and print out text with coordinates
class ImageViewerGetTextCoordinates
    def self.Run()        
        infoApi = GroupDocsViewerCloud::InfoApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "PNG"
        viewOptions.render_options = GroupDocsViewerCloud::ImageOptions.new
        viewOptions.render_options.extract_text = true

        request = GroupDocsViewerCloud::GetInfoRequest.new(viewOptions)    
        response = infoApi.get_info(request)
        for line in response.pages[0].lines do
            puts(" x: " + line.x.to_s + "; y: " + line.y.to_s)
        end
        puts("ImageViewerGetTextCoordinates completed: " + response.pages.length.to_s)
    end
end
