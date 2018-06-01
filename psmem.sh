#Stolen from:
#https://abdussamad.com/archives/488-Memory-usage-of-a-process-under-Linux.html

#!/bin/bash
ps -C $1 -O rss | gawk '{ count ++; sum += $2 }; END {count --; print "Number of processes =",count; print "Memory usage per process =",sum/1024/count, "MB"; print "Total memory usage =", sum/1024, "MB" ;};'
