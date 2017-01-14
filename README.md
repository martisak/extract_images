# Extract images from PDF

Using a couple of nifty programs we can extract all kinds of images from PDF documents. It's not completely automatic though, some manual work is still needed.

## Usage

`./extract_images.sh filename.pdf`

This will create a new directory `images` with extracted images in different formats.

## Prerequisites

* pdfinfo
* pdfimages 
* pdftocairo
* eps2eps

Install dependencies by `brew install poppler ghostscript`

