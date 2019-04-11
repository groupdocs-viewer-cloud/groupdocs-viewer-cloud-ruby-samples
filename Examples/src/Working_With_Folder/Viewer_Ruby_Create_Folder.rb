# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Viewer_Ruby_Create_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsViewerCloud::CreateFolderRequest.new("viewerdocs", $myStorage)
    $response = $api.create_folder($request)

    puts("Expected response type is Void: 'viewerdocs' folder created.")
  end
end