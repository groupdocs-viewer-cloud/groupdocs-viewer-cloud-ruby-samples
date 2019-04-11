# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Viewer_Ruby_Copy_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsViewerCloud::CopyFolderRequest.new("viewerdocs", "viewerdocs1", $myStorage, $myStorage)
    $response = $api.copy_folder($request)

    puts("Expected response type is Void: 'viewerdocs' folder copied as 'viewerdocs1'.")
  end
end