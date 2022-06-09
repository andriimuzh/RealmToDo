//
//  TaskRow.swift
//  Realm ToDo
//
//  Created by Andrii Muzh on 08.06.2022.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack {
            Image(systemName: completed ? "checkmark.circle" : "circle")
                .padding(.trailing, 4)
            Text(task)
                .strikethrough(completed)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Some task", completed: false)
    }
}
