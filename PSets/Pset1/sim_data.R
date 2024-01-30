# Load necessary libraries
library(dplyr)

# Set seed for reproducibility
set.seed(222)

# Number of observations
n <- 10000

# Generate the dataset
data <- data.frame(
  Bilirubin_direct = runif(n, 0.1, 5.0),  # in mg/dL
  Bilirubin_indirect = runif(n, 0.5, 15.0),  # in mg/dL
  Blood_pressure_diastolic = runif(n, 20, 80),  # in mmHg
  Blood_pressure_systolic = runif(n, 40, 100),  # in mmHg
  Capillary_refill_rate = sample(c("normal", "delayed"), n, replace = TRUE),
  FiO2 = runif(n, 21, 100),  # in %
  Gestational_age = runif(n, 24, 42),  # in weeks
  Heart_rate = runif(n, 70, 190),  # in bpm
  Height = runif(n, 30, 60),  # in cm
  Oxygen_saturation = runif(n, 70, 100),  # in %
  pH = runif(n, 7.1, 7.6),
  Respiratory_rate = runif(n, 30, 60),  # in breaths/min
  Temperature = runif(n, 36, 38),  # in degrees Celsius
  Weight = runif(n, 500, 5000)  # in grams
)

# Add NICU length of stay
data$NICU_length_of_stay <- ifelse(
  data$Gestational_age < 30, 
  sample(30:100, n, replace = TRUE),
  ifelse(
    data$Bilirubin_direct > 2 | data$Bilirubin_indirect > 10, 
    sample(15:60, n, replace = TRUE),
    ifelse(
      data$Capillary_refill_rate == 'delayed', 
      sample(10:30, n, replace = TRUE),
      ifelse(
        data$FiO2 > 50, 
        sample(20:50, n, replace = TRUE),
        sample(5:20, n, replace = TRUE)
      )
    )
  )
)

# Number of values to set as missing
num_missing_values <- 100

# Randomly select observations and variables to set as missing
for (i in 1:num_missing_values) {
  random_row <- sample(nrow(data), 1)
  random_col <- sample(ncol(data), 1)
  data[random_row, random_col] <- NA
}

# Save the dataset to a CSV file
write.csv(data, "PSets/Pset1/NICU_LOS_sim.csv", row.names = FALSE)
