#!/usr/bin/awk -f
BEGIN {FS="~"; h1=0;h2=0;h3=0}

NR==1 {subj1=$3; subj2=$4; subj3=$5} 

NR>1 {if(h1<$3) {h1=$3; name1=$1}; if(h2<$4) {h2=$4; name2=$1}; if(h3<$5) {h3=$5; name3=$1}}

#END {print "Top Scorers\n"subj1" -> "name1"("h1")\n"subj2" -> "name2"("h2")\n"subj3" -> "name3"("h3")"}
END {printf ("Top Scorers:\n\t%s -> %s (%d)\n\t%s -> %s (%d)\n\t%s -> %s (%d)\n",subj1,name1,h1,subj2,name2,h2,subj3,name3,h3)}
