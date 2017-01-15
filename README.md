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

## Acknowledgments and references

This came from the superuser question [How to extract vectors from a PDF file?](https://superuser.com/questions/302045/how-to-extract-vectors-from-a-pdf-file/884445#884445) and user [hackerb9](https://superuser.com/users/400780/hackerb9).