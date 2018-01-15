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
    public static class SabitIceriklers
    {
        public static void SabitIcerikEkle(SabitIcerik icerik)
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO SabitIcerikler([Baslik],[Icerik]) VALUES(@Baslik,@Icerik)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@Baslik", icerik.Baslik);
            ekle.Parameters.AddWithValue("@Icerik", icerik.Icerik);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void SabitIcerikGuncelle(SabitIcerik icerik)
        {
            SqlCommand guncelle = new SqlCommand("Update SabitIcerikler set Baslik=@Baslik,Icerik=@Icerik where SabitIcerikId=@SabitIcerikId", Tools.Baglanti());
            guncelle.Parameters.AddWithValue("@Baslik", icerik.Baslik);
            guncelle.Parameters.AddWithValue("@Icerik", icerik.Icerik);
            guncelle.Parameters.AddWithValue("@SabitIcerikId", icerik.SabitIcerikId);
            Tools.ExecuteNonQuery(guncelle);
        }

        public static void SabitIcerikSil(int SabitIcerikId)
        {
            SqlCommand sil = new SqlCommand("Delete from SabitIcerikler where SabitIcerikId=@SabitIcerikId", Tools.Baglanti());
            sil.Parameters.AddWithValue("@SabitIcerikId", SabitIcerikId);
            Tools.ExecuteNonQuery(sil);
        }
        public static SabitIcerik SabitIcerikDetay(int SabitIcerikId)
        {
            SabitIcerik icerik = new SabitIcerik();
            SqlDataAdapter dap = new SqlDataAdapter("Select Baslik,Icerik from SabitIcerikler where SabitIcerikId=@SabitIcerikId", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@SabitIcerikId", SabitIcerikId);
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            for (int i = 0; i < Dt.Rows.Count; i++)
            {
                icerik.Baslik = Dt.Rows[i]["Baslik"].ToString();
                icerik.Icerik = Dt.Rows[i]["Icerik"].ToString();
            }
            return icerik;

           
            
        }
        public static DataTable SabitIcerikListele(string komut)
        {
            return Tools.IcerikListele(komut);
        } 
    }
}
