<%@ Page Language="C#" MasterPageFile="~/mainphu.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label><br />
<asp:GridView ID="gridgiohang" runat="server" AutoGenerateColumns="False" DataKeyNames="IDgiohang" OnRowDataBound="gridgiohang_RowDataBound" Width="800px">
    
        <Columns>
            <asp:TemplateField HeaderText="X&#243;a">
                <ItemTemplate>
                    <asp:CheckBox ID="checkboxDelete" runat="server" />
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center" 
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle BackColor="White" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sản Phẩm">
                <ItemTemplate>
                <%# Eval("TenSanPham") %>
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="textQuantity" runat="server" Text='<%# Eval("SoLuong") %>' Width="93px"></asp:TextBox>
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn Gi&#225;">
                <ItemTemplate>
                <%# Eval("GiaSanPham")%>
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" CssClass="text-center" BorderColor="orangered" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Th&#224;nh Tiền">
                <ItemTemplate>
                <%# Eval("ThanhTien","{0:###,###,###} VND")%>
                </ItemTemplate>
                <HeaderStyle BackColor="orangered" BorderColor="orangered" ForeColor="white" HorizontalAlign="Center"
                    VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                <ItemStyle ForeColor="#404040" HorizontalAlign="Right" VerticalAlign="Middle" BorderColor="orangered" CssClass="text-center" BorderStyle="Solid" BorderWidth="1px" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Tổng tiền:" Font-Bold="True" ForeColor="#330000"></asp:Label>
    <asp:Label ID="lblTotal" runat="server" ForeColor="orangered"></asp:Label><br />
    <br />
    <asp:Button ID="ImageButtontieptucmuahang" runat="server" OnClick="ImageButtontieptucmuahang_Click" CssClass="btn-danger p-1 rounded" Text="Tiếp tục mua hàng"/>
    <asp:Button ID="ImageButtoncapnhatthaydoi" runat="server" OnClick="ImageButtoncapnhatthaydoi_Click" CssClass="btn-danger p-1 rounded" Text="Cập nhật"/>
    <asp:Button ID="ImageButtonXacnhanthanhtoan" runat="server" OnClick="ImageButtonXacnhanthanhtoan_Click" CssClass="btn-danger p-1 rounded" Text="Thanh toán"/>
</asp:Content>

