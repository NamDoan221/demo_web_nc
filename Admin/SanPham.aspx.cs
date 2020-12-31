using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MOONLY.BusinessLogic;
using MOONLY.Operational;

public partial class Admin_SanPham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            HienSanPham();
        }
    }
    private void HienSanPham()
    {
        XuLyLaySanPham xulysanpham = new XuLyLaySanPham();
        try
        {
            xulysanpham.Thucthi();
        }
        catch
        {
            Response.Redirect("../Trangloi.aspx");
        }
        dtlSanpham.DataSource = xulysanpham.Ketqua;
        dtlSanpham.DataBind();
    }

    private void Timsanpham(string tieuchuantim)
    {
        XuLyLayTimSanPham xulytim = new XuLyLayTimSanPham();
        xulytim.Tieuchuantim = tieuchuantim;
        try
        {
            xulytim.thucthi();
        }
        catch
        {
            Response.Redirect("Trangloi.aspx");
        }
        dtlSanpham.DataSource = xulytim.Ketqua;// dtlSanPham là ID của Datalist
        dtlSanpham.DataBind();
        if (dtlSanpham.Items.Count != 0)
            lblketqua.Text = "Các sản phẩm bạn cần tìm:";
        //lblketqua là ID của Label chứa dòng thông tin để thông báo kết quả tìm kiếm
        else
        {
            lblketqua.Text = "Không tìm thấy sản phẩm";
        }
    }
    protected void ImageButtonTim_Click(object sender, EventArgs e)
    {
        Timsanpham(textSearch.Text);
    }
    protected void bntThemSanPham_Click(object sender, EventArgs e)
    {
        Response.Redirect("ThemSanPham.aspx");
    }
    protected void btnDelete(object sender, EventArgs e)
    {
        Response.Redirect("ThemSanPham.aspx");
    }
}
