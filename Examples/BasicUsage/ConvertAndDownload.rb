# Import modules
require './Common.rb'

# This example demonstrates how to convert and download document without using cloud storage
class ConvertAndDownload
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)

        format = "jpg"      
        file = File.open("Resources/SampleFiles/sample.docx", "r")  
        request = GroupDocsViewerCloud::ConvertAndDownloadRequest.new format, file        
        response = apiInstance.convert_and_download(request)

        puts("ConvertAndDownload completed: " + response.length)
    end
end
