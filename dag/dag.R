# Some reading
# https://en.wikipedia.org/wiki/Graph_theory
# https://en.wikipedia.org/wiki/Directed_graph
# https://en.wikipedia.org/wiki/Directed_acyclic_graph
# https://medium.com/fantomfoundation/an-introduction-to-dags-and-how-they-differ-from-blockchains-a6f703462090

# https://cran.r-project.org/web/packages/ggdag/vignettes/intro-to-dags.html
# https://cran.r-project.org/web/packages/ggdag/vignettes/intro-to-ggdag.html
# https://ggdag.netlify.com/reference/ggdag.html

#install.packages("ggdag", dependencies = T)

library(ggdag)

dagify(simulator ~ worker,
       domain ~ worker, 
       service ~ worker,
       core ~ simulator,
       domain ~ simulator,
       auth ~ serviceWeb,
       domain ~ serviceWeb,
       service ~ serviceWeb,
       auth ~ service,
       simulator ~ service,    
       domain ~ service) %>%
  ggdag()

# directed
#dagify(loren ~ david) %>%
#  ggdag()

# bi-direction
#dagify(loren ~~ david) %>%
#  ggdag()

# canonicalize the DAG: Add the latent variable in to the graph
#dagify(y ~~ x) %>% 
#  ggdag_canonical() 

# https://en.wikipedia.org/wiki/Cycle_graph#Directed_cycle_graph
# a variable can't be its own descendant
# this is not a dag
#dagify(y ~ x, x ~ a, a ~ y) %>% 
#  ggdag()



