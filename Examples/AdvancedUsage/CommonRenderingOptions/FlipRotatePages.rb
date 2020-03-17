# Import modules
require './Common.rb'

# This example demonstrates how to rotate output pages when viewing a document as PDF
class FlipRotatePages
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "PDF"
        viewOptions.render_options = GroupDocsViewerCloud::PdfOptions.new
        page_rotation = GroupDocsViewerCloud::PageRotation.new
        page_rotation.page_number = 1
        page_rotation.rotation_angle = "On90Degree"
        viewOptions.render_options.page_rotations = [page_rotation]

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("FlipRotatePages completed: " + response.file.path)
    end
end
