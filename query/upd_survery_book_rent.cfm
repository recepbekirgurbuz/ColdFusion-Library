    <cfquery name="upd"  datasource="guest">
        UPDATE SURVEY_BOOKS_RENT
        SET
        BOOK_ID = <cfqueryparam value='#form.BOOK_ID#' cfsqltype="cf_sql_varchar">,
        CATEGORY_ID = <cfqueryparam value='#form.CATEGORY_ID#' cfsqltype="cf_sql_varchar">,
        PRICE = <cfqueryparam value='#form.PRICE#' cfsqltype="cf_sql_varchar">,
        START_DATE = <cfqueryparam value='#form.START_DATE#' cfsqltype="cf_sql_timestamp">,
        FINISH_DATE = <cfqueryparam value='#form.FINISH_DATE#' cfsqltype="cf_sql_timestamp">,
        RECORD_DATE = <cfqueryparam value='#now()#' cfsqltype="cf_sql_timestamp">,
        RECORD_EMP = <cfqueryparam value='1' cfsqltype="cf_sql_integer">
        WHERE ID = <cfqueryparam value='#form.ID#' cfsqltype="cf_sql_integer">
    </cfquery>
    <script>location="http://localhost:8500/library/display/list_survey_book_rent.cfm"</script>