
namespace ExamSystem.Forms
{
    partial class ChiefExpertForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.PhotoBox = new System.Windows.Forms.PictureBox();
            this.greetingLable = new System.Windows.Forms.Label();
            this.examsDataGridView = new System.Windows.Forms.DataGridView();
            this.examBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.idExamDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.idSkillDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.PhotoBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.examsDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.examBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // PhotoBox
            // 
            this.PhotoBox.Location = new System.Drawing.Point(12, 12);
            this.PhotoBox.Name = "PhotoBox";
            this.PhotoBox.Size = new System.Drawing.Size(192, 175);
            this.PhotoBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PhotoBox.TabIndex = 0;
            this.PhotoBox.TabStop = false;
            // 
            // greetingLable
            // 
            this.greetingLable.AutoSize = true;
            this.greetingLable.Location = new System.Drawing.Point(258, 29);
            this.greetingLable.Name = "greetingLable";
            this.greetingLable.Size = new System.Drawing.Size(73, 13);
            this.greetingLable.TabIndex = 1;
            this.greetingLable.Text = "Приветствие";
            // 
            // examsDataGridView
            // 
            this.examsDataGridView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.examsDataGridView.AutoGenerateColumns = false;
            this.examsDataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.examsDataGridView.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.examsDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.examsDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idExamDataGridViewTextBoxColumn,
            this.idSkillDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.dateDataGridViewTextBoxColumn});
            this.examsDataGridView.DataSource = this.examBindingSource;
            this.examsDataGridView.Location = new System.Drawing.Point(12, 206);
            this.examsDataGridView.Name = "examsDataGridView";
            this.examsDataGridView.ReadOnly = true;
            this.examsDataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.examsDataGridView.Size = new System.Drawing.Size(776, 243);
            this.examsDataGridView.TabIndex = 2;
            // 
            // examBindingSource
            // 
            this.examBindingSource.DataSource = typeof(ExamSystem.Models.Exam);
            // 
            // idExamDataGridViewTextBoxColumn
            // 
            this.idExamDataGridViewTextBoxColumn.DataPropertyName = "IdExam";
            this.idExamDataGridViewTextBoxColumn.HeaderText = "Код экзамена";
            this.idExamDataGridViewTextBoxColumn.Name = "idExamDataGridViewTextBoxColumn";
            this.idExamDataGridViewTextBoxColumn.ReadOnly = true;
            this.idExamDataGridViewTextBoxColumn.Width = 96;
            // 
            // idSkillDataGridViewTextBoxColumn
            // 
            this.idSkillDataGridViewTextBoxColumn.DataPropertyName = "IdSkill";
            this.idSkillDataGridViewTextBoxColumn.HeaderText = "Код компетенции";
            this.idSkillDataGridViewTextBoxColumn.Name = "idSkillDataGridViewTextBoxColumn";
            this.idSkillDataGridViewTextBoxColumn.ReadOnly = true;
            this.idSkillDataGridViewTextBoxColumn.Width = 111;
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "Название";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            this.nameDataGridViewTextBoxColumn.ReadOnly = true;
            this.nameDataGridViewTextBoxColumn.Width = 82;
            // 
            // dateDataGridViewTextBoxColumn
            // 
            this.dateDataGridViewTextBoxColumn.DataPropertyName = "Date";
            this.dateDataGridViewTextBoxColumn.HeaderText = "Дата экзамена";
            this.dateDataGridViewTextBoxColumn.Name = "dateDataGridViewTextBoxColumn";
            this.dateDataGridViewTextBoxColumn.ReadOnly = true;
            this.dateDataGridViewTextBoxColumn.Width = 102;
            // 
            // ChiefExpertForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 461);
            this.Controls.Add(this.examsDataGridView);
            this.Controls.Add(this.greetingLable);
            this.Controls.Add(this.PhotoBox);
            this.MinimumSize = new System.Drawing.Size(800, 500);
            this.Name = "ChiefExpertForm";
            this.Text = "Главный эксперт";
            this.Load += new System.EventHandler(this.ChiefExpertForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.PhotoBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.examsDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.examBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox PhotoBox;
        private System.Windows.Forms.Label greetingLable;
        private System.Windows.Forms.DataGridView examsDataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn idExamDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn idSkillDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dateDataGridViewTextBoxColumn;
        private System.Windows.Forms.BindingSource examBindingSource;
    }
}