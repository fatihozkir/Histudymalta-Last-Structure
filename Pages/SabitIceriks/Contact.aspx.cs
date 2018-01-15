using SiteProjeORM;
using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Pages.SabitIceriks
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                LtrBilgi.Text = string.Empty;
            }
            try
            {
                SqlDataAdapter dap = new SqlDataAdapter("Select * from Iletisim", Tools.Baglanti());
                DataTable dt = new DataTable();
                dap.Fill(dt);
                LblMail.Text = dt.Rows[0]["Mail"].ToString();
                LblTelefon.Text = dt.Rows[0]["Telefon"].ToString();
                LtrHesapBilgileri.Text = dt.Rows[0]["Adres"].ToString();
            }
            catch (Exception)
            {

                return;
            }
            
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            Mesaj msg = new Mesaj();
            msg.Ad = txtIsım.Text;
            msg.Soyad = txtSoyad.Text;
            msg.Mail = txtMail.Text;
            msg.GonderilenMesaj = txtMesaj.Text;
            Mesajs.MesajGonder(msg);
            txtIsım.Text = txtMail.Text = txtMesaj.Text = txtSoyad.Text = string.Empty;
            LtrBilgi.Text = "<span class=\"nicdark_second_font nicdark_bg_green nicdark_padding_5 nicdark_border_radius_3 nicdark_color_white nicdark_display_inline_block\">Message sent to us. Thank You For This !</span>";
        }
    }
}