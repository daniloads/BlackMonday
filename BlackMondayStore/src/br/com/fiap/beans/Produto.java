package br.com.fiap.beans;

import java.text.NumberFormat;

import br.com.fiap.control.dao.ProdutoDAO;



public class Produto {
	
	
	private int id;
	private String codigo;
	private String nome;
	private String descricao;
	public void setPromocao(int promocao) {
		this.promocao = promocao;
	}


	private String imagem;
	private String categoria;
	private double preco;
	private int promocao;
	
	

	public Produto(){
		
	}
	
	public Produto(String nome, String codigo, String descricao, String imagem, String categoria, double preco, int promocao){
		this.nome = nome;
		this.codigo = codigo;
		this.descricao = descricao;
		this.imagem = imagem;
		this.categoria = categoria;
		this.preco = preco;	
		this.promocao = promocao;
	}
	
	public Produto(int id, String nome, String codigo, String descricao, String imagem, String categoria, double preco, int promocao){
		this(codigo, nome,descricao,imagem,categoria,preco, promocao);
		this.id = id;
	}

	public int getPromocao() {
		return promocao;
	}



	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public double getPreco() {
		return preco;
	}
	
	public String getPrecoFormatado(){
		NumberFormat formatadorMoeda = NumberFormat.getCurrencyInstance();
		return formatadorMoeda.format(this.preco);
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	
	public String toString(){
        String pId =     " ID       :" + this.id + "\n";
        String pNome =   " Nome     :" + this.nome + "\n";
        String pDesc =   " Descricao:" + this.descricao + "\n";
        String pPreco =  " Preco    :" + this.preco + "\n";
        String pCodigo = " Codigo   :" + this.codigo + "\n";
        String pImage =  " Imagem   :" + this.imagem + "\n";
        String dados = pNome + pId + pCodigo + pImage + pDesc + pPreco + "\n";
        return dados;
	}

	
	public boolean equals(Object objeto){
		if(objeto !=null && objeto instanceof Produto){
			Produto produto = (Produto)objeto;
			return this.id == produto.id;
		}else
			return false;
	}

	
	
	public String getCadastro()throws Exception{
		ProdutoDAO dao = new ProdutoDAO();
		return dao.save(this);
	}
}
