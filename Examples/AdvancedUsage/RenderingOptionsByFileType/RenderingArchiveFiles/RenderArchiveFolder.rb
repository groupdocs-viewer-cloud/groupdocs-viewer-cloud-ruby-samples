# Import modules
require './Common.rb'

# This example demonstrates how to render archive folder
class RenderArchiveFolder
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_folders.zip"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.archive_options = GroupDocsViewerCloud::ArchiveOptions.new
        viewOptions.render_options.archive_options.folder = "ThirdFolderWithItems"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderArchiveFolder completed: " + response.pages.length.to_s)
    end
end
