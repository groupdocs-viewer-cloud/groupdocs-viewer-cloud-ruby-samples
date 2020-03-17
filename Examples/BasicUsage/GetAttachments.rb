# Import modules
require './Common.rb'

# This example demonstrates how get attachments
class GetAttachments
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_attachments.msg"
        viewOptions.view_format = "HTML"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("GetAttachments completed: " + response.attachments.length.to_s)
    end
end
