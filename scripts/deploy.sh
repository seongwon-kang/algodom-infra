#!/bin/bash

# 네임스페이스 생성
kubectl apply -f kubernetes/namespace.yaml

# 공통 리소스 배포
kubectl apply -f kubernetes/common/

# 각 서비스 배포
kubectl apply -f kubernetes/frontend/
kubectl apply -f kubernetes/backend/
kubectl apply -f kubernetes/langchain/