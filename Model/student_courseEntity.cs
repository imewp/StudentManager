using System;
namespace Model
{
    #region student_courseEntity
    /// <summary>
    /// Entity:student_courseEntity
    /// Author:NetCenter
    /// DateTime:2019/12/25 14:36:43
    /// </summary>
    [Serializable]
    public class student_courseEntity
    {
        #region Member Variables
        protected int _id;
        protected string _studentId = String.Empty;
        protected string _courseId = String.Empty;
        protected decimal _courseScore;
        #endregion
        #region Constructer without paras
        public student_courseEntity()
        {
        }
        #endregion
        #region Constructer with paras
        /// <summary>
        /// Constructer with paras
        /// </summary>
        /// <param name="id"></param>
        /// <param name="studentId"></param>
        /// <param name="courseId"></param>
        /// <param name="courseScore"></param>
        public student_courseEntity(
        int id,
        string studentId,
        string courseId,
        decimal courseScore)
        {
            this._id = id;
            this._studentId = studentId;
            this._courseId = courseId;
            this._courseScore = courseScore;
        }
        #endregion
        #region Public Properties
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string StudentId
        {
            get { return _studentId; }
            set { _studentId = value; }
        }

        public string CourseId
        {
            get { return _courseId; }
            set { _courseId = value; }
        }

        public decimal CourseScore
        {
            get { return _courseScore; }
            set { _courseScore = value; }
        }
        #endregion
    }
    #endregion
}
