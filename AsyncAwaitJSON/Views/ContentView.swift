//
//  ContentView.swift
//  AsyncAwaitJSON
//
//  Created by Madalin Zaharia on 10.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    @State private var user: GithubUser?
    
    // MARK: - Drawing
    var body: some View {
        UserDetails()
    }
}

#Preview {
    ContentView()
}
