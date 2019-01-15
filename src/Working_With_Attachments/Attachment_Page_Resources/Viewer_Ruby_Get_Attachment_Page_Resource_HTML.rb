# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_attachment_page_resource_request.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Get_Attachment_Page_Resource_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";
    $resourceName = "font.woff";
    $startPageNumber = 1;

    $request = GroupDocsViewerCloud::HtmlGetAttachmentPageResourceRequest.new($file, $attachmentName, $startPageNumber, $resourceName, $folder);

    $response = api.html_get_attachment_page_resource($request);

    puts("Respons: " + ($response).to_s);
  end
end