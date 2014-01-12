my_indexr
=========

About
-----

my_indexr is a tool that outputs SQL commands for dropping and recreating
indexes on MySQL databases / tables.

Usage
-----

From the `--help`:

    Usage: ./my_indexr [option] <database>
    
    Show SQL queries for dropping and recreating indexes. (It does not actually
    run the queries)  Example:    $ ./indexr.py -u root -p mydb > mydb_idx.sql
    $ grep -e "^DROP" mydb_idx.sql | mysql -u root -p mydb    $ grep -e "^CREATE"
    mydb_idx.sql | mysql -u root -p mydb
    
    Options:
      -h, --help            show this help message and exit
      -u USER               Username
      -H HOST               Host
      -P PORT               Port
      -p                    Ask for passwd
      --passwd=PASSWD       Password (use -p to ask)
      --pw-from-stdin       Read password from STDIN
      -t TABLES, --tables=TABLES
                            Comma-separated list of tables to process
      --primary             Also process primary keys

Example usage:

    # Generate SQL for dropping/creating indexes on `mydb`:
    $ ./indexr.py -u root -p mydb > mydb_idx.sql

    # Drop the indexes
    $ grep -e "^DROP" mydb_idx.sql | mysql -u root -p mydb

    # Recreate the indexes
    $ grep -e "^CREATE" mydb_idx.sql | mysql -u root -p mydb


License
-------

(MIT Liencese)

    Copyright (C) 2014 Ferry Boender
    
    Permission is hereby granted, free of charge, to any person obtaining a
    copy of this software and associated documentation files (the "Software"),
    to deal in the Software without restriction, including without limitation
    the rights to use, copy, modify, merge, publish, distribute, sublicense,
    and/or sell copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
    DEALINGS IN THE SOFTWARE.
