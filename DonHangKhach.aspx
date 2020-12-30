<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="DonHangKhach.aspx.cs" Inherits="DonHangKhach" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:800px">
    <strong><span style="font-size: 15pt; color: #330000"><span style="color: #cc0000">CÁC ĐƠN HÀNG CỦA BẠN</span><br />
    </span></strong>
<asp:GridView ID="gridviewOrders" runat="server" AutoGenerateColumns="False" Width="800px">
<Columns>
    <asp:TemplateField HeaderText="ID giao dịch">
<ItemTemplate>
<a href="ChiTietDonHangKhach.aspx?IDGiaoDich=<%# Eval("IDGiaoDich")%>&IDDonHang=<%# Eval("IDDonHang") %>">
<%# Eval("IDGiaoDich") %>
</a>
</ItemTemplate>
        <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px" />
        <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Ng&#224;y tạo đơn h&#224;ng">
<ItemTemplate>
<%# Eval("NgayTaoDonHang", "{0:dd/MM/yyyy}") %>
</ItemTemplate>
    <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px" />
    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="T&#236;nh trạng đơn h&#224;ng">
<ItemTemplate>
<%# Eval("TenTinhTrangDonHang") %>
</ItemTemplate>
    <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px"/>
    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Ng&#224;y xử l&#253; đơn h&#224;ng">
<ItemTemplate>
<%# Eval("NgayXuLyDonHang", "{0:dd/MM/yyyy}")%>
</ItemTemplate>
    <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px" />
    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Tracking Number">
<ItemTemplate>
<%# Eval( "TrackingNumber" )%>
</ItemTemplate>
    <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" BorderWidth="1px" />
    <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
</asp:TemplateField>
</Columns>
</asp:GridView>
</div>
    <br />
    <asp:Button ID="ImageButtontrove" runat="server" OnClick="ImageButtontrove_Click" CssClass="btn-danger p-1 rounded" Text="Trở về"/>
</asp:Content>

