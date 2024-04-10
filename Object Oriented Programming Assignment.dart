import 'dart:math';

// classes and inheritance
class Character {
  late String name;
  late int health;

  Character(this.name, this.health);

  void attack(Character opponent) {
    print('$name attacks ${opponent.name}!');
    // Simulate attack - deduct random damage from opponent's health
    int damage = Random().nextInt(10) + 1; // Random damage between 1 and 10
    opponent.health -= damage;
    print('${opponent.name} receives $damage damage.');
  }
}

class Player extends Character {
  Player(String name, int health) : super(name, health);
}

class Enemy extends Character {
  Enemy(String name, int health) : super(name, health);
}

// loop usage
class Game {
  void start() {
    var player = Player('James', 100);
    var enemy = Enemy('Goblin', 50);

    print('Welcome to the Battle Arena!');
    print('Your journey begins...');

    while (player.health > 0 && enemy.health > 0) {
      player.attack(enemy);
      if (enemy.health <= 0) {
        print('Congratulations! You defeated ${enemy.name}!');
        break;
      }

      enemy.attack(player);
      if (player.health <= 0) {
        print('Game Over! ${enemy.name} defeated you...');
        break;
      }
    }
  }
}

void main() {
  Game().start();
}
