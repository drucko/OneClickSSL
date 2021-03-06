<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css">
{% include "style.css" %}
</style>

<!-- Advanced Settings -->
<div class="ocContent">
<form action="" method="post">
	<h1>GlobalSign OneClickSSL Administrator Settings</h1>

	<!-- Obtaining OneClickSSL Vouchers -->
	<h2>DirectAdmin API</h2>
	<p class='OCdescription'>The plugin does need the DirectAdmin administrator username and password to configure the ssl certificates. No username or passwords will be transferred, the information is only used by the plugin on the local system!</p>
	<div class="ocHighlight">
		<div class="ocSetting">
		  <div class="ocDsc">{{ LANG::Username }}:</div>
		  <div class="ocInput"><input type="text" size="50" value="{{ da_user }}" name="da_user"></div>
		</div>
		<div class="ocSetting">
		  <div class="ocDsc">{{ LANG::Password }}:</div>
		  <div class="ocInput"><input type="password" size="50" value="{{ da_passwd }}" name="da_passwd"></div>
		</div>
	</div>

	<!-- Automatically assign available IP addresses -->
	<h2>Automatically assign available IP address</h2>
	<p class='OCdescription'>Automatically assign an IP address and update DNS information when an ip address is available for this specific user and the site is currently not availible on a dedicated ip address. While the old shared IP address is removed from the DNS the address wil not be removed from the website to make sure there is no downtime.</p>
	<div class="ocHighlight">
		<div class="ocSetting">
		  <div class="ocDsc">Automatically assign available IP address</div>
		  <div class="ocInput">
			<select name="auto_ip" id="auto_ip">
			  <option value="0">Off</option>
			  <option value="1">On</option>
			</select>
		  </div>
		</div>
	</div>

	<!-- Use Server Name Indication (SNI) -->
	<h2>Use Server Name Indication (SNI)</h2>
	<p class='OCdescription'>Ignore IP settings and install multiple SSL certificates on a single IP address. Use in combination with GlobalSign CloudSSL for full compatibility.</p>
	<div class="ocHighlight">
		<div class="ocSetting">
		  <div class="ocDsc">Use Server Name Indication (SNI)</div>
		  <div class="ocInput">
			<select name="sni" id="sni">
			  <option value="0">Off</option>
			  <option value="1">On</option>
			</select>
		  </div>
		</div>
	</div>

	<!-- RAA Login Key -->
	<h2>Remote Adminsitration Agent (RAA) Login Key</h2>
	<p class='OCdescription'>Create a Login Key <a href="/CMD_LOGIN_KEYS">here</a> if you want to use the RAA. The login key will be transferred to GlobalSign if you request a certificate with RAA enabled. You should limit the key usage to allow the CMD_PLUGINS command, a usage of 0 (unlimited) and no expiry.</p>
	<div class="ocHighlight">
		<div class="ocSetting">
		  <div class="ocDsc">Login Key for RAA:</div>
		  <div class="ocInput"><input type="password" size="50" value="{{ da_loginkey }}" name="da_loginkey">
			<br><a href="/CMD_LOGIN_KEYS">Create a new key</a>
		  </div>
		</div>
	</div>
	
	<!-- DebugLevel -->
	<h2>Debugging level</h2>
	<p class='OCdescription'>The bebugging level configures the amount of information the server will use when logging. The level parameter must be between 0 and 9.</p>
	<div class="ocHighlight">
		<div class="ocSetting">
		  <div class="ocDsc">Amount of information:</div>
		  <div class="ocInput">
			<select name="debug_level" id="debug_level">
			  <option value="0">0</option>
			  <option value="1">1</option>
			  <option value="2">2</option>
			  <option value="3">3</option>
			  <option value="4">4</option>
			  <option value="5">5</option>
			  <option value="6">6</option>
			  <option value="7">7</option>
			  <option value="8">8</option>
			  <option value="9">9</option>
			</select>
		  </div>
		</div>
	</div>

	<!-- Production / Testing / Staging -->
	<h2>Production, testing or staging</h2>
	<p class='OCdescription'>The plugin can be used for production test or staging certificates</p>
	<div class="ocHighlight">
		<div class="ocSetting">
		  <div class="ocDsc">Order certificates from:</div>
		  <div class="ocInput">
			<select name="environment" id="environment">
			  <option value="0">Production</option>
			  <option value="1">Testing</option>
			  <option value="2">Staging</option>
			</select>
		  </div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$('#debug_level').val('{{ debug_level }}');
			$('#auto_ip').val('{{ auto_ip }}');
			$('#sni').val('{{ sni }}');
			$('#environment').val('{{ environment }}');
		});
	</script>
	
	<!-- Obtaining OneClickSSL Vouchers -->
	<h2>{{ LANG::FormObtainingVouchersTitle }}</h2>
	<p class='OCdescription'>{{ LANG::FormObtainingVouchersDescription }}</p>
	<div class="ocHighlight">
		<div class="ocSetting">
		  <div class="ocDsc">{{ LANG::FormLandingPage }}:</div>
		  <div class="ocInput"><input type="text" size="50" value="{{ voucher_url }}" name="voucher_url"></div>
		</div>
	</div>
	
	<!-- Save button -->
	<input type="submit" value="{{ LANG::Save }}">
	
</form>
</div>