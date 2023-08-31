//
//  ReportPdfView.swift
//  Test_PDF
//
//  Created by Shakeel Vohra on 08/07/2023.
//
import SwiftUI
import PDFKit



struct PDFKitView: UIViewRepresentable {
    let audit: AuditStruct
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {
        //if let url = URL(string: audit.pdfUrl)
        let url  =  Bundle.main.url(forResource: audit.pdfName, withExtension: "pdf")!
            uiView.document = PDFDocument(url: url)!
            uiView.goToFirstPage(nil)
        }
    }


struct ReportPdfView: View {
    let audit: AuditStruct
    
    var body: some View {
        
        PDFKitView(audit: audit)
            .padding(.top, 150)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ReportPdfView_Previews: PreviewProvider {
    static var previews: some View {
        ReportPdfView(audit: audits[0])
    }
}
