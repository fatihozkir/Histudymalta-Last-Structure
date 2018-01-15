using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.SabitIcerikler
{
    public partial class SabitIcerikDuzenle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
                return;
            int Id = Convert.ToInt32(Request.QueryString["id"]);
            SabitIcerik icerik = new SabitIcerik();
            icerik = SabitIceriklers.SabitIcerikDetay(Id);
            txtBaslik.Text = icerik.Baslik;
            editorIcerik.Text = icerik.Icerik;

        }

        protected void btnDuzenle_Click(object sender, EventArgs e)
        {
            try
            {
                SabitIcerik icerik = new SabitIcerik();
                icerik.Icerik = editorIcerik.Text;
                icerik.Baslik = txtBaslik.Text;
                icerik.SabitIcerikId = Convert.ToInt32(Request.QueryString["id"]);
                SabitIceriklers.SabitIcerikGuncelle(icerik);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">İçerik Başarıyla Düzenlendi !</div>";
            }
            catch (Exception)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">Hata Meydana Geldi !</div>";
            }
           
        }
    }
}