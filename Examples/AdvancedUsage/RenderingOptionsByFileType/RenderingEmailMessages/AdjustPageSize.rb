# Import modules
require './Common.rb'

# This example demonstrates how to adjust output page size
class AdjustPageSize
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.msg"
        viewOptions.view_format = "PDF"
        viewOptions.render_options = GroupDocsViewerCloud::PdfOptions.new
        viewOptions.render_options.email_options = GroupDocsViewerCloud::EmailOptions.new
        viewOptions.render_options.email_options.page_size = "A4"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("AdjustPageSize completed: " + response.file.path)
    end
end
