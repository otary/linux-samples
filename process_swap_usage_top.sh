for i in $( cd /proc;ls |grep "^[0-9]"|awk ' $0 >100') ; do awk '/Swap:/{a=a+$2}END{print '"$i"',a/1024"M"}' /proc/$i/smaps 2>/dev/null ; done | sort -k2nr | head -10

