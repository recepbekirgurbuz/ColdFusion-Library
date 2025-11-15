<cfquery datasource="guest">
INSERT INTO SETUP_BOOKS
(
    BOOK_NAME,
    CATEGORY_ID,

    RECORD_DATE,
    RECORD_EMP
)
VALUES
(
    <cfqueryparam value='#form.BOOK_NAME#' cfsqltype="cf_sql_varchar">,
    <cfqueryparam value='#form.CATEGORY_ID#' cfsqltype="cf_sql_integer">,
    <cfqueryparam value='#now()#' cfsqltype="cf_sql_timestamp">,
    <cfqueryparam value='1' cfsqltype="cf_sql_integer">
)
</cfquery>
<script>location="http://localhost:8500/library/display/list_books_category.cfm"</script>