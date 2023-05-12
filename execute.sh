#!/bin/bash

# Save the current working directory
current_dir=$(pwd)

# Define the list of directories to process
directories=(
    /root/RoboShop-Micro-Services-Project-/cart
    /root/RoboShop-Micro-Services-Project-/catalogue
    /root/RoboShop-Micro-Services-Project-/mongodb
    /root/RoboShop-Micro-Services-Project-/mysql
    /root/RoboShop-Micro-Services-Project-/payment
    /root/RoboShop-Micro-Services-Project-/rabbitmq
    /root/RoboShop-Micro-Services-Project-/redis
    /root/RoboShop-Micro-Services-Project-/shipping
    /root/RoboShop-Micro-Services-Project-/user
    /RoboShop-Micro-Services-Project-/web
)

# Loop through each directory and execute the kubectl apply commands
for dir in "${directories[@]}"
do
  echo "Processing directory: $dir"
  cd "$dir"
  kubectl apply -f manifest.yml
done

# Return to the original directory
cd "$current_dir"