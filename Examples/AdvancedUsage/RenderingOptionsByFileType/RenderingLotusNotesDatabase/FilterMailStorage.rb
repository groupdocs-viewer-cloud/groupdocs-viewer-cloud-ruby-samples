# Import modules
require './Common.rb'

# This example demonstrates how to to filter Lotus Notes database messages
class FilterMailStorage
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.nsf"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.mail_storage_options = GroupDocsViewerCloud::MailStorageOptions.new
        viewOptions.render_options.mail_storage_options.text_filter = "April 2015"
        viewOptions.render_options.mail_storage_options.address_filter = "test@test.com"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("FilterMailStorage completed: " + response.pages.length.to_s)
    end
end
