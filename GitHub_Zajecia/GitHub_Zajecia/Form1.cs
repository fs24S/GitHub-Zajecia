namespace GitHub_Zajecia
{
    public partial class Form1 : Form
    {
        List<Student> students;
        Student student1;
        Student student2;
        Student student3;
        Student student4;

        Student student10;

        Student student5;
        public Form1()
        {
            InitializeComponent();
            student1 = new Student("Adam", "Mickiewicz", "A1");
            student2 = new Student("Jan", "Kowalski", "123");
            student3 = new Student("Szymon", "Kepniak", "12311111");
            student5 = new Student("Micha³", "Kurowski", "B2");
            student2 = new Student("Jan", "Kowalski", "123"); 
            student4 = new Student("Pawel", "Sobolewski", "321");
            students = new List<Student>();
            students.Add(student1);
            student2 = new Student("Jan", "Kowalski", "123");
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
