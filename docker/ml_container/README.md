# Host ML Docker container
References:
* https://github.com/aws/amazon-sagemaker-examples/tree/master/advanced_functionality/scikit_bring_your_own
* https://aws.amazon.com/blogs/machine-learning/train-and-host-scikit-learn-models-in-amazon-sagemaker-by-building-a-scikit-docker-container/

# Build and run
```
bash build_and_run.sh
```

# Test Curl

Check healthy
```
curl http://localhost:8080/ping
```

Test inference
```
curl --header "Content-Type: application/json" \
--request POST \
--data '{"index":3}' \
http://localhost:8080/invocations
```