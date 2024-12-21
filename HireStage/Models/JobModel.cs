namespace HireStage.Models
{
    public class JobModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public DateTime AddDate { get; set; }
        public decimal Salary { get; set; }
        public AccountModel WinnerAccount { get; set; }
        public AccountModel OwnerAccount { get; set; }

        public JobModel() { }
        public JobModel(int id, string name, string description, DateTime addDate, decimal salary, AccountModel winnerAccount, AccountModel ownerAccount)
        {
            ID = id;
            Name = name;
            Description = description;
            AddDate = addDate;
            Salary = salary;
            WinnerAccount = winnerAccount;
            OwnerAccount = ownerAccount;
        }
    }
}
