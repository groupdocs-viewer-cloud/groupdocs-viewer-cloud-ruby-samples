# Import modules
require './Common.rb'

# This example demonstrates how to render password-protected documents
class ViewProtectedDocument
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/password_protected.docx"
        viewOptions.file_info.password = "12345"        
        viewOptions.view_format = "HTML"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("ViewProtectedDocument completed: " + response.pages.length.to_s)
    end
end
