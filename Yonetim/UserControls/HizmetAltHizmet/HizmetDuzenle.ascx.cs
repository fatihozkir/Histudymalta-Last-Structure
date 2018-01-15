using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.HizmetAltHizmet
{
    public partial class HizmetDuzenle : System.Web.UI.UserControl
    {
        int HizmetId = int.Parse(HttpContext.Current.Request.QueryString["HizmetId"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["HizmetId"] == null)
                return;
            Hizmet hizmet=Hizmets.HizmetGetir(HizmetId);
            txtBaslik.Text = hizmet.Baslik;
            editorIcerik.Text = hizmet.Icerik;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Hizmet hizmet = new Hizmet();
                hizmet.Baslik = txtBaslik.Text;
                hizmet.Icerik = editorIcerik.Text;
                hizmet.HizmetId = HizmetId;
                Hizmets.HizmetGuncelle(hizmet);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">İçerik Başarıyla Güncellendi !</div>";
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">"+ex.Message+"<br/>Hata Oluştu !</div>";
            }
            
        }
    }
}