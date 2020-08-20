using PrayerTime.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Haramain_High_Speed_Rail.BAL
{
    public class UsersTable
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string PhoneNumber { get; set; }

        public void InsertUser()
        {
            SqlService sql = new SqlService();
            sql.AddParameter("@UserType", SqlDbType.Int, UserType);
            sql.AddParameter("@UserName", SqlDbType.NVarChar, UserName);
            sql.AddParameter("@Email", SqlDbType.VarChar, Email);
            sql.AddParameter("@Password", SqlDbType.NVarChar, Password);
            //sql.AddParameter("@PhoneNumber", SqlDbType.VarChar, PhoneNumber);
            sql.ExecuteSql("INSERT INTO Users(UserType,UserName,Email,Password) VALUES (@UserType,@UserName,@Email,@Password);");
        }

        public DataTable GetUserByEmail(string Email, string Password)
        {
            SqlService sql = new SqlService();
            sql.AddParameter("@Email", SqlDbType.VarChar, Email);
            sql.AddParameter("@Password", SqlDbType.NVarChar, Password);
            return sql.ExecuteSqlDataSet("SELECT * FROM Users WHERE Email = @Email AND Password = @Password").Tables[0];

        }
    }
}
