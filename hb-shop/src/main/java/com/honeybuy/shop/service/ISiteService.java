/*
 * Project: iSAPort
 * Copyright (c) 2012 HP. All Rights Reserved.
 */
package com.honeybuy.shop.service;

import com.googlecode.ehcache.annotations.Cacheable;
import com.honeybuy.shop.dto.SiteDTO;

/**
 * 
 * @author <link href="wan-shan.zhu@hp.com">Spark Zhu</link>
 * @version 1.0
 */
public interface ISiteService {
	@Cacheable(cacheName="siteDTO")
	SiteDTO getSite();
}
