/* AWS Route 53 DNS Zones */
resource "aws_route53_zone" "primary" {
   name = "aaronzirbes.com"
}

/* Register the frontend's IP address for paula page */
resource "aws_route53_record" "paulabean" {
   zone_id = "${aws_route53_zone.primary.zone_id}"
   name = "paulabean.${aws_route53_zone.primary.name}"
   type = "A"
   ttl = "30"

   records = ["${aws_instance.funserver.public_ip}"]
}
