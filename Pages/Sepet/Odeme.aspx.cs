using SiteProjeORM;
using SiteProjeORM.Entity;
using fcd=SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Pages.Sepet
{
    public partial class Odeme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UyeId"] != null && RouteData.Values["AltHizmetId"] != null)
            {
                int altHizmetId = int.Parse(RouteData.Values["AltHizmetId"].ToString());
                int UyeId = int.Parse(Session["UyeId"].ToString());
                AltHizmet hizmet = fcd.AltHizmets.AltHizmetGetir(altHizmetId);
                string[] fiyat= hizmet.Fiyat.ToString().Split(',');
                LblToplamTutar.Text = LblFiyat.Text = fiyat[0];
                LblHizmet.Text = hizmet.Baslik;
                DataTable dt=Tools.IcerikListele("Select Adres from Iletisim");
                LblBanka.Text = dt.Rows[0]["Adres"].ToString();

                DataTable DtRandevu=fcd.Randevus.AltHizmeteGoreRandevulariListele(altHizmetId);
                RepeaterRandevular.DataSource = DtRandevu;
                RepeaterRandevular.DataBind();
                DrpOgretmen.DataSource = fcd.Ogretmens.OgretmenAltHizmetListele(altHizmetId);
                DrpOgretmen.DataValueField = "OgretmenId";
                DrpOgretmen.DataTextField = "AdSoyad";
                DrpOgretmen.DataBind();

            }
            else
            {
                Response.Redirect("/Login");
            }
        }
        protected void RepeaterRandevular_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="Kayit")
            {
                RandevuUye ru = new RandevuUye();
                ru.RandevuId=int.Parse(e.CommandArgument.ToString());
                ru.UyeId=int.Parse(Session["UyeId"].ToString());
                ru.OgretmenId = int.Parse(DrpOgretmen.SelectedValue);
                fcd.RandevuUyes.RandevuKaydet(ru);
                Response.Redirect("/Account");
            }
        }
    }
}