using System.Data.Entity;
namespace Data
{
    public class Friends : DbContext
    {
        #region Variable / GET & SET
        // Refer to the id of friends table
        public int friendsId{get; set;}
        #endregion
    }
}