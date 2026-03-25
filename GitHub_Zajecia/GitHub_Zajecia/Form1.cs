using System;
using System.Collections.Generic;
using System.Windows.Forms;
using WindowsFormsApp1;

namespace GitHub_Zajecia
{
    public partial class Form1 : Form
    {
        // 1. Twoje stare zmienne i lista studentów
        List<Student> students;
        Student student1;
        Student student2;
        Student student3;
        Student student4;
        Student studentjd;
        Student student7;
        Student student5;
        Student student8;
        Student student10;

        // G³ówny konstruktor okienka
        public Form1()
        {
            InitializeComponent();

            // 2. Twój stary kod z dodawaniem studentów
            student1 = new Student("Adam", "Mickiewicz", "A1");
            student2 = new Student("Jan", "Kowalski", "123");
            student7 = new Student("Pawel", "Sobolewski", "321");

            students = new List<Student>();
            students.Add(student1);

            student2 = new Student("Jan", "Kowalski", "123");
            student3 = new Student("Szymon", "Kepniak", "12311111");
            student5 = new Student("Michal", "Kurowski", "B2");
            studentjd = new Student("Jakub", "Dabrowski", "XD");
            student8 = new Student("Michal", "Kurowski", "B2");

            students = new List<Student>();
            students.Add(student1);
            students.Add(student3);
            students.Add(student8);
            students.Add(student7);

            student4 = new Student("Alek", "Szopinski", "12369");
            students.Add(student4);

            student10 = new Student("Filip", "Sudak", "A1");
            students.Add(student10);
            students.Add(student5);
            students.Add(studentjd);


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
