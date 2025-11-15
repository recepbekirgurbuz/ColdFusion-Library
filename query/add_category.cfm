<cfquery datasource="guest">
INSERT INTO SETUP_CATEGORY
(
    CATEGORY_NAME,
    RECORD_DATE,
    RECORD_EMP
)
VALUES
(
    <cfqueryparam value='#form.CATEGORY_NAME#' cfsqltype="cf_sql_varchar">,
    <cfqueryparam value='#now()#' cfsqltype="cf_sql_timestamp">,
    <cfqueryparam value='1' cfsqltype="cf_sql_integer">
)
</cfquery>
<script>location="http://localhost:8500/library/display/list_category.cfm"</script>