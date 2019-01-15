# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_from_url_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'groupdocs_viewer_cloud/models/words_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Create_Document_Cache_Url_With_HTMLOptions()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $url = "https://www.dropbox.com/s/umokluz338w4ng7%2fone-page.docx";
    $fileName="one-page.docx";
    $folder = "viewerdocs";

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $wordsOptions = GroupDocsViewerCloud::WordsOptions.new();

    $options.words_options = $wordsOptions;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheFromUrlRequest.new($url, $options);
    $request.folder = $folder;
    $request.file_name =$fileName;
    $request.storage = $storage_name;

    $response = api.html_create_pages_cache_from_url($request);

    puts("Respons: " + ($response).to_s);
  end
end