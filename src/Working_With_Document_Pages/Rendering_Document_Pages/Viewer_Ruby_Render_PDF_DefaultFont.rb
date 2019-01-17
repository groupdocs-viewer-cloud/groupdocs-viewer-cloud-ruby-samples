# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pdf_file_request.rb'
require 'groupdocs_viewer_cloud/models/pdf_file_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Render_PDF_DefaultFont()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $pdfOptions = GroupDocsViewerCloud::PdfFileOptions.new();
    $pdfOptions.default_font_name = "Arial";

    $file = "sample2.pdf";
    $folder = "";

    $request = GroupDocsViewerCloud::HtmlCreatePdfFileRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.pdf_file_options = $pdfOptions;

    $response = api.html_create_pdf_file($request);

    puts("Respons: " + ($response).to_s);
  end
end