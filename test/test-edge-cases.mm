<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Test Edge Cases" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1639427305465" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" associatedTemplateLocation="template:/standard-1.6.mm" fit_to_viewport="false" show_tags="UNDER_NODES"/>
    <tags category_separator="::"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="26" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Test conversion of some tricky edge cases" POSITION="bottom_or_right" ID="ID_1961287667" CREATED="1636416902754" MODIFIED="1639428173717">
<edge COLOR="#ff0000"/>
</node>
<node TEXT="Created with Freeplane" POSITION="bottom_or_right" ID="ID_1849349514" CREATED="1636418324809" MODIFIED="1636418337011">
<edge COLOR="#007c00"/>
<node TEXT="Freeplane version 1.12.6" ID="ID_442386573" CREATED="1636418338818" MODIFIED="1730055664719"/>
</node>
<node TEXT="Deep nesting" POSITION="bottom_or_right" ID="ID_1460858956" CREATED="1636416925057" MODIFIED="1639426611963">
<edge COLOR="#0000ff"/>
<node TEXT="Subnote 1" ID="ID_1438649758" CREATED="1636416931905" MODIFIED="1636416936346">
<node TEXT="Subsubnote" ID="ID_1406124071" CREATED="1636416943553" MODIFIED="1636416951810">
<node TEXT="Subsubsubnote" ID="ID_1720354358" CREATED="1638649657193" MODIFIED="1638649673268">
<node TEXT="Level 6" ID="ID_546168729" CREATED="1639426580120" MODIFIED="1639428350443">
<node TEXT="Level 7" ID="ID_181918663" CREATED="1639426583912" MODIFIED="1639428354510">
<node TEXT="Level 8" ID="ID_1770641147" CREATED="1639426588704" MODIFIED="1639428357934">
<node TEXT="Level 9" ID="ID_1840657033" CREATED="1639426593904" MODIFIED="1639428361310"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Subnote 2" ID="ID_1096047539" CREATED="1636416936697" MODIFIED="1636416939674"/>
</node>
<node TEXT="Subnote with long text" FOLDED="true" POSITION="bottom_or_right" ID="ID_543679378" CREATED="1636417385355" MODIFIED="1636417395926">
<edge COLOR="#00007c"/>
<node TEXT="Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet." ID="ID_686106190" CREATED="1636417455598" MODIFIED="1636417455598"/>
</node>
<node TEXT="Tests for icons" POSITION="bottom_or_right" ID="ID_1794610207" CREATED="1636416964440" MODIFIED="1636416981786">
<edge COLOR="#00ff00"/>
<node TEXT="Multiple icons" ID="ID_1046497698" CREATED="1637962693152" MODIFIED="1639427342086">
<icon BUILTIN="unchecked"/>
<icon BUILTIN="full-2"/>
<icon BUILTIN="yes"/>
</node>
</node>
<node TEXT="Different empty nodes" POSITION="bottom_or_right" ID="ID_980228848" CREATED="1639427892446" MODIFIED="1639427999400">
<edge COLOR="#00007c"/>
<node TEXT="" ID="ID_1093474046" CREATED="1639427903654" MODIFIED="1639427903654"/>
<node TEXT="" ID="ID_631994551" CREATED="1639427941286" MODIFIED="1639427987163">
<node TEXT="" ID="ID_1192036581" CREATED="1639427943109" MODIFIED="1639427943109"/>
</node>
<node TEXT="" ID="ID_1786504276" CREATED="1639427953453" MODIFIED="1639427987178">
<node TEXT="Non empty subnote" ID="ID_1383013466" CREATED="1639427956183" MODIFIED="1639429069155"/>
</node>
</node>
<node TEXT="Empty nodes with icons and links" POSITION="bottom_or_right" ID="ID_508026630" CREATED="1639427909990" MODIFIED="1639428018208">
<edge COLOR="#007c00"/>
<node TEXT="" ID="ID_251219770" CREATED="1639428020069" MODIFIED="1639428036489">
<icon BUILTIN="info"/>
</node>
<node TEXT="" ID="ID_1713722825" CREATED="1639428041797" MODIFIED="1639428071094" LINK="#ID_715013095"/>
<node TEXT="" ID="ID_1297938625" CREATED="1639428043877" MODIFIED="1639428043877"/>
<node TEXT="" ID="ID_931962064" CREATED="1639428114388" MODIFIED="1639428114388"/>
<node TEXT="" ID="ID_880018225" CREATED="1639428114564" MODIFIED="1639428141803">
<arrowlink DESTINATION="ID_290194465"/>
</node>
<node TEXT="Target 1" ID="ID_715013095" CREATED="1639428048549" MODIFIED="1639428097032"/>
<node TEXT="Target 2" ID="ID_1118065922" CREATED="1639428084876" MODIFIED="1639428106276">
<arrowlink DESTINATION="ID_1297938625"/>
</node>
<node TEXT="Source 1" ID="ID_1753607077" CREATED="1639428051493" MODIFIED="1639428133172" LINK="#ID_931962064"/>
<node TEXT="Source 2" ID="ID_290194465" CREATED="1639428091772" MODIFIED="1639428097054"/>
</node>
<node TEXT="Some combination of features" POSITION="bottom_or_right" ID="ID_410291515" CREATED="1638649568809" MODIFIED="1639426791874">
<edge COLOR="#7c0000"/>
<node TEXT="Link to URL containing icons" ID="ID_1372782281" CREATED="1636417210854" MODIFIED="1639426778986">
<node TEXT="https://www.freeplane.org/wiki/index.php/Home" ID="ID_169670751" CREATED="1636417232061" MODIFIED="1639429012261" LINK="https://www.freeplane.org/wiki/index.php/Home">
<icon BUILTIN="button_ok"/>
<icon BUILTIN="button_cancel"/>
<icon BUILTIN="calendar"/>
</node>
</node>
<node TEXT="Connection and hyperlink from the same node" ID="ID_1695906508" CREATED="1639428581577" MODIFIED="1639428583668">
<node TEXT="Source for cConnection and hyperlink" ID="ID_1658607488" CREATED="1636417283389" MODIFIED="1639428606132" LINK="#ID_333936676"/>
<node TEXT="Target for connection" ID="ID_1986257430" CREATED="1636417255957" MODIFIED="1638649584357">
<arrowlink DESTINATION="ID_1658607488"/>
</node>
<node TEXT="Target for hyperlink" ID="ID_333936676" CREATED="1638646922871" MODIFIED="1638649584379"/>
</node>
<node TEXT="Target for hyperlink and connection at the same time" ID="ID_17953786" CREATED="1639428619304" MODIFIED="1639428622155">
<node TEXT="Hyperlink" ID="ID_369457536" CREATED="1639426940837" MODIFIED="1639426990946" LINK="#ID_1994176066"/>
<node TEXT="Connection" ID="ID_793702444" CREATED="1639426949189" MODIFIED="1639426953584"/>
<node TEXT="Target for hyperlink and connection" ID="ID_1994176066" CREATED="1639426956925" MODIFIED="1639428631563">
<arrowlink DESTINATION="ID_793702444"/>
</node>
</node>
<node TEXT="Target of connection is source of hyperlink" ID="ID_428236110" CREATED="1639428645719" MODIFIED="1639428654155">
<node TEXT="Connection to node" ID="ID_470163758" CREATED="1636417283389" MODIFIED="1639426827857"/>
<node TEXT="Target for connection with link" ID="ID_621552364" CREATED="1638548027889" MODIFIED="1639426849390" LINK="#ID_1195614690">
<arrowlink DESTINATION="ID_470163758"/>
</node>
<node TEXT="Target for hyperlink" ID="ID_1195614690" CREATED="1638646922871" MODIFIED="1638649584379"/>
</node>
<node TEXT="Target for hyperlink is source of connection" ID="ID_1955663058" CREATED="1639428664624" MODIFIED="1639428670803">
<node TEXT="Local hyperlink forward" ID="ID_1662467715" CREATED="1638649370267" MODIFIED="1638649584390" LINK="#ID_244066349"/>
<node TEXT="Target for hyperlink and source of connection" ID="ID_244066349" CREATED="1638646922871" MODIFIED="1639428689212"/>
<node TEXT="Target for connection" ID="ID_384630642" CREATED="1639426875774" MODIFIED="1639426898671">
<arrowlink DESTINATION="ID_244066349"/>
</node>
</node>
<node TEXT="Multiple connections to the same target" ID="ID_1594255869" CREATED="1639428705112" MODIFIED="1639428746147">
<node TEXT="Source 1" ID="ID_170577076" CREATED="1639427022293" MODIFIED="1639427026169"/>
<node TEXT="Source 2" ID="ID_1800778683" CREATED="1639427026509" MODIFIED="1639427029512"/>
<node TEXT="Target for multiple connections" ID="ID_788637286" CREATED="1639427030053" MODIFIED="1639427049123">
<arrowlink DESTINATION="ID_170577076"/>
<arrowlink DESTINATION="ID_1800778683"/>
</node>
</node>
<node TEXT="Multiple connections from the same source" ID="ID_1576874758" CREATED="1639428723848" MODIFIED="1639428759532">
<node TEXT="Source of multiple connections" ID="ID_1349627846" CREATED="1639427055380" MODIFIED="1639427062880"/>
<node TEXT="Target 1" ID="ID_1571491246" CREATED="1639427063308" MODIFIED="1639427074808">
<arrowlink DESTINATION="ID_1349627846"/>
</node>
<node TEXT="Target 2" ID="ID_1403260478" CREATED="1639427066684" MODIFIED="1639427078851">
<arrowlink DESTINATION="ID_1349627846"/>
</node>
</node>
</node>
<node TEXT="8-bit characters" POSITION="bottom_or_right" ID="ID_45096726" CREATED="1689510880983" MODIFIED="1689510895740">
<edge COLOR="#ff00ff"/>
<node TEXT="ä,ö,ü,ß" ID="ID_1495992405" CREATED="1689510980160" MODIFIED="1689510992944"/>
<node TEXT="Ä,Ö,Ü" ID="ID_215197692" CREATED="1689510993464" MODIFIED="1689511006106"/>
<node TEXT="Übergrößengeschäft" ID="ID_1759915091" CREATED="1689510166760" MODIFIED="1689511092405"/>
</node>
</node>
</map>
