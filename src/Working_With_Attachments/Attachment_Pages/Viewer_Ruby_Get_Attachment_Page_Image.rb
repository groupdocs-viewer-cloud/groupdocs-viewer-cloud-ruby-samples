# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_attachment_page_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Get_Attachment_Page_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $password = nil;
    $attachmentPassword = nil;
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";
    $pageNumber = 1;

    $request = GroupDocsViewerCloud::ImageGetAttachmentPageRequest.new($file, $attachmentName, $pageNumber);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_get_attachment_page($request);

    puts("Respons: " + ($response).to_s);
  end
end