//
//  UserDetailsViewModel.swift
//  AsyncAwaitJSON
//
//  Created by Madalin Zaharia on 10.10.2023.
//

import Foundation

extension UserDetails {
    @MainActor // attribute to observable object class to be absolutely sure all UI updates happen on the main actor.
    class ViewModel: ObservableObject {
        
        // MARK: - Properties
        @Published var user: GithubUser?
        
        // MARK: - Init
        init() {
            Task {
                do {
                    // v1
                    // user = try await getUserV1()
                    
                    // v2
                    try await getUserV2()
                } catch GithubError.invalidUrl {
                    print("Invalid URL")
                } catch GithubError.invalidResponse {
                    print("Invalid response")
                } catch GithubError.invalidData {
                    print("Invalid data")
                } catch {
                    print("Unexpected error")
                }
            }
        }
        
        // MARK: - Functions
        
        // v1
        private func getUserV1() async throws -> GithubUser {
            let endpoint = "https://api.github.com/users/madazaharia" // see docs.github.com
            
            guard let url = URL(string: endpoint) else {
                throw GithubError.invalidUrl
            }
            
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                throw GithubError.invalidResponse
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase // (avatar_url -> avatarUrl)
                return try decoder.decode(GithubUser.self, from: data)
            } catch {
                throw GithubError.invalidData
            }
        }
        
        // v2
        private func getUserV2() async throws {
            let endpoint = "https://api.github.com/users/madazaharia" // see docs.github.com
            
            guard let url = URL(string: endpoint) else {
                throw GithubError.invalidUrl
            }
            
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                throw GithubError.invalidResponse
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase // (avatar_url -> avatarUrl)
                self.user = try decoder.decode(GithubUser.self, from: data)
            } catch {
                throw GithubError.invalidData
            }
        }
    }
}
