//
//  HealthDataProvider.swift
//  ActivityStats
//
//  Created by Mohammed Al-Dahleh on 2021-02-02.
//

import Foundation
import HealthKit

class HealthDataProvider {
    typealias RequestHealthDataCompletionHandler = (Bool, Error?) -> Void
    
    private static let readData: Set<HKObjectType>? = Set(
        [
            HKObjectType.workoutType(),
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.quantityType(forIdentifier: .appleExerciseTime)!,
            HKObjectType.quantityType(forIdentifier: .appleStandTime)!,
            HKObjectType.quantityType(forIdentifier: .distanceCycling)!,
            HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
            HKObjectType.quantityType(forIdentifier: .distanceCycling)!
        ]
    )
    
    private let healthStore = HKHealthStore()
    
    func requestHealthAccess(completion: @escaping RequestHealthDataCompletionHandler) {
        guard HKHealthStore.isHealthDataAvailable() else {
            completion(false, nil)
            return
        }
        
        healthStore.requestAuthorization(toShare: nil, read: HealthDataProvider.readData, completion: completion)
    }
    
    func earliestDataDate() -> Date {
        return healthStore.earliestPermittedSampleDate()
    }
}
