#!/bin/bash

function first() {
     sudo useradd tim
      sudo useradd	brad
      sudo useradd  ann
      mkdir Alona
	touch hello
       touch	world
}

function second(){
	sudo yum install wget httpd tree git -y
}

read -p "Please select a function " choice

if [ "$choice" == "first" ]
then
	first
elif [ "$choice" ==  "second" ]
then
second
fi
