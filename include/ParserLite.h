// Copyright (C) 2010-2017 The Ves3D authors (see NOTICE)
// Author: Abtin Rahimian

#ifndef _PARSERLITE_H_
#define _PARSERLITE_H_

#include <fstream>
#include <iostream>
#include <cstring>

template<typename T>
T ParserLite(const char *filename);

template <typename T>
T String2Num(T &num, const string &s);

#include "ParserLite.cc"

#endif //_PARSER_LITE_H_
