FROM rails:onbuild

EXPOSE 3000
CMD ([ -f "/usr/src/app/tmp/pids/server.pid" ] && (rm -f /usr/src/app/tmp/pids/server.pid && echo "START API1") || echo "START API1" ) && rails server --bind=0.0.0.0
