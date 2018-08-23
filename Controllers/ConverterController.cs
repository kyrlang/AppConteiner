using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace DegreeConverter.Controllers
{
    [Route("api/[controller]")]
    public class ConverterController : Controller
    {
        [HttpGet("celsius/{fahrenheit}")]
        public decimal GetCelsius(decimal fahrenheit)
        {
            Console.WriteLine(Environment.MachineName);
            return ((fahrenheit - 32) * 5) / 9;
        }

        [HttpGet("fahrenheit/{celsius}")]
        public decimal GetFahrenheit(decimal celsius)
        {
            Console.WriteLine(Environment.MachineName);
            return celsius * (9/5) + 32;
        }
    }
}
