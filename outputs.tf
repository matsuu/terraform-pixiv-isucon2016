output "benchmark" {
    value = "ssh admin@${aws_spot_instance_request.bench.public_ip} -- /opt/go/bin/benchmarker -t http://${aws_spot_instance_request.web.private_ip}/ -u /opt/go/src/github.com/catatsuy/private-isu/benchmarker/userdata"
}

output "http" {
    value = "http://${aws_spot_instance_request.web.public_ip}/"
}

output "private_ip(bench)" {
    value = "${aws_spot_instance_request.bench.private_ip}"
}

output "private_ip(web)" {
    value = "${aws_spot_instance_request.web.private_ip}"
}

output "public_ip(bench)" {
    value = "${aws_spot_instance_request.bench.public_ip}"
}

output "public_ip(web)" {
    value = "${aws_spot_instance_request.web.public_ip}"
}

output "ssh(bench)" {
    value = "ssh admin@${aws_spot_instance_request.bench.public_ip}"
}

output "ssh(web)" {
    value = "ssh admin@${aws_spot_instance_request.web.public_ip}"
}
