# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/image_options.rb'
require 'groupdocs_viewer_cloud/models/email_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Email_Pages
  def self.Render_Email_Image_PageSize()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $folder = "viewerdocs";
    $storage = "MyStorage";

    $imageOptions = GroupDocsViewerCloud::ImageOptions.new();
    $emailOptions = GroupDocsViewerCloud::EmailOptions.new();

    $emailOptions.page_size = "A0";

    $imageOptions.email_options = $emailOptions;

    $request = GroupDocsViewerCloud::ImageCreatePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage;
    $request.image_options = $imageOptions;

    $response = api.image_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end