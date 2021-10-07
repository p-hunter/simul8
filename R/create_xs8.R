# generate xs8




create_xs8xml <- function(
  Title = "",
  Runs = 5,
  SendToVISA = "No",
  Distance = 1,
  PixelsPerDistanceUnit = 10,
  DefaultSpeed = 10,
  Flow_units_text = "kg",
  Flow_units_text2 = "Kgs",
  CustomDistanceText = "feet",
  IgnoreLargeBatchWarnings = "No",
  ResultsCollectionPeriod = 719.4999,
  ResultsIgnoreInitialcContents = "Yes",
  BeepOnComplete = "No",
  RouteInBeforeAlways = "Yes",
  V4ActionSeq = "No",
  OldConveyorTiming = "No",
  OldWorkEntryBreaks = "No",
  AllowResourceHolding = "Yes",
  Randomness = NULL,
  Seeds = NULL,
  ...,
  IDs = NULL
) {
  
  Runs <- Runs
  Seeds <- Seeds
  
  if(is.null(Randomness)) {
    Randomness <- xs8_randomness()
  }
  
  if(is.null(IDs)) {
    message("No IDs Found. Generating 10 Random IDs...")
    IDs <- 20
  }
  
  
  
  if(is.null(Seeds)) {
    Seeds <- xs8_rn_stream(Runs = Runs, IDs = IDs)
  }
  list(
  XML = paste0(
    '<SIMUL8XML>\n',
    '\t<SimulationParameters>\n',
    '\t\t<Trial>\n\t\t\t<Title>',
    Title,
    '</Title>\n\t\t\t<Runs>',
    Runs, 
    '</Runs>\n\t\t\t<SendToVISA>',
    SendToVISA,
    '</SendToVISA>\n',
    '\t\t</Trial>\n',
    '\t\t<Units>\n',
    Randomness$XML, '\n',
    Seeds$XML, '\n',
    '</SIMUL8XML>'
  ),
  Randomness = Randomness,
  Seeds = Seeds
  )
  
}




