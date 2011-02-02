/*=========================================================================
* This implementation is provided on an "AS IS" BASIS,	WITHOUT WARRANTIES 
* OR CONDITIONS OF ANY KIND, either express or implied."
*==========================================================================
*/

package com.stanklimoff.gemfire.security;

import java.security.Principal;
import java.util.Properties;

import com.gemstone.gemfire.LogWriter;
import com.gemstone.gemfire.distributed.DistributedMember;
import com.gemstone.gemfire.security.AuthenticationFailedException;
import com.gemstone.gemfire.security.Authenticator;

/**
 * A simplistic implementation of the {@link Authenticator} interface that expects a
 * single user name and password pair that is set in the system properties for the server.
 * 
 * Based on from Gemfire 6.5 templates.security.DummyAuthenticator.
 *
 * @author Stan Klimoff
 *
 */
public class UserPassAuthenticator implements Authenticator {
	public static final String USER_NAME   = "security-username";
	public static final String PASSWORD    = "security-password";
	public static final String M_USER_NAME = "security-match-username";
	public static final String M_PASSWORD  = "security-match-password";  
	
	protected LogWriter securitylog;
	protected LogWriter systemlog;
	
	private String matchUsername;
	private String matchPassword;
	
	public static Authenticator create() {
		return new UserPassAuthenticator();
	}
	
	public UserPassAuthenticator() {}
	
	public void init(Properties systemProps, LogWriter systemLogger,
		LogWriter securityLogger) throws AuthenticationFailedException {
		
		// LogWriters are usually null for some reason :(
		this.systemlog   = systemLogger;
		this.securitylog = securityLogger;
		
		this.matchUsername = systemProps.getProperty(UserPassAuthenticator.M_USER_NAME);
		this.matchPassword = systemProps.getProperty(UserPassAuthenticator.M_PASSWORD);
	}
	
	public Principal authenticate(Properties props, DistributedMember member)
		throws AuthenticationFailedException {
		
		String userName = props.getProperty(UserPassAuthenticator.USER_NAME);
		if (userName == null) {
			throw new AuthenticationFailedException(
				"UserPassAuthenticator: user name property ["
					+ UserPassAuthenticator.USER_NAME + "] not provided");
		}
		
		String password = props.getProperty(UserPassAuthenticator.PASSWORD);
		if (password == null) {
			throw new AuthenticationFailedException(
				"UserPassAuthenticator: password property ["
					+ UserPassAuthenticator.PASSWORD + "] not provided");
		}
		
		if (!userName.equals(matchUsername) || !password.equals(matchPassword)) {
			throw new AuthenticationFailedException(
				"UserPassAuthenticator: Invalid user name [" + userName
					+ "], password supplied.");
		}
		
		return new UsernamePrincipal(userName);
	}

	public void close() {}
}
