using SiteProjeORM;
using SiteProjeORM.Entity;
using SiteProjeORM.Facade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim.UserControls.CokluIcerikler
{
    public partial class CokluIcerikDuzenle : System.Web.UI.UserControl
    {
        int IcerikId = int.Parse(HttpContext.Current.Request.QueryString["IcerikId"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["IcerikId"] == null)
            {
                return;
            }
            Getir();
        }
        string resimUrl = "";
        private void Getir()
        {
            CokluIcerik ci = CokluIceriklers.CokluIcerikDetay(IcerikId);
            txtBaslik.Text = ci.Baslik;
            editorIcerik.Text = ci.Icerik;
            imgResim.ImageUrl = "/Upload/Images/Small/" + ci.ResimUrl;
            resimUrl = ci.ResimUrl;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            CokluIcerik ci = new CokluIcerik();
            ci.Baslik = txtBaslik.Text;
            ci.Icerik = editorIcerik.Text;
            ci.CokluIcerikId = IcerikId;
            try
            {
                if (FileUploadManset.HasFile)
                {
                    if (FileUploadManset.FileContent.Length > 3000000)
                    {
                        throw new Exception("Sunucu Sağlığı İçin Resim Boyutu 3 Mb den Büyük Olamaz !");
                    }
                    else
                    {
                        ci.ResimUrl = Tools.ResimIslem(FileUploadManset.PostedFile, Tools.KarakterTemizle(txtBaslik.Text));
                    }
                }
                else
                {
                    ci.ResimUrl = resimUrl;
                }
                CokluIceriklers.CokluIcerikDuzenle(ci);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">İçerik Başarıyla Düzenlendi !</div>";
                Getir();
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">"+ex.Message+"</div>";
            }
            
           
        }
    }
}