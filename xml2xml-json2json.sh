#!/bin/bash

YOUR_TOKEN=

curl -X 'POST' \
  'https://erechnung.api.foerdedigital.cloud/xml2xml' \
  -H 'Accept: application/json' \
  -H "Authorization: Bearer $YOUR_TOKEN" \
  -H 'Content-Type: application/json' \
  -d @beispiel-anfragen/xml2xml_01.01a-INVOICE_ubl.json
  
echo 
