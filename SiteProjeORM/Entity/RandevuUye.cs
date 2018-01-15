using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class RandevuUye
    {
        public int RandevuUyeId { get; set; }
        public int RandevuId { get; set; }
        public int OgretmenId { get; set; }
        public int UyeId { get; set; }
        public EOdemeDurum Odeme { get; set; }
        public RandevuUye()
        {
            Odeme = EOdemeDurum.OdemeYapilmadi;
        }
    }

    public enum EOdemeDurum
    {
        OdemeYapilmadi=0,
        OdemeYapildi=1
    }
}
