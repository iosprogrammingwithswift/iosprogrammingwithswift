//: [Previous](@previous) | [Next](@next)

import Foundation

/*:
# Mixins over Inheritance (2/2)
## The problem with Inheritance
this stuff is heavily inspired by Olivier Halligon [https://twitter.com/aligatr](@aligatr)

Based of: http://alisoftware.github.io/swift/protocol/2015/11/08/mixins-over-inheritance/
*/


//: This Playground Page is yet another example of the use of Protocol Extensions as Mixins & Traits, using emojis everywhere, because it's fun.
//:
//: ## Traits
//:
//: ### Named Trait

protocol 🔖 {
    var name: String { get }
}

//: ### Speaker Trait

protocol 💬 {
    func speak()
}

extension 💬 {
    func speak() {
        print("Hello!")
    }
}

//: ### Pooper Trait

protocol 💩 {
    func poop()
}
extension 💩 {
    func poop() {
        print("💩")
    }
}

//: ### Eater Trait

protocol 🍗 {
    func eat()
}

extension 🍗 {
    func eat() {
        print("Nom nom nom")
    }
}

//: ### Dog Trait

protocol 🐶 : 🍗,💩 {
    func bark()
}

extension 🐶 {
    func bark() {
        print("Woof Woof!")
    }
}
//: ### Cat Trait

protocol 🐱 : 🍗,💩 {
    func meow()
}

extension 🐱 {
    func meow() {
        print("Meow!")
    }
}
//: ### Robot Trait

protocol 🤖 {
    func move()
}

extension 🤖 {
    func move() {
        print("You need to turn left, right?")
    }
}

//: ### Killer Trait

protocol 🔪 {
    func kill()
}

extension 🔪 {
    func kill() { print("I'll kill you!") }
}
//: ## Composed Traits

extension 💬 where Self: 🔖 {
    func speak() {
        print("Hello, I'm \(name)")
    }
}
//: ## Structs

struct Dog: 🐶,🔖 {
    let name: String
}
struct Cat: 🐱,🔖 {
    let name: String
}
struct Robot: 🤖 {}

struct DogRobot: 🐶,🤖 {}
struct KillerDogRobot: 🔪,🐶,🤖 {}

struct Dalek: 🤖,🔪,💬 {
    func speak() {
        kill()
    }
    func kill() {
        print("Exterminate, Exterminaaate!")
    }
}

struct Cyberman: 🤖,🔪,💬 {
    func speak() {
        print("You will be deleted!")
    }
    func kill() {
        print("Delete, Delete!")
    }
}

struct DoctorWho: 🔖,💬,💩,🍗 {
    let name = "The Doctor"
    func sonicThat() {
        print("🕶") // Yeah, the 13th doctor use Sonic Glasses now!
    }
}
//: ## Let's Play!

print("-- Felix the Cat --")
let felix = Cat(name: "Felix")
felix.meow()

print("-- Max the Dog --")
let max = Dog(name: "Max")
max.bark()

print("-- K9 --")
let K9 = DogRobot()
K9.bark()
K9.move()

print("-- madDogRobot --")
let madDogRobot = KillerDogRobot()
madDogRobot.bark()
madDogRobot.move()
madDogRobot.kill()


print("-- Dalek --")
let dalek = Dalek()
dalek.speak()
dalek.kill()

print("-- Cyberman --")
let cyberman = Cyberman()
cyberman.speak()
cyberman.kill()

print("-- Doctor Who --")
let doctor = DoctorWho()
doctor.speak() // The Doctor has a name (🔖) — sort of — and can speak (💬), so the combined trait applies
doctor.eat()
doctor.sonicThat()

print("-- Killers --")
for killer: 🔪 in [madDogRobot, dalek, cyberman] {
    killer.kill()
}

print("-- Eaters & Poopers --")
for pooper: protocol<🍗,💩> in [felix, max, madDogRobot, doctor] {
    if let namedPooper = pooper as? 🔖 {
        print("• \(namedPooper.name)")
    }
    pooper.eat()
    pooper.poop()
}

//: [Previous](@previous) | [Next](@next)
