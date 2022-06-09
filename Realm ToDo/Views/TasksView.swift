//
//  TasksView.swift
//  Realm ToDo
//
//  Created by Andrii Muzh on 08.06.2022.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("My tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            List(realmManager.tasks) { task in 
                if !task.isInvalidated {
                    TaskRow(task: task.title, completed: task.completed)
                        .onTapGesture {
                            realmManager.updateTasks(id: task.id, completed: !task.completed)
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                realmManager.deleteTask(id: task.id)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
            }
            .listRowSeparator(.hidden)
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealmManager())
    }
}
