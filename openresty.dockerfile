FROM openresty/openresty:latest

# install dependencies
RUN ["luarocks", "install", "lua-resty-session"]
RUN ["luarocks", "install", "lua-resty-http"]
RUN ["luarocks", "install", "lua-resty-jwt"]
RUN ["luarocks", "install", "lua-resty-openidc"]

# ADD lib/resty/openidc.lua /usr/local/openresty/lualib/resty/openidc.lua

EXPOSE 80