# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_from_content_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Create_Pages_Cache_Request_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $filePath = "D://sample-one-page.docx";
    $fileName = "one-page.docx";
    $folder = "viewerdocs";

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $options.embed_resources = true;
    $options.enable_minification = true;

    $file_content = File.open($filePath, "r");
    $options_json = $options.to_hash.to_json;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheFromContentRequest.new($file_content, $options_json);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.file_name = $fileName;

    $response = api.html_create_pages_cache_from_content($request);

    puts("Respons: " + ($response).to_s);
  end
end