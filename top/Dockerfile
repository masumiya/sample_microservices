FROM rails:onbuild

EXPOSE 3000
CMD ([ -f "/usr/src/app/tmp/pids/server.pid" ] && (rm -f /usr/src/app/tmp/pids/server.pid && echo "START Top") || echo "START Top" ) && rails server --bind=0.0.0.0
