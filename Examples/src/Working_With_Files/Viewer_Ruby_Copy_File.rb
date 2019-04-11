# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Viewer_Ruby_Copy_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsViewerCloud::CopyFileRequest.new("viewerdocs/one-page1.docx", "viewerdocs/one-page-copied.docx", $myStorage, $myStorage)
    $response = $api.copy_file($request)

    puts("Expected response type is Void: 'viewerdocs/one-page1.docx' file copied as 'viewerdocs/one-page-copied.docx'.")
  end
end