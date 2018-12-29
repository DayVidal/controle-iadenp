package br.com.mnp.iadenp.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class CongregacaoDao {
	private static final String PERSISTENCE_UNIT = "iadenp";

	public void salvar(Congregacao congregacao) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();

		manager.getTransaction().begin();
		manager.persist(congregacao);
		manager.getTransaction().commit();

		manager.close();
		factory.close();
	}

	public List<Congregacao> listar() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		List<Congregacao> lista = manager.createQuery("FROM Produto ORDER BY localidade").getResultList();
		
		manager.close();
		factory.close();
		
		return lista;
	}

	public List<Congregacao> listar(Congregacao congregacao) {
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;
		
		String localidade = congregacao != null ? congregacao.getLocalidade() : "";
		String area = congregacao != null ? congregacao.getArea() : "";
		
		if (!localidade.equals("") && area.equals("")) {
			query = manager.createQuery("FROM Congregacao WHERE localidade LIKE :paramArea ORDER BY area");
			query.setParameter("paramLocalidade", "%" + localidade + "%");
			
		} else if (localidade.equals("") && !area.equals("")) {
			query = manager.createQuery("FROM Congregacao WHERE area LIKE :paramArea ORDER BY area");
			query.setParameter("paramArea", "%" + area + "%");
			
		} else if (!localidade.equals("") && !area.equals("")) {
			query = manager.createQuery(
					"FROM Congregacao WHERE localidade LIKE :paramLocalidade AND area LIKE :paramArea ORDER BY area");
			query.setParameter("paramLocalidade", "%" + localidade + "%");
			query.setParameter("paramArea", "%" + area + "%");
			
		} else {
			query = manager.createQuery("FROM Congregacao ORDER BY area");
		}
		
		List<Congregacao> lista = query.getResultList();
		
		manager.close();
		factory.close();
		
		return lista;
	}
}
