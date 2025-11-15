    <cfquery name="upd"  datasource="guest">
        UPDATE SETUP_BOOKS
        SET
        BOOK_NAME = <cfqueryparam value='#form.BOOK_NAME#' cfsqltype="cf_sql_varchar">,
        CATEGORY_ID = <cfqueryparam value='#form.CATEGORY_ID#' cfsqltype="cf_sql_integer">
        WHERE BOOK_ID = <cfqueryparam value='#form.BOOK_ID#' cfsqltype="cf_sql_integer">
    </cfquery>
    <script>location="http://localhost:8500/library/display/list_books_category.cfm"</script>