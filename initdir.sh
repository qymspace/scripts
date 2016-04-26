#!/bin/bash
#initialize the following directories and set variables to access them. 
#if directories exist set variables for easy access


#usage
	#initdir OPTIONS [DIRECTORIES TO INITIALIZE] 
	#
	#OPTIONS
		#--context, -c global ==> variables refer to the the main folders
		#			   local ==> varibles refer to directories in this folder. 
		#			 this is the default value
		#--clean, -l  ==> delete that are empty in current directory.
		#
		#--update, -u ==> rerrangle directory structure without loosing data.
		#--optimize=DIRECTORY ==> apply updates and optimization
		#						  specific to DIRECTORY
		#
#
#
#
#
#
#directory structure to be expected after init
	#programming
		#android
		#linux
			#system
			#shell
			#vim
		#git
		#html
		#css
		#java
		#regexp
		#puppet
		#docker
		#vagrant
		#mysql
		#firebase
		#sublime_text
		#conf
			#googleIO
			#docker-con
			#ubiquity_summit
		#puppet
		#IoT
		#gmaps
		#cordova
		#nginx
		#principles


			#core
				#videos
				#documents
			#extra
				#videos
				#documents




	#medicine
		#pathology
			#books
			#core
				#public
				#personal
			#extra
				#public
				#personal

		#internal_medicine
			#books
			#core
				#public
				#personal
			#extra
				#public
				#personal
		#clinical_methods
			#books
			#core
				#public
				#personal
			#extra
				#public
				#personal
		#pharmacology
			#books
			#core
				#public
				#personal
			#extra
				#public
				#personal
		#Psychiatry
			#books
			#core
				#public
				#personal
			#extra
				#public
				#personal
		#results
		#surgery
			#books
			#core
				#public
				#personal
			#extra
				#public
				#personal


	#software
	#entertainment
		#movies
		#series
		#documentary
		#music
#
#
#
#
#
#
#
#
#
#initialize all arguments
export ARG1=$1;
ARG2=$2;
ARG3=$3;
ARG4=$4;
ARG5=$5;
ARG6=$6;
ARG7=$7;
ARG8=$8;
ARG9=$9;


function initdir() {
if [ -n $ARG1 ]
	then
	$ARG1;
else
	echo "ARG1 not present";
fi

if [ -n $ARG2 ]
	then
	$ARG2;
else
	echo "ARG2 not present";
fi

if [ -n $ARG3 ]
	then
	$ARG3;
else
	echo "ARG3 not present";
fi

if [ -n $ARG4 ]
	then
	$ARG4;
else
	echo "ARG4 not present";
fi

if [ -n $ARG5 ]
	then
	$ARG5;
else
	echo "ARG5 not present";
fi

if [ -n $ARG16]
	then
	$ARG6;
else
	echo "ARG6 not present";
fi

if [ -n $ARG7 ]
	then
	$ARG7;
else
	echo "ARG7 not present";
fi


if [ -n $ARG8 ]
	then
	$ARG8;
else
	echo "ARG8 not present";
fi


if [ -n $ARG9 ]
	then
	$ARG9;
else
	echo "ARG9 not present";
fi
return 0;
}

function medicine(){
	MEDICINE_HOME=$(pwd)/medicine;
	mkdir medicine;
	cd medicine;
	mkdir pathology
	cd pathology 
		mkdir books core extra
			cd core
				mkdir public personal
					mkdir public/histopathology public/haematology/\
							public/renal public/pulmonary/ public/cardiac
			cd ../extra
				mkdir public personal
	cd $MEDICINE_HOME;

	mkdir internal_medicine
	cd internal_medicine
		mkdir books core extra
		cd core
				mkdir public personal
			cd ../extra
				mkdir public personal
	cd $MEDICINE_HOME


	mkdir clinical_methods
	cd clinical_methods
		mkdir books core extra
		cd core
				mkdir public personal
			cd ../extra
				mkdir public personal
	cd $MEDICINE_HOME


	mkdir pharmacology
	cd pharmacology
		mkdir books core extra
		cd core
				mkdir public personal
					mkdir public/introduction public/antibiotics public/anaesthetics/\
							public/git public/antiviral public/antifungal public/antiparasitic\
							public/haemtological public/anticancer
			cd ../extra
				mkdir public personal
	cd $MEDICINE_HOME;

	mkdir psychiatry
	cd psychiatry
		mkdir books core extra
		cd core
				mkdir public personal
			cd ../extra
				mkdir public personal
	cd $MEDICINE_HOME;


	mkdir results
	cd $MEDICINE_HOME

	mkdir surgery
	cd surgery
		mkdir books core extra
		cd core
				mkdir public personal
			cd ../extra
				mkdir public personal
	cd $MEDICINE_HOME/../;
}


function programming() {
	mkdir programming;
	cd programming;  
	PROGRAMMING_HOME=$(pwd)
	mkdir android linux git html css java regexp puppet docker\
			vagrant mysql firebase sublime_text conf IoT gmaps\
			cordova nginx principles
	for dir in ./* 
	do
		cd $dir
		mkdir -p core/videos core/documents extra/videos extra/documents;
		cd ..
	done

	#create specific directories
	cd $PROGRAMMING_HOME
	mkdir android/material_design -p

	cd $PROGRAMMING_HOME/../
}

function entertainment() {
	mkdir entertainment entertainment/music entertainment/movies\
			entertainment/series

}
initdir;


#set variables to access folders
export 
