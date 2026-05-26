# ============================================================
# Data Wrangling Lab 1 — Task 4
# Summary statistics and custom stats_summary function
# ============================================================

# Recreate employees data frame (needed since each script is standalone)
employees <- data.frame(
  Name          = c("John", "Sarah", "Mike", "Lisa", "Tom", "Anna"),
  Department    = c("Sales", "Marketing", "IT", "Sales", "IT", "Marketing"),
  Years_Service = c(3, 5, 2, 8, 4, 1),
  Salary        = c(48000, 62000, 55000, 71000, 59000, 45000),
  stringsAsFactors = FALSE
)

# ── 8: Compute and print summary statistics ──────────────────

# 8a: Mean salary
cat("Mean Salary:              $", mean(employees$Salary), "\n")

# 8b: Median years of service
cat("Median Years of Service:  ", median(employees$Years_Service), "years\n")

# 8c: Standard deviation of salary
cat("SD of Salary:             $", round(sd(employees$Salary), 2), "\n")

# 8d: Minimum and maximum salary
cat("Minimum Salary:           $", min(employees$Salary), "\n")
cat("Maximum Salary:           $", max(employees$Salary), "\n")

# ── 9: Custom stats_summary function ─────────────────────────
stats_summary <- function(vec) {
  result <- c(
    Min    = min(vec,    na.rm = TRUE),
    Max    = max(vec,    na.rm = TRUE),
    Mean   = mean(vec,   na.rm = TRUE),
    Median = median(vec, na.rm = TRUE),
    Length = length(vec)
  )
  return(result)
}

# Test on the Salary column
cat("\n--- stats_summary on Salary column ---\n")
print(stats_summary(employees$Salary))