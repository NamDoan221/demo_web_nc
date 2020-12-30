<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ThemSanPham.aspx.cs" Inherits="Admin_ThemSanPham" Title="Thêm sản phẩm" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding:2rem">
      <div class="form-group">
            <label for="txtTenSanPham">Tên sản phẩm</label>
            <asp:TextBox CssClass="form-control" ID="txtTenSanPham" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                    ErrorMessage="Tên sản phẩm không để trống" ControlToValidate="txtTenSanPham"></asp:RequiredFieldValidator>
      </div>
        <div class="form-group">
            <label for="textGia">Loại sản phẩm</label>
            <asp:DropDownList CssClass="form-control w-100" ID="dropDanhMucSanPham" runat="server" Width="155px"></asp:DropDownList>
      </div>
     <div class="form-group">
            <label for="txtTenSanPham">Mô tả sản phẩm</label>
            <CKEditor:CKEditorControl ID="CKEditorControlMoTa" runat="server"></CKEditor:CKEditorControl>
      </div>
      <div class="form-group">
            <label for="textGia">Đơn giá</label>
            <asp:TextBox CssClass="form-control" ID="txtGia" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Giá sản phẩm không để trống" ControlToValidate="txtGia">Giá sản phẩm không để trống</asp:RequiredFieldValidator>
      </div>
      <div class="form-group">
            <label for="textGia">Ảnh sản phẩm</label>
          <div class="form-control">
             <asp:FileUpload ID="fileuploadHinhSanPham" runat="server" Width="297px" />
          </div>
     </div>
        <asp:Button  CssClass="btn btn-primary" ID="btnCapNhat" runat="server" Text="Thêm" OnClick="btnCapNhat_Click" />
        <asp:Button CssClass="btn btn-outline" ID="BtnBoQua" runat="server" Text="Bỏ qua" OnClick="BtnBoQua_Click" />
    </div>
</asp:Content>


