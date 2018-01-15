using SiteProjeORM;
using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.HizmetAltHizmet
{
    public partial class AltHizmetListele : System.Web.UI.UserControl
    {
        string sorgu = "Select ah.AltHizmetId,ah.Baslik,ah.Icerik,ah.Fiyat,h.Baslik as Hizmet from AltHizmetler ah inner join Hizmetler h on ah.HizmetId=h.HizmetId ";
        protected void Page_Load(object sender, EventArgs e)
        {
            GridDoldur(sorgu);
        }
        public void GridDoldur(string sorgu)
        {
            GridViewAltHizmetler.DataSource = Tools.IcerikListele(sorgu);
            GridViewAltHizmetler.DataBind();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue=="-1")
            {
                GridDoldur(sorgu);
            }
            else
            {
                string sorguFiltreli = sorgu + "where h.HizmetId=" + DropDownList1.SelectedValue;
                GridDoldur(sorguFiltreli);
            }
            
        
        }

        protected void GridViewAltHizmetler_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Sil":
                    AltHizmets.AltHizmetSil(int.Parse(e.CommandArgument.ToString()));
                    GridViewAltHizmetler.DataBind();
                    break;
                case "Duzenle":
                    Response.Redirect("/Yonetim/Default.aspx?go=AltHizmetDuzenle&AltHizmetId=" + e.CommandArgument);
                    break;
            }
        }
    }
}