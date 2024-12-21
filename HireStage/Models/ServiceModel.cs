namespace HireStage.Models
{
    public class ServiceModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public AccountModel WinnerAccount { get; set; }
        public AccountModel OwnerAccount { get; set; }
        public int DaysToFinish { get; set; }
        public DateTime AddDate { get; set; }
        public RateModel OwnerRate { get; set; }
        public RateModel ServerRate { get; set; }
        public decimal Rent {  get; set; }
    }
}
