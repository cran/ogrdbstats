% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/command_line.R
\name{genotype_statistics_cmd}
\alias{genotype_statistics_cmd}
\title{Collect parameters from the command line and use them to create a report and CSV file}
\usage{
genotype_statistics_cmd(args = NULL)
}
\arguments{
\item{args}{A string vector containing the command line arguments. If NULL, will take them from the command line}
}
\value{
Nothing
}
\description{
Collect parameters from the command line and use them to create a report and CSV file
}
\examples{
# Prepare files for example
reference_set = system.file("extdata/ref_gapped.fasta", package = "ogrdbstats")
inferred_set = system.file("extdata/novel_gapped.fasta", package = "ogrdbstats")
repertoire = system.file("extdata/ogrdbstats_example_repertoire.tsv", package = "ogrdbstats")
file.copy(repertoire, tempdir())
repfile = file.path(tempdir(), 'repertoire.tsv')

genotype_statistics_cmd(c(
              reference_set,
              'Homosapiens',
              repfile,
              'IGHV',
              '--inf_file', inferred_set,
              '--format', 'none'))

# clean up
outfile = file.path(tempdir(), 'repertoire_ogrdb_report.csv')
plotdir = file.path(tempdir(), 'repertoire_ogrdb_plots')
file.remove(repfile)
file.remove(outfile)
unlink(plotdir, recursive=TRUE)
}
