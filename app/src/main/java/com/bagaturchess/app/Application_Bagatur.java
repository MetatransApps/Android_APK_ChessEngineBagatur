package com.bagaturchess.app;


import org.metatrans.commons.ads.api.IAdsConfigurations;
import org.metatrans.commons.cfg.appstore.IAppStore;

import com.bagaturchess.cfg.ads.AdsConfigurations_Bagatur;


public class Application_Bagatur extends Application_BagaturEngine {
	
	
	private IAdsConfigurations adsConfigurations = new AdsConfigurations_Bagatur(this);

	
	@Override
	public IAdsConfigurations getAdsConfigurations() {
		return adsConfigurations;
	}


	@Override
	public IAppStore getAppStore() {
		return IAppStore.OBJ_FDROID_OFFICIAL;
	}
}
