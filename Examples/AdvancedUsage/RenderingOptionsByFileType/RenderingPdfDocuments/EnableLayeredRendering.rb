# Import modules
require './Common.rb'

# This example demonstrates how to enable layered rendering
class EnableLayeredRendering
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.pdf"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.pdf_document_options = GroupDocsViewerCloud::PdfDocumentOptions.new  
        viewOptions.render_options.pdf_document_options.enable_layered_rendering = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("EnableLayeredRendering completed: " + response.pages.length.to_s)
    end
end
