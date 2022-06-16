//
//  CardView.swift
//  Scrumdinger (iOS)
//
//  Created by Jhoel Perez Ruiz on 6/16/22.
//

import SwiftUI

struct CardView: View {
    var scrum: DailyScrum
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
                .accessibilityAddTraits(.isHeader)
            
            Spacer()
            
            HStack {
                Label("\(scrum.attendees.count)",systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                
                Spacer()
                
                Label("\(scrum.lengthInMinutes)",systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
