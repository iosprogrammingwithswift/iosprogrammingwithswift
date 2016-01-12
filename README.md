# iOS Programmierung (mit Swift)

[FHWS - Hochschule für angewandte Wissenschaften Würzburg-Schweinfurt](http://www.welearn.de)

## Aktuelle Informationen

Aufgaben:

# Zwischen-Aufgabe

### Teil 1
Ihr müsst eine Wetter-App bauen!

Die App holt sich bei der Wetter-API von _openweathermap_ die aktuellen Wetter-Daten für einen Ort (im Beispiel Würzburg).
 
<http://api.openweathermap.org/data/2.5/weather?q=wuerzburg>

Die zurückgelieferten Daten müssen vom JSON-Format in ein Swift-Datenmodell überführt werden (JSON parsen & in `properties` ablegen).

Die App soll nun die wichtigen Wetterinformationen für den Nutzer dieser App anzeigen (Label mit Temperatur, Image mit Wettergrafik, usw...)

Wir haben euch Wetter-Grafiken zur Verfügung gestellt. Sie liegen als Sketch-Datei und pngs im Ordner [WeatherApp_Assets](https://github.com/iosprogrammingwithswift/iosprogrammingwithswift/tree/master/WeatherApp_Assets).

Achtet hier auf Apples HIG! Lasst es schön & Apple-konform aussehen! :-)

### Teil 2
Vervollständigt das im Git liegende `07_GesturesTutorial` um die vier fehlenden Gesten. Dabei gilt: 
- zwei der vier GestureRecognizer müssen im Code implementiert werden
- zwei der vier GestureRecognizer müssen im Storyboard verknüpft sein
- gebt ein Feedback, wenn der GestureRecognizer ausgeführt wird
- im Simulator können mehrere Finger mit der `[alt]`-Taste simuliert werden. Die Finger können mit der `[Shift]`-Taste verschoben werden.
 
### Teams 
1. 
 Werb Titian
 Joseph Hudalla
 Rost Maximilian
---
2.
Bogomaz Veronika
Yauk Arina
---

3.
 Tony
 Burkhard Jan
 Ul-Haque Danial
---
4.
Mierzwa Filip
Lienert Steffen
Eder Thimo
---
5.
- Hisser Alexander
- Dominic Barwanietz
- Schäfer Philipp
---
6.
- Keller Felix
- Julius Hackel
---
7.
- Gerasch Stefan
- Sebastian Balz 
---
8.
- Triebig Kim
---
9.
- Volk Christian
---
10.
- Kiesel Michael
---

## Abgabe-Termin
Die Aufgabe muss bis spätestens **Freitag, den 12.02.16 um 7:59** Uhr bei Andy **&** Flori als gültiger Git-Link eingegangen sein, so dass wir das Projekt auschecken können!

Der abgegebene Code muss ohne Fehler compilierbar sein und darf nicht(!) abstürzen. 'Warning Free' gehört zum guten Ton.

Jedes Teammitglied muss die grundlegende Funktionsweise der _eigenen_ App erklären können.

Prüfungszeiten werden noch per Mail bekannt gegeben.


## Tipps:
- Dieses Dokument regelmäßig prüfen, ob es aktualisiert wird
- Auf einem iPad/iPhone funktionieren Gesten besser als im Simulator (Peter gibt euch gerne Test-Geräte)
- Darauf achten, dass die App nicht abstürzt!
  - kann beim String "Würzburg" passieren
  - wenn keine Internet-Verbindung besteht
  - wenn ein leerer Suchstring ("") angegeben wurde
  - kann immer dann passieren, wenn ihr auf ein `nil` Objekt zugreift 
  - kann passieren, wenn ein Wetter-Typ geliefert wird, für den keine Grafik existiert
  - ...
- Versioniert euren Code mit Git!
- Peek & Pop sind Low-Hanging-Fruits
- Es besteht kein Zwang die vorgegebenen Wetter-Grafiken zu verwenden (Sie liegen immer noch als Sketch-Datei und pngs im Ordner [WeatherApp_Assets](https://github.com/iosprogrammingwithswift/iosprogrammingwithswift/tree/master/WeatherApp_Assets)). Es können auch eigene Grafiken verwendet werden. Beachtet dann die korrekten Auflösungen (`file.png`, `file@2x.png` & `file@3x.png`). 
- Wenn kein AutoLayout verwendet wird, dann doch bitte StackViews. AutoLayout muss erklärt werden können (z.B. Was ist eine Intrinsic Size)
- Denkt an `weak`
- Gesten-Tipps:
  - `CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)`
  - `CGAffineTransformRotate(currentTrans, rotation)`
  - `sender.translationInView(self.view);sender.view!.center = CGPoint...;`
  - `sender.setTranslation(...)`
- `drawFromPoint` für `FingerTouch`
```
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        start = touch.locationInView(view)
        
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first! as UITouch
        let end = touch.locationInView(view)
    }


    func drawFromPoint(canvas:UIImageView, start: CGPoint, toPoint end: CGPoint , withColor:UIColor, lineWidth:CGFloat, alpha:CGFloat) -> UIImage {
        UIGraphicsBeginImageContext(canvas.frame.size)
        let context = UIGraphicsGetCurrentContext()
        canvas.image?.drawInRect(CGRect(x: 0, y: 0,
            width: canvas.frame.size.width, height: canvas.frame.size.height))
        CGContextSetLineWidth(context, lineWidth)
        CGContextSetAlpha(context, alpha);
        CGContextSetStrokeColorWithColor(context, withColor.CGColor)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, start.x, start.y)
        CGContextAddLineToPoint(context, end.x, end.y)
        CGContextStrokePath(context)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
```
- Wenn eure App abstürzt achtet immer auf die Consolen-Ausgabe (von oben nach unten lesen):
  - `this class is not key value coding-compliant for the key` ihr habt irgendwo im Storyboard ein 'Warndreieck'
  - `unrecognized selector sent to instance` ihr habt die Methode nicht korrekt deklariert
- Wenn ihr Fragen habt, könnt ihr gerne Andy & Flori eure Fragen per ~~Mail~~, Gitter oder Twitter stellen.
- CamelCase. Haltet euch an die Konventionen der Plattform
- Wenn Xcode oder Swift nicht mehr richtig funktioniert, hilft ein `Product/Clean` oder alternativ ein Xcode Neustart.
- Wer Klammern aufmacht, muss auch Klammern zumachen.
- Macht man es richtig, funktioniert es auch ;-)
- Twitter Account erstellen & den coolen Leuten Folgen ([John Gruber](https://twitter.com/gruber), [Chris Lattner](https://twitter.com/clattner_llvm) & [Greg Parker](https://twitter.com/gparker/))
- Github Account erstellen und unserem Projekt beitreten in unseren [Gitter.im](https://gitter.im) Raum kommen
- [Gitter-Raum](https://gitter.im/iosprogrammingwithswift?utm_source=share-link&utm_medium=link&utm_campaign=share-link)
- [Swift in a Browser: IBM Swift Sandbox](https://developer.ibm.com/swift/2015/12/03/introducing-the-ibm-swift-sandbox/)
- [Welcome to Swift.org](https://swift.org/)
- [Good Code Style](https://swift.org/documentation/api-design-guidelines.html#clarity-at-the-point-of-use)
- [How Do I Declare a Closure in Swift?](http://fuckingclosuresyntax.com/)
- [git --everything-is-local](https://git-scm.com/)
- [Git Intro - Coenen](https://www.cccmz.de/wp-content/uploads/2014/03/git-intro.pdf)
- [Try Git](https://try.github.io/levels/1/challenges/1)
- Git Clients: [Github Desktop](https://desktop.github.com/), [Git Tower](http://www.git-tower.com/) & [Sourcetree](https://www.sourcetreeapp.com/)
- [gitlab.com](https://about.gitlab.com/gitlab-com/) & [github.com](https://github.com)

## Allgemeine Informationen
- Lehrveranstaltung: iOS-Programmierung
- Fach- bzw. Prüfungsnummer:  5003087
- Modul: iOS-Programmierung
- Modulverantwortlicher: [Prof. Dr. Braun](http://www.welearn.de/fakultaet-iw/personen/professoren-dozenten/details/person/prof-dr-peter-braun.html) ([@pe_braun](https://twitter.com/pe_braun))
- Dozenten: [Andreas Wittmann](http://www.welearn.de/fakultaet-iw/personen/lehrbeauftragte/details/person/andreas-wittmann.html) ([@anwittmann](https://twitter.com/anwittmann)) & [Florian Bachmann](http://www.welearn.de/fakultaet-iw/personen/lehrbeauftragte/details/person/florian-bachmann.html) ([@florianbachmann](https://twitter.com/florianbachmann))
- Semesterwochenstunden: 4
- Modulhandbuch: [Modulhandbuch_Inf_2014-10-09.pdf](http://www.welearn.de/fileadmin/redaktion/dokumente/modulhandbuecher/Modulhandbuch_Inf_2014-10-09.pdf)

# Teams

