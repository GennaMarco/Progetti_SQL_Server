using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descrizione di riepilogo per BranoDAL
/// </summary>
public class BranoDAL
{
    
    public List<Brano> GetAll()
    {
        var elenco = new List<Brano>();

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["IstatConnectionString"].ConnectionString;

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.Connection.Open();

        string sql = "SELECT * FROM Compilation";
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;

        SqlDataReader sdr = cmd.ExecuteReader();
        Brano c = null;
        while (sdr.Read())
        {
            c = new Brano();
            c.Id = sdr.GetInt32(0);
            c.IdCompilation = sdr.GetInt32(1);
            c.Titolo = sdr.GetString(2);
            c.Durata = sdr.GetInt32(3);

            elenco.Add(c);
        }

        cmd = null;
        conn.Close();

        return elenco;
    }

    public bool Add(Brano Brano)
    {
        try
        {
            int nums = 0;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["IstatConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.Connection.Open();

            string sql = "INSERT INTO Brano(IdCompilation, Titolo, Durata) VALUES(@IdCompilation, @Titolo, @Durata)";
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            cmd.Parameters.Add("@IdCompilation", SqlDbType.VarChar, 50).Value = Brano.IdCompilation;
            cmd.Parameters.Add("@Titolo", SqlDbType.VarChar, 50).Value = Brano.Titolo;
            cmd.Parameters.Add("@Durata", SqlDbType.VarChar, 50).Value = Brano.Durata;
            cmd.CreateParameter();

            nums = cmd.ExecuteNonQuery();

            cmd = null;
            conn.Close();

            return nums == 1;
        }
        catch (Exception e)
        {
            throw new Exception("Errore: " + e.Message);
        }
    }
    
}