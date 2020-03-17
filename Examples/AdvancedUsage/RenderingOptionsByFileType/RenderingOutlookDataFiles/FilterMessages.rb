# Import modules
require './Common.rb'

# This example demonstrates how to render Outlook Data File with filtering the rendered messages
class FilterMessages
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.ost"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.outlook_options = GroupDocsViewerCloud::OutlookOptions.new
        viewOptions.render_options.outlook_options.text_filter = "Microsoft"
        viewOptions.render_options.outlook_options.address_filter = "susan"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("FilterMessages completed: " + response.pages.length.to_s)
    end
end
