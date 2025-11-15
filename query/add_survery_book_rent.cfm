<cfquery datasource="guest">
INSERT INTO SURVEY_BOOKS_RENT
(
    BOOK_ID,
    PRICE,
    START_DATE,
    FINISH_DATE,

    RECORD_DATE,
    RECORD_EMP
)
VALUES
(
    <cfqueryparam value='#form.BOOK_ID#' cfsqltype="cf_sql_integer">,
    <cfqueryparam value='#form.PRICE#' cfsqltype="cf_sql_integer">,
    <cfqueryparam value='#form.START_DATE#' cfsqltype="cf_sql_timestamp">,
    <cfqueryparam value='#form.FINISH_DATE#' cfsqltype="cf_sql_timestamp">,

    <cfqueryparam value='#now()#' cfsqltype="cf_sql_timestamp">,
    <cfqueryparam value='1' cfsqltype="cf_sql_integer">
)
</cfquery>
<script>location="http://localhost:8500/library/display/list_survery_books_rent.cfm"</script>