namespace QuanLyDiemSinhVien
{
    public class User
    {
        public bool Emperty = true;
        public User()
        {
            this.UserName = "name";
            this.PassWord = "pass";
            this.Property = "other";
        }
        public User(string name, string pass):this()
        {
            this.UserName = name;
            this.PassWord = pass;
            this.Property = "other";
            Emperty = false;
        }
        public User(string name,string pass,string property) : this(name, pass)
        {
            this.Property = property;
        }
        public string PassWord { get;  set; }
        public string UserName { get;  set; }
        public string Property { get;  set; }
        public override string ToString()
        {
            return "Thông tin tài khoản:\n" + "Tên tài khoản: " + UserName + "\nThuộc tính:" + Property;
        }
        public override int GetHashCode()
        {
            return UserName.GetHashCode() ^ PassWord.GetHashCode()^Property.GetHashCode();
        }
        public override bool Equals(object obj)
        {
            return this.GetHashCode() == obj.GetHashCode();
        }
    }
}