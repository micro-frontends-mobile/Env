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
}
