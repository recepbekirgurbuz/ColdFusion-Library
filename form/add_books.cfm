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
</head>
<body>
    <cfinclude template="/library/layouts/header.cfm">

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <cfform action="../query/add_books.cfm">
                            <label for="CATEGORY">Kategori Adı</label>
                            <select name="CATEGORY_ID" id="CATEGORY" class="form-group form-control" required>
                                <option value="">Kategori Seçiniz</option>
                                <cfoutput query="category">
                                    <option value="#CATEGORY_ID#">#CATEGORY_NAME#</option>
                                </cfoutput>
                            </select>
                            <div class="form-group">
                                <label for="">Kitap Adı</label>
                                <input type="text" class="form-control" id="" name="BOOK_NAME"  placeholder="Kitap Adı" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Kategori Ekle</button>
                        </cfform>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>