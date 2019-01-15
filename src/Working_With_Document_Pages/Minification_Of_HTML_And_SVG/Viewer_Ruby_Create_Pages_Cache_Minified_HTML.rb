# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'common_utilities/Utils.rb'

class Minification_Of_HTML_And_SVG
  def self.Create_Pages_Cache_Minified_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample-one-page.docx";
    $folder = "viewerdocs";

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $options.embed_resources = true;
    $options.enable_minification = true;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.html_options = $options;

    $response = api.html_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end