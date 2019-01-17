# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'groupdocs_viewer_cloud/models/cad_options.rb'
require 'groupdocs_viewer_cloud/models/tile.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Render_CAD_Tiles()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample.DXF";
    $folder = "";

    $htmlOptions = GroupDocsViewerCloud::HtmlOptions.new();
    $htmlOptions.embed_resources = true;

    $cadOptions = GroupDocsViewerCloud::CadOptions.new();

    $arrayTiles = Array(GroupDocsViewerCloud::Tile.new());
    $tile = GroupDocsViewerCloud::Tile.new();

    $tile.height = 800;
    $tile.width = 1300;
    $tile.start_point_x = 0;
    $tile.start_point_y = 0;
    $arrayTiles.push($tile);

    $tile.height = 800;
    $tile.width = 1300;
    $tile.start_point_x = 1300;
    $tile.start_point_y = 0;
    $arrayTiles.push($tile);

    $tile.height = 800;
    $tile.width = 1300;
    $tile.start_point_x = 0;
    $tile.start_point_y = 800;
    $arrayTiles.push($tile);

    $tile.height = 800;
    $tile.width = 1300;
    $tile.start_point_x = 1300;
    $tile.start_point_y = 800;
    $arrayTiles.push($tile);

    $cadOptions.tiles = $arrayTiles;

    $htmlOptions.cad_options = $cadOptions;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.html_options = $htmlOptions;

    $response = api.html_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end