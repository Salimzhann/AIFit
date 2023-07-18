//
//  ViewExtansion.swift
//  AIFit
//
//  Created by Manas Salimzhan on 10.07.2023.
//
import SwiftUI

extension View {
    func endEditing(_ force: Bool) {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let windows = windowScene.windows
            windows.forEach { $0.endEditing(force) }
        }
    }
}
