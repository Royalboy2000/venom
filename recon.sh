#!/bin/bash

clear
figlet -f slant "Venom"

echo ""
echo "Made by samir :s.a.m.i.r_012 "
echo "Welcome to Venom, a tool selection script!"
echo "Please choose a tool to use:"

PS3="Enter your choice: "
options=("Nmap Option 1" "Nmap Option 2" "Nmap Option 3" "SQLMap Option 1" "SQLMap Option 2" "SQLMap Option 3" "SQLMap Option 4" "SQLMap Option 5" "Quit")
select opt in "${options[@]}"
do
  case $opt in
    "Nmap Option 1")
      echo "You chose Nmap Option 1"
      read -p "Enter target IP or hostname: " target
      echo "Running nmap -sS $target"
      nmap -sS $target
      ;;
    "Nmap Option 2")
      echo "You chose Nmap Option 2"
      read -p "Enter target IP or hostname: " target
      echo "Running nmap -O $target"
      nmap -O $target
      ;;
    "Nmap Option 3")
      echo "You chose Nmap Option 3"
      read -p "Enter target IP or hostname: " target
      echo "Running nmap -p $target"
      nmap -p $target
      ;;
    "SQLMap Option 1")
      echo "You chose SQLMap Option 1"
      read -p "Enter target URL: " target
      echo "Running sqlmap --dbs -u $target"
      sqlmap --dbs -u $target
      ;;
    "SQLMap Option 2")
      echo "You chose SQLMap Option 2"
      read -p "Enter target URL: " target
      echo "Running sqlmap --dump -u $target"
      sqlmap --dump -u $target
      ;;
    "SQLMap Option 3")
      echo "You chose SQLMap Option 3"
      read -p "Enter target URL: " target
      echo "Running sqlmap --os-shell -u $target"
      sqlmap --os-shell -u $target
      ;;
    "SQLMap Option 4")
      echo "You chose SQLMap Option 4"
      read -p "Enter target URL: " target
      echo "Running sqlmap --crawl -u $target"
      sqlmap --crawl -u $target
      ;;
    "SQLMap Option 5")
      echo "You chose SQLMap Option 5"
      read -p "Enter target URL: " target
      echo "Running sqlmap --batch -u $target"
      sqlmap --batch -u $target
      ;;
    "Quit")
      break
      ;;
    *)
      echo "Invalid option $REPLY"
      ;;
  esac

  echo ""
  echo "Please choose an option from the list above."
  echo "Press Enter to continue."
  read
  clear
  figlet -f slant "Venom"
  echo ""
  echo "Welcome to Venom, a tool selection script!"
  echo "Please choose a tool to use:"
done

