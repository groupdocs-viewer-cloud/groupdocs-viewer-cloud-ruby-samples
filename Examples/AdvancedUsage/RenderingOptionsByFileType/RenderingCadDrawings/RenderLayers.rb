# Import modules
require './Common.rb'

# This example demonstrates how to render a specific layers of a CAD drawing
class RenderLayers
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_layers_and_layouts.dwg"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.cad_options = GroupDocsViewerCloud::CadOptions.new
        viewOptions.render_options.cad_options.layers = ["TRIANGLE", "QUADRANT"]

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderLayers completed: " + response.pages.length.to_s)
    end
end
