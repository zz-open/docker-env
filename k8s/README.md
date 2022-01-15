#学习Kubernates

1.脚本

    1.网址:https://www.katacoda.com
    2.token.sh脚本用来获取访问dashbord的token
    3.kubectl -n kube-system describe $(kubectl -n kube-system get secret -n kube-system -o name | grep namespace) | grep token