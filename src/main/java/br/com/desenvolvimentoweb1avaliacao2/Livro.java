package br.com.desenvolvimentoweb1avaliacao2;

public class Livro {
	
	private String id;
	private String titulo;
	private String autor;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	
	@Override
	public String toString() {
		return "Livro [ID=" + id + ", Titulo=" + titulo + ", Autor=" + autor + "]";
	}

}
