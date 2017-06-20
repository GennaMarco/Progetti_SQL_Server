using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NuovoCD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInvia_Click(object sender, EventArgs e)
    {
        var c = new Compilation();
        c.Artista = txtArtista.Text;
        c.CasaDiscografica = txtCasaDiscografica.Text;
        c.Titolo = txtTitolo.Text;

        var dal = new CompilationDAL();
        lblRisultato.Text = dal.Add(c) ? "Operazione andata a buon fine" : "Operazione fallita";    
    }
}