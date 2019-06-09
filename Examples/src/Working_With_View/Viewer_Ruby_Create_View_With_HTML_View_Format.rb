# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_View
  def self.Viewer_Ruby_Create_View_With_HTML_View_Format()

    # Getting instance of the API
    $api = Common_Utilities.Get_ViewApi_Instance()

    $viewOptions = GroupDocsViewerCloud::ViewOptions.new()

    $fileInfo = GroupDocsViewerCloud::FileInfo.new()
    $fileInfo.file_path = "viewerdocs/one-page.docx"
    $fileInfo.password = ""
    $fileInfo.storage_name = $myStorage

    $viewOptions.file_info = $fileInfo;
    
    $viewOptions.view_format = "HTML"

    $request = GroupDocsViewerCloud::CreateViewRequest.new($viewOptions)
    $response = $api.create_view($request)

    puts("Expected response type is ViewResult: " + ($response).to_s)
  end
end