#!/usr/bin/env bash

mkdir -p test_out

for dataset in "philippines" #"chile_" "bangladesh_" "china_mainland_" "panama_" "indonesia_"
do
	for scaleM in "1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "30" "40" "50" "60" "100" "200" "300" "400" "500"
	do
    	echo "Generalisation for "$dataset" - 1:"$scaleM"000000"
		java -jar RegionSimplify.jar -i "test_data/"$dataset".geojson" -o "test_out/"$dataset"-"$scaleM"M.geojson" -s $scaleM"000000" -inb 2
	done
done
