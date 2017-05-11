#!/usr/bin/env bash

convert IST_A_CMYK_POS.pdf -quality 100% IST_A_CMYK_POS.png
convert IST_A_CMYK_POS.png -quality 100% -gravity Center -crop 95%x70%-0-0 IST_A_CMYK_POS.png
