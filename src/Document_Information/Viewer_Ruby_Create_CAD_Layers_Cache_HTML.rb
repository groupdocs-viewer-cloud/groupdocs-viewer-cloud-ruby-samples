# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/cad_options.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'groupdocs_viewer_cloud/models/field_label.rb'
require 'common_utilities/Utils.rb'

class Document_Information
  def self.Create_CAD_Layers_Cache_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample.DXF";
    $folder = "";

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $cadOptions = GroupDocsViewerCloud::CadOptions.new();
    $cadOptions.layers = ["SLD_0", "DEFAULT_3"];

    $options.embed_resources = false;
    $options.cad_options = $cadOptions;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheRequest.new($file, $options);
    $request.file_name = $file;
    $request.html_options = $options;
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end