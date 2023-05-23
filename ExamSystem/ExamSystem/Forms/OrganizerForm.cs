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
    public partial class OrganizerForm : Form
    {
        int id;

        public OrganizerForm(int id)
        {
            InitializeComponent();

            this.id = id;
        }

        private void OrganizerForm_Load(object sender, EventArgs e)
        {


            var user = new ExamsEntities().Organizer.FirstOrDefault(u => u.IdOrganizer == id);
            string fullName = user.FullName.Remove(0, user.FullName.IndexOf(' '));

            string greeting;

            var now = DateTime.Now;
            if (now.Hour >= 6 && now.Hour < 12)
            {
                greeting = "Доброе утро";
            }
            else if (now.Hour >= 12 && now.Hour < 18)
            {
                greeting = "Добрый день";
            }
            else if (now.Hour >= 18 && now.Hour < 21)
            {
                greeting = "Добрый вечер";
            }
            else
            {
                greeting = "Доброй ночи";
            }
            greetingLable.Text = $"{greeting}, {fullName}";
            PhotoBox.Image = user.PhotoImage;
        }

        private void ShowExamsButton_Click(object sender, EventArgs e)
        {
            
        }

        private void ShowParticipantsButton_Click(object sender, EventArgs e)
        {
            var form = new ParticipantListForm();
            form.ShowDialog();
        }

        private void RegisterButton_Click(object sender, EventArgs e)
        {
            var form = new RegisterForm();
            form.ShowDialog();
        }
    }
}
