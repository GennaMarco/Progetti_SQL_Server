using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per CompilationBBL
/// </summary>
public class CompilationBBL
{
    public CompilationBBL()
    {
     
    }

    public string FormatDurata(int IdCompilation)
    {
        BranoDAL dal = new BranoDAL();

        var brani = dal.GetAll();
        int d = 0;
        foreach (var b in brani)
            if (b.IdCompilation == IdCompilation)
                d += b.Durata;

        return d.ToString();
    }


}