using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MOONLY.Common;
using MOONLY.BusinessLogic;

public partial class Admin_deleteProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HienThiChiTietDonHang();
    }
    private void HienThiChiTietDonHang()
    {
        Delete(int.Parse(Request.QueryString["IdSanPham"]));
    }
    private void Delete(int id)
    {
        XuLyXoaSanPham xulyxoasanpham = new XuLyXoaSanPham();
        MOONLY.Common.SanPham sanpham = new MOONLY.Common.SanPham();
        sanpham.Idsanpham = id;
        xulyxoasanpham.Sanpham = sanpham;
        try
        {
            xulyxoasanpham.Thucthi();
            Response.Redirect("SanPham.aspx");
        }
        catch
        {
            Response.Redirect("SanPham.aspx");
        }
    }
}