using System;
using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;


namespace WindowsFormsApp1
{
    public class DB
    {
        private readonly string _connectionString =
            @"Server=.\MSSQLSERVER_KWZP;Database=Produkcja_Dronow;Integrated Security=True;TrustServerCertificate=True;";


        public DataTable PobierzDaneZTabeli(string nazwaTabeli)
        {
            DataTable tabelaDanych = new DataTable();

            try
            {
                using (SqlConnection connection = new SqlConnection(_connectionString))
                {
                    connection.Open();


                    string query = $"SELECT * FROM {nazwaTabeli}";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {

                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(tabelaDanych);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Błąd pobierania danych z tabeli {nazwaTabeli}:\n{ex.Message}",
                                "Błąd bazy", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            return tabelaDanych;
        }
    }
}