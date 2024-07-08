pipeline {
	agent any
	stages {
		stage("build") {
			when {
				expression {
					env.GIT_BRANCH == 'origin/main'
				}
			}
			steps {
				echo 'building the application...'
			}
		}
		stage("test") {
			when {
				expression {
					env.GIT_BRANCH == 'origin/test' || env.GIT_BRANCH == ''
				}
			}
			steps {
				echo 'testing the application...'
			}
		}
		stage("deploy") {
			steps {
				echo 'deplying the application...'
			}
		}
	}
}
