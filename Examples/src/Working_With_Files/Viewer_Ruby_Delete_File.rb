# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Viewer_Ruby_Delete_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsViewerCloud::DeleteFileRequest.new("viewerdocs1/one-page1.docx", $myStorage)
    $response = $api.delete_file($request)

    puts("Expected response type is Void: 'viewerdocs1/one-page1.docx' deleted.")
  end
end