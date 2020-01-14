namespace QuanLyDiemSinhVien
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
            this.labelThongTin = new System.Windows.Forms.Label();
            this.btnAdminUser = new System.Windows.Forms.Button();
            this.btnAdminTeacher = new System.Windows.Forms.Button();
            this.btnAdminStudent = new System.Windows.Forms.Button();
            this.btnStudent = new System.Windows.Forms.Button();
            this.btnTeacher = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // labelThongTin
            // 
            this.labelThongTin.AutoSize = true;
            this.labelThongTin.Location = new System.Drawing.Point(0, 0);
            this.labelThongTin.Name = "labelThongTin";
            this.labelThongTin.Size = new System.Drawing.Size(0, 13);
            this.labelThongTin.TabIndex = 0;
            // 
            // btnAdminUser
            // 
            this.btnAdminUser.Enabled = false;
            this.btnAdminUser.Location = new System.Drawing.Point(12, 91);
            this.btnAdminUser.Name = "btnAdminUser";
            this.btnAdminUser.Size = new System.Drawing.Size(100, 23);
            this.btnAdminUser.TabIndex = 1;
            this.btnAdminUser.Text = "Quản lý admin";
            this.btnAdminUser.UseVisualStyleBackColor = true;
            this.btnAdminUser.Click += new System.EventHandler(this.btnAdminUser_Click);
            // 
            // btnAdminTeacher
            // 
            this.btnAdminTeacher.Enabled = false;
            this.btnAdminTeacher.Location = new System.Drawing.Point(133, 91);
            this.btnAdminTeacher.Name = "btnAdminTeacher";
            this.btnAdminTeacher.Size = new System.Drawing.Size(100, 23);
            this.btnAdminTeacher.TabIndex = 2;
            this.btnAdminTeacher.Text = "Quản lý giáo viên";
            this.btnAdminTeacher.UseVisualStyleBackColor = true;
            this.btnAdminTeacher.Click += new System.EventHandler(this.btnAdminTeacher_Click);
            // 
            // btnAdminStudent
            // 
            this.btnAdminStudent.Enabled = false;
            this.btnAdminStudent.Location = new System.Drawing.Point(248, 91);
            this.btnAdminStudent.Name = "btnAdminStudent";
            this.btnAdminStudent.Size = new System.Drawing.Size(100, 23);
            this.btnAdminStudent.TabIndex = 3;
            this.btnAdminStudent.Text = "Quản lý sinh viên";
            this.btnAdminStudent.UseVisualStyleBackColor = true;
            this.btnAdminStudent.Click += new System.EventHandler(this.btnAdminStudent_Click);
            // 
            // btnStudent
            // 
            this.btnStudent.Location = new System.Drawing.Point(51, 157);
            this.btnStudent.Name = "btnStudent";
            this.btnStudent.Size = new System.Drawing.Size(100, 23);
            this.btnStudent.TabIndex = 4;
            this.btnStudent.Text = "Xử lý sinh viên";
            this.btnStudent.UseVisualStyleBackColor = true;
            this.btnStudent.Click += new System.EventHandler(this.btnStudent_Click);
            // 
            // btnTeacher
            // 
            this.btnTeacher.Location = new System.Drawing.Point(190, 157);
            this.btnTeacher.Name = "btnTeacher";
            this.btnTeacher.Size = new System.Drawing.Size(100, 23);
            this.btnTeacher.TabIndex = 5;
            this.btnTeacher.Text = "Xử lý giáo viên";
            this.btnTeacher.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(359, 220);
            this.Controls.Add(this.btnTeacher);
            this.Controls.Add(this.btnStudent);
            this.Controls.Add(this.btnAdminStudent);
            this.Controls.Add(this.btnAdminTeacher);
            this.Controls.Add(this.btnAdminUser);
            this.Controls.Add(this.labelThongTin);
            this.Name = "Form1";
            this.Text = "Trang chủ";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelThongTin;
        private System.Windows.Forms.Button btnAdminUser;
        private System.Windows.Forms.Button btnAdminTeacher;
        private System.Windows.Forms.Button btnAdminStudent;
        private System.Windows.Forms.Button btnStudent;
        private System.Windows.Forms.Button btnTeacher;
    }
}

