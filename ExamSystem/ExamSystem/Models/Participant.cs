//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExamSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.Drawing;
    using System.IO;

    public partial class Participant
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Participant()
        {
            this.Exam = new HashSet<Exam>();
        }
    
        public int IdParticipant { get; set; }
        public string FullName { get; set; }
        public string Sex { get; set; }
        public System.DateTime BirthDate { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Passport { get; set; }
        public string Photo { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Exam> Exam { get; set; }

        public Image PhotoImage
        {
            get
            {
                var filename = Path.Combine(Environment.CurrentDirectory, "Участники", Photo);

                if (File.Exists(filename))
                {
                    return Image.FromFile(filename);
                }
                return null;
            }
        }
    }
}
