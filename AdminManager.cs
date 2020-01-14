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
    public partial class AdminManager : Form
    {
        private FileDb dbFile;

        public AdminManager()
        {
            InitializeComponent();
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.dbFile = new FileDb();
            dbFile.GetDataFromTableUserLogin(dataGridViewUser,"admin");
        }
        private void dataGridViewUser_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                ContextMenuStrip contexMenuUsers = new ContextMenuStrip();
                contexMenuUsers.Items.Add("Thêm user admin");
                contexMenuUsers.Items.Add("Sửa user admin");
                contexMenuUsers.Items.Add("Xóa user admin");
                contexMenuUsers.Show(dataGridViewUser, new Point(e.X, e.Y));
                contexMenuUsers.ItemClicked += new ToolStripItemClickedEventHandler(
                    contexMenuUsers_ItemClicked);
            }
            else
            {
                //if (s != null)
                //    new ChangeDataThanNhan(dbAccess, s.CMND).ShowDialog();
            }
        }

        private void contexMenuUsers_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
            ToolStripItem item = e.ClickedItem;
            if (item.Text == "Thêm user admin")
            {
                //var them = new ThemCanHo();
                //them.ShowDialog();
                //if (dbAccess.ThemCanHo(them.GetCanHo)) MessageBox.Show("Thêm thành công");
                /*else*/
                MessageBox.Show("Thêm user");

            }
            else if (item.Text == "Sửa user admin")
            {
                //if (s != null)
                //{
                //    var sua = new SuaCanHo(s);
                //    sua.ShowDialog();
                //    if (dbAccess.SuaCanHo(sua.CanHo, s.CMND)) MessageBox.Show("Thêm thành công");
                //    else MessageBox.Show("Không thể thêm thông tin vui lòng kiểm tra lại dữ liệu");
                //}
                //else
                //{
                //    MessageBox.Show("dữ liệu rỗng");
                //}
                MessageBox.Show("sửa user");
            }
            else if (item.Text == "Xóa user admin")
            {
                //if (s != null)
                //{
                //    if (dbAccess.XoaCanHo(s.CMND)) MessageBox.Show("Xóa thành công");
                //    else MessageBox.Show("Không thể xóa thông tin vui lòng kiểm tra lại");
                //}
                //else
                //{
                //    MessageBox.Show("dữ liệu rỗng");
                //}
                MessageBox.Show("xóa user");
            }
            dbFile.GetDataFromTableUserLogin(dataGridViewUser, "admin");
        }
    }
}
