DB.DBA.VHOST_REMOVE (
lhost=>'*ini*',
vhost=>'*ini*',
lpath=>'/euterpe'
);

DB.DBA.VHOST_DEFINE (
lhost=>'*ini*',
vhost=>'*ini*',
lpath=>'/euterpe',
ppath=>'/DAV/',
is_dav=>1,
is_brws=>0,
def_page=>'',
vsp_user=>'dba',
ses_vars=>0,
opts=>vector ('browse_sheet', '', 'cors', '*', 'cors_restricted', 0, 'url_rewrite', 'http_rule_list_22'),
is_default_host=>0);

DB.DBA.URLREWRITE_CREATE_RULELIST (
'http_rule_list_22',
1,
vector ('http_rule_22'));

DB.DBA.URLREWRITE_CREATE_REGEX_RULE (
'http_rule_22',
1,
'/euterpe/(.*)',
vector ('par_22'),
1,
'/fct/rdfdesc/description.vsp?g=http://data.doremus.org/euterpe/%U',
vector ('par_22'),
NULL,
NULL,
2,
0,
'');
