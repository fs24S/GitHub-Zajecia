using System;
using System.Collections.Generic;
using System.Windows.Forms;
using WindowsFormsApp1;

namespace GitHub_Zajecia
{
    public partial class Form1 : Form
    {
        
        List<Student> students;
        Student student1;
        Student student2;
        Student student3;
        Student student4;
        Student student5;
        Student student7;
        Student student8;
        Student student10;
        Student studentjd;

        public Form1()
        {
            InitializeComponent();

            
            student1 = new Student("Adam", "Mickiewicz", "A1");
            student2 = new Student("Jan", "Kowalski", "123");
            student7 = new Student("Pawel", "Sobolewski", "321");
            student3 = new Student("Szymon", "Kepniak", "12311111");
            student5 = new Student("Michal", "Kurowski", "B2");
            studentjd = new Student("Jakub", "Dabrowski", "XD");
            student8 = new Student("Michal", "Kurowski", "B2");
            student4 = new Student("Alek", "Szopinski", "12369");
            student10 = new Student("Filip", "Sudak", "A1");


            students.Add(student1);
            students.Add(student2);
            students.Add(student3);
            students.Add(student4);
            students.Add(student5);
            students.Add(student7);
            students.Add(student8);
            students.Add(student10);
            students.Add(studentjd);

            students = new List<Student>();

            DB baza = new DB();
            var dane = baza.PobierzDaneZTabeli("dbo.Montaz");

            dataGridView1.DataSource = dane;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            foreach (var s in students)
            {
                MessageBox.Show(s.ToString());
            }
        }
    }
}
