# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'groupdocs_viewer_cloud/models/project_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Create_Project_Page_Cache_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $projectOptions = GroupDocsViewerCloud::ProjectOptions.new();
    $projectOptions.page_size = "A4";
    $projectOptions.time_unit = "Unknown";

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $file = "sample2.mpp";
    $folder = "viewerdocs"

    $options.project_options = $projectOptions;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheRequest.new($file, $options);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end