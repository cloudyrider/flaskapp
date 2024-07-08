pipeline { 
    agent any
    environment { 
        NEW_VERSION = '1.0.0' 
    } 
    stages { 
        stage("build") { 
            steps { 
                echo 'building the application...' 
                echo "building version ${NEW_VERSION}" 
            } 
        } 
        stage("test") { 
            steps { 
                echo 'testing the application...' 
            } 
        } 
        stage("deploy") { 
            steps { 
                echo 'deploying the application...' 
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'admin_user_credentials', usernameVariable: 'USER', passwordVariable: 'PWD' ]]) { 
                    sh 'echo "Deploying with credentials"' 
                    // 실제 배포 명령어가 여기 포함되어야 합니다.
                } 
            } 
        } 
    } 
}
