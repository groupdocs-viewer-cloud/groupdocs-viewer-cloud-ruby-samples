# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_pages_from_url_request.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Get_Pages_URL_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $url = "https://www.dropbox.com/s/umokluz338w4ng7%2fone-page.docx";

    $request = GroupDocsViewerCloud::HtmlGetPagesFromUrlRequest.new($url);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_get_pages_from_url($request);

    puts("Respons: " + ($response).to_s);
  end
end