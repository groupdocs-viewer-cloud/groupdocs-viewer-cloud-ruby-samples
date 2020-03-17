# Import modules
require './Common.rb'

# This example demonstrates how to reorder pages
class ReorderPages
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        # Pass page numbers in the order you want to render them
        viewOptions.render_options.pages_to_render = [2, 1]

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("ReorderPages completed: " + response.pages.length.to_s)
    end
end
