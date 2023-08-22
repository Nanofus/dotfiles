# Swap rightmost Cmd and Opt
hidutil property --set '{"UserKeyMapping":
    [{"HIDKeyboardModifierMappingSrc":0x700000039,
      "HIDKeyboardModifierMappingDst":0x70000002A},
     {"HIDKeyboardModifierMappingSrc":0x7000000e7,
      "HIDKeyboardModifierMappingDst":0x7000000e6},
     {"HIDKeyboardModifierMappingSrc":0x7000000e6,
      "HIDKeyboardModifierMappingDst":0x7000000e7}]
}'
