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
    public static class CokluIcerikResimlers
    {
        public static void ResimEkle(CokluIcerikResim CokluIcerikResim)
        {
            SqlCommand ekle = new SqlCommand("Insert into CokluIcerikResim(CokluIcerikId,ResimUrl) Values(@CokluIcerikId,@ResimUrl)",Tools.Baglanti());
            ekle.Parameters.AddWithValue("@CokluIcerikId", CokluIcerikResim.CokluIcerikId);
            ekle.Parameters.AddWithValue("@ResimUrl", CokluIcerikResim.ResimUrl);
            Tools.ExecuteNonQuery(ekle);
        }
        public static DataTable ResimleriListele(int CokluIcerikId)
        {
            SqlDataAdapter dap = new SqlDataAdapter("Select ResimId,ResimUrl from CokluIcerikResim where CokluIcerikId=@CokluIcerikId", Tools.Baglanti());
            dap.SelectCommand.Parameters.AddWithValue("@CokluIcerikId", CokluIcerikId);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            return dt;

        }
        public static void ResimSil(int ResimId)
        {
            SqlCommand sil = new SqlCommand("Delete from CokluIcerikResim where ResimId=@ResimId", Tools.Baglanti());
            sil.Parameters.AddWithValue("@ResimId", ResimId);
            Tools.ExecuteNonQuery(sil);
        }
    }
}
