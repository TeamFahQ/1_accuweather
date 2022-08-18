#!/bin/bash
# -----------------------------------------------------------------------
# Export path statements for use in *conky* config file
# if you move this file else where then give the full path for WX_DIR variable
# -----------------------------------------------------------------------
# WX_DIR="/usr/share/conkywx"; export WX_DIR

# -----------------------------------------------------------------------
# stop existing conky processes
# -----------------------------------------------------------------------
#if [[ "$(pidof conky)" ]] ; then killall conky; fi

# -----------------------------------------------------------------------
# Export path statements for use in *conky* config file
# -----------------------------------------------------------------------
bpath1="$( dirname "$0" )"
#WX_DIR="."; export WX_DIR

#
WX_DIR="$HOME/Accuweather_conky_script"; export WX_DIR
# echo $WX_DIR
# echo $bpath1
# -----------------------------------------------------------------------
# run conky instances
# -----------------------------------------------------------------------
conky_version=($( conky -v ))
conky_version="${conky_version[1]//[^0-9.]/}"
conky_version="${conky_version%.*}"

case "$conky_version" in
1.9)
#
ans=$(zenity
 --title="Accuweather  Conky v1.9"\
 --list  --width=400 --height=700\
 --text "Select task from the list below."\
 --checklist\
 --column "Run"\
 --column "Task"\
 FALSE ".conkyrc_acc_hourly_2015"\
 FALSE ".conkyrc_acc_hourly_2016"\
 FALSE ".conkyrc_acc_hourly_weatherfont"\
 FALSE ".conkyrc_acc_images_2015"\
 FALSE ".conkyrc_acc_images_2016"\
 FALSE ".conkyrc_acc_images_wind_2015"\
 FALSE ".conkyrc_acc_images_wind_2016"\
 FALSE ".conkyrc_acc_weatherfont"\
 FALSE ".conkyrc_acc_weatherfont_simple"\
 FALSE ".conkyrc_acc_weatherfont_simpler"\
 FALSE ".conkyrc_acc_weatherfont_wind"\
 FALSE ".conkyrc_acc_images"\
 FALSE ".conkyrc_acc_font"\
 FALSE "*******************************"\
 FALSE "conkyllia-run-wx5_sh"\
 FALSE "Conky-NoobsLab"\
 FALSE "Conkylla1"\
 FALSE "Conkylla2"\
 FALSE "Conkylla"\
 --separator=":")

arr=$(echo $ans | tr "\:" "\n")
clear
for x in $arr
do



if [ $x = ".conkyrc_acc_hourly_2015" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_hourly_2015 sh"

#		gedit $WX_DIR/.conkyrc_acc_hourly_2015_sh &
		conky -c "$WX_DIR/.conkyrc_acc_hourly_2015_sh" &

	fi

 if [ $x = ".conkyrc_acc_hourly_2016" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_hourly_2016 sh"

#		gedit $WX_DIR/.conkyrc_acc_hourly_2016_sh &
		conky -c "$WX_DIR/.conkyrc_acc_hourly_2016_sh" &

	fi

 if [ $x = ".conkyrc_acc_hourly_weatherfont" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_hourly_weatherfont sh"

#		gedit $WX_DIR/.conkyrc_acc_hourly_weatherfont_sh &
		conky -c "$WX_DIR/.conkyrc_acc_hourly_weatherfont_sh" &

	fi


if [ $x = ".conkyrc_acc_images_2015" ]
	then
		
		
		/usr/bin/notify-send "Starting .conkyrc_acc_images_2015 sh"

#		gedit $WX_DIR/.conkyrc_acc_images_2015_sh &
		conky -c "$WX_DIR/.conkyrc_acc_images_2015_sh" &

	fi


if [ $x = ".conkyrc_acc_images_2016" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_images_2016 sh"

#		gedit $WX_DIR/.conkyrc_acc_images_2016_sh &
		conky -c "$WX_DIR/.conkyrc_acc_images_2016_sh" &

	fi


if [ $x = ".conkyrc_acc_images_wind_2015" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_images_wind_2015 sh"		

#		gedit $WX_DIR/.conkyrc_acc_images_wind_2015_sh &
		conky -c "$WX_DIR/.conkyrc_acc_images_wind_2015_sh" &

	fi


if [ $x = ".conkyrc_acc_images_wind_2016" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_images_wind_2016 sh"

#		gedit $WX_DIR/.conkyrc_acc_images_wind_2016_sh &
		conky -c "$WX_DIR/.conkyrc_acc_images_wind_2016_sh" &

	fi

if [ $x = ".conkyrc_acc_weatherfont" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_weatherfont sh"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont_sh &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_sh" &

	fi


if [ $x = ".conkyrc_acc_weatherfont_simple" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_weatherfont_simple sh"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont_simple_sh &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_simple_sh" &

	fi


if [ $x = ".conkyrc_acc_weatherfont_simpler" ]
	then
		/usr/bin/notify-send ".conkyrc_acc_weatherfont_simpler sh"
  
#		gedit $WX_DIR/.conkyrc_acc_weatherfont_simpler_sh &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_simpler_sh" &

	fi


 if [ $x = ".conkyrc_acc_weatherfont_wind" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_weatherfont_wind sh"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont_wind_sh &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_wind_sh" &

	fi


if [ $x = ".conkyrc_acc_images" ]
	then
		/usr/bin/notify-send "Starting conky_acc_images_sh"

#		gedit $WX_DIR/.conkyrc_acc_images_wind_2015_sh &
		conky -c "$WX_DIR/.conkyrc_acc_images_wind_2015_sh" &
	fi


if [ $x = ".conkyrc_acc_font" ]
	then
		/usr/bin/notify-send "Starting conky_acc_font_sh"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont_wind_sh &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_wind_sh" &
	fi


if [ $x = "*******************************" ]
	then
		sleep 2
#

	fi




if [ $x = "conkyllia-run-wx5_sh" ]
	then
		/usr/bin/notify-send "Starting conkyllia-run-wx5.sh"
#		~/conkywx_5.0.0_sa/conkyllia-run-wx5.sh &
#
		cd $HOME/conkywx_5.0.0_sa && $HOME/conkywx_5.0.0_sa/conkyllia-run-wx5.sh &
#
#		$HOME/conkywx_5.0.0_sa/conkyllia-run-wx5.sh &
sleep 2
	killall StartConky_Acuw.sh
	fi


if [ $x = "Conky-NoobsLab" ]
	then
		/usr/bin/notify-send "Starting Conky-NoobsLab"
#
		~/.conky_noobslab/conkyllia_noobslab.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi

if [ $x = "Conkylla1" ]
	then
		/usr/bin/notify-send "Starting Conkylla1"
#
		$HOME/.conkylla1/conkyllia1.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi

if [ $x = "Conkylla2" ]
	then
		/usr/bin/notify-send "Starting Conkylla2"
#
		$HOME/.conkylla2/conkyllia2.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi

if [ $x = "Conkylla" ]
	then
		/usr/bin/notify-send "Starting Conkylla"
#
		~/.conkylla/conkyllia.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi


 

done
#
sleep 2
killall StartConky_Acuw.sh
#

	;;
1.10)
#
#
ans=$(zenity\
 --title="Accuweather  Conky v1.10"\
 --list  --width=400 --height=700\
 --text "Select task from the list below."\
 --checklist\
 --column "Run"\
 --column "Task"\
 FALSE ".conkyrc_acc_hourly_2015"\
 FALSE ".conkyrc_acc_hourly_2016"\
 FALSE ".conkyrc_acc_hourly_weatherfont"\
 FALSE ".conkyrc_acc_images_2015"\
 FALSE ".conkyrc_acc_images_2016"\
 FALSE ".conkyrc_acc_images_wind_2015"\
 FALSE ".conkyrc_acc_images_wind_2016"\
 FALSE ".conkyrc_acc_weatherfont"\
 FALSE ".conkyrc_acc_weatherfont_simple"\
 FALSE ".conkyrc_acc_weatherfont_simpler"\
 FALSE ".conkyrc_acc_weatherfont_wind"\
 FALSE ".conkyrc_acc_images"\
 FALSE ".conkyrc_acc_font"\
 FALSE "*******************************"\
 FALSE "conkyllia-run-wx5_sh"\
 FALSE "Conky-NoobsLab"\
 FALSE "Conkylla1"\
 FALSE "Conkylla2"\
 FALSE "Conkylla"\
 --separator=":")

arr=$(echo $ans | tr "\:" "\n")
clear
for x in $arr
do



if [ $x = ".conkyrc_acc_hourly_2015" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_hourly_2015.lua"

#		gedit $WX_DIR/.conkyrc_acc_hourly_2015 &
		conky -c "$WX_DIR/.conkyrc_acc_hourly_2015" &

	fi

 if [ $x = ".conkyrc_acc_hourly_2016" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_hourly_2016.lua"

#		gedit $WX_DIR/.conkyrc_acc_hourly_2016 &
		conky -c "$WX_DIR/.conkyrc_acc_hourly_2016" &

	fi

 if [ $x = ".conkyrc_acc_hourly_weatherfont" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_hourly_weatherfont.lua"

#		gedit $WX_DIR/.conkyrc_acc_hourly_weatherfont &
		conky -c "$WX_DIR/.conkyrc_acc_hourly_weatherfont" &

	fi


if [ $x = ".conkyrc_acc_images_2015" ]
	then
		
		
		/usr/bin/notify-send "Starting .conkyrc_acc_images_2015.lua"

#		gedit $WX_DIR/.conkyrc_acc_images_2015 &
		conky -c "$WX_DIR/.conkyrc_acc_images_2015" &
               
	fi


if [ $x = ".conkyrc_acc_images_2016" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_images_2016.lua"

#		gedit $WX_DIR/.conkyrc_acc_images_2016 &
		conky -c "$WX_DIR/.conkyrc_acc_images_2016" &

	fi


if [ $x = ".conkyrc_acc_images_wind_2015" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_images_wind_2015.lua"		

#		gedit $WX_DIR/.conkyrc_acc_images_wind_2015 &
		conky -c "$WX_DIR/.conkyrc_acc_images_wind_2015" &

	fi


if [ $x = ".conkyrc_acc_images_wind_2016" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_images_wind_2016.lua"

#		gedit $WX_DIR/.conkyrc_acc_images_wind_2016 &
		conky -c "$WX_DIR/.conkyrc_acc_images_wind_2016" &

	fi

if [ $x = ".conkyrc_acc_weatherfont" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_weatherfont.lua"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont" &

	fi


if [ $x = ".conkyrc_acc_weatherfont_simple" ]
	then
		/usr/bin/notify-send "Starting .conkyrc_acc_weatherfont_simple.lua"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont_simple &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_simple" &

	fi


if [ $x = ".conkyrc_acc_weatherfont_simpler" ]
	then
		/usr/bin/notify-send ".conkyrc_acc_weatherfont_simpler.lua"
  
#		gedit $WX_DIR/.conkyrc_acc_weatherfont_simpler &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_simpler" &

	fi


 if [ $x = ".conkyrc_acc_weatherfont_wind" ]
	then
		
		/usr/bin/notify-send "Starting .conkyrc_acc_weatherfont_wind.lua"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont_wind &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_wind" &

	fi


if [ $x = ".conkyrc_acc_images" ]
	then
		/usr/bin/notify-send "Starting conky_acc_images.lua"

#		gedit $WX_DIR/.conkyrc_acc_images_wind_2015 &
		conky -c "$WX_DIR/.conkyrc_acc_images_wind_2015" &
	fi


if [ $x = ".conkyrc_acc_font" ]
	then
		/usr/bin/notify-send "Starting conky_acc_font.lua"

#		gedit $WX_DIR/.conkyrc_acc_weatherfont_wind &
		conky -c "$WX_DIR/.conkyrc_acc_weatherfont_wind" &
	fi




if [ $x = "*******************************" ]
	then
		sleep 2
#

	fi



if [ $x = "conkyllia-run-wx5_sh" ]
	then
		/usr/bin/notify-send "Starting conkyllia-run-wx5.sh"
#		~/conkywx_5.0.0_sa/conkyllia-run-wx5.sh &
#
		cd $HOME/conkywx_5.0.0_sa && $HOME/conkywx_5.0.0_sa/conkyllia-run-wx5.sh &
#		$HOME/conkywx_5.0.0_sa/conkyllia-run-wx5.sh &
sleep 2
	killall StartConky_Acuw.sh
	fi


if [ $x = "Conky-NoobsLab" ]
	then
		/usr/bin/notify-send "Starting Conky-NoobsLab"
#
		~/.conky_noobslab/conkyllia_noobslab.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi

if [ $x = "Conkylla1" ]
	then
		/usr/bin/notify-send "Starting Conkylla1"
#
		$HOME/.conkylla1/conkyllia1.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi

if [ $x = "Conkylla2" ]
	then
		/usr/bin/notify-send "Starting Conkylla2"
#
		$HOME/.conkylla2/conkyllia2.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi

if [ $x = "Conkylla" ]
	then
		/usr/bin/notify-send "Starting Conkylla"
#		~/.conkylla/conkyllia.sh &
#
		$HOME/.conkylla/conkyllia.sh &
#
sleep 2
	killall StartConky_Acuw.sh
	fi

done
#
sleep 2
killall StartConky_Acuw.sh

	;;
*)
	printf "%b" "\n\nError :( - What version of conky are you running??\nIf your version has worked before then edit this file:\n\t$0 \n\n"

esac


exit 0
