import pygame

pygame.init()

screen = pygame.display.set_mode((800, 600))
pygame.display.set_caption("Space Invador")

clock = pygame.time.Clock()
while True:
  for event in pygame.event.get():
    if event == pygame.QUIT:
      pygame.quit()
  
  screen.fill((255, 255, 255))

  pygame.display.update()
  clock.tick(10)


