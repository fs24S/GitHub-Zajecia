using System;
using System.Collections.Generic;
using System.Text;

namespace GitHub_Zajecia
{
    public class Student
    {
        public string Imie { get; set; }
        public string Nazwisko { get; set; }
        public string NrGrupy { get; set; }

        public Student(string imie, string nazwisko, string nrGrupy)
        {
            Imie = imie;
            Nazwisko= nazwisko;
            NrGrupy = nrGrupy;
        }

        public override string ToString()
        {
            return $"{Imie} {Nazwisko} - grupa: {NrGrupy}";
        }
    }
}
