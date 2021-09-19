//
//  ViewController.swift
//  PDFkitDemo
//
//  Created by Decagon on 18/09/2021.
//

import PDFKit
import UIKit


class ViewController: UIViewController, PDFViewDelegate {

var pdfView = PDFView()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(pdfView)
    
    guard let url = Bundle.main.url(forResource: "mvvm_tutorial", withExtension: "pdf") else {return}
    
    guard let document = PDFDocument(url: url) else {return}
    
    pdfView.document = document
    pdfView.autoScales = true
    pdfView.backgroundColor = .white
   
//    pdfView.delegate = self
//
//    let newDocument = PDFDocument()
//    guard let page = PDFPage(image: UIImage(systemName: "house")!) else {return}
//    newDocument.insert(page, at: 0)
//    pdfView.document = newDocument
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    pdfView.frame = view.bounds
  }


}

