namespace GitHub_Zajecia
{
    
    public partial class Form1 : Form
    {
        List<Student> students;
        Student student1;
        Student student2;
        Student student4;
        Student studentjd;
        public Form1()
        {
            InitializeComponent();
            student1 = new Student("Adam", "Mickiewicz", "A1");
            student2 = new Student("Jan", "Kowalski", "123");
            students = new List<Student>();
            students.Add(student1);
            student4 = new Student("Jan", "Blachak", "12369");
            students.Add(studentjd);
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
