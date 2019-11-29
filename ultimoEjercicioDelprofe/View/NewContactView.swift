import SwiftUI

struct NewContactView: View {

    @ObservedObject contactVM : ContactViewModel
    @Binding var showingModal: Bool
    @State var name: String

    var body: some View {
        VStack {
            TextField("Nombre", text: $name)
            Button( action: {
                self.contactVM.addContact(name: self.name)
                self.showingModal.toogle()
            }) {
                Text("Add")
            }
        }
    }
    
}