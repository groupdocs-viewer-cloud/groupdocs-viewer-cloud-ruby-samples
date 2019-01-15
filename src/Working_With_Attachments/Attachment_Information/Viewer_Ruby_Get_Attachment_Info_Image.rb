# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_attachment_info_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Get_Attachment_Info_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $password = nil;
    $attachmentPassword = nil;
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::ImageGetAttachmentInfoRequest.new($file, $attachmentName, $password, $attachmentPassword);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_get_attachment_info($request);

    puts("Respons: " + ($response).to_s);
  end
end