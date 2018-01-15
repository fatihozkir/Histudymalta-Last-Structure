using SiteProjeORM.Entity;
using fcd=SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.HizmetAltHizmet
{
    public partial class AltHizmetDuzenle : System.Web.UI.UserControl
    {
        int AltHizmetId = int.Parse(HttpContext.Current.Request.QueryString["AltHizmetId"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            AltHizmet altHizmet = fcd.AltHizmets.AltHizmetGetir(AltHizmetId);
            txtBaslik.Text = altHizmet.Baslik;
            string[] fiyat = (altHizmet.Fiyat).ToString().Split(',');
            txtFiyat.Text = fiyat[0];
            editorIcerik.Text = altHizmet.Icerik;
            DrpDownHizmet.SelectedValue = altHizmet.HizmetId.ToString();
            TagGetir();
        }

        private void TagGetir()
        {
            RepeaterKelime.DataSource = fcd.AltHizmetTags.TaglariGetir(AltHizmetId);
            RepeaterKelime.DataBind();
        }

        protected void btnDuzenle_Click(object sender, EventArgs e)
        {
            try
            {
                AltHizmet guncelle = new AltHizmet();
                guncelle.Baslik = txtBaslik.Text;
                guncelle.Fiyat = decimal.Parse(txtFiyat.Text);
                guncelle.HizmetId = int.Parse(DrpDownHizmet.SelectedValue);
                guncelle.Icerik = editorIcerik.Text;
                guncelle.AltHizmetId = AltHizmetId;
                fcd.AltHizmets.AltHizmetGuncelle(guncelle);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">Alt Hizmet Başarıyla Güncelle !</div>";
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">" + ex.Message + "<br/> Hata Oluştu !</div>";
            }


        }

        protected void BtnKelimeEkle_Click(object sender, EventArgs e)
        {
            AltHizmetlerMetaTag ahmt = new AltHizmetlerMetaTag();
            ahmt.AltHizmetId = AltHizmetId;
            ahmt.Tag = TxtKelime.Text;
            fcd.AltHizmetTags.TagEkle(ahmt);
            TxtKelime.Text = string.Empty;
            TagGetir();
        }

        protected void RepeaterKelime_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="Sil")
            {
                int tagId = int.Parse(e.CommandArgument.ToString());
                fcd.AltHizmetTags.TagSil(tagId);
                TagGetir();
            }
        }
    }
}