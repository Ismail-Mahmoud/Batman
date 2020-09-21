#include<windows.h>
#include<GL\glut.h>
#include<GL\gl.h>

void batman(void)
{

glClear(GL_COLOR_BUFFER_BIT);
glColor3f(0.0, 0.0, 0.0);
//glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

int leftWing[6][2] = {{50, 300}, {350, 300}, {150, 230}, {400, 250}, {120, 180}, {380, 150}};
int rightWing[6][2] = {{950, 300}, {650, 300}, {850, 230}, {600, 250}, {880, 180}, {620, 150}};

int body[7][2] = {{400, 250}, {380, 150}, {470, 110}, {500, 70}, {530, 110}, {620, 150}, {600, 250}};

int head[4][2] = {{450, 250}, {455, 310}, {545, 310}, {550, 250}};

int leftEar[3][2] = {{455, 310}, {455, 330}, {470, 310}};
int rightEar[3][2] = {{545, 310}, {545, 330}, {530, 310}};

int leftEye[4][2] = {{465, 290}, {480, 295}, {495, 290}, {480, 285}};
int rightEye[4][2] = {{535, 290}, {520, 295}, {505, 290}, {520, 285}};

GLfloat col[6][3] = {{0.1, 0.1, 0.1}, {0.1, 0.1, 0.1}, {0.1, 0.1, 0.1}, {0.15, 0.15, 0.15}, {0.2, 0.2, 0.2}, {0.25, 0.25, 0.25}};


///left wing
glBegin(GL_TRIANGLE_STRIP);
    for(int i = 0; i < 6; ++i){
        glColor3fv(col[i]);
        glVertex2iv(leftWing[i]);
    }
glEnd();

///right wing
glBegin(GL_TRIANGLE_STRIP);
    for(int i = 0; i < 6; ++i){
        glColor3fv(col[i]);
        glVertex2iv(rightWing[i]);
    }
glEnd();

///body
glBegin(GL_POLYGON);
    for(int i = 0; i < 7; ++i){
        glColor3f(0.15, 0.15, 0.15);
        glVertex2iv(body[i]);
    }
glEnd();

///head
glBegin(GL_POLYGON);
    for(int i = 0; i < 4; ++i){
        glColor3f(0.12, 0.12, 0.12);
        glVertex2iv(head[i]);
    }
glEnd();

///left ear
glBegin(GL_TRIANGLES);
    for(int i = 0; i < 3; ++i){
        glColor3f(0.12, 0.12, 0.12);
        glVertex2iv(leftEar[i]);
    }
glEnd();

///right ear
glBegin(GL_TRIANGLES);
    for(int i = 0; i < 3; ++i){
        glColor3f(0.12, 0.12, 0.12);
        glVertex2iv(rightEar[i]);
    }
glEnd();

///left eye
glBegin(GL_POLYGON);
    for(int i = 0; i < 4; ++i){
        glColor3f(0.75, 0.75, 0.75);
        glVertex2iv(leftEye[i]);
    }
glEnd();

///right eye
glBegin(GL_POLYGON);
    for(int i = 0; i < 4; ++i){
        glColor3f(0.75, 0.75, 0.75);
        glVertex2iv(rightEye[i]);
    }
glEnd();

glFlush();

}
void init (void)
{
    glClearColor(1.0, 1.0, 1.0, 0.0);
    glMatrixMode(GL_PROJECTION);
    gluOrtho2D(0.0, 1000.0, 0.0, 400.0);
}

int main (int argc, char** argv)
{
    glutInit(&argc,argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowPosition(50, 100);
    glutInitWindowSize(1000, 400);
    glutCreateWindow("Batman");
    init();
    glutDisplayFunc(batman);
    glutMainLoop();
    return 0;
}
