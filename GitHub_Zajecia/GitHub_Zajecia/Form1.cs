namespace GitHub_Zajecia
{
    public partial class Form1 : Form
    {

        Student student1;

        List<Student> students = new List<Student>();
        public Form1()
        {
            InitializeComponent();


            student1 = new Student("Ambroży", "Trytytka", "pierwsza");
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
