//
//  Router.swift
//
//
//  Created by Dongdong Zhang on 2022/5/22.
//
import SwiftUI

protocol Routing: ObservableObject {
  func navigate<Source: View>(to: String, source: () -> Source) -> AnyView
  func route(_ to: String) -> AnyView
}

open class Router: ObservableObject {
  public init() {}
  open func navigate<Source>(to: String, source: () -> Source) -> AnyView where Source : View {
    AnyView(NavigationLink {
      route(to)
    } label: {
      source()
    })
  }

  open func route(_ to: String) -> AnyView {
    AnyView(Text("\(to)"))
  }
}
