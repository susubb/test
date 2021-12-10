package main.test;

import main.domain.Student;
import main.service.StudentService;
import main.service.impl.StudentServiceImpl;
import main.util.ServiceFactory;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Test1 {
    public static void main(String[] args) {

        //StudentService ss = new StudentServiceImpl();
        StudentService ss = (StudentService) ServiceFactory.getService(new StudentServiceImpl());


        /*Student s = new Student();
        s.setId("A0006");
        s.setName("cxk");
        s.setAge(23);
        ss.save(s);*/

       /* Student s = ss.getById("A0001");
        System.out.println(s);*/

        List<Student> sList = ss.getAll();
        for (Student s : sList){
            System.out.println(s);
        }
    }
}
