--NUMBER to VARCHAR
select dtmov, numnota, to_char(numnota,'000000') from pcmov;
