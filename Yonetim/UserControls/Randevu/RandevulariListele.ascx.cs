using SiteProjeORM;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.Randevu
{
    public partial class RandevulariListele : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataListRandevular_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
            if (e.CommandName=="Onay")
            {
                Response.Redirect("/Yonetim/Default.aspx?go=RandevuAlanlariListele&RandevuId=" + e.CommandArgument);
               
            }
            else if (e.CommandName=="Sil")
            {
                RandevuUyes.RandevuRed(int.Parse(e.CommandArgument.ToString()));
                DataListRandevular.DataBind();
            }
        }
    }
}