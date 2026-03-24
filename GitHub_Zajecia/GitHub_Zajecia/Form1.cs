namespace GitHub_Zajecia
{
    public partial class Form1 : Form
    {
        List<Student> students;
        Student student1;
        public Form1()
        {
            InitializeComponent();
            student1 = new Student("Adam", "Mickiewicz", "A1");
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
