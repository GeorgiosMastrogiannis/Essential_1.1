import UIKit

struct LoggedInUser {}
struct FeedItem {}

// Api Module
class ApiClient {
    static let shared = ApiClient()
    func login(completion: (LoggedInUser) -> Void) {}
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

// Login Module
class LoginViewController: UIViewController {
    var api = ApiClient.shared
    func didTapLogInButton() {
        api.login() { user in
            //show feed  screen
        }
    }
}

// Feed Module
class FeedViewController: UIViewController {
    var api = ApiClient.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        api.loadFeed { loadedItems in
            //update UI
        }
    }
}
