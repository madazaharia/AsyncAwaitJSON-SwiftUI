//
//  UserDetails.swift
//  AsyncAwaitJSON
//
//  Created by Madalin Zaharia on 10.10.2023.
//

import SwiftUI

struct UserDetails: View {
    
    //MARK: - Properties
    @StateObject private var viewModel = ViewModel()
    
    // MARK: - Drawing
    var body: some View {
        VStack(spacing: 20) {
            AsyncImage(url: URL(string: viewModel.user?.avatarUrl ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
            } placeholder: {
                Circle()
                    .foregroundColor(.secondary.opacity(0.7))
            }
            .frame(width: 120, height: 120)

            Text(viewModel.user?.login ?? "Login placeholder")
                .bold()
                .font(.title)
            
            Text(viewModel.user?.bio ?? "Bio placeholder")
                .padding()
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    UserDetails()
}
