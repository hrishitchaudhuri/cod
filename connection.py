import psycopg2

def get_games_by_player(cur, player):
    cur.execute("""
        SELECT pgn, tournament_name, tournament_year, played_black, played_white
        FROM player, game
        WHERE played_black = fide_id OR played_white = fide_id 
        AND black.fide_id AND white.fide_id
        AND name = 
    """
    + player
    + ";")

    return cur.fetchall()

def get_games_by_year(cur, year):
    cur.execute("""
        SELECT pgn, tournament_name, tournament_year, played_black, played_white
        FROM game
        WHERE tournament_year = 
    """
    + year
    + ";")

    return cur.fetchall()

def get_players_won_tournaments(cur):
    cur.execute("""
        SELECT fide_id, name, location, year
        FROM player
        INNER JOIN tournament ON won_by=fide_id;
    """)

    return cur.fetchall()

def update_federation(cur, name, new_fed):
    cur.execute("""
        UPDATE player
        SET belongs_to = 
    """
    + new_fed
    + """
        WHERE name =  
    """
    + name
    + ";")

    cur.execute("""
        SELECT name, belongs_to
        FROM player
        WHERE name = 
    """
    + name
    + ";")

    return cur.fetchall()

def get_federation_counts(cur):
    cur.execute("""
        SELECT belongs_to, count(*) 
        FROM player
        GROUP BY belongs_to;
    """)

    return cur.fetchall()

def get_tournament_from_position(cur, pos):
    cur.execute("""
        SELECT location, year
        FROM (game NATURAL JOIN reached) INNER JOIN tournament ON year=tournament_year
        WHERE fen=
    """
    + pos
    + """;
    """)

    cur.fetchall();

##############################################################################

def print_table(cur, table):
    cur.execute("""
        SELECT * FROM
        """ + table)
    return_list = cur.fetchall()
    return [[str(j).strip() for j in i] for i in return_list]
    # return [[i.strip(), j.strip()] for i, j in return_list]


def get_conn():
    conn = psycopg2.connect(
        "dbname='chess' user='postgres' host='localhost' password='myPassword'"
    )
    cursor = conn.cursor()
    return cursor
