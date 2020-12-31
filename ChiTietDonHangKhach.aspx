<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="ChiTietDonHangKhach.aspx.cs" Inherits="ChiTietDonHangKhach"  Title="Chi tiết đơn hàng" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="color: #cc0000"><strong style="font-size: 15pt"><span style="color: #cc0000">
     <br />
     CHI TIẾT ĐƠN HÀNG</span></strong></span><br />
    <span style="color: #cc0000">
    ID Giao dịch:</span>
    <asp:Label ID="lblIDGiaoDich" runat="server" Font-Bold="True" ForeColor="#330000"></asp:Label><br />
<asp:GridView ID="gridChiTietDonHang" runat="server" AutoGenerateColumns="False"
Width="800px" OnRowDataBound="gridChiTietDonHang_RowDataBound">
<Columns>
<asp:TemplateField HeaderText="Số lượng">
<ItemTemplate>
<%# Eval("SoLuongSanPham") %>
</ItemTemplate>
    <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px" />
    <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="T&#234;n Sản Phẩm">
<ItemTemplate>
<%# Eval("TenSanPham") %>
</ItemTemplate>
    <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px" />
    <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Gi&#225; Sản phẩm">
<ItemTemplate>
<%# Eval("GiaSanPham" , "{0:###,###,###} VNĐ" )%>
</ItemTemplate>
    <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px" />
    <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
</asp:TemplateField>
</Columns>
</asp:GridView>
    <span style="color: #330000"><strong>
    Tổng cộng:</strong></span>
    <asp:Label ID="lblTongTien" runat="server" Font-Bold="True" ForeColor="orangered"></asp:Label><br />
    <br />
    <asp:Button ID="ImageButtonTroVe" runat="server" OnClick="ImageButtonTroVe_Click" CssClass="btn-danger p-1 rounded" Text="Trở về"/>
</asp:Content>

