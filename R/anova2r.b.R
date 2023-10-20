
# This file is a generated template, your changes will not be overwritten

anova2rClass <- if (requireNamespace('jmvcore', quietly=TRUE)) R6::R6Class(
    "anova2rClass",
    inherit = anova2rBase,
    private = list(
        .run = function() {

          n1<-self$options$group1sz
          m1<-self$options$group1mn
          sd1<-self$options$group1sd
          
          n2<-self$options$group2sz
          m2<-self$options$group2mn
          sd2<-self$options$group2sd
          
          n3<-self$options$group3sz
          m3<-self$options$group3mn
          sd3<-self$options$group3sd
          
          if (n1==0 || n2==0) {
            return()
          }
          
          mn<-(m1*n1+m2*n2+m3*n3)/(n1+n2+n3)
          msd<-sqrt( (n1*(m1-mn)^2 + n2*(m2-mn)^2 + n3*(m3-mn)^2)/(n1+n2+n3))
          sdd<-sqrt( (n1*sd1^2 + n2*sd2^2 + n3*sd3^2 )/(n1+n2+n3))
          if (n3==0) {
            md<-m2-m1
          } else {
            md<-msd*2
          }
          
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
