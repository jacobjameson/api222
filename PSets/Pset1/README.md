# NICU Length of Stay Simulation Dataset

## Overview
This dataset is a simulated set of neonatal intensive care unit (NICU) patient records. It is designed for educational and simulation purposes to illustrate how certain neonatal factors might correlate with the length of stay in the NICU.

## Dataset Details

### Variables

1. **Bilirubin_direct (mg/dL)**
   - Type: Continuous
   - Description: Direct bilirubin levels in the blood.
   - Notes: Higher levels can indicate liver or blood disorders.

2. **Bilirubin_indirect (mg/dL)**
   - Type: Continuous
   - Description: Indirect bilirubin levels in the blood.
   - Notes: Elevated levels can be a sign of jaundice.

3. **Blood_pressure_diastolic (mmHg)**
   - Type: Continuous
   - Description: Diastolic blood pressure.

4. **Blood_pressure_systolic (mmHg)**
   - Type: Continuous
   - Description: Systolic blood pressure.

5. **Capillary_refill_rate**
   - Type: Categorical
   - Categories: "normal", "delayed"
   - Description: Rate at which blood refills capillaries.

6. **FiO2 (%)**
   - Type: Continuous
   - Description: Fraction of inspired oxygen.
   - Notes: Higher values indicate more severe respiratory issues.

7. **Gestational_age (weeks)**
   - Type: Continuous
   - Description: Age of the infant at birth in terms of gestational weeks.
   - Notes: Lower gestational age can be associated with longer NICU stays.

8. **Heart_rate (bpm)**
   - Type: Continuous
   - Description: Heart rate in beats per minute.

9. **Height (cm)**
   - Type: Continuous
   - Description: Height of the infant.

10. **Oxygen_saturation (%)**
    - Type: Continuous
    - Description: Percentage of oxygen saturation in the blood.

11. **pH**
    - Type: Continuous
    - Description: Acidity or alkalinity of blood.

12. **Respiratory_rate (breaths/min)**
    - Type: Continuous
    - Description: Number of breaths per minute.

13. **Temperature (°C)**
    - Type: Continuous
    - Description: Body temperature.

14. **Weight (grams)**
    - Type: Continuous
    - Description: Weight of the infant.

15. **NICU_length_of_stay (days)**
    - Type: Continuous
    - Description: The length of stay in the NICU.
    - Notes: This is the outcome variable that the other features may help predict.

### Additional Information

- **Missing Values:** The dataset contains 100 randomly assigned missing values across various variables to mimic real-world data scenarios.
- **Simulated Data:** Please note that this dataset is entirely simulated and should not be used for clinical decision-making.

## Usage

This dataset is intended for educational purposes, particularly for those studying healthcare analytics, neonatal care, or predictive modeling in medicine.
