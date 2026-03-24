namespace GitHub_Zajecia
{
    public partial class Form1 : Form
    {
        List<Student> students;
        Student student1;
        Student student2;
        public Form1()
        {
            InitializeComponent();
            student1 = new Student("Adam", "Mickiewicz", "A1");
            student2 = new Student("Jan", "Kowalski", "123");
            student10 = new Student("Micha³", "Kurowski", "B2");
            students = new List<Student>();
            students.Add(student1);
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
