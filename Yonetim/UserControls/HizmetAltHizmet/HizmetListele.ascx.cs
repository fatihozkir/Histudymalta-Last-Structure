using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.HizmetAltHizmet
{
    public partial class HizmetListele : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewHizmetler_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Duzenle")
            {
                Response.Redirect("/Yonetim/Default.aspx?go=HizmetDuzenle&HizmetId=" + e.CommandArgument);
            }
            else if (e.CommandName=="Sil")
            {
                Hizmets.HizmetSil(int.Parse(e.CommandArgument.ToString()));
                GridViewHizmetler.DataBind();
            }
        }
    }
}