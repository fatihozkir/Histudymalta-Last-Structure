using SiteProjeORM.Entity;
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
    public partial class OgretmenDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RouteData.Values["OgretmenId"]!=null)
            {
                int OgretmenId = int.Parse(RouteData.Values["OgretmenId"].ToString());
                Ogretmen o = fcd.Ogretmens.OgretmenBilgiGetir(OgretmenId);
                LabelOgretmenBilgi.Text = LtrOgretmenBaslik.Text = o.Ad + " " + o.Soyad;
                LtrAciklama.Text = o.Bilgi.ToString();
                imgProfil.ImageUrl = "/Upload/Images/Small/" + o.ResimUrl;
                LblMailAdres.Text = o.Mail;
                LblSkypeAdres.Text = o.SkypeURL;
                LblTelefon.Text = o.Telefon.ToString();
                LblDersSayi.Text = LblVerdigiDersSayisi.Text = fcd.OgretmenAltHizmets.OgretmeninVerdigiDersSayisi(OgretmenId).ToString();
                DataTable Dt= fcd.OgretmenAltHizmets.OgretmenDersListele(OgretmenId);
                RepeaterDers.DataSource = Dt;
                RepeaterDers.DataBind();

            }
            else
            {
                Response.Redirect("/Anasayfa");
            }
        }
    }
}