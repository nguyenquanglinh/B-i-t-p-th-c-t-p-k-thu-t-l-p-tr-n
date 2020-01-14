namespace QuanLyDiemSinhVien
{
    partial class ProfessionTeacher
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
            this.btnThemDiemSv = new System.Windows.Forms.Button();
            this.btnThoiGianBieu = new System.Windows.Forms.Button();
            this.btnPhucKhao = new System.Windows.Forms.Button();
            this.btnXuLySV = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnThemDiemSv
            // 
            this.btnThemDiemSv.Location = new System.Drawing.Point(13, 63);
            this.btnThemDiemSv.Name = "btnThemDiemSv";
            this.btnThemDiemSv.Size = new System.Drawing.Size(121, 23);
            this.btnThemDiemSv.TabIndex = 0;
            this.btnThemDiemSv.Text = "Thêm điểm sinh viên";
            this.btnThemDiemSv.UseVisualStyleBackColor = true;
            // 
            // btnThoiGianBieu
            // 
            this.btnThoiGianBieu.Location = new System.Drawing.Point(159, 63);
            this.btnThoiGianBieu.Name = "btnThoiGianBieu";
            this.btnThoiGianBieu.Size = new System.Drawing.Size(102, 23);
            this.btnThoiGianBieu.TabIndex = 1;
            this.btnThoiGianBieu.Text = "Xem thời gian làm việc";
            this.btnThoiGianBieu.UseVisualStyleBackColor = true;
            // 
            // btnPhucKhao
            // 
            this.btnPhucKhao.Location = new System.Drawing.Point(13, 122);
            this.btnPhucKhao.Name = "btnPhucKhao";
            this.btnPhucKhao.Size = new System.Drawing.Size(121, 23);
            this.btnPhucKhao.TabIndex = 2;
            this.btnPhucKhao.Text = "Phúc khảo sinh viên";
            this.btnPhucKhao.UseVisualStyleBackColor = true;
            // 
            // btnXuLySV
            // 
            this.btnXuLySV.Location = new System.Drawing.Point(159, 122);
            this.btnXuLySV.Name = "btnXuLySV";
            this.btnXuLySV.Size = new System.Drawing.Size(102, 23);
            this.btnXuLySV.TabIndex = 3;
            this.btnXuLySV.Text = "Xử lý sinh viên";
            this.btnXuLySV.UseVisualStyleBackColor = true;
            // 
            // ProfessionTeacher
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 261);
            this.Controls.Add(this.btnXuLySV);
            this.Controls.Add(this.btnPhucKhao);
            this.Controls.Add(this.btnThoiGianBieu);
            this.Controls.Add(this.btnThemDiemSv);
            this.Name = "ProfessionTeacher";
            this.Text = "Nghiệp vụ giáo viên";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnThemDiemSv;
        private System.Windows.Forms.Button btnThoiGianBieu;
        private System.Windows.Forms.Button btnPhucKhao;
        private System.Windows.Forms.Button btnXuLySV;
    }
}