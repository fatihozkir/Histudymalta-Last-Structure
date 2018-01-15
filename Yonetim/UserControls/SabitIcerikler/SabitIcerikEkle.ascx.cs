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
    public partial class SabitIcerikEkle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SabitIcerik sabitIcerik = new SabitIcerik();
                sabitIcerik.Baslik = txtBaslik.Text;
                sabitIcerik.Icerik = editorIcerik.Text;
                SabitIceriklers.SabitIcerikEkle(sabitIcerik);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">İçerik Başarıyla Eklendi !</div>";
                txtBaslik.Text = editorIcerik.Text = string.Empty;
            }
            catch (Exception)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">Bir Hata Meydana Geldi !</div>";
            }
           
        }
    }
}