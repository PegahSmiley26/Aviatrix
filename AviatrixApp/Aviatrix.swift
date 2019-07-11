//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var distanceTraveled = 0
    var currentLocation = "St. Louis" 
    
    var author = ""
    
    //saying who created this plane/airline
    init(myAuthor: String) {
        author = myAuthor
    }
    
    //this func will tell us if the airplane is running or not
    
    var running = false
    
    //starts the airplane which means it's running
    func start() -> Bool { //boolean or bool means if something is true or false
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: currentLocation)
        currentLocation = destination
    }
    
    //tell the planes how far places are
    //i need the place and distance
    func distanceTo(target : String, current: String) -> Int {
        //i need to get info from the AviatrixData file
        let data = AviatrixData()
        //this is how we save values from adictionary👇🏽
        return data.knownDistances[current]![target]!
        //! can also mean "there is def data" so the "optional" thing doesn't come up
    }
    
    //i want to tell every plane that i create from the aviatrix class where they can fly
    func knownDestinations() -> [String] {
        //need to chane this func so I return all the options for destinations
        //info from AviatrixData
        let data = AviatrixData()
        //calling AviatrixData 
        return Array(data.knownDistances.keys)
        //stored all the destinations in an array 👆🏽
     
    }
    
//    func distanceTraveled(current: String, target: String) -> [Int] {
//        let data = AviatrixData()
//        return [data.knownDistances[current]![target]!]
//
//        }

    
//func fuelLevel(




}
