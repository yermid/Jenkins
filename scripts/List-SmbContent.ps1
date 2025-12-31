pipeline {
  agent any

  environment {
    FILECOPY_PASS = credentials('smb_pass')   // ID של ה-Secret Text
  }

  stages {
    stage('List SMB') {
      steps {
        sh '''
          pwsh ./scripts/List-SmbContent.ps1 \
            -SmbPath "\\\\DEVSRV01\\Distribution Kits$" \
            -Username "DOMAIN\\\\UserCopy" \
            -SubDir "/"
        '''
      }
    }
  }
}
