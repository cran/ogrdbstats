#' Example repertoire data
#'
#' A small example of the analytical datasets created by ogrdbstats from
#' repertoires and reference sets.
#' The dataset can be created by running the example shown for the function
#' read_input_data().
#' The dataset is created from example files provided with the package.
#' The repertoire data is taken from Rubelt et al. 2016,
#' <doi: 10.1038/ncomms11112>
#'
#' @format ## `example_rep` - a named list containing the following elements:
#' \tabular{ll}{
#' ref_genes  \tab named list of IMGT-gapped reference genes \cr
#' inferred_seqs \tab named list of IMGT-gapped inferred (novel) sequences. \cr
#' input_sequences \tab data frame with one row per annotated read, with
#'       CHANGEO-style column names. The column SEG_CALL is the gene call
#'      for the segment under analysis. Hence if segment is 'V', 'V_CALL' will
#'      be renamed 'SEG_CALL' whereas is segment is 'J', 'J_CALL' is renamed
#'      'SEG_CALL'. This simplifies downstream processing. Rows in the input
#'      file with ambiguous SEG_CALLs, or no call, are removed. \cr
#' genotype_db \tab named list of gene sequences referenced in the annotated
#'      reads (both reference and novel sequences) \cr
#' haplo_details \tab data used for haplotype analysis, showing allelic ratios
#'      calculated with various potential haplotyping genes \cr
#' genotype \tab data frame containing information provided in the OGRDB
#'      genotype csv file \cr
#' calculated_NC \tab a boolean that is TRUE if mutation counts were calculated
#'      by this library, FALSE if they were read from the annotated read file \cr
#' }
#' @source <doi: 10.1038/ncomms11112>
"example_rep"
