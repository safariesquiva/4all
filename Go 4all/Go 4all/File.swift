//
//  File.swift
//  Go 4all
//
//  Created by Isabella Zaffari on 18/12/20.
//

import Foundation

// convert an NSDate object to a timestamp string
func convertToTimestamp(date: NSDate) -> String {
    return String(Int64(date.timeIntervalSince1970 * 1000))
}

// Convert the timestamp string to an NSDate object
func convertFromTimestamp(seconds: String) -> NSDate {
    let time = (seconds as NSString).doubleValue/1000.0
    return NSDate(timeIntervalSince1970: TimeInterval(time))
}

// format the date using a timestamp
func formatDateTime(timestamp: String) -> String {
    let dateFormatter = DateFormatter()
    
    let date = convertFromTimestamp(seconds: timestamp)
    return dateFormatter.string(from: date as Date)
}
