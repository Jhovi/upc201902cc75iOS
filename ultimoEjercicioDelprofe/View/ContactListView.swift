
import SwiftUI

struct ContactListView: View {

    @EnvironmentObject var contactVM : ContactViewModel

    var body: some View {
        List{
            ForEach(self.contactVM.contacts, id: \.self){ contact in
                Text(contact.name!)
                }
        }
    }
    
}