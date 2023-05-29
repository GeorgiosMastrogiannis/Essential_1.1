import UIKit

// Singleton
final class ApiClient {
    static let instance = ApiClient()
    
    private init() {}
}


// singleton
URLSession.shared
URLSession()

let client = ApiClient.instance
