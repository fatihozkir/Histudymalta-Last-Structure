using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.Mesaj
{
    public partial class MesajlariListele : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewMesajlar_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Sil")
            {
                Mesajs.MesajSil(int.Parse(e.CommandArgument.ToString()));
                GridViewMesajlar.DataBind();
            }
            else if (e.CommandName=="Detay")
            {
                Response.Redirect("/Yonetim/Default.aspx?go=MesajDetay&MesajId=" + e.CommandArgument);
            }
        }
    }
}