using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace LibraryManagementSystem
{
    public class Connection
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9JTMP8E\\SQLEXPRESS;Initial Catalog=LmsDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        public SqlConnection ActiveCon()
        {
            if(con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();

            }
            return con;
        }
    }
}
