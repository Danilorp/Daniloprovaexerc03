<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aluno.aspx.cs" Inherits="Daniloprovaexerc03.aluno" %>

<!DOCTYPE html>
<!-- CSS only -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consulta do Aluno</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div>

                <div class="text-center text-primary">
                    <h2>Consulta Dados do Usuario</h2>
                </div>

                <div class="row" style="margin-top: 15px">


                    <div class="col-md-2">
                        <label>Ra:</label>
                        <asp:TextBox ID="txtRa" runat="server" MaxLength="50" CssClass="form-control"
                            Enabled="true"></asp:TextBox>
                    </div>

                    <div class="col-md-10">
                        <label>Nome:</label>
                        <asp:TextBox ID="txtNome" runat="server" MaxLength="80" CssClass="form-control"
                            Enabled="false"></asp:TextBox>
                    </div>

                </div>

                <div class="row" style="margin-top: 15px">
                    <div class="col-md-5">
                        <label>E-mail:</label>
                        <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" CssClass="form-control"
                            Enabled="false"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label>Sexo:</label>
                        <asp:TextBox ID="txtSexo" runat="server" MaxLength="100" CssClass="form-control"
                            Enabled="false"></asp:TextBox>
                    </div>

                    <div class="col-md-3">
                        <label>Data de Nascimento:</label>
                        <asp:TextBox ID="txtNascimento" runat="server" MaxLength="10" CssClass="form-control"
                            Enabled="false"></asp:TextBox>
                    </div>

                </div>


                <div class="row" style="padding-top: 15px">

                    <div class="col-md-3">
                        <label>Endereço:</label>
                        <asp:TextBox ID="txtEndereco" runat="server" MaxLength="50" CssClass="form-control"
                            Enabled="false"></asp:TextBox>
                    </div>

                    <div class="col-md-3">
                        <label>Curso:</label>
                        <asp:TextBox ID="txtCurso" runat="server" MaxLength="50" CssClass="form-control"
                            Enabled="false"></asp:TextBox>
                    </div>



                    <div class="col-md-3">
                        <label>Ano do Curso:</label>
                        <asp:TextBox ID="txtAno" runat="server" MaxLength="5" CssClass="form-control"
                            Enabled="false"></asp:TextBox>
                    </div>

                    <div class="row" style="margin-top: 15px">
                        <div class="col-md-3 align-items-md-end">
                            <asp:Button ID="btnPesquisar" CssClass="btn btn-primary" runat="server" Text="Pesquisar" OnClick="btnPesquisa_Click" />
                        </div>
                    </div>

                </div>
                <div class="row" style="margin-top: 15px">
                    <div class="col-md-12 text-right">
                        <asp:Label ID="lblInformacao" CssClass="text text-danger" Enabled="false" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </form>
        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </div>
</body>
</html>
