package p2;

public class Protection2 extends p1.Protection {
    Protection2(){
        // super();
        System.out.println("derived other package constructor");
        // System.out.println("n = " + n);
        // System.out.println("n_pri = " + n_pri);
        System.out.println("n_pro = " + n_pro);
        System.out.println("n_pub = " + n_pub);
    }
}
