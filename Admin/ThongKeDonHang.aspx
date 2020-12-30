<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true"
    CodeFile="ThongKeDonHang.aspx.cs" Inherits="Admin_ThongKeDonHang" Title="Thống kê đơn hàng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView CssClass="table table-hover" ID="gridTatCaDonHang" runat="server"
        AutoGenerateColumns="False" Width="100%" Height="100%" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <a href="ChiTietDonHang.aspx?IDgiaodich=<%# Eval("IDgiaodich")
            %>&IDdonhang=<%# Eval("IDdonhang") %>&Email=<%# Eval("Email") %>"><%#
            Eval("IDgiaodich") %></a>
                </ItemTemplate>
                <HeaderTemplate>
                    <span scope="col">ID Giao dịch</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <%# Eval("Hoten") %>
                </ItemTemplate>
                <HeaderTemplate>
                    <span scope="col">Họ & Tên</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <%# Eval("Diachi") %>
                    <br />
                </ItemTemplate>
                <HeaderTemplate>
                    <span scope="col">Địa chỉ</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <%# Eval("Email") %>
                </ItemTemplate>
                <HeaderTemplate>
                    <span scope="col">Email</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số điện thoại">
                <ItemTemplate>
                    <%# Eval("Sodienthoai") %>
                </ItemTemplate>

                <HeaderTemplate>
                    <span scope="col">Số điện thoại</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <%# Eval("Ngaytaodonhang","{0: dd/MM/yyyy}") %>
                </ItemTemplate>
                <HeaderTemplate>
                    <span scope="col">Ngày tạo đơn</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <%# Eval("TenTinhtrangdonhang") %>
                </ItemTemplate>
                <HeaderTemplate>
                    <span scope="col">Tình trạng đơn</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <a class="btn btn-info" href="ChiTietDonHang.aspx?IDgiaodich=<%# Eval("IDgiaodich")
            %>&IDdonhang=<%# Eval("IDdonhang") %>&Email=<%# Eval("Email") %>">Sửa</a>
                     <a class="btn btn-outline-danger" href="ChiTietDonHang.aspx?IDgiaodich=<%# Eval("IDgiaodich")
            %>&IDdonhang=<%# Eval("IDdonhang") %>&Email=<%# Eval("Email") %>">Xoá</a>
                </ItemTemplate>
                <HeaderTemplate>
                    <span scope="col">Tác vụ</span>
                </HeaderTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</asp:Content>

