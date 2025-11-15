    <cfquery datasource="guest">
        DELETE FROM SURVEY_BOOKS_RENT
        WHERE ID = <cfqueryparam value='#url.ID#' cfsqltype="cf_sql_integer">
    </cfquery>
    <script>location="http://localhost:8500/library/display/list_survery_books_rent.cfm"</script>