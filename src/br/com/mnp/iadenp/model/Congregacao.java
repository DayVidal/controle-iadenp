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
	private String criancas;
	
	 @Column
	private String vocal;
	
	 @Column
	private String campanha;
	
	 @Column
	private String informacoes;
	
	 @Column
	private String contato;
	
	 @Column
	private String diasdeculto;
	
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

	public String getCriancas() {
		return criancas;
	}

	public void setCriancas(String criancas) {
		this.criancas = criancas;
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

	public String getInformacoes() {
		return informacoes;
	}

	public void setInformacoes(String informacoes) {
		this.informacoes = informacoes;
	}

	public String getContato() {
		return contato;
	}

	public void setContato(String contato) {
		this.contato = contato;
	}

	public String getDiasdeculto() {
		return diasdeculto;
	}

	public void setDiasdeculto(String diasdeculto) {
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
