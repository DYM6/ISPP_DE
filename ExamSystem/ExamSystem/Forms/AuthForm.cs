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
    public partial class AuthForm : Form
    {
        public AuthForm()
        {
            InitializeComponent();
            PasswordBox.UseSystemPasswordChar = true;
        }

        private void AuthButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(IdBox.Text);
            string password = PasswordBox.Text;

            try
            {
                var db = new ExamsEntities();

                var users = db
                    .Organizer.Select(u => new { Id = u.IdOrganizer, u.FullName, u.Passport, Role = "Participant" })
                    .Union(db.Participant.Select(u => new { Id = u.IdParticipant, u.FullName, u.Passport, Role = "Organizer" }))
                    .Union(db.Expert.Select(u => new { Id = u.IdExpert, u.FullName, u.Passport, Role = "Expert" }))
                    .Union(db.ChiefExpert.Select(u => new { Id = u.IdChiefExpert, u.FullName, u.Passport, Role = "ChiefExpert" }));
                var user = users.FirstOrDefault();
                if (user == null || user.Passport != password)
                {
                    MessageBox.Show("Пользователь не найден");
                }

                Hide();
                Form form;
                if (user.Role == "Participant")
                {
                    form = new ParticipantForm(user.Id);
                }
                else if (user.Role == "Organizer")
                {
                    form = new OrganizerForm(user.Id);
                }
                else if (user.Role == "Expert")
                {
                    form = new ExpertForm(user.Id);
                }
                else if (user.Role == "ChiefExpert")
                {
                    form = new ChiefExpertForm(user.Id);
                }
                else form = new Form();
                form.StartPosition = FormStartPosition.CenterScreen;
                form.ShowDialog();
                Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Не удалось авторизоваться\n"+ ex);
            }

            

            //Альтернативный вариант

            //var participant = db.Participant.FirstOrDefault(o => o.IdParticipant == id);
            //if (participant != null)
            //{
            //    Hide();
            //    Form of = new ParticipantForm();
            //    of.ShowDialog();
            //    Show();
            //}

            //var organizer = db.Organizer.FirstOrDefault(o => o.IdOrganizer == id);
            //if (organizer != null)
            //{
            //    Hide();
            //    Form of = new OrganizerForm();
            //    of.ShowDialog();
            //    Show();
            //}

            //var expert = db.Expert.FirstOrDefault(o => o.IdExpert == id);
            //if (expert != null)
            //{
            //    Hide();
            //    Form of = new ExpertForm();
            //    of.ShowDialog();
            //    Show();
            //}

            //var chiefExpert = db.ChiefExpert.FirstOrDefault(o => o.IdChiefExpert == id);
            //if (chiefExpert != null)
            //{
            //    Hide();
            //    Form of = new OrganizerForm();
            //    of.ShowDialog();
            //    Show();
            //}
        }

        private void ShowPasswordCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            PasswordBox.UseSystemPasswordChar = !ShowPasswordCheckBox.Checked;
        }
    }
}
