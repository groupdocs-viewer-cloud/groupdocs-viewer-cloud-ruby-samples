# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pdf_file_request.rb'
require 'groupdocs_viewer_cloud/models/watermark.rb'
require 'common_utilities/Utils.rb'

class PDF_Rendering
  def self.Create_Watermark_Pdf_File_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "sample-one-page.docx";
    $folder = "viewerdocs";
    $storage = "MyStorage";

    $pdfFileOptions = GroupDocsViewerCloud::PdfFileOptions.new();

    $watermark = GroupDocsViewerCloud::Watermark.new();
    $watermark.text = "GroupDocs";

    $pdfFileOptions.watermark = $watermark;

    $request = GroupDocsViewerCloud::HtmlCreatePdfFileRequest.new($file, $pdfFileOptions);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_create_pdf_file($request);

    puts("Respons: " + ($response).to_s);
  end
end