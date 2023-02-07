#!/usr/bin/env bash

mkdir -p test_out

for dataset in "indonesia_" "chile_" "bangladesh_" "china_mainland_" "panama_" "philippines_"
do
	for scaleM in "3" "5" "6" "7" "9" "10" "11" "12" #"1" "2" "4" "8" "16" "32" "64" "128" "256" "512" "1024"
	do
    	echo "Generalisation for "$dataset" - 1:"$scaleM"000000"
		java -jar /home/juju/Bureau/RegionSimplify.jar -i "test_data/"$dataset".gpkg" -o "test_out/"$dataset"-"$scaleM"M.gpkg" -s $scaleM"000000"
	done
done
