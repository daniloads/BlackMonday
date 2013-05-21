package br.com.fiap.util;

public class BlackMondayException extends Exception{
	

	private static final long serialVersionUID = 1L;

	public BlackMondayException(String mensagem, Exception e) {
        super(mensagem, e);
    }

    public BlackMondayException(String mensagem) {
        super(mensagem);
    }
}
