
namespace ExamSystem.Forms
{
    partial class OrganizerForm
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
            this.greetingLable = new System.Windows.Forms.Label();
            this.ShowExamsButton = new System.Windows.Forms.Button();
            this.ShowParticipantsButton = new System.Windows.Forms.Button();
            this.RegisterButton = new System.Windows.Forms.Button();
            this.PhotoBox = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.PhotoBox)).BeginInit();
            this.SuspendLayout();
            // 
            // greetingLable
            // 
            this.greetingLable.AutoSize = true;
            this.greetingLable.Location = new System.Drawing.Point(246, 12);
            this.greetingLable.Name = "greetingLable";
            this.greetingLable.Size = new System.Drawing.Size(35, 13);
            this.greetingLable.TabIndex = 5;
            this.greetingLable.Text = "label1";
            // 
            // ShowExamsButton
            // 
            this.ShowExamsButton.Location = new System.Drawing.Point(12, 211);
            this.ShowExamsButton.Name = "ShowExamsButton";
            this.ShowExamsButton.Size = new System.Drawing.Size(192, 37);
            this.ShowExamsButton.TabIndex = 0;
            this.ShowExamsButton.Text = "Экзамены";
            this.ShowExamsButton.UseVisualStyleBackColor = true;
            this.ShowExamsButton.Click += new System.EventHandler(this.ShowExamsButton_Click);
            // 
            // ShowParticipantsButton
            // 
            this.ShowParticipantsButton.Location = new System.Drawing.Point(12, 254);
            this.ShowParticipantsButton.Name = "ShowParticipantsButton";
            this.ShowParticipantsButton.Size = new System.Drawing.Size(192, 37);
            this.ShowParticipantsButton.TabIndex = 1;
            this.ShowParticipantsButton.Text = "Участники";
            this.ShowParticipantsButton.UseVisualStyleBackColor = true;
            this.ShowParticipantsButton.Click += new System.EventHandler(this.ShowParticipantsButton_Click);
            // 
            // RegisterButton
            // 
            this.RegisterButton.Location = new System.Drawing.Point(12, 297);
            this.RegisterButton.Name = "RegisterButton";
            this.RegisterButton.Size = new System.Drawing.Size(192, 37);
            this.RegisterButton.TabIndex = 2;
            this.RegisterButton.Text = "Регистрация";
            this.RegisterButton.UseVisualStyleBackColor = true;
            this.RegisterButton.Click += new System.EventHandler(this.RegisterButton_Click);
            // 
            // PhotoBox
            // 
            this.PhotoBox.Location = new System.Drawing.Point(12, 12);
            this.PhotoBox.Name = "PhotoBox";
            this.PhotoBox.Size = new System.Drawing.Size(192, 175);
            this.PhotoBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PhotoBox.TabIndex = 4;
            this.PhotoBox.TabStop = false;
            // 
            // OrganizerForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.RegisterButton);
            this.Controls.Add(this.ShowParticipantsButton);
            this.Controls.Add(this.ShowExamsButton);
            this.Controls.Add(this.greetingLable);
            this.Controls.Add(this.PhotoBox);
            this.Name = "OrganizerForm";
            this.Text = "Организатор";
            this.Load += new System.EventHandler(this.OrganizerForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.PhotoBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label greetingLable;
        private System.Windows.Forms.PictureBox PhotoBox;
        private System.Windows.Forms.Button ShowExamsButton;
        private System.Windows.Forms.Button ShowParticipantsButton;
        private System.Windows.Forms.Button RegisterButton;
    }
}