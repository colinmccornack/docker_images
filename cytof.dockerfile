# 'FROM' is the basic command that starts dockerfiles
FROM cmccornack/cytof

RUN R -e "remotes::install_cran(c('MASS', 'devtools', 'VCA'))"
# Bioc installs
# Deps
RUN R -e "remotes::install_github('igraph/rigraph')"
RUN R -e "remotes::install_github('saeyslab/FlowSOM')"
RUN R -e "remotes::install_bioc(c('flowCore', 'cydar', 'CATALYST'))"
# Github installs
RUN R -e "remotes::install_github('JinmiaoChenLab/cytofkit2')"
