using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Pages.Kullanıcı
{
    public partial class Hesabim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UyeId"]!=null)
            {
                int uyeId = int.Parse(Session["UyeId"].ToString());
                Uye u = Uyes.UyeBilgileriGetir(uyeId);
                lblKisiBilgi.Text = u.Ad + " " + u.Soyad;
                LblAd.Text = u.Ad;
                LblSoyad.Text = u.Soyad;
                LblMail1.Text = u.Mail;
                ListViewOdemeYapilanRandevular.DataSource = Randevus.UyeOdemeYapilanRandevulariGetir(uyeId);
                ListViewOdemeYapilanRandevular.DataBind();
                ListViewOdemeYapilmayan.DataSource = Randevus.UyeOdemeBekleyenRandevulariGetir(uyeId);
                ListViewOdemeYapilmayan.DataBind();
            }
            else
            {
                Response.Redirect("/Home");
            }
        }
    }
}