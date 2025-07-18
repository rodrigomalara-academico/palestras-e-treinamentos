package training.mapper.impl;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import training.model.Contato;

public class ContatoMapperImplTest {

    ContatoMapperImpl contatoMapper = new ContatoMapperImpl();

    @Test
    public void testInsert() {
        Contato contato = new Contato();
        contato.setId(1);
        contato.setNome("Joao");
        contatoMapper.insert(contato);
        assertTrue(contatoMapper.dados.containsKey(1));
    }

    @Test
    public void testUpdate() {
        assertTrue(true); // A ser implementado
    }

    @Test
    public void testFind() {
        assertTrue(true); // A ser implementado
    }

    @Test
    public void testDelete() {
        assertTrue(true); // A ser implementado
    }

    @Test
    public void testList() {
        assertTrue(true); // A ser implementado
    }
}
