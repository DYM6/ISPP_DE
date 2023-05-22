using ExamSystem.Forms;
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

namespace ExamSystem
{
    public partial class ExamForm : Form
    {
        public ExamForm()
        {
            InitializeComponent();
        }

        private void ExamForm_Load(object sender, EventArgs e)
        {
            

            try
            {
                var skills = new ExamsEntities().Skill.ToList();
                skills.Insert(0, new Skill { SkillName_Russian = "все" });
                    SkillsBox.DataSource = skills;
                SkillsBox.DisplayMember = "Name";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка" + ex.Message);
                throw;
            }

            ShowExams();
        }

        private void ShowExams()
        {
            try
            {
                var exams = new ExamsEntities().Exam.ToList();

                if (SkillsBox.SelectedIndex >0)
                {
                    exams = exams.Where(e=>e.Name == (SkillsBox.SelectedItem as Skill).SkillName_Russian).ToList();
                }
                if (ExamsDatePicker.Checked)
                {
                    exams = exams.Where(e => e.Date.ToShortDateString() == ExamsDatePicker.Value.ToShortDateString()).ToList();
                }
                dataGridView1.DataSource = exams.OrderByDescending(e=>e.Date).ToList();
                if (exams.Count == 0)
                {
                    MessageBox.Show("не найдены");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка" + ex.Message);
                throw;
            }
        }

        private void AuthorizeButton_Click(object sender, EventArgs e)
        {
            AuthForm af = new AuthForm();
            af.StartPosition = FormStartPosition.CenterScreen;
            af.ShowDialog();
        }
    }
}
