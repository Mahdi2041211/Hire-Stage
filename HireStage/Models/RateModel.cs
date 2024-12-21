namespace HireStage.Models
{
    public class RateModel
    {

        public string Note { get; set; }
        public rate Rate {  get; set; }
        public enum rate
        {
            Zero = 0,
            Half = 5,
            One = 10,
            OneHalf = 15,
            Two = 20,
            TwoHalf = 25,
            Three = 30,
            ThreeHalf = 35,
            Four = 40,
            FourHalf = 45,
            Five = 50
        }
    }
}