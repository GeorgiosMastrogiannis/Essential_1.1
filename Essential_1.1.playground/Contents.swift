import UIKit

// Api Module
class ApiClient {
    static let shared = ApiClient()
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

// Login Module
struct LoggedInUser {}
extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}
class LoginViewController: UIViewController {
    var api = ApiClient.shared
    func didTapLogInButton() {
        api.login() { user in
            //show feed  screen
        }
    }
}

// Feed Module
struct FeedItem {}
extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}
class FeedViewController: UIViewController {
    var api = ApiClient.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        api.loadFeed { loadedItems in
            //update UI
        }
    }
}
