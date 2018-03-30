import gui.ava.html.image.generator.HtmlImageGenerator;

public class Main {

    public static void main(String[] args) {
        HtmlImageGenerator imageGenerator = new HtmlImageGenerator();
        imageGenerator.loadUrl("https://blog.csdn.net/webxiaoma/article/details/65948338");
        imageGenerator.saveAsImage("hello-world.png");
        imageGenerator.saveAsHtmlWithMap("hello-world.html", "hello-world.png");
        String srcHtmlString = "<html><head></head><body><div><img src='http://192.98.8.234/vec_w/L4/R6/C12.png' style='visibility: inherit; opacity: 1; position: absolute; left: 793px; top: 402px; width: 256px; height: 256px;' class=''><img src='http://192.98.8.234/vec_w/L4/R5/C12.png' style='visibility: inherit; opacity: 1; position: absolute; left: 793px; top: 146px; width: 256px; height: 256px;' class=''><img src='http://192.98.8.234/vec_w/L4/R6/C13.png' style='visibility: inherit; opacity: 1; position: absolute; left: 1049px; top: 402px; width: 256px; height: 256px;' class=''></div></body></html>";
        final Html2Image html2Image = Html2Image.fromHtml(srcHtmlString);
        html2Image.getImageRenderer().saveImage("d:/baidu.png");
//          html2Image.getHtmlImageMap().saveImageMapDocument("baidu.html", "baidu.png");
    }
}
