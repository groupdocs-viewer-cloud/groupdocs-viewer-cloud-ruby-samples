# Import modules
require './Common.rb'

# This example demonstrates how to  render the items in an Outlook Data File by setting a maximum limit
class LimitCountOfItemsToRender
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.ost"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.outlook_options = GroupDocsViewerCloud::OutlookOptions.new
        viewOptions.render_options.outlook_options.max_items_in_folder = 1000     

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("LimitCountOfItemsToRender completed: " + response.pages.length.to_s)
    end
end
