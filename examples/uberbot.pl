# The uber-bot

use lib '../lib';
use Bot::Pluggable;
use UberBot::Joiner;
use UberBot::Factoid;
use UberBot::OpBot;
use POE;

my $factoid = UberBot::Factoid->new();
my $opper = UberBot::OpBot->new();

my $bot = Bot::Pluggable->new(
        Modules => [qw(UberBot::Joiner)],
        Objects => [$factoid, $opper],
        Nick => 'uberbot',
        Server => 'grou.ch',
        Port => 6667,
        );

$poe_kernel->run();
exit(0);
