bin_PROGRAMS = luks_unlock luks_stats
AM_CPPFLAGS = -std=gnu99 -I lib

luks_unlock_SOURCES = unlock_main.c
luks_unlock_LDADD = lib/libluks.la

luks_stats_SOURCES = stats_main.c
luks_stats_LDADD = lib/libluks.la

#ot.
#luks_stats_LDADD = $(FUSE_LIBS) ../lib/libluks.la
#luks_stats_CFLAGS = $(FUSE_CFLAGS)

#luks_unlock_LDADD = $(FUSE_LIBS) ../lib/libluks.la
#luks_unlock_CFLAGS = $(FUSE_CFLAGS)
