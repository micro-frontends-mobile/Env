//
//  Configuration.swift
//  
//
//  Created by Dongdong Zhang on 2022/5/23.
//

import Foundation
import SwiftUI

public struct Configuration {
  public init() {}
  public var backgroundColor: Color {
    UI.color(token: .backgroundColor)
  }

  public var tabBarTintColor: Color {
    UI.color(token: .tabBarTintColor)
  }

  public var host: String {
    "https://content.demo.microfrontends.com"
  }

  public var demoHost: String {
    "https://demo.microfrontends.com"
  }
}
