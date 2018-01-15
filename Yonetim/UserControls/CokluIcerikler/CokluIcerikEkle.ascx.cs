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

namespace SiteProje.Yonetim.UserControls.CokluIcerikler
{
    public partial class CokluIcerikEkle : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            try
            {
                string resimUrl = "";
                CokluIcerik icerik = new CokluIcerik();
                icerik.Baslik = txtBaslik.Text;
                icerik.Icerik = editorIcerik.Text;
                if (FileUploadManset.HasFile)
                {
                    if (FileUploadManset.FileContent.Length > 3000000)
                    {
                        
                        throw new Exception("Sunucu Sağlığı İçin Resim Boyutu 3 Mb den Büyük Olamaz !");
                    }
                    else
                    {
                        resimUrl = Tools.ResimIslem(FileUploadManset.PostedFile, Tools.KarakterTemizle(txtBaslik.Text));
                    }

                }
                else
                {
                    resimUrl = "blogResim.jpg";
                }
               
                icerik.ResimUrl = resimUrl;
                CokluIceriklers.CokluIcerikEkle(icerik);
                ltrBilgi.Text = "<div class=\"alert alert-success fade in\">İçerik Başarıyla Eklendi !</div>";
                //btnEkIcerik.Visible = true;
            }
            catch (Exception ex)
            {
                ltrBilgi.Text = "<div class=\"alert alert-danger fade in\">"+ex.Message+"</div>";
            }


        }

        protected void btnEkIcerik_Click(object sender, EventArgs e)
        {
            SqlDataAdapter SonId = new SqlDataAdapter("Select Top(1) CokluIcerikId from CokluIcerik order by CokluIcerikId desc", Tools.Baglanti());
            DataSet ds = new DataSet();
            SonId.Fill(ds);
            int id = int.Parse(ds.Tables[0].Rows[0]["CokluIcerikId"].ToString());
            Response.Redirect("/Yonetim/Default.aspx?go=EkIcerikEkle&IcerikId=" + id);
        }

      
    }
}