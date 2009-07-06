#
# DO NOT MODIFY!!!!
# This file is automatically generated by racc 1.4.5
# from racc grammer file "Parser.y".
#

require 'racc/parser'


require 'AST'
require 'Sym'
require 'SymTable'
require 'Token'
require 'excepciones'


class RubyCalcParser < Racc::Parser

module_eval <<'..end Parser.y modeval..id51f7002619', 'Parser.y', 227
def initialize(lexer)
@ast = nil
@lexer = lexer
$tablaGlobal = SymTable.new()
end

  def parse()
   do_parse()
  end

  protected

  def next_token
    begin
      tok = @lexer.yylex
      return [false, false] if tok.nil?
      return [:"#{tok.class.to_s}",tok] #Se devuelve el token completo para poder reportar el error
    rescue CaracterInesperado => err
      puts err
      next_token
    end
  end

  def on_error(t, val, vstack)
    raise ParseError, sprintf("\nError sintactico cerca del valor %s (%s)", val.class.inspect, val.to_s || '?')
  end
..end Parser.y modeval..id51f7002619

##### racc 1.4.5 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 3, 55, :_reduce_1,
 5, 56, :_reduce_2,
 0, 56, :_reduce_3,
 3, 59, :_reduce_4,
 1, 59, :_reduce_5,
 1, 60, :_reduce_6,
 2, 60, :_reduce_7,
 9, 57, :_reduce_8,
 0, 57, :_reduce_9,
 5, 62, :_reduce_10,
 0, 62, :_reduce_11,
 4, 61, :_reduce_12,
 2, 61, :_reduce_13,
 1, 64, :_reduce_14,
 1, 64, :_reduce_15,
 1, 63, :_reduce_16,
 1, 63, :_reduce_17,
 1, 63, :_reduce_18,
 1, 63, :_reduce_19,
 1, 63, :_reduce_20,
 1, 63, :_reduce_21,
 1, 63, :_reduce_22,
 1, 63, :_reduce_23,
 3, 65, :_reduce_24,
 3, 71, :_reduce_25,
 1, 71, :_reduce_26,
 3, 72, :_reduce_27,
 3, 67, :_reduce_28,
 3, 68, :_reduce_29,
 5, 66, :_reduce_30,
 3, 66, :_reduce_31,
 3, 74, :_reduce_32,
 1, 74, :_reduce_33,
 3, 58, :_reduce_34,
 3, 77, :_reduce_35,
 1, 77, :_reduce_36,
 1, 78, :_reduce_37,
 1, 78, :_reduce_38,
 1, 78, :_reduce_39,
 1, 78, :_reduce_40,
 1, 78, :_reduce_41,
 1, 78, :_reduce_42,
 1, 78, :_reduce_43,
 3, 79, :_reduce_44,
 3, 83, :_reduce_45,
 1, 83, :_reduce_46,
 3, 84, :_reduce_47,
 5, 80, :_reduce_48,
 3, 80, :_reduce_49,
 1, 75, :_reduce_50,
 4, 75, :_reduce_51,
 3, 81, :_reduce_52,
 3, 82, :_reduce_53,
 4, 69, :_reduce_54,
 3, 85, :_reduce_55,
 1, 85, :_reduce_56,
 2, 70, :_reduce_57,
 1, 86, :_reduce_58,
 1, 86, :_reduce_none,
 3, 76, :_reduce_60,
 3, 76, :_reduce_61,
 3, 76, :_reduce_62,
 3, 76, :_reduce_63,
 3, 76, :_reduce_64,
 2, 76, :_reduce_65,
 3, 76, :_reduce_66,
 1, 76, :_reduce_67,
 1, 76, :_reduce_68,
 4, 76, :_reduce_69,
 2, 76, :_reduce_70,
 3, 73, :_reduce_71,
 3, 73, :_reduce_72,
 2, 73, :_reduce_73,
 1, 73, :_reduce_74,
 3, 87, :_reduce_75,
 3, 87, :_reduce_76,
 3, 87, :_reduce_77,
 3, 87, :_reduce_78,
 3, 87, :_reduce_79,
 3, 87, :_reduce_80,
 1, 87, :_reduce_81,
 1, 87, :_reduce_82 ]

racc_reduce_n = 83

racc_shift_n = 163

racc_action_table = [
    44,   150,    44,    35,    44,     9,    44,     8,    44,   149,
    11,    34,    88,    47,    38,    47,    38,    47,    38,    47,
    38,    47,    38,    44,    48,    44,    48,    44,    48,    44,
    48,    51,    48,    52,    39,    71,    47,    38,    47,    38,
    47,    38,    47,    38,    43,   152,    43,    48,    43,    48,
    43,    48,    43,    48,    33,    65,    33,    35,    90,    91,
    45,    37,    44,   124,    44,    61,    44,    43,    31,    43,
    31,    43,   114,    43,   151,    47,    38,    47,    38,    47,
    38,    12,    13,    44,    64,    44,    48,    44,    48,    44,
    48,    44,    39,    65,    39,    69,    47,    38,    47,    38,
    47,    38,    47,    38,    47,    38,    43,    48,    43,    48,
    43,    48,    44,    48,    53,    48,    90,    91,    45,    37,
    45,    37,   152,    59,    83,    47,    38,    43,    44,    43,
    44,    43,    58,    43,    52,    43,    48,    66,    67,    39,
    88,    47,    38,    47,    38,   121,    44,    45,    37,    30,
    68,    29,    48,   154,    48,    39,    43,   117,   111,    47,
    38,   112,    44,    45,    37,    45,    37,    76,    77,    78,
    48,    44,    43,     8,    43,    47,    38,   161,    44,     6,
    44,    45,    37,    44,    47,    38,    48,    39,    66,    67,
    43,    47,    38,    47,    38,    48,    47,    38,    12,   148,
    56,   153,    48,    57,    48,    44,    43,    48,   146,     4,
     3,   147,    44,    45,    37,    43,   nil,    44,    47,    38,
    44,    39,    43,   nil,    43,    47,    38,    43,   nil,    48,
    47,    38,   115,    47,    38,   116,    48,   nil,    44,   nil,
   nil,    48,   nil,   nil,    48,   nil,   nil,    45,    37,    43,
   nil,    47,    38,    76,    77,    78,    43,   nil,   nil,   nil,
   nil,    43,    48,   nil,    43,    76,    77,    78,    79,    80,
    76,    77,    78,    79,    80,    76,    77,    78,    79,    80,
   nil,   nil,    43,   nil,   nil,    20,   113,   nil,   nil,   nil,
    27,   118,    20,   nil,    94,    19,    21,    27,    25,   nil,
    26,   nil,    19,    21,   131,    25,   nil,    26,   135,    27,
   nil,    20,   nil,   nil,   130,   132,    27,   134,   nil,    26,
   nil,    19,    21,   131,    25,   nil,    26,   135,    27,   nil,
    20,   nil,   nil,   130,   132,    27,   134,   nil,    26,   nil,
    19,    21,   131,    25,   nil,    26,   135,    27,   nil,   nil,
   nil,   nil,   130,   132,   131,   134,   nil,    26,   135,    27,
   nil,   nil,   nil,   128,   130,   132,   nil,   134,   nil,    26,
    76,    77,    78,    79,    80,    81,    82,    72,    73,    74,
    75,    76,    77,    78,    79,    80,    76,    77,    78,    79,
    80,    76,    77,    78,    79,    80,    76,    77,    78,    79,
    80,    76,    77,    78,    79,    80,    76,    77,    78,    79,
    80,    76,    77,    78,    79,    80,    76,    77,    78,    79,
    80,    76,    77,    78,    79,    80,    76,    77,    78,    79,
    80,    76,    77,    78,    79,    80,    76,    77,    78,    79,
    80,    76,    77,    78,    79,    80 ]

racc_action_check = [
    79,   141,   161,    14,    77,     5,    76,   128,   112,   141,
     5,    14,    56,    79,    79,   161,   161,    77,    77,    76,
    76,   112,   112,    75,    79,   152,   161,    74,    77,    73,
    76,    26,   112,    26,   152,    47,    75,    75,   152,   152,
    74,    74,    73,    73,    79,   142,   161,    75,    77,   152,
    76,    74,   112,    73,    13,    40,   148,    36,    58,    58,
   152,   152,    72,   122,   114,    36,    69,    75,    13,   152,
   148,    74,    87,    73,   142,    72,    72,   114,   114,    69,
    69,     7,     7,    21,    40,    25,    72,   147,   114,    27,
    69,    57,    21,    50,    25,    43,    21,    21,    25,    25,
   147,   147,    27,    27,    57,    57,    72,    21,   114,    25,
    69,   147,    67,    27,    27,    57,   116,   116,    21,    21,
    25,    25,   145,    33,    50,    67,    67,    21,    66,    25,
    65,   147,    29,    27,    88,    57,    67,    41,    41,    65,
   146,    66,    66,    65,    65,   115,   132,    67,    67,    12,
    41,    11,    66,   145,    65,   132,    67,    93,    84,   132,
   132,    84,    38,    66,    66,    65,    65,   107,   107,   107,
   132,    78,    66,     4,    65,    38,    38,   155,    39,     3,
    51,   132,   132,    81,    78,    78,    38,    39,   144,   144,
   132,    39,    39,    51,    51,    78,    81,    81,   139,   139,
    28,   144,    39,    28,    51,    44,    38,    81,   137,     2,
     1,   137,   134,    39,    39,    78,   nil,    80,    44,    44,
    52,   134,    39,   nil,    51,   134,   134,    81,   nil,    44,
    80,    80,    92,    52,    52,    92,   134,   nil,    82,   nil,
   nil,    80,   nil,   nil,    52,   nil,   nil,   134,   134,    44,
   nil,    82,    82,   108,   108,   108,   134,   nil,   nil,   nil,
   nil,    80,    82,   nil,    52,    86,    86,    86,    86,    86,
    99,    99,    99,    99,    99,    62,    62,    62,    62,    62,
   nil,   nil,    82,   nil,   nil,    68,    86,   nil,   nil,   nil,
    68,    99,    35,   nil,    62,    68,    68,    35,    68,   nil,
    68,   nil,    35,    35,   131,    35,   nil,    35,   131,   131,
   nil,    20,   nil,   nil,   131,   131,    20,   131,   nil,   131,
   nil,    20,    20,   153,    20,   nil,    20,   153,   153,   nil,
     9,   nil,   nil,   153,   153,     9,   153,   nil,   153,   nil,
     9,     9,   150,     9,   nil,     9,   150,   150,   nil,   nil,
   nil,   nil,   150,   150,   123,   150,   nil,   150,   123,   123,
   nil,   nil,   nil,   123,   123,   123,   nil,   123,   nil,   123,
    49,    49,    49,    49,    49,    49,    49,    49,    49,    49,
    49,    89,    89,    89,    89,    89,   120,   120,   120,   120,
   120,   119,   119,   119,   119,   119,    85,    85,    85,    85,
    85,   109,   109,   109,   109,   109,    55,    55,    55,    55,
    55,   156,   156,   156,   156,   156,   100,   100,   100,   100,
   100,   101,   101,   101,   101,   101,   102,   102,   102,   102,
   102,   103,   103,   103,   103,   103,   110,   110,   110,   110,
   110,   162,   162,   162,   162,   162 ]

racc_action_pointer = [
   nil,   210,   163,   179,   121,   -29,   nil,    55,   nil,   293,
   nil,    99,    97,    23,   -27,   nil,   nil,   nil,   nil,   nil,
   274,    75,   nil,   nil,   nil,    77,     9,    81,   174,   110,
   nil,   nil,   nil,    91,   nil,   255,    27,   nil,   154,   170,
    35,   122,   nil,    71,   197,   nil,   nil,   -17,   nil,   366,
    73,   172,   212,   nil,   nil,   402,   -40,    83,    23,   nil,
   nil,   nil,   271,   nil,   nil,   122,   120,   104,   248,    58,
   nil,   nil,    54,    21,    19,    15,    -2,    -4,   163,    -8,
   209,   175,   230,   nil,   135,   392,   261,    46,   110,   377,
   nil,   nil,   209,   105,   nil,   nil,   nil,   nil,   nil,   266,
   412,   417,   422,   427,   nil,   nil,   nil,   163,   249,   397,
   432,   nil,     0,   nil,    56,   105,    81,   nil,   nil,   387,
   382,   nil,    11,   317,   nil,   nil,   nil,   nil,   -45,   nil,
   nil,   267,   138,   nil,   204,   nil,   nil,   182,   nil,   172,
   nil,   -29,    25,   nil,   173,   102,    88,    79,    25,   nil,
   305,   nil,    17,   286,   nil,   151,   407,   nil,   nil,   nil,
   nil,    -6,   437 ]

racc_action_default = [
    -3,   -83,    -9,   -83,   -83,   -83,   163,   -83,    -5,   -83,
    -1,   -83,   -83,   -83,   -83,   -36,   -38,   -42,   -39,   -37,
   -83,   -83,   -43,   -40,   -41,   -83,   -50,   -83,   -83,   -83,
    -4,    -6,    -2,   -83,   -34,   -83,   -83,   -82,   -83,   -83,
   -83,   -83,   -46,   -68,   -83,   -81,   -74,   -83,   -67,   -83,
   -83,   -83,   -83,   -59,   -57,   -58,   -83,   -83,   -83,    -7,
   -35,   -53,   -83,   -73,   -44,   -83,   -83,   -83,   -83,   -83,
   -65,   -70,   -83,   -83,   -83,   -83,   -83,   -83,   -83,   -83,
   -83,   -83,   -83,   -52,   -83,   -56,   -83,   -83,   -50,   -49,
   -15,   -14,   -83,   -83,   -66,   -45,   -72,   -71,   -47,   -83,
   -79,   -80,   -78,   -77,   -62,   -63,   -64,   -60,   -61,   -76,
   -75,   -54,   -83,   -51,   -83,   -83,   -83,   -13,   -69,   -55,
   -48,   -11,   -83,   -83,   -12,   -19,   -20,   -21,   -83,   -22,
   -16,   -83,   -83,   -23,   -83,   -17,    -8,   -83,   -18,   -83,
   -33,   -83,   -83,   -26,   -83,   -83,   -83,   -83,   -83,   -29,
   -83,   -24,   -83,   -83,   -28,   -83,   -31,   -10,   -32,   -25,
   -27,   -83,   -30 ]

racc_goto_table = [
    32,     7,    55,    63,    93,    60,   137,   129,   159,   142,
    14,   145,   136,    62,   137,   129,   133,   155,    40,    70,
   140,    36,    50,   141,   133,   123,    85,    86,    92,   137,
    96,    97,    89,   137,   129,    10,   137,   129,    98,   158,
     5,    87,   160,   133,    99,     2,   133,   100,   101,   102,
   103,   104,   105,   106,   107,   108,   109,   110,    95,    84,
    54,     1,   122,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   119,   nil,   120,
   nil,   nil,   nil,   nil,   nil,   nil,   144,   nil,   144,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   144,   nil,   nil,   nil,
   nil,   nil,   156,   nil,   nil,   139,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   157,   162 ]

racc_goto_check = [
     6,     5,    22,    19,    10,    24,    21,    15,    18,    17,
    23,    17,     9,    22,    21,    15,    16,    12,    29,    22,
     9,    23,    29,    20,    16,     8,    22,    22,     7,    21,
    33,    33,    22,    21,    15,     4,    21,    15,    24,     9,
     3,    26,     9,    16,    22,     2,    16,    22,    22,    22,
    22,    22,    22,    22,    22,    22,    22,    22,    30,    31,
    32,     1,    10,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    22,   nil,    22,
   nil,   nil,   nil,   nil,   nil,   nil,    19,   nil,    19,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    19,   nil,   nil,   nil,
   nil,   nil,    22,   nil,   nil,     5,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     6,    22 ]

racc_goto_pointer = [
   nil,    61,    45,    38,    30,    -3,   -13,   -30,   -96,  -111,
   -54,   nil,  -129,   nil,   nil,  -116,  -107,  -123,  -144,   -36,
  -108,  -117,   -25,     1,   -30,   nil,   -15,   nil,   nil,    -3,
    -7,     8,    33,   -36 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   138,   125,   126,   127,    17,    22,   nil,   143,    41,
   nil,    28,    49,   nil,    15,    16,    18,    23,    24,   nil,
    42,   nil,   nil,    46 ]

racc_token_table = {
 false => 0,
 Object.new => 1,
 :UMINUS => 2,
 :AUX => 3,
 :TkTimes => 4,
 :TkDiv => 5,
 :TkRes => 6,
 :TkPlus => 7,
 :TkMinus => 8,
 :TkGE => 9,
 :TkLE => 10,
 :TkLess => 11,
 :TkGreat => 12,
 :TkDif => 13,
 :TkSet => 14,
 :TkDisy => 15,
 :TkConj => 16,
 :TkNeg => 17,
 :VACIO1 => 18,
 :VACIO => 19,
 :TkPipe => 20,
 :TkLength => 21,
 :TkAP => 22,
 :TkCP => 23,
 :TkAC => 24,
 :TkCC => 25,
 :TkComa => 26,
 :TkPP => 27,
 :TkAsigD => 28,
 :TkAsigI => 29,
 :TkPC => 30,
 :TkArrayOf => 31,
 :TkNum => 32,
 :TkStr => 33,
 :TkMain => 34,
 :TkOut => 35,
 :TkIn => 36,
 :TkBegin => 37,
 :TkEnd => 38,
 :TkProc => 39,
 :TkAs => 40,
 :TkReturn => 41,
 :TkShow => 42,
 :TkTrue => 43,
 :TkFalse => 44,
 :TkValue => 45,
 :TkVar => 46,
 :TkSkip => 47,
 :TkIf => 48,
 :TkFi => 49,
 :TkDo => 50,
 :TkOd => 51,
 :TkId => 52,
 :UX => 53 }

racc_use_result_var = true

racc_nt_base = 54

Racc_arg = [
 racc_action_table,
 racc_action_check,
 racc_action_default,
 racc_action_pointer,
 racc_goto_table,
 racc_goto_check,
 racc_goto_default,
 racc_goto_pointer,
 racc_nt_base,
 racc_reduce_table,
 racc_token_table,
 racc_shift_n,
 racc_reduce_n,
 racc_use_result_var ]

Racc_token_to_s_table = [
'$end',
'error',
'UMINUS',
'AUX',
'TkTimes',
'TkDiv',
'TkRes',
'TkPlus',
'TkMinus',
'TkGE',
'TkLE',
'TkLess',
'TkGreat',
'TkDif',
'TkSet',
'TkDisy',
'TkConj',
'TkNeg',
'VACIO1',
'VACIO',
'TkPipe',
'TkLength',
'TkAP',
'TkCP',
'TkAC',
'TkCC',
'TkComa',
'TkPP',
'TkAsigD',
'TkAsigI',
'TkPC',
'TkArrayOf',
'TkNum',
'TkStr',
'TkMain',
'TkOut',
'TkIn',
'TkBegin',
'TkEnd',
'TkProc',
'TkAs',
'TkReturn',
'TkShow',
'TkTrue',
'TkFalse',
'TkValue',
'TkVar',
'TkSkip',
'TkIf',
'TkFi',
'TkDo',
'TkOd',
'TkId',
'UX',
'$start',
'inicio',
'dec',
'procedimiento',
'ppal',
'ID',
'tipo',
'z',
'decp',
'instsp',
'modo',
'seleccionp',
'asignacionp',
'repeticionp',
'bloquep',
'invocar',
'mostrar',
'yp',
'ifauxp',
'guardia',
'instruccionesp',
'x',
'exp',
'instrucciones',
'insts',
'seleccion',
'asignacion',
'repeticion',
'bloque',
'y',
'ifaux',
'w',
'auxmostrar',
'booleano']

Racc_debug_parser = false

##### racc system variables end #####

 # reduce 0 omitted

module_eval <<'.,.,', 'Parser.y', 41
  def _reduce_1( val, _values, result )
 result = ASTTernario.new(val[0],val[1],val[2]); 
                                    result.check();
                                   # puts "dec procedimiento ppal\n" ;
                                   # puts "\nLa tabla de simbolos es: \n"
                                    $tablaGlobal.key.each do |x| 
                                      y = $tablaGlobal.find(x)
                                   #   puts "El valor es #{x}, el simbolo es #{y}"
                                      if y.class.to_s == "SymProc"
                                   #     puts "\nLa tabla de simbolos locales del procedimiento es:.... \n"
                                        y.symtables[0].key.each do |x2|
                                          y2 = y.symtables[0].find(x2)
                                   #       puts "El valor es #{x2}, el simbolo es #{y2}"
                                        end
                                   #     puts "La tabla de simbolos locales del procedimiento termina.... \n\n"
                                      end 
                                    end;
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 46
  def _reduce_2( val, _values, result )
 val[0].insertaHijo(ASTDec.new(val[2],val[4],$tablaGlobal));
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 47
  def _reduce_3( val, _values, result )
 result = ASTMultiple.new();
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 50
  def _reduce_4( val, _values, result )
 result.insertaHijo(ASTId.new(val[2])); puts "ID -> ID , TkId(#{ val[2].value.to_s }) \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 51
  def _reduce_5( val, _values, result )
 result = ASTMultiple.new(); result.insertaHijo(ASTId.new(val[0])); puts "ID -> TkId(#{ val[0].value.to_s })\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 54
  def _reduce_6( val, _values, result )
 puts "tipo -> value\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 55
  def _reduce_7( val, _values, result )
 result = ASTNum.new(val[1]) ; puts "tipo -> array of Tknum\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 61
  def _reduce_8( val, _values, result )
 val[0].insertaHijo(ASTProc.new(val[1], val[2], val[4], val[7],val[8])); 
                                                                        puts "procedimiento -> procedimiento proc TkId(#{val[2].value}) ( z ) as dec instsp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 62
  def _reduce_9( val, _values, result )
 result = ASTMultiple.new(); puts "procedimiento -> lambda"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 65
  def _reduce_10( val, _values, result )
 val[0].insertaHijo(ASTDec.new(val[2],val[4], val[0].tablaProc));
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 66
  def _reduce_11( val, _values, result )
 result = ASTDecTotal.new();
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 70
  def _reduce_12( val, _values, result )
 val[0].insertaHijo(ASTParametros.new(val[2], ASTId.new(val[3]))); 
                                puts "z -> z , modo TkId(#{ val[3].value.to_s }) \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 73
  def _reduce_13( val, _values, result )
 result = ASTMultipleProc.new(); 
                                result.insertaHijo(ASTParametros.new(val[0],ASTId.new(val[1]))); 
                                puts "z -> modo TkId(#{ val[1].value.to_s }) \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 76
  def _reduce_14( val, _values, result )
 puts "modo -> TkIn\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 77
  def _reduce_15( val, _values, result )
 puts "modo -> TkOut\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 80
  def _reduce_16( val, _values, result )
 result = ASTUnario.new(val[0]); puts "instsp -> skip\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 81
  def _reduce_17( val, _values, result )
 result = ASTUnario.new(val[0]); puts "instsp -> TkReturn\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 82
  def _reduce_18( val, _values, result )
 puts "instsp -> seleccionp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 83
  def _reduce_19( val, _values, result )
 puts "instsp -> asignacion\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 84
  def _reduce_20( val, _values, result )
 puts "instsp -> repeticionp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 85
  def _reduce_21( val, _values, result )
 puts "instsp -> bloquep\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 86
  def _reduce_22( val, _values, result )
 puts "instsp -> invocar\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 87
  def _reduce_23( val, _values, result )
 puts "instsp -> mostrar\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 90
  def _reduce_24( val, _values, result )
 result = val[1]; puts "seleccionp -> if yp fi\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 93
  def _reduce_25( val, _values, result )
 val[0].insertaHijo(val[2]); puts "yp -> yp | aifauxp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 96
  def _reduce_26( val, _values, result )
 result = ASTMultiple.new(); 
                                            result.insertaHijo(val[0]); 
                                            puts "yp -> ifauxp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 99
  def _reduce_27( val, _values, result )
 result = ASTBinario.new(val[0], val[2]); puts "ifauxp -> guardia <- instsp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 102
  def _reduce_28( val, _values, result )
 result = val[1]; puts "repeticion -> do yp od \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 105
  def _reduce_29( val, _values, result )
 result = val[1]; puts "bloquep -> begin instruccionesp end"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 109
  def _reduce_30( val, _values, result )
 val[2].insertaHijo(ASTAsig.new(val[0],val[4])); puts "asignacionp -> x asignacionp , exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 112
  def _reduce_31( val, _values, result )
 result= ASTMultipleProc.new(); 
                                                                  result.insertaHijo(ASTAsig.new(val[0],val[2])); 
                                                                  puts "asignacion -> TkId(#{val[0].value.to_s }) <-  exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 115
  def _reduce_32( val, _values, result )
 val[0].insertaHijo(val[2]); puts "ppal -> instruccionesp ; instsp \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 118
  def _reduce_33( val, _values, result )
 result = ASTMultipleProc.new(); 
                                                      result.insertaHijo(val[0]); 
                                                      puts "instruccionesp -> instsp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 123
  def _reduce_34( val, _values, result )
 result = val[1]; puts "ppal -> main instrucciones end\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 126
  def _reduce_35( val, _values, result )
 val[0].insertaHijo(val[2]); puts "ppal -> instrucciones ; insts \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 129
  def _reduce_36( val, _values, result )
 result = ASTMultiple.new(); 
                                                        result.insertaHijo(val[0]); 
                                                        puts "instrucciones -> insts\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 132
  def _reduce_37( val, _values, result )
 result = ASTUnario.new(val[0]); puts "insts -> skip\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 133
  def _reduce_38( val, _values, result )
 puts "insts -> seleccion\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 134
  def _reduce_39( val, _values, result )
 puts "insts -> asignacion\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 135
  def _reduce_40( val, _values, result )
 puts "insts -> repeticion\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 136
  def _reduce_41( val, _values, result )
 puts "insts -> bloque\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 137
  def _reduce_42( val, _values, result )
 puts "insts -> invocar\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 138
  def _reduce_43( val, _values, result )
 puts "insts -> mostrar\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 141
  def _reduce_44( val, _values, result )
 result = val[1]; puts "seleccion -> if y fi\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 144
  def _reduce_45( val, _values, result )
 val[0].insertaHijo(val[2]);  puts "y -> y | aifaux\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 147
  def _reduce_46( val, _values, result )
 result = ASTMultiple.new(); 
                                          result.insertaHijo(val[0]); 
                                          puts "y -> ifaux\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 150
  def _reduce_47( val, _values, result )
 result = ASTBinario.new(val[0], val[2]); puts "ifaux -> guardia <- insts\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 154
  def _reduce_48( val, _values, result )
 val[2].insertaHijo(ASTAsig.new(val[0],val[4])); puts "asignacion -> x asignacion , exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 157
  def _reduce_49( val, _values, result )
 result= ASTMultiple.new(); 
                                                                result.insertaHijo(ASTAsig.new(val[0],val[2])); 
                                                                puts "asignacion -> TkId(#{val[0].value.to_s }) <-  exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 160
  def _reduce_50( val, _values, result )
 result = ASTId.new(val[0]); puts "x -> TkId[#{ val[0].value.to_s }] ,\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 161
  def _reduce_51( val, _values, result )
 result = ASTArray.new(val[0], val[2]); puts "x -> TkId[#{ val[0].value.to_s }] [exp] ,\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 164
  def _reduce_52( val, _values, result )
 result = val[0]; puts "repeticion -> do y od \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 167
  def _reduce_53( val, _values, result )
 result = val[1]; puts "bloque -> begin instrucciones end"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 170
  def _reduce_54( val, _values, result )
 result = ASTBinario.new(val[0],val[2]); puts "invocar -> TkId(#{ val[0].value.to_s }) ( w ) \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 173
  def _reduce_55( val, _values, result )
 val[0].insertaHijo(val[2]); puts " w -> w , exp \n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 176
  def _reduce_56( val, _values, result )
 result = ASTMultiple.new(); 
                                      result.insertaHijo(val[0]); 
                                      puts "w -> exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 179
  def _reduce_57( val, _values, result )
 result = val[1]; puts "mostrar -> show auxmostrar"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 183
  def _reduce_58( val, _values, result )
 puts "mostrar -> show exp"
   result
  end
.,.,

 # reduce 59 omitted

module_eval <<'.,.,', 'Parser.y', 187
  def _reduce_60( val, _values, result )
 result = ASTSuma.new(val[0], val[2]);      puts "El resultado es #{result.run($tablaGlobal)}"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 188
  def _reduce_61( val, _values, result )
 result = ASTResta.new(val[0], val[2]);     puts "exp -> exp - exp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 189
  def _reduce_62( val, _values, result )
 result = ASTMult.new(val[0], val[2]);      puts "exp -> exp * exp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 190
  def _reduce_63( val, _values, result )
 result = ASTDiv.new(val[0], val[2]);       puts "exp -> exp / exp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 191
  def _reduce_64( val, _values, result )
 result = ASTRes.new(val[0], val[2]);       puts "exp -> exp % exp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 192
  def _reduce_65( val, _values, result )
 result = ASTResUnario.new(val[1]);         puts "exp -> - exp\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 193
  def _reduce_66( val, _values, result )
 result = ASTUnario.new(val[1]);            puts "exp -> ( exp )\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 194
  def _reduce_67( val, _values, result )
 result = ASTNum.new(val[0]);            puts "exp -> TkNum(#{val[0].value.to_s })\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 195
  def _reduce_68( val, _values, result )
 result = ASTId.new(val[0]);            puts "exp -> TkId(#{val[0].value.to_s})\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 196
  def _reduce_69( val, _values, result )
 result = ASTArray.new(val[0], val[2]);     puts "exp -> TkId(#{val[0].value.to_s})[exp]\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 197
  def _reduce_70( val, _values, result )
 result = ASTLength.new(val[1]);            puts "exp -> $ TkId(#{val[0].value.to_s})\n"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 200
  def _reduce_71( val, _values, result )
 result = ASTConj.new(val[0], val[2]); puts "guardia -> guardia && booleano"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 201
  def _reduce_72( val, _values, result )
 result = ASTDisy.new(val[0], val[2]); puts "guardia -> guardia || booleano"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 202
  def _reduce_73( val, _values, result )
 result = ASTNeg.new(val[1]);          puts "guardia -> ~ guardia"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 203
  def _reduce_74( val, _values, result )
 puts "guardia -> booleano"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 206
  def _reduce_75( val, _values, result )
 result = ASTLeq.new(val[0], val[2]); puts "guardia -> exp operador exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 207
  def _reduce_76( val, _values, result )
 result = ASTGeq.new(val[0], val[2]); puts "guardia -> exp operador exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 208
  def _reduce_77( val, _values, result )
 result = ASTEqual.new(val[0], val[2]); puts "guardia -> exp operador exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 209
  def _reduce_78( val, _values, result )
 result = ASTDif.new(val[0], val[2]); puts "guardia -> exp operador exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 210
  def _reduce_79( val, _values, result )
 result = ASTLess.new(val[0], val[2]); puts "guardia -> exp operador exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 211
  def _reduce_80( val, _values, result )
 result = ASTGreat.new(val[0], val[2]); puts "guardia -> exp operador exp"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 212
  def _reduce_81( val, _values, result )
 puts "guardia -> true"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 213
  def _reduce_82( val, _values, result )
 puts "guardia -> false"
   result
  end
.,.,

 def _reduce_none( val, _values, result )
  result
 end

end   # class RubyCalcParser
