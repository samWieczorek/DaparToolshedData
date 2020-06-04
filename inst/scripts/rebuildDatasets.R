allScripts <-list.files(pattern = "\\.R$")
allScripts <- allScripts[-which(allScripts == "rebuildDatasets.R")]

for (i in allScripts){
  
  base <- substring(i,1,nchar(i)-2)
  print(paste0('saving file ', i, '...'))
  source(i)
  
  saveRDS(get(base), file=paste0(base, '.ft'))

}

save(Exp1_R2_pept, file='Exp1_R2_pept.RData')
save(Exp1_R2_prot, file='Exp1_R2_prot.RData')
save(Exp1_R25_pept, file='Exp1_R25_pept.RData')
save(Exp1_R25_prot, file='Exp1_R25_prot.RData')

save(Exp2_R2_pept, file='Exp2_R2_pept.RData')
save(Exp2_R2_prot, file='Exp2_R2_prot.RData')
save(Exp2_R10_pept, file='Exp2_R10_pept.RData')
save(Exp2_R10_prot, file='Exp2_R10_prot.RData')
save(Exp2_R100_pept, file='Exp2_R100_pept.RData')
save(Exp2_R100_prot, file='Exp2_R100_prot.RData')