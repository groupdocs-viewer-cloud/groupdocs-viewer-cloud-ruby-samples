# Import modules
require './Common.rb'

# This example demonstrates how to retrieve view information for pdf file
class GetInfoForPdfFile
    def self.Run()        
        infoApi = GroupDocsViewerCloud::InfoApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.pdf"
        viewOptions.view_format = "HTML"

        request = GroupDocsViewerCloud::GetInfoRequest.new(viewOptions)    
        response = infoApi.get_info(request)
        puts(" PrintingAllowed: " + response.pdf_view_info.printing_allowed.to_s)
        puts("GetInfoForPdfFile completed: " + response.pages.length.to_s)
    end
end
