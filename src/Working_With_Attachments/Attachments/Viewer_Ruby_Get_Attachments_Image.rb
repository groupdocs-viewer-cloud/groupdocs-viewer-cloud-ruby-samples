# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_attachments_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Get_Attachments_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::ImageGetAttachmentsRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_get_attachments($request);

    puts("Respons: " + ($response).to_s);
  end
end