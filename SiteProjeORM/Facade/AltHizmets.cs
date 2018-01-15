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
    public static class AltHizmets
    {
        public static void AltHizmetEkle(AltHizmet althizmet)
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO AltHizmetler([HizmetId],[Baslik],[Icerik],[Fiyat]) VALUES(@HizmetId,@Baslik,@Icerik,@Fiyat)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@Baslik", althizmet.Baslik);
            ekle.Parameters.AddWithValue("@Icerik", althizmet.Icerik);
            ekle.Parameters.AddWithValue("@HizmetId", althizmet.HizmetId);
            ekle.Parameters.AddWithValue("@Fiyat", althizmet.Fiyat);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void AltHizmetSil(int AltHizmetId)
        {
            SqlCommand ekle = new SqlCommand("Delete from AltHizmetler where AltHizmetId=@AltHizmetId", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@AltHizmetId", AltHizmetId);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void AltHizmetGuncelle(AltHizmet althizmet)
        {
            SqlCommand guncelle = new SqlCommand("Update AltHizmetler set HizmetId=@HizmetId,Baslik=@Baslik,Icerik=@Icerik,Fiyat=@Fiyat where AltHizmetId=@AltHizmetId", Tools.Baglanti());
            guncelle.Parameters.AddWithValue("@Baslik", althizmet.Baslik);
            guncelle.Parameters.AddWithValue("@Icerik", althizmet.Icerik);
            guncelle.Parameters.AddWithValue("@HizmetId", althizmet.HizmetId);
            guncelle.Parameters.AddWithValue("@Fiyat", althizmet.Fiyat);
            guncelle.Parameters.AddWithValue("@AltHizmetId", althizmet.AltHizmetId);
            Tools.ExecuteNonQuery(guncelle);
        }

        public static AltHizmet AltHizmetGetir(int AltHizmetId)
        {
            AltHizmet Althizmet = new AltHizmet();
            SqlDataAdapter getir = new SqlDataAdapter("Select Baslik,Icerik,Fiyat,HizmetId from AltHizmetler where AltHizmetId=@AltHizmetId", Tools.Baglanti());
            getir.SelectCommand.Parameters.AddWithValue("@AltHizmetId", AltHizmetId);
            DataTable dt = new DataTable();
            getir.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Althizmet.Baslik = dt.Rows[i]["Baslik"].ToString();
                Althizmet.Icerik = dt.Rows[i]["Icerik"].ToString();
                Althizmet.Fiyat = decimal.Parse(dt.Rows[i]["Fiyat"].ToString());

                Althizmet.HizmetId= int.Parse(dt.Rows[i]["HizmetId"].ToString());
            }
            return Althizmet;

        }
        public static int SonAltHizmetIdGetir()
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select AltHizmetId from AltHizmetler order by AltHizmetId Desc",Tools.Baglanti());
            DataTable Dt = new DataTable();
            dap.Fill(Dt);
            try
            {
                return int.Parse(Dt.Rows[0]["AltHizmetId"].ToString());
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
