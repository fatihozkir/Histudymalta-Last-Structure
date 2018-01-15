using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using enty = SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using SiteProjeORM;

namespace SiteProje.Yonetim.UserControls.Ogretmen
{
    public partial class OgretmenEkle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                #region OgretmenAnaIslemler
                enty.Ogretmen ogretmen = new enty.Ogretmen();
                ogretmen.Ad = txtAd.Text;
                ogretmen.Soyad = txtSoyad.Text;
                ogretmen.Telefon = long.Parse(txtTelefon.Text);
                ogretmen.Mail = txtMail.Text;
                ogretmen.SkypeURL = txtSkype.Text;
                if (fileUploadResim.HasFile)
                {
                    ogretmen.ResimUrl = Tools.ResimIslem(fileUploadResim.PostedFile, Tools.KarakterTemizle(txtAd.Text));
                }
                if (CheckBoxListAltDersler.SelectedIndex < 0)
                {
                    ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">Dersin Ek içeriklerini Seçmediniz !</div>";
                    return;
                }
                Ogretmens.OgretmenEkle(ogretmen);
                #endregion

                #region OgretmenAltHizmetler
                enty.OgretmenAltHizmet ogretmenAltHizmet = new enty.OgretmenAltHizmet();
                ogretmenAltHizmet.OgretmenId = Ogretmens.SonOgretmenId();
                
                List<ListItem> selected = CheckBoxListAltDersler.Items.Cast<ListItem>().Where(li => li.Selected).ToList();
                
                foreach (ListItem item in selected)
                {
                    ogretmenAltHizmet.AltHizmetId = int.Parse(item.Value);
                    OgretmenAltHizmets.OgretmenAltHizmetEkle(ogretmenAltHizmet);
                }
                #endregion
                txtAd.Text = txtMail.Text = txtSkype.Text = txtSoyad.Text = txtTelefon.Text = string.Empty;
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">Öğretmen Başarıyla Eklendi !</div>";
                
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">"+ex.Message+"Bir Hata Meydana Geldi !</div>";
            }

        }
    }
}