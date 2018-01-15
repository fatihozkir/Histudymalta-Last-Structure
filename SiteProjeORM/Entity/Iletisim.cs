using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SiteProjeORM.Entity
{
    public class Iletisim
    {
        public int IletisimId { get; set; }
        public string Adres { get; set; }
        public long TelefonNo { get; set; }
        public string Mail { get; set; }
        public string FacebookURL { get; set; }
        public string TwitterURL { get; set; }
        public string InstagramURL { get; set; }
    }
}
