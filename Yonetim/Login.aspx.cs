using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            if (kullaniciAdi=="yonetim"&&sifre=="OpNdT9*6")
            {
                Session["Kullanici"] = kullaniciAdi;
                if (chkBeniHatirla.Checked)
                {
                    HttpCookie cookie = new HttpCookie("Kullanici");
                    cookie["kullanici"] = kullaniciAdi;
                    cookie.Expires = DateTime.Now.AddDays(7);
                }
                Response.Redirect("/Yonetim/Default.aspx");
            }
           
            else
            {
                lblBilgi.Text = "Girilen Bilgiler Hatalı !";
            }
        }
    }
}