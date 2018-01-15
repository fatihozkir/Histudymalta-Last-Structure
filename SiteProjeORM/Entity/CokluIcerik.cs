using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class CokluIcerik
    {
        public int CokluIcerikId { get; set; }
        public string Baslik { get; set; }
        public string Icerik { get; set; }
        public DateTime EklenmeTarihi { get; set; }
        public string ResimUrl { get; set; }
        public CokluIcerik()
        {
            EklenmeTarihi = DateTime.Now;
            ResimUrl = "blogResim.jpg";
        }
    }
}
