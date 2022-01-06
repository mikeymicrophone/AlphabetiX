//
//  ContentView.swift
//  Shared
//
//  Created by Michael Schwab on 1/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let calendarCalculator = DayWhat()
        let today = calendarCalculator.daysSinceOrigin()
        let dayLetter = calendarCalculator.letterOfDay()
        Text("AlphabetiX")
            .font(.headline)
        Text("Today is")
        Text("Day G")
        Text("\(today)")
        Text("\(dayLetter)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
