//
//  ContentView.swift
//  IntrospectSwiftUI
//
//  Created by Ramill Ibragimov on 05.02.2021.
//

import SwiftUI
import Introspect

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    List {
                        Text("Introspect")
                        Text("Introspect")
                        Text("Introspect")
                    }
                }
                .introspectTableView(customize: { (tableView) in
                    tableView.backgroundColor = UIColor.systemGreen
                })
                .navigationBarTitle("Introspect")
                .navigationBarTitleDisplayMode(.inline)
            }
            .introspectNavigationController(customize: { (navigationController) in
                navigationController.navigationBar.barTintColor = UIColor.systemGreen
            })
            .tabItem {
                Image(systemName: "paperclip.badge.ellipsis")
            }
        }
        .introspectTabBarController { (tabBarController) in
            tabBarController.tabBar.barTintColor = UIColor.systemGreen
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
