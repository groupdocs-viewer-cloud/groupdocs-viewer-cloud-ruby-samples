# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_get_attachment_info_with_options_request.rb'
require 'groupdocs_viewer_cloud/models/document_info_options.rb'
require 'common_utilities/Utils.rb'

class Working_With_Attachments
  def self.Get_Attachment_Info_WithOptions_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $options = GroupDocsViewerCloud::DocumentInfoOptions.new();
    $file = "with-attachment.msg";
    $attachmentName = "TestAttachment-File.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::ImageGetAttachmentInfoWithOptionsRequest.new($file, $attachmentName, $options);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_get_attachment_info_with_options($request);

    puts("Respons: " + ($response).to_s);
  end
end