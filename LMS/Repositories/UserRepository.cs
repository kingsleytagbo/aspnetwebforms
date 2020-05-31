using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Linq.Mapping;
using LMS.Models;
using System.Configuration;
using System.Data.Linq;

namespace LMS.Repositories
{
    public class UserRepository
    {
        private Table<User> usersTable;
        private DataContext context;

        public UserRepository()
        {
            try
            {
                string connectionString =
              ConfigurationManager.ConnectionStrings["SqlServices"].ConnectionString;
                context = new DataContext(connectionString);

                usersTable = context.GetTable<User>();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        public User GetUserByUserName(string userName, string passWord)
        {
            User user = usersTable.SingleOrDefault(
              u => u.UserName == userName && u.Password == passWord);
            return user;
        }

        public User GetUserByUserName(string userName)
        {
            User user = usersTable.SingleOrDefault(u => u.UserName == userName);
            return user;
        }

        public IEnumerable<User> GetAllUsers()
        {
            return usersTable.AsEnumerable();
        }

        public IEnumerable<User> GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            totalRecords = -1;

            var users = usersTable.Select(p => p)
             .Skip(pageIndex)
             .Take(pageSize)
             .ToArray();

            return users;
        }

        public int RegisterUser(User User)
        {
            User user = new User();
            user.UserName = User.UserName;
            user.Password = User.Password;
            user.EmailAddress = User.EmailAddress;

            usersTable.InsertOnSubmit(user);
            context.SubmitChanges();

            return user.UserID;
        }
    }
}