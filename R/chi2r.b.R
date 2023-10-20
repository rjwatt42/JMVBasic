
# This file is a generated template, your changes will not be overwritten

chi2rClass <- if (requireNamespace('jmvcore', quietly=TRUE)) R6::R6Class(
    "chi2rClass",
    inherit = chi2rBase,
    private = list(
        .run = function() {

          chisqr<-self$options$chisqr
          n1<-self$options$group1sz
          n2<-self$options$group2sz
          
          if (n1==0 || n2==0) {
            return()
          }

          ncorrection<-max(n1,n2)/min(n1,n2)
          r<-sqrt(chisqr/(n1+n2)/ncorrection)
          
          f<-r/sqrt(1-r^2)
          
          self$results$reportTable$setRow(rowNo=1,
                                          values=list(Parameter="sd(model)",Value=r))
          self$results$reportTable$setRow(rowNo=2,
                                          values=list(Parameter="sd(residuals)",Value=sqrt(1-r^2)))
          self$results$reportTable$setRow(rowNo=3,
                                          values=list(Parameter="sd(total)",Value=1))
          self$results$reportTable$setRow(rowNo=4,
                                          values=list(Parameter=" ",Value=NULL))
          self$results$reportTable$setRow(rowNo=5,
                                          values=list(Parameter="r",Value=r))
          self$results$reportTable$setRow(rowNo=6,
                                          values=list(Parameter="Cohens d",Value=2*f))
          self$results$reportTable$setRow(rowNo=7,
                                          values=list(Parameter="Cohens f",Value=f))

        }
    )
)
