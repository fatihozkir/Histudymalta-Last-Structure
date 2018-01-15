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
    public partial class HizmetEkle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Hizmet hizmet = new Hizmet();
                hizmet.Baslik = txtBaslik.Text;
                hizmet.Icerik = editorIcerik.Text;
                Hizmets.HizmetEkle(hizmet);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">İçerik Başarıyla Eklendi !</div>";
                txtBaslik.Text = editorIcerik.Text = string.Empty;
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">"+ex.Message+"<br/> Hata Oluştu !</div>";
            }
            
        }
    }
}