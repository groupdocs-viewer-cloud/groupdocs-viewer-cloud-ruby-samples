# Import modules
require './Common.rb'

# This example demonstrates how to render a Word document including tracked changes
class RenderTrackedChanges
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_tracked_changes.docx"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.word_processing_options = GroupDocsViewerCloud::WordProcessingOptions.new   
        viewOptions.render_options.word_processing_options.render_tracked_changes = true

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderTrackedChanges completed: " + response.pages.length.to_s)
    end
end
