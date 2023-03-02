package com.bagaturchess.cfg.ads;


import org.metatrans.commons.ads.api.IAdsConfiguration;


public class AdsConfiguration_Bagatur implements IAdsConfiguration {


	private static final String CONTAINER_CLASS_FDROID_ADS = "org.metatrans.commons.ads.impl.providers.home_ads.AdsContainer_HomeAds";


	public AdsConfiguration_Bagatur() {

	}


	@Override
	public String getContainerClass() {

		return CONTAINER_CLASS_FDROID_ADS;
	}


	@Override
	public String[] getUnitIDs_Banners() {

		return new String[] {"FIXED_STRING_getUnitIDs_Banners"};
	}


	@Override
	public String[] getUnitIDs_Interstitial() {

		return new String[] {"FIXED_STRING_getUnitIDs_Interstitial"};
	}


	@Override
	public String getUnitID(String adID) {

		throw new UnsupportedOperationException();
	}
}
