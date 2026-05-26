# ============================================================
# Data Wrangling Lab 1 — Task 3
# Data Frame: creation, indexing, adding columns
# ============================================================

# ── 5: Create the employees data frame ──────────────────────
employees <- data.frame(
  Name          = c("John", "Sarah", "Mike", "Lisa", "Tom", "Anna"),
  Department    = c("Sales", "Marketing", "IT", "Sales", "IT", "Marketing"),
  Years_Service = c(3, 5, 2, 8, 4, 1),
  Salary        = c(48000, 62000, 55000, 71000, 59000, 45000),
  stringsAsFactors = FALSE
)

print(employees)

# ── 6a: Entire row for Lisa ──────────────────────────────────
cat("\n--- Row for Lisa ---\n")

# Method 1: logical condition on Name column
employees[employees$Name == "Lisa", ]

# Method 2: which() to find the row index
employees[which(employees$Name == "Lisa"), ]

# ── 6b: Salary column as a vector ───────────────────────────
cat("\n--- Salary column ---\n")

# Method 1: $ operator
employees$Salary

# Method 2: double bracket with column name
employees[["Salary"]]

# ── 6c: All employees in the Sales department ───────────────
cat("\n--- Sales Department ---\n")

# Method 1: logical condition
employees[employees$Department == "Sales", ]

# Method 2: subset() function
subset(employees, Department == "Sales")

# ── 6d: Employees with Years_Service > 3 ────────────────────
cat("\n--- Years of Service > 3 ---\n")

# Method 1: logical condition
employees[employees$Years_Service > 3, ]

# Method 2: subset() function
subset(employees, Years_Service > 3)

# ── 7: Add Bonus column (5% of Salary) ──────────────────────
employees$Bonus <- employees$Salary * 0.05

cat("\n--- Employees with Bonus column ---\n")
print(employees)