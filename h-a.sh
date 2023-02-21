#!/bin/bash

function display1 {
echo "
===============================================================================
=  _     _                 _                                                  =
= | |   | |           _   (_)                        /\                       =
= | |__ | | ___   ___| |_  _ ____   ____    ___     /  \   ____ ____ ____     =
= |  __)| |/ _ \ /___)  _)| |  _ \ / _  |  (___)   / /\ \ / ___) _  ) _  |    =
= | |   | | |_| |___ | |__| | | | ( ( | |         | |__| | |  ( (/ ( ( | |    =
= |_|   |_|\___/(___/ \___)_|_| |_|\_|| |         |______|_|   \____)_||_|    =
=                                (_____|                                      =
=                                                                             =
===============================================================================
"
sleep 2
clear
sleep 1
echo "Minecraft server detected, starting it up..."
sleep 1
}
function selection {
case $n in
 1)
   sleep 1
   clear
   sleep 1
   echo "Minecraft Selected, Proceeding.."
   sleep 2
   display1
   sleep 2
   echo "Select Software:
   [1] Vanilla         [4] Velocity
   [2] Paper           [5] BungeeCord
   [3] Forge           [6] Purpur"
   read -p "Software: " put
   case $put in
   1)
     echo "Vanilla selected, proceeding..."
     sleep 2
     echo "Select version:
     [1] 1.8.8   [4] 1.18.2
     [2] 1.12.2  [5] 1.19.3
     [3] 1.14.2  [6] 1.15.2"
     read -p "Version: " n
     case $n in
     1)
       echo "Downloading 1.8.8..."
       sleep 2
       exit
       ;;
     2)
       echo "Downloading 1.12.2..."
       sleep 2
       exit
       ;;
     3)
       echo "Downloading 1.14.2..."
       sleep 2
       exit
       ;;
     4)
       echo "Downloading 1.18.2..."
       sleep 2
       exit
       ;;
     5)
       echo "Downloading 1.19.3..."
       sleep 2
       exit
       ;;
     6)
       echo "Downloading 1.15.2..."
       sleep 2
       exit
       ;;
     esac
     ;;
   2)
     sleep 2
     clear
     sleep 1
     echo "Paper selected, proceeding..."
     sleep 2
     
     ;;
   3)
     echo "Forge selected, proceeding..."
     sleep 2
     exit
     ;;
   4)
     echo "Velocity selected, proceeding..."
     sleep 2
     exit
     ;;
   5) 
     echo "BungeeCord selected, proceeding..."
     sleep 2
     exit
     ;;
   6)
     echo "Purpur selected, proceeding..."
     sleep 2
     exit
     ;;
   *) 
     echo "Invalid option, restarting..."
     sleep 2
     bash h-a.sh 
     ;;
  esac
   ;;
 2)
   echo "Not Available Yet. Restarting..."
   sleep 2
   bash h-a.sh
   ;;
esac
}
function bootJavaServer {
 java -Xms1024M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar paper-server.jar nogui
}

function maindisplay {
echo "
===============================================================================
=  _     _                 _                                                  =
= | |   | |           _   (_)                        /\                       =
= | |__ | | ___   ___| |_  _ ____   ____    ___     /  \   ____ ____ ____     =
= |  __)| |/ _ \ /___)  _)| |  _ \ / _  |  (___)   / /\ \ / ___) _  ) _  |    =
= | |   | | |_| |___ | |__| | | | ( ( | |         | |__| | |  ( (/ ( ( | |    =
= |_|   |_|\___/(___/ \___)_|_| |_|\_|| |         |______|_|   \____)_||_|    =
=                                (_____|                                      =
=                                                                             =
=====================Multi-Egg By ryan@hosting-area.ml========================="
sleep 1
echo "Loading..."
sleep 2
echo "Done!"
echo "Select an game:
[1] Minecraft
[2] Terraria (NOT AVAILABLE YET)
[3] Exit"
echo ""
selection
read -p "Choose:" n
}
if [ -f server.jar ] 
then
   display1
   bootJavaServer
else
  maindisplay
  selection
fi