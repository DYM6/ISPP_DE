using ExamSystem.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExamSystem.Forms
{
    public partial class RegisterForm : Form
    {
        public RegisterForm()
        {
            InitializeComponent();

            var db = new ExamsEntities();

            var max = db
                .Organizer.Select(u => new { Id = u.IdOrganizer })
                .Union(db.Participant.Select(u => new { Id = u.IdParticipant }))
                .Union(db.Expert.Select(u => new { Id = u.IdExpert }))
                .Union(db.ChiefExpert.Select(u => new { Id = u.IdChiefExpert }))
                .Max(u => u.Id);

            int id = new Random().Next(max+1, max + 10);
            idBox.Text = id.ToString();
            idBox.Enabled = false;
            sexComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
            roleComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
            skillsComboBox.DropDownStyle= ComboBoxStyle.DropDownList;
            examsComboBox.DropDownStyle = ComboBoxStyle.DropDownList;

            var skills = new ExamsEntities().Skill.OrderBy(s=>s.SkillName_Russian).ToList();
            skillsComboBox.DataSource= skills;
            skillsComboBox.DisplayMember= "SkillName_Russian";
        }

        private void SkillsComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            var skill = skillsComboBox.SelectedItem as Skill;
            if (skill != null)
            {
                var exams = new ExamsEntities().Exam.Where(exam => exam.IdSkill==skill.IdSkill).ToList();
                examsComboBox.DataSource = exams;
                examsComboBox.DisplayMember = "Name";
            }

        }

        //выбор фото
        private void PhotoBox_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Filter = "Изображение|*jpg;*png;*bmp;|Все файлы|*.*";
            if (ofd.ShowDialog()==DialogResult.OK)
            {
                photoLabel.Text = ofd.FileName;
                photoBox.Image = Image.FromFile(ofd.FileName);

                
                    
            }
            else
            {
                photoBox.Image = null;
            }
        }

        private void ShowPasswordCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            passwordBox.UseSystemPasswordChar = !ShowPasswordCheckBox.Checked;
            ConfirmPasswordBox.UseSystemPasswordChar = !ShowPasswordCheckBox.Checked;
        }

        private void SaveButton_Click(object sender, EventArgs e)
        {
            //проверка пароля (6 символов, буквоцифры, знак)
            var password = passwordBox.Text;
            if (password.Length<6 || !password.Any(Char.IsDigit) || 
                !password.Any(Char.IsLower) || !password.Any(Char.IsUpper) || !password.Any(Char.IsPunctuation))
            {
                MessageBox.Show("Пароль должен содержать не менее 6 символов, строчные и прописные буквы, цифры и специальные символы");
                return;
            }

            //проверка подтверждения пароля
            if (passwordBox.Text != ConfirmPasswordBox.Text)
            {
                MessageBox.Show("Пароли не совпадают");
                return;
            }
            //проверка почты
            var email = emailBox.Text;
            //if (email.Length<6 || email.IndexOf('@') != 0 || email.IndexOf('@')+1 > email.LastIndexOf('.'))
            //{
            //    MessageBox.Show("Некорректный  email");
            //    return;
            //}
            //проверка почты - вариант с регулярным выражением
            if (!Regex.IsMatch(email, @"^\w+@\w+\.\w{2,}$"))
            {
                MessageBox.Show("Некорректный  email");
                return;
            }

            //выбор пола
            if (sexComboBox.SelectedIndex<0)
            {
                MessageBox.Show("Требуется выбрать пол");
            }

            //выбор компетенции
            if (skillsComboBox.SelectedIndex < 0 && roleComboBox.SelectedIndex != 2)
            {
                MessageBox.Show("Требуется выбрать компетенцию");
            }

            //выбор экзамена
            if (examsComboBox.SelectedIndex < 0 && roleComboBox.SelectedIndex == 2 && AddToExamCheckBox.Checked)
            {
                MessageBox.Show("Требуется выбрать экзамен");
            }

            //главный эксперт
            if (roleComboBox.SelectedIndex == 0)
            {
                AddChiefExpert();
            }
            //эксперт
            else if (roleComboBox.SelectedIndex == 1)
            {
                AddExpert();
            }
            //участник
            else if (roleComboBox.SelectedIndex == 2)
            {
                AddParticipant();
            }
            else
            {
                MessageBox.Show("Требуется выбрать роль");
            }

        }

        private void AddParticipant()
        {
            var user = new Participant();

            user.IdParticipant = Convert.ToInt32(idBox.Text);
            user.FullName = FullNameBox.Text;
            user.Sex = sexComboBox.SelectedItem.ToString();
            user.BirthDate = BirthDatePicker.Value.Date;
            user.Phone = PhoneMaskedTextBox.Text;
            user.Email = emailBox.Text;
            user.Passport = passwordBox.Text;

            if (photoLabel.Text != "")
            {
                var filename = Path.GetFileName(photoLabel.Text);
                var newFilename = Path.Combine(Environment.CurrentDirectory, "Участники", filename);
                File.Copy(photoLabel.Text, newFilename);
                user.Photo = filename;
            }

            try
            {
                var db = new ExamsEntities();
                db.Participant.Add(user);
                db.SaveChanges();
                MessageBox.Show("Данные успешно сохранены в БД");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Не удалось сохранить данные в БД\n" + ex);
            }
        }

        private void AddExpert()
        {
            var user = new Expert();

            user.IdExpert = Convert.ToInt32(idBox.Text);
            user.FullName = FullNameBox.Text;
            user.Sex = sexComboBox.SelectedItem.ToString();
            user.BirthDate = BirthDatePicker.Value.Date;
            user.Phone = PhoneMaskedTextBox.Text;
            user.Email = emailBox.Text;
            user.Passport = passwordBox.Text;

            if (photoLabel.Text !="")
            {
                var filename = Path.GetFileName(photoLabel.Text);
                var newFilename = Path.Combine(Environment.CurrentDirectory, "Эксперты", filename);
                File.Copy(photoLabel.Text, newFilename);
                user.Photo = filename;
            }
            
            user.IdSkill = (skillsComboBox.SelectedItem as Skill).IdSkill;

            try
            {
                var db = new ExamsEntities();
                db.Expert.Add(user);
                db.SaveChanges();
                MessageBox.Show("Данные успешно сохранены в БД");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Не удалось сохранить данные в БД\n" + ex);
            }
        }

        private void AddChiefExpert()
        {
            var user = new ChiefExpert();

            user.IdChiefExpert = Convert.ToInt32(idBox.Text);
            user.FullName = FullNameBox.Text;
            user.Sex = sexComboBox.SelectedItem.ToString();
            user.BirthDate = BirthDatePicker.Value.Date;
            user.Phone = PhoneMaskedTextBox.Text;
            user.Email = emailBox.Text;
            user.Passport = passwordBox.Text;

            if (photoLabel.Text != "")
            {
                var filename = Path.GetFileName(photoLabel.Text);
                var newFilename = Path.Combine(Environment.CurrentDirectory, "Главные эксперты", filename);
                File.Copy(photoLabel.Text, newFilename);
                user.Photo = filename;
            }

            user.IdSkill = (skillsComboBox.SelectedItem as Skill).IdSkill;

            try
            {
                var db = new ExamsEntities();
                db.ChiefExpert.Add(user);
                db.SaveChanges();
                MessageBox.Show("Данные успешно сохранены в БД");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Не удалось сохранить данные в БД\n"+ ex);
            }
        }
    }
}
