//
//  MainTabView.swift
//  GSTCycling
//
//  Created by Selcuk Albut on 9.07.2026.
//

import SwiftUI

struct MainTabView: View {

    var body: some View {
        TabView {

            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            LiveView()
                .tabItem {
                    Label("Live", systemImage: "dot.radiowaves.left.and.right")
                }
            
            RaceView()
                .tabItem {
                    Label("Race", systemImage: "flag.checkered")
                }
            
            RidersView()
                .tabItem {
                    Label("Riders", systemImage: "figure.outdoor.cycle")
                }
            
            TeamsView()
                .tabItem {
                    Label("Teams", systemImage: "person.3.fill")
                }

            StandingsView()
                .tabItem {
                    Label("Standings", systemImage: "trophy.fill")
                }
            
        }
    }
}

#Preview {
    MainTabView()
}
