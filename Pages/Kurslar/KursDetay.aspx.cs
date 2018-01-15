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

namespace SiteProje.Pages.Kurslar
{
    public partial class KursDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (RouteData.Values["HizmetId"]!=null)
            {
                int hizmetId = int.Parse(RouteData.Values["HizmetId"].ToString());

                #region Hizmet

                Hizmet hizmet = Hizmets.HizmetGetir(hizmetId);
                lblKursAdi.Text = LblBaslik.Text = hizmet.Baslik;
                LtrIcerik.Text = hizmet.Icerik.Length>1003?hizmet.Icerik.Substring(0,1002):hizmet.Icerik;
                LtrIcerikDevam.Text = (hizmet.Icerik.Length) > LtrIcerik.Text.Length ? (hizmet.Icerik.Substring((LtrIcerik.Text.Length - 1), (hizmet.Icerik.Length - LtrIcerik.Text.Length))):" ";
                #endregion

                #region AltHizmet
                DataTable Dt=Tools.IcerikListele("Select top(5) * from AltHizmetler where HizmetId="+hizmetId+" order by AltHizmetId desc");
                RepeaterAltHizmets.DataSource = Dt;
                RepeaterAltHizmets.DataBind();
                #endregion

                #region AltHizmetMetaTag
                string description = hizmet.Baslik;
                string keywords = "";
                DataTable dt=AltHizmetTags.HizmetTaglariGetir(hizmetId);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (i!=dt.Rows.Count-1)
                    {
                        keywords += dt.Rows[i]["Tag"].ToString() + ",";
                    }
                    else
                    {
                        keywords += dt.Rows[i]["Tag"].ToString();
                    }
                }
                LtrMeta.Text= "<meta name=\"description\" content=\""+description+"\"/>"+Environment.NewLine;
                LtrMeta.Text+= "<meta name=\"keywords\" content=\"" + keywords + "\" />" + Environment.NewLine;
                LtrMeta.Text += "<title>"+description+"</title>";
                #endregion
            }
            else if (RouteData.Values["AltHizmetId"]!=null)
            {
                int AltHizmetId = int.Parse(RouteData.Values["AltHizmetId"].ToString());
                #region AltHizmet
                AltHizmet altHizmet = AltHizmets.AltHizmetGetir(AltHizmetId);
                lblKursAdi.Text = LblBaslik.Text = altHizmet.Baslik;
                LtrIcerik.Text = altHizmet.Icerik.Length > 1003 ? altHizmet.Icerik.Substring(0, 1002) : altHizmet.Icerik;
                LtrIcerikDevam.Text = (altHizmet.Icerik.Length) > LtrIcerik.Text.Length ? (altHizmet.Icerik.Substring((LtrIcerik.Text.Length - 1), (altHizmet.Icerik.Length - LtrIcerik.Text.Length))) : " ";
                #endregion

                #region repeaterAltHizmet
                SqlDataAdapter getir = new SqlDataAdapter("Select HizmetId from AltHizmetler where AltHizmetId=@AHI", Tools.Baglanti());
                getir.SelectCommand.Parameters.AddWithValue("@AHI", AltHizmetId);
                DataSet ds = new DataSet();
                getir.Fill(ds);
                int HizmetId = int.Parse(ds.Tables[0].Rows[0]["HizmetId"].ToString());

                string sorgu = "Select top(5) * from AltHizmetler  where HizmetId="+ HizmetId + " order by AltHizmetId desc";
                DataTable Dt = Tools.IcerikListele(sorgu);
                RepeaterAltHizmets.DataSource = Dt;
                RepeaterAltHizmets.DataBind();
                #endregion

                #region AltHizmetMetaTag
                string description = altHizmet.Baslik;
                string keywords = "";
                DataTable dt = AltHizmetTags.TaglariGetir(AltHizmetId);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (i != dt.Rows.Count - 1)
                    {
                        keywords += dt.Rows[i]["Tag"].ToString() + ",";
                    }
                    else
                    {
                        keywords += dt.Rows[i]["Tag"].ToString();
                    }
                }
                LtrMeta.Text = "<meta name=\"description\" content=\"" + description + "\"/>" + Environment.NewLine;
                LtrMeta.Text += "<meta name=\"keywords\" content=\"" + keywords + "\" />" + Environment.NewLine;
                LtrMeta.Text += "<title>" + description + "</title>";
                #endregion
            }
            else
            {
                Response.Redirect("/Home");
            }
            
        }
    }
}