# Test Edge Cases

## Test conversion of some tricky edge cases

## Created with Freeplane

- Freeplane version 1.9.11

## Deep nesting

- Subnote 1
  - Subsubnote
    - Subsubsubnote
      - Level 6
        - Level 7
          - Level 8
            - Level 9
- Subnote 2

## Subnote with long text

- Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

## Tests for icons

- [ ] :two: :exclamation: Multiple icons

## Different empty nodes

- 
- 
  - 
- 
  - Non empty subnote

## Empty nodes with icons and links

- :information_source: 
- [#ID_715013095](#ID_715013095)
-  [#1297938625](#1297938625)
-  {#ID_931962064}
-  {#290194465}
- Target 1 {#ID_715013095}
- Target 2 {#1297938625}
- [Source 1](#ID_931962064)
- Source 2 [#290194465](#290194465)

## Some combination of features

- Link to URL containing icons
  - :heavy_check_mark: :heavy_multiplication_x: :calendar: <https://www.freeplane.org/wiki/index.php/Home>
- Connection and hyperlink from the same node
  - [Source for cConnection and hyperlink](#ID_333936676) [#1658607488](#1658607488)
  - Target for connection {#1658607488}
  - Target for hyperlink {#ID_333936676}
- Target for hyperlink and connection at the same time
  - [Hyperlink](#ID_1994176066)
  - Connection [#793702444](#793702444)
  - Target for hyperlink and connection {#793702444} {#ID_1994176066}
- Target of connection is source of hyperlink
  - Connection to node [#470163758](#470163758)
  - [Target for connection with link](#ID_1195614690) {#470163758}
  - Target for hyperlink {#ID_1195614690}
- Target for hyperlink is source of connection
  - [Local hyperlink forward](#ID_244066349)
  - Target for hyperlink and source of connection {#ID_244066349} [#244066349](#244066349)
  - Target for connection {#244066349}
- Multiple connections to the same target
  - Source 1 [#170577076](#170577076)
  - Source 2 [#1800778683](#1800778683)
  - Target for multiple connections {#170577076}
- Multiple connections from the same source
  - Source of multiple connections [#1349627846](#1349627846)
  - Target 1 {#1349627846}
  - Target 2 {#1349627846}

## 8-bit characters

- ä,ö,ü,ß
- Ä,Ö,Ü
- Übergrößengeschäft
