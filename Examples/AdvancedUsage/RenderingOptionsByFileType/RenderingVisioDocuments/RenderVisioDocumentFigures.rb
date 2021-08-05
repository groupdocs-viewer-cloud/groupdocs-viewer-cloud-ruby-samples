# Import modules
require './Common.rb'

# This example demonstrates how to render Visio documents figures
class RenderVisioDocumentFigures
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.vssx"
        viewOptions.view_format = "PNG"
        viewOptions.render_options = GroupDocsViewerCloud::ImageOptions.new
        viewOptions.render_options.visio_rendering_options = GroupDocsViewerCloud::VisioRenderingOptions.new
        viewOptions.render_options.visio_rendering_options.render_figures_only = true
        viewOptions.render_options.visio_rendering_options.figure_width = 250

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderVisioDocumentFigures completed: " + response.pages.length.to_s)
    end
end
