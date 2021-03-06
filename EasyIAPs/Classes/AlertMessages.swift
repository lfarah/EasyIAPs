//
//  AlertMessages.swift
//  Pods
//
//  Created by Alvin Varghese on 5/28/16.
//
//

import Foundation
import UIKit

//MARK: Alert Messages

public enum EasyIAPErrorType : Int
{
    // Receipt validation error
    
    case CouldNotReadJSON = 21000, DataMalformedOrMissing = 21002, CouldNotAuthenticate, DoesNotMatchSharedSecret, ReceiptServerNotAvailable, SubscriptionExpired, TestEnvironmentReceipt, ProductionEnvironmentReceipt
    
    // In App Purchase error
    
    case NoProducts = 100, NoProductFound, CantMakePayments, NotAValidReceiptURL, DidntMakeAnyPayments, CouldNotRestore, ProductRequestFailed, CoultNotParseJSONFromRecieptServer, StatusKeyDoesNotExistsInJSON, CouldNotConvertReceiptURLToNSData, ReceiptURLDoesNotExists, CouldNotReadAppStoreReceiptURL, NoResponseFromServer
    
    case NoError = 500, CantRunInSimulator
}

extension EasyIAPErrorType
{
    var description : String {
        
        switch self
        {
            // Receipt validation error
            
        case .CouldNotReadJSON : return "The App Store could not read the JSON object you provided"
        case .DataMalformedOrMissing : return "The data in the receipt-data property was malformed or missing"
        case .CouldNotAuthenticate : return "The receipt could not be authenticated"
        case .DoesNotMatchSharedSecret : return "The shared secret you provided does not match the shared secret on file for your account"
        case .ReceiptServerNotAvailable : return "The receipt server is not currently available"
        case .SubscriptionExpired : return "This receipt is valid but the subscription has expired."
        case .TestEnvironmentReceipt : return "This receipt is from the test environment, but it was sent to the production environment for verification. Send it to the test environment instead"
        case .ProductionEnvironmentReceipt : return "This receipt is from the production environment, but it was sent to the test environment for verification. Send it to the production environment instead"
            
            // In App Purchase error
            
        case .NoProducts : return "There are no products available"
        case .NoProductFound : return "No product found in iTunesConnect for the requested product name"
        case .CantMakePayments : return "You can not make payments"
        case .NotAValidReceiptURL : return "Not a valid url, Please check your receipt validating server url"
        case .DidntMakeAnyPayments : return "You did not make any payments"
        case .CouldNotRestore : return "Could not restore the requested product"
        case .ProductRequestFailed : return "Product request failed"
        case .CoultNotParseJSONFromRecieptServer : return "Could not parse JSON recieved from receipt server"
        case .StatusKeyDoesNotExistsInJSON : return "Status key does not exists in receipt response JSON"
        case .CouldNotConvertReceiptURLToNSData : return "Could not convert receipt url to NSData"
        case .ReceiptURLDoesNotExists : return "Receipt URL does not exists"
        case .CouldNotReadAppStoreReceiptURL : return "Could not read App Store receipt URL"
        case .NoResponseFromServer : return "No response from server"
        
        case .NoError : return "No Error"
        case .CantRunInSimulator : return "Please run the app in Physical device rather than in iOS Simulator"
        }
    }
}

extension Int
{
    var easyIAPErrorType : EasyIAPErrorType
    {
        switch self
        {
            // Receipt validation error
            
        case 21000 : return EasyIAPErrorType.CouldNotReadJSON
        case 21002 : return EasyIAPErrorType.DataMalformedOrMissing
        case 21003 : return EasyIAPErrorType.CouldNotAuthenticate
        case 21004 : return EasyIAPErrorType.DoesNotMatchSharedSecret
        case 21005 : return EasyIAPErrorType.ReceiptServerNotAvailable
        case 21006 : return EasyIAPErrorType.SubscriptionExpired
        case 21007 : return EasyIAPErrorType.TestEnvironmentReceipt
        case 21008 : return EasyIAPErrorType.ProductionEnvironmentReceipt
            
            // In App Purchase error
            
        case 100 : return EasyIAPErrorType.NoProducts
        case 101 : return EasyIAPErrorType.NoProductFound
        case 102 : return EasyIAPErrorType.CantMakePayments
        case 103 : return EasyIAPErrorType.NotAValidReceiptURL
        case 104 : return EasyIAPErrorType.DidntMakeAnyPayments
        case 105 : return EasyIAPErrorType.CouldNotRestore
        case 106 : return EasyIAPErrorType.ProductRequestFailed
        case 107 : return EasyIAPErrorType.CoultNotParseJSONFromRecieptServer
        case 108 : return EasyIAPErrorType.StatusKeyDoesNotExistsInJSON
        case 109 : return EasyIAPErrorType.CouldNotConvertReceiptURLToNSData
        case 110 : return EasyIAPErrorType.ReceiptURLDoesNotExists
        case 111 : return EasyIAPErrorType.CouldNotReadAppStoreReceiptURL
        case 112 : return EasyIAPErrorType.NoResponseFromServer
        default : ()
        }
        return EasyIAPErrorType.NoError
    }
}



