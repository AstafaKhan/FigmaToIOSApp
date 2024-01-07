import Foundation
import SwiftUI

class AccountFormOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formText: String = ""
    @Published var isValidFormText: Bool = true
    @Published var formoneText: String = ""
    @Published var isValidFormoneText: Bool = true
}
