% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pred_ci.R
\name{pred_ci}
\alias{pred_ci}
\title{Confidence Intervals of Predictions}
\usage{
pred_ci(data, newdata, group_number, bootstrap_times)
}
\arguments{
\item{data}{data.frame}

\item{newdata}{new data.frame}

\item{group_number}{number of groups to be devided}

\item{bootstrap_times}{number of bootstrap}
}
\value{
Confidence Intervals
}
\description{
Confidence Intervals of Predictions
}
\examples{
\dontrun{
future::plan(future::multiprocess, workers = 4)
library(nycflights13)
x = flights$dep_delay
y = flights$arr_time
data = data.frame(x,y)
newdata = rbind(1,2)
group_number = 10
bootstrap_times = 10
pred_ci(data,newdata,group_number,bootstrap_times)
}
}
