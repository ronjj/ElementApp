//
//  InfoScreen.swift
//  Element Compound
//
//  Created by Ronald Jabouin on 5/2/21.
//

import SwiftUI

struct InfoScreen: View {
    
    @StateObject var viewModel = AnnoucnementViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Important Links")) {
                    Link("Chaminade Website",
                          destination: URL(string: "https://www.chaminade-hs.org")!)

                    Link("Element Website",
                          destination: URL(string: "https://www.element.chaminade-hs.org")!)
                }
            }
            .navigationTitle("Club Information")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                        handleCancelTapped()
                    }) {
                        Text("Cancel")
                    }
                }
            }
        }
    }
    
    func handleCancelTapped() {
        dismiss()
    }
    
    func handleDoneTapped() {
        viewModel.save()
        dismiss()
    }
    
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct InfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementEditView()
    }
}