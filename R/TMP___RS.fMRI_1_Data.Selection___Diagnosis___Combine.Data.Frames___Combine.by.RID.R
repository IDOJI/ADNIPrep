RS.fMRI_1.3_Diagnosis___Combine.Data.Frames___Combine.by.RID = function(Merged_Lists.df,
                                                                         BLCHANGE.list,
                                                                         DXSUM.list,
                                                                         PTDEMO.list,
                                                                         ADNIMERGE.list,
                                                                         CLIELG.list){
  #===============================================================================
  # EPB
  #===============================================================================
  RID = Merged_Lists.df$RID %>% sort
  # EPB_Selected.df = EPB.df %>% select(c("RESEARCH.GROUP", "RID", "VISCODE", "VISCODE2", "VISIT", "STUDY.DATE", "PHASE",  "SEX", "WEIGHT", "AGE" ,"File_Names_New"))


  #===============================================================================
  # Data Extraction : BLCHANGE
  #===============================================================================
  New_BLCHANGE.list = RS.fMRI_1.3_Diagnosis___Combine.Data.Frames___Combine.by.RID___Extract.Data.by.RID(Merged_Lists.df, Data.list = BLCHANGE.list, Data_Name="BLCHANGE")



  #===============================================================================
  # Data Extraction : DXSUM
  #===============================================================================
  New_DXSUM.list = RS.fMRI_1.3_Diagnosis___Combine.Data.Frames___Combine.by.RID___Extract.Data.by.RID(Merged_Lists.df, Data.list = DXSUM.list, Data_Name="DXSUM")



  #===============================================================================
  # Data Extraction : PTRDEMOG
  #===============================================================================
  New_PTDEMO.list = RS.fMRI_1.3_Diagnosis___Combine.Data.Frames___Combine.by.RID___Extract.Data.by.RID(Merged_Lists.df, Data.list = PTDEMO.list, Data_Name="PTDEMO")



  #===============================================================================
  # Data Extraction : ADNIMERGE
  #===============================================================================
  New_ADNIMERGE.list = RS.fMRI_1.3_Diagnosis___Combine.Data.Frames___Combine.by.RID___Extract.Data.by.RID(Merged_Lists.df, Data.list = ADNIMERGE.list, Data_Name="ADNIMERGE")



  #===============================================================================
  # Data Extraction : CLIELG
  #===============================================================================
  New_CLIELG.list = RS.fMRI_1.3_Diagnosis___Combine.Data.Frames___Combine.by.RID___Extract.Data.by.RID(Merged_Lists.df, Data.list = CLIELG.list, Data_Name="CLIELG")



  #===============================================================================
  # Merging Datasets
  #===============================================================================
  Merged_Data.list = RS.fMRI_1.3_Diagnosis___Combine.Data.Frames___Combine.by.RID___Merging.Dataset(Merged_Lists.df, New_BLCHANGE.list, New_DXSUM.list, New_PTDEMO.list, New_ADNIMERGE.list, New_CLIELG.list)



  return(Merged_Data.list)
}
























