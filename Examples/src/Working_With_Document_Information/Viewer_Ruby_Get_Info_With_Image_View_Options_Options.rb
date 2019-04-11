# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Document_Information
  def self.Viewer_Ruby_Get_Info_With_Image_View_Options_Options()

    # Getting instance of the API
    $api = Common_Utilities.Get_ViewerApi_Instance()

    $viewOptions = GroupDocsViewerCloud::ViewOptions.new()

    $fileInfo = GroupDocsViewerCloud::FileInfo.new()
    $fileInfo.file_path = "viewerdocs/one-page.docx"
    $fileInfo.password = ""
    $fileInfo.storage_name = $myStorage

    $viewOptions.file_info = $fileInfo;

    $renderOptions = GroupDocsViewerCloud::ImageOptions.new()
    $renderOptions.extract_text = true

    $viewOptions.render_options = $renderOptions
    $viewOptions.view_format = "PNG"

    $request = GroupDocsViewerCloud::GetInfoRequest.new($viewOptions)
    $response = $api.get_info($request)

    puts("Expected response type is InfoResult: " + ($response).to_s)
  end
end