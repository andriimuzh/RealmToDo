//
//  AddTaskView.swift
//  Realm ToDo
//
//  Created by Andrii Muzh on 08.06.2022.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var text: String = ""
    @State private var date = Date()
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity,  alignment: .leading)
            TextField("Enter your task here", text: $text)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if text != "" {
                    realmManager.addTask(taskTitle: text)
                    dismiss()
                }
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.primary)
                    .cornerRadius(25)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
