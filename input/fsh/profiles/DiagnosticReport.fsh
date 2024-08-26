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
* effective[x] 0..1
* effectiveDateTime 0..1
* effectivePeriod 0..1
* performer 0..*
* specimen 0..*