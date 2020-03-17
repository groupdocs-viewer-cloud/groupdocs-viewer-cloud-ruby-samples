# Import modules
require './Common.rb'

# This example demonstrates how to adjust output image size
class AdjustOutputImageSize
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_layers_and_layouts.dwg"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.cad_options = GroupDocsViewerCloud::CadOptions.new
        viewOptions.render_options.cad_options.scale_factor = 0.3

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("AdjustOutputImageSize completed: " + response.pages.length.to_s)
    end
end
