# Load the gem
require 'groupdocs_viewer_cloud'

#require 'aspose_storage_cloud'
$app_sid = ""
$app_key = ""
$storage_name = ""
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here
$myStorage = "MyStorage"

class Common_Utilities
  def self.Get_ViewApi_Instance()
    # Create instance of the API
    return GroupDocsViewerCloud::ViewApi.from_keys($app_sid, $app_key)
  end

  def self.Get_InfoApi_Instance()
    # Create instance of the API
    return GroupDocsViewerCloud::InfoApi.from_keys($app_sid, $app_key)
  end

  def self.Get_StorageApi_Instance()
    # Create instance of the API
    return GroupDocsViewerCloud::StorageApi.from_keys($app_sid, $app_key)
  end

  def self.Get_FolderApi_Instance()
    # Create instance of the API
    return GroupDocsViewerCloud::FolderApi.from_keys($app_sid, $app_key)
  end

  def self.Get_FileApi_Instance()
    # Create instance of the API
    return GroupDocsViewerCloud::FileApi.from_keys($app_sid, $app_key)
  end

  def self.Upload_Test_File()

    @TestFiles= Dir.entries(File.absolute_path("src/Resources/viewerdocs")).select {|f| !File.directory? f}

    # Storage Api initialization
    storageApi = Get_StorageApi_Instance()
    fileApi = Get_FileApi_Instance()

    puts("Files Count: "+((@TestFiles).length).to_s)

    @TestFiles.each do |item|
      puts("File to Upload: "+File.basename(item))
      # skip existing file uploading
      fileExistRequest = GroupDocsViewerCloud::ObjectExistsRequest.new('viewerdocs/' + File.basename(item))
      fileExistsResponse = storageApi.object_exists(fileExistRequest)
      if fileExistsResponse.exists == false

        # file content uploading
        fileContent = File.binread(File.dirname(item)+"/"+File.basename(item))
        putCreateRequest = GroupDocsViewerCloud::UploadFileRequest.new('viewerdocs/' + File.basename(item), fileContent)
        fileApi.upload_file(putCreateRequest)
        puts("Uploaded missing file: "+ File.basename(item))
      end
    end

    puts("File Uploading completed..")
  end
end