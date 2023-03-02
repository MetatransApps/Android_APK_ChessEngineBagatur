package com.bagaturchess.app;


import com.bagaturchess.cfg.ads.AdsConfiguration_Bagatur;

import org.metatrans.apps.bagatur.app.Application_BagaturEngine;
import org.metatrans.commons.ads.api.IAdsProviders;
import org.metatrans.commons.ads.impl.AdsConfigurations_DynamicImpl;
import org.metatrans.commons.cfg.appstore.IAppStore;


public class Application_Bagatur extends Application_BagaturEngine {


	@Override
	public void onCreate() {

		super.onCreate();

		getAdsConfigurations().addProviderConfig(
				IAdsProviders.ID_HOME_ADS,
				new AdsConfiguration_Bagatur()
		);
	}


	@Override
	public AdsConfigurations_DynamicImpl getAdsConfigurations() {

		return (AdsConfigurations_DynamicImpl) super.getAdsConfigurations();
	}


	@Override
	public IAppStore getAppStore() {
		return IAppStore.OBJ_FDROID_OFFICIAL;
	}
}
