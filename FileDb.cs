using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QuanLyDiemSinhVien
{
    public class FileDb
    {

        SqlConnection connection = new SqlConnection();
        string strConnString = "Data Source =" + @"DESKTOP-1DLVE1Q\SQLEXPRESS" + ";Database = QuanLyDiemSinhVien; Integrated Security=SSPI;";
        public FileDb() { createConn(); }

        #region can hộ
        private void createConn()
        {
            try
            {
                if (connection.State != ConnectionState.Open)
                {
                    connection.ConnectionString = strConnString;
                    connection.Open();
                }
            }
            catch
            {
                MessageBox.Show("không thể mở kết nối với sql server");
            }
        }

        public User GetUser(string username, string pass)
        {
            string query = "select * from UserLogin where UserName='" +
               username + "' and PassWord = '" +
                pass + "'";

            var dtUsers = readDatathroughtAdapter(query);

            if (dtUsers.Rows.Count != 0)
            {
                return new User(username, pass, dtUsers.Rows[0]["Property"].ToString());
            }
            else
            {
                return new User();
            }
        }
        /// <summary>
        /// lấy dữ liêu trong bảng userlogin
        /// </summary>
        /// <param name="dataGridView1">giá trị để lưu kết quả trả về</param>
        /// <param name="under">là giá trị phụ thuộc nếu là adminUser thì sẽ là lấy tất cả</param>
        public void GetDataFromTableUserLogin(DataGridView dataGridView1, string under)
        {
            try
            {
                var query = "select * from UserLogin where under ='" + under +"'";
                SqlDataAdapter dataadapter = new SqlDataAdapter(query, connection);
                DataSet ds = new DataSet();
                dataadapter.Fill(ds, "data");
                dataGridView1.DataSource = ds;
                dataGridView1.DataMember = "data";
            }
            catch
            {
            }
        }

        public DataTable readDatathroughtAdapter(string query)
        {
            DataTable ds = new DataTable();
            try
            {
                if (connection.State == ConnectionState.Closed)
                {
                    createConn();
                }
                SqlDataAdapter dataadapter = new SqlDataAdapter(query, connection);

                dataadapter.Fill(ds);

            }
            catch
            {
            }
            return ds;
        }

        //public bool ThemCanHo(CanHo ch)
        //{
        //    if (ch == null) return false;
        //    try
        //    {
        //        string sql = "insert into " + "CanHo(soCMNDChuHo, tenChuHo, tenPhong, tenTang,gioiTinh,queQuan,ngayVao,namSinh) "
        //    + "values(@soCMNDChuHo, @tenChuHo, @tenPhong, @tenTang,@gioiTinh,@queQuan,@ngayVao,@namSinh)";
        //        using (SqlCommand insertCommand = new SqlCommand(sql, connection))
        //        {
        //            insertCommand.Parameters.AddWithValue("@soCMNDChuHo", ch.CMND);
        //            insertCommand.Parameters.AddWithValue("@tenChuHo", ch.Ten);
        //            insertCommand.Parameters.AddWithValue("@tenPhong", ch.Phong);
        //            insertCommand.Parameters.AddWithValue("@tenTang", ch.Tang);

        //            insertCommand.Parameters.AddWithValue("@gioiTinh", ch.GT);
        //            insertCommand.Parameters.AddWithValue("@queQuan", ch.QueQuan);
        //            insertCommand.Parameters.AddWithValue("@ngayVao", ch.NgayVao);
        //            insertCommand.Parameters.AddWithValue("@namSinh", ch.NamSinh);

        //            if (insertCommand.ExecuteNonQuery() == 1)
        //            {
        //                return true;
        //            }

        //        }
        //    }
        //    catch
        //    {
        //        MessageBox.Show("lỗi thêm căn hộ:\n");
        //    }
        //    return false;

        //}

        //public bool SuaCanHo(CanHo ch, string id)
        //{
        //    if (ch == null) return false;
        //    try
        //    {
        //        var s = Convert.ToDateTime(ch.NgayVao);
        //        var x = s.Day + "/" + s.Month + "/" + s.Year;
        //        var r = Convert.ToDateTime(ch.NamSinh);
        //        var y = r.Day + "/" + r.Month + "/" + r.Year;
        //        var sql = "update CanHo set soCMNDChuHo ='" +
        //              @ch.CMND +
        //              "', tenChuHo='" + @ch.Ten +
        //              "', tenPhong='" + @ch.Phong +
        //              "', tenTang='" + @ch.Tang +

        //              "', gioiTinh='" + @ch.GT +
        //              "', queQuan='" + @ch.QueQuan +
        //              "', ngayVao='" + @x +
        //              "', namSinh='" + @y +

        //              "' where soCMNDChuHo='" + id + "'";
        //        using (SqlCommand updateCommand = new SqlCommand(sql, connection))
        //        {
        //            if (updateCommand.ExecuteNonQuery() == 1)
        //            {
        //                return true;
        //            }
        //            return false;
        //        }
        //    }
        //    catch
        //    {
        //        return false;
        //    }


        //}

        //public bool XoaCanHo(string cmnd)
        //{
        //    try
        //    {
        //        String sql = "delete CanHo where soCMNDChuHo='" + cmnd + "'";
        //        using (SqlCommand insertCommand = new SqlCommand(sql, connection))
        //        {
        //            if (insertCommand.ExecuteNonQuery() == 1)
        //            {
        //                return true;
        //            }
        //        }
        //    }
        //    catch
        //    {

        //    }
        //    return false;
        //}
        //#endregion

        //#region Thân nhân
        //public void GetDataTableThanNhan(DataGridView dataGridView1, string cmnd)
        //{
        //    try
        //    {
        //        string sql = "select * from ThanNhan where soCMNDChuHo=@cmnd";
        //        using (SqlCommand updateCommand = new SqlCommand(sql, connection))
        //        {
        //            updateCommand.Parameters.AddWithValue("@cmnd", cmnd);
        //            DataSet ds = new DataSet();
        //            SqlDataAdapter dataadapter = new SqlDataAdapter();
        //            dataadapter.SelectCommand = updateCommand;
        //            dataadapter.Fill(ds, "data");
        //            dataGridView1.DataSource = ds;
        //            dataGridView1.DataMember = "data";
        //        }
        //    }
        //    catch (Exception e)
        //    {
        //        throw e;
        //    }


        //}
        //public bool ThemThanNhan(ThanNhan ch, string id)
        //{
        //    try
        //    {
        //        string sql = "insert into " + "ThanNhan(soCMNDChuHo, tenThanNhan, quanHe, namSinh,queQuan,ngayVao,soCMNDThanNhan,gioiTinh) "
        //     + "values(@soCMNDChuHo, @tenThanNhan, @quanHe, @namSinh,@queQuan,@ngayVao,@soCMNDThanNhan,@gioiTinh)";
        //        using (SqlCommand insertCommand = new SqlCommand(sql, connection))
        //        {
        //            var s = Convert.ToDateTime(ch.NgayVao);
        //            var x = s.Day + "/" + s.Month + "/" + s.Year;
        //            var r = Convert.ToDateTime(ch.NamSinh);
        //            var y = r.Day + "/" + r.Month + "/" + r.Year;
        //            insertCommand.Parameters.AddWithValue("@soCMNDChuHo", id);
        //            insertCommand.Parameters.AddWithValue("@tenThanNhan", ch.Ten);
        //            insertCommand.Parameters.AddWithValue("@quanHe", ch.QuanHe);
        //            insertCommand.Parameters.AddWithValue("@soCMNDThanNhan", ch.CMND);

        //            insertCommand.Parameters.AddWithValue("@gioiTinh", ch.GT);
        //            insertCommand.Parameters.AddWithValue("@queQuan", ch.QueQuan);
        //            insertCommand.Parameters.AddWithValue("@ngayVao", x);
        //            insertCommand.Parameters.AddWithValue("@namSinh", y);

        //            if (insertCommand.ExecuteNonQuery() == 1)
        //            {
        //                return true;
        //            }

        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("lỗi thêm thân nhân:\n" + ex);
        //    }
        //    return false;
        //}
        //public bool SuaThanNhan(ThanNhan ch, string id)
        //{
        //    try
        //    {
        //        var s = Convert.ToDateTime(ch.NgayVao);
        //        var x = s.Day + "/" + s.Month + "/" + s.Year;
        //        var r = Convert.ToDateTime(ch.NamSinh);
        //        var y = r.Day + "/" + r.Month + "/" + r.Year;
        //        var sql = "update ThanNhan set soCMNDChuHo ='" +
        //              @ch.CMND +
        //              "', tenThanNhan='" + @ch.Ten +
        //              "', quanHe='" + @ch.QueQuan +
        //              //"', tenTang='" + @ch.Tang +

        //              "', gioiTinh='" + @ch.GT +
        //              "', queQuan='" + @ch.QueQuan +
        //              "', ngayVao='" + @x +
        //              "', namSinh='" + @y +

        //              "' where soCMNDChuHo='" + id + "and" + "' tenThanNhan = '" + ch.Ten + "'";
        //        using (SqlCommand insertCommand = new SqlCommand(sql, connection))
        //        {
        //            if (insertCommand.ExecuteNonQuery() == 1)
        //            {
        //                return true;
        //            }
        //        }
        //    }
        //    catch
        //    {

        //    }
        //    return false;
        //}
        //public bool XoaThanNhan(string cmnd)
        //{
        //    String sql = "delete ThanNhan where soCMNDChuHo='" + cmnd + "'";
        //    using (SqlCommand insertCommand = new SqlCommand(sql, connection))
        //    {
        //        if (insertCommand.ExecuteNonQuery() == 1)
        //        {
        //            return true;
        //        }
        //    }
        //    return false;
        //}

        #endregion
    }
}