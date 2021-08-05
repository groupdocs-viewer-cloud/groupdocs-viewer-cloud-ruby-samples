# Import modules
require './Common.rb'

# This example demonstrates how to render a text files using rows and pages restrictions
class SpecifyMaxCharsAndRows
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.txt"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.text_options = GroupDocsViewerCloud::TextOptions.new
        viewOptions.render_options.text_options.max_chars_per_row = 100
        viewOptions.render_options.text_options.max_rows_per_page = 100

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("SpecifyMaxCharsAndRows completed: " + response.pages.length.to_s)
    end
end
