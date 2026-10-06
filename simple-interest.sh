
#!/bin/bash

# Simple Interest Calculator Script
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "-----------------------------------"
echo "    Simple Interest Calculator     "
echo "-----------------------------------"

# Prompt user for inputs
read -p "Enter Principal Amount: " principal
read -p "Enter Annual Rate of Interest (%): " rate
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest using bc (basic calculator) for floating point support
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "-----------------------------------"
echo "Simple Interest: $interest"
echo "Total Amount Payable: $total"
echo "-----------------------------------"
