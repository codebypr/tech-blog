package Tech.Entities;

public class Message {
		private String message;
		private String type;
		private String css;
		
		public Message(String message, String type, String css) {
			this.css=css;
			this.message=message;
			this.type=type;
		}
		
		public String getMessage() {
			return  message;
		}
}
