#include<unistd.h>
#include<stdio.h>
#include<fcntl.h>

int main()
{
    int fd;
    char buffer[80];
    char msg[50]="Hello institute";
    fd=open("check.txt",O_RDWR);
    printf("fd=%d",fd);
    if (fd!=-1){
        printf("\ncheck.txt opened with read write access\n");
        write(fd,msg,sizeof(msg));
        lseek(fd,0,SEEK_SET);
        read(fd,buffer,sizeof(msg));
        printf("\n%s was written to my file \n",buffer);
        close(fd);
    }
    return 0;
}
