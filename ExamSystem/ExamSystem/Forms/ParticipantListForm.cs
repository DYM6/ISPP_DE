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
    public partial class ParticipantListForm : Form
    {
        public ParticipantListForm()
        {
            InitializeComponent();

            var participants = new ExamsEntities().Participant.ToList();
            MembersDataGridView.DataSource = participants;
            MembersDataGridView.AutoGenerateColumns = false;
        }
    }
}
