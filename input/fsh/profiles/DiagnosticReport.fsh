Profile: DiagnosticReportProfile
Parent: DiagnosticReport
Id: DiagnosticReportProfile
Title: "DiagnosticReportProfile"
Description: "DiagnosticReport"
* identifier 0..1
* status 1..1
* category 0..*
* code 1..1
* subject 0..1
* encounter 0..1
* effective 0..1
* effective.effectiveDateTime 0..1
* effective.effectivePeriod 0..1
* perfomer 0..*
* specimen 0..*