//
//  AddButton.swift
//  Realm ToDo
//
//  Created by Andrii Muzh on 08.06.2022.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Image(systemName: "plus.circle.fill")
            .resizable()
            .foregroundColor(.blue)
            .frame(width: 50, height: 50)
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
