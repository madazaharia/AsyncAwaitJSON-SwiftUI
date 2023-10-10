//
//  GithubUser.swift
//  AsyncAwaitJSON
//
//  Created by Madalin Zaharia on 10.10.2023.
//

import Foundation

struct GithubUser: Codable {
    let login: String
    let avatarUrl: String
    let bio: String
}

/*
 {
   "login": "madazaharia",
   "id": 25067088,
   "node_id": "MDQ6VXNlcjI1MDY3MDg4",
   "avatar_url": "https://avatars.githubusercontent.com/u/25067088?v=4",
   "gravatar_id": "",
   "url": "https://api.github.com/users/madazaharia",
   "html_url": "https://github.com/madazaharia",
   "followers_url": "https://api.github.com/users/madazaharia/followers",
   "following_url": "https://api.github.com/users/madazaharia/following{/other_user}",
   "gists_url": "https://api.github.com/users/madazaharia/gists{/gist_id}",
   "starred_url": "https://api.github.com/users/madazaharia/starred{/owner}{/repo}",
   "subscriptions_url": "https://api.github.com/users/madazaharia/subscriptions",
   "organizations_url": "https://api.github.com/users/madazaharia/orgs",
   "repos_url": "https://api.github.com/users/madazaharia/repos",
   "events_url": "https://api.github.com/users/madazaharia/events{/privacy}",
   "received_events_url": "https://api.github.com/users/madazaharia/received_events",
   "type": "User",
   "site_admin": false,
   "name": "Zaharia Madalin-Constantin",
   "company": null,
   "blog": "",
   "location": "Bucharest",
   "email": null,
   "hireable": true,
   "bio": "Software Engineer",
   "twitter_username": "mada_zaharia",
   "public_repos": 27,
   "public_gists": 0,
   "followers": 8,
   "following": 52,
   "created_at": "2017-01-11T22:12:11Z",
   "updated_at": "2023-09-28T18:51:33Z"
 }
 */
