# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_attachment_pages_cache_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Create_Attachment_Pages_Cache_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $file = "with-attachment.msg";
    $attachmentPassword = nil;
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";

    $options.attachment_password = $attachmentPassword;

    $request = GroupDocsViewerCloud::HtmlCreateAttachmentPagesCacheRequest.new($file, $attachmentName, $options);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_create_attachment_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end