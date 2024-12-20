# erechnung-api-anwenderdoku

## Allgemeines

* Dieses Projekt enthält Beispiel-Skripte zur Nutzung der eRechnung-API.
* Schnittstellenbeschreibung mit OpenAPI/Swagger: [https://erechnung.api.foerdedigital.cloud/open-api/index.html](https://erechnung.api.foerdedigital.cloud/open-api/index.html)
* Die Beispielrechnung "`01.01a-INVOICE_ubl.xml`" stammt von [hier](https://github.com/itplr-kosit/xrechnung-testsuite)

### HTTP-Anfragen

* HTTP-Methode von Anfragen ist immer `POST`.
* Der HTTP-Body muss immer in UTF-8 kodiert sein. Der Body ist entweder direkt eine XML-Rechnung oder JSON, in das eine XML-Rechnung als String eingebettet ist.
* In Anfragen muss der HTTP-Header `Content-Type` immer vorhanden sein. Mögliche Werte sind je nach Endpunkt "`text/xml`" oder "`application/json`". 
* In Anfragen muss der HTTP-Header `Accept` immer vorhanden sein. Mögliche Werte sind je nach Endpunkt eine Auswahl aus "`application/json`", "`text/html`", "`application/pdf`" und "`text/xml`". In folgenden Beispielanfragen wird dies weiter differenziert.
* In Anfragen muss der HTTP-Header `Authorization` immer vorhanden sein. Sein Wert ist "`Bearer YOUR_TOKEN`", wobei `YOUR_TOKEN` durch ihr Token, das Sie von uns erhalten, zu ersetzen ist.

### Szenario-Kennungen

* Der Endpunkt `xml2scenario` ermittelt das Szenario einer e-Rechnung. Ein Szenario besteht aus einem Namen als Kennung, z.B. "`EN 16931 - XRechnung (UBL Invoice)`", und einer Version, z.B. "3.0".
* Folgende Namen werden als Szenario-Kennung unterstützt:
  * "`EN 16931 - XRechnung (UBL Invoice)`"
  * "`EN 16931 - XRechnung (UBL CreditNote)`"
  * "`EN 16931 - XRechnung (CII)`"
  * "`EN 16931 - XRechnung Extension (UBL Invoice)`"
  * "`EN 16931 - XRechnung Extension (CII)`"
  * "`EN 16931 - ZUGFeRD (CII) Basic`"
  * "`EN 16931 - ZUGFeRD (CII) Comfort`"
  * "`EN 16931 - ZUGFeRD (CII) Extended`"



## Beispielanfragen

### Endpunkt xml2scenario


* `Content-Type`: entweder "`text/xml`" oder "`application/json`"
* `Accept`: "`application/json`"

### Für Endpunkt xml2html

* `Content-Type`: entweder "`text/xml`" oder "`application/json`"
* `Accept`: entweder "`text/html`" oder "`application/json`"

### Für Endpunkt xml2pdf

* `Content-Type`: entweder "`text/xml`" oder "`application/json`"
* `Accept`: entweder "`application/pdf`" oder "`application/json`"


### Für Endpunkt xml2xml

* Da für das Umwandeln von einem Format in ein anderes ein Ziel-Zenario nötig ist, erfolgen Anfragen in JSON, in die das XML als String und ein Ziel-Szenario eingebettet sind.
* `Content-Type`: "`application/json`"
* `Accept`: entweder "`text/xml`" oder "`application/json`"


### Für Endpunkt xml2core

* `Content-Type`: entweder "`text/xml`" oder "`application/json`"
* `Accept`: "`application/json`"

