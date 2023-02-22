#!/bin/bash
sudo apt install unzip -y
clear
function installJava {

if which java >/dev/null; then
echo "Error: Java already installed!, do you want to uninstall it? (Y/N)"
read -p "Choose: " n
case $n in
y)
  echo "Uninstalling java..."
  sudo apt-get remove java
  sleep 1
  clear
  echo "Java uninstalled, start the server again to install java."
  sleep 2
  exit
  ;;
n)
  clear
  sleep 3
  echo "Proceeding with the script..."
  sleep 2
  clear
  maindisplay
  selection
  ;;
esac
else
 echo "Select java version:
 [1] 8 (1.2.5 - 1.12.2)       [3] 16 (1.17)
 [2] 11 (1.13.2 - 1.16.5)     [4] 17 (1.18 - 1.19.3)"

 read -p "Choose: " n
 case $n in
 1)
   clear 
   sleep 2
   echo "Java 8 selected, installing it..."
   java="opendjdk-8-jre-headless"
   ;;
 2)
   clear
   sleep 2
   echo "Java 11 selected, installing it..."
   java="openjdk-11-jre-headless"
   ;;
  3)
   clear
   sleep 2
   echo "Java 16 selected, installing it..."
   java="openjdk-16-jre-headless"
   ;;
  4)
   clear
   sleep 2
   echo "Java 17 selected, installing it..."
   java="openjdk-16-jre-headless"
   ;;
  esac
  apt install $java
  fi
}
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
     [1] 1.8.9       [6] 1.13.2    [11] 1.18.2
     [2] 1.9.4       [7] 1.14.4    [12] 1.19.3
     [3] 1.10.2      [8] 1.15.2
     [4] 1.11.2      [9] 1.16.5
     [5] 1.12.2     [10] 1.17.1                "
     read -p "Version: " n
     case $n in
     1)
       clear
       sleep 1
       echo "1.8.9 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.8.9.jar
       mv vanilla-1.8.9.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     2)
       clear
       sleep 1
       echo "1.9.4 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.9.4.jar
       mv vanilla-1.9.4.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     3)
       clear
       sleep 1
       echo "1.10.2 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.10.2.jar
       mv vanilla-1.9.4.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     4)
       clear 
       sleep 1
       echo "1.11.2 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.11.2.jar
       mv vanilla-1.11.2.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     5)
       clear
       sleep 1 
       echo "1.12.2 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.12.2.jar
       mv vanilla-1.12.2.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     6)
       clear
       sleep 1
       echo "1.13.2 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.13.2.jar
       mv vanilla-1.13.2.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     7) 
       clear 
       sleep 1
       echo "1.14.4 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.14.4.jar
       mv vanilla-1.14.4.jar server.jar
       echo "Procceding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     8)
       clear 
       sleep 1
       echo "1.15.2 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.15.2.jar
       mv vanilla-1.15.2.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     9)
       clear 
       sleep 1
       echo "1.16.5 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.16.5.jar
       mv vanilla-1.16.5.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     10)
       clear
       sleep 1
       echo "1.17.1 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.17.1.jar
       mv vanilla-1.17.1.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     11)
       clear 
       sleep 1
       echo "1.18.2 Selected, downloading..."
       wget https://data-2.cdnx.fun/mc/vanilla-1.18.2
       mv vanilla-1.18.2.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     12)
       clear
       sleep 1
       echo "1.19.3 Selected, downloading..."
       wget -q --show-progress https://data-2.cdnx.fun/mc/vanilla-1.19.3.jar
       mv vanilla-1.19.3.jar server.jar
       echo "Proceeding to java installation..."
       clear
       sleep 2
       installJava
       ;;
     *)
       sleep 1
       clear
       echo "Invalid option, exiting..."
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
     exit
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
   clear
   bash h-a.sh
   ;;
 3)
   clear
   sleep 2
   echo "Starting Java installation/uninstallation Process..."
   clear
   installJava
   echo "Process ended, restarting script..."
   sleep 15
   exit
   ;;
 4)
   clear
   sleep 1
   echo "Exitting..."
   exit
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
[3] Install/Uninstall Java
[4] Exit"
echo ""
selection
read -p "Choose:" n
}
if [ -f server.jar ] 
then
   display1
   echo "Minecraft Java detected, starting it up..."
   bootJavaServer
else
  maindisplay
  selection
fi