using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class Uye
    {
        public int UyeId { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Mail { get; set; }
        public string Sifre { get; set; }
        public long Telefon { get; set; }
        public EUyelikOnay UyelikOnay { get; set; }
        public EAbone Abone { get; set; }
        public string OnayKodu { get; set; }
        public Uye()
        {
            UyelikOnay = EUyelikOnay.OnayliDegil;
            Abone = EAbone.AboneDegil;
        }

    }
    public enum EUyelikOnay
    {
        OnayliDegil=0,
        Onayli=1
    }

    public enum EAbone
    {
        AboneDegil=0,
        Abone=1
    }
}
