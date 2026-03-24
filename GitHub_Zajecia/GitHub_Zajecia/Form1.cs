namespace GitHub_Zajecia
{
    
    public partial class Form1 : Form
    {
        List<Student> students;
        Student student1;
        Student student2;
        Student student3;
        Student student4;
<<<<<<< HEAD
        Student studentjd;
=======

        Student student10;
>>>>>>> c4e0f94f96b150b3ebb400dd82cd31c1771888da
        public Form1()
        {
            InitializeComponent();
            student1 = new Student("Adam", "Mickiewicz", "A1");
            student2 = new Student("Jan", "Kowalski", "123");
            student3 = new Student("Szymon", "Kepniak", "12311111");
            student5 = new Student("Micha³", "Kurowski", "B2");
            studentjd = new Student("Jakub", "Dabrowski", "XD");
            students = new List<Student>();
            students.Add(student1);
            student4 = new Student("Jan", "Blachak", "12369");
<<<<<<< HEAD
            students.Add(studentjd);
=======
            student10 = new Student("Filip", "Sudak", "A1");
            students.Add(student10);

>>>>>>> c4e0f94f96b150b3ebb400dd82cd31c1771888da
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
