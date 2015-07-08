package com.DWR.dwr;

import java.util.Collection;

import org.directwebremoting.Browser;
import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;

public class MessagePush {
	
	public void sendMessage(final String content) {
		Runnable run = new Runnable() {
			ScriptBuffer script = new ScriptBuffer();

			public void run() {
				// 设置要调用的 js及参数
				script.appendCall("showMessage", content);
				// 得到所有ScriptSession
				Collection<ScriptSession> sessions = Browser
						.getTargetSessions();
				for (ScriptSession session : sessions) {
					session.addScript(script);
				}
			}
		};
		// 执行推送
		Browser.withAllSessions(run);
	}
}