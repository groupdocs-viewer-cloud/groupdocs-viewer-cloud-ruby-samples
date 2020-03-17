# Import modules
require './Common.rb'

# This example demonstrates how to enable rendering of hidden rows and columns
class RenderHiddenColumnsAndRows
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_hidden_row_and_column.xlsx"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.spreadsheet_options = GroupDocsViewerCloud::SpreadsheetOptions.new
        viewOptions.render_options.spreadsheet_options.render_hidden_columns = true
        viewOptions.render_options.spreadsheet_options.render_hidden_rows = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderHiddenColumnsAndRows completed: " + response.pages.length.to_s)
    end
end
