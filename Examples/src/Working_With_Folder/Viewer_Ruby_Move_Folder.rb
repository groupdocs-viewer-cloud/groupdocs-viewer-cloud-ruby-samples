# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Viewer_Ruby_Move_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()

    $request = GroupDocsViewerCloud::MoveFolderRequest.new("viewerdocs1", "viewerdocs/viewerdocs1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'viewerdocs1' folder moved to 'viewerdocs/viewerdocs1'.")
  end
end