using SiteProjeORM.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Facade
{
    public static class CokluIceriklers
    {
        public static void CokluIcerikEkle(CokluIcerik icerik)
        {
            SqlCommand ekle = new SqlCommand("Insert into CokluIcerik(Baslik,Icerik,MansetResim) values(@Baslik,@Icerik,@MansetResim)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@Baslik", icerik.Baslik);
            ekle.Parameters.AddWithValue("@Icerik", icerik.Icerik);
            ekle.Parameters.AddWithValue("@MansetResim", icerik.ResimUrl);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void CokluIcerikDuzenle(CokluIcerik icerik)
        {
            SqlCommand guncelle = new SqlCommand("Update CokluIcerik set Baslik=@Baslik,Icerik=@Icerik,MansetResim=@MansetResim where CokluIcerikId=@CokluIcerikId", Tools.Baglanti());
            guncelle.Parameters.AddWithValue("@CokluIcerikId", icerik.CokluIcerikId);
            guncelle.Parameters.AddWithValue("@Baslik", icerik.Baslik);
            guncelle.Parameters.AddWithValue("@Icerik", icerik.Icerik);
            guncelle.Parameters.AddWithValue("@MansetResim", icerik.ResimUrl);
            Tools.ExecuteNonQuery(guncelle);
        }
        public static void CokluIcerikSil(int CokluIcerikId)
        {
            SqlCommand Sil = new SqlCommand("Delete from CokluIcerik where CokluIcerikId=@CokluIcerikId",Tools.Baglanti());
            Sil.Parameters.AddWithValue("@CokluIcerikId", CokluIcerikId);
            Tools.ExecuteNonQuery(Sil);
        }
        public static CokluIcerik CokluIcerikDetay(int CokluIcerikId)
        {
            CokluIcerik ci = new CokluIcerik();
            try
            {
                SqlDataAdapter dap = new SqlDataAdapter("Select Icerik,Baslik,MansetResim from CokluIcerik where CokluIcerikId=@CokluIcerikId", Tools.Baglanti());
                dap.SelectCommand.Parameters.AddWithValue("@CokluIcerikId", CokluIcerikId);
                DataTable dt = new DataTable();
                dap.Fill(dt);
                ci.Icerik = dt.Rows[0]["Icerik"].ToString();
                ci.Baslik = dt.Rows[0]["Baslik"].ToString();
                ci.ResimUrl = dt.Rows[0]["MansetResim"].ToString();
                return ci;
            }
            catch (Exception)
            {
                return ci;
            }
            
        }
        public static DataTable CokluIcerikListele()
        {
            return Tools.IcerikListele("Select * from CokluIcerik");
        }
        public static DataTable CokluIcerikListeleAnasayfa()
        {
            return Tools.IcerikListele("Select Top(6) CokluIcerikId,Baslik,Icerik,Year(EklenmeTarihi) as Yil,Day(EklenmeTarihi) as Gun,Month(EklenmeTarihi) as Ay,MansetResim from CokluIcerik order by CokluIcerikId desc");
        }
    }
}
