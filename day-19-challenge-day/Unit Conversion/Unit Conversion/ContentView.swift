//
//  ContentView.swift
//  Unit Conversion
//
//  Created by Swapnil Godambe on 03/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedFromUnit = 0
    @State private var selectedToUnit = 1
    @State private var valueToConvert = ""
    
    let units:[String] = ["Celsius", "Fahrenheit", "Kelvin"]
    let unitsMapping:[String: UnitTemperature] = ["Celsius" : UnitTemperature.celsius,
                                                  "Fahrenheit" : UnitTemperature.fahrenheit,
                                                  "Kelvin" : UnitTemperature.kelvin]
    
    var convertedValue: Double { 
        let inputValue = Double(valueToConvert) ?? 0.0
        
        let inputUnitTemperature: UnitTemperature = unitsMapping[units[selectedFromUnit]] ?? UnitTemperature.celsius
        let outputUnitTemperature: UnitTemperature = unitsMapping[units[selectedToUnit]] ?? UnitTemperature.celsius
          
        let sourceTemperature = Measurement(value: inputValue, unit: inputUnitTemperature)
        let outputTemperature = sourceTemperature.converted(to: outputUnitTemperature)
        
        return outputTemperature.value
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("From")) {
                    Picker("", selection: $selectedFromUnit) {
                        ForEach(0 ..< units.count) {
                            Text("\(units[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                    
                Section(header: Text("To")) {
                    Picker("", selection: $selectedToUnit) {
                        ForEach(0 ..< units.count) {
                            Text("\(units[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    TextField("Enter a value", text: $valueToConvert)
                    Text("Result: \(convertedValue, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("Unit Conversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
