library(mcbette)

if (can_run_mcbette()) {

  testit::assert(beastier::is_beast2_installed())
  testit::assert(mauricer::is_beast2_ns_pkg_installed())

  fasta_filename <- "my_alignment.fas"

  # mcbette will check if FASTA file exists
  df <- mcbette::est_marg_liks(fasta_filename)

  # Show all models
  message(" ")
  message("**********************************")
  message("* All models (ordered by index)  *")
  message("**********************************")
  message(" ")
  knitr::kable(df)

  ################################################################################
  # Create an ordered data frame
  ################################################################################
  # Keep rows without an NA
  df_ordered <- stats::na.omit(df)

  # Order from high to low
  df_ordered <- df_ordered[ order(-df_ordered$weight), ]

  # Show most convincing first
  message(" ")
  message("**********************************")
  message("* All models (ordered by weight) *")
  message("**********************************")
  message(" ")
  knitr::kable(df_ordered)

  # Show weights
  message(" ")
  txtplot::txtplot(x = seq(1, length(df_ordered$weight)), y = df_ordered$weight)

  ################################################################################
  # Create a best model data frame
  ################################################################################
  # Show the best model
  best_row_index <- which(df_ordered$marg_log_lik == max(df_ordered$marg_log_lik))
  df_best <- df_ordered[best_row_index, ]
  message(" ")
  message("**********************************")
  message("* Best model:                    *")
  message("**********************************")
  message(" ")
  knitr::kable(df_best, row.names = FALSE)

}
