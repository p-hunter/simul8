xs8_randomness <- function(
  Antithetic = "No",
  AutoChange = "No",
  SingleLogicStream = "No",
  CommonRandomNumbers = "Yes",
  WorkItemBased = "No",
  CurrentStream = 3
  ) {
  
  
  list(
  XML = paste0(
    '\t\t<Randomness>\n',
    '\t\t\t<Antithetic>', Antithetic, '</Antithetic>\n',
    '\t\t\t<AutoChange>', AutoChange, '</AutoChange>\n',
    '\t\t\t<SingleLogicStream>', SingleLogicStream, '</SingleLogicStream>\n',
    '\t\t\t<CommonRandomNumbers>', CommonRandomNumbers, '</CommonRandomNumbers>\n',
    '\t\t\t<WorkItemBased>', WorkItemBased, '</WorkItemBased>\n',
    '\t\t\t<WorkItemBased>', WorkItemBased, '</WorkItemBased>\n',
    '\t\t\t<CurrentStream>', CurrentStream, '</CurrentStream>\n',
    '\t\t</Randomness>'
    ),
  Antithetic = Antithetic,
  AutoChange = AutoChange,
  SingleLogicStream = SingleLogicStream,
  WorkItemBased = WorkItemBased,
  CurrentStream = CurrentStream
  )
}