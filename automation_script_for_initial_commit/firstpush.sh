#!/bin/bash


read -p "Enter the name of the directory: " dir_name
read -p "Enter the remote Git repository URL: " repo_name

echo "Directory name: $dir_name"
echo "Git repository URL: $repo_name"

mkdir "$dir_name" && cd "$dir_name"


echo "### Project Description" >> README.md
echo "This is the project description" >> README.md

git init
git add .
git commit -m "Initial Commit"
git branch -M main
git remote add origin "$repo_name"
git push -u origin main

ls

