# ============================================================
# Data Wrangling Lab 1 — Task 2
# Matrix: creation, naming, row/column summaries
# ============================================================

# ── 3: Create a 3x4 matrix (filled by row) ──────────────────
sales_matrix <- matrix(
  c(120, 135, 140, 150,
    110, 125, 130, 145,
    115, 130, 135, 155),
  nrow = 3, ncol = 4,
  byrow = TRUE
)

# Assign row and column names
rownames(sales_matrix) <- c("Store_A", "Store_B", "Store_C")
colnames(sales_matrix) <- c("Q1", "Q2", "Q3", "Q4")

print(sales_matrix)

# ── 4a: Total sales for each store (row sums) ────────────────
store_totals <- rowSums(sales_matrix)
cat("\nTotal sales per store:\n")
print(store_totals)

# ── 4b: Total sales for each quarter (column sums) ───────────
quarter_totals <- colSums(sales_matrix)
cat("\nTotal sales per quarter:\n")
print(quarter_totals)

# ── 4c: Overall average of all sales ─────────────────────────
overall_avg <- mean(sales_matrix)
cat("\nOverall average sales:", overall_avg, "\n")