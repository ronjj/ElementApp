//
//  EditingCourseView.swift
//  Element Compound
//
//  Created by Ronald Jabouin on 7/28/21.
//

import SwiftUI


enum EditingCourseSheets: Identifiable {
    
    var id: Int {
        self.hashValue
    }
    case courseInfo
}


struct EditingCourseView: View {
    
    @State private var activeSheet: CameraCourseSheets?
    
    var body: some View {
        ZStack {
            Color.ruby.edgesIgnoringSafeArea(.all)
            
            Spacer()
            
            VStack {
                Image("black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal,10)
                    .frame(width: 200, height: 200)
                 
                Text("Editing")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()
                 
                Text(" This is the editing course. Click the button below to learn more")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                Button{
                    activeSheet = .courseInfo
                } label: {
                    largeButtonStyle(title: "Go To Course")
                }
                .padding(.top, 30)
            }
            Spacer()
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
        .sheet(item: $activeSheet) { item in
            switch item {
            case .courseInfo:
                EditingCourseSheet()
            }
        }
    }
}
