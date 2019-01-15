# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_document_info_from_url_request.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Get_Document_Info_URL_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $url = "https://www.dropbox.com/s/j260ve4f90h1p41/one-page.docx?dl=1";
    $folder = "";

    $request = GroupDocsViewerCloud::HtmlGetDocumentInfoFromUrlRequest.new($url);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_get_document_info_from_url($request);

    puts("Respons: " + ($response).to_s);
  end
end