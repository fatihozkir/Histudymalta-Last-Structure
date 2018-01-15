using SiteProjeORM;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.SabitIcerikler
{
    public partial class Iletisim : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                DataTable Dt = Tools.IcerikListele("Select * from Iletisim");
                TxtHesap.Text = Dt.Rows[0]["Adres"].ToString();
                txtTelefon.Text = Dt.Rows[0]["Telefon"].ToString();
                txtMail.Text = Dt.Rows[0]["Mail"].ToString();
                TxtFacebook.Text = Dt.Rows[0]["FacebookUrl"].ToString();
                TxtInstagram.Text = Dt.Rows[0]["InstagramUrl"].ToString();
                TxtTwitter.Text = Dt.Rows[0]["TwitterUrl"].ToString();
            }
            catch (Exception)
            {

                return;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand duzenle = new SqlCommand("Update Iletisim set Adres=@Adres,Telefon=@Telefon,Mail=@Mail,FacebookUrl=@Face,TwitterUrl=@Twt,InstagramUrl=@Ins",Tools.Baglanti());
            duzenle.Parameters.AddWithValue("@Adres",TxtHesap.Text);
            duzenle.Parameters.AddWithValue("@Telefon", txtTelefon.Text);
            duzenle.Parameters.AddWithValue("@Mail", txtMail.Text);
            duzenle.Parameters.AddWithValue("@Face", TxtFacebook.Text);
            duzenle.Parameters.AddWithValue("@Twt", TxtTwitter.Text);
            duzenle.Parameters.AddWithValue("@Ins", TxtInstagram.Text);
            Tools.ExecuteNonQuery(duzenle);
            ltrBilgi.Text = "<div class=\"alert alert-success fade in\">Icerik Güncellendi !</div>";
        }
    }
}