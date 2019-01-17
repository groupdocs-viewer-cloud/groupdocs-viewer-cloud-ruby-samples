# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/pdf_options.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Set_Image_Quality()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $pdfOptions = GroupDocsViewerCloud::PdfOptions.new();
    $pdfOptions.image_quality = "High";

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $file = "sample2.pdf";
    $folder = "";

    $options.pdf_options = $pdfOptions;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.html_options = $options;

    $response = api.html_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end