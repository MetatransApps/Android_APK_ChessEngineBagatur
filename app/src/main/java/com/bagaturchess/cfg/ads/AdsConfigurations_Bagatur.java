package com.bagaturchess.cfg.ads;


import android.content.Context;

import org.metatrans.commons.ads.api.IAdsConfiguration;
import org.metatrans.commons.ads.api.IAdsConfigurations;
import org.metatrans.commons.ads.api.IAdsProviders;
import org.metatrans.commons.ads.impl.IAdsContainer;
import org.metatrans.commons.ads.impl.providers.home_ads.AdsContainer_HomeAds_PureC;


public class AdsConfigurations_Bagatur implements IAdsConfigurations {
	
	
	protected int[] PROVIDERS_BANNERS;
	protected int[] PROVIDERS_INTERSTITIAL;

	private IAdsContainer container_home;
	
	
	public AdsConfigurations_Bagatur(Context context) {
		
		PROVIDERS_BANNERS 		= new int[] {
												IAdsProviders.ID_HOME_ADS,
											}; 

		PROVIDERS_INTERSTITIAL 	= new int[] {
												IAdsProviders.ID_HOME_ADS,
											};

		container_home = new AdsContainer_HomeAds_PureC(context, getProviderConfiguration(IAdsProviders.ID_HOME_ADS));
	}
	
	
	public IAdsConfiguration getProviderConfiguration(int providerID) {
		switch (providerID) {
			case IAdsProviders.ID_HOME_ADS:
				return null;
			default:
				throw new IllegalStateException("ProviderID=" + providerID);
		}
	}
	
	
	public int[] getProvidersOfBanners() {
		return PROVIDERS_BANNERS;
		
	}
	
	
	public int[] getProvidersOfInterstitials() {
		return PROVIDERS_INTERSTITIAL;
	}


	@Override
	public IAdsContainer getProviderContainer(int providerID, Context context) {
		switch (providerID) {
			case IAdsProviders.ID_HOME_ADS:
				return container_home;
			default:
				throw new IllegalStateException("Unsupported Ads provider: " + providerID);
		}
	}
}
