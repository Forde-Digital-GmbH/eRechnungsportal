#!/bin/bash

YOUR_TOKEN=

curl -X 'POST' \
  'https://erechnung.api.foerdedigital.cloud/xml2scenario' \
  -H 'Accept: application/json' \
  -H "Authorization: Bearer $YOUR_TOKEN" \
  -H 'Content-Type: text/xml' \
  -d @beispiel-anfragen/01.01a-INVOICE_ubl.xml
  
echo 
