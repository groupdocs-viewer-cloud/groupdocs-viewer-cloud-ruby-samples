# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Document_Information
  def self.Viewer_Ruby_Get_Info_With_Spreadsheet_Render_Hidden_Rows_Option()

    # Getting instance of the API
    $api = Common_Utilities.Get_InfoApi_Instance()

    $viewOptions = GroupDocsViewerCloud::ViewOptions.new()

    $fileInfo = GroupDocsViewerCloud::FileInfo.new()
    $fileInfo.file_path = "viewerdocs/with-hidden-rows-and-columns.xlsx"
    $fileInfo.password = ""
    $fileInfo.storage_name = $myStorage

    $viewOptions.file_info = $fileInfo;

    $renderOptions = GroupDocsViewerCloud::RenderOptions.new()
    
    $spreadsheetOptions = GroupDocsViewerCloud::SpreadsheetOptions.new()
    $spreadsheetOptions.paginate_sheets = true
    $spreadsheetOptions.count_rows_per_page = 5
    $spreadsheetOptions.render_hidden_rows = true

    $renderOptions.spreadsheet_options = $spreadsheetOptions
    $viewOptions.render_options = $renderOptions

    $request = GroupDocsViewerCloud::GetInfoRequest.new($viewOptions)
    $response = $api.get_info($request)

    puts("Expected response type is InfoResult: " + ($response).to_s)
  end
end