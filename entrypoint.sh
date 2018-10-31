#!/bin/sh

model=frps
config=/etc/frp/frps.ini
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

echo "model is $model config is $config"

/etc/frp/${model} -c ${config}