# Import modules
require './Common.rb'

# This example demonstrates how to retrieve view information for outlook data file
class GetInfoForOutlookDataFile
    def self.Run()        
        infoApi = GroupDocsViewerCloud::InfoApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.ost"
        viewOptions.view_format = "HTML"

        request = GroupDocsViewerCloud::GetInfoRequest.new(viewOptions)    
        response = infoApi.get_info(request)
        puts(" Folders count: " + response.outlook_view_info.folders.length.to_s)
        puts("GetInfoForOutlookDataFile completed: " + response.pages.length.to_s)
    end
end
