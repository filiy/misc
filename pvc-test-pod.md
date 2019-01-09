oc run pod --overrides='
{
        "spec": {
            "containers": [
                {
                    "command": [
                        "/bin/sh",
			                  "-c",
                        "for i in `seq 1 999`; do echo pod; sleep 5; done"
                    ],
                    "name": "pod",
		                "image": "busybox",
                    "volumeMounts": [{
                        "mountPath": "/var/data",
                        "name": "data"
                    }]
                }
            ],        
            "volumes": [
                {
                    "name": "data",
                    "persistentVolumeClaim": {
                        "claimName": "pvc-name"
                    }
                }
            ]
        }
}
'  --image=notused --restart=Never
