using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteProje.Yonetim
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"]==null)
            {
                Response.Redirect("/Yonetim/Login.aspx");
            }
           
            switch (Request.QueryString["go"])
            {
                default:
                 PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Dashboard.ascx"));
                break;

                #region SabitIcerikler
                    case "SabitIcerikEkle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/SabitIcerikler/SabitIcerikEkle.ascx"));
                        break;
                    case "SabitIcerikListele":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/SabitIcerikler/SabitIcerikListele.ascx"));
                        break;
                    case "SabitIcerikDuzenle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/SabitIcerikler/SabitIcerikDuzenle.ascx"));
                        break;
                    case "Iletisim":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/SabitIcerikler/Iletisim.ascx"));
                        break;
                #endregion

                #region CokluIcerikler
                case "CokluIcerikEkle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/CokluIcerikler/CokluIcerikEkle.ascx"));
                        break;
                    case "CokluIcerikListele":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/CokluIcerikler/CokluIcerikListele.ascx"));
                        break;
                    case "CokluIcerikDuzenle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/CokluIcerikler/CokluIcerikDuzenle.ascx"));
                        break;
                    case "EkIcerikEkle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/CokluIcerikler/EkIcerikEkle.ascx"));
                        break;
                    #endregion

                #region Ogretmen
                    case "OgretmenEkle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Ogretmen/OgretmenEkle.ascx"));
                        break;
                    case "OgretmenListele":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Ogretmen/OgretmenListele.ascx"));
                        break;
                    case "OgretmenDuzenle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Ogretmen/OgretmenDuzenle.ascx"));
                        break;
                    case "OgretmenDersDuzenle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Ogretmen/OgretmenDers.ascx"));
                        break;
                    #endregion

                #region HizmetAltHizmet
                    case "HizmetEkle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/HizmetAltHizmet/HizmetEkle.ascx"));
                        break;
                    case "HizmetListele":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/HizmetAltHizmet/HizmetListele.ascx"));
                        break;
                    case "HizmetDuzenle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/HizmetAltHizmet/HizmetDuzenle.ascx"));
                        break;
                    case "AltHizmetEkle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/HizmetAltHizmet/AltHizmetEkle.ascx"));
                        break;
                    case "AltHizmetListele":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/HizmetAltHizmet/AltHizmetListele.ascx"));
                        break;
                    case "AltHizmetDuzenle":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/HizmetAltHizmet/AltHizmetDuzenle.ascx"));
                        break;
                    case "AltHizmetTagEkle":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/HizmetAltHizmet/AltHizmetTagEkle.ascx"));
                        break;
                #endregion

                #region Uye
                case "UyeListele":
                        PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Uye/UyeleriListele.ascx"));
                        break;
                #endregion

                #region Mesaj
                case "MesajDetay":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Mesaj/MesajDetay.ascx"));
                    break;
                case "MesajListele":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Mesaj/MesajlariListele.ascx"));
                    break;
                #endregion

                #region Randevu
                case "RandevulariListele":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Randevu/RandevulariListele.ascx"));
                    break;
                case "RandevuEkle":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Randevu/RandevuEkle.ascx"));
                    break;
                case "RandevuAlanlariListele":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Randevu/RandevuOgrenciListe.ascx"));
                    break;
                #endregion

                case "Slider":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Slider.ascx"));
                    break;
                case "AltResimler":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/AltSayfaResim.ascx"));
                    break;

                case "Cikis":
                    PanelAnaIcerik.Controls.Add(LoadControl("UserControls/Cikis.ascx"));
                    break;

            }
        }
    }
}