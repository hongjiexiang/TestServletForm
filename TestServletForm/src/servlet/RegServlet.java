package servlet;

import eneity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "RegServlet")
public class RegServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //解决中文乱码
        request.setCharacterEncoding("utf-8");
        Users u=new Users();
        String username,password,email,sex,introduce,isAccept;
        Date birthday;
        String[] fav;
        //设置日期格式
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        try {
            //获取注册信息
            username=request.getParameter("username");
            password=request.getParameter("password");
            sex=request.getParameter("sex");
            email=request.getParameter("email");
            introduce=request.getParameter("introduce");
            birthday=sdf.parse(request.getParameter("birthday"));
            fav=request.getParameterValues("fav");
            if (request.getParameterValues("isAccept")!=null){
                isAccept=request.getParameter("isAccept");
            }
            else {
                isAccept="false";
            }

            u.setUsername(username);
            u.setPassword(password);
            u.setSex(sex);
            u.setEmail(email);
            u.setBirthday(birthday);
            u.setFav(fav);
            if (isAccept.equals("true")){
                u.setFlag(true);
            }else {
                u.setFlag(false);
            }
            u.setIntroduce(introduce);

            //把注册成功的用户对象保存在session中
            request.getSession().setAttribute("regUser",u);
            //跳转到注册成功页面
            request.getRequestDispatcher("../userinfo.jsp").forward(request,response);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
