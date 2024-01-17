//
//  FooterView.swift
//  HoneyMoonKir
//
//  Created by Test on 10.10.23.
//

import SwiftUI

struct FooterView: View {
    @Binding var showingBookingAlert: Bool
    
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                haptics.notificationOccurred(.success)
                showingBookingAlert.toggle()
            }, label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .tint(Color.pink)
                    .background(
                    Capsule()
                        .stroke(Color.pink, lineWidth: 2)
                    )
            })
            
            Spacer()
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        }
        .padding()
    }
}

#Preview {
    FooterView(showingBookingAlert: .constant(false))

}
