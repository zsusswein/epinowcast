% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{get_internal_timestep}
\alias{get_internal_timestep}
\title{Get internal timestep}
\usage{
get_internal_timestep(timestep)
}
\arguments{
\item{timestep}{The timestep to used. This can be a string ("day",
"week", "month") or a numeric whole number representing the number of days.}
}
\value{
A numeric value representing the number of days for "day" and
"week", "month" for "month",  or the input value if it is a numeric whole
number.
}
\description{
This function converts the string representation of the timestep to its
corresponding numeric value or returns the numeric input (if it is a whole
number). For "day", "week", it returns 1 and 7 respectively.
For "month", it returns "month" as months are not a fixed number of days.
If the input is a numeric whole number, it is returned as is.
}
\seealso{
Utility functions
\code{\link{aggregate_rolling_sum}()},
\code{\link{coerce_date}()},
\code{\link{coerce_dt}()},
\code{\link{convert_cmdstan_to_rstan}()},
\code{\link{date_to_numeric_modulus}()},
\code{\link{expose_stan_fns}()},
\code{\link{is.Date}()},
\code{\link{stan_fns_as_string}()}
}
\concept{utils}
