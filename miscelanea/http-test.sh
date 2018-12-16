for i in $(curl http://ranking-empresas.eleconomista.es/empresas-RIOJA.html|\
grep '<td class="col_responsive1"'|sed 's/"col_responsive1"/\n/g'|\
grep "^>class"|sed 's/href=/\n/g'|sed "s/>Ver/\n/g"|grep '^"h'|sed 's/"//g');\
do 
  curl $i |grep '<td class="tal website">'|sed 's/tal website/\n/g'|sed 's/rel="nofollow"/\n/g'|\
  grep '^"><a'|sed 's/href=/\n/g'|grep '^"h' >> webs ;\
 done
