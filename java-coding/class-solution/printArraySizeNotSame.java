class printArraySizeNotSame {
    public static void main(String arg[]){
        int a[][] = new int[3][];
        a[0] = new int[2];
        a[1] = new int[4];
        a[2] = new int[3];

        for(int i=0; i<3; i++){
            for(int j=0; j<a[i].length; j++){
                a[i][j] = i*j+2;
            }
        }

        for(int i=0; i<3; i++){
            for(int j=0; j<a[i].length; j++){
                System.out.print(a[i][j] + " ");
            }
            System.out.println();
        }
    }    
}
