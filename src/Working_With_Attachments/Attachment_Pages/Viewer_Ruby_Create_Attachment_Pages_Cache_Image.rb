# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_create_attachment_pages_cache_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Create_Attachment_Pages_Cache_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $options = GroupDocsViewerCloud::ImageOptions.new();
    $file = "with-attachment.msg";
    $attachmentPassword = nil;
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";

    $options.attachment_password = $attachmentPassword;

    $request = GroupDocsViewerCloud::ImageCreateAttachmentPagesCacheRequest.new($file, $attachmentName, $options);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_create_attachment_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end