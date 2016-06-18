FROM rails:onbuild

EXPOSE 3000
CMD ([ -f "/usr/src/app/tmp/pids/server.pid" ] && (rm -f /usr/src/app/tmp/pids/server.pid && echo "START Api1") || echo "START Api1" ) && rails server --bind=0.0.0.0
