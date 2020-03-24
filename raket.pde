import processing.core.PApplet;

public class Opgave2403 extends PApplet {

    Raket r;

    public static void main(String[] args) {
        PApplet.main("Opgave2403");
    }

    @Override
    public void settings() {
        super.settings();
        size(500,500);
    }

    @Override
    public void setup() {
        super.setup();
        r = new Raket(250, 250);
    }

    @Override
    public void draw() {
        //super.draw();
        clear();
        background(220);
        r.display();
        r.move();
    }

    @Override
    public void mouseClicked() {
        super.mouseClicked();
    }

    class Raket {
        float x;
        float y;

        Raket(float x, float y) {
            this.x = x;
            this.y = y;
        }

        void display() {
            fill(200,30,79,12);
            ellipse(x, y,20,20);
        }

        void move() {
            System.out.println("Y: " + mouseY);
            if (y < mouseY) {
                y += 1;
            }

            if (y > mouseY) {
                y -= 1;
            }

            if (x < mouseX) {
                x += 1;
            }

            if (x > mouseX) {
                x -= 1;
            }

        }
    }

}
