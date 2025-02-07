% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compileData.R
\name{compileData}
\alias{compileData}
\title{compileData}
\usage{
compileData(
  echoData = NULL,
  protocolData = NULL,
  blindTimesData = NULL,
  sunriseSunsetData = NULL,
  radarSiteData = NULL,
  dbName = NULL,
  pulseTypeSelection = NULL,
  rotationSelection = NULL,
  timeRangeTargetTZ = NULL,
  targetTimeZone = "Etc/GMT0",
  classSelection = NULL,
  classProbCutOff = NULL,
  altitudeRange_AGL = NULL,
  echoValidator = FALSE,
  filePath = NULL,
  tagOutputFile = c(NULL, NULL),
  saveCSV = FALSE
)
}
\arguments{
\item{echoData}{dataframe with the echo data from the data list created by
the function \code{extractDBData}.}

\item{protocolData}{dataframe with the protocol data from the data list created by
the function \code{extractDBData}. Echoes not detected during the listed protocols
will be excluded.}

\item{blindTimesData}{dataframe with the manual blind times created by
the function \code{loadManualBlindTimes}.
It include the automated blind times induced by changes in measurment protocol,
and blind time added manually to remove periods of incoherent data collection.}

\item{radarSiteData}{dataframe/vector with the database site table}

\item{dbName}{Name of the database. Can be a useful meta data.}

\item{pulseTypeSelection}{character vector with the pulse types which should
be included in the subset. Options: “S”, “M”, “L”, i.e. short-, medium-, long-pulse, respectively.
Default is NULL: no filtering applied based on pulseType.}

\item{rotationSelection}{numeric vector to select the operation modes with and/or without
antenna rotation. Options: 0, 1. (0 = no rotation, 1 = rotation).
Default is NULL: no filtering applied based on rotation mode.}

\item{timeRangeTargetTZ}{Character vector of length 2, with start and end of
time range, formatted as "\%Y-\%m-\%d \%H:\%M". Echoes outside the time range will
be excluded.}

\item{targetTimeZone}{"Etc/GMT0" String specifying the target time zone.
Default is "Etc/GMT0".}

\item{classSelection}{character string vector with the classes that should be
included.}

\item{classProbCutOff}{numeric cutoff value for class probabilities. Echoes
with a lower class probability will be excluded.}

\item{altitudeRange_AGL}{numeric vector of length 2 with start and end of the
altitude range. Echoes outside the altitude range will be excluded.}

\item{echoValidator}{logical, If set to FALSE - default -, no additional filters
is applied; if set to TRUE, echoes labelled by the echo validator as “non-bio scatterer”
will be excluded.}

\item{filePath}{If given, the data-list is saved as RDS.}

\item{tagOutputFile}{Vector of two elements for prefix & suffix to file name, given 'filePath' is not NULL.}

\item{saveCSV}{if true, save tables as CSV in a folder nested in 'filePath'.}
}
\value{
Returns filtered data table - echo, protocol, blindTimes, sunriseSunset,
radarSite - and necessary parameters as input for \code{computeMTR}.
}
\description{
The function \code{compileData} creates a standardized Birdscan
MR1 data product, including metadata, that can be used to publish the
dataset in a standardized manner. This results in improved accessibility
across datasets and owners. The function uses the output from
\code{extractDbData} and allows for specific filtering of the dataset,
e.g., by time range, pulse type, and class.
}
\examples{
\dontrun{
  
}

}
\author{
Baptiste Schmid, \email{baptiste.schmid@vogelwarte.ch};
Birgen Haest, \email{birgen.haest@vogelwarte.ch};
}
