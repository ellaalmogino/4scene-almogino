
/*
 * FirstScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FirstScene : SEScene
{
		SESprite image1;
    	SESprite image5;
		
		
	public void initialize(SEResourceCache rsc) {
	 	base.initialize(rsc);
		 add_sprite_for_color(Color.instance("#F1E05B"), get_scene_width(), get_scene_height());
		 rsc.prepare_image("mypiglet","piglet", get_scene_width(), get_scene_height());
		 rsc.prepare_image("mymain","main",get_scene_width()*0.2, get_scene_height()*0.2);
		
		 image1= add_sprite_for_image(SEImage.for_resource("mypiglet"));
	 	image1.move(0,0);

	     image5= add_sprite_for_image(SEImage.for_resource("mymain"));
	     image5.move(get_scene_width()*0.75,get_scene_height()*0.75);  
		}

	public void on_pointer_press(SEPointerInfo pi) {
		 base.on_pointer_press(pi);			
		 if(pi.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.75*get_scene_width(),0.75*get_scene_height())) {
	       switch_scene(new MainScene());
			}
	}

	public void cleanup() {
		base.cleanup();
	}
}
