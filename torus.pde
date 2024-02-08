void torus(float R, float r, int countS, int countT) {
    for (int s=0; s<countS; s++) {
        float theta1 = map(s, 0, countS, 0, 2*PI);
        float theta2 = map(s+1, 0, countS, 0, 2*PI);
        beginShape(TRIANGLE_STRIP);
        // beginShape(QUAD_STRIP);
        for (int t=0; t<=countT; t++) {
            float phi = map(t, 0, countT, 0, 2*PI);
            vertex((R+r*cos(phi))*cos(theta1), (R+r*cos(phi))*sin(theta1), r*sin(phi));
            vertex((R+r*cos(phi))*cos(theta2), (R+r*cos(phi))*sin(theta2), r*sin(phi));
        }
        endShape();
    }
}
