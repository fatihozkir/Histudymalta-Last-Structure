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
    public static class Hizmets
    {
        public static void HizmetEkle(Hizmet hizmet)
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO Hizmetler([Baslik],[Icerik]) VALUES(@Baslik,@Icerik)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@Baslik", hizmet.Baslik);
            ekle.Parameters.AddWithValue("@Icerik", hizmet.Icerik);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void HizmetSil(int HizmetId)
        {
            SqlCommand ekle = new SqlCommand("Delete from Hizmetler where HizmetId=@HizmetId", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@HizmetId", HizmetId);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void HizmetGuncelle(Hizmet hizmet)
        {
            SqlCommand guncelle = new SqlCommand("Update Hizmetler set Baslik=@Baslik,Icerik=@Icerik where HizmetId=@HizmetId", Tools.Baglanti());
            guncelle.Parameters.AddWithValue("@Baslik", hizmet.Baslik);
            guncelle.Parameters.AddWithValue("@Icerik", hizmet.Icerik);
            guncelle.Parameters.AddWithValue("@HizmetId", hizmet.HizmetId);
            Tools.ExecuteNonQuery(guncelle);
        }

        public static Hizmet HizmetGetir(int HizmetId)
        {
            Hizmet hizmet = new Hizmet();
            SqlDataAdapter getir = new SqlDataAdapter("Select Baslik,Icerik from Hizmetler where HizmetId=@HizmetId", Tools.Baglanti());
            getir.SelectCommand.Parameters.AddWithValue("@HizmetId", HizmetId);
            DataTable dt = new DataTable();
            getir.Fill(dt);
            for (int i = 0; i < dt.Rows.Count ; i++)
            {
                hizmet.Baslik = dt.Rows[i]["Baslik"].ToString();
                hizmet.Icerik = dt.Rows[i]["Icerik"].ToString();
            }
            return hizmet;

        }
    }
}
