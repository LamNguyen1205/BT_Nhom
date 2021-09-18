using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace LibraryManagementSystem
{
    public partial class Login : Form
    {
      //  SqlConnection con = new SqlConnection("Data Source=DESKTOP-9JTMP8E\\SQLEXPRESS;Initial Catalog=LmsDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        public Login()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Connection con = new Connection();
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Profile_Master Where Pro_User_Id ='" + textBox1.Text + "' and Pro_Password='" +textBox2.Text + "' ",con.ActiveCon());
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                LMS obj = new LMS();
                obj.Show();
                this.Hide();
            }  
            else
            {
                MessageBox.Show("Invalid Username Or Password..!","Aleart",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }
        }
    }
}
