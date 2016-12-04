using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sklep_komputerowy
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();

        }
       
               
        
        private void Form2_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form1 form1 = new Form1();
            MessageBox.Show("Goodbye.");
            this.Hide();
            form1.Show();
        }
    }
}
