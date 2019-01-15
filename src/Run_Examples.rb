require 'Supported_File_Formats\Viewer_Ruby_Get_All_Supported_Formats.rb'
require 'Working_With_Attachments/Attachments/Viewer_Ruby_Get_Attachment_From_Email_HTML.rb'
require 'Working_With_Attachments/Attachments/Viewer_Ruby_Get_Attachment_From_Email_Image.rb'
require 'Working_With_Attachments/Attachments/Viewer_Ruby_Get_Attachments_Html.rb'
require 'Working_With_Attachments/Attachments/Viewer_Ruby_Get_Attachments_Image.rb'
require 'Working_With_Attachments/Attachment_Information/Viewer_Ruby_Get_Attachment_Info_HTML.rb'
require 'Working_With_Attachments/Attachment_Information/Viewer_Ruby_Get_Attachment_Info_Image.rb'
require 'Working_With_Attachments/Attachment_Information/Viewer_Ruby_Get_Attachment_Info_WithOptions_HTML.rb'
require 'Working_With_Attachments/Attachment_Information/Viewer_Ruby_Get_Attachment_Info_WithOptions_Image.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Delete_Attachment_Pages_Cache_HTML.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Delete_Attachment_Pages_Cache_Image.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Create_Attachment_Pages_Cache_HTML.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Create_Attachment_Pages_Cache_Image.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Get_Attachment_Page_HTML.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Get_Attachment_Page_Image.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Get_Attachment_Pages_HTML.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Get_Attachment_Pages_Image.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Get_Attachment_Pages_Zip_HTML.rb'
require 'Working_With_Attachments/Attachment_Pages/Viewer_Ruby_Get_Attachment_Pages_Zip_Image.rb'
require 'Working_With_Attachments/Attachment_Page_Resources/Viewer_Ruby_Get_Attachment_Page_Resource_HTML.rb'
require 'Fonts_Resource/Viewer_Ruby_Get_Fonts_Resources.rb'
require 'Fonts_Resource/Viewer_Ruby_Delete_Fonts_Resources.rb'
require 'Page_Resources/Viewer_Ruby_Get_Responsive_HTML.rb'
require 'Document_Information/Viewer_Ruby_Create_CAD_Layers_Cache_HTML.rb'
require 'Document_Information/Viewer_Ruby_Create_CAD_Layers_Cache_Image.rb'
require 'Document_Information/Viewer_Ruby_Get_CAD_DocumentInfo_HTML.rb'
require 'Document_Information/Viewer_Ruby_Get_CAD_DocumentInfo_Image.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_HTML.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_Image.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_URL_HTML.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_URL_Image.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_With_Options_HTML.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_With_Options_Image.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_WithOptions_URL_HTML.rb'
require 'Document_Information/Viewer_Ruby_Get_Document_Info_WithOptions_URL_Image.rb'
require 'Document_Information/Viewer_Ruby_Get_DocumentInfo_From_Request_Html.rb'
require 'Document_Information/Viewer_Ruby_Get_DocumentInfo_From_Request_Image.rb'
require 'PDF_Rendering/Viewer_Ruby_Get_Pdf_File_HTML.rb'
require 'PDF_Rendering/Viewer_Ruby_Get_Pdf_File_Image.rb'
require 'PDF_Rendering/Viewer_Ruby_Get_Pdf_File_from_Url_HTML.rb'
require 'PDF_Rendering/Viewer_Ruby_Get_Pdf_File_from_Url_Image.rb'
require 'PDF_Rendering/Viewer_Ruby_Create_Watermark_Pdf_File_HTML.rb'
require 'PDF_Rendering/Viewer_Ruby_Create_Watermark_Pdf_File_Image.rb'
require 'PDF_Rendering/Viewer_Ruby_Create_Pdf_File_from_Url_HTML.rb'
require 'PDF_Rendering/Viewer_Ruby_Create_Pdf_File_from_Url_Image.rb'
require 'PDF_Rendering/Viewer_Ruby_Create_Pdf_File_Request_HTML.rb'
require 'PDF_Rendering/Viewer_Ruby_Create_Pdf_File_Request_Image.rb'
require 'Working_With_Document_Pages/Minification_Of_HTML_And_SVG/Viewer_Ruby_Create_Pages_Cache_Minified_HTML.rb'
require 'Working_With_Document_Pages/Rendering_Document_To_Responsive_HTML/Viewer_Ruby_Get_Responsive_HTML_Options.rb'
require 'Working_With_Document_Pages/Rendering_Email_Pages/Viewer_Ruby_Render_Email_Header.rb'
require 'Working_With_Document_Pages/Rendering_Email_Pages/Viewer_Ruby_Render_Email_Image_PageSize.rb'
require 'Working_With_Document_Pages/Rendering_Document_Pages/Viewer_Ruby_Create_Document_Cache_HTML.rb'
require 'Working_With_Document_Pages/Rendering_Document_Pages/Viewer_Ruby_Create_Document_Cache_Image.rb'
require 'Working_With_Document_Pages/Rendering_Document_Pages/Viewer_Ruby_Create_Document_Cache_Url_With_HTMLOptions.rb'
require 'Working_With_Document_Pages/Rendering_Document_Pages/Viewer_Ruby_Create_Document_Cache_Url_With_ImageOptions.rb'
require 'Working_With_Document_Pages/Rendering_Document_Pages/Viewer_Ruby_Create_Pages_Cache_Request_HTML.rb'
require 'Working_With_Document_Pages/Rendering_Document_Pages/Viewer_Ruby_Create_Pages_Cache_Request_Image.rb'
require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "d215ce72-1609-4282-8d55-5810942236fb"
$app_key = "715d18b0afef2f303882c769921fe05a"
$storageName = "MyStorage" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here
$base_url = "http://api.groupdocs.cloud" #Put your Base URL here

class Run_Examples

  #  puts("Executing Upload Test Files...")
  #  Common_Utilities.Upload_Test_File()

  #  # ******* Execute Examples *******
  #  puts("*** Executing examples...")
  #  # ******* Execute Examples *******

  #  puts("* Executing Get_All_Supported_File_Formats...")
  #  File_Formats.Get_All_Supported_File_Formats()

  #  puts("* Executing Get_Attachment_From_Email_HTML...")
  #  Working_With_Attachments.Get_Attachment_From_Email_HTML()

  #  puts("* Executing Get_Attachment_From_Email_Image...")
  #  Working_With_Attachments.Get_Attachment_From_Email_Image()

  #  puts("* Executing Get_Attachments_Html...")
  #  Working_With_Attachments.Get_Attachments_Html()

  #  puts("* Executing Get_Attachments_Image...")
  #  Working_With_Attachments.Get_Attachments_Image()

  #  puts("* Executing Get_Attachment_Info_HTML...")
  #  Working_With_Attachments.Get_Attachment_Info_HTML()

  #  puts("* Executing Get_Attachment_Info_Image...")
  #  Working_With_Attachments.Get_Attachment_Info_Image()

  #  puts("* Executing Get_Attachment_Info_WithOptions_HTML...")
  #  Working_With_Attachments.Get_Attachment_Info_WithOptions_HTML()

  #  puts("* Executing Get_Attachment_Info_WithOptions_Image...")
  #  Working_With_Attachments.Get_Attachment_Info_WithOptions_Image()

  #  puts("* Executing Get_Attachment_Info_HTML...")
  #  Working_With_Attachments.Delete_Attachment_Pages_Cache_HTML()

  #  puts("* Executing Delete_Attachment_Pages_Cache_Image...")
  #  Working_With_Attachments.Delete_Attachment_Pages_Cache_Image()

  #  puts("* Executing Create_Attachment_Pages_Cache_HTML...")
  #  Working_With_Attachments.Create_Attachment_Pages_Cache_HTML()

  #  puts("* Executing Create_Attachment_Pages_Cache_Image...")
  #  Working_With_Attachments.Create_Attachment_Pages_Cache_Image()

  #  puts("* Executing Get_Attachment_Page_HTML...")
  #  Working_With_Attachments.Get_Attachment_Page_HTML()

  #  puts("* Executing Get_Attachment_Page_Image...")
  #  Working_With_Attachments.Get_Attachment_Page_Image()

  #  puts("* Executing Get_Attachment_Pages_HTML...")
  #  Working_With_Attachments.Get_Attachment_Pages_HTML()

  #  puts("* Executing Get_Attachment_Pages_Image...")
  #  Working_With_Attachments.Get_Attachment_Pages_Image()

  #  puts("* Executing Get_Attachment_Pages_Zip_HTML...")
  #  Working_With_Attachments.Get_Attachment_Pages_Zip_HTML()

  #  puts("* Executing Get_Attachment_Pages_Zip_Image...")
  #  Working_With_Attachments.Get_Attachment_Pages_Zip_Image()

  #  puts("* Executing Get_Attachment_Page_Resource_HTML...")
  #  Working_With_Attachments.Get_Attachment_Page_Resource_HTML()

  #  puts("* Executing Get_Fonts_Resources...")
  #  Fonts_Resource.Get_Fonts_Resources()

  #  puts("* Executing Delete_Fonts_Resources...")
  #  Fonts_Resource.Delete_Fonts_Resources()

  #  puts("* Executing Get_Responsive_HTML...")
  #  Page_Resources.Get_Responsive_HTML()

  #  puts("* Executing Create_CAD_Layers_Cache_HTML...")
  #  Document_Information.Create_CAD_Layers_Cache_HTML()

  #  puts("* Executing Create_CAD_Layers_Cache_HTML...")
  #  Document_Information.Create_CAD_Layers_Cache_Image()

  #  puts("* Executing Get_CAD_DocumentInfo_HTML...")
  #  Document_Information.Get_CAD_DocumentInfo_HTML()

  #  puts("* Executing Get_CAD_DocumentInfo_Image...")
  #  Document_Information.Get_CAD_DocumentInfo_Image()

  #  puts("* Executing Get_Document_Info_HTML...")
  #  Document_Information.Get_Document_Info_HTML()

  #  puts("* Executing Get_Document_Info_Image...")
  #  Document_Information.Get_Document_Info_Image()

  #  puts("* Executing Get_Document_Info_URL_HTML...")
  #  Document_Information.Get_Document_Info_URL_HTML()

  #  puts("* Executing Get_Document_Info_URL_Image...")
  #  Document_Information.Get_Document_Info_URL_Image()

  #  puts("* Executing Get_Document_Info_With_Options_HTML...")
  #  Document_Information.Get_Document_Info_With_Options_HTML()

  #  puts("* Executing Get_Document_Info_With_Options_Image...")
  #  Document_Information.Get_Document_Info_With_Options_Image()

  #  puts("* Executing Get_Document_Info_WithOptions_URL_HTML...")
  #  Document_Information.Get_Document_Info_WithOptions_URL_HTML()

  #  puts("* Executing Get_Document_Info_WithOptions_URL_Image...")
  #  Document_Information.Get_Document_Info_WithOptions_URL_Image()

  #  puts("* Executing Get_DocumentInfo_From_Request_Html...")
  #  Document_Information.Get_DocumentInfo_From_Request_Html()

  #  puts("* Executing Get_DocumentInfo_From_Request_Image...")
  #  Document_Information.Get_DocumentInfo_From_Request_Image()

  #  puts("* Executing Get_Pdf_File_HTML...")
  #  PDF_Rendering.Get_Pdf_File_HTML()

  #  puts("* Executing Get_Pdf_File_Image...")
  #  PDF_Rendering.Get_Pdf_File_Image()

  #  puts("* Executing Get_Pdf_File_from_Url_HTML...")
  #  PDF_Rendering.Get_Pdf_File_from_Url_HTML()

  #  puts("* Executing Get_Pdf_File_from_Url_Image...")
  #  PDF_Rendering.Get_Pdf_File_from_Url_Image()

  #  puts("* Executing Create_Watermark_Pdf_File_HTML...")
  #  PDF_Rendering.Create_Watermark_Pdf_File_HTML()

  #  puts("* Executing Create_Watermark_Pdf_File_Image...")
  #  PDF_Rendering.Create_Watermark_Pdf_File_Image()

  #  puts("* Executing Create_Pdf_File_from_Url_HTML...")
  #  PDF_Rendering.Create_Pdf_File_from_Url_HTML()

  #  puts("* Executing Create_Pdf_File_from_Url_Image...")
  #  PDF_Rendering.Create_Pdf_File_from_Url_Image()

  #  puts("* Executing Create_Pdf_File_Request_HTML...")
  #  PDF_Rendering.Create_Pdf_File_Request_HTML()

  #  puts("* Executing Create_Pdf_File_Request_Image...")
  #  PDF_Rendering.Create_Pdf_File_Request_Image()

  #  puts("* Executing Create_Pages_Cache_Minified_HTML...")
  #  Minification_Of_HTML_And_SVG.Create_Pages_Cache_Minified_HTML()

  #  puts("* Executing Get_Responsive_HTML_Options...")
  #  Rendering_Document_To_Responsive_HTML.Get_Responsive_HTML_Options()

  #  puts("* Executing Render_Email_Header...")
  #  Rendering_Email_Pages.Render_Email_Header()

  #  puts("* Executing Render_Email_Image_PageSize...")
  #  Rendering_Email_Pages.Render_Email_Image_PageSize()

  #  puts("* Executing Create_Document_Cache_HTML...")
  #  Rendering_Document_Pages.Create_Document_Cache_HTML()

  #  puts("* Executing Create_Document_Cache_Image...")
  #  Rendering_Document_Pages.Create_Document_Cache_Image()

  #  puts("* Executing Create_Document_Cache_Url_With_HTMLOptions...")
  #  Rendering_Document_Pages.Create_Document_Cache_Url_With_HTMLOptions()

  #  puts("* Executing Create_Document_Cache_Url_With_ImageLOptions...")
  #  Rendering_Document_Pages.Create_Document_Cache_Url_With_ImageLOptions()

  #  puts("* Executing Create_Pages_Cache_Request_HTML...")
  #  Rendering_Document_Pages.Create_Pages_Cache_Request_HTML()

  #  puts("* Executing Create_Pages_Cache_Request_Image...")
  #  Rendering_Document_Pages.Create_Pages_Cache_Request_Image()

end