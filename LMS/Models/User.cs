using System;
using System.Data.Linq.Mapping;

namespace LMS.Models
{
    [Table(Name = "Users")]
    public class User
    {
        [Column(IsPrimaryKey = true, IsDbGenerated = true, AutoSync = AutoSync.OnInsert)]
        public int UserID { get; set; }
        [Column] public string UserName { get; set; }
        [Column] public string Password { get; set; }
        [Column] public string EmailAddress { get; set; }

        [Column] public string FirstName { get; set; }

        [Column] public string LastName { get; set; }

        [Column] public string State { get; set; }
    }
}