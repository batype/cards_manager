//
//  ViewController.swift
//  cards_manager
//
//  Created by 邵松 on 2023/10/31.
//

import Foundation
import CoreNFC
import UIKit


class NFCReaderViewController: UIViewController, NFCNDEFReaderSessionDelegate {
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        // Handle error
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        for message in messages {
            for record in message.records{
                if let payload = String(data: record.payload, encoding: .utf8) {
                    print("NFC payload: \(payload)")
                }
            }
        }
    }
    
    var nfcSession: NFCNDEFReaderSession?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scanButton = UIButton(type: .system)
        scanButton.setTitle("Scan NFC", for: .normal)
        scanButton.addTarget(self, action: #selector(startNFCScan), for: .touchUpInside)
        self.view.addSubview(scanButton)
    }
    
    @objc func startNFCScan() {
        if NFCNDEFReaderSession.readingAvailable {
            nfcSession = NFCNDEFReaderSession(delegate: self, queue: DispatchQueue.main, invalidateAfterFirstRead: false)
            nfcSession?.begin()
        } else {
            // NFC not supported
            
        }
    }
}
