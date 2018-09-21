package Car_tp1.Ftp;
/**
 * Classe pour utiliser l'objet fichier 
 * @author shaqianqian
 * @version 1.0
 */
public class Fichier {
	String name;
	int deep;

	public Fichier(String name, int deep) {
		super();
		this.name = name;
		this.deep = deep;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDeep() {
		return deep;
	}

	public void setDeep(int deep) {
		this.deep = deep;
	}

}
