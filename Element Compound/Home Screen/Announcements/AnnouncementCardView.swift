
//  AnnouncementCardView.swift
//  Element Compound
//
//  Created by Ronald Jabouin on 4/22/21.


import SwiftUI
import Firebase
import GoogleSignIn

struct AnnouncementCardView: View {
    @ObservedObject private var viewModel = AnnouncementsViewModel()
    var announcement: Announcement
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text(announcement.sender)
                    Spacer()
                    Text(announcement.dateString)
                }
                
                HStack{
                    Spacer()
                    Text(announcement.timeString)
                }
             
                Text(announcement.message)
//                    .font(Font.custom("Poppins-Thin", size: 18))
                    .padding(.top, 10)
                   
//                    .font(.custom("Poppins-Black", size: 22))
                
            }
            .font(Font.custom("Poppins-Regular", size: 18))
            .padding(5)
         
            
           
        }
        .cornerRadius(20)
        .frame(width: 325, height: 150)
        .shadow(color: .veryLightGrey, radius: 5, x: 0, y: 4)
    }
}




