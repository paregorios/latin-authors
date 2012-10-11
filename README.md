latin-authors
=============

creating linked data for Latin authors and works

The goal of this project is to produce stable Uniform Resource Identifiers (URIs) for Latin authors and works, more or less on the model of http://www.paregorios.org/resources/roman-emperors/ (cf: https://github.com/paregorios/roman-emperors).

Major considerations:
-------------------------

 * Create/Maintain alignment with the Stoa/CTS registry
 * Collate against other key lists including the IAM abbreviations list, the PHI Latin texts list, ???
 * Collate against VIAF and dbpedia
 * Provide URIs for associated information resources like wikipedia articles on authors and texts and translations available online

Current state of the work
----------------------------

The "fodder" folder contains a copy of the Stoa/CTS registry as supplied by Christopher Blackwell. It also contains a copy of the IAM abbreviations list provided by Tom Elliott. An XSL file (fodder/xsl/iam2csv.xsl) is included that can produce CSV from the IAM xml file after stripping all entries that include a "Greek Title" (and the resulting CSV file is also in the fodder directory). This is in preparation for being able to pull this and other data into Google Refine for munging.

