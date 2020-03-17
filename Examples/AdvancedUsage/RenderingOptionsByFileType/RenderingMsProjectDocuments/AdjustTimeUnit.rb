# Import modules
require './Common.rb'

# This example demonstrates how to render MS Project document by time interval
class AdjustTimeUnit
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.mpp"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.project_management_options = GroupDocsViewerCloud::ProjectManagementOptions.new 
        viewOptions.render_options.project_management_options.time_unit = "Days"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("AdjustTimeUnit completed: " + response.pages.length.to_s)
    end
end
