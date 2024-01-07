//
//  Mohammadastafasapplication1App.swift
//  Mohammadastafasapplication1

import SwiftUI

@main
struct Mohammadastafasapplication1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            CodeVerificationFourView()
        }
    }
}
