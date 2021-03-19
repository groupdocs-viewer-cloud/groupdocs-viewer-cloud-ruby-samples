# Import modules
require './Common.rb'

# This example demonstrates how to protect output PDF document
class PdfViewerProtectPdf
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "PDF"
        viewOptions.render_options = GroupDocsViewerCloud::PdfOptions.new
        viewOptions.render_options.permissions = ["DenyModification"]
        viewOptions.render_options.permissions_password = "p123"
        viewOptions.render_options.document_open_password = "o123"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("PdfViewerProtectPdf completed: " + response.file.path)
    end
end
