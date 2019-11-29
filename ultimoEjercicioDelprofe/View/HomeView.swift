
import SwiftUI

//cambiar el app delegate por homeview
struct HomeView: View {
    var body: some View {
        TabView{
            ContactView().tabItem{
                Text("Contact")
            }
            ContactListView().tabItem{
                Text("List")
            }
        }
    }
    
}