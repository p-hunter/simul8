# writing as xs8 files


xs8_erlang <- function(Name="", ID="", Mean = 60, K = 2, Offset = 0, UpperBound = 1000) {
  list(
  XML = paste(
    '\t\t\t<Distribution Name =',  Name, 
    'ID=',ID,
    '>\n\t\t\t\t<DistributionType>1</DistributionType>\n\t\t\t\t<UpperBound>',    UpperBound, '</UpperBound>\n',
    '\t\t\t\t<SampleData>\n\t\t\t\t\t<DistParam1>', Mean,
    '</DistParam1>\n\t\t\t\t\t<DistParam2>', K,
    '</DistParam2>\n\t\t\t\t\t<DistParam3>',Offset,
    '</DistParam3>\n\t\t\t\t\t<DistribType>', 8, '</DistribType>',
    '\n\t\t\t\t</SampleData>\n',
    '\t\t\t</Distribution>\n'
  ),
  Name = Name,
  ID = ID,
  Mean = Mean,
  K = 2,
  Offset = 0,
  UpperBound = 1000
  )
}


