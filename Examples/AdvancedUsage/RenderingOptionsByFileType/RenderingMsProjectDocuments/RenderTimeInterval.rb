# Import modules
require './Common.rb'

# This example demonstrates how to render MS Project document using StartDate and EndDate
class RenderTimeInterval
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.mpp"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.project_management_options = GroupDocsViewerCloud::ProjectManagementOptions.new 
        viewOptions.render_options.project_management_options.start_date = "2008/06/01"
        viewOptions.render_options.project_management_options.end_date = "2008/07/01"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderTimeInterval completed: " + response.pages.length.to_s)
    end
end
