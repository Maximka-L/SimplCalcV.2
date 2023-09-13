# ViewController

Этот класс реализует UI-компонент, вероятно, для калькулятора. Вот его основные части:

## Свойства

- **display (UITextField)**: Текстовое поле для отображения числового ввода или вывода.
- **displayView (UIView)**: Контейнерное представление для `display`.
- **mainVStack (UIStackView)**: Вертикальное представление стека для размещения `displayView` и кнопок.
- **service**: Опциональное свойство для службы `CalcService`.

## Жизненный цикл

- **viewDidLoad()**: 
  - Инициализация `CalcService`.
  - Установка красного фона для view.
  - Конфигурация внешнего вида интерфейса.

### Обновление интерфейса

- **updateDisplay(text: String)**: Выводит текст в консоль.

## Приватные методы для настройки UI

### configureAppearance()

Общий метод для настройки UI.

### setupMainVstack()

Настраивает основной вертикальный стек `mainVStack`.

### setupDisplayView()

Устанавливает параметры `displayView` и `display`.

### setupButtons()

Создает и размещает ряды кнопок.

### createButton(order: Int, title: String, tag: Int) -> UIButton

Создает кнопку с заданными параметрами.

### createHStack(yPosition: Int) -> UIStackView

Создает горизонтальный стек для размещения ряда кнопок.
