for i in 1 2 3
do
    echo "Running for $i time"
    OUTPUT=$(F_USERNAME=$1 F_PASSWORD=$2 nightwatch tests/login.js)
      if echo "$OUTPUT" | grep -q "OK."; then
        echo "All OK";
        break
    else
        echo "test failed:\n $OUTPUT";
    fi
done
