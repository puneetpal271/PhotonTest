//
//  SchoolDetailView.swift
//  PhotonTest
//
//  Created by Puneetpal Singh on 07/02/24.
//

import SwiftUI

struct SchoolDetailView: View {
    let school: School
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(school.school_name)
                    .font(.title)
                Text(school.overview_paragraph ?? "")
                    .padding()
            }
        }
        .navigationTitle(school.dbn)
        .navigationBarTitleDisplayMode(.inline)
    }
}
