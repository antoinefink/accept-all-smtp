require "logger"
require "mini-smtp-server"

# Create a new server instance listening at 0.0.0.0:2525
# and accepting a maximum of 4 simultaneous connections
server1 = MiniSmtpServer.new(2525, "0.0.0.0", 4)
server1.start

# Create a new server instance listening at 0.0.0.0:25
# and accepting a maximum of 4 simultaneous connections
server2 = MiniSmtpServer.new(25, "0.0.0.0", 4)
server2.start

log = Logger.new(STDOUT)
log.info("Server ready to accept mails")

server1.join
server2.join
