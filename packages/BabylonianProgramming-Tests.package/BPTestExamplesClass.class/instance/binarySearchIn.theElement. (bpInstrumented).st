private
binarySearchIn: aCollection theElement: anElement
<layer: #bpInstrumented>
< exampleNamed: 'basic' self: #empty given: # ( 1 2 3 ) and: 3 > < exampleNamed: 'not found' self: #empty given: # ( 1 2 3 ) and: 4 > < exampleNamed: 'error example' self: #empty given: # ( 1 2 ) and: 2 > < exampleNamed: 'complex example' self: #empty given: '{DateAndTime yesterday . DateAndTime tomorrow . DateAndTime now}' and: 'DateAndTime now' >
| index low high test distance |  low := 1.
high := aCollection size.
distance := (self bpTrace: (high - low) forProbe: 686534 inContext: thisContext).
[  high < low ] whileFalse: [  index := high + low // 2.
 ( test := anElement < ( (self bpTrace: (aCollection at: index) forProbe: 1082664 inContext: thisContext) ) ) ifTrue: [  high := index - 1 ] ifFalse: [  anElement > ( aCollection at: index )  ifTrue: [  low := index + 1 ] ifFalse: [  ^ (self bpTrace: (index) forProbe: 6094846 inContext: thisContext) ] ] ].