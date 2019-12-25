using System;
namespace Model
{
    #region admin_userEntity
    /// <summary>
    /// Entity:admin_userEntity
    /// Author:NetCenter
    /// DateTime:2019/12/25 14:34:00
    /// </summary>
    [Serializable]
    public class admin_userEntity
    {
        #region Member Variables
        protected int _id;
        protected string _userName = String.Empty;
        protected string _userPassword = String.Empty;
        protected int _loginTimes;
        protected string _trueName = String.Empty;
        protected string _linkTelephone = String.Empty;
        #endregion
        #region Constructer without paras
        public admin_userEntity()
        {
        }
        #endregion
        #region Constructer with paras
        /// <summary>
        /// Constructer with paras
        /// </summary>
        /// <param name="id"></param>
        /// <param name="userName"></param>
        /// <param name="userPassword"></param>
        /// <param name="loginTimes"></param>
        /// <param name="trueName"></param>
        /// <param name="linkTelephone"></param>
        public admin_userEntity(
        int id,
        string userName,
        string userPassword,
        int loginTimes,
        string trueName,
        string linkTelephone)
        {
            this._id = id;
            this._userName = userName;
            this._userPassword = userPassword;
            this._loginTimes = loginTimes;
            this._trueName = trueName;
            this._linkTelephone = linkTelephone;
        }
        #endregion
        #region Public Properties
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public string UserPassword
        {
            get { return _userPassword; }
            set { _userPassword = value; }
        }

        public int LoginTimes
        {
            get { return _loginTimes; }
            set { _loginTimes = value; }
        }

        public string TrueName
        {
            get { return _trueName; }
            set { _trueName = value; }
        }

        public string LinkTelephone
        {
            get { return _linkTelephone; }
            set { _linkTelephone = value; }
        }
        #endregion
    }
    #endregion
}
