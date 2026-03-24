namespace GitHub_Zajecia
{
    public partial class Form1 : Form
    {
        List<Student> students = new List<Student>();

        Student student1;
        public Form1()
        {
            InitializeComponent();
            student1 = new Student("Jan", "Kowalski", "123");
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
