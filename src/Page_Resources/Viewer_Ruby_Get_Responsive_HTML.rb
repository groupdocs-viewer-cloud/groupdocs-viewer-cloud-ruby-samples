# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_page_request.rb'
require 'common_utilities/Utils.rb'

class Page_Resources
  def self.Get_Responsive_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample-one-page.docx";
    $folder = "viewerdocs";
    $pageNumber = 1;

    $request = GroupDocsViewerCloud::HtmlGetPageRequest.new($file, $pageNumber);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.embed_resources = true;
    $request.enable_responsive_rendering = true;

    $response = api.html_get_page($request);

    puts("Respons: " + ($response).to_s);
  end
end