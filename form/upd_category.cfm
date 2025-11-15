<cfquery name="category" datasource="guest">
SELECT * FROM SETUP_CATEGORY
WHERE CATEGORY_ID = <cfqueryparam value='#url.CATEGORY_ID#' cfsqltype="cf_sql_integer">
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
                        <cfform action="../query/upd_category.cfm">
                            <cfoutput>
                            <input type="hidden" name="CATEGORY_ID" value="#url.CATEGORY_ID#">
                            </cfoutput>

                            <div class="form-group">
                                <label for="category">Kategori Adı</label>
                                <cfoutput query="category">
                                <input type="text" class="form-control" id="category" name="CATEGORY_NAME" value='#CATEGORY_NAME#' placeholder="Kategori Adı" required>
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