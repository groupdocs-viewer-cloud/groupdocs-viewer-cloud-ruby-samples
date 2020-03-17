# Import modules
require './Common.rb'

#  This example demonstrates how to get document information
class GetDocumentInformation
    def self.Run()        
        infoApi = GroupDocsViewerCloud::InfoApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.docx"

        request = GroupDocsViewerCloud::GetInfoRequest.new(viewOptions)    
        response = infoApi.get_info(request)

        puts("GetDocumentInformation completed: " + response.pages.length.to_s)
    end
end