Paperclip::Attachment.default_options[:url] = ':producthunt-clone.s3.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 'apigateway.us-east-2.amazonaws.com'
