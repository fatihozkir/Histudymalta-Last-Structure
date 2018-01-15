using SiteProjeORM.Entity;
using fcd = SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Pages.Blogs
{
    public partial class BlogDetay : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RouteData.Values["CokluIcerikId"]!=null)
            {
                int id = int.Parse(RouteData.Values["CokluIcerikId"].ToString());
                CokluIcerik icerik = new CokluIcerik();
                icerik = fcd.CokluIceriklers.CokluIcerikDetay(id);
                LblBaslik.Text = LblBaslik1.Text = LblUstBaslik.Text = LblBaslikMenu.Text = imgResim.AlternateText = icerik.Baslik;
                LtrIcerik.Text = icerik.Icerik;
                imgResim.ImageUrl = "/Upload/Images/Big/"+icerik.ResimUrl;

            }
            else
            {
                Response.Redirect("/Home");
            }
        }
    }
}