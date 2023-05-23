using ExamSystem.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExamSystem.Forms
{
    public partial class ExpertForm : Form
    {
        public ExpertForm(int id)
        {
            InitializeComponent();

            var user = new ExamsEntities().ChiefExpert.FirstOrDefault(u => u.IdChiefExpert == id);
            string fullName = user.FullName.Remove(0, user.FullName.IndexOf(' '));

            string greeting;

            var now = DateTime.Now;
            if (now.Hour >= 6 && now.Hour < 12)
            {
                greeting = "доброе утро";
            }
            else if (now.Hour >= 12 && now.Hour < 18)
            {
                greeting = "добрый день";
            }
            else if (now.Hour >= 18 && now.Hour < 21)
            {
                greeting = "добрый вечер";
            }
            else
            {
                greeting = "доброй ночи";
            }
            greetingLable.Text = $"{greeting}, {fullName}";
            PhotoBox.Image = user.PhotoImage;
        }

        private void PhotoBox_Click(object sender, EventArgs e)
        {

        }

        private void greetingLable_Click(object sender, EventArgs e)
        {

        }
    }
}
