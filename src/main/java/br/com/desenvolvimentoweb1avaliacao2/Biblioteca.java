package br.com.desenvolvimentoweb1avaliacao2;

import java.util.ArrayList;
import java.util.List;

public class Biblioteca {
	
	ArrayList<Livro> livros;
	
	public Biblioteca() {
		if (livros == null || livros.equals("null")) {
			this.livros = new ArrayList<Livro>();
		}
	}
	
	public void registro(Livro livro) {
		
		livros.add(livro);
		
	}
	
	public List<Livro> listarLivro() {
		List<Livro> nome = new ArrayList<>();
		try {
			
			for (Livro livro : livros) {
				nome.add(livro);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nome;
	}
	
	public List<Livro> getLivros() {
		return livros;
	}
}
