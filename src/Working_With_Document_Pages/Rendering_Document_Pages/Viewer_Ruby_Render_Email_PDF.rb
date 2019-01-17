# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/image_options.rb'
require 'groupdocs_viewer_cloud/models/email_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Render_Email_PDF()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $options = GroupDocsViewerCloud::ImageOptions.new();
    $emailOptions = GroupDocsViewerCloud::EmailOptions.new();

    $file = "with-attachment.msg";
    $folder = "viewerdocs";

    $emailOptions.page_size = "A0";
    $options.email_options = $emailOptions;

    $request = GroupDocsViewerCloud::ImageCreatePdfFileRequest.new($file, $options);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_create_pdf_file($request);

    puts("Respons: " + ($response).to_s);
  end
end