//
//  LandmarkList.swift
//  Swift Essentials 1
//
//  Created by Aaron Ramirez on 6/12/22.
//  This creates the whole list and the navigation link allows the click to  go to the next page

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label:{
                   LandmarkRow(landmark: landmark)
                }

            }
            .navigationTitle("Landmarks")
        }
    }
}

//  Showing you can have multiviews
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 13 Pro Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            }
        }
}
