# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'groupdocs_viewer_cloud/models/email_options.rb'
require 'groupdocs_viewer_cloud/models/field_label.rb'
require 'common_utilities/Utils.rb'

class Rendering_Email_Pages
  def self.Render_Email_Header()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $file = "with-attachment.msg";
    $folder = "viewerdocs";

    $htmlOptions = GroupDocsViewerCloud::HtmlOptions.new();
    $htmlOptions.embed_resources = true;

    $emailOptions = GroupDocsViewerCloud::EmailOptions.new();

    $arrayFieldLabel = Array(GroupDocsViewerCloud::FieldLabel.new());
    $fieldLabel = GroupDocsViewerCloud::FieldLabel.new();

    $fieldLabel.field = "From";
    $fieldLabel.label = "Sender";
    $arrayFieldLabel.push($fieldLabel);

    $fieldLabel.field = "To";
    $fieldLabellabel = "Receiver";
    $arrayFieldLabel.push($fieldLabel);

    $emailOptions.field_labels = $arrayFieldLabel;

    $htmlOptions.email_options = $emailOptions;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.html_options = $htmlOptions;

    $response = api.html_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end