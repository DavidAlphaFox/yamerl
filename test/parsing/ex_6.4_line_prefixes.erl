-module('ex_6.4_line_prefixes').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        70,
        true,
        [],
        0,
        71,
        8,
        1,
        false,
        8,
        1,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,false,undefined,undefined,1,1}],
        false,
        false,
        _,
        [],
        0,
        19,
        18,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,8,1},
          {yamerl_doc_end,8,1},
          {yamerl_collection_end,8,1,block,mapping},
          {yamerl_scalar,5,8,
            {yamerl_tag,5,8,{non_specific,"!"}},
            block,literal,"text\n \tlines\n"},
          {yamerl_mapping_value,5,6},
          {yamerl_scalar,5,1,
            {yamerl_tag,5,1,{non_specific,"?"}},
            flow,plain,"block"},
          {yamerl_mapping_key,5,1},
          {yamerl_scalar,3,9,
            {yamerl_tag,3,9,{non_specific,"!"}},
            flow,double_quoted,"text lines"},
          {yamerl_mapping_value,3,7},
          {yamerl_scalar,3,1,
            {yamerl_tag,3,1,{non_specific,"?"}},
            flow,plain,"quoted"},
          {yamerl_mapping_key,3,1},
          {yamerl_scalar,1,8,
            {yamerl_tag,1,8,{non_specific,"?"}},
            flow,plain,"text lines"},
          {yamerl_mapping_value,1,6},
          {yamerl_scalar,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            flow,plain,"plain"},
          {yamerl_mapping_key,1,1},
          {yamerl_collection_start,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            block,mapping},
          {yamerl_doc_start,1,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).