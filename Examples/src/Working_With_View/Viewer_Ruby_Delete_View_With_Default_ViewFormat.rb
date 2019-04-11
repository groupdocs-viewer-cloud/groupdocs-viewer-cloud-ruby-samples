# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_View
  def self.Viewer_Ruby_Delete_View_With_Default_ViewFormat()

    # Getting instance of the API
    $api = Common_Utilities.Get_ViewerApi_Instance()

    $deleteViewOptions = GroupDocsViewerCloud::DeleteViewOptions.new()

    $fileInfo = GroupDocsViewerCloud::FileInfo.new()
    $fileInfo.file_path = "viewerdocs/one-page.docx"
    $fileInfo.password = ""
    $fileInfo.storage_name = $myStorage

    $deleteViewOptions.file_info = $fileInfo;

    $request = GroupDocsViewerCloud::DeleteViewRequest.new($deleteViewOptions)
    $response = $api.delete_view($request)

    puts("Expected response type is Void: View deleted with default View Format.")
  end
end