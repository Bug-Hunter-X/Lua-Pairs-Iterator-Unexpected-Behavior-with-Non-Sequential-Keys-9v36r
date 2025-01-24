# Lua Pairs Iterator Unexpected Behavior with Non-Sequential Keys

This repository demonstrates a potential issue with Lua's `pairs` iterator when used with tables containing non-sequential keys.  The issue is subtle and can lead to hard-to-debug errors in applications where table key order is assumed to be consistent.