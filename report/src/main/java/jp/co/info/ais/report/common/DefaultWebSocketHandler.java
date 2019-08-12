package jp.co.info.ais.report.common;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.WebSocketSession;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketMessage;
@Slf4j
public class DefaultWebSocketHandler implements WebSocketHandler
{
	@Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("con");
        SessionMapper.add(session);
    }
 
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	System.out.println("close");
        SessionMapper.remove(session);
    }
 


 
    @Override
    public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
    	System.out.println("err");
    }

	@Override
	public void handleMessage(WebSocketSession session, WebSocketMessage<?> message) throws Exception {
		System.out.println("msg");
        
		
	}

	@Override
	public boolean supportsPartialMessages() {
		// TODO Auto-generated method stub
		return false;
	}

}
