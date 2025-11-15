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
            <div class="mb-5 ml-3">
                <h1>Kategoriler</h1>
            </div>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <a href="/library/form/add_category.cfm" type="button" class="btn btn-primary" style="float: right;"><i class="fas fa-plus"></i> <b>Ekle</b></a>
                        <table id="example">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Kategori Adı</th>
                                    <th>Kayıt Tarihi</th>
                                    <th>Kayıt Eden Kişi</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <cfoutput query="category">
                                    <tr>
                                        <td>#CURRENTROW#</td>
                                        <td>#CATEGORY_NAME#</td>
                                        <td>#dateformat(RECORD_DATE, 'yyyy/mm/dd HH:mm')#</td>
                                        <td>#RECORD_EMP#</td>
                                        <td><a href="/library/form/upd_category.cfm?CATEGORY_ID=#CATEGORY_ID#" style="color: ##007bff; border: 0px; background-color: transparent; cursor: pointer;" ><i class="fas fa-pen-to-square"></i></button></td>
                                        <td><button onclick="deleteCategory(#CATEGORY_ID#)" style="color: crimson; border: 0px; background-color: transparent; cursor: pointer;" ><i class="fas fa-trash"></i></button></td>
                                    </tr>
                                </cfoutput>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.datatables.net/2.3.4/js/dataTables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
    var table = new DataTable('#example', {
        language: {
            url: 'https://cdn.datatables.net/plug-ins/2.3.4/i18n/tr.json',
        },
    });
    </script>
</html>