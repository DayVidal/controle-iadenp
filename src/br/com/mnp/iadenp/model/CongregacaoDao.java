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
		List<Congregacao> lista = manager.createQuery("FROM Congregacao ORDER BY localidade").getResultList();
		
		manager.close();
		factory.close();
		
		return lista;
	}

	
}
