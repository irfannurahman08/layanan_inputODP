<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UTS_SISTER_0074.aspx.cs" Inherits="UTS_SISTER_0074" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<table border="1">
        <tr>
            <th colspan="2">Layanan Input data ODP</th>
        </tr>

        <tr>
            <th class="auto-style1">Nama Desa</th>
            <td class="auto-style3">
                <asp:TextBox id="txtNamaDesa" runat="server"/>
            </td>
        </tr>
        <tr>
            <th class="auto-style1">RT</th>
            <td class="auto-style3">
                <asp:TextBox id="txtRt" runat="server"/>
            </td>
        </tr>    
        <tr>
            <th class="auto-style1">RW</th>
            <td class="auto-style3">
                <asp:TextBox id="txtRw" runat="server"/>
            </td>
        </tr>
        <tr>
            <th class="auto-style1" >Kecamatan</th>
            <td class="auto-style3">
                <asp:TextBox id="txtKecamatan" runat="server"/>
            </td>
        </tr>
        <tr>
            <th class="auto-style1">Jumlah ODP </th>
            <td class="auto-style3">
                <asp:TextBox id="txtOdp" runat="server"/>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                <asp:Button ID="btninput" runat="server" Text="Input Data" Onclick="btninput_Click" />
            </th>
        </tr>
        <tr>
            <th colspan="2">
                <asp:Label id="lblInput" runat="server" Text="-"/>
            </th>
        </tr>
    </table>
        <br />
        <br />
     <asp:GridView ID="GridView1" runat="server" Border="1" AutoGenerateColumns="False" DataKeyNames="Id" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" EnableModelValidation="True" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ItemStyle-Width="20px" >                    
<ItemStyle Width="20px"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Nama Desa" ItemStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </ItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RT" ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RW" ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kecamatan" ItemStyle-Width="100px">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                        </ItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Jumlah ODP" ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                        </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
    </div>
    </form>
</body>
</html>
