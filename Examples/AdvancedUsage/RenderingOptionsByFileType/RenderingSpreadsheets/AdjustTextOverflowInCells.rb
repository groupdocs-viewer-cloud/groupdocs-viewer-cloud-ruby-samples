# Import modules
require './Common.rb'

# This example demonstrates how to hide text in case it overflows cell
class AdjustTextOverflowInCells
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.xlsx"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.spreadsheet_options = GroupDocsViewerCloud::SpreadsheetOptions.new
        viewOptions.render_options.spreadsheet_options.text_overflow_mode = "HideText"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("AdjustTextOverflowInCells completed: " + response.pages.length.to_s)
    end
end
