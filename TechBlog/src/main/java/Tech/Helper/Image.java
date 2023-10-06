package Tech.Helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.imageio.stream.ImageInputStream;

public class Image {
		public static boolean delete_img(String path) {
			boolean f=false;
			try {
			File file=new File(path);
			f=file.delete();
			}catch(Exception e) {
				e.printStackTrace();
			}
			return f;
		}
		public static boolean save_img(InputStream is, String path) {
			boolean f=false;
			
			try {
				
				byte b[]=new byte[is.available()];
				is.read(b);
				FileOutputStream fos=new FileOutputStream(path);
				fos.write(b);
				fos.flush();
				fos.close();
				f=true;
				
			}catch(Exception e ) {
				e.printStackTrace();
			}
			
			return f;
		}
}
