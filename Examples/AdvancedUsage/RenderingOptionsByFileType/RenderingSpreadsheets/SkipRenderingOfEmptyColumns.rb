# Import modules
require './Common.rb'

# This example demonstrates how to omit to render empty columns
class SkipRenderingOfEmptyColumns
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_empty_column.xlsx"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.spreadsheet_options = GroupDocsViewerCloud::SpreadsheetOptions.new
        viewOptions.render_options.spreadsheet_options.render_empty_columns = false

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("SkipRenderingOfEmptyColumns completed: " + response.pages.length.to_s)
    end
end
