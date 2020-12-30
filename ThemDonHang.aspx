<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="ThemDonHang.aspx.cs" Inherits="ThemDonHang" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gridgiohang" runat="server" AutoGenerateColumns="False" DataKeyNames="IdSanPham" OnRowDataBound="gridgiohang_RowDataBound" Width="800px">
        <Columns>            
            <asp:TemplateField HeaderText="T&#234;n Sản Phẩm">
                <ItemTemplate>
                    <asp:Label ID="lblTenSanPham" runat="server" Text='<%# Eval("TenSanPham") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:Label ID="lblSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>&nbsp;
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn Gi&#225;">
                <ItemTemplate>
                    <asp:Label ID="lblDonGia" runat="server" Text='<%# Eval("GiaSanPham") %>'></asp:Label>
               
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" CssClass="text-center" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Th&#224;nh Tiền">
                <ItemTemplate>
                    <asp:Label ID="lblThanhTien" runat="server" Text='<%# Eval("ThanhTien","{0} VND") %>'></asp:Label>
                
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" CssClass="text-center" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Tổng tiền:" Font-Bold="True" ForeColor="#330000"></asp:Label>
    <asp:Label ID="lblTotal" runat="server" ForeColor="orangered"></asp:Label><br />
    <br />
    <asp:Button ID="ImageButtonTieptucmuahang" runat="server" OnClick="ImageButtonTieptucmuahang_Click" CssClass="btn-danger p-1 rounded" Text="Tiếp tục mua hàng"/>
    <asp:Button ID="ImageButtonTaovaguidonhang" runat="server" OnClick="ImageButtonTaovaguidonhang_Click" CssClass="btn-danger p-1 rounded" Text="Gửi đơn hàng"/>
</asp:Content>

