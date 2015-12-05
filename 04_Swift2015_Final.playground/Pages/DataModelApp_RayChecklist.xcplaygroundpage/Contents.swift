//: [Previous](@previous) | [Next](@next)

import Foundation

struct Checklist {
    let title: String
    var items = [ChecklistItem]()
    
    init(title: String, items: [ChecklistItem]) {
        self.title = title
        self.items = items
    }
}

struct ChecklistItem {
    let name: String
    var checked: Bool
    let notes: String
    
    init(_ name: String, checked: Bool = false, notes: String = " ") {
        self.name = name
        self.checked = checked
        self.notes = notes
    }
}

var checklists = [
    Checklist(title: "Food", items: [
        ChecklistItem("Baked Beans", checked: true, notes: "Must be Heinz"),
        ChecklistItem("Noodles", checked: false, notes: "Check gas and water available for cooking"),
        ChecklistItem("Custard", checked: true, notes: "Long life"),
        ChecklistItem("Dried Apricots", checked: true, notes: "For Aunt Beatrice")
        ]),
    
    Checklist(title: "Medical", items: [
        ChecklistItem("Aspirin"),
        ChecklistItem("Bandages"),
        ChecklistItem("Whisky")
        ]),
    
    Checklist(title: "Equipment", items: [ ChecklistItem("Sharpened thing for getting stones out of horse's hooves") ]),
    
    Checklist(title: "To Do", items: [ ChecklistItem("Download Max Soderstrom’s Survival Guide App") ])
]

//MARK: - Diary Sample Data

struct DiaryEntry {
    let date: NSDate
    let text: String
    
    static var dateFormatter: NSDateFormatter {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
    
    init(date: String, text: String) {
        self.date = DiaryEntry.dateFormatter.dateFromString(date)!
        self.text = text
    }
    
    init(date: NSDate, text: String) {
        self.date = date
        self.text = text
    }
    
    var year: String {
        let components = NSCalendar.currentCalendar().components(.Year, fromDate: date)
        return "\(components.year)"
    }
    
    var month: String {
        let components = NSCalendar.currentCalendar().components(.Month, fromDate: date)
        return DiaryEntry.dateFormatter.shortMonthSymbols[components.month].uppercaseString
    }
    
    var day: String {
        let components = NSCalendar.currentCalendar().components(.Day, fromDate: date)
        return "\(components.day)"
    }
}

var diaryEntries = [
    DiaryEntry(date:"2016-07-02", text: "Have heard rumors. Preparing."),
    DiaryEntry(date:"2016-07-04", text: "List of safe contacts arrived."),
    DiaryEntry(date:"2016-07-05", text: "Food shortages and riots"),
    DiaryEntry(date:"2016-07-08", text: "I may be underprepared. They are coming...")
]

//: [Previous](@previous) | [Next](@next)
