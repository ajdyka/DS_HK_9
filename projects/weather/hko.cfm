<cfhttp url="https://www.rainwise.net/inview/exportcsv.php" result="rainwise" method="post">

	<cfhttpparam type="form" name="daysback" value="-419">
	<cfhttpparam type="form" name="units" value="metric">
	<cfhttpparam type="form" name="sdate" value="#dateformat(now()-1,"mm/dd/yyyy")#">
	<cfhttpparam type="form" name="edate" value="#dateformat(now(),"mm/dd/yyyy")#">

</cfhttp>

<cfdump eval=rainwise>

<cfset content = rainwise.filecontent>

<cfset tmpfile = expandPath("./hko.csv")/>
<cffile action="write" file="#tmpfile#" output="#content#" />