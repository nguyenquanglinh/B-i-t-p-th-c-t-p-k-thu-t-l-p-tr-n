namespace QuanLyDiemSinhVien
{
    partial class AdminTeacher
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
            this.dataGridViewTeacher = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTeacher)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridViewTeacher
            // 
            this.dataGridViewTeacher.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTeacher.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridViewTeacher.Location = new System.Drawing.Point(0, 0);
            this.dataGridViewTeacher.Name = "dataGridViewTeacher";
            this.dataGridViewTeacher.Size = new System.Drawing.Size(432, 211);
            this.dataGridViewTeacher.TabIndex = 0;
            this.dataGridViewTeacher.MouseClick += new System.Windows.Forms.MouseEventHandler(this.dataGridViewTeacher_MouseClick);
            // 
            // AdminTeacher
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(432, 211);
            this.Controls.Add(this.dataGridViewTeacher);
            this.Name = "AdminTeacher";
            this.Text = "Quản lý giáo viên";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTeacher)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewTeacher;
    }
}