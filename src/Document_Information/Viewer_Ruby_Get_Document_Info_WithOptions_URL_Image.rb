# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_document_info_from_url_with_options_request.rb'
require 'groupdocs_viewer_cloud/models/document_info_options.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Get_Document_Info_WithOptions_URL_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $url = "https://www.dropbox.com/s/r2eioe2atushqcf/with-notes.pptx?dl=1";

    $options = GroupDocsViewerCloud::DocumentInfoOptions.new();
    $options.password = nil;

    $request = GroupDocsViewerCloud::ImageGetDocumentInfoFromUrlWithOptionsRequest.new($url);
    $request.storage = $storage_name;
    $request.document_info_options = $options;

    $response = api.image_get_document_info_from_url_with_options($request);

    puts("Respons: " + ($response).to_s);
  end
end