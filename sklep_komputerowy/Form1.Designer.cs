namespace sklep_komputerowy
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.labelPolaczenieZBaza = new System.Windows.Forms.Label();
            this.buttonPolaczZBaza = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(888, 428);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 1;
            this.button1.Text = "Zamknij";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // labelPolaczenieZBaza
            // 
            this.labelPolaczenieZBaza.AutoSize = true;
            this.labelPolaczenieZBaza.Location = new System.Drawing.Point(849, 9);
            this.labelPolaczenieZBaza.Name = "labelPolaczenieZBaza";
            this.labelPolaczenieZBaza.Size = new System.Drawing.Size(114, 13);
            this.labelPolaczenieZBaza.TabIndex = 2;
            this.labelPolaczenieZBaza.Text = "Nie połączona z bazą ";
            this.labelPolaczenieZBaza.Click += new System.EventHandler(this.labelPolaczenieZBaza_Click);
            // 
            // buttonPolaczZBaza
            // 
            this.buttonPolaczZBaza.Location = new System.Drawing.Point(768, 4);
            this.buttonPolaczZBaza.Name = "buttonPolaczZBaza";
            this.buttonPolaczZBaza.Size = new System.Drawing.Size(75, 23);
            this.buttonPolaczZBaza.TabIndex = 4;
            this.buttonPolaczZBaza.Text = "Połącz";
            this.buttonPolaczZBaza.UseVisualStyleBackColor = true;
            this.buttonPolaczZBaza.Click += new System.EventHandler(this.button2_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 66);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(678, 94);
            this.dataGridView1.TabIndex = 5;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(975, 463);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.buttonPolaczZBaza);
            this.Controls.Add(this.labelPolaczenieZBaza);
            this.Controls.Add(this.button1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Name = "Form1";
            this.Text = "Sklep Komputerowy";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label labelPolaczenieZBaza;
        private System.Windows.Forms.Button buttonPolaczZBaza;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}

