
# This file is automatically generated, you probably don't want to edit this

anova2rOptions <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "anova2rOptions",
    inherit = jmvcore::Options,
    public = list(
        initialize = function(
            group1sz = 0,
            group1mn = 0,
            group1sd = 0,
            group2sz = 0,
            group2mn = 0,
            group2sd = 0,
            group3sz = 0,
            group3mn = 0,
            group3sd = 0, ...) {

            super$initialize(
                package="D2R",
                name="anova2r",
                requiresData=FALSE,
                ...)

            private$..group1sz <- jmvcore::OptionNumber$new(
                "group1sz",
                group1sz,
                default=0)
            private$..group1mn <- jmvcore::OptionNumber$new(
                "group1mn",
                group1mn,
                default=0)
            private$..group1sd <- jmvcore::OptionNumber$new(
                "group1sd",
                group1sd,
                default=0)
            private$..group2sz <- jmvcore::OptionNumber$new(
                "group2sz",
                group2sz,
                default=0)
            private$..group2mn <- jmvcore::OptionNumber$new(
                "group2mn",
                group2mn,
                default=0)
            private$..group2sd <- jmvcore::OptionNumber$new(
                "group2sd",
                group2sd,
                default=0)
            private$..group3sz <- jmvcore::OptionNumber$new(
                "group3sz",
                group3sz,
                default=0)
            private$..group3mn <- jmvcore::OptionNumber$new(
                "group3mn",
                group3mn,
                default=0)
            private$..group3sd <- jmvcore::OptionNumber$new(
                "group3sd",
                group3sd,
                default=0)

            self$.addOption(private$..group1sz)
            self$.addOption(private$..group1mn)
            self$.addOption(private$..group1sd)
            self$.addOption(private$..group2sz)
            self$.addOption(private$..group2mn)
            self$.addOption(private$..group2sd)
            self$.addOption(private$..group3sz)
            self$.addOption(private$..group3mn)
            self$.addOption(private$..group3sd)
        }),
    active = list(
        group1sz = function() private$..group1sz$value,
        group1mn = function() private$..group1mn$value,
        group1sd = function() private$..group1sd$value,
        group2sz = function() private$..group2sz$value,
        group2mn = function() private$..group2mn$value,
        group2sd = function() private$..group2sd$value,
        group3sz = function() private$..group3sz$value,
        group3mn = function() private$..group3mn$value,
        group3sd = function() private$..group3sd$value),
    private = list(
        ..group1sz = NA,
        ..group1mn = NA,
        ..group1sd = NA,
        ..group2sz = NA,
        ..group2mn = NA,
        ..group2sd = NA,
        ..group3sz = NA,
        ..group3mn = NA,
        ..group3sd = NA)
)

anova2rResults <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "anova2rResults",
    inherit = jmvcore::Group,
    active = list(
        reportTable = function() private$.items[["reportTable"]]),
    private = list(),
    public=list(
        initialize=function(options) {
            super$initialize(
                options=options,
                name="",
                title="ANOVA to r")
            self$add(jmvcore::Table$new(
                options=options,
                name="reportTable",
                title=" ",
                rows=8,
                columns=list(
                    list(
                        `name`="Parameter", 
                        `type`="text"),
                    list(
                        `name`="Value", 
                        `type`="number"))))}))

anova2rBase <- if (requireNamespace("jmvcore", quietly=TRUE)) R6::R6Class(
    "anova2rBase",
    inherit = jmvcore::Analysis,
    public = list(
        initialize = function(options, data=NULL, datasetId="", analysisId="", revision=0) {
            super$initialize(
                package = "D2R",
                name = "anova2r",
                version = c(1,0,0),
                options = options,
                results = anova2rResults$new(options=options),
                data = data,
                datasetId = datasetId,
                analysisId = analysisId,
                revision = revision,
                pause = NULL,
                completeWhenFilled = FALSE,
                requiresMissings = FALSE,
                weightsSupport = 'na')
        }))

#' ANOVA to r
#'
#' 
#' @param group1sz .
#' @param group1mn .
#' @param group1sd .
#' @param group2sz .
#' @param group2mn .
#' @param group2sd .
#' @param group3sz .
#' @param group3mn .
#' @param group3sd .
#' @return A results object containing:
#' \tabular{llllll}{
#'   \code{results$reportTable} \tab \tab \tab \tab \tab a table \cr
#' }
#'
#' Tables can be converted to data frames with \code{asDF} or \code{\link{as.data.frame}}. For example:
#'
#' \code{results$reportTable$asDF}
#'
#' \code{as.data.frame(results$reportTable)}
#'
#' @export
anova2r <- function(
    group1sz = 0,
    group1mn = 0,
    group1sd = 0,
    group2sz = 0,
    group2mn = 0,
    group2sd = 0,
    group3sz = 0,
    group3mn = 0,
    group3sd = 0) {

    if ( ! requireNamespace("jmvcore", quietly=TRUE))
        stop("anova2r requires jmvcore to be installed (restart may be required)")


    options <- anova2rOptions$new(
        group1sz = group1sz,
        group1mn = group1mn,
        group1sd = group1sd,
        group2sz = group2sz,
        group2mn = group2mn,
        group2sd = group2sd,
        group3sz = group3sz,
        group3mn = group3mn,
        group3sd = group3sd)

    analysis <- anova2rClass$new(
        options = options,
        data = data)

    analysis$run()

    analysis$results
}

