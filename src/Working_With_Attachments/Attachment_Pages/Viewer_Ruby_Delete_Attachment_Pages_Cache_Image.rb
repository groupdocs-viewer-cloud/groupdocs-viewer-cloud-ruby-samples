# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_delete_attachment_pages_cache_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Delete_Attachment_Pages_Cache_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $password = nil;
    $attachmentPassword = nil;
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::ImageDeleteAttachmentPagesCacheRequest.new($file, $attachmentName);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_delete_attachment_pages_cache($request);

    puts("Cache removed");
  end
end