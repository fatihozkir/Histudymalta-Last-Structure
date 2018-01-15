using SiteProjeORM;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using fcd = SiteProjeORM.Facade;
namespace SiteProje.Pages.Ogretmens
{
    public partial class OgretmenListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeaterOgretmenler.DataSource = fcd.Ogretmens.OgretmenListele();
            RepeaterOgretmenler.DataBind(); 
            DataTable dt = new DataTable();
            int OgretmenId = 0;
            foreach (RepeaterItem item in RepeaterOgretmenler.Items)
            {
                Label lblAdSoyad = item.FindControl("LblAdSoyad") as Label;
                Label lblBrans = item.FindControl("LblBrans") as Label;
                LinkButton btn =  item.FindControl("LinkBtnDetay") as LinkButton;
                OgretmenId = int.Parse(btn.CommandArgument.ToString());
                btn.PostBackUrl = "/TeacherDetails/" + Tools.KarakterTemizle(lblAdSoyad.Text) + "-" + OgretmenId;
                dt = fcd.OgretmenAltHizmets.OgretmenAnaDersleri(OgretmenId);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    lblBrans.Text += dt.Rows[i]["Baslik"].ToString() + "<br/><br/>";
                }

            }
            
        }
       
    }
}