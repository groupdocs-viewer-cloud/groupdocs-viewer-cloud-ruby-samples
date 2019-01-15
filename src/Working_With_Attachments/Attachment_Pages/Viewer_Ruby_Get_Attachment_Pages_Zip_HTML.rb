# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_zip_with_attachment_pages_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Get_Attachment_Pages_Zip_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::HtmlGetZipWithAttachmentPagesRequest.new($file, $attachmentName);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_get_zip_with_attachment_pages($request);

    puts("Respons: " + ($response).to_s);
  end
end