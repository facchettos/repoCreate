#!/bin/bash
mkdir $1
cd $1

printf "package main\n" > main.go
printf "import \"fmt\"\n" >> main.go
printf "func main(){\n\tfmt.Println(\"hello world\")\n}" >> main.go
git init 
git add .
git commit -m "initial commit"
git push --set-upstream https://gitlab.com/$gitlabnamespace/$1.git master

