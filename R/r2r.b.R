
# This file is a generated template, your changes will not be overwritten

r2rClass <- if (requireNamespace('jmvcore', quietly=TRUE)) R6::R6Class(
    "r2rClass",
    inherit = r2rBase,
    private = list(
        .run = function() {

          r<-self$options$rvalue
          sdDV<-self$options$DVsd
          
          if (sdDV==0) {
            return()
          }
          
          msd<-sdDV*r
          sdd<-sqrt(sdDV^2-msd^2)
          md<-msd*2
          
          self$results$reportTable$setRow(rowNo=1,
                                          values=list(Parameter="sd(model)",Value=msd))
          self$results$reportTable$setRow(rowNo=2,
                                          values=list(Parameter="sd(residuals)",Value=sdd))
          self$results$reportTable$setRow(rowNo=3,
                                          values=list(Parameter="sd(total)",Value=sqrt(sdd^2+msd^2)))
          self$results$reportTable$setRow(rowNo=4,
                                          values=list(Parameter=" ",Value=NULL))
          self$results$reportTable$setRow(rowNo=5,
                                          values=list(Parameter="r",Value=msd/sqrt(sdd^2+msd^2)))
          self$results$reportTable$setRow(rowNo=6,
                                          values=list(Parameter="Cohens d",Value=md/sdd))
          self$results$reportTable$setRow(rowNo=7,
                                          values=list(Parameter="Cohens f",Value=msd/sdd))
          
        }
        )
)
