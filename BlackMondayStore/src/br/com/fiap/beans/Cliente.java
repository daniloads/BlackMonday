package br.com.fiap.beans;

public class Cliente {
	
	private String login;
	private String senha;
    private String nome;
    private String cpf;
    private String telefone;
    private String email;


    public Cliente() {
        super();
    }

    public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Cliente(String nome, String cpf, String telefone, String email) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public String getEmail() {
        return email;
    }

    public String getNome() {
        return nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setCpf(String string) {
        cpf = string;
    }

    public void setEmail(String string) {
        email = string;
    }

    public void setNome(String string) {
        nome = string;
    }

    public void setTelefone(String string) {
        telefone = string;
    }
	
}
