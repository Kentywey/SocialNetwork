namespace Data
{
    public class Question
    {
        #region Variables / GET & SET
        // ID that refer to the ID of the question Table
        public int QuestionID{get; set;}
        // Question the user set in Question table
        public string QuestionQues{get; set;}
        // Answer the user set in Question Table
        public string QuestionAnswer{get; set;}
        #endregion
    }
}