//
//  RoutineStruct.swift
//  PatternDelegateCrudViewTalbe
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

struct Routine {
    var name: String
    var muscle: String
    var excerciseCount: String
    var timeRoutine: String
    init(name: String, muscle: String, excerciseCount: String, timeRoutine: String) {
        self.name = name
        self.muscle = muscle
        self.excerciseCount = excerciseCount
        self.timeRoutine = timeRoutine
    }
}
