package main.test;

import main.dao.StudentDao;
import main.domain.Student;
import main.service.StudentService;
import main.service.impl.StudentServiceImpl;
import main.util.ServiceFactory;
import main.util.SqlSessionUtil;
import main.vo.StudentAndClassroomVo;

import javax.sql.rowset.serial.SerialStruct;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Test2 {
    public static void main(String[] args) {
        StudentDao studentDao = SqlSessionUtil.getSession().getMapper(StudentDao.class);

        /*Student s = studentDao.select1("A0001");
        System.out.println(s);*/

        /*List<Student> sList = studentDao.select2(23);
        for (Student s : sList){
            System.out.println(s);
        }*/
        /*List<Student> sList = studentDao.select3("wyf",23);
        for (Student s : sList){
            System.out.println(s);
        }*/

        /*Student s = new Student();
        s.setName("wyf");
        s.setAge(23);
        List<Student> sList = studentDao.select4(s);
        for (Student s1 : sList){
            System.out.println(s1);
        }*/

        /*Map<String,Object> map = new HashMap<>();
        map.put("name","wyf");
        map.put("age",23);
        List<Student> sList = studentDao.select5(map);
        for (Student s1 : sList){
            System.out.println(s1);
        }*/

        /*List<Student> sList = studentDao.select8("%z%");
        for (Student s1:sList){
            System.out.println(s1);
        }*/

        /*List<Student> sList = studentDao.select9("z");
        for (Student s1:sList){
            System.out.println(s1);
        }*/

        /*int count = studentDao.select10();
        System.out.println(count);*/

        /*List<Map<String,Object>> mapList = studentDao.select14();
        for (Map<String,Object> map:mapList){
            Set<String> set = map.keySet();
            for (String key: set){
                System.out.println("1:"+key);
                System.out.println("2:"+map.get(key));
            }
            System.out.println("=====================");
        }*/

        /*Student s = new Student();
        //s.setName("y");
        s.setAddress("a");
        List<Student> sList = studentDao.select17(s);
        for (Student s1:sList){
            System.out.println(s1);
        }*/

        /*String strArr[] = {"A0001","A0002","A0003"};
        List<Student> sList = studentDao.select18(strArr);
        for (Student s1:sList){
            System.out.println(s1);
        }*/

        /*Student s = studentDao.select19("A0001");
        System.out.println(s);*/

        /*List<Map<String,Object>> mapList = studentDao.select20();
        for (Map<String,Object> map:mapList){
            Set<String> set = map.keySet();
            for (String key:set){
                System.out.println("key: "+key);
                System.out.println("value: "+map.get(key));
            }
            System.out.println("=======================");
        }*/

        /*List<StudentAndClassroomVo> voList = studentDao.select21();
        for (StudentAndClassroomVo vo:voList){
            System.out.println(vo);
        }*/

        List<StudentAndClassroomVo> voList = studentDao.select22("z");
        for (StudentAndClassroomVo vo:voList){
            System.out.println(vo);
        }




    }
}
