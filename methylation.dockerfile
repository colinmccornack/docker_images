# 'FROM' is the basic command that starts dockerfiles
FROM cmccornack/methylation

# Install Bioc Packages
RUN R -e "remotes::install_bioc('minfi')"
RUN R -e "remotes::install_url(c('https://bioconductor.org/packages/release/data/annotation/src/contrib/IlluminaHumanMethylation450kmanifest_0.4.0.tar.gz', 'https://bioconductor.org/packages/release/data/annotation/src/contrib/IlluminaHumanMethylationEPICmanifest_0.3.0.tar.gz'))"
RUN R -e "remotes::install_bioc(c('DSS', 'DMRcate', 'ChAMP', 'sesame', 'conumee', 'ConsensusClusterPlus'))"
# Install Github Packages
RUN R -e "remotes::install_github(c('mwsill/RFpurify', 'jokergoo/ComplexHeatmap', 'mwsill/IlluminaHumanMethylationEPICv2manifest', 'Nowosad/rcartocolor'))"
# Install other packages (color palettes)
RUN R -e "install.packages('scCustomize', 'stringdist')"