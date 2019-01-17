# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_page_request.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Download_Document_Page_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample-one-page.docx";
    $folder = "viewerdocs";
    $pageNumber = 1;

    $request = GroupDocsViewerCloud::ImageGetPageRequest.new($file, $pageNumber);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_get_page($request);

    puts("Respons: " + ($response).to_s);
  end
end