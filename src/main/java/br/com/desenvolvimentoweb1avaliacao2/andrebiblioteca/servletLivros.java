package br.com.desenvolvimentoweb1avaliacao2.andrebiblioteca;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.desenvolvimentoweb1avaliacao2.Livro;
import br.com.desenvolvimentoweb1avaliacao2.Biblioteca;

@WebServlet("/servletLivros")
public class servletLivros extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
	private  List < Livro > livros = new  ArrayList < Livro >();
    public servletLivros() {
        super();
       
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("list", livros);

		RequestDispatcher dispatcher = request.getRequestDispatcher("JSP/listagem_de_livros.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String titulo = request.getParameter("titulo");
		String autor = request.getParameter("autor");
		String id = request.getParameter("id");
		Livro livro = new Livro();
		livro.setTitulo(titulo);
		livro.setAutor(autor);
		livro.setId(id);
		livros.add(livro);
		request.setAttribute("lista", livros);
		
		doGet(request, response);
	}

}
