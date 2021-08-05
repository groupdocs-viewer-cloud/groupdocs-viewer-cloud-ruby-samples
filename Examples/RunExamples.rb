require 'groupdocs_viewer_cloud'
require './Common.rb'

# Get your client id and client secret at https://dashboard.groupdocs.cloud (free registration is required).
$client_id = "XXXX-XXXX-XXXX-XXXX"
$client_secret = "XXXXXXXXXXXXXXXX"

$config = GroupDocsViewerCloud::Configuration.new($client_id, $client_secret)
$config.api_base_url = "https://api.groupdocs.cloud"

class RunExamples

  # Uploading sample test files from local disk to cloud storage
  Common.UploadSampleFiles()

  # Basic usage examples

  require './BasicUsage/GetSupportedFormats.rb'
  GetSupportedFormats.Run()
  require './BasicUsage/GetDocumentInformation.rb'
  GetDocumentInformation.Run()  
  require './BasicUsage/GetAttachments.rb'
  GetAttachments.Run()    
  require './BasicUsage/HtmlViewer/HtmlViewerExcludeFonts.rb'
  HtmlViewerExcludeFonts.Run()
  require './BasicUsage/HtmlViewer/HtmlViewerMinifyHtml.rb'
  HtmlViewerMinifyHtml.Run()
  require './BasicUsage/HtmlViewer/HtmlViewerResponsiveLayout.rb'
  HtmlViewerResponsiveLayout.Run()
  require './BasicUsage/HtmlViewer/HtmlViewerLimitImageSize.rb'
  HtmlViewerLimitImageSize.Run()
  require './BasicUsage/HtmlViewer/HtmlViewerOptimizeForPrinting.rb'
  HtmlViewerOptimizeForPrinting.Run()
  require './BasicUsage/ImageViewer/ImageViewerAddTextOverlay.rb'
  ImageViewerAddTextOverlay.Run()
  require './BasicUsage/ImageViewer/ImageViewerAdjustImageSize.rb'
  ImageViewerAdjustImageSize.Run()
  require './BasicUsage/ImageViewer/ImageViewerAdjustJpgQuality.rb'
  ImageViewerAdjustJpgQuality.Run()
  require './BasicUsage/ImageViewer/ImageViewerGetTextCoordinates.rb'
  ImageViewerGetTextCoordinates.Run()
  require './BasicUsage/PdfViewer/PdfViewerAdjustJpgQuality.rb'
  PdfViewerAdjustJpgQuality.Run()
  require './BasicUsage/PdfViewer/PdfViewerProtectPdf.rb'
  PdfViewerProtectPdf.Run()

  # Advanced usage examples

  require './AdvancedUsage/CommonRenderingOptions/AddWatermark.rb'
  AddWatermark.Run()
  require './AdvancedUsage/CommonRenderingOptions/FlipRotatePages.rb'
  FlipRotatePages.Run()
  require './AdvancedUsage/CommonRenderingOptions/RenderComments.rb'
  RenderComments.Run()
  require './AdvancedUsage/CommonRenderingOptions/RenderConsecutivePages.rb'
  RenderConsecutivePages.Run()
  require './AdvancedUsage/CommonRenderingOptions/RenderHiddenPages.rb'
  RenderHiddenPages.Run()
  require './AdvancedUsage/CommonRenderingOptions/RenderNotes.rb'
  RenderNotes.Run()
  require './AdvancedUsage/CommonRenderingOptions/RenderSelectedPages.rb'
  RenderSelectedPages.Run()
  require './AdvancedUsage/CommonRenderingOptions/RenderWithCustomFonts.rb'
  RenderWithCustomFonts.Run()
  require './AdvancedUsage/CommonRenderingOptions/ReorderPages.rb'
  ReorderPages.Run()
  require './AdvancedUsage/CommonRenderingOptions/ReplaceMissingFont.rb'
  ReplaceMissingFont.Run()
  require './AdvancedUsage/LoadingOptions/SpecifyEncoding.rb'
  SpecifyEncoding.Run()                  
  require './AdvancedUsage/LoadingOptions/ViewProtectedDocument.rb'
  ViewProtectedDocument.Run()   
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingArchiveFiles/GetInfoForArchiveFile.rb'
  GetInfoForArchiveFile.Run()  
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingArchiveFiles/RenderArchiveFolder.rb'
  RenderArchiveFolder.Run()  
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingCadDrawings/AdjustOutputImageSize.rb'
  AdjustOutputImageSize.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingCadDrawings/GetInfoForCadDrawing.rb'
  GetInfoForCadDrawing.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingCadDrawings/RenderAllLayouts.rb'
  RenderAllLayouts.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingCadDrawings/RenderLayers.rb'
  RenderLayers.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingCadDrawings/RenderSingleLayout.rb'
  RenderSingleLayout.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingEmailMessages/AdjustPageSize.rb'
  AdjustPageSize.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingEmailMessages/RenameEmailFields.rb'
  RenameEmailFields.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingMsProjectDocuments/AdjustTimeUnit.rb'
  AdjustTimeUnit.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingMsProjectDocuments/GetInfoForProjectFile.rb'
  GetInfoForProjectFile.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingMsProjectDocuments/RenderTimeInterval.rb'
  RenderTimeInterval.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingOutlookDataFiles/FilterMessages.rb'
  FilterMessages.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingOutlookDataFiles/GetInfoForOutlookDataFile.rb'
  GetInfoForOutlookDataFile.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingOutlookDataFiles/LimitCountOfItemsToRender.rb'
  LimitCountOfItemsToRender.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingOutlookDataFiles/RenderFolder.rb'
  RenderFolder.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingPdfDocuments/AdjustImageQuality.rb'
  AdjustImageQuality.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingPdfDocuments/DisableCharsGrouping.rb'
  DisableCharsGrouping.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingPdfDocuments/EnableFontHinting.rb'
  EnableFontHinting.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingPdfDocuments/EnableLayeredRendering.rb'
  EnableLayeredRendering.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingPdfDocuments/GetInfoForPdfFile.rb'
  GetInfoForPdfFile.Run() 
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingPdfDocuments/RenderOriginalPageSize.rb'
  RenderOriginalPageSize.Run()       
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingSpreadsheets/AdjustTextOverflowInCells.rb'
  AdjustTextOverflowInCells.Run()     
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingSpreadsheets/RenderHiddenColumnsAndRows.rb'
  RenderHiddenColumnsAndRows.Run()    
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingSpreadsheets/RenderPrintAreas.rb'
  RenderPrintAreas.Run()    
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingSpreadsheets/RenderSpreadsheetWithGridLines.rb'
  RenderSpreadsheetWithGridLines.Run()    
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingSpreadsheets/SkipRenderingOfEmptyColumns.rb'
  SkipRenderingOfEmptyColumns.Run()    
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingSpreadsheets/SkipRenderingOfEmptyRows.rb'
  SkipRenderingOfEmptyRows.Run()    
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingSpreadsheets/SplitWorksheetsIntoPages.rb'
  SplitWorksheetsIntoPages.Run()              
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingWordProcessingDocuments/RenderTrackedChanges.rb'
  RenderTrackedChanges.Run()   
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingLotusNotesDatabase/FilterMailStorage.rb'
  FilterMailStorage.Run()   
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingTextFiles/SpecifyMaxCharsAndRows.rb'
  SpecifyMaxCharsAndRows.Run()   
  require './AdvancedUsage/RenderingOptionsByFileType/RenderingVisioDocuments/RenderVisioDocumentFigures.rb'
  RenderVisioDocumentFigures.Run()   
end