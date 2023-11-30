/*
    Changing the default algorithm.
    create index <name> on <table> using hash (col)
*/

-- create index hashIndex on city using hash (countrycode);
/*
    Hash works greatly with equality operators
    B-TREE works with comparisons and some different clauses.
    select 
    name,
    district
    from city 
    where countrycode = 'TUN' OR countrycode ='NL';
*/

/*
    GIN - Generalized Inverted Index.
    When multiple values are stored in a single field.
    PG ARRAY TYPE 
*/

/*
    GST - Genelraized Search Tree.
    Indexing Geometric data and full text search.    
*/

