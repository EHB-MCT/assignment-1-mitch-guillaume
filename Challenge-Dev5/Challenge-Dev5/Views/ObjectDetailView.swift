//
//  ObjectDetailView.swift
//  Challenge
//
//  Created by Guillaume Dochy on 26/09/2024.
//

import SwiftUI

struct ObjectDetailView: View {
    
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle())
        Text("Loading")
    }
}

#Preview {
    ObjectDetailView()
}
