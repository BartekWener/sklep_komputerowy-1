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
using MySql.Data.MySqlClient;

namespace sklep_komputerowy
{
    public partial class Form1 : Form
    {
        //private readonly object polaczenie;

        public Form1()
        {
            InitializeComponent();

        }




        private void button1_Click(object sender, EventArgs e)
        {

            Application.Exit();
        }
        //-----------------------------Połącznie z baza-----------------------------------------


        
        private void button2_Click(object sender, EventArgs e)
        {


            string ConnectionString = "Server=127.0.0.1;Database=sklep;Uid= root;Pwd="; //ciąg połączeniowy
            MySqlConnection polaczenie = new MySqlConnection(ConnectionString);
           

                try
                {

                    polaczenie.Open();
                    //labelPolaczenieZBaza.Text = "Połączono z baza";
                   
                    MySqlCommand cmd = polaczenie.CreateCommand();
                    cmd.CommandText = "SELECT procesor_graficzny as 'Procesor Graficzny' FROM karty";
                    MySqlDataAdapter adap = new MySqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adap.Fill(ds);
                Form2 form2 = new Form2();
                this.Hide();
                form2.Show();


            }
                catch (System.Data.SqlClient.SqlException)
                {
                    //labelPolaczenieZBaza.Text = "Nie połączono z baza";
                    MessageBox.Show("BŁĄD ");

                }
                finally
                {
                    if (polaczenie.State == System.Data.ConnectionState.Open)
                    {
                        polaczenie.Close();

                    }
                }


            }
        


        

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}
