//
//  LandmarkRow.swift
//  Swift Essentials 1
//
//  Created by Aaron Ramirez on 6/12/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            Text(landmark.name)
        }

    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
