using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.HizmetAltHizmet
{
    public partial class AltHizmetEkle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                AltHizmet altHizmet = new AltHizmet();
                altHizmet.Baslik = txtBaslik.Text;
                altHizmet.Icerik = editorIcerik.Text;
                altHizmet.Fiyat = decimal.Parse(txtFiyat.Text);
                altHizmet.HizmetId = int.Parse(DrpDownHizmet.SelectedValue);
                AltHizmets.AltHizmetEkle(altHizmet);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">Alt Hizmet Başarıyla Eklendi !</div>";
                txtBaslik.Text = editorIcerik.Text = txtFiyat.Text = string.Empty;

                Response.Redirect("/Yonetim/Default.aspx?go=AltHizmetTagEkle&AltHizmetId=" +AltHizmets.SonAltHizmetIdGetir());
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">" + ex.Message + "<br/> Hata Oluştu !</div>";
            }
            
        }


       
       
    }
}