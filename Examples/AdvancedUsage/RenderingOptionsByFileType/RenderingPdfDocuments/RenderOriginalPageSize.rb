# Import modules
require './Common.rb'

# This example demonstrates how to convert pages to the same size as the size of pages in a source document
class RenderOriginalPageSize
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.pdf"
        viewOptions.view_format = "PNG"
        viewOptions.render_options = GroupDocsViewerCloud::ImageOptions.new
        viewOptions.render_options.pdf_document_options = GroupDocsViewerCloud::PdfDocumentOptions.new  
        viewOptions.render_options.pdf_document_options.render_original_page_size = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderOriginalPageSize completed: " + response.pages.length.to_s)
    end
end
