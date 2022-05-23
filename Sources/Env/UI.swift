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
          dark: UIColor(red: 134/255, green: 112/255, blue: 24/255, alpha: 1) // #867018
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
}


