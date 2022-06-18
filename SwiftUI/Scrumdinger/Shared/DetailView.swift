//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Jhoel Perez Ruiz on 6/18/22.
//

import SwiftUI

struct DetailView: View {
    
    let scrum: DailyScrum
    
    var body: some View {
        List{
            Section(header:Text("Meeting Info ")){
                
                HStack {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                HStack {
                    Label("Length",systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes ")
                }
                .accessibilityElement(children: .combine)
                
                HStack {
                    Label("Theme",systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.rawValue)")
                        .padding(4)
                        .cornerRadius(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.returnColor)
                }
                .accessibilityElement(children: .combine)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
