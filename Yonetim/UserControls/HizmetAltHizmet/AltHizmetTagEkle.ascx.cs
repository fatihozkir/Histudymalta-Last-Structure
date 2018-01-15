using fcd=SiteProjeORM.Facade;
using ent=SiteProjeORM.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.HizmetAltHizmet
{
    public partial class AltHizmetTagEkle : System.Web.UI.UserControl
    {
        int id = int.Parse(HttpContext.Current.Request.QueryString["AltHizmetId"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            ent.AltHizmet ah = fcd.AltHizmets.AltHizmetGetir(id);
            LblBilgi.Text = ah.Baslik + " Anahtar Kelime Ekleme";
        }

        private void TaglariGetir()
        {
            RepeaterKelime.DataSource = fcd.AltHizmetTags.TaglariGetir(id);
            RepeaterKelime.DataBind();
        }

        protected void RepeaterKelime_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="Sil")
            {
                fcd.AltHizmetTags.TagSil(int.Parse(e.CommandArgument.ToString()));
                TaglariGetir();
            }
        }

        protected void BtnKelimeEkle_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["AltHizmetId"] != null)
            {
                ent.AltHizmetlerMetaTag ahmt = new ent.AltHizmetlerMetaTag();
                ahmt.AltHizmetId = id;
                ahmt.Tag = TxtKelime.Text;
                fcd.AltHizmetTags.TagEkle(ahmt);
                TxtKelime.Text = string.Empty;
                TaglariGetir();
            }
            else
            {
                return;
            }
        }
    }
}