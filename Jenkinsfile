pipeline{ 
	agent any stages{ stage("Checkout"){ steps{ checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url:'https://github.com/Prabhu277/mywebpage_jenkins.git']])
                
            }
        }
        stage("Building Images")
	{ steps{ 
		sh 'docker build -t myweb .'
                
            }
            
        }
        stage("To delete the old container")
	{ steps{ 
		sh 'docker rm -f mywebimage'
                
            }
            
        }
        stage("Run the imgae"){ steps{ 
		sh 'docker run -itd --name mywebimage -p 80:80 myweb'
                
            }
            
        }
        
    }
    
}
