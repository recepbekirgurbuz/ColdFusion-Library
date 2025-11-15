<cfquery name="surveryBooks" datasource="guest">
    SELECT * FROM SURVEY_BOOKS_RENT
    LEFT JOIN SETUP_BOOKS ON SETUP_BOOKS.BOOK_ID = SURVEY_BOOKS_RENT.BOOK_ID
    WHERE ID = <cfqueryparam value='#url.ID#' cfsqltype="cf_sql_integer">
</cfquery>
<!--- <cfquery name="books" datasource="guest">
    SELECT * FROM SETUP_BOOKS
    WHERE BOOK_ID = <cfqueryparam value='#url.BOOK_ID#' cfsqltype="cf_sql_integer">
</cfquery>
<cfoutput query="books">
  <cfset C_ID = CATEGORY_ID />
</cfoutput>
 --->

<cfoutput query="surveryBooks">
  <cfset B_ID = BOOK_ID />
</cfoutput>

<cfquery name="books" datasource="guest">
    SELECT * FROM SETUP_BOOKS
</cfquery>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.3.4/css/dataTables.dataTables.min.css ">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <cfinclude template="/library/layouts/header.cfm">


    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <cfform action="../query/upd_survery_book_rent.cfm">
                            <cfoutput>
                                <input type="hidden" name="ID" value="#url.ID#">
                            </cfoutput>
                            <cfoutput query="surveryBooks">
                            <input type="hidden" name="CATEGORY_ID" value="#CATEGORY_ID#">
                            </cfoutput>
                            <label for="">Kitap Seç</label>
                            <select name="BOOK_ID" id="" class="form-group form-control" required>
                                <cfoutput query="books">
                                    <cfif #B_ID# EQ #BOOK_ID#>
                                        <option value="#BOOK_ID#" selected>#BOOK_NAME#</option>
                                        <cfelse>
                                        <option value="#BOOK_ID#">#BOOK_NAME#</option>
                                    </cfif>
                                </cfoutput>
                            </select>
                            <cfoutput query="surveryBooks">
                                <div class="form-group">
                                    <label for="">Kiralama Tarihi</label>
                                    <input type="datetime-local" class="form-control" id="" name="START_DATE" value="#START_DATE#" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Teslim Edilmesi Gereken Tarih</label>
                                    <input type="datetime-local" class="form-control" id="" name="FINISH_DATE"  value="#FINISH_DATE#" required>
                                </div>
                                <div class="form-group">
                                    <label for="">Kiralama Bedeli</label>
                                    <input type="number" class="form-control" id="" name="PRICE"  value="#PRICE#"  placeholder="Örn: 100₺" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Güncelle</button>
                            </cfoutput>
                        </cfform>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>