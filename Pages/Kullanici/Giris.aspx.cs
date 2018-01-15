using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using SiteProjeORM.Facade;
using SiteProjeORM.Entity;
using SiteProjeORM;

namespace SiteProje.Pages.Kullanıcı
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ResimOlustur();
            }
            if (Session["UyeId"]!=null)
            {
                Response.Redirect("/Account");
            }
        }

        protected void BtnKayitOl_Click(object sender, EventArgs e)
        {
            if (txtGuvenlik.Text==Session["kod"].ToString())
            {
                Uye kayitUye = new Uye();
                kayitUye.Ad = txtKayitAdi.Text;
                kayitUye.Soyad = txtKayitSoyad.Text;
                kayitUye.Mail = txtKayitMail.Text;
                if (string.IsNullOrEmpty(txtTelefon.Text))
                {
                    kayitUye.Telefon = 0;
                }
                else
                {
                    kayitUye.Telefon = long.Parse(txtTelefon.Text);
                }
                kayitUye.Sifre = txtKayitSifre.Text;
                string guid = RastgeleVeriUret();
                kayitUye.OnayKodu = guid;
                Uyes.UyeKayit(kayitUye);
                Tools.MailGonder(txtKayitMail.Text,"Openmindatelier.com Confirmation Mail","Please Check Your E-Mail Box and Verify Your Account."+Environment.NewLine+ "http://en.openmindatelier.com/VerifyMail/VerifyCode-" + guid+Environment.NewLine+"Confirmation Code:"+guid);
                LtrKayitBilgi.Text = "<div class=\"nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 \" >Registration is succeed !<br>Please Check Your E-Mail Box and Verify Your Account.</div>";
                txtKayitAdi.Text = txtKayitSoyad.Text = txtKayitMail.Text = txtTelefon.Text = txtKayitSifre.Text = string.Empty;

            }
            else
            {
                LtrKayitBilgi.Text = "<div class=\"nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 \" >Security Number Is Uncorrect !</div>";
                ResimOlustur();
            }
        }
        public void ResimOlustur()
        {
            string kod = "";
            kod = RastgeleVeriUret();
            Session.Add("kod", kod);
            Bitmap bmp = new Bitmap(100, 21);
            Graphics g = Graphics.FromImage(bmp);
            g.DrawString(kod, new Font("Comic Sanns MS", 15), new SolidBrush(Color.Black), 20, 0);
            MemoryStream ms = new MemoryStream();
            bmp.Save(ms, ImageFormat.Png);
            var base64Data = Convert.ToBase64String(ms.ToArray());
            ImageVerify.ImageUrl = "data:image/png;base64," + base64Data;
            g.Dispose();
            bmp.Dispose();
            ms.Close();
            ms.Dispose();
        }

        public string RastgeleVeriUret()
        {
            string deger = "";
            
            string dizi = "ABCDEFGHIJKLMNOPRSTUVYZ0123456789";
            Random r = new Random();
            for (int i = 0; i < 5; i++)
            {
                deger = deger + dizi[r.Next(0, 33)];
            }
            return deger;
        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            try
            {
                string mail = txtKullaniciAdi.Text;
                string sifre = txtSifre.Text;
                Uye uye = Uyes.UyeGiris(mail, sifre);
                if (uye.UyelikOnay == EUyelikOnay.Onayli)
                {
                    Session["UyeId"] = uye.UyeId;
                    Response.Redirect("/Account");
                }
                else
                {
                    LtrBilgi.Text = "<div class=\"nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 \" >Please Check Your E-Mail Box and Verify Your Account For The Log In. !</div>";
                }
            }
            catch (Exception)
            {
                LtrBilgi.Text = "<div class=\"nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 \" >Please Check Your Log In Information.<br>Login is not succeed !</div>";
            }
            

        }
    }
}