# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_delete_pages_cache_request.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Remove_Document_Cache_for_HTML_Pages()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::HtmlDeletePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;

    api.html_delete_pages_cache($request);

    puts("Pages cache removed");
  end
end