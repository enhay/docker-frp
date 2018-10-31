#!/bin/sh

model=frpc
config=/etc/frp/frpc.ini
for i in "$@"
do
case $i in
    -model=*)
    model="${i#*=}"
    shift # past argument=value
    ;;
    -config=*)
    config="${i#*=}"
    shift # past argument=value
    ;;
    --default)
    DEFAULT=YES
    shift # past argument with no value
    ;;
    *)
          # unknown option
    ;;
esac
done

echo "model is $model and config is $config"


/usr/bin/${model} -c ${config}