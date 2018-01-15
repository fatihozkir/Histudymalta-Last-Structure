using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Pages.Kullanici
{
    public partial class Dogrulama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            string mail = txtKullaniciAdi.Text;
            string sifre = txtSifre.Text;
            string kod = txtVerify.Text;
            bool drm=Uyes.UyeDogrula(mail, sifre, kod);
            if (drm)
            {
                Uye uye = Uyes.UyeGiris(mail, sifre);
                if (uye.UyelikOnay == EUyelikOnay.Onayli)
                {
                    Session["UyeId"] = uye.UyeId;
                    Response.Redirect("/Account");
                }
                else
                {
                    
                    LtrBilgi.Text = "<div class=\"nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 \" >Please Check Your E-Mail Box and Verify Your Account.</div>";
                }
            }
            else
            {
                LtrBilgi.Text = "<div class=\"nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 \" >Please Check Your Log In Information.<br>Login is not succeed !</div>";
            }

        }
    }
}