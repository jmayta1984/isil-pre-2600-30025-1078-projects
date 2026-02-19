//
//  TaskListView.swift
//  ToDo
//
//  Created by Jorge Mayta on 11/02/26.
//

import SwiftUI

struct TaskListView: View {
    
    @StateObject private var viewModel = TaskListViewModel()
    @State private var newTask = false
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.tasks) { task in
                    Text(task.name)
                        .swipeActions(edge:.trailing) {
                            Button {
                                viewModel.removeTask(task: task)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)

                        }
                }
            }
            .toolbar {
                
                ToolbarItem {
                    Button {
                        newTask.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            .navigationDestination(isPresented: $newTask) {
                TaskView { task in
                    viewModel.addTask(task: task)
                }
            }
        }
        .onAppear {
            viewModel.getAllTasks()
        }
    }
}

#Preview {
    TaskListView()
}
