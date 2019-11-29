
import SwiftUI


//Crear tu modelo contacto
class ContactViewModel: ObservableObject {
    @Published var contacts = [COntact]

    init(){
        do {
            self.contacts = try context.fetch(Contact.fetchRequest())
        }catch (let error){
            print(error)
        }
    }

    func addContact(name: String) {

        let contact = Contact(context: context)
        contact.name = name
        self.contacts.append(contact)
        saveContext()
    }

    func saveContext(){
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
}
