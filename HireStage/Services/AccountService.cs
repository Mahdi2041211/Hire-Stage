using HireStage.Models;
using Microsoft.Data.SqlClient;

namespace HireStage.Services
{
    public class Service
    {
        public static SqlConnection Conn = new SqlConnection(
            "Data Source=DESKTOP-OU7SBV1;Initial Catalog=HireStage;Integrated Security=True;Trust Server Certificate=True");
    }
    public class AccountService : Service
    {
        public static List<AccountModel> GetAllAccounts()
        {
            List<AccountModel> accounts = new List<AccountModel>();
            string sql = "select * from Account";
            var cmd = new SqlCommand(sql, Conn);
            Conn.Open();
            var reader = cmd.ExecuteReader();
            while (reader.Read())
                accounts.Add(new AccountModel
                {
                    Email = reader["Email"].ToString(),
                    Name = reader["Name"].ToString(),
                    Pass = reader["Pass"].ToString(),
                    Image = (byte[])reader["Selfy"],
                    AccountType = reader["Type"].ToString() == "0" ? (AccountModel.Type)0 : (AccountModel.Type)1,
                    Description = reader["Des"].ToString(),
                    LastProjects = reader["LastJobs"].ToString(),
                    HireDate = (DateTime)reader["HireDate"]
                });
            return accounts;
        }
    }
}
