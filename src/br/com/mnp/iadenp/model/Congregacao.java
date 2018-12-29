package br.com.mnp.iadenp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "congregacao")
public class Congregacao {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id ;
	
	@Column
	private String localidade;
	
	 @Column
	private String area ;
	
	 @Column
	private String endereco;
	
	 @Column
	private String comissao;
	
	 @Column
	private String mocidade;
	
	 @Column
	private String crian�as;
	
	 @Column
	private String vocal;
	
	 @Column
	private String campanha;
	
	 @Column
	private String informa��es;
	
	 @Column
	private String contato;
	
	 @Column
	private int diasdeculto;
	
	 @Column
	private String eventos;
	
	 @Column
	private String responsavelLocal;
	
	 @Column
	private String imagem;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLocalidade() {
		return localidade;
	}
	public void setLocalidade(String localidade) {
		this.localidade = localidade;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getComissao() {
		return comissao;
	}
	public void setComissao(String comissao) {
		this.comissao = comissao;
	}
	public String getMocidade() {
		return mocidade;
	}
	public void setMocidade(String mocidade) {
		this.mocidade = mocidade;
	}
	public String getCrian�as() {
		return crian�as;
	}
	public void setCrian�as(String crian�as) {
		this.crian�as = crian�as;
	}
	public String getVocal() {
		return vocal;
	}
	public void setVocal(String vocal) {
		this.vocal = vocal;
	}
	public String getCampanha() {
		return campanha;
	}
	public void setCampanha(String campanha) {
		this.campanha = campanha;
	}
	public String getInforma��es() {
		return informa��es;
	}
	public void setInforma��es(String informa��es) {
		this.informa��es = informa��es;
	}
	public String getContato() {
		return contato;
	}
	public void setContato(String contato) {
		this.contato = contato;
	}
	public int getDiasdeculto() {
		return diasdeculto;
	}
	public void setDiasdeculto(int diasdeculto) {
		this.diasdeculto = diasdeculto;
	}
	public String getEventos() {
		return eventos;
	}
	public void setEventos(String eventos) {
		this.eventos = eventos;
	}
	public String getResponsavelLocal() {
		return responsavelLocal;
	}
	public void setResponsavelLocal(String responsavelLocal) {
		this.responsavelLocal = responsavelLocal;
	}
	public String getImagem() {
		return imagem;
	} 
	
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	
	
	
	
	
	
	
	
}
