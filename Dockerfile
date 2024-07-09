FROM python:3.8

WORKDIR /app

# 환경 변수 설정
ENV PYTHONUNBUFFERED=1
ENV PYTHONWARNINGS="ignore:ResourceWarning"

# requirements.txt 파일 복사 및 의존성 설치
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# 애플리케이션 파일 복사
COPY . .

# 포트 노출
EXPOSE 5000

# Flask 애플리케이션 실행
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
