using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using fcd=SiteProjeORM.Facade;
using ent=SiteProjeORM.Entity;
using SiteProjeORM;

namespace SiteProje.Pages.SabitIceriks
{
    public partial class SabitIcerikDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RouteData.Values["SabitIcerikId"]!=null)
            {
                int sabitIcerikId = int.Parse(RouteData.Values["SabitIcerikId"].ToString());
                ent.SabitIcerik icerik = fcd.SabitIceriklers.SabitIcerikDetay(sabitIcerikId);
                LblBaslik.Text = icerik.Baslik;
                LtrIcerik.Text = icerik.Icerik;
            }
            
        }
    }
}