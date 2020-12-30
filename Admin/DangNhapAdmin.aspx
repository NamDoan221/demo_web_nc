<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DangNhapAdmin.aspx.cs" Inherits="Admin_DangNhapAdmin1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:86vh;display:flex;align-items:center;background:#f5f6fa;justify-content:center">
        <div style="width:5 0%;background:#fff;padding:3rem;border-radius:7px;box-shadow: 0 2px 1px -1px rgba(0,0,0,.2), 0 1px 1px 0 rgba(0,0,0,.14), 0 1px 3px 0 rgba(0,0,0,.12);">
            <h3><a class="navbar-brand" href="#"><img src="https://cdn.jiohealth.com/pharmacy/product/asset/images/navJioLogo@3x.png" alt="Alternate Text" width="70px" /></a>Đăng nhập quyền quản trị</h3>
            <div class="form-group">
                <label for="textUsername">Tên đăng nhập</label>
                <asp:TextBox ID="textUsername" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textUsername"
                ErrorMessage="Tên đăng nhập không được rỗng"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group mb-0">
                <label for="textMatKhau">Mật khẩu</label>
                <asp:TextBox  ID="textMatKhau" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textMatKhau"
                    ErrorMessage="Mật khẩu không được rỗng"></asp:RequiredFieldValidator>
                </div>
            <div class="form-check mb-2">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Nhớ mật khẩu</label>
            </div>
                <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng Nhập" CssClass="btn btn-primary"/>
            <asp:Label ID="labelMessage" runat="server"></asp:Label>
        </div>
     </div>
</asp:Content>

