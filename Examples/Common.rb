
$config = ""

class Common
  
  def self.UploadSampleFiles()

    @TestFiles = Dir.glob("Resources/**/*.*")

    # Api initialization
    storageApi = GroupDocsViewerCloud::StorageApi.from_config($config)
    fileApi = GroupDocsViewerCloud::FileApi.from_config($config)

    puts("Files Count: "+((@TestFiles).length).to_s)
    @TestFiles.each do |item|
      dstPath = item.gsub('Resources/', '')
      puts("File to Upload: " + dstPath)
      fileExistRequest = GroupDocsViewerCloud::ObjectExistsRequest.new(dstPath)
      fileExistsResponse = storageApi.object_exists(fileExistRequest)
      if fileExistsResponse.exists == false
        file = File.open(item, "r")
        uploadRequest = GroupDocsViewerCloud::UploadFileRequest.new(dstPath, file)
        fileApi.upload_file(uploadRequest)
        puts("Uploaded missing file: " + item)
      end
    end

    puts("File Uploading completed..")
  end
end