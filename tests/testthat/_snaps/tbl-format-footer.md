# tbl_format_footer() results

    Code
      tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 80))
    Output
      [1m<tbl_format_footer(setup)>[22m
      [90m# ... with 13 more variables: n <chr>, o <chr>, p <chr>, q <chr>, r <chr>,[39m
      [90m#   s <chr>, t <chr>, u <chr>, v <chr>, w <chr>, x <chr>, y <chr>, z <chr>[39m
    Code
      tbl_format_footer(tbl_format_setup(new_tbl(as.list(set_names(letters))), width = 30))
    Output
      [1m<tbl_format_footer(setup)>[22m
      [90m# ... with 22 more variables:[39m
      [90m#   e <chr>, f <chr>,[39m
      [90m#   g <chr>, h <chr>,[39m
      [90m#   i <chr>, j <chr>,[39m
      [90m#   k <chr>, l <chr>,[39m
      [90m#   m <chr>, n <chr>,[39m
      [90m#   o <chr>, p <chr>, ...[39m

# wrapping column names with spaces in the footer

    Code
      tbl_format_footer(tbl_format_setup(new_tbl(list2(!!!set_names(letters), !!paste(
        letters, collapse = " ") := 2)), width = 70))
    Output
      <tbl_format_footer(setup)>
      # ... with 16 more variables: l <chr>, m <chr>, n <chr>, o <chr>,
      #   p <chr>, q <chr>, r <chr>, s <chr>, t <chr>, u <chr>, v <chr>,
      #   w <chr>, x <chr>, y <chr>, z <chr>,
      #   `a b c d e f g h i j k l m n o p q r s t u v w x y z` <dbl>

# overflow

    Code
      tbl_format_footer(tbl_format_setup(new_tbl(list2(!!!set_names(rep(letters, 6)))),
      width = 70))
    Output
      <tbl_format_footer(setup)>
      # ... with 145 more variables: l <chr>, m <chr>, n <chr>, o <chr>,
      #   p <chr>, q <chr>, r <chr>, s <chr>, t <chr>, u <chr>, v <chr>,
      #   w <chr>, x <chr>, y <chr>, z <chr>, a <chr>, b <chr>, c <chr>,
      #   d <chr>, e <chr>, f <chr>, g <chr>, h <chr>, i <chr>, j <chr>,
      #   k <chr>, l <chr>, m <chr>, n <chr>, o <chr>, p <chr>, q <chr>,
      #   r <chr>, s <chr>, t <chr>, u <chr>, v <chr>, w <chr>, x <chr>,
      #   y <chr>, z <chr>, a <chr>, b <chr>, c <chr>, d <chr>, ...

# max_footer_lines option

    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl("")))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: bg <int>, ah <int>, bh <int>, ai <int>, bi <int>,
      #   aj <int>, bj <int>, ak <int>, bk <int>, al <int>, bl <int>, am <int>,
      #   bm <int>, an <int>, bn <int>, ao <int>, bo <int>, ap <int>, bp <int>,
      #   aq <int>, bq <int>, ar <int>, br <int>, as <int>, bs <int>, at <int>,
      #   bt <int>, au <int>, bu <int>, av <int>, bv <int>, aw <int>, bw <int>,
      #   ax <int>, bx <int>, ay <int>, by <int>, az <int>, bz <int>
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl("prefix_")))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: prefix_bg <int>, prefix_ah <int>,
      #   prefix_bh <int>, prefix_ai <int>, prefix_bi <int>, prefix_aj <int>,
      #   prefix_bj <int>, prefix_ak <int>, prefix_bk <int>, prefix_al <int>,
      #   prefix_bl <int>, prefix_am <int>, prefix_bm <int>, prefix_an <int>,
      #   prefix_bn <int>, prefix_ao <int>, prefix_bo <int>, prefix_ap <int>,
      #   prefix_bp <int>, prefix_aq <int>, prefix_bq <int>, prefix_ar <int>,
      #   prefix_br <int>, prefix_as <int>, prefix_bs <int>, prefix_at <int>, ...
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl("a_very_long_prefix_")))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: a_very_long_prefix_bg <int>,
      #   a_very_long_prefix_ah <int>, a_very_long_prefix_bh <int>,
      #   a_very_long_prefix_ai <int>, a_very_long_prefix_bi <int>,
      #   a_very_long_prefix_aj <int>, a_very_long_prefix_bj <int>,
      #   a_very_long_prefix_ak <int>, a_very_long_prefix_bk <int>,
      #   a_very_long_prefix_al <int>, a_very_long_prefix_bl <int>,
      #   a_very_long_prefix_am <int>, a_very_long_prefix_bm <int>, ...
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl(""), max_footer_lines = 3))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: bg <int>, ah <int>, bh <int>, ai <int>, bi <int>,
      #   aj <int>, bj <int>, ak <int>, bk <int>, al <int>, bl <int>, am <int>,
      #   bm <int>, an <int>, bn <int>, ao <int>, bo <int>, ap <int>, bp <int>, ...
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl("prefix_"), max_footer_lines = 3))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: prefix_bg <int>, prefix_ah <int>,
      #   prefix_bh <int>, prefix_ai <int>, prefix_bi <int>, prefix_aj <int>,
      #   prefix_bj <int>, prefix_ak <int>, prefix_bk <int>, prefix_al <int>, ...
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl("a_very_long_prefix_"),
      max_footer_lines = 3))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: a_very_long_prefix_bg <int>,
      #   a_very_long_prefix_ah <int>, a_very_long_prefix_bh <int>,
      #   a_very_long_prefix_ai <int>, a_very_long_prefix_bi <int>, ...
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl(""), max_footer_lines = Inf))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: bg <int>, ah <int>, bh <int>, ai <int>, bi <int>,
      #   aj <int>, bj <int>, ak <int>, bk <int>, al <int>, bl <int>, am <int>,
      #   bm <int>, an <int>, bn <int>, ao <int>, bo <int>, ap <int>, bp <int>,
      #   aq <int>, bq <int>, ar <int>, br <int>, as <int>, bs <int>, at <int>,
      #   bt <int>, au <int>, bu <int>, av <int>, bv <int>, aw <int>, bw <int>,
      #   ax <int>, bx <int>, ay <int>, by <int>, az <int>, bz <int>
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl("prefix_"), max_footer_lines = Inf))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: prefix_bg <int>, prefix_ah <int>,
      #   prefix_bh <int>, prefix_ai <int>, prefix_bi <int>, prefix_aj <int>,
      #   prefix_bj <int>, prefix_ak <int>, prefix_bk <int>, prefix_al <int>,
      #   prefix_bl <int>, prefix_am <int>, prefix_bm <int>, prefix_an <int>,
      #   prefix_bn <int>, prefix_ao <int>, prefix_bo <int>, prefix_ap <int>,
      #   prefix_bp <int>, prefix_aq <int>, prefix_bq <int>, prefix_ar <int>,
      #   prefix_br <int>, prefix_as <int>, prefix_bs <int>, prefix_at <int>,
      #   prefix_bt <int>, prefix_au <int>, prefix_bu <int>, prefix_av <int>,
      #   prefix_bv <int>, prefix_aw <int>, prefix_bw <int>, prefix_ax <int>,
      #   prefix_bx <int>, prefix_ay <int>, prefix_by <int>, prefix_az <int>,
      #   prefix_bz <int>, and abbreviated variable names 1: prefix_aa, 2: prefix_ba,
      #   3: prefix_ab, 4: prefix_bb, 5: prefix_ac, 6: prefix_bc, 7: prefix_ad,
      #   8: prefix_bd, 9: prefix_ae, *: prefix_be, *: prefix_af, *: prefix_bf,
      #   *: prefix_ag
    Code
      tbl_format_footer(tbl_format_setup(new_footer_tbl("a_very_long_prefix_"),
      max_footer_lines = Inf))
    Output
      <tbl_format_footer(setup)>
      # ... with 39 more variables: a_very_long_prefix_bg <int>,
      #   a_very_long_prefix_ah <int>, a_very_long_prefix_bh <int>,
      #   a_very_long_prefix_ai <int>, a_very_long_prefix_bi <int>,
      #   a_very_long_prefix_aj <int>, a_very_long_prefix_bj <int>,
      #   a_very_long_prefix_ak <int>, a_very_long_prefix_bk <int>,
      #   a_very_long_prefix_al <int>, a_very_long_prefix_bl <int>,
      #   a_very_long_prefix_am <int>, a_very_long_prefix_bm <int>,
      #   a_very_long_prefix_an <int>, a_very_long_prefix_bn <int>,
      #   a_very_long_prefix_ao <int>, a_very_long_prefix_bo <int>,
      #   a_very_long_prefix_ap <int>, a_very_long_prefix_bp <int>,
      #   a_very_long_prefix_aq <int>, a_very_long_prefix_bq <int>,
      #   a_very_long_prefix_ar <int>, a_very_long_prefix_br <int>,
      #   a_very_long_prefix_as <int>, a_very_long_prefix_bs <int>,
      #   a_very_long_prefix_at <int>, a_very_long_prefix_bt <int>,
      #   a_very_long_prefix_au <int>, a_very_long_prefix_bu <int>,
      #   a_very_long_prefix_av <int>, a_very_long_prefix_bv <int>,
      #   a_very_long_prefix_aw <int>, a_very_long_prefix_bw <int>,
      #   a_very_long_prefix_ax <int>, a_very_long_prefix_bx <int>,
      #   a_very_long_prefix_ay <int>, a_very_long_prefix_by <int>,
      #   a_very_long_prefix_az <int>, a_very_long_prefix_bz <int>, and abbreviated
      #   variable names 1: a_very_long_prefix_aa, 2: a_very_long_prefix_ba,
      #   3: a_very_long_prefix_ab, 4: a_very_long_prefix_bb,
      #   5: a_very_long_prefix_ac, 6: a_very_long_prefix_bc,
      #   7: a_very_long_prefix_ad, 8: a_very_long_prefix_bd,
      #   9: a_very_long_prefix_ae, *: a_very_long_prefix_be,
      #   *: a_very_long_prefix_af, *: a_very_long_prefix_bf,
      #   *: a_very_long_prefix_ag

