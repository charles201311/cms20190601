/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-05-22 05:50:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>CMS后台管理系统</title>\r\n");
      out.write("\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("\tcontent=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"/resource/css/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("<!-- Custom styles for this template-->\r\n");
      out.write("<link href=\"/resource/css/sb-admin.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\t<body id=\"page-top\">\r\n");
      out.write("\t<!-- 后台管理系统顶部 -->\r\n");
      out.write(" \t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "top.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write(" \t\t<!-- 后台管理系统左部菜单 -->\r\n");
      out.write(" \t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "left.jsp", out, false);
      out.write("\r\n");
      out.write("      <!-- 中间内容显示区域 -->\r\n");
      out.write("      <div id=\"content-wrapper\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("          <!-- Breadcrumbs-->\r\n");
      out.write("          <ol class=\"breadcrumb\">\r\n");
      out.write("            <li class=\"breadcrumb-item\">\r\n");
      out.write("              <a href=\"#\">后台首页</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"breadcrumb-item active\">概览</li>\r\n");
      out.write("          </ol>\r\n");
      out.write("\r\n");
      out.write("          <!-- Icon Cards-->\r\n");
      out.write("          <br/>\r\n");
      out.write("          <br/>\r\n");
      out.write("          <h1 align=\"center\">欢迎光临后台管理系统</h1>\r\n");
      out.write("          <br/>\r\n");
      out.write("          <br/>\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <div class=\"col-xl-3 col-sm-6 mb-3\">\r\n");
      out.write("              <div class=\"card text-white bg-primary o-hidden h-100\">\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                  <div class=\"card-body-icon\">\r\n");
      out.write("                    <i class=\"fas fa-fw fa-comments\"></i>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"mr-5\">26 篇文章!</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a class=\"card-footer text-white clearfix small z-1\" href=\"#\">\r\n");
      out.write("                  <span class=\"float-left\">View Details</span>\r\n");
      out.write("                  <span class=\"float-right\">\r\n");
      out.write("                    <i class=\"fas fa-angle-right\"></i>\r\n");
      out.write("                  </span>\r\n");
      out.write("                </a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"col-xl-3 col-sm-6 mb-3\">\r\n");
      out.write("              <div class=\"card text-white bg-warning o-hidden h-100\">\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                  <div class=\"card-body-icon\">\r\n");
      out.write("                    <i class=\"fas fa-fw fa-list\"></i>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"mr-5\">11 新用户!</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a class=\"card-footer text-white clearfix small z-1\" href=\"#\">\r\n");
      out.write("                  <span class=\"float-left\">View Details</span>\r\n");
      out.write("                  <span class=\"float-right\">\r\n");
      out.write("                    <i class=\"fas fa-angle-right\"></i>\r\n");
      out.write("                  </span>\r\n");
      out.write("                </a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            <div class=\"col-xl-3 col-sm-6 mb-3\">\r\n");
      out.write("              <div class=\"card text-white bg-success o-hidden h-100\">\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                  <div class=\"card-body-icon\">\r\n");
      out.write("                    <i class=\"fas fa-fw fa-shopping-cart\"></i>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"mr-5\">6 个频道!</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a class=\"card-footer text-white clearfix small z-1\" href=\"#\">\r\n");
      out.write("                  <span class=\"float-left\">View Details</span>\r\n");
      out.write("                  <span class=\"float-right\">\r\n");
      out.write("                    <i class=\"fas fa-angle-right\"></i>\r\n");
      out.write("                  </span>\r\n");
      out.write("                </a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-xl-3 col-sm-6 mb-3\">\r\n");
      out.write("              <div class=\"card text-white bg-danger o-hidden h-100\">\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("                  <div class=\"card-body-icon\">\r\n");
      out.write("                    <i class=\"fas fa-fw fa-life-ring\"></i>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"mr-5\">20 个分类!</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <a class=\"card-footer text-white clearfix small z-1\" href=\"#\">\r\n");
      out.write("                  <span class=\"float-left\">View Details</span>\r\n");
      out.write("                  <span class=\"float-right\">\r\n");
      out.write("                    <i class=\"fas fa-angle-right\"></i>\r\n");
      out.write("                  </span>\r\n");
      out.write("                </a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.container-fluid -->\r\n");
      out.write("\r\n");
      out.write("        <!-- Sticky Footer -->\r\n");
      out.write("        <footer class=\"sticky-footer\">\r\n");
      out.write("          <div class=\"container my-auto\">\r\n");
      out.write("            <div class=\"copyright text-center my-auto\">\r\n");
      out.write("              <span>Copyright Â© Your Website 2019</span>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </footer>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- /.content-wrapper -->\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /#wrapper -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Scroll to Top Button-->\r\n");
      out.write("    <a class=\"scroll-to-top rounded\" href=\"#page-top\">\r\n");
      out.write("      <i class=\"fas fa-angle-up\"></i>\r\n");
      out.write("    </a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<script\r\n");
      out.write("\t\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/resource/js/jquery-3.2.1.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"/resource/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("\t$(function () {\r\n");
      out.write("       $('ul li').click(function () {\r\n");
      out.write("    \t   //获取当前默认高亮的属性\r\n");
      out.write("         var li = $('ul li.active');\r\n");
      out.write("    \t   //移除目前高亮的样式\r\n");
      out.write("            li.removeClass('active');\r\n");
      out.write("    \t   //为当前点击行添加高亮的样式\r\n");
      out.write("            $(this).addClass('active');\r\n");
      out.write("    \t   \r\n");
      out.write("        });  \r\n");
      out.write("       <!--当点击左侧菜单时-->\r\n");
      out.write("        $('.nav-link').click(function (e) {\r\n");
      out.write("        \t  //获取点击的的url\r\n");
      out.write("            var url = $(this).attr('data');\r\n");
      out.write("        \t // alert(url)\r\n");
      out.write("           // console.log(url);\r\n");
      out.write("           //在中间区域显示地址的内容\r\n");
      out.write("            $('#content-wrapper').load(url);\r\n");
      out.write("        });\r\n");
      out.write("        \r\n");
      out.write("      \r\n");
      out.write("    })\r\n");
      out.write("    \r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
