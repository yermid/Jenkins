pipeline {
  agent any

  environment {
    FILECOPY_PASS = credentials('smb_pass')
  }

  stages {
    stage('List SMB content') {
      steps {
        sh '''
          pwsh ./scripts/List-SmbContent.ps1 \
            -SmbPath "\\\\DEVSRV01\\Distribution Kits$" \
            -Username "DOMAIN\\\\UserCopy"
        '''
      }
    }
  }
}
