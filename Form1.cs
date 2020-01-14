using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDiemSinhVien
{
    public partial class Form1 : Form
    {
        User user;
        public Form1()
        {
            InitializeComponent();
            DangNhap dn = new DangNhap();
            dn.ShowDialog();
            labelThongTin.BackColor = Color.Gray;
            user = dn.User;
            if (user.Emperty) { labelThongTin.Text = "Chưa đăng nhập"; }
            else
            {
                labelThongTin.Text = user.ToString();
                switch(user.Property)
                {
                    case "admin":
                        btnAdminUser.Enabled = true;
                        break;
                    case "adminTeacher":
                        btnAdminTeacher.Enabled = true;
                        break;
                    case "adminStudent":
                        btnAdminStudent.Enabled = true;
                        break;
                    case "teacher":
                        btnTeacher.Enabled = true;
                        break;
                    case "student":
                        btnStudent.Enabled = true;
                        break;
                     default:
                        MessageBox.Show("b chưa được phân quyền");
                        break;
                }

            }
        }
        private void btnAdminUser_Click(object sender, EventArgs e)
        {
            new AdminManager().ShowDialog();
        }
        private void btnAdminTeacher_Click(object sender, EventArgs e)
        {
            new AdminTeacher().ShowDialog();
        }

        private void btnAdminStudent_Click(object sender, EventArgs e)
        {
            new AdminStudent().ShowDialog();
        }

        private void btnStudent_Click(object sender, EventArgs e)
        {

        }
    }
}
