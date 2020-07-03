using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;

namespace TaxaJuros.WebApi.Extensions
{
    public static class DoubleExtensions
    {
        public static string FormatStringBr(this double valor)
        {
            return valor.ToString("###########0.00", CultureInfo.GetCultureInfo("pt-BR"));
        }
    }
}
