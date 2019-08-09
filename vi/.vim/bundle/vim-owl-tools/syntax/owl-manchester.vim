" Vim syntax file
" Language:     OWL Manchester Syntax
" Maintainer:   Mateusz Paprocki <mattpap@gmail.com>
" Last Change:  2010 February 24
"
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match owlDelimiter ":\|,\|^\|\[\|\]\|{\|}"

syn keyword owlRestriction     that some only value min exactly max
syn keyword owlOperator        not and or o

syn keyword owlFacet           length minLength maxLength pattern langPattern
syn match   owlFacet           "<=\|<\|>=\|>"

syn keyword owlCharacteristic  Functional InverseFunctional Reflexive Irreflexive Symmetric Asymmetric Transitive

syn keyword owlDirective contained Prefix
syn keyword owlDirective contained Ontology
syn keyword owlDirective contained Import

syn keyword owlAnnotations contained Annotations

syn keyword owlFrame contained Datatype
syn keyword owlFrame contained Class
syn keyword owlFrame contained ObjectProperty
syn keyword owlFrame contained DataProperty
syn keyword owlFrame contained AnnotationProperty
syn keyword owlFrame contained Individual

syn keyword owlMisc contained EquivalentClasses
syn keyword owlMisc contained DisjointClasses
syn keyword owlMisc contained EquivalentProperties
syn keyword owlMisc contained DisjointProperties
syn keyword owlMisc contained EquivalentProperties
syn keyword owlMisc contained DisjointProperties
syn keyword owlMisc contained SameIndividual
syn keyword owlMisc contained DifferentIndividuals

syn keyword owlDatatypeDesc contained EquivalentTo

syn cluster owlDescription contains=owlDatatypeDesc
hi link owlDatatypeDesc owlDescription

syn keyword owlClassDesc contained SubClassOf
syn keyword owlClassDesc contained EquivalentTo
syn keyword owlClassDesc contained DisjointWith
syn keyword owlClassDesc contained DisjointUnionOf
syn keyword owlClassDesc contained HasKey

syn cluster owlDescription add=owlClassDesc
hi link owlClassDesc owlDescription

syn keyword owlObjectPropertyDesc contained Domain
syn keyword owlObjectPropertyDesc contained Range
syn keyword owlObjectPropertyDesc contained Characteristics
syn keyword owlObjectPropertyDesc contained SubPropertyOf
syn keyword owlObjectPropertyDesc contained EquivalentTo
syn keyword owlObjectPropertyDesc contained DisjointWith
syn keyword owlObjectPropertyDesc contained InverseOf
syn keyword owlObjectPropertyDesc contained SubPropertyChain

syn cluster owlDescription add=owlObjectPropertyDesc
hi link owlObjectPropertyDesc owlDescription

syn keyword owlDataPropertyDesc contained Domain
syn keyword owlDataPropertyDesc contained Range
syn keyword owlDataPropertyDesc contained Characteristics
syn keyword owlDataPropertyDesc contained SubPropertyOf
syn keyword owlDataPropertyDesc contained EquivalentTo
syn keyword owlDataPropertyDesc contained DisjointWith

syn cluster owlDescription add=owlDataPropertyDesc
hi link owlDataPropertyDesc owlDescription

syn keyword owlAnnotationPropertyDesc contained Domain
syn keyword owlAnnotationPropertyDesc contained Range
syn keyword owlAnnotationPropertyDesc contained SubPropertyOf

syn cluster owlDescription add=owlAnnotationPropertyDesc
hi link owlAnnotationPropertyDesc owlDescription

syn keyword owlIndividualDesc contained Types
syn keyword owlIndividualDesc contained Facts
syn keyword owlIndividualDesc contained SameAs
syn keyword owlIndividualDesc contained DifferentFrom

syn cluster owlDescription add=owlIndividualDesc
hi link owlIndividualDesc owlDescription

syn match owlStatement    "[[:alpha:]]\+\ze:" contains=owlDirective,owlAnnotations,owlFrame,owlMisc,@owlDescription

syn match owlNumberType   "\<xsd:int\>"
syn match owlNumberType   "\<owl:real\>"
syn match owlNumberType   "\<owl:rational\>"
syn match owlNumberType   "\<xsd:decimal\>"
syn match owlNumberType   "\<xsd:integer\>"
syn match owlNumberType   "\<xsd:nonNegativeInteger\>"
syn match owlNumberType   "\<xsd:nonPositiveInteger\>"
syn match owlNumberType   "\<xsd:positiveInteger\>"
syn match owlNumberType   "\<xsd:negativeInteger\>"
syn match owlNumberType   "\<xsd:long\>"
syn match owlNumberType   "\<xsd:int\>"
syn match owlNumberType   "\<xsd:short\>"
syn match owlNumberType   "\<xsd:byte\>"
syn match owlNumberType   "\<xsd:unsignedLong\>"
syn match owlNumberType   "\<xsd:unsignedInt\>"
syn match owlNumberType   "\<xsd:unsignedShort\>"
syn match owlNumberType   "\<xsd:unsignedByte\>"

syn match owlStringType   "\<xsd:string\>"
syn match owlStringType   "\<xsd:normalizedString\>"
syn match owlStringType   "\<xsd:token\>"
syn match owlStringType   "\<xsd:language\>"
syn match owlStringType   "\<xsd:Name\>"
syn match owlStringType   "\<xsd:NCName\>"
syn match owlStringType   "\<xsd:NMTOKEN\>"

syn match owlBinaryType   "\<xsd:hexBinary\>"
syn match owlBinaryType   "\<xsd:base64Binary\>"

syn match owlDateTimeType "\<xsd:dateTime\>"
syn match owlDateTimeType "\<xsd:dateTimeStamp\>"

hi link owlNumberType   owlType
hi link owlStringType   owlType
hi link owlBinaryType   owlType
hi link owlDateTimeType owlType

syn match owlNumber   "\(\<\|-\|+\)\d\+\(\.\d\+\)\?\(\(e\|E\)\(+\|-\)\?\d\+\)\?\>"
syn match owlNumber   "\(\<\|-\|+\)INF\>\|\<NaN\>"

syn region owlString   start=+"+        end=+"+ contains=owlInteger,owlFloat,@Spell
syn region owlResource start="<http://" end=">"

hi link owlCharacteristic  Type
hi link owlRestriction     Special
hi link owlDelimiter       Delimiter
hi link owlAnonymous       Delimiter
hi link owlOperator        Operator
hi link owlFacet           Operator
hi link owlType            Type
hi link owlNumber          Number
hi link owlString          String
hi link owlResource        Comment

hi link owlDirective       Statement
hi link owlAnnotations     Constant
hi link owlFrame           Statement
hi link owlMisc            Statement
hi link owlDescription     Special

let b:current_syntax = "owl-machester"

