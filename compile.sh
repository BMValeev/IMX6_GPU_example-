#! /bin/sh

cross_compile=/home/user/src_new/buildroot-2016.02-sk/output/host/usr/bin/arm-linux-gnueabihf-
i_p=/home/user/src_new/buildroot-2016.02-sk/output/host/usr/arm-buildroot-linux-gnueabihf/sysroot/usr/
i_sp=/home/user/src_new/buildroot-2016.02-sk/output/host/usr/lib/glib-2.0/include
i_na=/usr/include/


CC=${cross_compile}gcc


$CC $1 -o $2 -std=c99 \
-I ${i_p}include  \
 -I ${i_p}bin/  \
 -I ${i_p}include/CL \
 -I ${i_sp} \
 -L ${i_p}lib/ -lGAL -lOpenCL -pthread 

#if [$3 -eq "upload"]
#then
#scp -r $2 root@192.168.0.136:/root/pngenc
#fi
# -I ${i_p}include/pixman-1 \
# 
# -I ${i_p}include/gdk-pixbuf-2.0 \ 
# -I ${i_na}gtk-2.0  -lgdk_pixbuf-2.0 -lpixman-1
#echo  "$CC $1  -o $2 -I ${i_p}include/gstreamer-1.0 -I ${i_p}include  -I ${i_p}lib/glib-2.0/include  -I ${i_p}include/glib-2.0  -I ${i_p}lib/gstreamer-1.0  -I ${i_p}bin  -I ${i_p}libexec/gstreamer-1.0 -I $i_sp -L ${i_p}lib/ -lgstreamer-1.0 -lffi  -lglib-2.0   -lgobject-2.0 -lgstapp-1.0 "
# -I ${i_p}lib/glib-2.0/include \
#-I ${i_p}include/glib-2.0 \
# -I ${i_p}lib/gstreamer-1.0 \
#
#
#       -I ${i_p}include/gstreamer-1.0 \
# -I ${i_p}libexec/gstreamer-1.0 \
# -I ${i_p}include/libpng16 \
# -I ${i_p}include/pango-1.0 \
# -I ${i_p}include/libpng16 \
# -I ${i_p}include/cairo \
# -I ${i_p}include/gtk-3.0 \
# -I ${i_p}include/gdk-pixbuf-2.0 \
# -I ${i_p}include/atk-1.0 \ -lgstreamer-1.0 -lffi  -lglib-2.0   -lgobject-2.0 -lgstapp-1.0 -lgtk-3 -lgdk_pixbuf-2.0 -lgmodule-2.0 -lpng16