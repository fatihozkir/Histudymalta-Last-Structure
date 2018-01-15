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
using System.IO;

namespace SiteProje.Yonetim.UserControls.CokluIcerikler
{
    public partial class EkIcerikEkle : System.Web.UI.UserControl
    {
        int IcerikId = Convert.ToInt32(HttpContext.Current.Request.QueryString["IcerikId"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["IcerikId"]==null)
            {
                return;
            }
            CokluIcerik icerik=CokluIceriklers.CokluIcerikDetay(IcerikId);
            lblBaslik.Text = icerik.Baslik+" Ek İçerik Ekle";
            ResimleriGetir();
            DosyalariGetir();

        }

        protected void btnResimEkle_Click(object sender, EventArgs e)
        {
            try
            {
                if (fileUploadResim.HasFile)
                {
                    foreach (HttpPostedFile item in fileUploadResim.PostedFiles)
                    {
                        string ResimUrl = Tools.ResimIslem(item, lblBaslik.Text);
                        CokluIcerikResim CIR = new CokluIcerikResim();
                        CIR.CokluIcerikId = IcerikId;
                        CIR.ResimUrl = ResimUrl;
                        CokluIcerikResimlers.ResimEkle(CIR);
                    }
                    ResimleriGetir();
                }
                else
                {
                    return;
                }
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = ex.Message;
            }
           
            
        }

        public void ResimleriGetir()
        {
            DataTable dt = CokluIcerikResimlers.ResimleriListele(IcerikId);
            DataListResimler.DataSource = dt;
            DataListResimler.DataBind();
        }

        protected void DataListResimler_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName=="Sil")
            {
                string[] arg = e.CommandArgument.ToString().Split('!');
                CokluIcerikResimlers.ResimSil(int.Parse(arg[0]));
                File.Delete(Server.MapPath("/Upload/Images/Medium/" + arg[1]));
                File.Delete(Server.MapPath("/Upload/Images/Big/" + arg[1]));
                File.Delete(Server.MapPath("/Upload/Images/Small/" + arg[1]));
                ResimleriGetir();
            }
        }

        protected void btnDosyaEkle_Click(object sender, EventArgs e)
        {
            try
            {
                if (fileUploadDosya.HasFile)
                {
                    foreach (HttpPostedFile item in fileUploadDosya.PostedFiles)
                    {
                        string DosyaUrl = Tools.DosyaIslem(item, Tools.KarakterTemizle(txtDosyaBaslik.Text));
                        CokluIcerikDosya CID = new CokluIcerikDosya();
                        CID.CokluIcerikId = IcerikId;
                        CID.DosyaUrl = DosyaUrl;
                        CokluIcerikDosyas.DosyaEkle(CID);
                        DosyalariGetir();
                        txtDosyaBaslik.Text = string.Empty;
                    }

                }
                else
                {
                    return;
                }
            }
            catch (Exception ex)
            {
               ltrDosyBilgi.Text = ex.Message;
            }
            
        }
        public void DosyalariGetir()
        {
            DataTable dt = CokluIcerikDosyas.DosyalariListele(IcerikId);
            gridDosyalar.DataSource = dt;
            gridDosyalar.DataBind();
        }

        protected void gridDosyalar_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Sil")
            {
                string[] arg = e.CommandArgument.ToString().Split('!');
                CokluIcerikDosyas.DosyaSil(int.Parse(arg[0]));
                File.Delete(Server.MapPath("/Upload/Files/Word/" + arg[1]));
                File.Delete(Server.MapPath("/Upload/Files/Pdf/" + arg[1]));
                File.Delete(Server.MapPath("/Upload/Files/Excel/" + arg[1]));
                File.Delete(Server.MapPath("/Upload/Files/PowerPoint/" + arg[1]));
                DosyalariGetir();
            }
        }
    }
}