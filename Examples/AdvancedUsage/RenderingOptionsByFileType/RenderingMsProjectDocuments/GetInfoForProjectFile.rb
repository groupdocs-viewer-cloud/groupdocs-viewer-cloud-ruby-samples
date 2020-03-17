# Import modules
require './Common.rb'

# This example demonstrates how to retrieve view information for MS Project document
class GetInfoForProjectFile
    def self.Run()        
        infoApi = GroupDocsViewerCloud::InfoApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.mpp"
        viewOptions.view_format = "HTML"

        request = GroupDocsViewerCloud::GetInfoRequest.new(viewOptions)    
        response = infoApi.get_info(request)
        puts(" Start date: " + response.project_management_view_info.start_date.to_s)
        puts(" End date: " + response.project_management_view_info.end_date.to_s)
        puts("GetInfoForProjectFile completed: " + response.pages.length.to_s)
    end
end
