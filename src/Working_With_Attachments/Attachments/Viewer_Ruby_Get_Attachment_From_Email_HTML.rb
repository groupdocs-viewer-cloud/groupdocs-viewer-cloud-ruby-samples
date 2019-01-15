# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_attachment_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Get_Attachment_From_Email_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::HtmlGetAttachmentRequest.new($file, $attachmentName);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_get_attachment($request);

    puts("Respons: " + ($response).to_s);
  end
end