//
//  TaskListViewModel.swift
//  ToDo
//
//  Created by Jorge Mayta on 11/02/26.
//

import Combine

class TaskListViewModel: ObservableObject {
    
    @Published private(set) var tasks: [Task] = []
    
    private let taskDao = TaskDao.shared
    
    func addTask(task: Task) {
        taskDao.add(task: task)
        getAllTasks()
    }
    
    func getAllTasks() {
        tasks = taskDao.fetchAll()
    }
    
    func removeTask(task: Task){
        taskDao.remove(task: task)
        getAllTasks()
    }
    
    func updateTask(task: Task){
        taskDao.udpate(task: task)
        getAllTasks()
    }
}
