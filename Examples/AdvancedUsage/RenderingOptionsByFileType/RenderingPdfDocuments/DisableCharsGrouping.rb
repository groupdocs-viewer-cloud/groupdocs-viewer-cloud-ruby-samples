# Import modules
require './Common.rb'

# This example demonstrates how to improve content positioning when rendering into PDF
class DisableCharsGrouping
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.pdf"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.pdf_document_options = GroupDocsViewerCloud::PdfDocumentOptions.new  
        viewOptions.render_options.pdf_document_options.disable_chars_grouping = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("DisableCharsGrouping completed: " + response.pages.length.to_s)
    end
end
