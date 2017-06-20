using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per Brano
/// </summary>
public class Brano
{
    public int Id { get; set; }
    public int IdCompilation { get; set; }
    public string Titolo { get; set; }
    public int Durata { get; set; }
    public Brano()
    {
      
    }
}