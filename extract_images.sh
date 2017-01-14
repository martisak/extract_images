#!/bin/bash

file=$1
pages=`pdfinfo $file | grep Pages | sed 's/[^0-9]*//'`
mkdir images

pdfimages -f 1 -l $pages -j -p $file ./images/
rm images/*.ppm

for page in $(seq 1 $pages); do
	pdftocairo -f $page -l $page -eps $file - | sed '/BT/,/ET/ d' > images/page-$page.eps
	eps2eps images/page-$page.eps images/page-$page-bb.eps
	rm images/page-$page.eps
done
