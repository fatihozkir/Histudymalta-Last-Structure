using SiteProjeORM;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.Ogretmen
{
    public partial class OgretmenListele : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataListOgretmen_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName=="Duzenle")
            {
                Response.Redirect("/Yonetim/Default.aspx?go=OgretmenDuzenle&OgretmenId=" + e.CommandArgument);
            }
            else if (e.CommandName=="Sil")
            {
                Ogretmens.OgretmenSil(int.Parse(e.CommandArgument.ToString()));
                DataListOgretmen.DataBind();
            }
            else if (e.CommandName=="DersIslem")
            {
                Response.Redirect("/Yonetim/Default.aspx?go=OgretmenDersDuzenle&OgretmenId=" + e.CommandArgument);
            }
        }
    }
}