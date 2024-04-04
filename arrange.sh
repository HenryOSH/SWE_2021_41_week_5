#!/bin/bash

# 'files' 디렉토리로 이동
cd files

# 모든 파일을 순회
for file in *; do
  # 파일 이름의 첫 글자를 소문자로 변환하여 폴더 이름으로 지정
  folder=$(echo $file | cut -c1 | tr '[:upper:]' '[:lower:]')
  
  # 해당 폴더가 없으면 생성
  if [ ! -d "../$folder" ]; then
    mkdir "../$folder"
  fi
  
  # 파일을 해당 폴더로 이동
  mv "$file" "../$folder/"
done

