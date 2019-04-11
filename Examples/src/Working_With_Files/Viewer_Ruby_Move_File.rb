# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Viewer_Ruby_Move_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsViewerCloud::MoveFileRequest.new("viewerdocs/one-page1.docx", "viewerdocs1/one-page1.docx", $myStorage, $myStorage)
    $response = $api.move_file($request)

    puts("Expected response type is Void: 'viewerdocs/one-page1.docx' file moved to 'viewerdocs1/one-page1.docx'.")
  end
end