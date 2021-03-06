\name{plotRs}
\alias{plotRs}
\docType{package}
\title{
Scatter plot of the log2 RPF-to-mRNA ratios
}
\description{
A simple function that plots the log2 RPF-to-mRNA ratios in two condition
}
\usage{
plotRs(object, log2R.cutoff = 1, cex=1, xlim=NA, ylim=NA, ...)
}
\arguments{
  \item{object}{a object that generated by \code{xtail} function}
  \item{log2R.cutoff}{the threshold of log2 RPF-to-mRNA ratios}
  \item{cex}{cex}
  \item{xlim}{the bound for points on the x-axis}
  \item{ylim}{the bound for points on the y-axis}
  \item{...}{further arguments to 'plot'}
}
\examples{
  #load data
  data(xtaildata)
  #Get the mrna count data and rpf count data
  test.mrna <- xtaildata$mrna
  test.rpf <- xtaildata$rpf
  #Assign condition labels to samples.
  condition <- c("control","control","treat","treat")
  #run xtail
  test.results <- xtail(test.mrna,test.rpf,condition)
  #log2 RPF-to-mRNA ratios plot
  plotRs(test.results)
}
\author{
Zhengtao xiao
}
\references{
Zhengtao Xiao, Qin Zou, Yu Liu, and Xuerui Yang: Genome-wide assessment of differential translations with ribosome profiling data.
}
