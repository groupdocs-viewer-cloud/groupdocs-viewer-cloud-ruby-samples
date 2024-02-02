# Import modules
require './Common.rb'

# This example demonstrates how to adjust JPG image quality in the output PDF document
class PdfViewerAdjustJpgQuality
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/with_jpg_image.pptx"
        viewOptions.view_format = "PDF"
        viewOptions.render_options = GroupDocsViewerCloud::PdfOptions.new
        viewOptions.render_options.pdf_optimization_options = GroupDocsViewerCloud::PdfOptimizationOptions.new
        viewOptions.render_options.pdf_optimization_options.compress_images = true
        viewOptions.render_options.pdf_optimization_options.image_quality = 80

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("PdfViewerAdjustJpgQuality completed: " + response.file.path)
    end
end
