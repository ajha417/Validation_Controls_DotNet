using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Validation_Control.Models
{
    public class Functions
    {
        private SqlConnection connection;
        private SqlCommand command;
        private DataTable dt;
        private string connStr;
        private SqlDataAdapter sda;
        public Functions()
        {
            connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amit jha\Documents\Final_Exams.mdf"";Integrated Security=True;Connect Timeout=30";
            connection = new SqlConnection(connStr);
            command = new SqlCommand();
            command.Connection = connection;
        }

        public DataTable getData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query,connStr);
            sda.Fill(dt);
            return dt;
        }

        public int setData(string Query)
        {
            int Cnt;
            if(connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            command.CommandText = Query;
            Cnt = command.ExecuteNonQuery();
            connection.Close(); 
            return Cnt;
        }

    }
}