# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/cad_options.rb'
require 'groupdocs_viewer_cloud/models/image_options.rb'
require 'groupdocs_viewer_cloud/models/field_label.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Create_CAD_Layers_Cache_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample.DXF";
    $folder = "";

    $options = GroupDocsViewerCloud::ImageOptions.new();
    $cadOptions = GroupDocsViewerCloud::CadOptions.new();
    $cadOptions.layers = ["SLD_0", "DEFAULT_3"];

    $options.format = "jpg";
    $options.quality = 100;
    $options.cad_options = $cadOptions;

    $request = GroupDocsViewerCloud::ImageCreatePagesCacheRequest.new($file);
    $request.file_name = $file;
    $request.image_options = $options;
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end