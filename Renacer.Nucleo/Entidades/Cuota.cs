﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Renacer.Nucleo.Entidades
{
    public class Cuota
    {
        public int id { get; set; } 
        public string  nombre { get; set; }
        public decimal monto { get; set; }
        public DateTime fechaVencimiento { get; set; }


    }
}
