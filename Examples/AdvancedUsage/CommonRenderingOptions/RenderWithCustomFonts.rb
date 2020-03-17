# Import modules
require './Common.rb'

# This example demonstrates how to  to set custom font source when rendering documents
class RenderWithCustomFonts
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_missing_font.odg"
        viewOptions.view_format = "HTML"
        # NOTE: Upload fonts to the folder using storage API before rendering
        viewOptions.fonts_path = "Fonts"

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenderWithCustomFonts completed: " + response.pages.length.to_s)
    end
end
