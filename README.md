# iOS Programmierung (mit Swift)

[FHWS - Hochschule für angewandte Wissenschaften Würzburg-Schweinfurt](http://www.welearn.de)

## Aktuelle Informationen

Aufgaben:

- `drawFromPoint`
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
