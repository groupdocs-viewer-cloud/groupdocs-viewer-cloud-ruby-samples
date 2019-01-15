# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pdf_file_from_url_request.rb'
require 'groupdocs_viewer_cloud/models/pdf_file_options.rb'
require 'common_utilities/Utils.rb'

class PDF_Rendering
  def self.Create_Pdf_File_from_Url_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $url = "https://www.dropbox.com/s/umokluz338w4ng7%2fone-page.docx";
    $folder = "";

    $pdfFileOptions = GroupDocsViewerCloud::PdfFileOptions.new();
    $pdfFileOptions.words_options = GroupDocsViewerCloud::WordsOptions.new();

    $request = GroupDocsViewerCloud::HtmlCreatePdfFileFromUrlRequest.new($url, $pdfFileOptions);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_create_pdf_file_from_url($request);

    puts("Respons: " + ($response).to_s);
  end
end