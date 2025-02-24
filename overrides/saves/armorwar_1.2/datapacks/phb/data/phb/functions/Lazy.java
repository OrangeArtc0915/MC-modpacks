import java.io.*;
import java.util.*;

public class Lazy {
    public static void main(String[] args) throws Exception {
        new Node(Node.power, null, 0);
    }
}
class Node {
	static int power = 3, width = (int)(Math.pow(Node.power, power));
	static {
		new File(".\\enum").mkdirs();
	}
	Node[] childs = null;
	Node parent = null;
	int height = 0, index = 0;
	Node(int hf, Node p, int idf) throws Exception {
		height = hf;
		parent = p;
		index = idf;
		if (hf > 0) {
			childs = new Node[3];
			for (int i = 0; i < childs.length; i++) {
				childs[i] = new Node(hf - 1, this, i);
			}
		}
		FileWriter fw = new FileWriter(String.format(".\\enum\\%d_%d.mcfunction", getFloor(), getCeil()));
		if (childs == null || getFloor() == getCeil()) {
			StringBuilder sb1 = new StringBuilder(), sb2 = new StringBuilder();
			for (int i = 0; i < getFloor(); i++) {
				sb1.append('|');
			}
			for (int i = 0; i < width - getFloor(); i++) {
				sb2.append('|');
			}
			fw.write(String.format("data modify entity @s CustomName set value '[{\"text\":\"%s\",\"color\":\"red\"},{\"text\":\"%s\",\"color\":\"gray\"}]'%n", sb1.toString(), sb2.toString()));
		} else {
			for (int i = 0; i < childs.length; i++) {
				// int ceil = (int)Math.ceil(childs[i].getCeil() / 0.0081d);
				fw.write(String.format("execute if score percentage phbVar matches %1$d..%2$d run function phb:enum/%1$d_%2$d%n", childs[i].getFloor(), childs[i].getCeil()));
			}
		}
		fw.close();
	}
	int getFloor() {
		return (parent == null ? 0 : parent.getFloor() - 1) + (int)(Math.pow(Node.power, height)) * index + 1;
	}
	int getCeil() {
		return getFloor() + (int)(Math.pow(Node.power, height)) - 1;
	}
}