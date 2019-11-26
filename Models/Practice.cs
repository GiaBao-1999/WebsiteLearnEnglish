using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project.Models
{
    public class Question
    {
        public int MaCauHoi { get; set; }
        public string NoiDungCauHoi { get; set; }
        public List<Answer> ListCauTraLoi { get; set; }
    }
    public class Answer
    {
        public int MaCauTraLoi { get; set; }
        public string NoiDungCauTraLoi { get; set; }
        public Question ThuocCauHoi { get; set; }
    }
}