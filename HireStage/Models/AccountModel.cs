using System.Reflection;

namespace HireStage.Models
{
    public class AccountModel
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Pass {  get; set; }
        public byte[] Image {  get; set; }
        public string Description { get; set; }
        public Type AccountType { get; set; }
        public string LastProjects { get; set; }
        public DateTime HireDate { get; set; }
        public List<string> PhoneNumbers { get; set; } = new List<string>();

        public AccountModel() { }
        public AccountModel(string name, string email, byte[] image, string description, Type accountType, string lastProjects, DateTime hireDate, List<string> phoneNumbers)
        {
            Name = name;
            Email = email;
            Image = image;
            Description = description;
            AccountType = accountType;
            LastProjects = lastProjects;
            HireDate = hireDate;
            PhoneNumbers = phoneNumbers;
        }

        public enum Type
        {
            Normal = 0,
            Company = 1
        }
    }
}
