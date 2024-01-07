import Foundation
import SwiftUI

class SomethingWentWrongThreeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formText: String = ""
    @Published var isValidFormText: Bool = true
    @Published var formoneText: String = ""
    @Published var formtwoText: String = ""
    @Published var isValidFormtwoText: Bool = true
    @Published var formthreeText: String = ""
    @Published var isValidFormthreeText: Bool = true
    @Published var priceText: String = ""
    @Published var formfourText: String = ""
}
