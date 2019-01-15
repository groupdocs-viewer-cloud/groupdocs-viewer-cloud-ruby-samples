# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_document_info_request.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Get_Document_Info_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "one-page.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::ImageGetDocumentInfoRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_get_document_info($request);

    puts("Respons: " + ($response).to_s);
  end
end