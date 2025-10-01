public class App {
    public static void main(String[] args) {


        //sin parametros
        Estudiante e1 = new Estudiante();
        e1.setNombre("Carlos");
        e1.setApellido("Gonzalez");
        e1.setEdad(23);
        e1.setCarrera("Programador");


        //con parametros
        Estudiante e2 = new Estudiante("Agustin", "Pereyra", "22", "Programador", 0);
        Estudiante e3 = new Estudiante("Berenice", "Gongora", "21", "Programador", 0);


        //Materias
        Materia mat1 = new Materia("Matemática", "MAT101", 4, 9);
        Materia mat2 = new Materia("Programación", "PROG101", 6, 8);

        e1.agregarMateria(mat1);
        e1.agregarMateria(mat2);
        e1.calcularPromedio();

        e2.agregarMateria(mat2);
        e2.calcularPromedio();

        e3.agregarMateria(mat1);
        e3.calcularPromedio();

        Estudiante[] lista = {e1, e2, e3};
        for(Estudiante e : lista) {
            System.out.println(e.getNombre() + " - Promedio: " + e.getPromedio());
        }

        //carrera
        Carrera carrera = new Carrera("Tec. en sistemas");
        carrera.agregarEstudiante(e1);
        carrera.agregarEstudiante(e2);
        carrera.agregarEstudiante(e3);
        System.out.println("Estudiantes en la carrera:");
        carrera.listarEstudiantes();

    }


}
