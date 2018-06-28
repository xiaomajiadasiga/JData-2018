#!/bin/bash

echo ""
echo "Extracting features with 9 months windows ...."
python3 Generate_finalB_9month.py
echo ""
echo "Extracting features with 1 months windows ...."
python3 Generate_finalB_1month.py
echo ""
echo "Extracting features on taget products with more windows slicing ...."
python3 DGenerate_fixB_target.py
echo ""
echo "Extracting features on other products with more windows slicing ...."
python3 DGenerate_fixB_other.py
echo ""
echo "Extracting third level features ...."
python3 Generate_3level_userid_2B.py
echo ""
echo "Extracting features of last few activity ...."
echo ""
python3 lastB.py