using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.Ogretmen
{
    public partial class OgretmenDers : System.Web.UI.UserControl
    {
        int ogretmenId = int.Parse(HttpContext.Current.Request.QueryString["OgretmenId"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            BilgileriGetir();
        }

        private void BilgileriGetir()
        {
            try
            {
                DataTable Dt = OgretmenAltHizmets.OgretmenAltHizmetGetir(ogretmenId);
                LabelOgretmen.Text = Dt.Rows[0]["OgretmenBilgi"].ToString();
                RepeaterOgretmenDers.DataSource = Dt;
                RepeaterOgretmenDers.DataBind();
            }
            catch (Exception)
            {
                return;
            }
            
        }

        protected void RepeaterOgretmenDers_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="Sil")
            {
                OgretmenAltHizmets.OgretmenAltHizmetSil(int.Parse(e.CommandArgument.ToString()));
                RepeaterOgretmenDers.DataBind();
            }
        }

        protected void btnTagEkle_Click(object sender, EventArgs e)
        {
            OgretmenAltHizmet ogretmenAltHizmet = new OgretmenAltHizmet();
            ogretmenAltHizmet.OgretmenId = ogretmenId;

            List<ListItem> secili = CheckBoxListDersler.Items.Cast<ListItem>().Where(x => x.Selected).ToList();
            foreach (ListItem item in secili)
            {
                ogretmenAltHizmet.AltHizmetId = int.Parse(item.Value);
                OgretmenAltHizmets.OgretmenAltHizmetEkle(ogretmenAltHizmet);
            }

            BilgileriGetir();
        }
    }
}