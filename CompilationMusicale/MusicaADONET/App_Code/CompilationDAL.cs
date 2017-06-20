using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per CompilationDAL
/// </summary>
public class CompilationDAL
{
    public CompilationDAL()
    {
      
    }

    public List<Compilation> GetAll()
    {
        var elenco = new List<Compilation>();

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["IstatConnectionString"].ConnectionString;

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.Connection.Open();

        string sql = "SELECT * FROM Compilation";
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;

        SqlDataReader sdr = cmd.ExecuteReader();
        Compilation c = null;
        while(sdr.Read())
        {
            c = new Compilation();
            c.Id = sdr.GetInt32(0);
            c.Titolo = sdr.GetString(1);
            c.Artista = sdr.GetString(2);
            c.CasaDiscografica = sdr.GetString(3);

            elenco.Add(c);
        }

        cmd = null;
        conn.Close();

        return elenco;
    }

    public bool Add(Compilation Compilation)
    {
        try
        {
            int nums = 0;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["IstatConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.Connection.Open();

            string sql = "INSERT INTO Compilation(Titolo, Artista, CasaDiscografica) VALUES(@Titolo, @Artista, @CasaDiscografica)";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            cmd.Parameters.Add("@Titolo", SqlDbType.VarChar, 50).Value = Compilation.Titolo;
            cmd.Parameters.Add("@Artista", SqlDbType.VarChar, 50).Value = Compilation.Artista;
            cmd.Parameters.Add("@CasaDiscografica", SqlDbType.VarChar, 50).Value = Compilation.CasaDiscografica;
            cmd.CreateParameter();

            nums = cmd.ExecuteNonQuery();

            cmd = null;
            conn.Close();

            return nums == 1;
        }
        catch(Exception e)
        {
            throw new Exception("Errore: " + e.Message);
        }
    }
}