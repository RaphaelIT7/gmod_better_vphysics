group("IVP")
	project("ivp_compact_builder")
		kind("StaticLib")
		warnings("Default")
		location("../projects/" .. os.target() .. "/" .. _ACTION)
		targetdir("%{prj.location}/%{cfg.architecture}/%{cfg.buildcfg}")
		debugdir("%{prj.location}/%{cfg.architecture}/%{cfg.buildcfg}")
		objdir("!%{prj.location}/%{cfg.architecture}/%{cfg.buildcfg}/intermediate/%{prj.name}")
		sysincludedirs({
			"../ivp_physics",
			"../ivp_utility",
			"../ivp_compact_builder",
			"../ivp_collision",
			"../ivp_surface_manager",
			"../ivp_controller",
			"../havana/havok",
		})
		files({
			"geompack_cutfac.cxx",
			"geompack_cvdec3.cxx",
			"geompack_drdec3.cxx",
			"geompack_dsphdc.cxx",
			"geompack_edght.cxx",
			"geompack_initcb.cxx",
			"geompack_insed3.cxx",
			"geompack_insfac.cxx",
			"geompack_insvr3.cxx",
			"geompack_prime.cxx",
			"geompack_ptpolg.cxx",
			"geompack_resedg.cxx",
			"ivp_compact_ledge_gen.cxx",
			"ivp_compact_modify.cxx",
			"ivp_compact_recursive.cxx",
			"ivp_convex_decompositor.cxx",
			"ivp_halfspacesoup.cxx",
			"ivp_i_fpoint_vhash.cxx",
			"ivp_i_point_vhash.cxx",
			"ivp_object_polygon_tetra.cxx",
			"ivp_rot_inertia_solver.cxx",
			"ivp_surbuild_halfspacesoup.cxx",
			"ivp_surbuild_ledge_soup.cxx",
			"ivp_surbuild_pointsoup.cxx",
			"ivp_surbuild_polygon_convex.cxx",
			"ivp_surbuild_polyhdrn_cncv.cxx",
			"ivp_surbuild_q12.cxx",
			"ivp_templates_intern.cxx",
			"ivp_tetra_intrude.cxx",
			"ivv_cluster_min_hash.cxx",
			"qhull.cxx",
			"qhull_geom.cxx",
			"qhull_geom2.cxx",
			"qhull_global.cxx",
			"qhull_io.cxx",
			"qhull_mem.cxx",
			"qhull_merge.cxx",
			"qhull_poly.cxx",
			"qhull_poly2.cxx",
			"qhull_qset.cxx",
			"qhull_random.cxx",
			"qhull_rboxlib.cxx",
			"qhull_stat.cxx",
			"qhull_user.cxx",
			"qhull_usermem.cxx",
			"qhull_userprintf.cxx",
			"qhull_userprintf_rbox.cxx"
		})
		vpaths({["Source files/*"] = "*.cxx"})

		filter("system:linux")
			defines({"_LIB", "LINUX"})
			buildoptions { "-fpic", "-fno-semantic-interposition" }