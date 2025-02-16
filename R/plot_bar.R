#' Plot a Bar Chart
#' This function creates a bar plot with specified title and font sizes.
#' @param df A data frame or vector for plotting
#' @param title A string for the plot title
#' @return A bar plot
#' @export
plot_bar <- function(df, title) {
  barplot(df, showCategory = 20, title = title) +
    theme(
      axis.text.x = element_text(size = 6),
      axis.text.y = element_text(size = 6),
      axis.title.x = element_text(size = 10),
      axis.title.y = element_text(size = 10)
    )
}
