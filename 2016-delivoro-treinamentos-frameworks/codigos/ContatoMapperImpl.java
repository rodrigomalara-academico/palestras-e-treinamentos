package training.mapper1;

import training.model.EntidadeContato;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class ContatoMapperImpl implements ContatoMapper {
    private final Map<Integer, EntidadeContato> dados = new HashMap<>();

    @Override
    public Collection<EntidadeContato> list() {
        return dados.values();
    }

    @Override
    public EntidadeContato find(int id) {
        return dados.get(id);
    }

    @Override
    public void insert(EntidadeContato contato) {
        dados.put(contato.getId(), contato);
    }

    @Override
    public void update(EntidadeContato contato) {
        dados.put(contato.getId(), contato);
    }

    @Override
    public void delete(int id) {
        dados.remove(id);
    }
}
