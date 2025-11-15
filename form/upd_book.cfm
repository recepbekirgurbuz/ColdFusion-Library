<cfquery name="books" datasource="guest">
    SELECT * FROM SETUP_BOOKS
    WHERE BOOK_ID = <cfqueryparam value='#url.BOOK_ID#' cfsqltype="cf_sql_integer">
</cfquery>

<cfoutput query="books">
  <cfset C_ID = CATEGORY_ID />
</cfoutput>

<cfquery name="category" datasource="guest">
    SELECT * FROM SETUP_CATEGORY
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
                        <cfform action="../query/upd_book.cfm">
                            <cfoutput>
                                <input type="hidden" name="BOOK_ID" value="#url.BOOK_ID#">
                            </cfoutput>

                            <label for="category">Kitap Kategorisi</label>
                            <select name="CATEGORY_ID" id="category" class="form-group form-control" required>
                                <cfoutput query="category">
                                    <cfif #C_ID# EQ #CATEGORY_ID#>
                                        <option value="#CATEGORY_ID#" selected>#CATEGORY_NAME#</option>
                                        <cfelse>
                                        <option value="#CATEGORY_ID#">#CATEGORY_NAME#</option>
                                    </cfif>
                                </cfoutput>
                            </select>
                            
                            <div class="form-group">
                                <label for="book">Kategori Adı</label>
                                <cfoutput query="books">
                                    <input type="text" class="form-control" id="book" name="BOOK_NAME" value='#BOOK_NAME#' placeholder="Kategori Adı" required>
                                </cfoutput>
                            </div>
                            <button type="submit" class="btn btn-primary">Güncelle</button>
                        </cfform>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>