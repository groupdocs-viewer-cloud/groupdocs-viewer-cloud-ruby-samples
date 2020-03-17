# Import modules
require './Common.rb'

# This example demonstrates how to apply the watermark to the output pages
class AddWatermark
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "HTML"
        viewOptions.watermark = GroupDocsViewerCloud::Watermark.new
        viewOptions.watermark.text = "This is a watermark"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("AddWatermark completed: " + response.pages.length.to_s)
    end
end
