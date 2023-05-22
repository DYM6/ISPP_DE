namespace ExamSystem
{
    partial class ExamForm
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.examBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.SkillsBox = new System.Windows.Forms.ComboBox();
            this.AuthorizeButton = new System.Windows.Forms.Button();
            this.ExamsDatePicker = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.examBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.DataSource = this.examBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(12, 114);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(776, 324);
            this.dataGridView1.TabIndex = 0;
            // 
            // SkillsBox
            // 
            this.SkillsBox.FormattingEnabled = true;
            this.SkillsBox.Location = new System.Drawing.Point(12, 78);
            this.SkillsBox.Name = "SkillsBox";
            this.SkillsBox.Size = new System.Drawing.Size(545, 21);
            this.SkillsBox.TabIndex = 1;
            // 
            // AuthorizeButton
            // 
            this.AuthorizeButton.Location = new System.Drawing.Point(12, 28);
            this.AuthorizeButton.Name = "AuthorizeButton";
            this.AuthorizeButton.Size = new System.Drawing.Size(169, 23);
            this.AuthorizeButton.TabIndex = 2;
            this.AuthorizeButton.Text = "Авторизация";
            this.AuthorizeButton.UseVisualStyleBackColor = true;
            this.AuthorizeButton.Click += new System.EventHandler(this.AuthorizeButton_Click);
            // 
            // ExamsDatePicker
            // 
            this.ExamsDatePicker.Location = new System.Drawing.Point(588, 78);
            this.ExamsDatePicker.Name = "ExamsDatePicker";
            this.ExamsDatePicker.Size = new System.Drawing.Size(200, 20);
            this.ExamsDatePicker.TabIndex = 3;
            // 
            // ExamForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.ExamsDatePicker);
            this.Controls.Add(this.AuthorizeButton);
            this.Controls.Add(this.SkillsBox);
            this.Controls.Add(this.dataGridView1);
            this.Name = "ExamForm";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.ExamForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.examBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn idExamDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn idSkillDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn skillDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn participantDataGridViewTextBoxColumn;
        private System.Windows.Forms.BindingSource examBindingSource;
        private System.Windows.Forms.ComboBox SkillsBox;
        private System.Windows.Forms.Button AuthorizeButton;
        private System.Windows.Forms.DateTimePicker ExamsDatePicker;
    }
}

