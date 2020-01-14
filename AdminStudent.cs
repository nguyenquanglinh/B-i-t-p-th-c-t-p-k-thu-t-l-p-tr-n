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
    public partial class AdminStudent : Form
    {
        private FileDb dbFile;

        public AdminStudent()
        {
            InitializeComponent();
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.dbFile = new FileDb();
            dbFile.GetDataFromTableUserLogin(dataGridViewStudent, "adminStudent");

        }

        private void dataGridViewStudent_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                ContextMenuStrip contexMenuUsers = new ContextMenuStrip();
                contexMenuUsers.Items.Add("Thêm sinh viên");
                contexMenuUsers.Items.Add("Sửa sinh viên");
                contexMenuUsers.Items.Add("Xóa sinh viên");
                contexMenuUsers.Show(dataGridViewStudent, new Point(e.X, e.Y));
                contexMenuUsers.ItemClicked += new ToolStripItemClickedEventHandler(
                    contexMenuStudent_ItemClicked);
            }
            else
            {
                //if (s != null)
                //    new ChangeDataThanNhan(dbAccess, s.CMND).ShowDialog();
            }
        }

        private void contexMenuStudent_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
            ToolStripItem item = e.ClickedItem;
            if (item.Text == "Thêm sinh viên")
            {
                //var them = new ThemCanHo();
                //them.ShowDialog();
                //if (dbAccess.ThemCanHo(them.GetCanHo)) MessageBox.Show("Thêm thành công");
                /*else*/
                MessageBox.Show("Thêm giáo viên");

            }
            else if (item.Text == "Sửa sinh viên")
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
                MessageBox.Show("sửa giáo viên");
            }
            else if (item.Text == "Xóa sinh viên")
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
                MessageBox.Show("xóa giáo viên");
            }
            dbFile.GetDataFromTableUserLogin(dataGridViewStudent, "adminStudent");
        }
    }
}
