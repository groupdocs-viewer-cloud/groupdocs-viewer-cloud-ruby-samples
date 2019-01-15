# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/image_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Create_Document_Cache_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample-one-page.docx";
    $folder = "viewerdocs";
    $format = "jpg";

    $options = GroupDocsViewerCloud::ImageOptions.new();
    $options.format = $format;

    $request = GroupDocsViewerCloud::ImageCreatePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.image_options = $options;

    $response = api.image_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end
