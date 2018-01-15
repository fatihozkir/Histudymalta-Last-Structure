using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.SabitIcerikler
{
    public partial class SabitIcerikListele : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdViewSabitIcerik_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Duzenle")
            {
                Response.Redirect("/Yonetim/Default.aspx?go=SabitIcerikDuzenle&id=" + e.CommandArgument);
            }
            else if (e.CommandName=="Sil")
            {
                int sabitIcerikId = int.Parse(e.CommandArgument.ToString());
                SabitIceriklers.SabitIcerikSil(sabitIcerikId);
                grdViewSabitIcerik.DataBind();
            }
        }
    }
}