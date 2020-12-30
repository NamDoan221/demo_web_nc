<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true"
    CodeFile="ChiTietDonHang.aspx.cs" Inherits="Admin_ChiTietDonHang" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form-group">
        <label for="exampleFormControlInput1">ID Giao dịch</label>
        <asp:Label ID="labelTransactionID" runat="server" ForeColor="#3300FF"></asp:Label>
    </div>
    <div class="form-group">
        <label for="exampleFormControlInput1">Các sản phẩm đơn hàng</label>
        <asp:GridView ID="gridviewOrderDetailsProducts" runat="server" AutoGenerateColumns="False"
            Width="481px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" 
            BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("SoLuongSanPham") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="T&#234;n sản phẩm">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSanPham") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Đơn gi&#225;">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("GiaSanPham","{0:###,###,###} VNĐ") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle BackColor="#E0E0E0" ForeColor="Maroon" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    <div class="form-group">
        <label for="exampleFormControlInput1">Ngày xử lý đơn hàng</label>
        <div class="d-flex form-control" style="position:relative">
            <asp:TextBox CssClass="form-control" ID="textShippedDate" runat="server"></asp:TextBox>
            <asp:ImageButton ID="imagebuttonDatePicker" runat="server" ImageUrl="~/images/calendar.jpg"
            OnClick="imagebuttonDatePicker_Click" Height="25px" ImageAlign="Top" Width="25px" /><br />
            <asp:Calendar style="position:absolute;background:#fff;right:0;top:50px" ID="calendarDatePicker" runat="server" OnSelectionChanged="calendarDatePicker_SelectionChanged"
            Width="317px" BorderColor="Black"></asp:Calendar>
        </div>
        
    </div>
    <div class="form-group">
        <label for="exampleFormControlInput1">Số theo dõi</label>
        <asp:TextBox CssClass="form-control" ID="textTrackingNumber" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="exampleFormControlInput1">Tình trạng đơn hàng</label>
        <asp:DropDownList CssClass="form-control" ID="dropdownlistOrderStatus" runat="server" Width="139px">
        </asp:DropDownList>
    </div>
    <asp:Button CssClass="btn" ID="btnTroVe" runat="server" Text="Trở về"
        OnClick="btnTroVe_Click" />
    <asp:Button CssClass="btn btn-primary" ID="btnCapNhat" runat="server"  Text="Cập nhật"
        OnClick="btnCapNhat_Click" />
</asp:Content>
