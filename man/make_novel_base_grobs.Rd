% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{make_novel_base_grobs}
\alias{make_novel_base_grobs}
\title{Create plots showing base usage at selected locations in sequences based on novel alleles}
\usage{
make_novel_base_grobs(inferred_seqs, input_sequences, segment, all_inferred)
}
\arguments{
\item{inferred_seqs}{named list of novel gene sequences}

\item{input_sequences}{the input_sequences data frame}

\item{segment}{one of V, D, J}

\item{all_inferred}{true if user has requested all alleles in reference set plotted - will suppress some warnings}
}
\value{
named list containing the following elements:
\tabular{ll}{
    cdr3_dist \tab cdr3 length distribution plots \cr
    whole \tab     whole-length usage plots \cr
    end  \tab     3' end usage plots \cr
    conc \tab   3' end consensus composition plots \cr
    triplet \tab   3' end triplet usage plots \cr
}
}
\description{
Create plots showing base usage at selected locations in sequences based on novel alleles
}
\examples{
base_grobs = make_novel_base_grobs(
                 example_rep$inferred_seqs,
                 example_rep$input_sequences,
                 'V',
                 FALSE
             )
}
