using SiteProjeORM;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using enty = SiteProjeORM.Entity;

namespace SiteProje.Yonetim.UserControls.Ogretmen
{
    public partial class OgretmenDuzenle : System.Web.UI.UserControl
    {
        int ogretmenId = int.Parse(HttpContext.Current.Request.QueryString["OgretmenId"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            BilgileriGetir();
        }

        private void BilgileriGetir()
        {
            enty.Ogretmen ogretmen = Ogretmens.OgretmenBilgiGetir(ogretmenId);
            txtAd.Text = ogretmen.Ad;
            txtSkype.Text = ogretmen.Mail;
            txtSoyad.Text = ogretmen.Soyad;
            txtSkype.Text = ogretmen.SkypeURL;
            txtTelefon.Text = ogretmen.Telefon.ToString();
            txtMail.Text = ogretmen.Mail;
            ImageOgretmen.ImageUrl = "/Upload/Images/Small/" + ogretmen.ResimUrl;
            HiddenFieldResim.Value = ogretmen.ResimUrl;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                enty.Ogretmen ogr = new enty.Ogretmen();
                ogr.Ad = txtAd.Text;
                ogr.Soyad = txtSoyad.Text;
                ogr.Mail = txtMail.Text;
                ogr.Telefon = long.Parse(txtTelefon.Text);
                ogr.SkypeURL = txtSkype.Text;
                ogr.OgretmenId = ogretmenId;
                if (RadioButtonListResimDegistir.SelectedValue == "0")
                {
                    if (fileUploadResim.HasFile)
                    {
                        ogr.ResimUrl = Tools.ResimIslem(fileUploadResim.PostedFile, Tools.KarakterTemizle(txtAd.Text + txtSoyad.Text));
                    }

                }
                else
                {

                    ogr.ResimUrl = HiddenFieldResim.Value;
                }
                Ogretmens.OgretmenGuncelle(ogr);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">Öğretmen Başarıyla Güncellendi !</div>";
                BilgileriGetir();
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">" + ex.Message + "Bir Hata Meydana Geldi !</div>";
            }
                   
        }

        protected void RadioButtonListResimDegistir_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonListResimDegistir.SelectedValue=="0")
            {
                PanelResim.Visible = true;
            }
            else
            {
                PanelResim.Visible = false;
            }
        }
    }
}