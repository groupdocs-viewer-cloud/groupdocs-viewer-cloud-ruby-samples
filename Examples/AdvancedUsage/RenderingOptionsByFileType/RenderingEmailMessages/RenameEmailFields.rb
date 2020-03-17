# Import modules
require './Common.rb'

# This example demonstrates how to use custom field labels
class RenameEmailFields
    def self.Run()        
        apiInstance = GroupDocsViewerCloud::ViewApi.from_config($config)
        viewOptions = GroupDocsViewerCloud::ViewOptions.new
        viewOptions.file_info = GroupDocsViewerCloud::FileInfo.new
        viewOptions.file_info.file_path = "SampleFiles/sample.msg"
        viewOptions.view_format = "HTML"
        viewOptions.render_options = GroupDocsViewerCloud::HtmlOptions.new
        viewOptions.render_options.email_options = GroupDocsViewerCloud::EmailOptions.new
        field_label1 = GroupDocsViewerCloud::FieldLabel.new
        field_label1.field = "From"
        field_label1.label = "Sender"
        field_label2 = GroupDocsViewerCloud::FieldLabel.new
        field_label2.field = "To"
        field_label2.label = "Receiver"        
        viewOptions.render_options.email_options.field_labels = [field_label1, field_label2]

        request = GroupDocsViewerCloud::CreateViewRequest.new(viewOptions)    
        response = apiInstance.create_view(request)

        puts("RenameEmailFields completed: " + response.pages.length.to_s)
    end
end
