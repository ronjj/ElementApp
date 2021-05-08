//
//  InventoryItemDetailedView.swift
//  Element Compound
//
//  Created by Ronald Jabouin on 3/29/21.
//

import SwiftUI

struct CameraItemDetailedView: View {
    
    let camera: CameraItem
   
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    Image(camera.bigImageURL)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 200)
                        .cornerRadius(8)
                    
                    
                    VStack(alignment: .leading, spacing: 20) {

                        Text(camera.name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Text(camera.longDescription)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 20)
                         
                        
                        Text("Tutorials for \(camera.name)")
                        Rectangle()
                        Rectangle()
       
                            
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 600, alignment: .center)
                    .navigationBarTitle(camera.name, displayMode: .inline)
                    .navigationBarHidden(true)
                  
                }
            }
        }
    }
}

struct CameraItemDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        CameraItemDetailedView(camera: MockData.sampleCamera)
    }
}

