
import time

# Funciones simuladas para cada paquete de animaciones
def zombie_animation_pack():
    print("Reproduciendo: Zombie Animation Pack...")
    time.sleep(2)  # Simula la duración de la animación

def zombii_pack():
    print("Reproduciendo: Paquete de animaciones de zombi...")
    time.sleep(2)

def robot_pack():
    print("Reproduciendo: Paquete de animaciones de robot...")
    time.sleep(2)

def old_school_pack():
    print("Reproduciendo: Paquete de animaciones de la vieja escuela...")
    time.sleep(2)

def styles_pack():
    print("Reproduciendo: Paquete de animaciones de estilos...")
    time.sleep(2)

def comics_pack():
    print("Reproduciendo: Paquete de animaciones de cómics...")
    time.sleep(2)

def catwalk_glam():
    print("Reproduciendo: Catwalk Glam Animation Pack por e.l.f...")
    time.sleep(2)

def adidas_sports():
    print("Reproduciendo: Paquete de Animación Deportiva adidas...")
    time.sleep(2)

def amazon_unboxed():
    print("Reproduciendo: Paquete de Animación Amazon Unboxed...")
    time.sleep(2)

def no_boundaries():
    print("Reproduciendo: No Boundaries Animation Pack por Walmart...")
    time.sleep(2)

def elf_bold():
    print("Reproduciendo: Paquete de animación en negrita de e.l.f...")
    time.sleep(2)

def wizard_pack():
    print("Reproduciendo: Paquete de animaciones de mago...")
    time.sleep(2)

def toy_pack():
    print("Reproduciendo: Paquete de animaciones de juguete...")
    time.sleep(2)

def community_adidas():
    print("Reproduciendo: Paquete de Animación de la Comunidad adidas...")
    time.sleep(2)

def aura_adidas():
    print("Reproduciendo: Paquete de animación de aura adidas...")
    time.sleep(2)

# Menú principal
while True:
    print("\n=== NEXA HUB by Cristhian ===")
    print("Selecciona una animación para reproducir:")
    print("1. Zombie Animation Pack")
    print("2. Paquete de animaciones de zombi")
    print("3. Paquete de animaciones de robot")
    print("4. Paquete de animaciones de la vieja escuela")
    print("5. Paquete de animaciones de estilos")
    print("6. Paquete de animaciones de cómics")
    print("7. Catwalk Glam Animation Pack por e.l.f")
    print("8. Paquete de Animación Deportiva adidas")
    print("9. Paquete de Animación Amazon Unboxed")
    print("10. No Boundaries Animation Pack por Walmart")
    print("11. Paquete de animación en negrita de e.l.f")
    print("12. Paquete de animaciones de mago")
    print("13. Paquete de animaciones de juguete")
    print("14. Paquete de Animación de la Comunidad adidas")
    print("15. Paquete de animación de aura adidas")
    print("16. Salir")
    opcion = input("Opción: ")

    if opcion == '1':
        zombie_animation_pack()
    elif opcion == '2':
        zombii_pack()
    elif opcion == '3':
        robot_pack()
    elif opcion == '4':
        old_school_pack()
    elif opcion == '5':
        styles_pack()
    elif opcion == '6':
        comics_pack()
    elif opcion == '7':
        catwalk_glam()
    elif opcion == '8':
        adidas_sports()
    elif opcion == '9':
        amazon_unboxed()
    elif opcion == '10':
        no_boundaries()
    elif opcion == '11':
        elf_bold()
    elif opcion == '12':
        wizard_pack()
    elif opcion == '13':
        toy_pack()
    elif opcion == '14':
        community_adidas()
    elif opcion == '15':
        aura_adidas()
    elif opcion == '16':
        print("¡Hasta luego!")
        break
    else:
        print("Opción inválida, intenta de nuevo.")
