//
//  TaskView.swift
//  ToDo
//
//  Created by Jorge Mayta on 11/02/26.
//

import SwiftUI

struct TaskView: View {
    @Environment(\.dismiss) var dismiss
    var task: Task?

    
    @State var name = ""
    let onSave: (Task) -> Void
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TextField("Name", text: $name)
                    .padding()
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding()
            }
            .navigationBarTitle(task != nil ? "Edit task" : "New task")
            .toolbar {
                ToolbarItem {
                    Button {
                        let task = Task(id: self.task?.id ?? UUID(), name: name)
                        onSave(task)
                        dismiss()

                        
                    } label: {
                        Image(systemName: "checkmark")
                    }

                }
            }
            .onAppear {
                if let task = task {
                    self.name = task.name
                }
            }
        }
    }
}

#Preview {
    TaskView { _ in
        
    }
}
