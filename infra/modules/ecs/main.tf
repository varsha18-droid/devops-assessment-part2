resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "this" {
  family                   = var.task_family
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"

  cpu    = var.cpu
  memory = var.memory

  container_definitions = jsonencode([
    {
      name  = "app"
      image = var.image
      essential = true
      portMappings = [{
        containerPort = 80
      }]
    }
  ])
}
