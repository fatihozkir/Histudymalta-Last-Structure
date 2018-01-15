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
    public static class AltHizmetTags
    {
        public static DataTable HizmetTaglariGetir(int HizmetId)
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ahmt.Tag  from AltHizmetlerMetaTag ahmt inner join AltHizmetler ah on ahmt.AltHizmetId=ah.AltHizmetId inner join Hizmetler h on h.HizmetId=ah.HizmetId where h.HizmetId=@HI", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@HI", HizmetId);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            return dt;
        }
        public static DataTable TaglariGetir(int AltHizmetId)
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select * from AltHizmetlerMetaTag where AltHizmetId=@AHI", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@AHI", AltHizmetId);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            return dt;
        }
        public static void TagEkle(AltHizmetlerMetaTag tag)
        {
            SqlCommand ekle = new SqlCommand("Insert into AltHizmetlerMetaTag  Values(@AltHizmetId,@Tag)", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@AltHizmetId", tag.AltHizmetId);
            ekle.Parameters.AddWithValue("@Tag", tag.Tag);
            Tools.ExecuteNonQuery(ekle);
        }
        public static void TagSil(int TagId)
        {
            SqlCommand ekle = new SqlCommand("Delete from AltHizmetlerMetaTag where TagId=@TagId", Tools.Baglanti());
            ekle.Parameters.AddWithValue("@TagId", TagId);
            Tools.ExecuteNonQuery(ekle);
        }
    }
}
