
import SwiftUI


//Agregar el enviroment a la linea 32 de scenedelegate

//Se debe instanciar -> var contactVM = ContactViewModel()
// linea 33 -> contectvView.environmentObject(contactVM)
struct ContactView: View {

    @State var showingModal = false
    @EnvironmentObject var contactVM: ContactViewModel

    var body: some View {
        Button( action:{
         
            self.showingModal.toogle()
        })
        {   
            Text("Add contact")
        }.sheet(isPresented: $showingModal, context: {
            NewContactView(contactVM: self.contactVM, showingModal:
            self.$showingModal, name: "")
        })
    }
    
}
