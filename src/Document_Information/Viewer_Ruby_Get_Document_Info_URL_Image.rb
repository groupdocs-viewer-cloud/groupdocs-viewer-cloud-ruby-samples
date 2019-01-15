# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_document_info_from_url_request.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Get_Document_Info_URL_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $url = "https://www.dropbox.com/s/j260ve4f90h1p41/one-page.docx?dl=1";
    $folder = "";

    $request = GroupDocsViewerCloud::ImageGetDocumentInfoFromUrlRequest.new($url);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_get_document_info_from_url($request);

    puts("Respons: " + ($response).to_s);
  end
end