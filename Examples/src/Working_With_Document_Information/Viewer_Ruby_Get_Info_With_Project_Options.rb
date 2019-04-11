# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Document_Information
  def self.Viewer_Ruby_Get_Info_With_Project_Options()

    # Getting instance of the API
    $api = Common_Utilities.Get_ViewerApi_Instance()

    $viewOptions = GroupDocsViewerCloud::ViewOptions.new()

    $fileInfo = GroupDocsViewerCloud::FileInfo.new()
    $fileInfo.file_path = "viewerdocs/sample.mpp"
    $fileInfo.password = ""
    $fileInfo.storage_name = $myStorage

    $viewOptions.file_info = $fileInfo;

    $renderOptions = GroupDocsViewerCloud::RenderOptions.new()

    $projectManagementOptions = GroupDocsViewerCloud::ProjectManagementOptions.new()
    $projectManagementOptions.page_size = "Unknown"
    $projectManagementOptions.time_unit = "Months"
    $projectManagementOptions.start_date = "2008/07/01"
    $projectManagementOptions.end_date = "2008/07/31"

    $renderOptions.project_management_options = $projectManagementOptions
    $viewOptions.render_options = $renderOptions

    $request = GroupDocsViewerCloud::GetInfoRequest.new($viewOptions)
    $response = $api.get_info($request)

    puts("Expected response type is InfoResult: " + ($response).to_s)
  end
end