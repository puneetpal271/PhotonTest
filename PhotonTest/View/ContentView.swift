//
//  ContentView.swift
//  PhotonTest
//
//  Created by Puneetpal Singh on 07/02/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = SchoolViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.schools) { school in
                NavigationLink(
                    destination: SchoolDetailView(school: school)) {
                    VStack(alignment: .leading) {
                    Text(school.school_name)
                        .font(.headline)
                        Text(school.dbn)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("NYC High Schools")
        }
        .onAppear {
            viewModel.fetchSchools()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
