<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DangNhapAdmin.aspx.cs" Inherits="Admin_DangNhapAdmin1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table > 
        <tr>
              <h3>Đăng nhập quyền quản trị</h3>
              <div class="form-group">
                <label for="textUsername">Tên đăng nhập</label>
                <asp:TextBox ID="textUsername" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textUsername"
                ErrorMessage="Tên đăng nhập không được rỗng"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                <label for="textMatKhau">Mật khẩu</label>
                <asp:TextBox  ID="textMatKhau" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textMatKhau"
                    ErrorMessage="Mật khẩu không được rỗng"></asp:RequiredFieldValidator>
              </div>
             <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng Nhập" CssClas="btn btn-primary"/>

            <asp:Label ID="labelMessage" runat="server"></asp:Label>
        </tr>
    </table>
</asp:Content>

