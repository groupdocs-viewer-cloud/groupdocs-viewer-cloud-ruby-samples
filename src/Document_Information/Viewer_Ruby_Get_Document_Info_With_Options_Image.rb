# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_document_info_with_options_request.rb'
require 'groupdocs_viewer_cloud/models/document_info_options.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Get_Document_Info_With_Options_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "one-page.docx";
    $folder = "viewerdocs";

    $options = GroupDocsViewerCloud::DocumentInfoOptions.new();
    $options.password = nil;

    $request = GroupDocsViewerCloud::ImageGetDocumentInfoWithOptionsRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.document_info_options = $options;

    $response = api.image_get_document_info_with_options($request);

    puts("Respons: " + ($response).to_s);
  end
end