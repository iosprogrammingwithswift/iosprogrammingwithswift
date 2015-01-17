# Zwischen-Aufgabe

### Teil 1
Ihr müsst eine Wetter-App bauen!

Die App holt sich bei der Wetter-API von _openweathermap_ die aktuellen Wetter-Daten für einen Ort (im Beispiel Würzburg).
 
<http://api.openweathermap.org/data/2.5/weather?q=wuerzburg>

Die zurückgelieferten Daten müssen vom JSON-Format in ein Swift-Datenmodell überführt werden (JSON parsen & in `properties` ablegen).

Die App soll nun die wichtigen Wetterinformationen für den Nutzer dieser App anzeigen (Label mit Temperatur, Image mit Wettergrafik, usw...)

Achtet hier auf Apples HIG! Lasst es schön & Apple-konform aussehen! :-)

### Teil 2
Vervollständigt das im Git liegende `Swift_07_GesturesTutorial` um 3(!) der 4 fehlenden Gesten:

- mindestens einer der 3 GestureRecognizer muss im Code implementiert werden
- mindestens einer der 3 GestureRecognizer muss im Storyboard verknüpft sein
- gebt ein Feedback, wenn der GestureRecognizer ausgeführt wird
- im Simulator können mehrere Finger mit der `[alt]`-Taste simuliert werden. Die Finger können mit der `[Shift]`-Taste verschoben werden.
 

## Abgabe-Termin
Die Aufgabe muss bis **Montag, den 26.01.15 um 9:55** Uhr bei Andy **&** Flori per Mail als Zip-Datei(!) eingegangen sein!

Der abgegebene Code muss ohne Fehler compilierbar sein und darf nicht(!) abstürzen. Die Zip-Datei darf nicht korrupt sein und muss sich entpacken lassen.

Jedes Teammitglied muss die grundlegende Funktionsweise der _eigenen_ App erklären können.



## Tipps:
- Darauf achten, dass die App nicht abstürzt!
  - kann beim String "Würzburg" passieren
  - wenn keine Internet-Verbindung besteht
  - wenn ein leerer Suchstring ("") angegeben wurde
  - kann immer dann passieren, wenn ihr auf ein `nil` Objekt zugreift 
  - kann passieren, wenn ein Wetter-Typ geliefert wird, für den keine Grafik existiert
  - ...
- Das Datenmodell, dass ihr euch am _Sa, den 17.01.15_ erarbeitet habt, ist nicht in Stein gemeißelt! Es kann gerne verändert werden (mehr oder weniger Klassen, ??, ...).
- Auto Layout kann, muss aber nicht benutzt werden. Vielleicht traut sich wer von euch daran (Tipp: Vielleicht findet ihr eine gute Grundlage unter den in der Keynote-Datei `Swift_05_Documentation.key` angegeben Links)
- Überdenkt immer eure Datenstrukturen & euren Swift-Syntax! Die offensichtliche Lösung ist nicht immer die Eleganteste. (Können die Daten nochmal vom Nutzer geändert werden, oder sind sie konstant?). Achtet auf die in `Swift_04_A (not so) Quick Tour.key` und `Swift_04_ASwiftTour.playground` gezeigten Beispiele.
- Denkt an `weak`
- Auf einem iPad/iPhone funktionieren Gesten besser als im Simulator (Peter gibt euch gerne Test-Geräte)
- `CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)`
- `CGAffineTransformRotate(currentTrans, rotation)`
- `sender.translationInView(self.view);sender.view!.center = CGPoint...;
   sender.setTranslation(...)`
- Wenn eure App abstürzt achtet immer auf die Consolen-Ausgabe (von oben nach unten lesen):
  - `this class is not key value coding-compliant for the key` ihr habt irgendwo im Storyboard ein 'Warndreieck'
  - `unrecognized selector sent to instance` ihr habt die Methode nicht korrekt deklariert
- Wenn ihr Fragen habt, könnt ihr gerne Andy & Flori eure Fragen per Mail oder Twitter stellen.
- CamelCase. Haltet euch an die Konventionen der Plattform
- Wenn Xcode oder Swift nicht mehr richtig funktioniert, hilft ein `Product/Clean` oder alternativ ein Xcode Neustart.
- Wer Klammern aufmacht, muss auch Klammern zumachen.
- Macht man es richtig, funktioniert es auch ;-)


# Teams
- Jan, Robert & Jannet
- Franziska, Nico & Kristina
- Philipp & Jonas
- Marina, Tino & Christoph
- Viktor, Artem & Yevgeniy
