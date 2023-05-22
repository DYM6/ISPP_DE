
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
            this.PhotoBox = new System.Windows.Forms.PictureBox();
            this.greetingLable = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.PhotoBox)).BeginInit();
            this.SuspendLayout();
            // 
            // PhotoBox
            // 
            this.PhotoBox.Location = new System.Drawing.Point(35, 37);
            this.PhotoBox.Name = "PhotoBox";
            this.PhotoBox.Size = new System.Drawing.Size(192, 175);
            this.PhotoBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PhotoBox.TabIndex = 0;
            this.PhotoBox.TabStop = false;
            // 
            // greetingLable
            // 
            this.greetingLable.AutoSize = true;
            this.greetingLable.Location = new System.Drawing.Point(281, 54);
            this.greetingLable.Name = "greetingLable";
            this.greetingLable.Size = new System.Drawing.Size(35, 13);
            this.greetingLable.TabIndex = 1;
            this.greetingLable.Text = "label1";
            // 
            // ChiefExpertForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.greetingLable);
            this.Controls.Add(this.PhotoBox);
            this.Name = "ChiefExpertForm";
            this.Text = "ChiefExpertForm";
            ((System.ComponentModel.ISupportInitialize)(this.PhotoBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox PhotoBox;
        private System.Windows.Forms.Label greetingLable;
    }
}