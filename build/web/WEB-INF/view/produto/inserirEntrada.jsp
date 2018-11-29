<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Trabalho feito na disiciplina POO Web I">
        <meta name="author" content="WesleyxBZ">

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Fontes customizáveis para esse template -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <!-- Page level plugin CSS -->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Estilos customizáveis para esse template -->
        <link href="css/sb-admin.css" rel="stylesheet">

        <title>Inserir entrada - Produto | Estoque</title>
    </head>

    <body id="page-top">

        <!-- Navbar -->
        <jsp:include page="../template/navbar.jsp" />

        <!-- Todo conteúdo abaixo da navbar -->
        <div id="wrapper">

            <!-- Sidebar da esquerda -->  
            <jsp:include page="../template/sidebar.jsp" />

            <!-- Conteúdo princípal -->
            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb justify-content-end">
                        <li class="breadcrumb-item">
                            <a href="dashboard">Início</a>
                        </li>
                        <li class="breadcrumb-item active">Produto - Inserir entrada</li>
                    </ol>

                    <!-- DataTables Example -->
                    <div class="card mb-3 bg-light">
                        <div class="card-header">
                            <h4>Inserir entrada de produtos</h4>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Produto</th>
                                            <th>Tamanho</th>
                                            <th>Código de barras</th>
                                            <th>Qtd. em estoque</th>
                                            <th>Opção</th>
                                        </tr>
                                    </thead>                              
                                    <tbody>

                                        <c:forEach var="item" items="${produtos}" varStatus="status">
                                            <tr>
                                                <td>${status.index}</td>
                                                <td>${item.produto.categoria.nome} ${item.produto.marca} ${item.produto.descricao} ${item.produto.cor}</td>
                                                <td>${item.produto.tamanho}</td>
                                                <td>${item.produto.codigoBarras}</td>                                    
                                                <td>${item.qtdProd}</td>                              
                                                <td><button data-id="${item.id_estoque}" data-prod="${item.produto.categoria.nome} ${item.produto.marca} ${item.produto.descricao} ${item.produto.cor} ${item.produto.tamanho}" type="button" class="btn btn-primary text-white idEstoque" href="#" data-toggle="modal" data-target="#inserirEntradaModal">inserir</button></td>
                                            </tr> 
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                <!-- Footer -->
                <jsp:include page="../template/footer.jsp" />

            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Modals -->
        <jsp:include page="../template/modal-sair.jsp" />
        <jsp:include page="../template/modal-inserirEntrada.jsp" />
        <jsp:include page="../template/modal-mensagemStatus.jsp" />

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="js/demo/datatables-demo.js"></script>

        <!-- Marcara para formulÃ¡rio -->
        <script src="vendor/jquery/jquery.maskedinputs.js"></script>
        <script src="vendor/jquery/mask.js"></script>

        <!-- Funções JS -->
        <script src="js/functions.js"></script> 

        <c:if test="${chamou_inserirEntrada eq true}">
            <script>
                $(document).ready(function () {
                    $('#mensagemStatusModal').modal('show');
                });
            </script>
        </c:if>

    </body>

</html>
