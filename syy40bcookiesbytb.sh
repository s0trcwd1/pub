#!/bin/bash


Green="\033[32m"

Red="\033[31m"


GreenBG="\033[42;37m"

RedBG="\033[41;37m"

Font="\033[0m"


echo "Staring"

        echo ""

        echo "what's your localdr:localdr"

        echo "   1) Default: 101"

        echo "   2) 102"

        echo "   3) 103"

        echo "   4) 104"

        echo "   5) 105"

        echo "   6) custom"

        until [[ $localdr =~ ^[1-6]$ ]]; do

                read -rp "localdr choice [1-6]: " -e -i 1 localdr

        done

        case $localdr in

        1)

                localdr="101"

                ;;

        2)

                localdr="102"

                ;;

        3)

                localdr="103"

                ;;

        4)

                localdr="104"

                ;;

        5)

                localdr="105"

                ;;

        6)

                localdr="custom"

                read -rp "custom: " localdr

                ;;

                esac

b="b"

s7dst="s7dst.txt"

mkdir -p /mnt/blockstorage/data/${localdr}

cd /mnt/blockstorage/data/${localdr}

rm -rf *


echo ${localdr}

echo "Staring"

        echo ""

        echo "what's your dr:?"

        echo "   1) Default: s764"

        echo "   2) s7tv"

        echo "   3) s7oth"

        echo "   4) 2025"

        echo "   5) s7custom"

        until [[ $dr =~ ^[1-5]$ ]]; do

                read -rp "dr choice [1-5]: " -e -i 4 dr

        done

        case $dr in

        1)

                dr="s764"

                ;;

        2)

                dr="s7tv"

                ;;

        3)

                dr="s7oth"

                ;;

        4)

                dr="2025"

                ;;

        5)

                dr="s7custom"

                read -rp "s7custom: " dr

                ;;

                esac

        echo "" 




echo " "

echo " "

echo " "

echo -e "—————————————————————————————————————————— info ——————————————————————————————————————————"""

echo " "

echo -e "${Red} Your local dr:${localdr}"

echo " "

echo -e "${Red} Your local remote dr :${dr}"

echo -e "\e[0m"

link=`cat /mnt/blockstorage/data/${localdr}${b} | grep -Eo "https.*watch\?v=..........."`

echo  ${link}

echo " "

echo -e "—————————————————————————————————————————— end ——————————————————————————————————————————"

echo " "

echo " "

echo " "

read -n1 -r -p "Press any key to continue..."

time=`date +"%Y.%m.%d %H:%M.%S"`

echo "###############################################################################################" >> /mnt/blockstorage/nl/${s7dst}

echo "${time}" >> /mnt/blockstorage/nl/${s7dst}

echo "Local DR: ${localdr}" >> /mnt/blockstorage/nl/${s7dst}

echo "Remote DR: ${dr}" >> /mnt/blockstorage/nl/${s7dst}

echo " " >> /mnt/blockstorage/nl/${s7dst}

cat /mnt/blockstorage/data/${localdr}${b} | grep -Eo "https.*watch\?v=..........." >> /mnt/blockstorage/nl/${s7dst}

echo ''>> /mnt/blockstorage/nl/${s7dst}

for i in `cat /mnt/blockstorage/data/${localdr}${b} | grep -Eo "https.*watch\?v=..........."`; do

echo " "

echo " "

echo -e "${Red}${i}"

echo " "

echo " "












yt-dlp -F ${i} --cookies /mnt/blockstorage/data/ytb



#yt-dlp -f "bv*[ext=mp4][height<=1080][vcodec^=avc]+ba[ext=m4a]/b[ext=mp4] / bv*[height<=1080]+ba/b" -o '%(upload_date)s.%(title).200B%(title.201B&…|)s.%(duration_string)s.%(id)s.%(ext)s' ${i} --cookies /mnt/blockstorage/data/ytb

#yt-dlp -f "bv*[ext=mp4][height<=1080][vcodec^=avc]+ba[ext=m4a]/b[ext=mp4] / bv*[height<=1080]+ba/b" -o '%(upload_date)s.%(duration_string)s.%(id)s.%(ext)s' ${i} --cookies /mnt/blockstorage/data/ytb

yt-dlp -f "bv*[ext=mp4][height<=1080][vcodec^=avc]+ba[ext=m4a]/b[ext=mp4] / bv*[height<=1080]+ba/b" -o '%(upload_date)s.%(uploader)s.%(duration_string)s.%(id)s.%(ext)s' ${i} --cookies /mnt/blockstorage/data/ytb


rclone copy ./ /data/syy40/ -P


rm -rf *

done


cat /dev/null > ../${localdr}${b}

echo "end"

echo -e "\e[0m"




