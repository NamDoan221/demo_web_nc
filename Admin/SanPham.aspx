<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="SanPham.aspx.cs" Inherits="Admin_SanPham" Title="Sản phẩm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 100%;background:#f5f6fa" class="container">
        <asp:DataList ID="dtlSanpham" runat="server"  RepeatColumns="4" Width="100%" CellPadding="0">
        <ItemTemplate>
            <asp:Panel ID="Panel1" runat="server"
                style="background:#fff;margin:10px;width:260px;display:flex;flex-direction:column;justify-content:space-between;align-items:center;box-shadow: 0 0.1rem 0.2rem 0 rgba(0, 0, 0, 0.2);border-radius:6px"
                NavigateUrl='<%# Eval("IdSanPham","SuaSanPham.aspx?IdSanPham={0}") %>'
                Text='<%# Eval("TenSanPham") %>'>
                <div>
                    <asp:Image ID="Image1" runat="server" style="object-fit:cover;height:170px" ImageUrl='<%# Eval("IdHinhSanPham","../HienThiHinhSanPham.ashx?IdHinhSanPham={0}") %>'/>
                </div>
                <div class="mb-3 p-2">
                    <asp:Label CssClass="d-flex text-truncate text-center justify-content-center" style="font-size:16px;font-weight:700;width:250px" ID="Label3" runat="server" Text='<%# Eval("TenSanPham") %>'></asp:Label>
                    <asp:Label CssClass="d-flex text-truncate text-center justify-content-center" ID="Label1" runat="server" Text='<%# Eval("GiaSanPham","{0:###,###,###} VND") %>'></asp:Label>
                </div>
                <div class="mb-3 p-2">
                    <asp:HyperLink CssClass="btn btn-outline-danger" ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("IdSanPham","SuaSanPham.aspx?IdSanPham={0}") %>'>Xoá sản phẩm</asp:HyperLink>
                    <asp:HyperLink CssClass="btn btn-info" ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("IdSanPham","SuaSanPham.aspx?IdSanPham={0}") %>'>Chi tiết</asp:HyperLink>
                </div>
            </asp:Panel>
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>

