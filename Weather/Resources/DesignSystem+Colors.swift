//
//  Colors.swift
//  Weather
//
//  Created by Małgorzata Dziubich on 05/11/2024.
//

import SwiftUI

extension DesignSystem {

    enum Color: String {

        // MARK: - Content

        case contentPrimary
        case contentSecondary
        case contentDisabled
        case contentBorder
        case contentAccent

        // MARK: - Background

        case backgroundPrimary
        case backgroundSecondary

        var value: SwiftUI.Color {
            SwiftUI.Color(self.rawValue)
        }
    }
}
