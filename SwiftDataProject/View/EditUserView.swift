//
//  EditUserView.swift
//  SwiftDataProject
//
//  Created by Fernando Callejas on 04/08/24.
//

import SwiftUI
import SwiftData

struct EditUserView: View {
    @Bindable var user: User
    
    var body: some View {
        Form {
            TextField("Name", text: $user.name)
            TextField("City", text: $user.city)
            DatePicker("Join Date", selection: $user.joinDate)
        }
        .navigationTitle("Edit User")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: User.self, configurations: config)
        
        let testUser = User(name: "Jordan", city: "Test City", joinDate: .now)
        return EditUserView(user: testUser)
            .modelContainer(container)
    } catch {
        return Text("Error creating container: \(error.localizedDescription)")
    }
}
