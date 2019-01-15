# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pdf_file_from_url_request.rb'
require 'common_utilities/Utils.rb'

class PDF_Rendering
  def self.Get_Pdf_File_from_Url_HTML()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $url = "https://www.dropbox.com/s/umokluz338w4ng7%2fone-page.docx";
    $folder = "";

    $request = GroupDocsViewerCloud::HtmlGetPdfFileFromUrlRequest.new($url);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.html_get_pdf_file_from_url($request);

    puts("Respons: " + ($response).to_s);
  end
end