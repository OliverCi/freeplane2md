<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Test ToDo Variations" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1713726544135" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" associatedTemplateLocation="template:/standard-1.6.mm" fit_to_viewport="false"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="18" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Test conversion of tree nodes to list items with checkmarks in different variations." POSITION="bottom_or_right" ID="ID_1439092392" CREATED="1638287639909" MODIFIED="1682194555571">
<edge COLOR="#ff0000"/>
</node>
<node TEXT="A todo list" POSITION="bottom_or_right" ID="ID_1523624271" CREATED="1682194652761" MODIFIED="1682194660955">
<edge COLOR="#00007c"/>
<node TEXT="normal task" ID="ID_1218718973" CREATED="1682194662613" MODIFIED="1682194669740"/>
<node TEXT="nested tasks" ID="ID_305798166" CREATED="1682194670053" MODIFIED="1682194673974">
<node TEXT="subtask" ID="ID_1884894481" CREATED="1682194674930" MODIFIED="1682194691027">
<node TEXT="subsubtask" ID="ID_1291742843" CREATED="1682194727147" MODIFIED="1682194732194"/>
</node>
<node TEXT="completed subtask" ID="ID_254398944" CREATED="1682194691496" MODIFIED="1682194698625">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="completed subtask with different icon" ID="ID_911875593" CREATED="1682194700264" MODIFIED="1682194720643">
<icon BUILTIN="checked"/>
</node>
</node>
<node TEXT="task explictly marked with icon" ID="ID_902076342" CREATED="1682194810951" MODIFIED="1682194842475">
<icon BUILTIN="unchecked"/>
<node TEXT="with list item as subnote" ID="ID_1973469354" CREATED="1682194818785" MODIFIED="1682195090619">
<node TEXT="and subsubnote" ID="ID_1657093429" CREATED="1713726515790" MODIFIED="1713726522295"/>
</node>
<node TEXT="subtask" ID="ID_948674345" CREATED="1682195090995" MODIFIED="1682195102561">
<icon BUILTIN="unchecked"/>
</node>
<node TEXT="completed subtask" ID="ID_155800590" CREATED="1682195104058" MODIFIED="1682195121211">
<icon BUILTIN="checked"/>
</node>
<node TEXT="completed subtask" ID="ID_800444013" CREATED="1682195110597" MODIFIED="1682195127133">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node TEXT="completed task" ID="ID_36389184" CREATED="1682194740961" MODIFIED="1682194747719">
<icon BUILTIN="button_ok"/>
<node TEXT="unmarked list item under completed task" ID="ID_141165184" CREATED="1682194749371" MODIFIED="1682194762072"/>
<node TEXT="task with different icon" ID="ID_1033693113" CREATED="1682194766875" MODIFIED="1682194781221">
<icon BUILTIN="checked"/>
</node>
</node>
<node TEXT="completed task" ID="ID_1065637467" CREATED="1682194792147" MODIFIED="1682194854979">
<icon BUILTIN="checked"/>
<node TEXT="unmarked list item under completed task" ID="ID_647851722" CREATED="1682194749371" MODIFIED="1682194762072"/>
</node>
<node TEXT="cancelled task" ID="ID_1762842316" CREATED="1682194861812" MODIFIED="1682194952385">
<icon BUILTIN="button_cancel"/>
<node TEXT="unmarked list item under cancelled task" ID="ID_455348598" CREATED="1682194749371" MODIFIED="1682194880328"/>
</node>
<node TEXT="some variations of nesting" ID="ID_1598324154" CREATED="1682194967069" MODIFIED="1714757968469">
<icon BUILTIN="button_ok"/>
<node TEXT="list item" ID="ID_327093139" CREATED="1682194976572" MODIFIED="1682195021775">
<node TEXT="task again" ID="ID_1989216934" CREATED="1682195025087" MODIFIED="1682195036703">
<icon BUILTIN="checked"/>
</node>
<node TEXT="task again" ID="ID_1847977582" CREATED="1682195040902" MODIFIED="1682195045970">
<icon BUILTIN="button_ok"/>
</node>
<node TEXT="list item" ID="ID_1150782261" CREATED="1682195029212" MODIFIED="1682195031513"/>
</node>
<node TEXT="task" ID="ID_980443985" CREATED="1682194979869" MODIFIED="1682194990138">
<icon BUILTIN="button_ok"/>
<node TEXT="list item" ID="ID_682477167" CREATED="1682195008488" MODIFIED="1682195018038"/>
</node>
<node TEXT="info" ID="ID_19947264" CREATED="1682194992688" MODIFIED="1682194997174">
<icon BUILTIN="info"/>
<node TEXT="subinfo" ID="ID_462342931" CREATED="1682194999108" MODIFIED="1682195003752"/>
<node TEXT="task" ID="ID_1987405645" CREATED="1682195054074" MODIFIED="1682195060983">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</node>
<node TEXT="Cases for extended checkmark syntax" POSITION="bottom_or_right" ID="ID_515012957" CREATED="1682194602681" MODIFIED="1682194630683">
<edge COLOR="#0000ff"/>
<node TEXT="ToDo" ID="ID_705688669" CREATED="1622648859404" MODIFIED="1682194646132">
<icon BUILTIN="unchecked"/>
<node TEXT="- [ ]" ID="ID_206758768" CREATED="1626191932260" MODIFIED="1626191936957"/>
</node>
<node TEXT="Done" ID="ID_155009707" CREATED="1622648863587" MODIFIED="1682194646132">
<icon BUILTIN="checked"/>
<node TEXT="- [x]" ID="ID_324387751" CREATED="1626191932260" MODIFIED="1626191942867"/>
</node>
<node TEXT="Covered / Discussed" ID="ID_1938163526" CREATED="1622648866611" MODIFIED="1682194646148">
<icon BUILTIN="button_ok"/>
<node TEXT=":heavy_check_mark:" ID="ID_543954921" CREATED="1638917707401" MODIFIED="1638917707401"/>
<node TEXT="- [x]" ID="ID_1520772153" CREATED="1626191932260" MODIFIED="1626191942867"/>
</node>
<node TEXT="Canceled" ID="ID_779237372" CREATED="1637860364300" MODIFIED="1682194646148">
<icon BUILTIN="button_cancel"/>
<node TEXT=":heavy_multiplication_x:" ID="ID_1689993009" CREATED="1638917648086" MODIFIED="1640450253145"/>
<node TEXT="- [/]" ID="ID_365510020" CREATED="1627049700258" MODIFIED="1638917653517"/>
</node>
<node TEXT="Waiting / blocked" ID="ID_1656875682" CREATED="1622648864923" MODIFIED="1682194646148">
<icon BUILTIN="hourglass"/>
<node TEXT=":hourglass:" ID="ID_1521530413" CREATED="1638287046710" MODIFIED="1638287046710"/>
<node TEXT="- [w]" ID="ID_1294695988" CREATED="1626191932260" MODIFIED="1626191948773"/>
</node>
<node TEXT="Timed" ID="ID_1316641552" CREATED="1638288773732" MODIFIED="1682194646164">
<icon BUILTIN="calendar"/>
<node TEXT=":calendar:" ID="ID_1134159337" CREATED="1638306722289" MODIFIED="1638306737092"/>
<node TEXT="- [t]" ID="ID_280264962" CREATED="1626191932260" MODIFIED="1626191977848"/>
</node>
<node TEXT="Not further pursued" ID="ID_647952999" CREATED="1637860283539" MODIFIED="1682194646164">
<icon BUILTIN="stop-sign"/>
<node TEXT=":stop_sign:" ID="ID_1086811069" CREATED="1638306779105" MODIFIED="1638306793099"/>
</node>
<node TEXT="Info" ID="ID_1283922993" CREATED="1626191986950" MODIFIED="1682194646164">
<icon BUILTIN="info"/>
<node TEXT=":information_source:" ID="ID_249343646" CREATED="1631860811735" MODIFIED="1631860811735"/>
<node TEXT="-[i]" ID="ID_39493353" CREATED="1626192005339" MODIFIED="1626192009005"/>
</node>
<node TEXT="Recurring" ID="ID_1700785031" CREATED="1622648872699" MODIFIED="1682194646164">
<icon BUILTIN="revision"/>
<node TEXT=":repeat:" ID="ID_582765250" CREATED="1640450292982" MODIFIED="1640450292982"/>
<node TEXT="- [r]" ID="ID_146171694" CREATED="1626191963811" MODIFIED="1626191968588"/>
</node>
<node TEXT="!" ID="ID_140256888" CREATED="1626270730421" MODIFIED="1682194646164">
<icon BUILTIN="yes"/>
<node TEXT=":exclamation:" ID="ID_1231060498" CREATED="1638308598765" MODIFIED="1638308598765"/>
<node TEXT="-[!]" ID="ID_251936510" CREATED="1627051445879" MODIFIED="1627051450420"/>
</node>
<node TEXT="?" ID="ID_501530544" CREATED="1626270734210" MODIFIED="1682194646164">
<icon BUILTIN="help"/>
<node TEXT=":question:" ID="ID_765301356" CREATED="1638308610617" MODIFIED="1638308610617"/>
<node TEXT="- [?]" ID="ID_117120500" CREATED="1627051435438" MODIFIED="1627051440337"/>
</node>
<node TEXT="Progress icons" ID="ID_1758172160" CREATED="1638096138775" MODIFIED="1682194646179">
<icon BUILTIN="0%"/>
<icon BUILTIN="25%"/>
<icon BUILTIN="50%"/>
<icon BUILTIN="75%"/>
<icon BUILTIN="100%"/>
<node TEXT="Any emoji ?" ID="ID_1658856053" CREATED="1638306945239" MODIFIED="1640450421344"/>
<node TEXT="- [25%] ... etc." ID="ID_1821516065" CREATED="1638288002947" MODIFIED="1640450405871"/>
</node>
<node TEXT="etc.Priority" ID="ID_1208830977" CREATED="1638096182735" MODIFIED="1682194646179">
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-2"/>
<icon BUILTIN="full-3"/>
<node TEXT=":one: :two: :three: etc." ID="ID_143248198" CREATED="1638306901847" MODIFIED="1638306919954"/>
</node>
<node TEXT="Rating" ID="ID_1487923082" CREATED="1638096202984" MODIFIED="1682194646195">
<icon BUILTIN="very_negative"/>
<icon BUILTIN="negative"/>
<icon BUILTIN="neutral"/>
<icon BUILTIN="positive"/>
<icon BUILTIN="very_positive"/>
<node TEXT="Any similar emojies?" ID="ID_1926723509" CREATED="1638288555079" MODIFIED="1640450470760"/>
<node TEXT="(--), (-), 0, (+), (++)" ID="ID_852159437" CREATED="1638306935866" MODIFIED="1640450502445"/>
</node>
</node>
</node>
</map>
