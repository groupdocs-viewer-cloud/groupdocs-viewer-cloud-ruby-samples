# Import modules
require './Common.rb'

# This example demonstrates how to print out archive contents
class GetInfoForArchiveFile
    def self.Run()        
        infoApi = GroupDocsViewerCloud::InfoApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_folders.zip"
        viewOptions.view_format = "HTML"

        request = GroupDocsViewerCloud::GetInfoRequest.new(viewOptions)    
        response = infoApi.get_info(request)
        for folder in response.archive_view_info.folders do
            puts(" " + folder)
        end
        puts("GetInfoForArchiveFile completed: " + response.pages.length.to_s)
    end
end
