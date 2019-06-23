package com.zsg.utils;

import java.util.EnumSet;

import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.boot.spi.MetadataImplementor;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import org.hibernate.tool.schema.TargetType;

public class ExportDB {
	public static void main(String []args) {
/*		Configuration cfg=new Configuration().configure();
		SchemaExport export=new SchemaExport(cfg);
		export.create(true, true);*/
		ServiceRegistry serviceRegistry = (ServiceRegistry) new StandardServiceRegistryBuilder().configure().build();
		MetadataImplementor metadataImplementor = (MetadataImplementor) new MetadataSources(serviceRegistry).buildMetadata();
		SchemaExport export = new SchemaExport();
		export.create(EnumSet.of(TargetType.DATABASE),metadataImplementor );

	
	}
}
