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
    public partial class Role : Form
    {
        public Role()
        {
            InitializeComponent();
        }

 

        private void Btn_Delete_Click(object sender, EventArgs e)
        {
            DeleteRecords();
            ViewGrid();
        }

        private void Btn_Update_Click(object sender, EventArgs e)
        {
            UpdateRecords();
            ViewGrid();
        }

        private void Btn_Save_Click(object sender, EventArgs e)
        {
            AddRecords();
            MessageBox.Show("Record successfully");
            ViewGrid();
            textBox1.Clear();
            textBox2.Clear();
            comboBox1.SelectedIndex = -1;
        }

        private void Btn_New_Click(object sender, EventArgs e)
        {
            CreateNew();
            ViewGrid(); 

        }
        void CreateNew()
        {
            textBox1.Clear();
            textBox2.Clear();
            comboBox1.SelectedIndex = -1;
            Connection con = new Connection();
            SqlDataAdapter sda = new SqlDataAdapter("Proc_Nev_Role",con.ActiveCon());
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            textBox1.Text = dt.Rows[0][0].ToString();
            textBox2.Focus();
        }
        void AddRecords()
        {
            Connection con = new Connection();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Role_Master]
           ([Role_Id]
           ,[Role]
           ,[Role_Status])
     VALUES
            ('" + textBox1.Text + "','" + textBox2.Text + "','" + comboBox1.Text + "')",con.ActiveCon());
            cmd.ExecuteNonQuery();
        }
        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void Role_Load(object sender, EventArgs e)
        {
            CreateNew();
        }
        void ViewGrid()
        {
            Connection con = new Connection();
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Role_Master", con.ActiveCon());
            DataTable dt = new DataTable();
            sda.Fill(dt);
            dataGridView1.Rows.Clear();
            foreach(DataRow item in dt.Rows)
            {
                int n = dataGridView1.Rows.Add();
                dataGridView1.Rows[n].Cells[0].Value = (n + 1).ToString();
                dataGridView1.Rows[n].Cells[1].Value = item["Role_Id"].ToString();
                dataGridView1.Rows[n].Cells[2].Value = item["Role"].ToString();
                dataGridView1.Rows[n].Cells[3].Value = item["Role_Status"].ToString();
            }
        }

        private void dataGridView_DoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            int n = dataGridView1.SelectedRows[0].Index;
            textBox1.Text = dataGridView1.Rows[n].Cells[1].Value.ToString();
            textBox2.Text = dataGridView1.Rows[n].Cells[2].Value.ToString();
            comboBox1.Text = dataGridView1.Rows[n].Cells[3].Value.ToString();
        }
        void UpdateRecords()
        {
            Connection con = new Connection();
            SqlCommand cmd = new SqlCommand(@"UPDATE [LmsDB][dbo].[Role_Master]
   SET [Role] = '" + textBox2.Text + "',[Role_Status] = '" + comboBox1.Text + "'WHERE [Role_Id] = '" + textBox1.Text + "'" , con.ActiveCon());
            cmd.ExecuteNonQuery();
        }
        void DeleteRecords()
        {
            Connection con = new Connection();
            SqlCommand cmd = new SqlCommand(@" Delete from [dbo].[Role_Master] WHERE [Role_Id] = '" + textBox1.Text + "'", con.ActiveCon());
            cmd.ExecuteNonQuery();
        }
    }
}
