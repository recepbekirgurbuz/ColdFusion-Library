    <cfquery name="upd"  datasource="guest">
        UPDATE SETUP_CATEGORY
        SET
        CATEGORY_NAME = <cfqueryparam value='#form.CATEGORY_NAME#' cfsqltype="cf_sql_varchar">
        WHERE CATEGORY_ID = <cfqueryparam value='#form.CATEGORY_ID#' cfsqltype="cf_sql_integer">
    </cfquery>
    <script>location="http://localhost:8500/library/display/list_category.cfm"</script>