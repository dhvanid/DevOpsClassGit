

if [ $# -eq 0 ]
then
	echo "Usage: devops01b.sh [-all | -volume | -cpu | -network | -ram ]" 
       exit	
fi

args=("$@")
for ((i=0;i<$#;i+=1));
do 
	#echo "Argument $i ${args[$i]}";
	if [ ${args[$i]} = "-volume" ] || [ ${args[$i]} = "-all" ]
	then
		echo "Output of Volume Info"
                df -h
	fi

	 if [ ${args[$i]} = "-ram" ] || [ ${args[$i]} = "-all" ]
        then
                echo "Output of RAM Info"
                cat /proc/meminfo
        fi


	 if [ ${args[$i]} = "-cpu" ] || [ ${args[$i]} = "-all" ]
        then
                echo "Output of CPU Statistics"
                ps -W
        fi
	if [ ${args[$i]} = "-network" ] || [ ${args[$i]} = "-all" ]
        then
                echo "Output of MAC Address"
                getmac
		echo "Output of IP address"
                ipconfig
        fi



done

#echo "Output of RAM"
#cat /proc/meminfo
#echo "Output of Volume Info"
#df -h
#echo "Output of CPU Statistics"
#ps -W
#echo "Output of MAC address"
#getmac
#echo "Output of IP address"
#ipconfig
