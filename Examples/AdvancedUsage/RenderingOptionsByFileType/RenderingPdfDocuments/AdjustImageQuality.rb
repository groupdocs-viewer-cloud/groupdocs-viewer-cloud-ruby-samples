# Import modules
require './Common.rb'

# This example demonstrates how to adjust image quality when rendering PDF to HTML
class AdjustImageQuality
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.pdf"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.pdf_document_options = GroupDocsViewerCloud::PdfDocumentOptions.new  
        viewOptions.render_options.pdf_document_options.image_quality = "Medium"  

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("AdjustImageQuality completed: " + response.pages.length.to_s)
    end
end
