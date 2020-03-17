# Import modules
require './Common.rb'

# This example demonstrates how to retrieve view information for CAD drawing
class GetInfoForCadDrawing
    def self.Run()        
        infoApi = GroupDocsViewerCloud::InfoApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_layers_and_layouts.dwg"
        viewOptions.view_format = "HTML"

        request = GroupDocsViewerCloud::GetInfoRequest.new(viewOptions)    
        response = infoApi.get_info(request)
        puts(" Layers count: " + response.cad_view_info.layers.length.to_s)
        puts(" Layouts count: " + response.cad_view_info.layouts.length.to_s)
        puts("GetInfoForCadDrawing completed: " + response.pages.length.to_s)
    end
end
