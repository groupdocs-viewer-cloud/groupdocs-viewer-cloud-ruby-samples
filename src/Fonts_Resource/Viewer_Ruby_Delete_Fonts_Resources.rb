# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Fonts_Resource
  def self.Delete_Fonts_Resources()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    # delete fonts cache
    api.delete_fonts_cache()

    puts("Fonts cache removed");
  end
end