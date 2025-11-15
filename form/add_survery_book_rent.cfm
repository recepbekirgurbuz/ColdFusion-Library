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
</head>
<body>
    <cfinclude template="/library/layouts/header.cfm">

    <div class="container mt-5">
        <div class="row">
            <div class="mb-5 ml-3">
                <h1>Yeni Kitap Kirala</h1>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <cfform action="../query/add_survery_book_rent.cfm">
                            <label for="">Kitap Seç</label>
                            <select name="BOOK_ID" id="" class="form-group form-control" required>
                                <option value="">Kategori Seçiniz</option>
                                <cfoutput query="books">
                                    <option value="#BOOK_ID#">#BOOK_NAME#</option>
                                </cfoutput>
                            </select>
                            <div class="form-group">
                                <label for="">Kiralama Tarihi</label>
                                <input type="datetime-local" class="form-control" id="" name="START_DATE" required>
                            </div>
                            <div class="form-group">
                                <label for="">Teslim Edilmesi Gereken Tarih</label>
                                <input type="datetime-local" class="form-control" id="" name="FINISH_DATE"  required>
                            </div>
                            <div class="form-group">
                                <label for="">Kiralama Bedeli</label>
                                <input type="number" class="form-control" id="" name="PRICE"  placeholder="Örn: 100₺" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Kirala</button>
                        </cfform>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>