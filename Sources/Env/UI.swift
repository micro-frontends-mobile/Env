//
//  UI.swift
//  
//
//  Created by Dongdong Zhang on 2022/5/23.
//

import Foundation
import SwiftUI

enum UI {
  static func color(token: Token) -> Color {
    switch token {
      case .backgroundColor:
        return Color(uiColor: duality(
          light: UIColor(red: 243/255, green: 243/255, blue: 222/255, alpha: 1), // #f3f3de
          dark: .gray
        ))
      case .tabBarTintColor:
        return Color(uiColor: duality(
          light: UIColor(red: 241/255, green: 215/255, blue: 54/255, alpha: 1), // #f1d736
          dark: UIColor(red: 197/255, green: 171/255, blue: 6/255, alpha: 1) // #c5ab06
        ))
    }
  }

  private static func duality(light: UIColor, dark: UIColor) -> UIColor {
    return UIColor { traitCollection -> UIColor in
      traitCollection.userInterfaceStyle == .light ? light : dark
    }
  }
}

enum Token {
  case backgroundColor
  case tabBarTintColor
}


