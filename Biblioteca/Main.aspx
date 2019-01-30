<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Biblioteca.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 96px; width: 930px">
    
        ISBN:
        <asp:TextBox ID="txtIsbn" runat="server" style="margin-left: 2px" Width="165px"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
        <asp:Button ID="btnLimpar" runat="server" OnClick="btnLimpar_Click" Text="Limpar" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Titulo"></asp:Label>
        :<asp:TextBox ID="txtTitulo" runat="server" style="margin-left: 8px" Width="165px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Autor"></asp:Label>
        :<asp:TextBox ID="txtAutor" runat="server" style="margin-left: 8px" Width="165px"></asp:TextBox>
    
    </div>
        <div style="height: 284px">
            <asp:Button ID="btnExcluir" runat="server" OnClick="btnExcluir_Click" Text="Excluir" />
            <asp:Button ID="btnAlterar" runat="server" OnClick="btnAlterar_Click" Text="Alterar" />
            <asp:Button ID="btnIncluir" runat="server" OnClick="btnIncluir_Click" Text="Incluir" />
            <br />
            <br />
            <asp:GridView ID="gvLivros" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Isbn" HeaderText="ISBN" />
                    <asp:BoundField DataField="Autor" HeaderText="Autor" />
                    <asp:BoundField DataField="Titulo" HeaderText="Titulo" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
