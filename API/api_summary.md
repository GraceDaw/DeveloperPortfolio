# API Interaction Summary

## 1. What is a REST API?

A REST API allows different applications to communicate over HTTP.
It uses methods such as GET to request data from a server.
The server commonly returns data in JSON format.

## 2. APIs Used

### GitHub REST API

Endpoint:
https://api.github.com/users/GraceDaw

Retrieved public GitHub profile information, including:
- Name
- Public repository count
- Followers
- Account creation date

Saved response: `github_profile.json`

### JSONPlaceholder API

Endpoint:
https://jsonplaceholder.typicode.com/posts

Retrieved 100 sample posts from a testing API.

Saved response: `sample_posts.json`

## 3. HTTP Status Codes

- **200 OK:** The request was successful.
- **404 Not Found:** The requested resource could not be found.

## 4. Role of curl and jq

- **curl:** Sends HTTP requests and downloads API responses.
- **jq:** Parses JSON data and extracts specific fields.

Examples:

`jq 'length' API/sample_posts.json`

Counts the number of posts in the JSON array.

`jq '.[0]' API/sample_posts.json`

Displays the first post.

`jq '{name: .name, repos: .public_repos}' API/github_profile.json`

Extracts selected fields from the GitHub profile.
