# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Fonts_Resource
  def self.Get_Fonts_Resources()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    # Retrieve fonts
    response = api.get_fonts()

    # Print out available fonts
    puts("Available fonts:")
    response.families.each do |family|
      puts("#{family.name}")
    end
  end
end