using SiteProjeORM.Entity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Facade
{
    public static class RandevuUyes
    {
        public static void RandevuOnayla(int RandevuUyeId)
        {
            SqlCommand update = new SqlCommand("Update RandevuUye set Odeme=@Odeme where RandevuUyeId=@RandevuUyeId", Tools.Baglanti());
            update.Parameters.AddWithValue("@Odeme", true);
            update.Parameters.AddWithValue("@RandevuUyeId", RandevuUyeId);
            Tools.ExecuteNonQuery(update);
        }
        public static void RandevuRed(int RandevuId)
        {
            SqlCommand delete = new SqlCommand("Delete from Randevu where RandevuId=@RandevuId", Tools.Baglanti());
            delete.Parameters.AddWithValue("@RandevuId", RandevuId);
            Tools.ExecuteNonQuery(delete);
        }
        public static void RandevuKaydet(RandevuUye ru)
        {
            SqlCommand randevuKayit = new SqlCommand("Insert into RandevuUye Values(@RandevuId,@OgretmenId,@UyeId,@Odeme)", Tools.Baglanti());
            randevuKayit.Parameters.AddWithValue("@RandevuId", ru.RandevuId);
            randevuKayit.Parameters.AddWithValue("@OgretmenId", ru.OgretmenId);
            randevuKayit.Parameters.AddWithValue("@UyeId", ru.UyeId);
            randevuKayit.Parameters.AddWithValue("@Odeme", ru.Odeme);
            Tools.ExecuteNonQuery(randevuKayit);
        }
       
    }
}
