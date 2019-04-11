require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "d215ce72-1609-4282-8d55-5810942236fb"
$app_key = "715d18b0afef2f303882c769921fe05a"
$myStorage = "MyStorage" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here

class Run_Examples

  ###########################################
  #  puts("Executing Upload Test Files...")
  #  Common_Utilities.Upload_Test_File()
  ###########################################

  ###########################################
  #  # ******* Execute Examples *******
  puts("*** Executing examples...")
  #  # ******* Execute Examples *******
  ###########################################

  require 'Supported_File_Formats\Viewer_Ruby_Get_All_Supported_Formats.rb'
  puts("* Executing Get_All_Supported_File_Formats...")
  File_Formats.Get_All_Supported_File_Formats()

  ###########################################
  #  puts("*** Executing Working_With_Storage...")
  ###########################################

  #  require 'Working_With_Storage/Viewer_Ruby_Storage_Exist.rb'
  #  puts("* Executing Viewer_Ruby_Storage_Exist...")
  #  Working_With_Storage.Viewer_Ruby_Storage_Exist()

  #  require 'Working_With_Storage/Viewer_Ruby_Object_Exists.rb'
  #  puts("* Executing Viewer_Ruby_Object_Exists...")
  #  Working_With_Storage.Viewer_Ruby_Object_Exists()

  #  require 'Working_With_Storage/Viewer_Ruby_Get_File_Versions.rb'
  #  puts("* Executing Viewer_Ruby_Get_File_Versions...")
  #  Working_With_Storage.Viewer_Ruby_Get_File_Versions()

  #  require 'Working_With_Storage/Viewer_Ruby_Get_Disc_Usage.rb'
  #  puts("* Executing Viewer_Ruby_Get_Disc_Usage...")
  #  Working_With_Storage.Viewer_Ruby_Get_Disc_Usage()

  ###########################################
  #  puts("*** Executing Working_With_Folder...")
  ###########################################

  #  require 'Working_With_Folder/Viewer_Ruby_Create_Folder.rb'
  #  puts("* Executing Viewer_Ruby_Create_Folder...")
  #  Working_With_Folder.Viewer_Ruby_Create_Folder()

  #  require 'Working_With_Folder/Viewer_Ruby_Copy_Folder.rb'
  #  puts("* Executing Viewer_Ruby_Copy_Folder...")
  #  Working_With_Folder.Viewer_Ruby_Copy_Folder()

  #  require 'Working_With_Folder/Viewer_Ruby_Get_Files_List.rb'
  #  puts("* Executing Viewer_Ruby_Get_Files_List...")
  #  Working_With_Folder.Viewer_Ruby_Get_Files_List()

  #  require 'Working_With_Folder/Viewer_Ruby_Move_Folder.rb'
  #  puts("* Executing Viewer_Ruby_Move_Folder...")
  #  Working_With_Folder.Viewer_Ruby_Move_Folder()

  #  require 'Working_With_Folder/Viewer_Ruby_Delete_Folder.rb'
  #  puts("* Executing Viewer_Ruby_Delete_Folder...")
  #  Working_With_Folder.Viewer_Ruby_Delete_Folder()

  ###########################################
  #  puts("*** Executing Working_With_Files...")
  ###########################################

  #  require 'Working_With_Files/Viewer_Ruby_Upload_File.rb'
  #  puts("* Executing Viewer_Ruby_Upload_File...")
  #  Working_With_Files.Viewer_Ruby_Upload_File()

  #  require 'Working_With_Files/Viewer_Ruby_Download_File.rb'
  #  puts("* Executing Viewer_Ruby_Download_File...")
  #  Working_With_Files.Viewer_Ruby_Download_File()

  #  require 'Working_With_Files/Viewer_Ruby_Copy_File.rb'
  #  puts("* Executing Viewer_Ruby_Copy_File...")
  #  Working_With_Files.Viewer_Ruby_Copy_File()

  #  require 'Working_With_Files/Viewer_Ruby_Move_File.rb'
  #  puts("* Executing Viewer_Ruby_Move_File...")
  #  Working_With_Files.Viewer_Ruby_Move_File()

  #  require 'Working_With_Files/Viewer_Ruby_Delete_File.rb'
  #  puts("* Executing Viewer_Ruby_Delete_File...")
  #  Working_With_Files.Viewer_Ruby_Delete_File()

  ###########################################
  #  puts("*** Executing Working_With_Document_Information...")
  ###########################################

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_Minimal_ViewOptions.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_Minimal_ViewOptions...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_Minimal_ViewOptions()

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_CAD_Options.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_CAD_Options...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_CAD_Options()

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_HTML_View_Format.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_HTML_View_Format...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_HTML_View_Format()

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_Image_View_Format.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_Image_View_Format...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_Image_View_Format("PNG")

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_Image_View_Options_Options.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_Image_View_Options_Options...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_Image_View_Options_Options()

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_Project_Options.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_Project_Options...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_Project_Options()

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_Render_Hidden_Pages.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_Render_Hidden_Pages...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_Render_Hidden_Pages()

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_Spreadsheet_Render_Hidden_Rows_Option.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_Spreadsheet_Render_Hidden_Rows_Option...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_Spreadsheet_Render_Hidden_Rows_Option()

  #  require 'Working_With_Document_Information/Viewer_Ruby_Get_Info_With_SpreadsheetOptions.rb'
  #  puts("* Executing Viewer_Ruby_Get_Info_With_SpreadsheetOptions...")
  #  Working_With_Document_Information.Viewer_Ruby_Get_Info_With_SpreadsheetOptions()

  ###########################################
  #  puts("*** Executing Working_With_View...")
  ###########################################

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_Minimal_ViewOptions.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_Minimal_ViewOptions...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_Minimal_ViewOptions()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_CAD_Options.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_CAD_Options...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_CAD_Options()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_Fonts_Path_Options.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_Fonts_Path_Options...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_Fonts_Path_Options()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_HTML_View_Format.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_HTML_View_Format...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_HTML_View_Format()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_HTML_ViewOptions.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_HTML_ViewOptions...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_HTML_ViewOptions()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_Image_View_Format.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_Image_View_Format...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_Image_View_Format("PNG")

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_Project_Options.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_Project_Options...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_Project_Options()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_Render_Hidden_Pages.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_Render_Hidden_Pages...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_Render_Hidden_Pages()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_SpreadsheetOptions.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_SpreadsheetOptions...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_SpreadsheetOptions()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_Spreadsheet_Render_Hidden_Rows_Option.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_Spreadsheet_Render_Hidden_Rows_Option...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_Spreadsheet_Render_Hidden_Rows_Option()

  #  require 'Working_With_View/Viewer_Ruby_Create_View_With_StartPage_And_CountPages.rb'
  #  puts("* Executing Viewer_Ruby_Create_View_With_StartPage_And_CountPages...")
  #  Working_With_View.Viewer_Ruby_Create_View_With_StartPage_And_CountPages()

  #  require 'Working_With_View/Viewer_Ruby_Delete_View_With_Default_ViewFormat.rb'
  #  puts("* Executing Viewer_Ruby_Delete_View_With_Default_ViewFormat...")
  #  Working_With_View.Viewer_Ruby_Delete_View_With_Default_ViewFormat()

end