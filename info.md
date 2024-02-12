
# Algemeen
De tijd die het kost om testcases geautomatiseerd te runnen kan impact hebben op de snelheid waarmee je feedback kan geven,
de gebruikte stroom en andere zaken. Daarom is het belangrijk om de tests zo kort mogelijk te laten zijn, al helemaal
wanneer deze geintegreerd zijn in een pipeline is het handig als de tijd zo kort mogelijk is.


## Aspecten van invloed op uitvoer tijd van testcases:

Een extreem voorbeeld: headless met playwright duurt een test 2.1s, en headed met robotframework wel 11s. 20% van de totale tijd
kan dus bespaard worden, wat zich al snel op kan stapelen.

### Framework keuze
Zoals te zien in de repo zijn er grote verschillen tussen robotframework of playwright. 

### Head
Headless of headed tests uitvoeren kan ook een groot verschil opleveren. Al zal je in een pipeline nooit headed tests uitvoeren.

### Overbodige tests niet uitvoeren
Test die hetzelfde doen of altijd slagen niet uitvoeren. 

### Testen op de meest logische manier
BVA tests bijvoorbeeld uitvoeren dmv API ipv een framework

### Tests parallel laten uitvoeren
Playwright voert automatisch parallel tests uit op verschillende browsers om compatibiliteit te controleren. Dit kan enorm veel
tijd besparen, en het is een stuk lastiger om dit voor elkaar te krijgen met bijvoorbeeld robotframework of cypress.

Het is echter een goed idee om je af te vragen of alle tests op verschillende browsers uitgevoerd dienen te worden.

### Specifiekere voorbeelden
Wanneer het even kan duren voordat een element gevonden wordt is het beter om een explicit wait te gebruiken dan een 
sleep voor een aantal seconden aangezien een test dan sneller klaar is (ook weer automatisch inbegrepen bij playwright).

Een ander voorbeeld is een snellere taal te gebruiken of efficientere manieren om dingen te programmeren.


## Specifiek
In linux, run commands with prefix `time` to get the time output. 





