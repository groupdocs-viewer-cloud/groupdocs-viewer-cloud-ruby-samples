# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_zip_with_pages_request.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Get_ZIP_With_Pages_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample-one-page.docx";
    $folder = "viewerdocs";
    $resourcesPath = "./r/{resource-name}";

    $request = GroupDocsViewerCloud::HtmlGetZipWithPagesRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.resource_path = $resourcesPath;

    $response = api.html_get_zip_with_pages($request);

    puts("Respons: " + ($response).to_s);
  end
end