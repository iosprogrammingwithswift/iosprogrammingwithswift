// Playground - noun: a place where people can play
// Source: https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html
struct AudioChannel {
    
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

AudioChannel.maxInputLevelForAllChannels
//leftChannel.maxInputLevelForAllChannels
leftChannel.currentLevel = 7
leftChannel.currentLevel
rightChannel.currentLevel

AudioChannel.maxInputLevelForAllChannels
rightChannel.currentLevel = 11
rightChannel.currentLevel
leftChannel.currentLevel
AudioChannel.maxInputLevelForAllChannels

