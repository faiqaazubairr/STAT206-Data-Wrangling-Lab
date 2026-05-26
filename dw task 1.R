# ============================================================
# Data Wrangling Lab 1 — Task 1
# Vectors: creation, logical expressions, and inspection
# ============================================================

# ── 1a: Numeric vector ───────────────────────────────────────
temperatures <- c(72, 68, 75, 80, 74, 78, 71)

# ── 1b: Character vector ─────────────────────────────────────
cities <- c("New York", "Los Angeles", "Chicago", "Houston",
            "Phoenix", "Philadelphia", "San Antonio")

# ── 1c: Logical vector using a logical expression ────────────
is_warm <- temperatures > 73    # TRUE where temp > 73, FALSE otherwise

# Print all three vectors
print(temperatures)
print(cities)
print(is_warm)

# ── 2: Inspect the temperatures vector ───────────────────────
class(temperatures)
# class() tells you the DATA TYPE of the object.
# For temperatures, it returns "numeric" — meaning it stores numbers.

length(temperatures)
# length() tells you HOW MANY ELEMENTS are in the vector.
# For temperatures, it returns 7 — there are 7 values.

str(temperatures)
# str() gives a COMPACT STRUCTURAL OVERVIEW of the object.
# It shows the type (num), length [1:7], and a preview of the values.