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
    public partial class DangNhap : Form
    {
        public DangNhap()
        {
            InitializeComponent();
        }
        public User User { get; private set; }
        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(txtUserName.Text))
            {
                if (!string.IsNullOrWhiteSpace(txtPass.Text))
                {
                    var fileDb = new FileDb();
                    this.User = fileDb.GetUser(txtUserName.Text, txtPass.Text);
                    if (this.User.Emperty)
                        MessageBox.Show("Đăng nhập không thành công.Vui lòng kiểm tra lại thông tin tài khoản", "Cảnh báo", MessageBoxButtons.OK);
                    else
                    {
                        MessageBox.Show("Đăng nhập thành công", "Thông báo", MessageBoxButtons.OK);
                        this.Close();
                    } 
                }
            }
        }

    }
}
