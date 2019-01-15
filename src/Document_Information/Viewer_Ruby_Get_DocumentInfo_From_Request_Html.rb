# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_document_info_from_content_request.rb'
require 'groupdocs_viewer_cloud/models/document_info_options.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Get_DocumentInfo_From_Request_Html()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $filePath = "D://sample-one-page.docx";
    $folder = "viewerdocs";
    $storage = "MyStorage";

    $options = GroupDocsViewerCloud::DocumentInfoOptions.new();
    $options.password = nil;

    $file_content = File.open($filePath, "r");
    $options_json = $options.to_hash.to_json;

    $request = GroupDocsViewerCloud::HtmlGetDocumentInfoFromContentRequest.new($file_content, $options_json);
    $request.folder = $folder;
    $request.storage = $storage;

    $response = api.html_get_document_info_from_content($request);

    puts("Respons: " + ($response).to_s);
  end
end