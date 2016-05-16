<!--- yesterday --->
<cfset fromdate = dateformat(now()-1,"mm/dd/yyyy")>
<!--- today --->
<cfset todate = dateformat(now(),"mm/dd/yyyy")>

<cfhttp url="https://www.rainwise.net/inview/exportcsv.php" result="rainwise" method="post">

	<cfhttpparam type="form" name="daysback"	value="-419">
	<cfhttpparam type="form" name="units"		value="metric">
	<cfhttpparam type="form" name="sdate"		value="#fromDate#">
	<cfhttpparam type="form" name="edate"		value="#toDate#">

	<cfhttpparam type="form" name="mac"			value="0090C2F27708" >
	<cfhttpparam type="form" name="weatherpage"	value="aishkweather" >

</cfhttp>

<cfdump eval=rainwise>

<cfset content = rainwise.filecontent>
<cfset concatdate = "#fromdate#_#todate#">
<cfdump eval = concatdate>
<cfset filename = replace(concatdate,"/","-","all")>

<cfset tmpfile = expandPath("./#filename#.csv")>
<cffile action="write" file="#tmpfile#" output="#content#">

