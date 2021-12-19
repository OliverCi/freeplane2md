<map version="freeplane 1.9.8">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Test Icons" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1638302929269" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" associatedTemplateLocation="template:/standard-1.6.mm"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
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
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
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
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
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
<hook NAME="AutomaticEdgeColor" COUNTER="1" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Icons from Freeplane" POSITION="right" ID="ID_1439092392" CREATED="1638287639909" MODIFIED="1638302942374">
<edge COLOR="#ff0000"/>
<node TEXT="ToDo" ID="ID_705688669" CREATED="1622648859404" MODIFIED="1637860350803">
<icon BUILTIN="unchecked"/>
<node TEXT="- [ ]" ID="ID_206758768" CREATED="1626191932260" MODIFIED="1626191936957"/>
</node>
<node TEXT="Done" ID="ID_155009707" CREATED="1622648863587" MODIFIED="1637860347668">
<icon BUILTIN="checked"/>
<node TEXT="- [x]" ID="ID_324387751" CREATED="1626191932260" MODIFIED="1626191942867"/>
</node>
<node TEXT="Waiting / blocked" ID="ID_1656875682" CREATED="1622648864923" MODIFIED="1638308510875">
<icon BUILTIN="hourglass"/>
<node TEXT="- [w]" ID="ID_1294695988" CREATED="1626191932260" MODIFIED="1626191948773"/>
<node TEXT=":hourglass:" ID="ID_1521530413" CREATED="1638287046710" MODIFIED="1638287046710"/>
</node>
<node TEXT="Covered / Discussed" ID="ID_1938163526" CREATED="1622648866611" MODIFIED="1637860338855">
<icon BUILTIN="button_ok"/>
<node TEXT="N.A." ID="ID_512134661" CREATED="1626191955685" MODIFIED="1626191959418"/>
<node TEXT="?" ID="ID_1026736532" CREATED="1638917705545" MODIFIED="1638917706444">
<node TEXT=":heavy_check_mark:" ID="ID_543954921" CREATED="1638917707401" MODIFIED="1638917707401"/>
</node>
</node>
<node TEXT="Canceled" ID="ID_779237372" CREATED="1637860364300" MODIFIED="1637860371404">
<icon BUILTIN="button_cancel"/>
<node TEXT="- [/]" ID="ID_365510020" CREATED="1627049700258" MODIFIED="1638917653517"/>
<node TEXT="?" ID="ID_675231056" CREATED="1638917646074" MODIFIED="1638917647054">
<node TEXT=":negative_squared_cross_mark:" ID="ID_1689993009" CREATED="1638917648086" MODIFIED="1638917648086"/>
<node TEXT=":x:" ID="ID_38492803" CREATED="1638917740546" MODIFIED="1638917740546"/>
</node>
</node>
<node TEXT="Recurring" ID="ID_1700785031" CREATED="1622648872699" MODIFIED="1637860333637">
<icon BUILTIN="revision"/>
<node TEXT="- [r]" ID="ID_146171694" CREATED="1626191963811" MODIFIED="1626191968588"/>
</node>
<node TEXT="Appointment / Meeting / Calendar entry" ID="ID_1316641552" CREATED="1638288773732" MODIFIED="1638303242082">
<icon BUILTIN="calendar"/>
<node TEXT="- [t]" ID="ID_280264962" CREATED="1626191932260" MODIFIED="1626191977848"/>
<node TEXT=":calendar:" ID="ID_1134159337" CREATED="1638306722289" MODIFIED="1638306737092"/>
<node TEXT="? :date:" ID="ID_563489914" CREATED="1638917444363" MODIFIED="1638917451606"/>
</node>
<node TEXT="Info" ID="ID_1283922993" CREATED="1626191986950" MODIFIED="1637860318498">
<icon BUILTIN="info"/>
<node TEXT="-[i]" ID="ID_39493353" CREATED="1626192005339" MODIFIED="1626192009005"/>
<node TEXT=":information_source:" ID="ID_249343646" CREATED="1631860811735" MODIFIED="1631860811735"/>
</node>
<node TEXT="!" ID="ID_140256888" CREATED="1626270730421" MODIFIED="1638288645470">
<icon BUILTIN="yes"/>
<node TEXT="-[!]" ID="ID_251936510" CREATED="1627051445879" MODIFIED="1627051450420"/>
<node TEXT=":exclamation:" ID="ID_1231060498" CREATED="1638308598765" MODIFIED="1638308598765"/>
</node>
<node TEXT="?" ID="ID_501530544" CREATED="1626270734210" MODIFIED="1638288653432">
<icon BUILTIN="help"/>
<node TEXT="- [?]" ID="ID_117120500" CREATED="1627051435438" MODIFIED="1627051440337"/>
<node TEXT=":question:" ID="ID_765301356" CREATED="1638308610617" MODIFIED="1638308610617"/>
</node>
<node TEXT="Update" ID="ID_1502740388" CREATED="1622648895892" MODIFIED="1637860309440">
<icon BUILTIN="attach"/>
<node TEXT=":paperclip:" ID="ID_1228884071" CREATED="1622648898387" MODIFIED="1638306765171"/>
</node>
<node TEXT="Not further pursued" ID="ID_647952999" CREATED="1637860283539" MODIFIED="1638308626845">
<icon BUILTIN="stop-sign"/>
<node TEXT=":stop_sign:" ID="ID_1086811069" CREATED="1638306779105" MODIFIED="1638306793099"/>
</node>
<node TEXT="Progress icons" ID="ID_1758172160" CREATED="1638096138775" MODIFIED="1638288472797">
<icon BUILTIN="0%"/>
<icon BUILTIN="25%"/>
<icon BUILTIN="50%"/>
<icon BUILTIN="75%"/>
<icon BUILTIN="100%"/>
<node TEXT="- [25%] etc.?" ID="ID_1821516065" CREATED="1638288002947" MODIFIED="1638288014776"/>
<node TEXT="?" ID="ID_1658856053" CREATED="1638306945239" MODIFIED="1638306946666"/>
</node>
<node TEXT="etc.Priority" ID="ID_1208830977" CREATED="1638096182735" MODIFIED="1638288505444">
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-2"/>
<icon BUILTIN="full-3"/>
<node TEXT="Adding (1) etc.?" ID="ID_581922219" CREATED="1638288511983" MODIFIED="1638288524204"/>
<node TEXT=":one: :two: :three: etc." ID="ID_143248198" CREATED="1638306901847" MODIFIED="1638306919954"/>
</node>
<node TEXT="Rating" ID="ID_1487923082" CREATED="1638096202984" MODIFIED="1638306935442">
<icon BUILTIN="very_negative"/>
<icon BUILTIN="negative"/>
<icon BUILTIN="neutral"/>
<icon BUILTIN="positive"/>
<icon BUILTIN="very_positive"/>
<node TEXT="(--, -, 0, +, ++, ...)" ID="ID_852159437" CREATED="1638306935866" MODIFIED="1638306935866"/>
<node TEXT="?" ID="ID_1926723509" CREATED="1638288555079" MODIFIED="1638288556429">
<node TEXT=":thumbsup:" ID="ID_1944844561" CREATED="1638917342407" MODIFIED="1638917342407"/>
<node TEXT=":thumbsdown:" ID="ID_1738479170" CREATED="1638917352557" MODIFIED="1638917352557"/>
<node TEXT=":arrow_double_up: etc." ID="ID_1607301267" CREATED="1638917582259" MODIFIED="1638917589950"/>
</node>
</node>
<node TEXT="other?" ID="ID_61592762" CREATED="1622648881183" MODIFIED="1638288732024">
<icon BUILTIN="idea"/>
<icon BUILTIN="clanbomber"/>
<icon BUILTIN="pencil"/>
<icon BUILTIN="stop"/>
<icon BUILTIN="prepare"/>
<icon BUILTIN="go"/>
</node>
</node>
</node>
</map>
