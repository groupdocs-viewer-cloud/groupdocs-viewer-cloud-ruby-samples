# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_get_pages_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Exclude_Fonts()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $file = "sample.docx";
    $folder = "viewerdocs";

    $options.embed_resources = true;
    $options.exclude_fonts = true;

    $request = GroupDocsViewerCloud::HtmlGetPagesRequest.new($file, $options);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_get_pages($request);

    puts("Respons: " + ($response).to_s);
  end
end