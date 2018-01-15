using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class Randevu
    {
        public int RandevuId { get; set; }
        public int AltHizmetId { get; set; }
        public DateTime RandevuTarihi { get; set; }
        public string BaslangicSaati { get; set; }
        public string BitisSaati { get; set; }
    }
}
