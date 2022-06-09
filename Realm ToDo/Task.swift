//
//  Task.swift
//  Realm ToDo
//
//  Created by Andrii Muzh on 08.06.2022.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
