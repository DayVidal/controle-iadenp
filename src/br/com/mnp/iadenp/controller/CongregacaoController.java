package br.com.mnp.iadenp.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.mnp.iadenp.model.Congregacao;
import br.com.mnp.iadenp.model.CongregacaoDao;
import br.com.mnp.iadenp.util.Util;

@Controller
public class CongregacaoController {

	@RequestMapping("/congregacao/add")
	public String adicionarCongregacao() {
		return "congregacao/incluirCongregacao";
	}

	@RequestMapping("/congregacao/save")
	public String save(Congregacao congregacao, @RequestParam("file") MultipartFile imagem, Model model) {

		if (Util.fazerUploadImagem(imagem)) {
			congregacao.setImagem(Util.obterMomentoAtual() + " - " + imagem.getOriginalFilename());
		}

		CongregacaoDao dao = new CongregacaoDao();
		dao.salvar(congregacao);

		model.addAttribute("mensagem","Congrega��o Criada com Sucesso");
		return "congregacao/incluirCongregacao";
	}

	@RequestMapping("/congregacao/list")
	public String listarCongregacao(Model model) {

		CongregacaoDao dao = new CongregacaoDao();
		List<Congregacao> listaCongregacao = dao.listar();
		model.addAttribute("listaCongregacao", listaCongregacao);

		return "/congregacao/listarCongregacao";
	}
	
	@RequestMapping("/congregacao/filter")
	public String filtrarProduto(Congregacao congregacao, Model model) {

		CongregacaoDao dao = new CongregacaoDao();
		List<Congregacao> listaCongregacao = dao.listar(congregacao);
		model.addAttribute("listaCongregacao", listaCongregacao);

		return "/congregacao/listarCongregacao";
	}
}
