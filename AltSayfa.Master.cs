using SiteProjeORM;
using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje
{
    public partial class AltSayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DataTable Dt = Tools.IcerikListele("Select FacebookUrl,TwitterUrl,InstagramUrl from Iletisim");
                 if (Dt.Rows[0]["FacebookUrl"].ToString() != "-")
                {
                    LinkBtnFacebook.PostBackUrl = Dt.Rows[0]["FacebookUrl"].ToString();
                }

                if (Dt.Rows[0]["InstagramUrl"].ToString() != "-")
                {
                    LinkBtnInstagram.PostBackUrl = Dt.Rows[0]["InstagramUrl"].ToString();
                }

                if (Dt.Rows[0]["TwitterUrl"].ToString() != "-")
                {
                    LinkBtnTwitter.PostBackUrl = Dt.Rows[0]["TwitterUrl"].ToString();
                }



            }
            catch (Exception)
            {
                return;
            }
            if (Session["UyeId"] != null)
            {
                int id = int.Parse(Session["UyeId"].ToString());
                Uye u = Uyes.UyeBilgileriGetir(id);
                LinkBtnHesap.Text = "Welcome Dear: " + u.Ad + " " + u.Soyad;

                LinkBtnHesap.Visible = true;
                PanelUnLogin.Visible = false;
            }
        }
    }
}