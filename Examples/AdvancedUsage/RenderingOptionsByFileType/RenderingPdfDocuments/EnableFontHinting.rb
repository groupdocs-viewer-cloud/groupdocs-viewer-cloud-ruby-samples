# Import modules
require './Common.rb'

# This example demonstrates how to adjust the display of an outline font
class EnableFontHinting
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.pdf"
        viewOptions.view_format = "PNG"
        viewOptions.render_options = GroupDocsViewerCloud::ImageOptions.new
        viewOptions.render_options.pdf_document_options = GroupDocsViewerCloud::PdfDocumentOptions.new  
        viewOptions.render_options.pdf_document_options.enable_font_hinting = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("EnableFontHinting completed: " + response.pages.length.to_s)
    end
end
