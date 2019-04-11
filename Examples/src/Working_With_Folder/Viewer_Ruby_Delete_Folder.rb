# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Viewer_Ruby_Delete_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsViewerCloud::DeleteFolderRequest.new("viewerdocs1", $myStorage, true)
    $response = $api.delete_folder($request)

    puts("Expected response type is Void: 'viewerdocs/viewerdocs1' folder deleted recursively.")
  end
end