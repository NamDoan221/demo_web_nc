<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="ChiTietSanPham.aspx.cs" Inherits="ChiTietSanPham" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dtlChiTietSanPham" runat="server">
        <ItemTemplate>
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td rowspan="4" style="width: 550px;box-shadow: 0 0.1rem 0.2rem 0 rgba(0, 0, 0, 0.2);" class="rounded">
                        <asp:Image ID="Image1" runat="server" Height="225px" ImageUrl='<%# Eval("IdHinhSanPham","HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>' Width="175px" /></td>
                    <td style="width: 350px">
                        <asp:Label ID="lblTenSanpham" runat="server" Text='<%# Eval("TenSanPham") %>' Font-Bold="True" ForeColor="#330000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 350px">
                        <span style="color: #660000">
                        </span>
                        <asp:Label ID="lblGiaSanpham" runat="server" Text='<%# Eval("GiaSanPham", "{0: ##,###,###} VND") %>' ForeColor="#990000"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 245px; height: 35px; display: flex; justify-content:center" rowspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "GioiThieuSanPham.aspx" %>' CssClass="btn btn-outline-danger" style="text-decoration: none" >Trở về</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" runat="server"  CssClass="btn btn-primary" style="text-decoration: none" NavigateUrl='<%# Eval("IdSanPham","ThemGioHang.aspx?IDSanpham={0}") %>'>Thêm vào giỏ hàng</asp:HyperLink></td>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td align="center" colspan="2" rowspan="1">
                        <span style="color: #660000" class="d-block mt-3">THÔNG TIN CHI TIẾT</span></td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="1" align="left">
                        <span style="color: #660000">
                        </span>
                        <asp:Label ID="lblMoTaChiTiet" runat="server" Text='<%# Eval("MoTaSanPham") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

