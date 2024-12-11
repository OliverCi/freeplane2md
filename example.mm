<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="freeplane2md" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1732991519684" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_tags="UNDER_NODES" associatedTemplateLocation="template:/standard-1.6.mm" fit_to_viewport="false"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="21" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Example showing some features" POSITION="bottom_or_right" ID="ID_1961287667" CREATED="1636416902754" MODIFIED="1732991565742">
<edge COLOR="#ff0000"/>
</node>
<node TEXT="Level 1 Node" POSITION="bottom_or_right" ID="ID_1460858956" CREATED="1636416925057" MODIFIED="1732991919961">
<edge COLOR="#0000ff"/>
<node TEXT="Subnote 1" ID="ID_1438649758" CREATED="1636416931905" MODIFIED="1636416936346">
<node TEXT="Subsubnote" ID="ID_1406124071" CREATED="1636416943553" MODIFIED="1636416951810">
<node TEXT="Subsubsubnote" ID="ID_1720354358" CREATED="1638649657193" MODIFIED="1638649673268"/>
</node>
</node>
<node TEXT="Subnote 2" ID="ID_1096047539" CREATED="1636416936697" MODIFIED="1636416939674"/>
</node>
<node TEXT="Tasks" POSITION="bottom_or_right" ID="ID_1944339795" CREATED="1732991603789" MODIFIED="1732991605471">
<edge COLOR="#00007c"/>
<node TEXT="Task with checkbox" ID="ID_846553465" CREATED="1636416991048" MODIFIED="1732993044199">
<icon BUILTIN="unchecked"/>
</node>
<node TEXT="Done task" ID="ID_496048838" CREATED="1636417022759" MODIFIED="1732991608630">
<icon BUILTIN="checked"/>
</node>
<node TEXT="Priorities" ID="ID_1001328608" CREATED="1637962636672" MODIFIED="1732991608638">
<node TEXT="Priority 1" ID="ID_381559295" CREATED="1637962636672" MODIFIED="1637962682970">
<icon BUILTIN="full-1"/>
</node>
<node TEXT="Priority 2" ID="ID_1621764809" CREATED="1637962636672" MODIFIED="1637962686859">
<icon BUILTIN="full-2"/>
</node>
<node TEXT="Priority 3" ID="ID_70533854" CREATED="1637962636672" MODIFIED="1637962690953">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node TEXT="Icons" POSITION="bottom_or_right" ID="ID_1794610207" CREATED="1636416964440" MODIFIED="1732991581343">
<edge COLOR="#00ff00"/>
<node TEXT="Checked" ID="ID_1076875143" CREATED="1636416985561" MODIFIED="1636417057858">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="Crossed" ID="ID_1474360308" CREATED="1636416996718" MODIFIED="1636417053584">
<icon BUILTIN="button_cancel"/>
</node>
<node TEXT="Waiting" ID="ID_1350541916" CREATED="1636417068239" MODIFIED="1636417080242">
<icon BUILTIN="hourglass"/>
</node>
<node TEXT="On hold" ID="ID_1243537117" CREATED="1637962748639" MODIFIED="1637962761949">
<icon BUILTIN="stop-sign"/>
</node>
<node TEXT="Recurring / Review" ID="ID_743763325" CREATED="1636417000152" MODIFIED="1636417039194">
<icon BUILTIN="revision"/>
</node>
<node TEXT="Multiple icons" ID="ID_1046497698" CREATED="1637962693152" MODIFIED="1637962725795">
<icon BUILTIN="unchecked"/>
<icon BUILTIN="full-2"/>
</node>
</node>
<node TEXT="Links and connections" POSITION="bottom_or_right" ID="ID_410291515" CREATED="1638649568809" MODIFIED="1638649581052">
<edge COLOR="#7c0000"/>
<node TEXT="Link to URL" ID="ID_1372782281" CREATED="1636417210854" MODIFIED="1638649693684">
<node TEXT="https://www.freeplane.org/wiki/index.php/Home" ID="ID_169670751" CREATED="1636417232061" MODIFIED="1636417232061" LINK="https://www.freeplane.org/wiki/index.php/Home"/>
</node>
<node TEXT="Link to e-mail" ID="ID_549200796" CREATED="1638990896099" MODIFIED="1638990990112">
<node TEXT="example@example.com" ID="ID_1292567306" CREATED="1638990939180" MODIFIED="1638990939180" LINK="mailto:example@example.com"/>
</node>
<node TEXT="Link to local Markdown file" ID="ID_364098431" CREATED="1638990626213" MODIFIED="1638990639642">
<node TEXT="test-icons.md" ID="ID_998100055" CREATED="1638990652265" MODIFIED="1638990652273" LINK="test-icons.md"/>
</node>
<node TEXT="Connection to node" ID="ID_470163758" CREATED="1636417283389" MODIFIED="1732991645748"/>
<node TEXT="Target for connection" ID="ID_621552364" CREATED="1638548027889" MODIFIED="1732991653031">
<arrowlink DESTINATION="ID_470163758"/>
</node>
<node TEXT="Local hyperlink" ID="ID_1662467715" CREATED="1638649370267" MODIFIED="1732991669539" LINK="#ID_244066349"/>
<node TEXT="Target for hyperlink" ID="ID_244066349" CREATED="1638646922871" MODIFIED="1732991681442"/>
</node>
</node>
</map>
