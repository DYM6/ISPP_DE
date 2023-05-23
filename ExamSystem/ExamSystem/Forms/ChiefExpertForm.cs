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
    public partial class ChiefExpertForm : Form
    {
        int id;

        public ChiefExpertForm(int id)
        {
            InitializeComponent();

            this.id = id;



        }

        private void ChiefExpertForm_Load(object sender, EventArgs e)
        {
            examsDataGridView.AutoGenerateColumns = false;
            try
            {
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
                if (user.Photo != null)
                    PhotoBox.Image = user.PhotoImage;

                var exams = new ExamsEntities().Exam.Where(exam => exam.IdSkill == user.IdSkill).ToList();
                examsDataGridView.DataSource = exams;

                if (exams.Count == 0)
                    MessageBox.Show("Нет экзаменов по компетенции");
            }
            catch
            {
                MessageBox.Show("Не удалось получить данные");
            }
        }
    }
}
