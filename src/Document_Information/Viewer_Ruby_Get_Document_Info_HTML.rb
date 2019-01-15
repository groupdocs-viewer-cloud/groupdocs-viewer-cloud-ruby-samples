# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_document_info_request.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Get_Document_Info_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "one-page.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::HtmlGetDocumentInfoRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_get_document_info($request);

    puts("Respons: " + ($response).to_s);
  end
end