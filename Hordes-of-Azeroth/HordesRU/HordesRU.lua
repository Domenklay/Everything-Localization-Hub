-- HordesRU v1.3 (post-load, safe addon for Hordes of Azeroth 0.6.x)
-- This addon never changes WoW.exe, any original TOC, addon or server file.
local dict = {
    ["  ·  AoE"] = "  ·  По области",
    [" (at cap)"] = " (предел)",
    [" Darkmoon Card"] = " карта Новолуния",
    [" Darkmoon Ticket"] = " билет Новолуния",
    [" Darkmoon Tickets"] = " билеты Новолуния",
    [" Evolution"] = " Эволюция",
    [" Glyph"] = " Символ",
    [" Mastery"] = " Мастерство",
    [" Talent point"] = " очко талантов",
    [" Talent points"] = " очки талантов",
    [" and "] = " и ",
    [" charges"] = " зарядов",
    [" damage"] = " урона",
    [" experience"] = " опыта",
    [" health"] = " здоровья",
    [" kills"] = " убийств",
    [" or "] = " или ",
    [" points"] = " очков",
    [" stack"] = " эффект",
    [" stacks"] = " эффектов",
    [" starting spell"] = " начальное заклинание",
    [" yards away"] = " ярдов",
    [" yd"] = " ярд.",
    ["A big enemy with four times the health that hits twice as hard."] = "Крупный враг с четырёхкратным запасом здоровья и двойным уроном.",
    ["A stronger version of a regular enemy, with more health and harder hits."] = "Усиленная версия обычного врага: больше здоровья и урона.",
    ["Absorb"] = "Поглощение",
    ["Absorbed"] = "Поглощено",
    ["Absorbs damage equal to %s of maximum health."] = "Поглощает урон в размере %s от максимального здоровья.",
    ["Accept"] = "Принять",
    ["Accessories"] = "Аксессуары",
    ["Account"] = "Аккаунт",
    ["Active. Talent changes save here."] = "Активно. Изменения талантов сохраняются здесь.",
    ["Adjust"] = "Настроить",
    ["Affixes"] = "Модификаторы",
    ["Affliction"] = "Колдовство",
    ["Agony"] = "Агония",
    ["Aimed Shot"] = "Прицельный выстрел",
    ["All"] = "Все",
    ["All Game Settings"] = "Все настройки игры",
    ["All classes"] = "Все классы",
    ["All your ban slots are in use ("] = "Все ячейки блокировки заняты (",
    ["Allow duplicate classes"] = "Разрешить одинаковые классы",
    ["Always"] = "Всегда",
    ["Always yours"] = "Навсегда ваше",
    ["Ambience Volume"] = "Громкость окружения",
    ["Ambush"] = "Внезапный удар",
    ["Any {1} zone, picked when the run starts"] = "Любая зона {1}, выбирается в начале забега",
    ["AoE"] = "Урон по области",
    ["Appearance"] = "Внешность",
    ["Applied by "] = "Накладывается: ",
    ["Arathi Highlands"] = "Нагорье Арати",
    ["Arcane"] = "Тайная магия",
    ["Arcane Explosion"] = "Чародейский взрыв",
    ["Arcane Missiles"] = "Чародейские стрелы",
    ["Arcane Shot"] = "Чародейский выстрел",
    ["Area"] = "Область",
    ["Armor"] = "Броня",
    ["Armor past 300 gives {1} maximum health."] = "Броня сверх 300 даёт {1} к максимальному здоровью.",
    ["Arms"] = "Оружие",
    ["Assassination"] = "Ликвидация",
    ["Auto-accept join requests"] = "Автоматически принимать запросы",
    ["Automatic"] = "Автоматически",
    ["Automatic follows the controller you pick up"] = "Автоматически переключается на используемый контроллер",
    ["Automatically open chests when you walk up to them"] = "Автоматически открывать сундуки при приближении",
    ["Back"] = "Назад",
    ["Bad luck protection"] = "Защита от невезения",
    ["Bad luck protection adds {1}% until an epic drops."] = "Защита от невезения повышает шанс на {1}% до выпадения эпического предмета.",
    ["Badlands"] = "Бесплодные земли",
    ["Balance"] = "Баланс",
    ["Ban slots"] = "Ячейки блокировки",
    ["Bank"] = "Банк",
    ["Banned. It won't turn up in runs."] = "Заблокировано. Не появится в забегах.",
    ["Bear Form"] = "Облик медведя",
    ["Beast Mastery"] = "Повелитель зверей",
    ["Being revived..."] = "Воскрешение...",
    ["Best finale: {1} survived, score {2}."] = "Лучший финал: выживание {1}, счёт {2}.",
    ["Best level"] = "Лучший уровень",
    ["Blade Flurry"] = "Шквал клинков",
    ["Bleed"] = "Кровотечение",
    ["Bleed damage"] = "Урон от кровотечения",
    ["Bleeding"] = "Кровотечение",
    ["Blessing"] = "Благословение",
    ["Blink"] = "Скачок",
    ["Blizzard"] = "Снежная буря",
    ["Block"] = "Блокирование",
    ["Bloodthirst"] = "Кровожадность",
    ["Blue gear"] = "Синяя экипировка",
    ["Boss attacks"] = "Атаки босса",
    ["Boss drops legendary"] = "Босс роняет легендарное снаряжение",
    ["Both"] = "Оба",
    ["Browse Games"] = "Найти игры",
    ["Bruiser"] = "Громила",
    ["Buff Durations"] = "Длительность эффектов",
    ["Burning"] = "Горение",
    ["Burning Steppes"] = "Пылающие степи",
    ["Burning damage"] = "Урон от горения",
    ["Button prompts"] = "Подсказки кнопок",
    ["Buttons"] = "Кнопки",
    ["Buy"] = "Купить",
    ["Buy a ban slot: {1} tickets"] = "Купить ячейку блокировки: {1} билетов",
    ["Buy back"] = "Выкупить",
    ["Buy rank {1} of {2} from Sayge at the Inn to unlock it."] = "Купите у Сайги в таверне ранг {1} из {2}, чтобы открыть.",
    ["Buyback"] = "Выкуп",
    ["Call Pet"] = "Призыв питомца",
    ["Camera"] = "Камера",
    ["Camera Following Style"] = "Режим следования камеры",
    ["Camera turn speed"] = "Скорость поворота камеры",
    ["Camera up and down speed"] = "Скорость вертикального движения камеры",
    ["Can't connect to the co-op service. Try again later."] = "Не удалось подключиться к сервису совместной игры. Повторите попытку позже.",
    ["Can't reach the host. Returning to your own game..."] = "Не удаётся связаться с хостом. Возвращение в вашу игру...",
    ["Cancel"] = "Отмена",
    ["Capturing"] = "Захват",
    ["Card bans"] = "Запреты карт",
    ["Card buttons"] = "Кнопки карт",
    ["Caster aim"] = "Наведение заклинаний",
    ["Cat Form"] = "Облик кошки",
    ["Chain Lightning"] = "Цепная молния",
    ["Challenge"] = "Испытание",
    ["Change"] = "Изменить",
    ["Character"] = "Персонаж",
    ["Character and bags"] = "Персонаж и сумки",
    ["Characters"] = "Персонажи",
    ["Chest"] = "Сундук",
    ["Chests"] = "Сундуки",
    ["Chill"] = "Охлаждение",
    ["Chilled"] = "Охлаждён",
    ["Choose"] = "Выбрать",
    ["Choose a Darkmoon Card"] = "Выберите карту Новолуния",
    ["Choose a Glyph"] = "Выберите символ",
    ["Choose a blessing"] = "Выберите благословение",
    ["Choose a reward"] = "Выберите награду",
    ["Choose a stat to reroll:"] = "Выберите характеристику для переброса:",
    ["Choose a stat:"] = "Выберите характеристику:",
    ["Choose an enchant for your {1}:"] = "Выберите зачарование для {1}:",
    ["Choose an upgrade"] = "Выберите улучшение",
    ["Choose one"] = "Выберите один вариант",
    ["Choose your character"] = "Выберите персонажа",
    ["Class"] = "Класс",
    ["Class Mastery"] = "Мастерство класса",
    ["Classes"] = "Классы",
    ["Claw."] = "Цапнуть.",
    ["Clear {1} first."] = "Сначала пройдите {1}.",
    ["Cleared"] = "Пройдено",
    ["Clearing this level opens the next one."] = "Прохождение этого уровня откроет следующий.",
    ["Cleave"] = "Рассекающий удар",
    ["Close"] = "Закрыть",
    ["Close Lobby"] = "Закрыть лобби",
    ["Co-op"] = "Совместная игра",
    ["Co-op Games"] = "Совместные игры",
    ["Co-op isn't available in this build."] = "Совместная игра недоступна в этой сборке.",
    ["Combat"] = "Бой",
    ["Common"] = "Обычный",
    ["Confirm"] = "Подтвердить",
    ["Connect"] = "Подключиться",
    ["Connecting to host..."] = "Подключение к хосту...",
    ["Connecting..."] = "Подключение...",
    ["Connection to host lost. Reconnecting..."] = "Соединение с хостом потеряно. Переподключение...",
    ["Consecration"] = "Освящение",
    ["Cooldown"] = "Перезарядка",
    ["Cooldown Numbers"] = "Числа перезарядки",
    ["Corruption"] = "Порча",
    ["Could not read the class of {1}."] = "Не удалось определить класс {1}.",
    ["Couldn't join the host's game."] = "Не удалось подключиться к игре хоста.",
    ["Create"] = "Создать",
    ["Create a {1}"] = "Создать {1}",
    ["Create a {1} first."] = "Сначала создайте {1}.",
    ["Create {1}"] = "Создать {1}",
    ["Creating your character..."] = "Создание персонажа...",
    ["Crusader Strike"] = "Удар воина Света",
    ["Curse of Agony"] = "Проклятие агонии",
    ["Damage"] = "Урон",
    ["Damage Meter"] = "Измеритель урона",
    ["Damage Taken Numbers"] = "Числа полученного урона",
    ["Darkmoon Card"] = "Карта Новолуния",
    ["Darkmoon Cards"] = "Карты Новолуния",
    ["Darkmoon Ticket"] = "Билет Новолуния",
    ["Darkmoon Tickets"] = "Билеты Новолуния",
    ["Dash"] = "Рывок",
    ["Database error: {1}"] = "Ошибка базы данных: {1}",
    ["Deadly Poison"] = "Смертельный яд",
    ["Death"] = "Смерть",
    ["Decay"] = "Разложение",
    ["Decline"] = "Отклонить",
    ["Deep Wounds"] = "Глубокие раны",
    ["Delete"] = "Удалить",
    ["Delete character"] = "Удалить персонажа",
    ["Demonology"] = "Демонология",
    ["Desolace"] = "Пустоши",
    ["Destruction"] = "Разрушение",
    ["Difficulty"] = "Сложность",
    ["Discipline"] = "Послушание",
    ["Divine Shield"] = "Божественный щит",
    ["Divine Storm"] = "Божественная буря",
    ["Done"] = "Готово",
    ["Drain Life"] = "Похищение жизни",
    ["Druid"] = "Друид",
    ["Dun Morogh"] = "Дун Морог",
    ["Dungeon"] = "Подземелье",
    ["Duplicate classes allowed"] = "Одинаковые классы разрешены",
    ["Duration"] = "Длительность",
    ["Duskwood"] = "Сумеречный лес",
    ["Dwarf"] = "Дворф",
    ["Earth Shock"] = "Земной шок",
    ["Eastern Plaguelands"] = "Восточные Чумные земли",
    ["Edit"] = "Изменить",
    ["Effects"] = "Эффекты",
    ["Elemental"] = "Стихии",
    ["Elite"] = "Элитный",
    ["Elites"] = "Элитные",
    ["Enemies"] = "Враги",
    ["Enemy"] = "Враг",
    ["Enemy Nameplates"] = "Индикаторы здоровья врагов",
    ["Enhancement"] = "Совершенствование",
    ["Entangling Roots"] = "Гнев деревьев",
    ["Enter a name for your character"] = "Введите имя персонажа",
    ["Enter password for \\\"{1}\\\"."] = "Введите пароль для \\\"{1}\\\".",
    ["Enter your friend's game code."] = "Введите код игры друга.",
    ["Entering the world..."] = "Вход в мир...",
    ["Envenom"] = "Отравление",
    ["Epic"] = "Эпический",
    ["Equip"] = "Надеть",
    ["Equipment"] = "Экипировка",
    ["Equipped"] = "Надето",
    ["Evasion"] = "Ускользание",
    ["Eviscerate"] = "Потрошение",
    ["Evolution"] = "Эволюция",
    ["Evolutions"] = "Эволюции",
    ["Execute"] = "Казнь",
    ["Exit"] = "Выход",
    ["Exorcism"] = "Экзорцизм",
    ["Experience"] = "Опыт",
    ["Explosive Trap"] = "Взрывная ловушка",
    ["Extract"] = "Извлечь",
    ["Face"] = "Лицо",
    ["Facial Hair"] = "Растительность на лице",
    ["Failed"] = "Неудача",
    ["Fan of Knives"] = "Веер клинков",
    ["Felwood"] = "Осквернённый лес",
    ["Female"] = "Женский",
    ["Feral"] = "Сила зверя",
    ["Feral Spirit"] = "Дух дикого зверя",
    ["Feralas"] = "Фералас",
    ["Filters"] = "Фильтры",
    ["Filters ({1})"] = "Фильтры ({1})",
    ["Fire"] = "Огонь",
    ["Fire Blast"] = "Огненный взрыв",
    ["Fire damage over time."] = "Периодический урон от огня.",
    ["Fireball"] = "Огненный шар",
    ["Frost"] = "Лёд",
    ["Frost Nova"] = "Кольцо льда",
    ["Frostbolt"] = "Ледяная стрела",
    ["Game"] = "Игра",
    ["Game Settings"] = "Настройки игры",
    ["Game code"] = "Код игры",
    ["Gear"] = "Снаряжение",
    ["General"] = "Общие",
    ["Glyph"] = "Символ",
    ["Glyphs"] = "Символы",
    ["Gold"] = "Золото",
    ["Green gear"] = "Зелёная экипировка",
    ["Guild"] = "Гильдия",
    ["Heal"] = "Исцеление",
    ["Healing"] = "Исцеление",
    ["Health"] = "Здоровье",
    ["Health Bar Numbers"] = "Числа на полосах здоровья",
    ["Heroic"] = "Героический",
    ["Hidden"] = "Скрыто",
    ["High"] = "Высоко",
    ["Holy"] = "Свет",
    ["Holy Light"] = "Свет небес",
    ["How many of your group's spell effects you see. Lower it when the screen gets too busy. Your own effects always show."] = "Количество отображаемых эффектов группы. Уменьшите, если экран перегружен. Свои эффекты видны всегда.",
    ["Human"] = "Человек",
    ["Hunter"] = "Охотник",
    ["Immolation"] = "Жертвенный огонь",
    ["Imp"] = "Бес",
    ["In progress"] = "В процессе",
    ["Inn"] = "Таверна",
    ["Inspect"] = "Осмотреть",
    ["Inspect talents (in a run)"] = "Просмотр талантов (в забеге)",
    ["Interact"] = "Взаимодействие",
    ["Interface"] = "Интерфейс",
    ["Interface Options"] = "Настройки интерфейса",
    ["Inventory"] = "Инвентарь",
    ["Invite"] = "Пригласить",
    ["Item"] = "Предмет",
    ["Items"] = "Предметы",
    ["Join"] = "Присоединиться",
    ["Judgement"] = "Правосудие",
    ["Key Bindings"] = "Назначение клавиш",
    ["Killing Spree"] = "Череда убийств",
    ["Kills"] = "Убийства",
    ["Language"] = "Язык",
    ["Later"] = "Позже",
    ["Leaderboard"] = "Таблица лидеров",
    ["Legendary"] = "Легендарный",
    ["Level"] = "Уровень",
    ["Level Up"] = "Новый уровень",
    ["Level up"] = "Новый уровень",
    ["Level {1}"] = "Уровень {1}",
    ["Lightning Bolt"] = "Молния",
    ["Load"] = "Загрузить",
    ["Locked"] = "Заблокировано",
    ["Loot"] = "Добыча",
    ["Low"] = "Низкий",
    ["Mage"] = "Маг",
    ["Mail"] = "Почта",
    ["Mailbox"] = "Почтовый ящик",
    ["Main Menu"] = "Главное меню",
    ["Male"] = "Мужской",
    ["Map"] = "Карта",
    ["Master Volume"] = "Общая громкость",
    ["Mastery"] = "Мастерство",
    ["Maul."] = "Трепка.",
    ["Max Camera Distance"] = "Максимальное удаление камеры",
    ["Max enemies"] = "Максимум врагов",
    ["Max health"] = "Максимум здоровья",
    ["Max level"] = "Максимальный уровень",
    ["Max rank"] = "Максимальный ранг",
    ["Maximum health"] = "Максимальное здоровье",
    ["Melee"] = "Ближний бой",
    ["Menu"] = "Меню",
    ["Mini-boss"] = "Мини-босс",
    ["Mini-bosses"] = "Мини-боссы",
    ["Minor"] = "Малый",
    ["Miss"] = "Промах",
    ["Moonfire"] = "Лунный огонь",
    ["Moonkin Form"] = "Облик лунного совуха",
    ["More"] = "Ещё",
    ["Move"] = "Движение",
    ["Move cursor"] = "Двигать курсор",
    ["Movement speed"] = "Скорость передвижения",
    ["Music Volume"] = "Громкость музыки",
    ["Mythic"] = "Эпохальный",
    ["NPC Names"] = "Имена НИП",
    ["Nature"] = "Природа",
    ["Nature Vulnerability"] = "Уязвимость к природе",
    ["Nature damage over time."] = "Периодический урон от сил природы.",
    ["Nature damage when the stacks discharge."] = "Урон от сил природы при разрядке эффектов.",
    ["Necks"] = "Ожерелья",
    ["Never"] = "Никогда",
    ["New"] = "Новое",
    ["Next"] = "Далее",
    ["Next chest: {1} Valor"] = "Следующий сундук: {1} доблести",
    ["Next rank:"] = "Следующий ранг:",
    ["No"] = "Нет",
    ["No clears on this level yet."] = "Этот уровень пока не пройден.",
    ["Normal"] = "Обычный",
    ["Off"] = "Выкл.",
    ["Okay"] = "ОК",
    ["On"] = "Вкл.",
    ["Open"] = "Открыть",
    ["Open chests, vaults and hidden finds"] = "Открыть сундуки, хранилища и тайники",
    ["Options"] = "Настройки",
    ["Orc"] = "Орк",
    ["Other players' spell effects"] = "Эффекты заклинаний других игроков",
    ["Paladin"] = "Паладин",
    ["Party"] = "Группа",
    ["Party Health Bars"] = "Полосы здоровья группы",
    ["Pause"] = "Пауза",
    ["People"] = "Персонажи",
    ["Physical"] = "Физический",
    ["Physical damage over time."] = "Периодический физический урон.",
    ["Play"] = "Играть",
    ["Player"] = "Игрок",
    ["Player Names"] = "Имена игроков",
    ["Poison"] = "Яд",
    ["Portals"] = "Порталы",
    ["Priest"] = "Жрец",
    ["Progress"] = "Прогресс",
    ["Quest"] = "Задание",
    ["Quests"] = "Задания",
    ["Quit"] = "Выйти",
    ["Race"] = "Раса",
    ["Rain of Fire"] = "Огненный ливень",
    ["Rank"] = "Ранг",
    ["Ranks"] = "Ранги",
    ["Rare"] = "Редкий",
    ["Read your mail"] = "Прочесть почту",
    ["Reload"] = "Перезагрузить",
    ["Reload UI"] = "Перезагрузить интерфейс",
    ["Reload the interface to show it in the new language?"] = "Перезагрузить интерфейс для применения нового языка?",
    ["Requirements"] = "Требования",
    ["Reset"] = "Сбросить",
    ["Resist"] = "Сопротивление",
    ["Restoration"] = "Исцеление",
    ["Retribution"] = "Воздаяние",
    ["Retry"] = "Повторить",
    ["Reward"] = "Награда",
    ["Rewards"] = "Награды",
    ["Rockbiter Weapon"] = "Оружие Камнедробителя",
    ["Rogue"] = "Разбойник",
    ["Run"] = "Забег",
    ["Run Master"] = "Мастер забегов",
    ["Save"] = "Сохранить",
    ["Settings"] = "Настройки",
    ["Shadow"] = "Тьма",
    ["Shadow Bolt"] = "Стрела Тьмы",
    ["Shadow Word: Pain"] = "Слово Тьмы: Боль",
    ["Shadow damage over time that grows."] = "Нарастающий периодический урон от магии Тьмы.",
    ["Shadow damage over time."] = "Периодический урон от магии Тьмы.",
    ["Shaman"] = "Шаман",
    ["Shield"] = "Щит",
    ["Shows health bars over enemies near you."] = "Показывает полосы здоровья ближайших врагов.",
    ["Shows health bars over your party members during a run. They're always hidden in town."] = "Показывает полосы здоровья союзников во время забега. В городе они скрыты.",
    ["Shows how much damage each of your spells has done this run."] = "Показывает урон каждого заклинания за текущий забег.",
    ["Shows the damage you take as numbers beside your character."] = "Показывает полученный урон числами рядом с персонажем.",
    ["Shows the seconds left on spells with a cooldown of 2 seconds or more."] = "Показывает оставшиеся секунды перезарядки для заклинаний с восстановлением от 2 секунд.",
    ["Shows your health as numbers on your health bars."] = "Показывает здоровье числами на полосах здоровья.",
    ["Shred"] = "Полоснуть",
    ["Shrines"] = "Святилища",
    ["Silverpine Forest"] = "Серебряный бор",
    ["Skip"] = "Пропустить",
    ["Slots"] = "Ячейки",
    ["Smart"] = "Умный",
    ["Smite"] = "Кара",
    ["Sound Options"] = "Настройки звука",
    ["Sound Volume"] = "Громкость звуков",
    ["Speed"] = "Скорость",
    ["Spell"] = "Заклинание",
    ["Spellbook"] = "Книга заклинаний",
    ["Spells"] = "Заклинания",
    ["Spirit"] = "Дух",
    ["Stage"] = "Этап",
    ["Stages"] = "Этапы",
    ["Starting spell"] = "Начальное заклинание",
    ["Static"] = "Статика",
    ["Stats"] = "Характеристики",
    ["Step through portals"] = "Войти в порталы",
    ["Stormstrike"] = "Удар бури",
    ["Stranglethorn Vale"] = "Тернистая долина",
    ["Succubus"] = "Суккуб",
    ["Survival"] = "Выживание",
    ["Talent"] = "Талант",
    ["Talent point"] = "Очко талантов",
    ["Talent points"] = "Очки талантов",
    ["Talents"] = "Таланты",
    ["Talk, shop and bank"] = "Разговоры, торговля и банк",
    ["Tauren"] = "Таурен",
    ["The Barrens"] = "Степи",
    ["The Inn"] = "Таверна",
    ["The interact key interacts with "] = "Клавиша взаимодействия используется для: ",
    ["Thunder Bluff"] = "Громовой Утёс",
    ["Time"] = "Время",
    ["Titles"] = "Титулы",
    ["Total"] = "Всего",
    ["Touch shrines, totems and altars"] = "Коснуться святилищ, тотемов и алтарей",
    ["Town"] = "Город",
    ["Training"] = "Тренировка",
    ["Tree of Life"] = "Древо жизни",
    ["Uncommon"] = "Необычный",
    ["Undead"] = "Нежить",
    ["Unlock"] = "Открыть",
    ["Unlocked"] = "Открыто",
    ["Upgrade"] = "Улучшить",
    ["Upgrades"] = "Улучшения",
    ["Use"] = "Использовать",
    ["Use Hearthstone"] = "Использовать камень возвращения",
    ["Valor"] = "Доблесть",
    ["Victory"] = "Победа",
    ["Vines."] = "Лозы.",
    ["Voidwalker"] = "Демон Бездны",
    ["Warlock"] = "Чернокнижник",
    ["Warrior"] = "Воин",
    ["Wave"] = "Волна",
    ["Waves"] = "Волны",
    ["Weapon"] = "Оружие",
    ["Weapons"] = "Оружие",
    ["Welcome"] = "Добро пожаловать",
    ["Westfall"] = "Западный Край",
    ["Windfury Weapon"] = "Оружие неистовства ветра",
    ["Wrath"] = "Гнев",
    ["Wrath and Starfall."] = "Гнев и Звездопад.",
    ["Yes"] = "Да",
    ["Zoom"] = "Масштаб",
    ["Zul'Gurub"] = "Зул'Гуруб",
}


-- HordesRU v0.4: strings observed in newer interfaces and talent tooltips
local extra = {
    ["Accessibility"] = "Специальные возможности",
    ["Accessories (All classes)"] = "Аксессуары (все классы)",
    ["Activate"] = "Активировать",
    ["Active"] = "Активен",
    ["Advanced"] = "Дополнительно",
    ["Always learned"] = "Изучено изначально",
    ["Animal Handler"] = "Укротитель животных",
    ["Apply"] = "Применить",
    ["Armor Penetration"] = "Пробивание брони",
    ["Attack Power"] = "Сила атаки",
    ["Attack Speed"] = "Скорость атаки",
    ["Attributes"] = "Характеристики",
    ["Auto Open Chests"] = "Автоматически открывать сундуки",
    ["Automatically"] = "Автоматически",
    ["Back to Town"] = "Вернуться в город",
    ["Bags"] = "Сумки",
    ["Banish"] = "Изгнать",
    ["Banned"] = "Запрещено",
    ["Barrage"] = "Шквал",
    ["Best"] = "Лучший результат",
    ["Bestial Discipline"] = "Звериная дисциплина",
    ["Bestial Wrath"] = "Звериный гнев",
    ["Camera Settings"] = "Настройки камеры",
    ["Cards"] = "Карты",
    ["Cast Time"] = "Время применения",
    ["Challenge Mode"] = "Режим испытаний",
    ["Click to choose"] = "Нажмите, чтобы выбрать",
    ["Click to learn"] = "Нажмите, чтобы изучить",
    ["Coins"] = "Монеты",
    ["Complete"] = "Завершить",
    ["Completed"] = "Выполнено",
    ["Continue"] = "Продолжить",
    ["Continue in endless mode"] = "Продолжить в бесконечном режиме",
    ["Controller"] = "Геймпад",
    ["Controls"] = "Управление",
    ["Counterattack"] = "Контратака",
    ["Crafting"] = "Создание предметов",
    ["Critical Chance"] = "Шанс критического удара",
    ["Critical Damage"] = "Критический урон",
    ["Critical Strike"] = "Критический удар",
    ["Damage dealt"] = "Нанесённый урон",
    ["Damage Reduction"] = "Снижение урона",
    ["Damage taken"] = "Полученный урон",
    ["Defaults"] = "По умолчанию",
    ["Deterrence"] = "Сдерживание",
    ["Dodge"] = "Уклонение",
    ["DPS"] = "УВС",
    ["Druid Talents"] = "Таланты друида",
    ["Earn talent points from Mastery levels. Right-click a talent to refund a point."] = "Получайте очки талантов за уровни мастерства. Нажмите правой кнопкой на талант, чтобы вернуть очко.",
    ["Efficiency"] = "Эффективность",
    ["Empty slot"] = "Пустая ячейка",
    ["Enchanting"] = "Наложение чар",
    ["Enchantment"] = "Чары",
    ["End Run"] = "Завершить забег",
    ["Endless Mode"] = "Бесконечный режим",
    ["Endurance Training"] = "Тренировка выносливости",
    ["Enemies slain"] = "Убито врагов",
    ["Entrapment"] = "Удержание",
    ["Evade"] = "Уклонение",
    ["Experience gained"] = "Полученный опыт",
    ["Feet"] = "Ступни",
    ["Ferocious Inspiration"] = "Свирепое воодушевление",
    ["Ferocity"] = "Свирепость",
    ["Finale"] = "Финал",
    ["Finger"] = "Палец",
    ["Finish the run"] = "Завершить забег",
    ["Freeze"] = "Заморозка",
    ["Frenzy"] = "Бешенство",
    ["Fury"] = "Неистовство",
    ["Gameplay"] = "Игровой процесс",
    ["Glory"] = "Слава",
    ["Go Back"] = "Назад",
    ["Good bye"] = "До свидания",
    ["Goodbye"] = "До свидания",
    ["Graphics"] = "Графика",
    ["Hands"] = "Кисти рук",
    ["Haste"] = "Скорость",
    ["Head"] = "Голова",
    ["Healing done"] = "Исцеление",
    ["Health bar"] = "Полоса здоровья",
    ["Health Bar"] = "Полоса здоровья",
    ["Highest damage"] = "Максимальный урон",
    ["Humanoid Slaying"] = "Убийца гуманоидов",
    ["Hunt the Pack"] = "Охота стаи",
    ["Hunter Talents"] = "Таланты охотника",
    ["Hunter's Mark"] = "Метка охотника",
    ["Hunter's Mark: Marked enemies take 15% more damage from you and your summons, raised by the marking spell's ranks and Mark upgrades up to 30%. Talents add on top. When a Marked enemy dies, the Mark passes to the 2 nearest unmarked enemies within 10 yards."] = "Метка охотника: помеченные враги получают на 15% больше урона от вас и ваших призванных существ. Уровни способности и улучшения метки повышают бонус до 30%. Таланты усиливают его дополнительно. После смерти цели метка переходит к двум ближайшим непомеченным врагам в радиусе 10 ярдов.",
    ["Hunters Mark"] = "Метка охотника",
    ["Improved Arcane Shot"] = "Улучшенный чародейский выстрел",
    ["Improved Concussive Shot"] = "Улучшенный контузящий выстрел",
    ["Improved Hunter's Mark"] = "Улучшенная метка охотника",
    ["Improved Serpent Sting"] = "Улучшенное жало змеи",
    ["Improved Wing Clip"] = "Улучшенная подрезка крыльев",
    ["Inactive"] = "Неактивен",
    ["Interact Key"] = "Клавиша взаимодействия",
    ["Interact with nearby objects"] = "Взаимодействовать с ближайшими объектами",
    ["Interact with what's nearby"] = "Взаимодействовать с ближайшими объектами",
    ["Interacts with:"] = "Взаимодействовать с:",
    ["Intimidation"] = "Устрашение",
    ["Invasion"] = "Вторжение",
    ["Keyboard"] = "Клавиатура",
    ["Keys"] = "Клавиши",
    ["Killer Instinct"] = "Инстинкт убийцы",
    ["Leaderboards"] = "Таблицы лидеров",
    ["Learn"] = "Изучить",
    ["Legs"] = "Ноги",
    ["Lethal Shots"] = "Смертоносные выстрелы",
    ["Life Steal"] = "Похищение жизни",
    ["Lifesteal"] = "Похищение жизни",
    ["Lightning Reflexes"] = "Молниеносная реакция",
    ["Load Preset"] = "Загрузить набор",
    ["Mage Talents"] = "Таланты мага",
    ["Make yourself at home, friend. Tell old Tarn how you like things, and the Inn will keep it that way."] = "Чувствуй себя как дома, друг. Расскажи старому Тарну, как тебе удобнее, и в таверне всё будет именно так.",
    ["Marked"] = "Помеченный",
    ["Marksmanship"] = "Стрельба",
    ["Mastery Level"] = "Уровень мастерства",
    ["Mastery XP"] = "Опыт мастерства",
    ["Max Level"] = "Максимальный уровень",
    ["Max Rank"] = "Максимальный ранг",
    ["Maximum"] = "Максимум",
    ["Maximum Health"] = "Максимальное здоровье",
    ["Minimum"] = "Минимум",
    ["Monster Slaying"] = "Убийца монстров",
    ["Mortal Shots"] = "Смертоносные выстрелы",
    ["Mouse"] = "Мышь",
    ["Movement Speed"] = "Скорость передвижения",
    ["Mythic Gear"] = "Эпохальная экипировка",
    ["Nameplate"] = "Полоска над персонажем",
    ["Neck"] = "Шея",
    ["Next Level"] = "Следующий уровень",
    ["Next Rank"] = "Следующий ранг",
    ["No points available"] = "Нет доступных очков",
    ["No preset"] = "Нет набора",
    ["None"] = "Нет",
    ["Objective"] = "Цель",
    ["Objectives"] = "Цели",
    ["Owned"] = "В наличии",
    ["Pack Hunter"] = "Охотник стаи",
    ["Paladin Talents"] = "Таланты паладина",
    ["Parry"] = "Парирование",
    ["Party Spell Effects"] = "Эффекты заклинаний группы",
    ["Personal best"] = "Личный рекорд",
    ["Pet"] = "Питомец",
    ["Pets"] = "Питомцы",
    ["point"] = "очко",
    ["points"] = "очков",
    ["Points"] = "Очки",
    ["points to unlock"] = "очков для открытия",
    ["Presets"] = "Наборы",
    ["Priest Talents"] = "Таланты жреца",
    ["Protection"] = "Защита",
    ["Purchased"] = "Куплено",
    ["Raid"] = "Рейд",
    ["Random"] = "Случайно",
    ["Range"] = "Дальность",
    ["Range Ring..."] = "Кольцо радиуса...",
    ["Ranged"] = "Дальний бой",
    ["Ranged Weapon Specialization"] = "Специализация на оружии дальнего боя",
    ["Reforge"] = "Перековка",
    ["Requires a connected talent."] = "Требуется связанный талант.",
    ["Requires a talent in the previous row."] = "Требуется талант из предыдущего ряда.",
    ["Reroll"] = "Перебросить",
    ["Reset Talents"] = "Сбросить таланты",
    ["Restore Defaults"] = "Восстановить настройки",
    ["Return"] = "Вернуться",
    ["Return to Inn"] = "Вернуться в таверну",
    ["Reward Card Scale"] = "Размер карты награды",
    ["Right-click to refund"] = "Нажмите ПКМ, чтобы вернуть очко",
    ["Rogue Talents"] = "Таланты разбойника",
    ["Savage Strikes"] = "Свирепые удары",
    ["Save Preset"] = "Сохранить набор",
    ["Scatter Shot"] = "Дезориентирующий выстрел",
    ["Scrap"] = "Металлолом",
    ["Season"] = "Сезон",
    ["Select"] = "Выбрать",
    ["Select Difficulty"] = "Выберите сложность",
    ["Sell"] = "Продать",
    ["Shaman Talents"] = "Таланты шамана",
    ["Shapeshift (Druid)"] = "Смена облика (друид)",
    ["Shoulders"] = "Плечи",
    ["Slow"] = "Замедление",
    ["Sound"] = "Звук",
    ["Specialization"] = "Специализация",
    ["Specializations"] = "Специализации",
    ["Spell Power"] = "Сила заклинаний",
    ["Start Run"] = "Начать забег",
    ["Stun"] = "Оглушение",
    ["Subtlety"] = "Скрытность",
    ["Summon"] = "Призыв",
    ["Summons"] = "Призывы",
    ["Surefooted"] = "Твёрдая рука",
    ["Talent Point"] = "Очко талантов",
    ["Talent Points"] = "Очки талантов",
    ["Talent points available"] = "Доступно очков талантов",
    ["Talent points earned"] = "Заработано очков талантов",
    ["Tarn Oakhoof"] = "Тарн Дубокопыт",
    ["The Beast Within"] = "Зверь внутри",
    ["Theron Ashveil"] = "Терон Пепельная Вуаль",
    ["Thick Hide"] = "Плотная шкура",
    ["Time survived"] = "Время выживания",
    ["Total damage"] = "Общий урон",
    ["Trapmaster"] = "Мастер ловушек",
    ["Trinket"] = "Аксессуар",
    ["Trueshot"] = "Верный выстрел",
    ["Trueshot Aura"] = "Аура меткости",
    ["Unequip"] = "Снять",
    ["Unit Frame"] = "Портрет персонажа",
    ["Unlearn"] = "Забыть",
    ["Unleashed Fury"] = "Высвобожденная ярость",
    ["Video"] = "Видео",
    ["Waist"] = "Пояс",
    ["Warlock Talents"] = "Таланты чернокнижника",
    ["Warrior Talents"] = "Таланты воина",
    ["When a Marked enemy dies, Hunter's Mark moves to the nearest unmarked enemy within 20 yards."] = "Когда помеченный враг погибает, «Метка охотника» переходит на ближайшего непомеченного врага в радиусе 20 ярдов.",
    ["Wrists"] = "Запястья",
    ["Wyvern Sting"] = "Укус виверны",
    ["Your character"] = "Ваш персонаж",
    ["Your Character"] = "Ваш персонаж",
    ["Your health bar:"] = "Полоса здоровья:",
    ["Your Settings"] = "Ваши настройки",
}
for english, translated in pairs(extra) do
    if dict[english] == nil then dict[english] = translated end
end
-- The official Hordes addon is loaded already. Do NOT register a new enUS
-- VanillaBonkLocale table: many Hordes internals cache English strings and
-- their protocol messages must remain unchanged. Translate drawn text only.
-- Based on current public Hunter mastery data; display-only, no gameplay data edits.
local mastery = {
    ["Aimed Shot kills normal enemies below 15% health"] = "«Прицельный выстрел» добивает обычных врагов с менее чем 15% здоровья.",
    ["Aimed Shot stuns normal enemies it hits for 1 sec."] = "«Прицельный выстрел» оглушает поражённых обычных врагов на 1 сек.",
    ["Animal Handler"] = "Дрессировщик",
    ["Arcane Shot applies Hunter's Mark."] = "«Чародейский выстрел» накладывает «Метку охотника».",
    ["Barrage"] = "Шквал",
    ["Beast Cleave"] = "Звериный размах",
    ["Bestial Discipline"] = "Звериная дисциплина",
    ["Bestial Discipline works at half strength without Pack Leader."] = "«Звериная дисциплина» действует с половинной силой даже без «Вожака стаи».",
    ["Bestial Swiftness"] = "Звериная стремительность",
    ["Binding Shot"] = "Сковывающий выстрел",
    ["Call Pet"] = "Призыв питомца",
    ["Call Pet and Pack Leader deal 3% more damage."] = "«Призыв питомца» и «Вожак стаи» наносят на 3% больше урона.",
    ["Call Pet summons 1 additional beast."] = "«Призыв питомца» призывает ещё 1 зверя.",
    ["Call Pet summons 1 more beast"] = "«Призыв питомца» призывает ещё 1 зверя.",
    ["Careful Aim"] = "Точное прицеливание",
    ["Chimera Shot"] = "Выстрел химеры",
    ["Clever Traps"] = "Хитрые ловушки",
    ["Deterrence"] = "Сдерживание",
    ["Dire Beast"] = "Лютый зверь",
    ["Each Hunter's Mark gives you +15% Haste for 5 sec."] = "Каждая «Метка охотника» даёт +15% к скорости на 5 сек.",
    ["Each Poisoned enemy within 10 yards gives you +1% Haste, up to 10%."] = "Каждый отравленный враг в радиусе 10 ярдов даёт +1% к скорости, максимум +10%.",
    ["Each of your living pets gives you +3% Power."] = "Каждый живой питомец увеличивает вашу силу на 3%.",
    ["Efficiency"] = "Эффективность",
    ["Endurance Training"] = "Тренировка выносливости",
    ["Explosive Trap applies 2 more stacks of Burning"] = "«Взрывная ловушка» накладывает ещё 2 эффекта горения.",
    ["Explosive Trap fire and Frost Trap ice last 15% longer."] = "Огонь «Взрывной ловушки» и лёд «Морозной ловушки» действуют на 15% дольше.",
    ["Explosive Trap's explosion reaches 30% farther."] = "Радиус взрыва «Взрывной ловушки» увеличен на 30%.",
    ["Expose Weakness"] = "Выявление слабости",
    ["Ferocity"] = "Свирепость",
    ["Free. Call Pet is a starter spell."] = "Бесплатно. «Призыв питомца» — начальное умение.",
    ["Free. Multi-Shot is a starter spell."] = "Бесплатно. «Множественный выстрел» — начальное умение.",
    ["Free. Serpent Sting is a starter spell."] = "Бесплатно. «Укус змеи» — начальное умение.",
    ["Frenzy"] = "Бешенство",
    ["Frost Trap's ice covers 30% more ground."] = "Ледяная зона «Морозной ловушки» увеличена на 30%.",
    ["Frost Trap's ice lasts 3 sec longer."] = "Лёд «Морозной ловушки» действует на 3 сек. дольше.",
    ["Frozen Ground"] = "Ледяная земля",
    ["Hawk Eye"] = "Орлиный глаз",
    ["Hunter's Mark lasts 4 sec longer."] = "«Метка охотника» действует на 4 сек. дольше.",
    ["Hunter's Mark reaches enemies within 14 yards."] = "«Метка охотника» переходит на врагов в радиусе 14 ярдов.",
    ["Improved Aspect of the Hawk"] = "Улучшенный дух ястреба",
    ["Improved Barrage"] = "Улучшенный шквал",
    ["Improved Hunter's Mark"] = "Улучшенная метка охотника",
    ["Improved Intimidation"] = "Улучшенное устрашение",
    ["Improved Marked for Death"] = "Улучшенная метка смерти",
    ["Improved Mend Pet"] = "Улучшенное лечение питомца",
    ["Improved Multi-Shot"] = "Улучшенный множественный выстрел",
    ["Improved Scorpid Sting"] = "Улучшенное жало скорпида",
    ["Improved Serpent Sting"] = "Улучшенный укус змеи",
    ["Improved Viper Venom"] = "Улучшенный яд гадюки",
    ["Intimidating Roar"] = "Устрашающий рёв",
    ["Intimidation"] = "Устрашение",
    ["Kill Shot"] = "Убийственный выстрел",
    ["Killer Instinct"] = "Инстинкт убийцы",
    ["Kindred Spirits"] = "Родственные души",
    ["Lethal Shots"] = "Смертельные выстрелы",
    ["Lightning Reflexes"] = "Молниеносная реакция",
    ["Marked enemies take 2% more damage."] = "Помеченные враги получают на 2% больше урона.",
    ["Marked for Death"] = "Метка смерти",
    ["Master Marksman"] = "Мастер стрельбы",
    ["Mongoose Fury"] = "Ярость мангуста",
    ["Monster Slaying"] = "Истребление монстров",
    ["Mortal Shots"] = "Смертоносные выстрелы",
    ["Multi-Shot"] = "Множественный выстрел",
    ["Multi-Shot fires 1 more arrow."] = "«Множественный выстрел» выпускает ещё 1 стрелу.",
    ["Noxious Stings"] = "Ядовитые укусы",
    ["Pack Hunter"] = "Охотник стаи",
    ["Pack Leader's howl slows normal enemies within 10 yards by 30% for 2 sec."] = "Вой «Вожака стаи» замедляет обычных врагов в радиусе 10 ярдов на 30% на 2 сек.",
    ["Pack Tactics"] = "Тактика стаи",
    ["Pathfinding"] = "Следопыт",
    ["Ranged Weapon Specialization"] = "Специализация на оружии дальнего боя",
    ["Rapid Fire"] = "Быстрая стрельба",
    ["Rapid Killing"] = "Стремительное убийство",
    ["Regain 0.1% of your health every second."] = "Восстанавливает 0,1% здоровья каждую секунду.",
    ["Resourcefulness"] = "Находчивость",
    ["Savage Strikes"] = "Свирепые удары",
    ["Scatter Shot"] = "Дезориентирующий выстрел",
    ["Serpent Sting"] = "Укус змеи",
    ["Serpent Sting stings 1 more enemy."] = "«Укус змеи» поражает ещё 1 врага.",
    ["Serpent Sting's Poison slows normal enemies by 20% for 2 sec."] = "Яд «Укуса змеи» замедляет обычных врагов на 20% на 2 сек.",
    ["Surefooted"] = "Уверенная поступь",
    ["Survival Instincts"] = "Инстинкты выживания",
    ["Survival Tactics"] = "Тактика выживания",
    ["Survivalist"] = "Выживальщик",
    ["Thick Hide"] = "Толстая шкура",
    ["Toxic Shrapnel"] = "Ядовитая шрапнель",
    ["Trap Mastery"] = "Мастер ловушек",
    ["Unleashed Fury"] = "Неудержимая ярость",
    ["Viper Venom"] = "Яд гадюки",
    ["Viper Venom slows by 10% more."] = "«Яд гадюки» замедляет ещё на 10% сильнее.",
    ["Volley deals 2% more damage per different debuff on the target."] = "«Град стрел» наносит на 2% больше урона за каждый отдельный отрицательный эффект на цели.",
    ["Volley lasts 1 sec longer."] = "«Град стрел» длится на 1 сек. дольше.",
    ["Wildfire Bomb"] = "Огненная бомба",
    ["Your Poison deals 5% more damage."] = "Ваш яд наносит на 5% больше урона.",
    ["Your cat's Claw also hits enemies within 3 yards of its target."] = "«Коготь» питомца также поражает врагов в радиусе 3 ярдов от цели.",
    ["Your cat's Claw applies 1 more stack of Bleed."] = "«Коготь» питомца накладывает ещё 1 эффект кровотечения.",
    ["Your cat's Claw recharges 25% faster."] = "«Коготь» питомца перезаряжается на 25% быстрее.",
    ["Your cat's Claw stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Коготь» питомца оглушает обычных врагов на 1 сек. Не чаще одного раза в 6 сек. для каждой цели.",
    ["Your critical strikes deal 5% more damage."] = "Урон от ваших критических ударов увеличен на 5%.",
    ["Your pets inherit 5% more of your Power while Pack Leader is out."] = "Пока действует «Вожак стаи», питомцы получают ещё 5% от вашей силы.",
}
for english, russian in pairs(mastery) do dict[english] = russian end

-- Server-side mastery and keyword strings added since v0.6.
-- These are UI substitutions only; no network packets or game DB rows are changed.
local late = {
    ["Your shots Mark every enemy they hit and target Marked enemies first. Marked enemies take 30% more damage from you."] = "Выстрелы помечают врагов и сначала поражают помеченных. Вы наносите им на 30% больше урона.",
    ["Marked enemies take 15% more damage from you and your summons, raised by the marking spell's ranks and Mark upgrades up to 30%. Talents add on top. When a Marked enemy dies, the Mark passes to the 2 nearest unmarked enemies within 10 yards."] = "Помеченные враги получают на 15% больше урона от вас и призванных существ (до 30% с улучшениями). Таланты усиливают эффект. После гибели цели метка переходит к двум врагам в радиусе 10 ярдов.",
    ["Your pets are always frenzied: +50% damage, and their attacks hit every enemy in front of them. Your other spells deal 15% less damage."] = "Питомцы постоянно в бешенстве: +50% к урону, их атаки поражают всех врагов перед ними. Урон остальных заклинаний снижен на 15%.",
    ["Each dash leaves one of each of your traps behind, armed at once. Your dash recharges 30% faster."] = "Каждый рывок оставляет по одной ловушке каждого вида, сразу готовой к срабатыванию. Рывок восстанавливается на 30% быстрее.",
    ["Every 4th cast of each spell critically strikes every enemy it hits, and those critical strikes deal 25% more damage."] = "Каждое четвёртое применение каждого заклинания наносит критический удар всем поражённым врагам. Урон этих критических ударов увеличен на 25%.",
    ["Shield Block's Shield holds up to 100% of your maximum health instead of 50% and recharges 10% per sec, even while you are struck. While your Shield is above half, you deal 20% more damage."] = "«Блок щитом» поглощает до 100% максимального здоровья вместо 50% и восстанавливает 10% в секунду даже под ударами. Пока щит заполнен более чем наполовину, ваш урон выше на 20%.",
    ["Exorcism strikes 2 additional enemies, and Art of War can trigger it every 0.5 sec."] = "«Экзорцизм» поражает ещё двух врагов, а «Искусство войны» может вызывать его раз в 0,5 сек.",
    ["While you stand in your Consecration, you take 20% less damage and deal 20% more damage."] = "Находясь в собственном «Освящении», вы получаете на 20% меньше урона и наносите на 20% больше.",
    ["Every 4th Crusader Strike is a Templar's Verdict, dealing triple damage to every enemy within 5 yards of the target."] = "Каждый четвёртый «Удар воина Света» становится «Вердиктом храмовника», нанося тройной урон всем врагам в радиусе 5 ярдов от цели.",
    ["Your abilities apply 1 additional Poison stack per hit, even without Deadly Poison."] = "Ваши способности накладывают ещё один эффект яда за удар, даже без «Смертельного яда».",
    ["Your single-target hits also strike 2 enemies within 8 yards for 60% damage, even without Blade Flurry."] = "Атаки по одной цели также поражают двух врагов в радиусе 8 ярдов с 60% урона, даже без «Шквала клинков».",
    ["Ambush also hits every enemy within 8 yards of the target for full damage."] = "«Внезапный удар» также наносит полный урон всем врагам в радиусе 8 ярдов от цели.",
    ["While you have a Shield, you take 20% less damage and deal 20% more damage."] = "Пока действует щит, вы получаете на 20% меньше урона и наносите на 20% больше.",
    ["Renew smites while you are above 80% health, not only at full. Smite and Halo cut 2 sec off Holy Word: Chastise."] = "«Обновление» поражает врагов уже при здоровье выше 80%, а не только при полном. «Кара» и «Сияние» сокращают перезарядку «Слова Света: Наказание» на 2 сек.",
    ["Your Decay deals 30% more damage, and your spells apply 1 more Decay stack."] = "Ваше «Разложение» наносит на 30% больше урона, а заклинания накладывают на один эффект «Разложения» больше.",
    ["Static discharges at 3 stacks instead of 5."] = "«Статический заряд» срабатывает при трёх эффектах вместо пяти.",
    ["Windfury Weapon triggers Windfury every 2nd swing instead of every 3rd. Maelstrom Weapon needs 3 melee hits instead of 5."] = "«Оружие неистовства ветра» срабатывает после каждого второго удара вместо третьего. «Оружию водоворота» нужны три удара в ближнем бою вместо пяти.",
    ["Each of your totem spells plants 1 additional totem."] = "Каждое заклинание тотема устанавливает ещё один тотем.",
    ["Your dash becomes Blink and recharges twice as fast. Each Blink sets off your Arcane Explosion where you land."] = "Рывок становится «Скачком» и восстанавливается вдвое быстрее. При каждом «Скачке» в месте приземления срабатывает «Чародейский взрыв».",
    ["Your critical strikes deal 100% more damage. Your maximum health is reduced by 35%."] = "Критические удары наносят на 100% больше урона, но ваше максимальное здоровье снижено на 35%.",
    ["Chill freezes at 6 stacks instead of 10."] = "«Охлаждение» замораживает цель при шести эффектах вместо десяти.",
    ["When an enemy with your Decay or Agony dies, they jump to the nearest enemy without them, keeping every stack."] = "Если враг погибает под действием ваших «Разложения» или «Агонии», все их эффекты переходят к ближайшему врагу без них.",
    ["Your demons deal 10% more damage for each different demon you command, up to 40%."] = "Демоны наносят на 10% больше урона за каждый отдельный вид подвластного демона, максимум 40%.",
    ["Nightfall fires up to 3 free Shadow Bolts per sec instead of 1, and they deal 50% more damage."] = "«Сумерки» выпускают до трёх бесплатных «Стрел Тьмы» в секунду вместо одной. Их урон увеличен на 50%.",
    ["Starfall strikes in every form and hits 2 additional enemies."] = "«Звездопад» действует в любом облике и поражает ещё двух врагов.",
    ["Cat Form: your critical strikes deal 25% more damage. Bear Form: take 20% less damage and move 15% faster."] = "Облик кошки: критические удары наносят на 25% больше урона. Облик медведя: вы получаете на 20% меньше урона и двигаетесь на 15% быстрее.",
}
for english, russian in pairs(late) do dict[english] = russian end

-- Display-only translations of server-sourced reward cards. Checked against
-- the upstream 2026-11-02 / 2026-11-03 bonk_weapon and bonk_passive migrations.
local rewardTexts = {
    ["Pack Leader"] = "Вожак стаи",
    ["Pyromaniac"] = "Пироман",
    ["Serrated Blades"] = "Зазубренные клинки",
    ["Explosive Arrow"] = "Взрывная стрела",
    ["Marked"] = "Помеченная цель",
    ["New spell"] = "Новое заклинание",
    ["New passive"] = "Новый пассивный эффект",
    ["New Spell"] = "Новое заклинание",
    ["New Passive"] = "Новый пассивный эффект",
    ["Damage:"] = "Урон:",
    ["Damage"] = "Урон",
    ["Spell"] = "Заклинание",
    ["Passive"] = "Пассивный эффект",
    ["Piercing Shot"] = "Пронзающий выстрел",
    ["Chain Detonation"] = "Цепная детонация",
    ["Focused Aim"] = "Сосредоточенное прицеливание",
    ["Volley"] = "Град стрел",
    ["Storm of Arrows"] = "Буря стрел",
    ["Binding Shot"] = "Сковывающий выстрел",
    ["Call Pet"] = "Призыв питомца",
    ["Mend Pet"] = "Лечение питомца",
    ["Hunter's Mark"] = "Метка охотника",
    ["Feral Spirit"] = "Дух дикого зверя",
    ["Shadowfiend"] = "Исчадие Тьмы",
    ["Berserker Rage"] = "Ярость берсерка",
    ["Shadow Word: Pain"] = "Слово Тьмы: Боль",
    ["Pyromania"] = "Пиромания",
    ["New passive"] = "Новый пассивный эффект",
    ["A spirit wolf fights for you, biting for damage. Every 15 sec it howls, and your other pets deal double damage to all enemies in front for 6 sec. Your pets mark the enemies they bite with Hunter's Mark."] = "Призрачный волк сражается за вас. Каждые 15 сек. его вой на 6 сек. удваивает урон остальных питомцев по врагам перед ними. Укусы питомцев накладывают «Метку охотника».",
    ["A spirit wolf fights for you, biting for damage. Every 15 sec it howls, and your other pets deal double damage to all enemies in front for 6 sec. Your pets' bites apply Hunter's Mark."] = "Призрачный волк сражается за вас. Каждые 15 сек. его вой на 6 сек. удваивает урон остальных питомцев по врагам перед ними. Укусы питомцев накладывают «Метку охотника».",
    ["A spirit wolf fights for you. Every 15 sec it howls: your other pets frenzy for 6 sec, dealing double damage to all in front."] = "Призрачный волк сражается за вас. Каждые 15 сек. его вой на 6 сек. удваивает урон ваших питомцев по врагам перед ними.",
    ["Fires a shot that pierces every enemy in a line, dealing damage. Aims at the Marked group, or else the largest group. With an Explosive Arrow loaded, its first hit explodes for full damage within 8 yards."] = "Выстрел пробивает врагов по прямой, выбирая помеченную или самую большую группу. Заряженная взрывная стрела при первом попадании взрывается в радиусе 8 ярдов.",
    ["Fires a shot that pierces every enemy in a line, dealing damage. Aims at the Marked group, or else the largest group. With an Explosive Arrow loaded, the shot explodes on its first hit, dealing its damage to all enemies within 8 yards."] = "Выстрел пробивает врагов по прямой, выбирая помеченную или самую большую группу. Заряженная взрывная стрела при первом попадании наносит урон всем врагам в радиусе 8 ярдов.",
    ["Rains arrows on the largest group of enemies for 4 sec, dealing damage, 5% more for each different debuff on the target. Every 25 enemies it hits loads an Explosive Arrow into your Aimed Shot, up to 2."] = "4 сек. осыпает стрелами самую большую группу: +5% урона за каждый вид ослабления цели. Каждые 25 попаданий заряжают взрывную стрелу для «Прицельного выстрела» (до двух).",
    ["Rains arrows on the largest group of enemies within 20 yards for 4 sec, dealing 5% more damage for each different debuff on the target. Every 25 hits loads an Explosive Arrow into your Aimed Shot, up to 2."] = "4 сек. осыпает стрелами крупнейшую группу в радиусе 20 ярдов. +5% урона за вид ослабления цели. Каждые 25 попаданий дают заряд взрывной стрелы (максимум два).",
    ["Summons a cat that fights for you. Its attacks apply 1 stack of Bleed, its Claw applies 4 stacks, and its Swipe strikes all enemies in front of it."] = "Призывает кошку. Её атаки накладывают кровотечение, «Когти» — 4 эффекта, а «Размах» поражает всех врагов перед ней.",
    ["+10% Burning damage."] = "+10% к урону от горения.",
    ["+10% Bleed damage."] = "+10% к урону от кровотечения.",
    ["+{10}% Burning damage."] = "+10% к урону от горения.",
    ["+{10}% Bleed damage."] = "+10% к урону от кровотечения.",
    ["+10% Burning damage"] = "+10% к урону от горения.",
    ["+10% Bleed damage"] = "+10% к урону от кровотечения.",
    ["Rains arrows on the largest group of enemies for 3 sec, dealing damage, 5% more for each different debuff on the target. The storm follows the largest group within 25 yards. Every 25 enemies it hits loads an Explosive Arrow into your Aimed Shot, up to 2."] = "3 сек. обстреливает крупнейшую группу врагов. +5% урона за каждый тип ослабления; буря следует за группой в радиусе 25 ярдов. Каждые 25 попаданий заряжают взрывную стрелу (до двух).",
    ["A spirit wolf fights for you, biting for damage. Every 15 sec it howls: your other pets deal double damage to all enemies in front for 6 sec, and a Boar, Bear or Wyvern joins for 8 sec. The Boar charges through the largest group, the Bear mauls and leaves enemies bleeding, the Wyvern makes your pets deal 20% more damage. Your pets mark the enemies they bite with Hunter's Mark."] = "Призрачный волк сражается за вас. Раз в 15 сек. вой удваивает урон питомцев на 6 сек. и призывает кабана, медведя или виверну на 8 сек. Кабан делает рывок, медведь вызывает кровотечение, виверна усиливает урон питомцев на 20%. Укусы питомцев накладывают «Метку охотника».",
    ["A spirit wolf fights for you, biting for damage. Every 15 sec it howls: your other pets deal double damage to all enemies in front for 6 sec. Each kill your pets make meanwhile adds 0.5 sec, up to 10 sec left. Your pets mark the enemies they bite with Hunter's Mark."] = "Призрачный волк сражается за вас. Раз в 15 сек. вой на 6 сек. удваивает урон питомцев по врагам перед ними. Убийства питомцев продлевают усиление на 0,5 сек. (до 10 сек.). Укусы накладывают «Метку охотника».",
    ["Strikes all enemies within 10 yards of you."] = "Поражает всех врагов в радиусе 10 ярдов.",
    ["Strikes up to 6 enemies within 18 yards in a cone toward the nearest enemy."] = "Поражает до 6 врагов в конусе длиной 18 ярдов в сторону ближайшей цели.",
    ["Hurls a hammer at the strongest enemy within 20 yards, dealing Holy damage and stunning it for 2 sec. Bosses and mini-bosses are not stunned."] = "Бросает молот в сильнейшего врага в радиусе 20 ярдов, наносит урон Светом и оглушает на 2 сек. Боссы не оглушаются.",
    ["Summons a Shadowfiend whose attacks apply Decay and whose Shadow Cleave hits every enemy in front of it. Its melee attacks heal you for 0.5% of your maximum health."] = "Призывает исчадие Тьмы. Его атаки накладывают «Разложение», а удары по области поражают врагов перед ним. Атаки исцеляют вас на 0,5% максимального здоровья.",
    ["Launches 5 Arcane Missiles at the nearest enemy over 1 sec, each dealing Arcane damage. After each Blink, fires all 5 at once at the nearest enemies."] = "За 1 сек. выпускает 5 чародейских стрел в ближайшего врага. После каждого «Скачка» выпускает все 5 стрел одновременно по ближайшим целям.",
    ["Normal enemies within 8 yards flee in fear for 2 sec, taking Shadow damage every sec. Elites and bosses are unaffected."] = "Обычные враги в радиусе 8 ярдов бегут в страхе 2 сек., ежесекундно получая урон Тьмой. Элиты и боссы неуязвимы к этому страху.",
    ["Increases your dodge chance by 50% for 5 sec, up to 85%."] = "На 5 сек. увеличивает шанс уклонения на 50%, но не выше 85%.",
}
for english, russian in pairs(rewardTexts) do dict[english] = russian end

-- HordesRU 0.9: spell names, mastery, glossary and Darkmoon names found in
-- public Hordes of Azeroth SQL migrations. Long Russian phrases are deliberately
-- condensed so they fit the original, small character- and deck-panels.
local v09Strings = {
    ["Burning Embers"] = "Тлеющие угли",
    ["Immolate applies 1 additional stack of Burning."] = "«Жертвенный огонь» накладывает ещё 1 эффект горения.",
    ["Master Demonologist"] = "Мастер демонологии",
    ["Your demons deal 10% more damage for each different demon you command, up to 40%."] = "Урон ваших демонов растёт на 10% за каждый вид демона (до 40%).",
    ["Each different demon you command makes all your demons deal 10% more damage, up to 40%. Your Power is reduced by 15%."] = "Каждый вид демонов усиливает урон ваших демонов на 10% (до 40%). Ваша сила снижена на 15%.",
    ["Each different demon you command makes all your demons deal 10% more damage, up to 40%."] = "Каждый вид демонов усиливает их урон на 10% (до 40%).",
    ["Summons an Imp that hurls 2 Firebolts at a time at enemies within 30 yards, leaving them burning."] = "Призывает беса: он бросает по 2 огненные стрелы во врагов в радиусе 30 ярдов и поджигает их.",
    ["Summons an Imp that hurls 2 Firebolts at enemies within 30 yards, leaving them burning."] = "Призывает беса. Он бросает 2 огненные стрелы во врагов в радиусе 30 ярдов и поджигает их.",
    ["Summons an Imp that hurls 2 Firebolts at enemies within 30 yards, leaving them burning"] = "Призывает беса. Он бросает 2 огненные стрелы во врагов в радиусе 30 ярдов и поджигает их.",
    ["Summons an Imp that hurls volleys of 3 fel Firebolts at enemies within 30 yards, leaving them burning."] = "Призывает беса. Он обстреливает врагов в радиусе 30 ярдов залпами из 3 огненных стрел, вызывая горение.",
    ["Summons an Imp that hurls fel Firebolts at enemies within 30 yards, leaving them burning."] = "Призывает беса. Он бросает огненные стрелы во врагов в радиусе 30 ярдов и поджигает их.",
    ["Can evolve into Fel Imps or Imp Swarm through a Legendary rank, offered at rank 10 or higher. Warlocks can choose it as their starter spell at the Run Master."] = "С 10-го ранга доступна легендарная эволюция: «Бесы Скверны» или «Стая бесов». Чернокнижник может выбрать это начальным заклинанием у распорядителя забегов.",
    ["Can evolve into Fel Imps or Imp Swarm through a Legendary rank, offered at rank 10 or higher."] = "На 10-м ранге и выше может превратиться в «Стаю бесов» или «Бесов Скверны» (легендарный ранг).",
    ["Warlocks can choose it as their starter spell at the Run Master."] = "Чернокнижник может выбрать это начальным заклинанием у распорядителя забегов.",
    ["Burning"] = "Горение",
    ["Burning: Each stack deals Fire damage every tick. Each new stack refreshes all stacks to their full duration, up to 30 stacks. When a burning enemy dies, half of its stacks spread to the 2 nearest enemies within 8 yards, and the damage its stacks had left bursts onto up to 4 enemies within 8 yards, half on each."] = "Горение: каждый эффект периодически наносит урон огнём. Новые эффекты обновляют все стаки (до 30). При гибели врага половина эффектов переходит на двух ближайших, а оставшийся урон поражает до четырёх врагов в радиусе 8 ярдов.",
    ["Each stack deals Fire damage every tick. Each new stack refreshes all stacks to their full duration, up to 30 stacks. When a burning enemy dies, half of its stacks spread to the 2 nearest enemies within 8 yards, and the damage its stacks had left bursts onto up to 4 enemies within 8 yards, half on each."] = "Каждый эффект наносит периодический урон огнём. Новые эффекты обновляют все стаки (до 30). При гибели врага половина эффектов переходит на двух ближайших, а оставшийся урон поражает до четырёх врагов в радиусе 8 ярдов.",
    ["Each stack deals Fire damage every tick. Each new stack refreshes all stacks to their full duration, up to 30 stacks. When a burning enemy dies, half of its stacks spread to the 2 nearest enemies within 8 yards, and the damage its stacks had left bursts onto up to 4 enemies within 8 yards, half on each."] = "Каждый эффект наносит периодический урон огнём. Новые эффекты обновляют стаки (до 30). При гибели цели половина переносится на двух врагов, а оставшийся урон поражает до четырёх рядом.",
    ["Demonology"] = "Демонология",
    ["Destruction"] = "Разрушение",
    ["Master Demonologist"] = "Мастер демонологии",
    ["Shadow Mastery"] = "Власть над Тьмой",
    ["Improved Corruption"] = "Улучшенная порча",
    ["Improved Curse of Agony"] = "Улучшенное проклятие агонии",
    ["Improved Drain Life"] = "Улучшенное похищение жизни",
    ["Grim Reach"] = "Мрачный предел",
    ["Siphon Life"] = "Вытягивание жизни",
    ["Nightmare"] = "Кошмар",
    ["Fel Concentration"] = "Средоточие Скверны",
    ["Pandemic"] = "Пандемия",
    ["Suppression"] = "Подавление",
    ["Demonic Embrace"] = "Демонические объятия",
    ["Improved Imp"] = "Улучшенный бес",
    ["Demon Skin"] = "Шкура демона",
    ["Improved Voidwalker"] = "Улучшенный демон Бездны",
    ["Unholy Power"] = "Нечестивая сила",
    ["Improved Succubus"] = "Улучшенный суккуб",
    ["Improved Felhunter"] = "Улучшенный охотник Скверны",
    ["Demonic Sacrifice"] = "Демоническая жертва",
    ["Fel Intellect"] = "Интеллект Скверны",
    ["Emberstorm"] = "Огненный вихрь",
    ["Improved Shadow Bolt"] = "Улучшенная стрела Тьмы",
    ["Devastation"] = "Опустошение",
    ["Improved Immolate"] = "Улучшенный жертвенный огонь",
    ["Bane"] = "Проклятие",
    ["Improved Rain of Fire"] = "Улучшенный огненный ливень",
    ["Fire and Brimstone"] = "Огонь и сера",
    ["Shadow and Flame"] = "Тьма и пламя",
    ["Aftermath"] = "Последствия",
    ["Ruin"] = "Разорение",
    ["Fel Imps"] = "Бесы Скверны",
    ["Imp Swarm"] = "Стая бесов",
    ["Immolate"] = "Жертвенный огонь",
    ["Master Demonologist"] = "Мастер демонологии",
    ["Imp"] = "Бес",
    ["Your Decay deals 8% more damage."] = "Урон «Разложения» увеличен на 8%.",
    ["Your Agony deals 8% more damage."] = "Урон «Агонии» увеличен на 8%.",
    ["Your Burning deals 8% more damage."] = "Урон горения увеличен на 8%.",
    ["Your demons have 3% more critical strike chance."] = "Шанс критического удара демонов повышен на 3%.",
    ["Your critical strikes deal 10% more damage."] = "Критические удары наносят на 10% больше урона.",
    ["+3 Armor."] = "+3 к броне.",
    ["+2% Haste."] = "+2% к скорости.",
    ["+3% Area."] = "+3% к области действия.",
    ["+2% critical strike chance."] = "+2% к шансу критического удара.",
    ["Shadow Bolt recharges 8% faster."] = "«Стрела Тьмы» восстанавливается на 8% быстрее.",
    ["Rain of Fire recharges 15% faster."] = "«Огненный ливень» восстанавливается на 15% быстрее.",
    ["Immolate strikes 1 additional enemy."] = "«Жертвенный огонь» поражает ещё одну цель.",
    ["Every card you own can turn up in a chest. Ban the ones you never want to see."] = "Ваши карты могут появляться в сундуках. Ненужные можно запретить.",
    ["Every Glyph you own can be offered after a mini-boss. Ban the ones you never want to see."] = "Символы предлагаются после мини-боссов. Ненужные можно запретить.",
    ["Sayge's Table"] = "Стол Сейджа",
    ["Darkmoon Deck"] = "Колода Новолуния",
    ["Darkmoon Cards"] = "Карты Новолуния",
    ["Darkmoon Card"] = "Карта Новолуния",
    ["Card bans"] = "Запрет карт",
    ["Glyph bans"] = "Запрет символов",
    ["Ban This Card"] = "Запретить карту",
    ["Allow This Card"] = "Разрешить карту",
    ["Ban This Glyph"] = "Запретить символ",
    ["Allow This Glyph"] = "Разрешить символ",
    ["You have no ban slots yet."] = "Ячеек запрета пока нет.",
    ["Each copy adds a bit less than the one before."] = "Каждая копия слабее предыдущей.",
    ["Arcanite Skeleton Key"] = "Арканитовый ключ",
    ["Darkmoon Card: Insight"] = "Карта: Озарение",
    ["Dirge's Chimaerok Chops"] = "Отбивная химеры",
    ["Fat Goblin Purse"] = "Кошель гоблина",
    ["Heavy Runecloth Bandage"] = "Плотная рунная повязка",
    ["Swiftness Potion"] = "Зелье скорости",
    ["Tough Jerky"] = "Вяленое мясо",
    ["Troll's Blood Potion"] = "Зелье крови тролля",
    ["Blackhand's Breadth"] = "Талисман Чернорука",
    ["Drake Fang"] = "Клык дракона",
    ["Earthstrike"] = "Удар земли",
    ["Barbed Choker"] = "Шипастый ошейник",
    ["Major Healthstone"] = "Большой камень здоровья",
    ["Lifestone"] = "Камень жизни",
    ["Basic Campfire"] = "Костёр",
    ["Darkmoon Card: Heroism"] = "Карта: Героизм",
    ["Lifegiving Gem"] = "Животворный самоцвет",
    ["Royal Seal of Eldre'Thalas"] = "Печать Эльдре'Таласа",
    ["Force Reactive Disk"] = "Реактивный диск",
    ["Insignia of the Alliance"] = "Знак Альянса",
    ["Soulstone"] = "Камень души",
    ["Hand of Ragnaros"] = "Длань Рагнароса",
    ["Ironfoe"] = "Железный враг",
    ["Darkmoon Card: Maelstrom"] = "Карта: Водоворот",
    ["Gnomish Death Ray"] = "Гномский луч смерти",
    ["Bloodlust Brooch"] = "Брошь кровожадности",
    ["Zandalarian Hero Charm"] = "Талисман героя Зандалара",
    ["Kiss of the Spider"] = "Поцелуй паука",
    ["Mark of the Champion"] = "Метка чемпиона",
    ["Gnomish Magnet"] = "Гномский магнит",
    ["Goblin Rocket Boots"] = "Гоблинские ракетные сапоги",
    ["Chests have an 11% chance to cost nothing."] = "Сундук с шансом 11% бесплатный.",
    ["Chests have a 10% chance to cost nothing."] = "Сундук с шансом 10% бесплатный.",
    ["After 4 sec without being hit, regain 1.35% of your health every second."] = "Если 4 сек. не получать урон, восстанавливается 1,35% здоровья в секунду.",
    ["After 4 sec without being hit, regain 1% of your health every second."] = "Если 4 сек. не получать урон, восстанавливается 1% здоровья в секунду.",
    ["Turkey legs drop 50% more often and heal 25% more."] = "Мясо выпадает на 50% чаще и лечит на 25% сильнее.",
    ["You have no ban slots yet"] = "Ячеек запрета пока нет",
    ["Common Darkmoon Card (all classes)"] = "Обычная карта Новолуния (все классы)",
    ["Common Darkmoon Card"] = "Обычная карта Новолуния",
    ["Starter"] = "Начальная",
    ["Unlocked"] = "Открыта",
    ["Darkmoon Tickets"] = "Билеты Новолуния",
    ["Buy a ban slot: 25 tickets"] = "Купить ячейку: 25 билетов",
    ["Ban This Card"] = "Запретить карту",
    ["Ban slots"] = "Ячейки запрета",
    ["0 used, 0 free"] = "0 занято, 0 свободно",
}
for en, ru in pairs(v09Strings) do dict[en] = ru end

-- HordesRU 1.0: fully spelled out Mage talents, server descriptions and compact terminology.
local v10Strings = {
    ["10 yard radius"] = "Радиус 10 ярдов",
    ["10 yd radius"] = "Радиус 10 ярдов",
    ["A Frozen enemy that dies shatters, dealing Frost damage to enemies within 5 yards."] = "Умирающий замороженный враг взрывается осколками и наносит ледяной урон в радиусе 5 ярдов.",
    ["Affliction"] = "Колдовство",
    ["After Arcane Concentration triggers, your next spell deals 20% more damage."] = "После «Чародейской сосредоточенности» следующее заклинание наносит на 20% больше урона.",
    ["After each Blink, your next 3 spells have 10% more critical strike chance."] = "После «Скачка» следующие 3 заклинания получают +10% к шансу крита.",
    ["Aftermath"] = "Последствия",
    ["All your other spells deal 15% less damage."] = "Остальные ваши заклинания наносят на 15% меньше урона.",
    ["Arcane"] = "Тайная магия",
    ["Arcane Barrage"] = "Чародейский залп",
    ["Arcane Concentration"] = "Чародейская сосредоточенность",
    ["Arcane Echo"] = "Чародейское эхо",
    ["Arcane Explosion"] = "Чародейский взрыв",
    ["Arcane Explosion slows normal enemies by 30% for 2 sec"] = "«Чародейский взрыв» замедляет обычных врагов на 30% на 2 сек.",
    ["Arcane Explosion slows normal enemies by 30% for 2 sec."] = "«Чародейский взрыв» замедляет обычных врагов на 30% на 2 сек.",
    ["Arcane Focus"] = "Чародейская концентрация",
    ["Arcane Fortitude"] = "Чародейская стойкость",
    ["Arcane Instability"] = "Чародейская нестабильность",
    ["Arcane Meditation"] = "Чародейская медитация",
    ["Arcane Mind"] = "Чародейский разум",
    ["Arcane Missiles"] = "Чародейские стрелы",
    ["Arcane Missiles deals 4% more damage."] = "Урон «Чародейских стрел» увеличен на 4%.",
    ["Arcane Missiles fires 1 additional missile."] = "«Чародейские стрелы» выпускают ещё один снаряд.",
    ["Arcane Missiles fires 1 more missile."] = "«Чародейские стрелы» выпускают ещё один снаряд.",
    ["Arcane Missiles' last missile also hits 2 additional nearby enemies."] = "Последний снаряд «Чародейских стрел» поражает ещё 2 ближайших врагов.",
    ["Arcane Missiles' last missile also hits 2 nearby enemies"] = "Последний снаряд «Чародейских стрел» поражает ещё 2 ближайших врагов.",
    ["Arcane Potency"] = "Чародейская мощь",
    ["Arcane Potency lasts for 5 spells."] = "«Чародейская мощь» действует на 5 заклинаний.",
    ["Arcane Shield"] = "Чародейский щит",
    ["Arcane spells deal 10% more damage to Slowed or Chilled enemies."] = "Тайная магия наносит на 10% больше урона замедленным и охлаждённым врагам.",
    ["Arcane spells deal 2% more damage."] = "Урон тайной магии увеличен на 2%.",
    ["Arcane spells deal 3% more damage."] = "Урон тайной магии увеличен на 3%.",
    ["Arcane Subtlety"] = "Тонкая магия",
    ["Arcane Surge"] = "Чародейский всплеск",
    ["Arcane Tempo"] = "Чародейский темп",
    ["Arcane · AoE"] = "Тайная магия · по области",
    ["Arctic Reach"] = "Арктический предел",
    ["Armor"] = "Броня",
    ["Bane"] = "Погибель",
    ["Blast Wave"] = "Взрывная волна",
    ["Blasts all enemies within 10 yards of you with arcane energy, dealing Arcane damage."] = "Поражает врагов в радиусе 10 ярдов уроном тайной магии.",
    ["Blasts all enemies within 10 yards of you with arcane energy, dealing Arcane damage. Also goes off where you land after each Blink."] = "Поражает всех врагов в радиусе 10 ярдов тайной магией. Срабатывает также при приземлении после «Скачка».",
    ["Blasts all enemies within 10 yards of you with arcane energy, dealing Arcane damage. It also goes off where you land after each Blink."] = "Поражает всех врагов в радиусе 10 ярдов тайной магией. Также срабатывает в точке приземления после «Скачка».",
    ["Blasts all enemies within 10 yards of you with arcane energy, dealing Arcane damage. It also goes off where you land after each Blink. A blast leaves a time bubble for 10 sec: normal enemies inside move 60% slower, and all enemies inside take 15% more damage. The next blast after it fades leaves a new one."] = "Наносит урон тайной магией врагам в радиусе 10 ярдов и срабатывает после «Скачка». Оставляет на 10 сек. временной пузырь: обычные враги замедлены на 60%, все получают на 15% больше урона. Новый пузырь появляется после исчезновения старого.",
    ["Blink"] = "Скачок",
    ["Blizzard"] = "Снежная буря",
    ["Blizzard applies 2 stacks of Chill each second."] = "«Снежная буря» накладывает 2 эффекта охлаждения в секунду.",
    ["Blizzard lasts 1 sec longer."] = "«Снежная буря» длится на 1 сек. дольше.",
    ["Blizzard's last tick Freezes normal enemies"] = "Последний удар «Снежной бури» замораживает обычных врагов.",
    ["Bone Chilling"] = "Пронизывающий холод",
    ["Burning Embers"] = "Тлеющие угли",
    ["Burning lasts 2 sec longer."] = "Горение длится на 2 сек. дольше.",
    ["Burning Soul"] = "Пылающая душа",
    ["Burning stacks up to 40 instead of 30"] = "Максимум горения — 40 эффектов вместо 30.",
    ["Burning: Each stack deals Fire damage every tick. Each new stack refreshes all stacks to their full duration, up to 30 stacks. When a burning enemy dies, half of its stacks spread to the 2 nearest enemies within 8 yards, and the damage its stacks had left bursts onto up to 4 enemies within 8 yards, half on each."] = "Горение: наносит периодический урон огнём, новые стаки обновляют длительность (до 30). После смерти врага половина переносится на двух ближайших, а остаточный урон поражает до четырёх врагов в радиусе 8 ярдов.",
    ["Can evolve into"] = "Можно улучшить до",
    ["Can evolve into Fel Imps or Imp Swarm through a Legendary rank, offered at rank 10 or higher."] = "Начиная с 10-го ранга доступна легендарная эволюция: «Бесы Скверны» или «Стая бесов».",
    ["Can evolve into Slow Time or Presence of Mind through a Legendary rank, offered at rank 10 or higher"] = "На 10-м ранге и выше доступна легендарная эволюция: «Замедление времени» или «Присутствие духа».",
    ["Can evolve into Slow Time or Presence of Mind through a Legendary rank, offered at rank 10 or higher."] = "На 10-м ранге и выше доступна легендарная эволюция: «Замедление времени» или «Присутствие духа».",
    ["Chill lasts 1 sec longer."] = "Охлаждение длится на 1 сек. дольше.",
    ["Clearcasting"] = "Ясность мысли",
    ["Cold Snap"] = "Холодный щит",
    ["Conflagration"] = "Пожарище",
    ["Cooldown"] = "Перезарядка",
    ["Corruption"] = "Порча",
    ["Critical Mass"] = "Критическая масса",
    ["Curse of Agony"] = "Проклятие агонии",
    ["Damage"] = "Урон",
    ["Demon Skin"] = "Демоническая кожа",
    ["Demonic Embrace"] = "Демонические объятия",
    ["Demonic Sacrifice"] = "Демоническая жертва",
    ["Demonology"] = "Демонология",
    ["Destruction"] = "Разрушение",
    ["Devastation"] = "Опустошение",
    ["Drain Life"] = "Похищение жизни",
    ["Each Arcane spell gives +1% Haste for 6 sec, stacking up to 5 times."] = "Каждое заклинание тайной магии даёт +1% скорости на 6 сек. До 5 эффектов.",
    ["Each Blink gives you a Shield equal to 3% of your maximum health."] = "Каждый «Скачок» даёт щит в размере 3% макс. здоровья.",
    ["Each Blink grants a Shield of 3% of your maximum health."] = "Каждый «Скачок» даёт щит в размере 3% макс. здоровья.",
    ["Each Blink reduces the cooldown of all your spells by 1 sec."] = "Каждый «Скачок» сокращает перезарядку всех заклинаний на 1 сек.",
    ["Each Blink takes 1 sec off all your spell cooldowns."] = "Каждый «Скачок» сокращает перезарядку всех заклинаний на 1 сек.",
    ["Each different demon you command makes all your demons deal 10% more damage, up to 40%."] = "Каждый вид призванного демона даёт остальным +10% к урону (до 40%).",
    ["Each stack deals Fire damage every tick. Each new stack refreshes all stacks to their full duration, up to 30 stacks. When a burning enemy dies, half of its stacks spread to the 2 nearest enemies within 8 yards, and the damage its stacks had left bursts onto up to 4 enemies within 8 yards, half on each."] = "Каждый эффект наносит периодический урон огнём. Новые эффекты обновляют все стаки (до 30). После смерти цели половина переходит на двух ближайших врагов, а остаточный урон поражает до четырёх врагов в радиусе 8 ярдов.",
    ["Emberstorm"] = "Огненная буря",
    ["Fel Concentration"] = "Средоточие Скверны",
    ["Fel Imps"] = "Бесы Скверны",
    ["Fel Intellect"] = "Интеллект Скверны",
    ["Felhunter"] = "Охотник Скверны",
    ["Fingers of Frost"] = "Ледяные пальцы",
    ["Fire"] = "Огонь",
    ["Fire and Brimstone"] = "Огонь и сера",
    ["Fire Blast"] = "Огненный взрыв",
    ["Fire Blast deals 2% more damage per Burning stack on the target."] = "«Огненный взрыв» наносит на 2% больше урона за каждый эффект горения на цели.",
    ["Fire Blast deals an additional 2% damage for each stack of Burning on the target."] = "«Огненный взрыв» наносит на 2% больше урона за каждый эффект горения на цели.",
    ["Fire Blast spreads its target's Burning to 2 nearby enemies"] = "«Огненный взрыв» переносит горение на 2 ближайших врагов.",
    ["Fire Blast spreads its target's Burning to 2 nearby enemies."] = "«Огненный взрыв» переносит горение на 2 ближайших врагов.",
    ["Fire Blast's first critical strike each cast makes Pyroblast recharge instantly."] = "Первый крит «Огненного взрыва» мгновенно перезаряжает «Огненную глыбу».",
    ["Fire critical strikes take 0.5 sec off Pyroblast's cooldown."] = "Криты огнём сокращают перезарядку «Огненной глыбы» на 0,5 сек.",
    ["Fire Power"] = "Сила огня",
    ["Fire spells deal 3% more damage."] = "Урон огненной магии увеличен на 3%.",
    ["Fireball"] = "Огненный шар",
    ["Fireball applies 1 additional stack of Burning."] = "«Огненный шар» добавляет ещё 1 эффект горения.",
    ["Fireball applies 1 more stack of Burning."] = "«Огненный шар» добавляет ещё 1 эффект горения.",
    ["Fireball deals 4% more damage."] = "Урон «Огненного шара» увеличен на 4%.",
    ["Firestarter"] = "Поджигатель",
    ["Firestorm"] = "Огненная буря",
    ["Flame Throwing"] = "Дальнее пламя",
    ["Flamestrike"] = "Огненный столб",
    ["Free. Arcane Missiles is a starter spell, with Blink as your dash"] = "Бесплатно. «Чародейские стрелы» — начальное заклинание; рывок заменяется «Скачком».",
    ["Free. Arcane Missiles is a starter spell, with Blink as your dash."] = "Бесплатно. «Чародейские стрелы» — начальное заклинание. Вместо рывка — «Скачок».",
    ["Free. Arcane Missiles is a starter spell."] = "Бесплатно. «Чародейские стрелы» — начальное заклинание.",
    ["Free. Fireball is a starter spell."] = "Бесплатно. «Огненный шар» — начальное заклинание.",
    ["Free. Frostbolt is a starter spell."] = "Бесплатно. «Ледяная стрела» — начальное заклинание.",
    ["Freezing Winds"] = "Морозные ветра",
    ["Frost"] = "Лёд",
    ["Frost Channeling"] = "Ледяной поток",
    ["Frost Nova"] = "Кольцо льда",
    ["Frost spells deal 2% more damage."] = "Урон ледяной магии увеличен на 2%.",
    ["Frost spells deal 3% more damage."] = "Урон ледяной магии увеличен на 3%.",
    ["Frost Warding"] = "Ледяной оберег",
    ["Frostbolt"] = "Ледяная стрела",
    ["Frostbolt applies 1 more stack of Chill."] = "«Ледяная стрела» добавляет ещё 1 эффект охлаждения.",
    ["Frostbolt deals 10% more damage to Frozen enemies."] = "«Ледяная стрела» наносит на 10% больше урона замороженным врагам.",
    ["Frostbolt fires a second bolt 20% of the time."] = "«Ледяная стрела» с шансом 20% запускает вторую стрелу.",
    ["Frostbolt treats its target as Frozen 15% of the time."] = "«Ледяная стрела» с шансом 15% считает цель замороженной.",
    ["Frozen Core"] = "Ледяное сердце",
    ["Frozen Touch"] = "Ледяное касание",
    ["Glacial Fragments"] = "Ледниковые осколки",
    ["Grim Reach"] = "Мрачный предел",
    ["Haste"] = "Скорость",
    ["Hellfire"] = "Адское пламя",
    ["Hot Streak"] = "Полоса везения",
    ["Ice Barrier"] = "Ледяная преграда",
    ["Ice Floes"] = "Льдины",
    ["Ice Shards"] = "Ледяные осколки",
    ["Ignite"] = "Воспламенение",
    ["Immolate applies 1 additional stack of Burning."] = "«Жертвенный огонь» накладывает ещё 1 эффект горения.",
    ["Imp Swarm"] = "Стая бесов",
    ["Improved Arcane Explosion"] = "Улучшенный чародейский взрыв",
    ["Improved Arcane Missiles"] = "Усиленные чародейские стрелы",
    ["Improved Arcane Potency"] = "Усиленная чародейская мощь",
    ["Improved Blink"] = "Улучшенный скачок",
    ["Improved Corruption"] = "Улучшенная порча",
    ["Improved Curse of Agony"] = "Улучшенная агония",
    ["Improved Drain Life"] = "Улучшенное похищение жизни",
    ["Improved Felhunter"] = "Улучшенный охотник Скверны",
    ["Improved Fire Blast"] = "Улучшенный огненный взрыв",
    ["Improved Fire Ward"] = "Улучшенный огненный оберег",
    ["Improved Fireball"] = "Усиленный огненный шар",
    ["Improved Frost Nova"] = "Улучшенное кольцо льда",
    ["Improved Frostbolt"] = "Усиленная ледяная стрела",
    ["Improved Glacial Fragments"] = "Усиленные ледниковые осколки",
    ["Improved Ice Floes"] = "Усиленные льдины",
    ["Improved Immolate"] = "Улучшенное жертвенный огонь",
    ["Improved Imp"] = "Улучшенный бес",
    ["Improved Kindling"] = "Улучшенная растопка",
    ["Improved Mana Shield"] = "Улучшенный щит маны",
    ["Improved Pyroclasm"] = "Усиленный катаклизм",
    ["Improved Rain of Fire"] = "Улучшенный огненный дождь",
    ["Improved Shadow Bolt"] = "Усиленная стрела Тьмы",
    ["Improved Succubus"] = "Улучшенный суккуб",
    ["Improved Voidwalker"] = "Улучшенный демон Бездны",
    ["Improved Winter's Chill"] = "Усиленная зимняя стужа",
    ["Incineration"] = "Испепеление",
    ["Kindling"] = "Растопка",
    ["Kindling also takes 0.5 sec off Flamestrike's cooldown."] = "«Растопка» сокращает перезарядку «Огненного столба» на 0,5 сек.",
    ["Launches 5 Arcane Missiles at the nearest enemy over 1 sec, each dealing Arcane damage. After each Blink, fires all 5 at once at the nearest enemies."] = "За 1 сек. выпускает 5 чародейских стрел в ближайшего врага. Каждая наносит урон тайной магией. После «Скачка» все 5 стрел выпускаются одновременно по ближайшим целям.",
    ["Launches 5 Arcane Missiles at the nearest enemy over 1 sec, each dealing Arcane damage. After each Blink, it fires all 5 at once. As your starter spell, it turns your dash into Blink."] = "За 1 сек. выпускает 5 чародейских стрел в ближайшего врага. После «Скачка» все 5 вылетают одновременно. Если выбрано начальным заклинанием, рывок превращается в «Скачок».",
    ["Magic Absorption"] = "Поглощение магии",
    ["Marked enemies take 15% more damage from you and your summons, raised by the marking spell's ranks and Mark upgrades up to 30%. Talents add on top. When a Marked enemy dies, the Mark passes to the 2 nearest unmarked enemies within 10 yards."] = "Помеченные враги получают на 15% больше урона от вас и призывов (до 30% с улучшениями). Таланты усиливают эффект. После смерти цели метка переходит на двух ближайших врагов в радиусе 10 ярдов.",
    ["Master Demonologist"] = "Мастер демонологии",
    ["Master of Elements"] = "Владыка стихий",
    ["Mastery"] = "Мастерство",
    ["Missile Barrage"] = "Заградительный огонь",
    ["Molten Shields"] = "Раскалённые щиты",
    ["New passive"] = "Новый пассивный эффект",
    ["New spell"] = "Новое заклинание",
    ["Nightmare"] = "Кошмар",
    ["Pandemic"] = "Пандемия",
    ["Permafrost"] = "Вечная мерзлота",
    ["Phase Rush"] = "Фазовый рывок",
    ["Piercing Ice"] = "Пронзающий лёд",
    ["Power"] = "Сила",
    ["Presence of Mind"] = "Присутствие духа",
    ["Prismatic Cloak"] = "Радужный плащ",
    ["Pyroblast"] = "Огненная глыба",
    ["Pyroblast's splash applies 1 stack of Burning."] = "Взрыв «Огненной глыбы» накладывает 1 эффект горения.",
    ["Pyroblast's splash reaches 30% farther."] = "Радиус взрыва «Огненной глыбы» увеличен на 30%.",
    ["Pyroclasm"] = "Огненный катаклизм",
    ["Pyromaniac"] = "Пироман",
    ["Radius"] = "Радиус",
    ["Rain of Fire"] = "Огненный дождь",
    ["Regain 0.1% of your health every second."] = "Восстанавливает 0,1% здоровья в секунду.",
    ["Ruin"] = "Разорение",
    ["Searing Burst"] = "Опаляющий взрыв",
    ["Shadow"] = "Тьма",
    ["Shadow and Flame"] = "Тьма и пламя",
    ["Shadow Bolt"] = "Стрела Тьмы",
    ["Shadow Mastery"] = "Владыка теней",
    ["Shadowburn"] = "Ожог Тьмы",
    ["Shield"] = "Щит",
    ["Siphon Life"] = "Поглощение жизни",
    ["Slow Time"] = "Замедление времени",
    ["Splintering Cold"] = "Осколки холода",
    ["Splitting Ice"] = "Расщепляющий лёд",
    ["Succubus"] = "Суккуб",
    ["Summons an Imp that hurls 2 Firebolts at a time at enemies within 30 yards, leaving them burning."] = "Призывает беса, бросающего по 2 огненные стрелы в радиусе 30 ярдов. Стрелы поджигают врагов.",
    ["Summons an Imp that hurls 2 Firebolts at enemies within 30 yards, leaving them burning."] = "Призывает беса, бросающего по 2 огненные стрелы в радиусе 30 ярдов. Стрелы поджигают врагов.",
    ["Suppression"] = "Подавление",
    ["Temporal Flux"] = "Поток времени",
    ["The shards apply 3 stacks of Chill."] = "Осколки накладывают 3 эффекта охлаждения.",
    ["Torment the Weak"] = "Мучение слабых",
    ["Unholy Power"] = "Нечестивая сила",
    ["Voidwalker"] = "Демон Бездны",
    ["Warlocks can choose it as their starter spell at the Run Master."] = "Чернокнижник может выбрать его начальным заклинанием у распорядителя забегов.",
    ["Winter's Chill"] = "Зимняя стужа",
    ["Your Burning deals 8% more damage."] = "Урон горения увеличен на 8%.",
    ["Your critical strikes deal 10% more damage to Frozen enemies."] = "Криты наносят на 10% больше урона замороженным врагам.",
    ["Your critical strikes deal 10% more damage."] = "Критические удары наносят на 10% больше урона.",
    ["Your critical strikes deal 5% more damage."] = "Критические удары наносят на 5% больше урона.",
    ["Your dash becomes Blink and its cooldown is halved."] = "Рывок превращается в «Скачок»; перезарядка сокращается вдвое.",
    ["Your dash becomes Blink and its cooldown is halved. Each Blink sets off your Arcane Explosion where you land."] = "Рывок превращается в «Скачок» с перезарядкой вдвое быстрее. При приземлении срабатывает «Чародейский взрыв».",
    ["Your dash becomes Blink and its cooldown is halved. Each dash sets off your Arcane Explosion where you land. Stacks with the Blink spell."] = "Рывок превращается в «Скачок», а его перезарядка сокращается вдвое. При приземлении срабатывает «Чародейский взрыв». Совмещается с заклинанием «Скачок».",
    ["Your dash recharges 10% faster."] = "Рывок восстанавливается на 10% быстрее.",
    ["Your demons deal 10% more damage for each different demon you command, up to 40%."] = "Демоны наносят на 10% больше урона за каждый призванный вид (до 40%).",
    ["Your shots Mark every enemy they hit and target Marked enemies first. Marked enemies take 30% more damage from you."] = "Каждый выстрел помечает задетых врагов и в первую очередь поражает отмеченные цели. Они получают от вас на 30% больше урона.",
    ["Your spells have a 2% chance to recharge instantly."] = "Заклинания с шансом 2% мгновенно перезаряжаются.",
    ["Your spells have a 2% chance to reset their cooldown."] = "Заклинания с шансом 2% мгновенно перезаряжаются.",
}
for en, ru in pairs(v10Strings) do dict[en] = ru end

-- HordesRU v1.1: canonical player-visible names and descriptions across all nine classes.
local v11Strings = {
    ["+10% experience."] = "+10% опыта.",
    ["+10% maximum health. Regain 0.15% of your health every second."] = "+10% максимального здоровья и восстановление 0,15% здоровья в секунду.",
    ["+12% maximum health."] = "+12% максимального здоровья.",
    ["+15% Valor."] = "+15% доблести.",
    ["+3% Crit."] = "+3% вероятности критического удара.",
    ["+4% Power and +2% Crit."] = "+4% силы и +2% вероятности критического удара.",
    ["+5% Haste."] = "+5% скорости.",
    ["+8% movement speed."] = "+8% скорости передвижения.",
    ["Accuracy"] = "Меткость",
    ["Active. Talent changes are saved to this preset."] = "Активно. Изменения талантов сохраняются в этот набор.",
    ["Adjust the maximum distance the camera will follow behind you."] = "Установите максимальное расстояние следования камеры за персонажем.",
    ["Adjust the speed at which the mouse cursor moves."] = "Настройте скорость курсора мыши.",
    ["Adjusts the ambient sound volume."] = "Настройка громкости окружения.",
    ["Adjusts the background music volume."] = "Настройка громкости фоновой музыки.",
    ["Adjusts the master sound volume."] = "Настройка общей громкости.",
    ["Adjusts the sound effect volume."] = "Настройка громкости звуковых эффектов.",
    ["Adrenaline Rush"] = "Выброс адреналина",
    ["After 4 sec without being hit, regain 1% of your health every second."] = "Если 4 сек. не получать урон, восстанавливается 1% здоровья в секунду.",
    ["After standing still for 1 sec, regain 2% of your health every second."] = "После 1 сек. неподвижности восстанавливается 2% здоровья в секунду.",
    ["Aftershock"] = "Остаточный удар",
    ["Aggression"] = "Агрессия",
    ["Agony"] = "Агония",
    ["Aimed Shot marks every enemy it passes through."] = "«Прицельный выстрел» помечает каждого пронзённого врага.",
    ["All gear now has a tier and a quality, from Common to Legendary."] = "У экипировки теперь есть уровень и редкость — от обычной до легендарной.",
    ["All your old gear has been converted."] = "Вся старая экипировка преобразована.",
    ["Alpha Wolf"] = "Вожак волков",
    ["Always display NPC names in the game world."] = "Всегда показывать имена НИП.",
    ["Always display player guild names in the game world."] = "Всегда показывать названия гильдий игроков.",
    ["Always display player names in the game world."] = "Всегда показывать имена игроков.",
    ["Always display player titles in the game world."] = "Всегда показывать звания игроков.",
    ["Ambidexterity"] = "Амбидекстрия",
    ["Amplify Curse"] = "Усиление проклятия",
    ["Ancestral Fortitude"] = "Стойкость предков",
    ["Ancestral Healing"] = "Исцеление предков",
    ["Ancestral Knowledge"] = "Знания предков",
    ["Ancient Madness"] = "Древнее безумие",
    ["Animal Handler"] = "Дрессировщик",
    ["Annihilator"] = "Уничтожитель",
    ["Answered Prayers"] = "Услышанные молитвы",
    ["Anticipation"] = "Предчувствие",
    ["Arcane Missiles' last missile also hits 2 additional nearby enemies."] = "Последняя «Чародейская стрела» поражает ещё двух ближайших врагов.",
    ["Arcane Shot applies Hunter's Mark."] = "«Чародейский выстрел» накладывает «Метку охотника».",
    ["Arcane Splinters"] = "Чародейские осколки",
    ["Arcane damage"] = "Чародейский урон",
    ["Archangel"] = "Архангел",
    ["Ascendance"] = "Перерождение",
    ["Astral Bulwark"] = "Астральный оплот",
    ["Auto-Follow Speed"] = "Скорость автоследования",
    ["Automatic matches the controller you're using."] = "Автоматически выбирать используемый контроллер.",
    ["Avenging Wrath"] = "Гнев карателя",
    ["Awakening"] = "Пробуждение",
    ["B cancels"] = "B — отмена",
    ["Backlash"] = "Ответный удар",
    ["Balance of Power"] = "Равновесие сил",
    ["Ban the ones you don't want to see in your runs."] = "Запретите карты, которые не хотите получать в забегах.",
    ["Bane"] = "Проклятие",
    ["Banish Card"] = "Удалить карту из выбора",
    ["Barrage"] = "Шквал",
    ["Beast Cleave"] = "Звериный раскол",
    ["Below 50% health, run 50% faster for 4 sec. 20 sec cooldown."] = "При здоровье ниже 50% скорость бега повышается на 50% на 4 сек. Перезарядка — 20 сек.",
    ["Benediction"] = "Благословение",
    ["Berserker"] = "Берсерк",
    ["Bestial Discipline"] = "Звериная дисциплина",
    ["Bestial Discipline works at half strength without Pack Leader."] = "«Звериная дисциплина» действует с половинной силой даже без «Вожака стаи».",
    ["Bestial Wrath"] = "Звериный гнев",
    ["Bind a key to Use Hearthstone in Key Bindings."] = "Назначьте клавишу использования камня возвращения в настройках управления.",
    ["Binding Shot"] = "Сковывающий выстрел",
    ["Blackout"] = "Затемнение",
    ["Blade Dancer"] = "Танцор клинков",
    ["Blade Twisting"] = "Выворачивание клинка",
    ["Bleed"] = "Кровотечение",
    ["Bleeding"] = "Кровотечение",
    ["Blessed Resilience"] = "Благословенная стойкость",
    ["Blessing of Sanctuary"] = "Благословение неприкосновенности",
    ["Blind"] = "Ослепление",
    ["Blinding Light"] = "Слепящий свет",
    ["Blood Craze"] = "Кровавое безумие",
    ["Blood Frenzy"] = "Кровавое неистовство",
    ["Bloodcraze"] = "Кровавое безумие",
    ["Bloodsurge"] = "Прилив крови",
    ["Bloodtalons"] = "Кровавые когти",
    ["Blue"] = "Синий",
    ["Booming Voice"] = "Громогласность",
    ["Borrowed Time"] = "Заёмное время",
    ["Builds will be shown here in a future update."] = "В будущих обновлениях здесь появятся варианты сборок.",
    ["Bulwark of Righteous Fury"] = "Бастион праведного гнева",
    ["Burning Embers"] = "Тлеющие угли",
    ["Burning: Each stack deals Fire damage every tick. Each new stack refreshes all stacks to their full duration, up to 30 stacks. When a burning enemy dies, half of its stacks spread to the 2 nearest enemies within 8 yards, and the damage its stacks had left bursts onto up to 4 enemies within 8 yards, half on each."] = "Горение: каждый эффект периодически наносит урон огнём. Новый эффект обновляет длительность всех эффектов (до 30). При гибели цели половина эффектов переходит двум ближайшим врагам в радиусе 8 ярдов, а оставшийся периодический урон наносится четырём врагам поблизости.",
    ["Button Prompts"] = "Подсказки кнопок",
    ["Buys gear and upgrades at the Inn. You keep it between runs."] = "Покупайте экипировку и улучшения в таверне. Они сохраняются между забегами.",
    ["Call of Flame"] = "Зов пламени",
    ["Call of Thunder"] = "Зов грома",
    ["Call of the Elements"] = "Зов стихий",
    ["Camera Pitch Speed"] = "Скорость наклона камеры",
    ["Camera Turn Speed"] = "Скорость вращения камеры",
    ["Camouflage"] = "Камуфляж",
    ["Can't be learned with "] = "Несовместимо с: ",
    ["Can't reach the leaderboard"] = "Не удалось подключиться к таблице рекордов",
    ["Card Buttons"] = "Кнопки карточек",
    ["Card bans are counted on their own, on the Darkmoon Cards tab."] = "Запреты карт учитываются отдельно на вкладке карт Новолуния.",
    ["Card bans use separate slots on the Darkmoon Cards tab."] = "Для карт Новолуния используются отдельные ячейки запрета.",
    ["Careful Aim"] = "Тщательное прицеливание",
    ["Carry it in your bags and equip it whenever you like."] = "Носите предмет в сумке и экипируйте при необходимости.",
    ["Castigation"] = "Наказание",
    ["Cat Form: your critical strikes deal 25% more damage. Bear Form: take 20% less damage and move 15% faster."] = "Облик кошки: критические удары наносят на 25% больше урона. Облик медведя: на 20% меньше входящего урона и +15% скорости.",
    ["Cataclysm"] = "Катаклизм",
    ["Celestial Alignment"] = "Небесное равновесие",
    ["Celestial Focus"] = "Небесная сосредоточенность",
    ["Censure"] = "Порицание",
    ["Chance"] = "Шанс",
    ["Charged Bolts"] = "Заряженные молнии",
    ["Cheat Death"] = "Обман смерти",
    ["Cheat death once: when you would die, come back with 40% health."] = "Один раз предотвращает смерть и восстанавливает вас с 40% здоровья.",
    ["Check the box below to be listed."] = "Установите флажок ниже, чтобы попасть в рейтинг.",
    ["Chests have a 10% chance to cost nothing."] = "С вероятностью 10% сундук можно открыть бесплатно.",
    ["Chill"] = "Охлаждение",
    ["Chill freezes at 6 stacks instead of 10."] = "«Охлаждение» замораживает при 6 эффектах вместо 10.",
    ["Chimera Shot"] = "Выстрел химеры",
    ["Choose how the range ring around your character looks."] = "Настройте отображение круга дальности вокруг персонажа.",
    ["Clear a higher level to upgrade it further."] = "Пройдите уровень выше, чтобы улучшить дальше.",
    ["Clearing a stage gives one back."] = "За прохождение этапа возвращается один заряд.",
    ["Cleave"] = "Рассекающий удар",
    ["Clever Traps"] = "Хитрые ловушки",
    ["Click an item below to put it in the vault."] = "Нажмите на предмет, чтобы положить его в хранилище.",
    ["Click to disable"] = "Нажмите, чтобы отключить",
    ["Click to enable"] = "Нажмите, чтобы включить",
    ["Click to make this your starter spell."] = "Нажмите, чтобы сделать начальным заклинанием.",
    ["Click to put it in the vault."] = "Нажмите, чтобы положить в хранилище.",
    ["Click to send it home now."] = "Нажмите, чтобы отправить домой.",
    ["Click to show everything again."] = "Нажмите, чтобы снова показать всё.",
    ["Click to start your runs with it."] = "Нажмите, чтобы начинать с этим заклинанием.",
    ["Click to switch off"] = "Нажмите, чтобы выключить",
    ["Click to switch on"] = "Нажмите, чтобы включить",
    ["Click to take it out of the vault."] = "Нажмите, чтобы забрать из хранилища.",
    ["Click-to-Move"] = "Передвижение щелчком мыши",
    ["Click-to-Move Camera Style"] = "Камера при управлении щелчками",
    ["Cloaks"] = "Плащи",
    ["Close or cancel"] = "Закрыть или отменить",
    ["Collection"] = "Коллекция",
    ["Color"] = "Цвет",
    ["Combat Expertise"] = "Боевое мастерство",
    ["Combat Potency"] = "Боевой потенциал",
    ["Combat Text Float Mode"] = "Отображение боевого текста",
    ["Combustion"] = "Возгорание",
    ["Commanding Presence"] = "Властное присутствие",
    ["Concussion"] = "Сотрясение",
    ["Concussion Blow"] = "Оглушающий удар",
    ["Consecrated Ground"] = "Освящённая земля",
    ["Consecrated Wrath"] = "Освящённый гнев",
    ["Consecration"] = "Освящение",
    ["Contagion"] = "Заражение",
    ["Continue in endless mode?"] = "Продолжить в бесконечном режиме?",
    ["Controller Settings"] = "Настройки контроллера",
    ["Controller settings"] = "Настройки контроллера",
    ["Convection"] = "Конвекция",
    ["Conviction"] = "Убеждённость",
    ["Cooldown"] = "Перезарядка",
    ["Cost: "] = "Стоимость: ",
    ["Count"] = "Количество",
    ["Counterattack"] = "Контратака",
    ["Creeping Vines"] = "Ползучие лозы",
    ["Crit chance"] = "Шанс крита",
    ["Crit damage"] = "Критический урон",
    ["Critical Strike Damage"] = "Урон критического удара",
    ["Critical strike chance"] = "Шанс критического удара",
    ["Critical strike damage"] = "Урон критического удара",
    ["Cruelty"] = "Жестокость",
    ["Crusade"] = "Крестовый поход",
    ["Crusader Strike"] = "Удар воина Света",
    ["Crusader's Might"] = "Мощь крестоносца",
    ["Current"] = "Текущее",
    ["Curse of Exhaustion"] = "Проклятие изнеможения",
    ["Cursor"] = "Курсор",
    ["Cursor Speed"] = "Скорость курсора",
    ["Cursor speed"] = "Скорость курсора",
    ["Cyclone"] = "Смерч",
    ["DRAWBACK"] = "НЕДОСТАТОК",
    ["Dagger Specialization"] = "Специализация на кинжалах",
    ["Damage"] = "Урон",
    ["Damage Done"] = "Нанесённый урон",
    ["Damage Types"] = "Типы урона",
    ["Danse Macabre"] = "Пляска смерти",
    ["Dark Ascension"] = "Тёмное вознесение",
    ["Dark Fortune"] = "Тёмная удача",
    ["Dark Fortunes"] = "Тёмные удачи",
    ["Dark Shadows"] = "Тёмные тени",
    ["Dark red"] = "Тёмно-красный",
    ["Darkmoon"] = "Новолуние",
    ["Darkness"] = "Тьма",
    ["Dash in your movement direction"] = "Рывок в направлении движения",
    ["Dash where you are moving"] = "Рывок в направлении движения",
    ["Date"] = "Дата",
    ["Daybreak"] = "Рассвет",
    ["Daze"] = "Оглушение",
    ["Dazed"] = "Ошеломление",
    ["Dazes"] = "Ошеломляет",
    ["Deadened Nerves"] = "Притуплённые нервы",
    ["Death Wish"] = "Жажда смерти",
    ["Deathmark"] = "Метка смерти",
    ["Debuffs"] = "Отрицательные эффекты",
    ["Decay"] = "Разложение",
    ["Deep Roots"] = "Глубокие корни",
    ["Deep Wounds applies 1 additional stack of Bleed."] = "«Глубокие раны» накладывают на 1 эффект кровотечения больше.",
    ["Deepening Shadows"] = "Сгущающиеся тени",
    ["Defeat"] = "Поражение",
    ["Defiance"] = "Неповиновение",
    ["Deflect"] = "Отражение",
    ["Deflection"] = "Отражение ударов",
    ["Delete %s?"] = "Удалить %s?",
    ["Demon Skin"] = "Демоническая кожа",
    ["Demonic Empowerment"] = "Усиление демонов",
    ["Demonic Knowledge"] = "Демонические знания",
    ["Demonic Pact"] = "Демонический союз",
    ["Demonic Resilience"] = "Демоническая стойкость",
    ["Denounce"] = "Обличение",
    ["Destructive Reach"] = "Дальность разрушения",
    ["Determination"] = "Решимость",
    ["Deterrence"] = "Сдерживание",
    ["Devastation"] = "Опустошение",
    ["Dire Beast"] = "Ужасный зверь",
    ["Dirty Tricks"] = "Грязные приёмы",
    ["Disabled"] = "Отключено",
    ["Discovery"] = "Открытие",
    ["Dispersing Light"] = "Рассеивающий свет",
    ["Display"] = "Отображение",
    ["Display damage numbers over hostile creatures when damaged."] = "Показывать числа урона над врагами.",
    ["Divine Favor"] = "Божественное одобрение",
    ["Divine Fury"] = "Божественное неистовство",
    ["Divine Illumination"] = "Божественное просветление",
    ["Divine Intellect"] = "Божественный интеллект",
    ["Divine Providence"] = "Божественное провидение",
    ["Divine Purpose"] = "Божественный замысел",
    ["Divine Storm"] = "Божественная буря",
    ["Divine Strength"] = "Божественная сила",
    ["Dodge chance"] = "Шанс уклонения",
    ["Dominant Mind"] = "Господство разума",
    ["Doomhammer"] = "Молот Рока",
    ["Dreadblades"] = "Клинки ужаса",
    ["Druid forms"] = "Облики друида",
    ["Druids"] = "Друиды",
    ["Druids fight using staves and two-handed maces."] = "Друиды сражаются посохами и двуручным дробящим оружием.",
    ["Dual Wield Specialization"] = "Специализация на двух оружиях",
    ["Dungeon room"] = "Комната подземелья",
    ["Each Bleeding enemy that dies gives +1% Power for 8 sec, stacking up to 10 times."] = "Каждая смерть кровоточащего врага даёт +1% силы на 8 сек. (до 10 эффектов).",
    ["Each Blink reduces the cooldown of all your spells by 1 sec."] = "Каждый «Скачок» сокращает перезарядку всех заклинаний на 1 сек.",
    ["Each of your living pets gives you +2% Power."] = "Каждый живой питомец даёт вам +2% силы.",
    ["Each of your living pets gives you +3% Power."] = "Каждый живой питомец даёт вам +3% силы.",
    ["Each of your totem spells plants 1 additional totem."] = "Каждое заклинание установки тотема создаёт ещё один тотем.",
    ["Each rank: "] = "За каждый ранг: ",
    ["Each run starts again at level 1."] = "Каждый новый забег начинается с первого уровня.",
    ["Each stack deals Fire damage every tick. Each new stack refreshes all stacks to their full duration, up to 30 stacks. When a burning enemy dies, half of its stacks spread to the 2 nearest enemies within 8 yards, and the damage its stacks had left bursts onto up to 4 enemies within 8 yards, half on each."] = "Каждый эффект периодически наносит урон огнём. Новый эффект обновляет длительность всех эффектов (до 30). При смерти горящей цели половина эффектов распространяется на двух ближайших врагов, а оставшийся урон достаётся четырём врагам в радиусе 8 ярдов.",
    ["Earned"] = "Получено",
    ["Earth's Grasp"] = "Хватка земли",
    ["Earthgrab Totem"] = "Тотем хватки земли",
    ["Echo of the Elements"] = "Эхо стихий",
    ["Efficiency"] = "Эффективность",
    ["Electrified Shocks"] = "Заряженные удары",
    ["Elemental Assault"] = "Натиск стихий",
    ["Elemental Focus"] = "Сосредоточение стихий",
    ["Elemental Fury"] = "Неистовство стихий",
    ["Elemental Oath"] = "Клятва стихий",
    ["Elemental Precision"] = "Точность стихий",
    ["Elemental Warding"] = "Стихийный оберег",
    ["Elite affixes"] = "Модификаторы элитных врагов",
    ["Elusiveness"] = "Неуловимость",
    ["Emberstorm"] = "Буря углей",
    ["Empowered Healing"] = "Усиленное исцеление",
    ["Empty"] = "Пусто",
    ["Empty (Pack Mule)"] = "Пусто (вьючный мул)",
    ["Empty passive slot"] = "Пустая ячейка пассивного эффекта",
    ["Empty spell slot"] = "Пустая ячейка заклинания",
    ["Empyreal Blaze"] = "Небесное пламя",
    ["Empyrean Power"] = "Небесная сила",
    ["Enable All Sound"] = "Включить все звуки",
    ["Enable Ambience"] = "Включить звуки окружения",
    ["Enable Emote Sounds"] = "Включить звуки эмоций",
    ["Enable Error Speech"] = "Озвучивать ошибки",
    ["Enable Floating Combat Text"] = "Показывать всплывающие числа боя",
    ["Enable Music"] = "Включить музыку",
    ["Enable Sound at Character"] = "Звук относительно персонажа",
    ["Enable ambient sounds."] = "Включить звуки окружения.",
    ["Enable background music."] = "Включить фоновую музыку.",
    ["Enable to continuously play background music."] = "Непрерывно воспроизводить фоновую музыку.",
    ["Enabled"] = "Включено",
    ["Enables or disables all game sound."] = "Включает или отключает все звуки игры.",
    ["Enchant"] = "Зачаровать",
    ["Enclosed raid"] = "Закрытый рейд",
    ["End this run?"] = "Завершить этот забег?",
    ["Endless levels"] = "Бесконечные уровни",
    ["Endurance"] = "Выносливость",
    ["Endurance Training"] = "Тренировка выносливости",
    ["Enemies have 30% more health and deal 20% more damage."] = "У врагов на 30% больше здоровья и на 20% больше урона.",
    ["Enemies killed this run."] = "Убийств врагов за забег.",
    ["Enhanced Tooltips"] = "Расширенные подсказки",
    ["Enhancing Totems"] = "Усиливающие тотемы",
    ["Enrage"] = "Исступление",
    ["Enrage also grants 10% movement speed."] = "«Исступление» также даёт +10% скорости передвижения.",
    ["Enter"] = "Войти",
    ["Entrapment"] = "Оковы",
    ["Epic gear"] = "Эпическая экипировка",
    ["Equip: "] = "При экипировке: ",
    ["Eradication"] = "Искоренение",
    ["Everlasting Affliction"] = "Вечная порча",
    ["Every 25 hits loads an Explosive Arrow into your Aimed Shot, up to 2."] = "Каждые 25 попаданий заряжают «Прицельный выстрел» взрывной стрелой (до 2 зарядов).",
    ["Every 3rd cast of each spell critically strikes every enemy it hits, and those critical strikes deal 25% more damage."] = "Каждое третье применение любого заклинания гарантированно наносит критический урон всем задетым врагам. Такой крит наносит ещё на 25% больше урона.",
    ["Every 4th cast of each spell critically strikes every enemy it hits, and those critical strikes deal 25% more damage."] = "Каждое четвёртое применение любого заклинания гарантированно наносит критический урон всем задетым врагам. Такой крит наносит ещё на 25% больше урона.",
    ["Every 60 sec, +25% Power for 15 sec."] = "Каждые 60 сек. даёт +25% силы на 15 сек.",
    ["Every 8th Smite resets the cooldown of Halo."] = "Каждая восьмая «Кара» обнуляет время восстановления «Ореола».",
    ["Every level brings a choice of 3 upgrades."] = "Каждый уровень предлагает три улучшения на выбор.",
    ["Evolved from "] = "Улучшено из: ",
    ["Execution Sentence"] = "Смертный приговор",
    ["Exit Game"] = "Выйти из игры",
    ["Experience Pickup Sounds"] = "Звуки подбора опыта",
    ["Explosive Potential"] = "Взрывной потенциал",
    ["Extraction Vault"] = "Хранилище извлечения",
    ["Fanaticism"] = "Фанатизм",
    ["Fast"] = "Быстро",
    ["Fastest clear"] = "Лучшее время прохождения",
    ["Fel Cleave"] = "Рассекающий удар Скверны",
    ["Fel Concentration"] = "Сосредоточение Скверны",
    ["Fel Intellect"] = "Интеллект Скверны",
    ["Fel Stamina"] = "Стойкость Скверны",
    ["Fel Sunder"] = "Раскол Скверны",
    ["Felhunter deals 15% more damage."] = "Охотник Скверны наносит на 15% больше урона.",
    ["Feline Swiftness"] = "Кошачья стремительность",
    ["Feral Aggression"] = "Звериная агрессия",
    ["Feral Instinct"] = "Звериный инстинкт",
    ["Ferocity"] = "Свирепость",
    ["Fill Range Ring"] = "Заполненный круг дальности",
    ["Final Reckoning"] = "Последний расчёт",
    ["Finish the run?"] = "Завершить забег?",
    ["Fire Blast deals 2% more damage per Burning stack on the target."] = "«Огненный взрыв» наносит на 2% больше урона за каждый эффект горения на цели.",
    ["Fire Blast spreads its target's Burning to 2 nearby enemies."] = "«Огненный взрыв» переносит горение цели ещё на двух врагов рядом.",
    ["Fire Blast's first critical strike each cast resets the cooldown of Pyroblast."] = "Первый критический удар «Огненного взрыва» сбрасывает перезарядку «Огненной глыбы».",
    ["Fire Vulnerability"] = "Уязвимость к огню",
    ["Fire and Brimstone"] = "Огонь и сера",
    ["Fire damage"] = "Урон огнём",
    ["Firebolt"] = "Огненная стрела",
    ["Firebolts"] = "Огненные стрелы",
    ["Fist of Justice"] = "Кулак правосудия",
    ["Flashpoint"] = "Точка воспламенения",
    ["Fleet Footed"] = "Быстроногий",
    ["Floating Combat Text"] = "Всплывающий боевой текст",
    ["Flourish"] = "Расцвет",
    ["Flurry"] = "Шквал",
    ["Focused Mind"] = "Сосредоточенный разум",
    ["Focused Will"] = "Сосредоточенная воля",
    ["Follow Terrain"] = "Следовать рельефу",
    ["Follow the arrow to find him."] = "Следуйте по стрелке, чтобы найти его.",
    ["Follow the arrow to the Darkmoon Deck."] = "Следуйте по стрелке к колоде Новолуния.",
    ["Follow the arrow to the stairs."] = "Следуйте по стрелке к лестнице.",
    ["Follow the arrow up the stairs."] = "Следуйте по стрелке вверх по лестнице.",
    ["For level-ups and chests"] = "Для уровней и сундуков",
    ["Force of Will"] = "Сила воли",
    ["Forceful Winds"] = "Мощные ветра",
    ["Found gear is only kept if you put it in the Extraction Vault."] = "Найденная экипировка сохраняется, только если отправить её в хранилище извлечения.",
    ["Free."] = "Бесплатно.",
    ["Free. Arcane Missiles is a starter spell, with Blink as your dash."] = "Бесплатно: «Чародейские стрелы» — начальное заклинание, а рывок заменяется «Скачком».",
    ["Free. Arcane Missiles is a starter spell."] = "Бесплатно: «Чародейские стрелы» — начальное заклинание.",
    ["Free. Call Pet is a starter spell."] = "Бесплатно: «Призыв питомца» — начальное заклинание.",
    ["Free. Cleave is a starter spell."] = "Бесплатно: «Рассекающий удар» — начальное заклинание.",
    ["Free. Consecration is a starter spell."] = "Бесплатно: «Освящение» — начальное заклинание.",
    ["Free. Corruption is a starter spell."] = "Бесплатно: «Порча» — начальное заклинание.",
    ["Free. Crusader Strike is a starter spell."] = "Бесплатно: «Удар воина Света» — начальное заклинание.",
    ["Free. Fireball is a starter spell."] = "Бесплатно: «Огненный шар» — начальное заклинание.",
    ["Free. Frostbolt is a starter spell."] = "Бесплатно: «Ледяная стрела» — начальное заклинание.",
    ["Free. Imp is a starter spell."] = "Бесплатно: «Бес» — начальное заклинание.",
    ["Free. Lightning Bolt is a starter spell."] = "Бесплатно: «Молния» — начальное заклинание.",
    ["Free. Moonfire is a starter spell."] = "Бесплатно: «Лунный огонь» — начальное заклинание.",
    ["Free. Multi-Shot is a starter spell."] = "Бесплатно: «Залп» — начальное заклинание.",
    ["Free. Mutilate is a starter spell."] = "Бесплатно: «Расправление» — начальное заклинание.",
    ["Free. Penance is a starter spell."] = "Бесплатно: «Покаяние» — начальное заклинание.",
    ["Free. Rake is a starter spell."] = "Бесплатно: «Глубокая рана» — начальное заклинание.",
    ["Free. Rend is a starter spell."] = "Бесплатно: «Кровопускание» — начальное заклинание.",
    ["Free. Serpent Sting is a starter spell."] = "Бесплатно: «Укус змеи» — начальное заклинание.",
    ["Free. Sinister Strike is a starter spell."] = "Бесплатно: «Коварный удар» — начальное заклинание.",
    ["Free. Smite is a starter spell."] = "Бесплатно: «Кара» — начальное заклинание.",
    ["Free. Windfury Weapon is a starter spell."] = "Бесплатно: «Оружие неистовства ветра» — начальное заклинание.",
    ["Freezes"] = "Замораживает",
    ["Fresh Meat"] = "Свежая добыча",
    ["Frost damage"] = "Урон льдом",
    ["Frostbrand Weapon"] = "Оружие ледяного клейма",
    ["Frozen"] = "Заморозка",
    ["Full 360 degrees"] = "Полные 360 градусов",
    ["Fully learned"] = "Полностью изучено",
    ["Furious Strikes"] = "Яростные удары",
    ["Furor"] = "Неистовство",
    ["Gag Order"] = "Приказ молчать",
    ["Gale Winds"] = "Шквальный ветер",
    ["Game Menu"] = "Игровое меню",
    ["Gear Vendor"] = "Продавец экипировки",
    ["Gear drops"] = "Добытая экипировка",
    ["Gear has changed"] = "Система экипировки изменена",
    ["Gear in the vault goes home when the run ends, even if you die."] = "Экипировка в хранилище возвращается домой после забега даже при вашей смерти.",
    ["Getting more "] = "Получение дополнительных ",
    ["Gift of Nature"] = "Дар природы",
    ["Gizzik Bonkwhistle"] = "Гиззик Бонксвистл",
    ["Glass Cannon"] = "Стеклянная пушка",
    ["Glimmer of Light"] = "Проблеск Света",
    ["Glyph "] = "Символ ",
    ["Glyph bans are counted on their own, on the Glyphs tab."] = "Запреты символов учитываются отдельно на вкладке символов.",
    ["Glyph bans use separate slots on the Glyphs tab."] = "Для символов используются отдельные ячейки запрета.",
    ["Godly"] = "Божественный",
    ["Gold and Tickets per kill"] = "Золото и билеты за убийство",
    ["Gold earned"] = "Золота заработано",
    ["Gold earned: "] = "Заработано золота: ",
    ["Gold per minute"] = "Золота в минуту",
    ["Got it"] = "Понятно",
    ["Gouge"] = "Парализующий удар",
    ["Grand Crusader"] = "Великий крестоносец",
    ["Greater"] = "Большой",
    ["Greed"] = "Жадность",
    ["Green"] = "Зелёный",
    ["Grim Reach"] = "Мрачный предел",
    ["Group"] = "Группа",
    ["Group revives"] = "Воскрешения группы",
    ["Grove Guardians"] = "Стражи рощи",
    ["Grows each time you die. Ends when you clear Normal."] = "Усиливается после каждой смерти. Исчезает после прохождения обычной сложности.",
    ["Guardian of the Light"] = "Страж Света",
    ["Guardian's Favor"] = "Покровительство стража",
    ["Hack and Slash"] = "Руби и режь",
    ["Hamstring"] = "Подрезать сухожилия",
    ["Hand of Hindrance"] = "Длань препятствия",
    ["Harvester of Souls"] = "Жнец душ",
    ["Haunt"] = "Преследование",
    ["Hawk Eye"] = "Орлиный глаз",
    ["Head Bob"] = "Покачивание камеры",
    ["Healed"] = "Вылечено",
    ["Healing Done"] = "Исцелено",
    ["Healing Focus"] = "Сосредоточенное исцеление",
    ["Healing Grace"] = "Благодать исцеления",
    ["Healing Light"] = "Исцеляющий свет",
    ["Health bars"] = "Полосы здоровья",
    ["Health regained each second"] = "Здоровья в секунду",
    ["Health regeneration"] = "Восстановление здоровья",
    ["Heart of the Crusader"] = "Сердце крестоносца",
    ["Heart of the Wild"] = "Сердце дикой природы",
    ["Hearthstone"] = "Камень возвращения",
    ["Heightened Senses"] = "Обострённые чувства",
    ["Hemorrhage"] = "Кровоизлияние",
    ["Hemorrhaging Wounds"] = "Кровоточащие раны",
    ["Hero"] = "Герой",
    ["Highest Clear"] = "Лучший пройденный уровень",
    ["Highest clear"] = "Лучший пройденный уровень",
    ["Hold for details"] = "Удерживайте для подробностей",
    ["Hold with right stick or d-pad"] = "Удерживайте правый стик или крестовину",
    ["Hold, then use right stick or d-pad"] = "Удерживайте, затем используйте правый стик или крестовину",
    ["Holy Concentration"] = "Сосредоточение Света",
    ["Holy Guidance"] = "Наставление Света",
    ["Holy Power"] = "Сила Света",
    ["Holy Reach"] = "Дальность Света",
    ["Holy Specialization"] = "Специализация на Свете",
    ["Holy damage"] = "Урон Светом",
    ["How fast the right stick moves the cursor in menus."] = "Скорость курсора от правого стика в меню.",
    ["How fast the right stick turns the camera"] = "Скорость вращения камеры правым стиком",
    ["How strongly the range ring shows on the ground."] = "Яркость круга дальности на земле.",
    ["How to Get More Ban Slots"] = "Как получить дополнительные ячейки запрета",
    ["Hunt the Pack"] = "Охота стаей",
    ["Hunter's Mark"] = "Метка охотника",
    ["Hunter's Mark lasts 4 sec longer."] = "«Метка охотника» действует на 4 сек. дольше.",
    ["Hunters"] = "Охотники",
    ["Hunters fight using ranged weapons."] = "Охотники используют оружие дальнего боя.",
    ["Ice Block"] = "Ледяная глыба",
    ["Ignore Pain"] = "Игнорирование боли",
    ["Ilsa Runeweaver"] = "Ильза Руноплёт",
    ["Immune"] = "Невосприимчив",
    ["Impact"] = "Столкновение",
    ["Impale"] = "Пронзание",
    ["Improved Aimed Shot"] = "Улучшенный прицельный выстрел",
    ["Improved Ambush"] = "Улучшенная внезапная атака",
    ["Improved Arcane Shot"] = "Улучшенный чародейский выстрел",
    ["Improved Aspect of the Hawk"] = "Улучшенный дух ястреба",
    ["Improved Barrage"] = "Улучшенный шквал",
    ["Improved Berserker Rage"] = "Улучшенная ярость берсерка",
    ["Improved Blade Flurry"] = "Улучшенный шквал клинков",
    ["Improved Blessing of Might"] = "Улучшенное благословение могущества",
    ["Improved Bloodrage"] = "Улучшенная кровавая ярость",
    ["Improved Bloodthirst"] = "Улучшенная кровожадность",
    ["Improved Censure"] = "Улучшенное порицание",
    ["Improved Concussion Blow"] = "Улучшенный оглушающий удар",
    ["Improved Consecrated Ground"] = "Улучшенная освящённая земля",
    ["Improved Consecration"] = "Улучшенное освящение",
    ["Improved Corruption"] = "Улучшенная порча",
    ["Improved Deep Wounds"] = "Улучшенные глубокие раны",
    ["Improved Demonic Empowerment"] = "Улучшенное усиление демонов",
    ["Improved Denounce"] = "Улучшенное обличение",
    ["Improved Divine Shield"] = "Улучшенный божественный щит",
    ["Improved Divine Storm"] = "Улучшенная божественная буря",
    ["Improved Drain Soul"] = "Улучшенное похищение души",
    ["Improved Earth Shock"] = "Улучшенный земной шок",
    ["Improved Enslave Demon"] = "Улучшенное порабощение демона",
    ["Improved Entangling Roots"] = "Улучшенные цепкие корни",
    ["Improved Envenom"] = "Улучшенная отрава",
    ["Improved Eviscerate"] = "Улучшенное потрошение",
    ["Improved Execute"] = "Улучшенная казнь",
    ["Improved Fade"] = "Улучшенное исчезновение",
    ["Improved Fan of Knives"] = "Улучшенный веер клинков",
    ["Improved Fire Totems"] = "Улучшенные тотемы огня",
    ["Improved Frenzied Regeneration"] = "Улучшенное неистовое восстановление",
    ["Improved Frost Nova"] = "Улучшенное кольцо льда",
    ["Improved Hammer of Justice"] = "Улучшенный молот правосудия",
    ["Improved Haunt"] = "Улучшенное преследование",
    ["Improved Healing"] = "Улучшенное исцеление",
    ["Improved Holy Word"] = "Улучшенное слово Света",
    ["Improved Howl of Terror"] = "Улучшенный вой ужаса",
    ["Improved Hunter's Mark"] = "Улучшенная метка охотника",
    ["Improved Hurricane"] = "Улучшенный ураган",
    ["Improved Immolate"] = "Улучшенный жертвенный огонь",
    ["Improved Imp"] = "Улучшенный бес",
    ["Improved Inner Fire"] = "Улучшенный внутренний огонь",
    ["Improved Intimidation"] = "Улучшенное устрашение",
    ["Improved Judgement"] = "Улучшенное правосудие",
    ["Improved Kidney Shot"] = "Улучшенный удар по почкам",
    ["Improved Killing Spree"] = "Улучшенная череда убийств",
    ["Improved Lash of Pain"] = "Улучшенная плеть боли",
    ["Improved Lay on Hands"] = "Улучшенное возложение рук",
    ["Improved Life Tap"] = "Улучшенное жизнеотводное заклинание",
    ["Improved Light's Hammer"] = "Улучшенный молот Света",
    ["Improved Lightning Bolt"] = "Улучшенная молния",
    ["Improved Lightning Shield"] = "Улучшенный щит молний",
    ["Improved Mark of the Wild"] = "Улучшенный знак дикой природы",
    ["Improved Marked for Death"] = "Улучшенная метка смерти",
    ["Improved Mend Pet"] = "Улучшенное лечение питомца",
    ["Improved Mind Blast"] = "Улучшенный взрыв разума",
    ["Improved Moonfire"] = "Улучшенный лунный огонь",
    ["Improved Mortal Strike"] = "Улучшенный смертельный удар",
    ["Improved Multi-Shot"] = "Улучшенный залп",
    ["Improved Mutilate"] = "Улучшенное расправление",
    ["Improved Poisons"] = "Улучшенные яды",
    ["Improved Power Word: Fortitude"] = "Улучшенное слово силы: Стойкость",
    ["Improved Power Word: Shield"] = "Улучшенное слово силы: Щит",
    ["Improved Rain of Fire"] = "Улучшенный огненный дождь",
    ["Improved Regrowth"] = "Улучшенное восстановление",
    ["Improved Rejuvenation"] = "Улучшенное омоложение",
    ["Improved Rend"] = "Улучшенное кровопускание",
    ["Improved Retribution Aura"] = "Улучшенная аура воздаяния",
    ["Improved Revenge"] = "Улучшенный реванш",
    ["Improved Righteous Fury"] = "Улучшенное праведное неистовство",
    ["Improved Sap"] = "Улучшенное ошеломление",
    ["Improved Seal of Command"] = "Улучшенная печать повиновения",
    ["Improved Seal of Righteousness"] = "Улучшенная печать праведности",
    ["Improved Seal of the Crusader"] = "Улучшенная печать крестоносца",
    ["Improved Searing Pain"] = "Улучшенная жгучая боль",
    ["Improved Searing Totem"] = "Улучшенный опаляющий тотем",
    ["Improved Serpent Sting"] = "Улучшенный укус змеи",
    ["Improved Shackle"] = "Улучшенные оковы",
    ["Improved Shadow Word: Pain"] = "Улучшенное слово Тьмы: Боль",
    ["Improved Shield Block"] = "Улучшенный блок щитом",
    ["Improved Shield Wall"] = "Улучшенная глухая оборона",
    ["Improved Shred"] = "Улучшенное растерзание",
    ["Improved Shuriken Toss"] = "Улучшенный бросок сюрикена",
    ["Improved Sinister Strike"] = "Улучшенный коварный удар",
    ["Improved Slam"] = "Улучшенный мощный удар",
    ["Improved Smite"] = "Улучшенная кара",
    ["Improved Starfire"] = "Улучшенный звёздный огонь",
    ["Improved Stormstrike"] = "Улучшенный удар бури",
    ["Improved Sunder Armor"] = "Улучшенный раскол брони",
    ["Improved Tranquility"] = "Улучшенное спокойствие",
    ["Improved Viper Venom"] = "Усиленный яд гадюки",
    ["Improved Voidwalker"] = "Улучшенный демон Бездны",
    ["Improved Whirlwind"] = "Улучшенный вихрь",
    ["Improved Windfury Weapon"] = "Улучшенное оружие неистовства ветра",
    ["Improved Wrath"] = "Улучшенный гнев",
    ["Improves the rarity of chest and level-up choices."] = "Повышает редкость наград из сундуков и при повышении уровня.",
    ["In bags"] = "В сумках",
    ["In the vault"] = "В хранилище",
    ["Initiative"] = "Инициатива",
    ["Inner Focus"] = "Внутренняя сосредоточенность",
    ["Inner Peace"] = "Внутренний покой",
    ["Inspect Talents"] = "Посмотреть таланты",
    ["Inspect talents"] = "Посмотреть таланты",
    ["Instant"] = "Мгновенно",
    ["Intensity"] = "Напряжение",
    ["Interact Prompts"] = "Подсказки взаимодействия",
    ["Interact With Nearby"] = "Взаимодействовать рядом",
    ["Interact key"] = "Клавиша взаимодействия",
    ["Intimidating Roar"] = "Устрашающий рёв",
    ["Intimidation"] = "Устрашение",
    ["Invaded by "] = "Вторжение: ",
    ["Invert Camera Pitch"] = "Инвертировать наклон камеры",
    ["Invert Mouse"] = "Инвертировать мышь",
    ["Invert camera up and down"] = "Инвертировать вертикальное движение камеры",
    ["Iron Will"] = "Железная воля",
    ["Item"] = "Предмет",
    ["Item sets and their bonuses are gone."] = "Комплекты снаряжения и их бонусы удалены.",
    ["Its enemies"] = "Местные враги",
    ["Its enemies roam the zone."] = "Местные враги патрулируют зону.",
    ["Join the leaderboard?"] = "Участвовать в рейтинге?",
    ["Judgements of the Just"] = "Правосудие праведника",
    ["Juggernaut"] = "Джаггернаут",
    ["Jump"] = "Прыжок",
    ["Keep It Rolling"] = "Продолжай натиск",
    ["Keep current"] = "Оставить текущее",
    ["Kill Shot"] = "Убийственный выстрел",
    ["Killer Instinct"] = "Инстинкт убийцы",
    ["Killing an enemy with Execute makes you Enraged."] = "Убийство врага «Казнью» вводит вас в исступление.",
    ["Kindred Spirits"] = "Родственные души",
    ["King of the Jungle"] = "Король джунглей",
    ["Kolkar Pack Runner"] = "Гонец стаи колкаров",
    ["Large"] = "Большой",
    ["Lashing Flames"] = "Хлёсткое пламя",
    ["Last Stand"] = "Ни шагу назад",
    ["Lava Flows"] = "Потоки лавы",
    ["Leaderboard unreachable"] = "Таблица рекордов недоступна",
    ["Learn a talent that leads here first."] = "Сначала изучите предшествующий талант.",
    ["Leech"] = "Похищение жизни",
    ["Left-click to select it."] = "Щёлкните левой кнопкой, чтобы выбрать.",
    ["Legacy item. Doesn't count toward this season's leaderboard."] = "Старый предмет. Не учитывается в рейтинге этого сезона.",
    ["Lesser"] = "Малый",
    ["Lethal Shots"] = "Смертоносные выстрелы",
    ["Lethal Venom"] = "Смертоносный яд",
    ["Lethal Wounds"] = "Смертоносные раны",
    ["Lethality"] = "Смертоносность",
    ["Level-up and chest cards"] = "Карточки уровней и сундуков",
    ["Level-up choice: banish"] = "Выбор награды: изгнать",
    ["Level-up choice: reroll"] = "Выбор награды: обновить",
    ["Level-up choice: skip"] = "Выбор награды: пропустить",
    ["Level-ups can offer a new spell while a slot is free."] = "Пока есть свободная ячейка, при повышении уровня можно получить новое заклинание.",
    ["Ley Line"] = "Лей-линия",
    ["Ley Line blessing"] = "Благословение лей-линии",
    ["Ley Lines"] = "Лей-линии",
    ["Light of the Naaru"] = "Свет наару",
    ["Light's Grace"] = "Милость Света",
    ["Lightning Bolt"] = "Молния",
    ["Lightning Mastery"] = "Мастерство молний",
    ["Lightning Reflexes"] = "Молниеносные рефлексы",
    ["Lightning Rod"] = "Громоотвод",
    ["Lingering Frost"] = "Стойкий холод",
    ["Lingering Venom"] = "Стойкий яд",
    ["Living Spirit"] = "Живой дух",
    ["Loading..."] = "Загрузка...",
    ["Loadout"] = "Снаряжение",
    ["Lock"] = "Заблокировать",
    ["Locked by "] = "Заблокировано: ",
    ["Locked by a quest"] = "Открывается заданием",
    ["Locked passive slot"] = "Заблокированная ячейка пассивного эффекта",
    ["Locked spell slot"] = "Заблокированная ячейка заклинания",
    ["Logout"] = "Выйти из мира",
    ["Look"] = "Осмотреть",
    ["Look for him on the top floor of the Inn."] = "Найдите его на верхнем этаже таверны.",
    ["Loop Music"] = "Зациклить музыку",
    ["Lost when the run ends."] = "Теряется после окончания забега.",
    ["Luck"] = "Удача",
    ["Lunar Calling"] = "Лунный зов",
    ["Lunar Shower"] = "Лунный дождь",
    ["Mace Specialization"] = "Специализация на дробящем оружии",
    ["Mages"] = "Маги",
    ["Mages fight using staves, swords, daggers and held items."] = "Маги используют посохи, мечи, кинжалы и предметы в левой руке.",
    ["Mailed to you when you leave"] = "Отправится по почте после выхода",
    ["Maim"] = "Увечье",
    ["Main Hand"] = "Правая рука",
    ["Make yourself at home"] = "Чувствуйте себя как дома",
    ["Malediction"] = "Проклятие",
    ["Malefic Grasp"] = "Пагубная хватка",
    ["Malice"] = "Злоба",
    ["Marked"] = "Помеченные",
    ["Marked enemies take 2% more damage."] = "Помеченные враги получают на 2% больше урона.",
    ["Marked for Death"] = "Помеченный на смерть",
    ["Martyrdom"] = "Мученичество",
    ["Master Marksman"] = "Мастер стрельбы",
    ["Master Poisoner"] = "Мастер отравления",
    ["Master Summoner"] = "Мастер призыва",
    ["Master of Deception"] = "Мастер маскировки",
    ["Master of Shadows"] = "Повелитель теней",
    ["Master of Subtlety"] = "Мастер скрытности",
    ["Mastery"] = "Мастерство",
    ["Max Health"] = "Максимум здоровья",
    ["Max rank "] = "Максимальный ранг ",
    ["Maximum "] = "Максимум ",
    ["Mental Agility"] = "Гибкость разума",
    ["Mental Quickness"] = "Быстрота мысли",
    ["Mental Strength"] = "Сила разума",
    ["Menu cancels."] = "Меню отменяет действие.",
    ["Menus and cards"] = "Меню и карточки",
    ["Mind Bomb"] = "Ментальная бомба",
    ["Mind Melt"] = "Расплавленный разум",
    ["Molten Assault"] = "Расплавленный натиск",
    ["Molten Core"] = "Огненное ядро",
    ["Moment of death"] = "Момент смерти",
    ["Mongoose Fury"] = "Ярость мангуста",
    ["Monster Slaying"] = "Убийца чудовищ",
    ["Moonfire"] = "Лунный огонь",
    ["Moonfury"] = "Ярость луны",
    ["Moonglow"] = "Лунное сияние",
    ["Moonkin Hide"] = "Шкура совуха",
    ["Mortal Shots"] = "Смертельные выстрелы",
    ["Mortal Strike applies 1 stack of Bleed to each enemy it hits."] = "«Смертельный удар» накладывает 1 эффект кровотечения на каждого задетого врага.",
    ["Mortal Strike deals double damage to enemies with 10 or more Bleed stacks."] = "«Смертельный удар» наносит двойной урон врагам с 10 и более эффектами кровотечения.",
    ["Mortal Wounds"] = "Смертельные раны",
    ["Most kills"] = "Больше всего убийств",
    ["Mouse Look Speed"] = "Скорость обзора мышью",
    ["Mouse Sensitivity"] = "Чувствительность мыши",
    ["Mouse wheel zooms in and out."] = "Колёсико мыши меняет масштаб.",
    ["Move in any direction"] = "Двигайтесь в любом направлении",
    ["Move selection"] = "Переместить выбор",
    ["Move the focus"] = "Переместить фокус",
    ["Movement Speed"] = "Скорость передвижения",
    ["Multi-Shot"] = "Залп",
    ["Multi-Shot fires 1 additional arrow."] = "«Залп» выпускает ещё одну стрелу.",
    ["Murder"] = "Убийство",
    ["Mutilate"] = "Расправление",
    ["Natural Perfection"] = "Природное совершенство",
    ["Natural Shapeshifter"] = "Природный оборотень",
    ["Natural Weapons"] = "Природное оружие",
    ["Nature damage"] = "Урон природы",
    ["Nature's Focus"] = "Сосредоточение природы",
    ["Nature's Grace"] = "Милость природы",
    ["Nature's Reach"] = "Дальность природы",
    ["Nature's Swiftness"] = "Стремительность природы",
    ["Nether Protection"] = "Защита Пустоты",
    ["Next window"] = "Следующее окно",
    ["Nightmare"] = "Кошмар",
    ["No controller connected"] = "Контроллер не подключён",
    ["No damage this run."] = "За забег урон не нанесён.",
    ["No damage yet."] = "Урон ещё не нанесён.",
    ["No enchant"] = "Нет зачарования",
    ["No evolutions for this class."] = "Для этого класса нет эволюций.",
    ["No extracted items"] = "Нет извлечённых предметов",
    ["No healing or absorbs this run."] = "За забег не было исцеления и поглощения.",
    ["No healing yet."] = "Исцеления ещё не было.",
    ["No restocks"] = "Обновлений товаров нет",
    ["No thanks"] = "Нет, спасибо",
    ["No title"] = "Нет звания",
    ["No upgrades left"] = "Улучшения закончились",
    ["Nobody is on this list yet."] = "В списке пока никого нет.",
    ["Not Ready"] = "Не готов",
    ["Not found yet"] = "Ещё не найдено",
    ["Noxious Stings"] = "Ядовитые укусы",
    ["Numbing Poison"] = "Онемение",
    ["Opportunity"] = "Возможность",
    ["Overpower"] = "Превосходство",
    ["Pack Hunter"] = "Охотник стаи",
    ["Pack Leader's howl slows normal enemies within 10 yards by 30% for 2 sec."] = "Вой «Вожака стаи» замедляет обычных врагов в радиусе 10 ярдов на 30% на 2 сек.",
    ["Pack Tactics"] = "Тактика стаи",
    ["Pain Suppression"] = "Подавление боли",
    ["Pain and Suffering"] = "Боль и страдание",
    ["Pandemic"] = "Пандемия",
    ["Passive"] = "Пассивный эффект",
    ["Pathfinding"] = "Поиск пути",
    ["Penance"] = "Покаяние",
    ["Penitent Ward"] = "Щит покаяния",
    ["Poison"] = "Яд",
    ["Poisoned"] = "Отравление",
    ["Poleaxe Specialization"] = "Специализация на древковом оружии",
    ["Power Infusion"] = "Придание сил",
    ["Precision"] = "Точность",
    ["Predatory Instincts"] = "Хищные инстинкты",
    ["Predatory Strikes"] = "Хищные удары",
    ["Premeditation"] = "Преднамеренность",
    ["Primal Fury"] = "Изначальная ярость",
    ["Primal Precision"] = "Первобытная точность",
    ["Primal Wrath"] = "Первобытный гнев",
    ["Psychic Link"] = "Ментальная связь",
    ["Psychic Voice"] = "Ментальный голос",
    ["Purification"] = "Очищение",
    ["Purifying Power"] = "Очищающая сила",
    ["Pursuit of Justice"] = "Погоня за справедливостью",
    ["Quick Recovery"] = "Быстрое восстановление",
    ["Rake"] = "Глубокая рана",
    ["Rampage"] = "Буйство",
    ["Ranged Weapon Specialization"] = "Специализация на дальнем бою",
    ["Rapid Fire"] = "Быстрая стрельба",
    ["Rapid Killing"] = "Быстрое убийство",
    ["Reckless Abandon"] = "Безрассудство",
    ["Reckoning"] = "Расплата",
    ["Redoubt"] = "Оплот",
    ["Reflection"] = "Отражение",
    ["Regain 0.1% of your health every second."] = "Восстанавливает 0,1% здоровья каждую секунду.",
    ["Regain 0.2% of your health every second."] = "Восстанавливает 0,2% здоровья каждую секунду.",
    ["Rejuvenation"] = "Омоложение",
    ["Remorseless Attacks"] = "Беспощадные атаки",
    ["Rend"] = "Кровопускание",
    ["Rend and Tear"] = "Рви и терзай",
    ["Rend wounds 1 additional enemy."] = "«Кровопускание» ранит ещё одного врага.",
    ["Renewed Hope"] = "Обновлённая надежда",
    ["Resourcefulness"] = "Находчивость",
    ["Restless Blades"] = "Неугомонные клинки",
    ["Reverberation"] = "Отзвук",
    ["Righteous Command"] = "Праведный приказ",
    ["Righteous Protector"] = "Праведный защитник",
    ["Righteous Verdict"] = "Праведный вердикт",
    ["Rip and Tear"] = "Рвать и терзать",
    ["Rolling Magma"] = "Клубящаяся магма",
    ["Run Master"] = "Распорядитель забегов",
    ["Ruthless Spree"] = "Беспощадная череда",
    ["Ruthlessness"] = "Безжалостность",
    ["Sacred Duty"] = "Священный долг",
    ["Sanctified Light"] = "Освящённый Свет",
    ["Savage Bite"] = "Дикий укус",
    ["Savage Combat"] = "Жестокий бой",
    ["Savage Fury"] = "Дикое неистовство",
    ["Savage Strikes"] = "Свирепые удары",
    ["Scatter Shot"] = "Дезориентирующий выстрел",
    ["Schism"] = "Раскол",
    ["Seal Fate"] = "Печать судьбы",
    ["Seals of the Pure"] = "Печати непорочного",
    ["Searing Assault"] = "Опаляющий натиск",
    ["Searing Flames"] = "Опаляющее пламя",
    ["Searing Heat"] = "Опаляющий жар",
    ["Searing Totem"] = "Опаляющий тотем",
    ["Secret Technique"] = "Тайный приём",
    ["Serpent Sting"] = "Укус змеи",
    ["Serrated Blades"] = "Зазубренные клинки",
    ["Setup"] = "Подготовка",
    ["Shadow Affinity"] = "Единение с Тьмой",
    ["Shadow Focus"] = "Сосредоточение Тьмы",
    ["Shadow Reach"] = "Дальность Тьмы",
    ["Shadow Strikes"] = "Теневые удары",
    ["Shadow Techniques"] = "Приёмы Тьмы",
    ["Shadow Vulnerability lasts 3 sec longer."] = "«Уязвимость к Тьме» действует на 3 сек. дольше.",
    ["Shadow Weaving"] = "Плетение Тьмы",
    ["Shadow Word: Pain"] = "Слово Тьмы: Боль",
    ["Shadow and Flame"] = "Тьма и пламя",
    ["Shadow damage"] = "Урон Тьмой",
    ["Shadow's Bite"] = "Укус Тьмы",
    ["Shadowform"] = "Облик Тьмы",
    ["Shadowfury"] = "Неистовство Тьмы",
    ["Shamanistic Rage"] = "Ярость шамана",
    ["Sharpened Claws"] = "Острые когти",
    ["Shatterlord"] = "Повелитель раскола",
    ["Sheer Terror"] = "Чистый ужас",
    ["Shield Bash"] = "Удар щитом",
    ["Shield Specialization"] = "Специализация на щитах",
    ["Shining Force"] = "Сияющая сила",
    ["Shredding Attacks"] = "Растерзывающие атаки",
    ["Shuriken Toss"] = "Бросок сюрикена",
    ["Silent Resolve"] = "Безмолвное решение",
    ["Sinister Strike"] = "Коварный удар",
    ["Slice and Dice"] = "Мясорубка",
    ["Slowed"] = "Замедление",
    ["Smite"] = "Кара",
    ["Soothe"] = "Умиротворение",
    ["Soul Fire"] = "Огонь души",
    ["Soul of the Forest"] = "Душа леса",
    ["Spell"] = "Заклинание",
    ["Spirit Bond"] = "Духовная связь",
    ["Spirit Tap"] = "Захват духа",
    ["Spirit Weapons"] = "Оружие духов",
    ["Spiritual Focus"] = "Духовная концентрация",
    ["Spiritual Guidance"] = "Духовное наставление",
    ["Spiritual Healing"] = "Духовное исцеление",
    ["Starfall strikes in every form and hits 2 additional enemies."] = "«Звездопад» действует во всех обликах и поражает ещё 2 врагов.",
    ["Starlord"] = "Повелитель звёзд",
    ["Static"] = "Статика",
    ["Static Charge"] = "Статический заряд",
    ["Static discharges at 3 stacks instead of 5."] = "«Статика» разряжается при 3 эффектах вместо 5.",
    ["Stellar Drift"] = "Звёздный дрейф",
    ["Stellar Flare"] = "Звёздная вспышка",
    ["Storm Reach"] = "Дальность бури",
    ["Storm of Swords"] = "Буря клинков",
    ["Storm, Earth and Fire"] = "Буря, земля и огонь",
    ["Stormblast"] = "Громовой взрыв",
    ["Stormflurry"] = "Буревой шквал",
    ["Stormlash"] = "Удар бури",
    ["Succubus deals 15% more damage."] = "Суккуб наносит на 15% больше урона.",
    ["Sudden Death"] = "Внезапная смерть",
    ["Surefooted"] = "Твёрдая поступь",
    ["Surge of Darkness"] = "Прилив Тьмы",
    ["Surge of Light"] = "Прилив Света",
    ["Survival Instincts"] = "Инстинкты выживания",
    ["Survival Tactics"] = "Тактика выживания",
    ["Survival of the Fittest"] = "Выживание сильнейших",
    ["Survivalist"] = "Выживальщик",
    ["Sweeping Strikes"] = "Размашистые удары",
    ["Swift Retribution"] = "Стремительное воздаяние",
    ["Sword Specialization"] = "Специализация на мечах",
    ["Tactical Mastery"] = "Тактическое мастерство",
    ["Templar's Verdict"] = "Вердикт храмовника",
    ["The Beast Within"] = "Внутренний зверь",
    ["The shards apply 3 stacks of Chill."] = "Осколки накладывают 3 эффекта охлаждения.",
    ["Thick Hide"] = "Толстая шкура",
    ["Thunder Clap"] = "Удар грома",
    ["Thunder Ward"] = "Грозовой оберег",
    ["Thundering Strikes"] = "Громовые удары",
    ["Thunderlord"] = "Повелитель грома",
    ["Thunderstruck"] = "Поражённый громом",
    ["Tidal Focus"] = "Сосредоточение прилива",
    ["Tidal Mastery"] = "Владычество приливов",
    ["Totemic Focus"] = "Тотемная сосредоточенность",
    ["Totemic Mastery"] = "Мастерство тотемов",
    ["Totemic Reach"] = "Дальность тотемов",
    ["Toughness"] = "Крепость",
    ["Tower of Radiance"] = "Башня сияния",
    ["Toxic Shrapnel"] = "Ядовитые осколки",
    ["Tranquil Spirit"] = "Спокойный дух",
    ["Trap Mastery"] = "Мастерство ловушек",
    ["Trapmaster"] = "Мастер ловушек",
    ["Trueshot"] = "Верный выстрел",
    ["Twin Disciplines"] = "Двойственная дисциплина",
    ["Twin Moons"] = "Две луны",
    ["Twisted Faith"] = "Искажённая вера",
    ["Two-Handed Weapon Specialization"] = "Специализация на двуручном оружии",
    ["Unbreakable"] = "Несокрушимый",
    ["Unbreakable Will"] = "Несокрушимая воля",
    ["Unbridled Wrath"] = "Необузданный гнев",
    ["Unleashed Fury"] = "Неукротимая ярость",
    ["Unleashed Rage"] = "Высвобожденная ярость",
    ["Unrelenting Assault"] = "Неослабевающий натиск",
    ["Unrelenting Storm"] = "Нескончаемая буря",
    ["Unyielding Faith"] = "Непоколебимая вера",
    ["Ursine Adept"] = "Медвежий мастер",
    ["Veiled Shadows"] = "Скрытые тени",
    ["Vendetta"] = "Вендетта",
    ["Vengeance"] = "Возмездие",
    ["Venom Rush"] = "Прилив яда",
    ["Venomous Wounds"] = "Ядовитые раны",
    ["Vile Poisons"] = "Пагубные яды",
    ["Viper Venom"] = "Яд гадюки",
    ["Vitality"] = "Жизненная сила",
    ["Weapon Expertise"] = "Оружейное мастерство",
    ["Weapon Master"] = "Мастер оружия",
    ["Weapon Mastery"] = "Оружейное мастерство",
    ["When a demon kills an enemy, it strikes every enemy within 5 yards for 50% of its damage."] = "При убийстве врага демон наносит соседним врагам в радиусе 5 ярдов 50% своего урона.",
    ["When an enemy with your Decay or Agony dies, they jump to the nearest enemy without them, keeping every stack."] = "После смерти врага все его эффекты вашего «Разложения» и «Агонии» переходят ближайшему врагу без этих эффектов.",
    ["When an enemy with your Decay or Agony dies, they spread to the nearest enemy without them, keeping half the stacks."] = "Когда враг с вашим «Разложением» или «Агонией» умирает, половина эффектов переходит ближайшему врагу без них.",
    ["While you have a Shield, you take 20% less damage and deal 20% more damage."] = "Пока действует щит, входящий урон снижен на 20%, а исходящий увеличен на 20%.",
    ["While you stand in your Consecration, you take 20% less damage and deal 20% more damage."] = "Находясь в собственной области «Освящения», вы получаете на 20% меньше урона и наносите на 20% больше.",
    ["Wild Growth"] = "Буйный рост",
    ["Wildfire Bomb"] = "Бомба дикого пламени",
    ["Windfury Weapon"] = "Оружие неистовства ветра",
    ["Windstrike"] = "Удар ветра",
    ["Wrath of Elune"] = "Гнев Элуны",
    ["Writhe in Agony"] = "Корчи агонии",
    ["You are always Enraged. Enrage gives 50% more Haste, and talents that improve Enrage are 50% stronger. You take 15% more damage."] = "Вы постоянно в исступлении. «Исступление» даёт ещё +50% скорости; таланты, усиливающие его, действуют на 50% сильнее. Входящий урон увеличен на 15%.",
    ["Your Bleed can critically strike for half the critical strike bonus."] = "Эффекты кровотечения могут наносить критический урон с половиной обычного бонуса.",
    ["Your Burning can critically strike for half the critical strike bonus."] = "Эффекты горения могут наносить критический урон с половиной обычного бонуса.",
    ["Your Decay and Agony can critically strike for half the critical strike bonus."] = "«Разложение» и «Агония» могут наносить критический урон с половиной обычного бонуса.",
    ["Your Decay deals 30% more damage, and your spells apply 1 more Decay stack."] = "Урон «Разложения» увеличен на 30%, а заклинания накладывают на 1 эффект «Разложения» больше.",
    ["Your Fire spell critical strikes reduce the cooldown of Pyroblast by 0.5 sec."] = "Критические удары огненными заклинаниями сокращают перезарядку «Огненной глыбы» на 0,5 сек.",
    ["Your Moonfire can critically strike for half the critical strike bonus."] = "«Лунный огонь» может наносить критический урон с половиной обычного бонуса.",
    ["Your Poison can critically strike for half the critical strike bonus."] = "Эффекты яда могут наносить критический урон с половиной обычного бонуса.",
    ["Your abilities apply 1 additional stack of Poison per hit, even without Deadly Poison."] = "Каждая способность дополнительно накладывает 1 эффект яда при попадании, даже без «Смертельного яда».",
    ["Your cat uses Claw 25% more often."] = "Кот применяет «Когти» на 25% чаще.",
    ["Your cat's Claw applies 1 additional stack of Bleed."] = "«Когти» питомца накладывают на 1 эффект кровотечения больше.",
    ["Your critical strikes deal 10% more damage."] = "Ваши критические удары наносят на 10% больше урона.",
    ["Your critical strikes deal 100% more damage."] = "Ваши критические удары наносят на 100% больше урона.",
    ["Your critical strikes deal 100% more damage. Your maximum health is reduced by 35%."] = "Критические удары наносят на 100% больше урона, но максимум здоровья снижен на 35%.",
    ["Your critical strikes deal 25% more damage."] = "Ваши критические удары наносят на 25% больше урона.",
    ["Your critical strikes deal 5% more damage."] = "Ваши критические удары наносят на 5% больше урона.",
    ["Your critical strikes deal 50% more damage."] = "Ваши критические удары наносят на 50% больше урона.",
    ["Your dash becomes Blink and its cooldown is halved. Each dash sets off your Arcane Explosion where you land. Stacks with the Blink spell."] = "Рывок превращается в «Скачок», его перезарядка сокращена вдвое. При приземлении срабатывает «Чародейский взрыв». Эффекты складываются с заклинанием «Скачок».",
    ["Your demons deal 10% more damage for each different demon you command, up to 40%."] = "Каждый особый вид призванного демона увеличивает урон ваших демонов на 10% (до 40%).",
    ["Your demons deal 10% more damage for each different demon you command, up to 40%. Your Power is reduced by 15%."] = "Каждый особый вид призванного демона увеличивает урон демонов на 10% (до 40%). Ваша сила снижена на 15%.",
    ["Your hits deal 1% more damage per Poison stack on the target, up to 15%."] = "Каждая атака наносит на 1% больше урона за эффект яда на цели (до 15%).",
    ["Your hits have a 1% chance to deal 10 times their damage."] = "Ваши атаки с шансом 1% наносят десятикратный урон.",
    ["Your hits have a 3% chance to go off again."] = "Ваши атаки с шансом 3% срабатывают повторно.",
    ["Your pets are always frenzied: +50% damage, and their attacks hit every enemy in front of them. Pack Leader's howl makes them deal 25% more. Your other spells deal 25% less damage."] = "Питомцы всегда в неистовстве: +50% урона, их атаки поражают всех врагов перед ними. Вой вожака даёт ещё +25% урона питомцам. Остальные ваши заклинания наносят на 25% меньше урона.",
    ["Your pets deal 5% more damage while Pack Leader is out."] = "Пока активен «Вожак стаи», питомцы наносят на 5% больше урона.",
    ["Your shots Mark every enemy they hit and target Marked enemies first. Marked enemies take 30% more damage from you."] = "Все выстрелы помечают задетых врагов и в первую очередь выбирают помеченные цели. Помеченные враги получают от вас на 30% больше урона.",
    ["Your single-target hits also strike 1 additional enemy within 8 yards for 60% damage, even without Blade Flurry."] = "Атаки по одной цели поражают ещё одного врага в радиусе 8 ярдов с 60% урона даже без «Шквала клинков».",
    ["Your spells have a 2% chance to reset their cooldown."] = "У заклинаний есть 2% шанс мгновенно восстановиться.",
    ["Zealotry"] = "Рвение",
}
for en, ru in pairs(v11Strings) do dict[en] = ru end


-- v1.2: additional canonical descriptions and named effects.
local v12Strings = {
    ["Aimed Shot kills normal enemies below 15% health."] = "«Прицельный выстрел» мгновенно убивает обычных врагов с менее чем 15% здоровья.",
    ["Aimed Shot marks every enemy it passes through."] = "«Прицельный выстрел» помечает каждого пронзённого врага.",
    ["Arcane Explosion slows normal enemies by 30% for 2 sec."] = "«Чародейский взрыв» замедляет обычных врагов на 30% на 2 сек.",
    ["Arcane Missiles' last missile also hits 2 additional nearby enemies."] = "Последняя «Чародейская стрела» поражает ещё двух ближайших врагов.",
    ["Arcane Shot slows normal enemies by 30% for 2 sec."] = "«Чародейский выстрел» замедляет обычных врагов на 30% на 2 сек.",
    ["Avenger's Shield"] = "Щит мстителя",
    ["Bleed"] = "Кровотечение",
    ["Bloodthirst"] = "Кровожадность",
    ["Bloodthirst always critically strikes enemies above 90% health."] = "«Кровожадность» всегда наносит критический удар врагам с более чем 90% здоровья.",
    ["Bloodthirst heals 0.2% more of your maximum health per enemy hit."] = "«Кровожадность» восстанавливает ещё 0,2% максимального здоровья за каждого поражённого врага.",
    ["Call Pet and Pack Leader deal 5% more damage."] = "«Призыв питомца» и «Вожак стаи» наносят на 5% больше урона.",
    ["Cat Form: your critical strikes deal 25% more damage. Bear Form: take 20% less damage and move 15% faster."] = "Облик кошки: критические удары наносят на 25% больше урона. Облик медведя: получаемый урон снижен на 20%, скорость повышена на 15%.",
    ["Chill"] = "Охлаждение",
    ["Chill freezes at 6 stacks instead of 10."] = "«Охлаждение» замораживает при 6 зарядах вместо 10.",
    ["Cleave applies Bleed to every enemy it hits."] = "«Рассекающий удар» накладывает кровотечение на всех задетых врагов.",
    ["Consecrated Ground slows by 10% more."] = "«Освящённая земля» замедляет ещё на 10%.",
    ["Consecration slows normal enemies on it by 20%."] = "«Освящение» замедляет обычных врагов внутри на 20%.",
    ["Deep Wounds can wound each enemy 50% more often."] = "«Глубокие раны» могут срабатывать на каждом враге на 50% чаще.",
    ["Divine Shield"] = "Божественный щит",
    ["Drain Life deals 15% more damage."] = "«Похищение жизни» наносит на 15% больше урона.",
    ["During Envenom's window, your hits apply 3 additional stacks of Poison instead of 2."] = "Пока активно «Отравление», удары накладывают 3 дополнительных эффекта яда вместо 2.",
    ["Each Arcane spell gives +1% Haste for 6 sec, stacking up to 5 times."] = "Каждое чародейское заклинание даёт +1% скорости на 6 сек. (до 5 зарядов).",
    ["Each Blink grants a Shield of 3% of your maximum health."] = "Каждый «Скачок» даёт щит на 3% максимального здоровья.",
    ["Each Blink reduces the cooldown of all your spells by 1 sec."] = "Каждый «Скачок» сокращает перезарядку всех ваших заклинаний на 1 сек.",
    ["Each Holy spell gives +1% Haste for 6 sec, stacking up to 5 times."] = "Каждое заклинание Света даёт +1% скорости на 6 сек. (до 5 зарядов).",
    ["Each Seal of Command hit has a 20% chance to reset the cooldown of Divine Storm."] = "Каждый удар «Печати повиновения» с шансом 20% сбрасывает перезарядку «Божественной бури».",
    ["Each dash leaves one of each of your traps behind, already armed. Reduces the cooldown of your dash by 30%."] = "Каждый рывок оставляет по одной активированной ловушке каждого вида. Перезарядка рывка сокращается на 30%.",
    ["Each enemy Penance kills reduces its cooldown by 0.5 sec."] = "Каждый враг, убитый «Покаянием», сокращает его перезарядку на 0,5 сек.",
    ["Each enemy Thunder Clap hits gives you a Shield of 1% of your maximum health, up to 5% per cast."] = "Каждый враг, задетый «Ударом грома», даёт щит на 1% максимального здоровья (до 5% за применение).",
    ["Each enemy within 10 yards gives you +1% Power, up to 10%."] = "Каждый враг в радиусе 10 ярдов даёт +1% силы (до +10%).",
    ["Enemies standing in your Consecration take your Retribution Aura's damage every second, at half strength."] = "Враги внутри «Освящения» ежесекундно получают половину урона от «Ауры воздаяния».",
    ["Enemies struck by Light's Hammer take 8% more damage from you for 4 sec."] = "Враги, поражённые «Молотом Света», получают от вас на 8% больше урона в течение 4 сек.",
    ["Enrage"] = "Исступление",
    ["Enrage grants 5% more Haste."] = "«Исступление» дополнительно повышает скорость на 5%.",
    ["Envenom"] = "Отравление",
    ["Envenom's window lasts 0.5 sec longer."] = "Время действия «Отравления» увеличено на 0,5 сек.",
    ["Every 10 sec, your demons deal 30% more damage for 4 sec."] = "Каждые 10 сек. ваши демоны наносят на 30% больше урона в течение 4 сек.",
    ["Every 3rd hit from your other Shaman spells and Feral Spirit bites hurls a free Lightning Bolt at the nearest enemy within 30 yards, or at the 3 nearest if you know Chain Lightning, dealing Nature damage and applying 1 stack of Static. Lightning Shield and totem hits don't count."] = "Каждое третье попадание других заклинаний шамана и укусов духов волков вызывает бесплатную «Молнию» по ближайшему врагу в пределах 30 ярдов (или по трём, если известна «Цепная молния»). Наносит урон природой и накладывает 1 заряд статики. Попадания щита молний и тотемов не учитываются.",
    ["Every 8th Smite resets the cooldown of Halo."] = "Каждая восьмая «Кара» сбрасывает перезарядку «Сияния».",
    ["Execute deals quadruple damage to elites and bosses below 20% health."] = "«Казнь» наносит четырёхкратный урон элитным врагам и боссам с менее чем 20% здоровья.",
    ["Execute kills normal enemies below 25% health, up from 20%."] = "«Казнь» мгновенно убивает обычных врагов с запасом здоровья ниже 25% вместо 20%.",
    ["Exorcism strikes 2 additional enemies, and critical strikes can reset its cooldown once every 0.5 sec."] = "«Экзорцизм» поражает ещё 2 врагов. Критические удары могут сбрасывать его перезарядку не чаще раза в 0,5 сек.",
    ["Explosive Trap fire and Viper Trap poison clouds last 15% longer."] = "Пламя «Взрывной ловушки» и ядовитые облака «Гадючьей ловушки» действуют на 15% дольше.",
    ["Felhunter"] = "Охотник Скверны",
    ["Felhunter deals 15% more damage."] = "«Охотник Скверны» наносит на 15% больше урона.",
    ["Fire Blast"] = "Огненный взрыв",
    ["Fire Blast deals 2% more damage per Burning stack on the target."] = "«Огненный взрыв» наносит на 2% больше урона за каждый заряд горения на цели.",
    ["Fire Blast spreads its target's Burning to 2 nearby enemies."] = "«Огненный взрыв» переносит горение цели на двух ближайших врагов.",
    ["Frostbolt"] = "Ледяная стрела",
    ["Frostbolt deals 10% more damage to Frozen enemies."] = "«Ледяная стрела» наносит на 10% больше урона замороженным врагам.",
    ["Frostbolt treats its target as Frozen 15% of the time."] = "«Ледяная стрела» считает цель замороженной с вероятностью 15%.",
    ["Holy Word: Chastise"] = "Слово Света: Наказание",
    ["Hunter's Mark"] = "Метка охотника",
    ["Judgement critical strikes reset the cooldown of Avenger's Shield."] = "Критические удары «Правосудия» сбрасывают перезарядку «Щита мстителя».",
    ["Judgement critical strikes set off Seal of Command's burst on their target."] = "Критические удары «Правосудия» вызывают на цели взрыв «Печати повиновения».",
    ["Light's Hammer"] = "Молот Света",
    ["Light's Hammer drops 1 additional hammer."] = "«Молот Света» призывает ещё один молот.",
    ["Light's Hammer has a 20% chance to reset its cooldown when cast."] = "При применении «Молот Света» имеет 20% шанс мгновенно восстановить перезарядку.",
    ["Light's Hammer heals you for 1% of your maximum health."] = "«Молот Света» восстанавливает 1% максимального здоровья.",
    ["Mortal Strike"] = "Смертельный удар",
    ["Mutilate stabs 1 additional enemy."] = "«Расправа» поражает ещё одного врага.",
    ["Pack Leader's howls heal you for 3% of your maximum health."] = "Вой «Вожака стаи» восстанавливает вам 3% максимального здоровья.",
    ["Poison"] = "Яд",
    ["Pyroblast stuns normal enemies for 1 sec."] = "«Огненная глыба» оглушает обычных врагов на 1 сек.",
    ["Rake"] = "Глубокая рана",
    ["Regain 0.2% of your health every second."] = "Восстанавливает 0,2% здоровья в секунду.",
    ["Renew smites while you are above 80% health, not only at full. Smite and Halo reduce the cooldown of Holy Word: Chastise by 2 sec."] = "«Обновление» атакует, пока здоровье выше 80%, а не только при полном запасе. «Кара» и «Сияние» сокращают перезарядку «Слова Света: Наказание» на 2 сек.",
    ["Retribution Aura slows normal enemies that strike you by 20% for 2 sec."] = "«Аура воздаяния» замедляет ударивших вас обычных врагов на 20% на 2 сек.",
    ["Righteous Verdict also triggers on Divine Storm critical strikes."] = "«Праведный приговор» также срабатывает при критических ударах «Божественной бури».",
    ["Seal of Command"] = "Печать повиновения",
    ["Shield Block"] = "Блок щитом",
    ["Shield Block grants 2% more of your maximum health as Shield."] = "«Блок щитом» создаёт щит дополнительно на 2% максимального здоровья.",
    ["Shield Block's Shield holds up to 100% of your maximum health instead of 50% and regenerates 10% of your maximum health per sec, even while you are hit. While your Shield is above half, you deal 20% more damage."] = "«Блок щитом» накапливает щит до 100% максимального здоровья вместо 50%. Щит восстанавливается на 10% максимального здоровья в секунду, даже под ударами. Пока щит заполнен более чем наполовину, вы наносите на 20% больше урона.",
    ["Shield Slam"] = "Удар щитом",
    ["Shred"] = "Полоснуть",
    ["Shred deals 1% more damage per Bleed stack on its target."] = "«Полоснуть» наносит на 1% больше урона за каждый заряд кровотечения на цели.",
    ["Spell"] = "Заклинание",
    ["Starfall"] = "Звездопад",
    ["Starfall strikes in every form and hits 2 additional enemies."] = "«Звездопад» действует в любом облике и поражает ещё двух врагов.",
    ["Static"] = "Статика",
    ["Succubus deals 15% more damage."] = "«Суккуб» наносит на 15% больше урона.",
    ["Thunder Clap heals you for 1% of your maximum health."] = "«Удар грома» восстанавливает 1% максимального здоровья.",
    ["Thunder Clap strikes twice."] = "«Удар грома» срабатывает дважды.",
    ["Viper Trap"] = "Гадючья ловушка",
    ["Viper Trap's poison clouds last 3 sec longer."] = "Ядовитые облака «Гадючьей ловушки» действуют на 3 сек. дольше.",
    ["Viper Trap's vipers freeze the normal enemies they reach."] = "Змеи «Гадючьей ловушки» замораживают обычных врагов, которых достигают.",
    ["When Holy Word: Chastise kills an enemy, its cooldown resets."] = "Если «Слово Света: Наказание» убивает врага, его перезарядка сбрасывается.",
    ["When Mortal Strike kills an enemy, its cooldown resets."] = "Убийство «Смертельным ударом» мгновенно восстанавливает его перезарядку.",
    ["When Smite kills an enemy, its cooldown resets."] = "Если «Кара» убивает врага, её перезарядка сбрасывается.",
    ["When a Burning enemy dies, its Burning spreads to 1 additional nearby enemy."] = "При гибели горящего врага его горение переходит ещё на одного ближайшего врага.",
    ["When a Poisoned enemy dies, its Poison spreads to 1 additional nearby enemy."] = "После гибели отравленного врага яд переходит ещё на одного ближайшего врага.",
    ["When an enemy hits you, you drop an Explosive Trap at your feet."] = "Получив удар, вы устанавливаете под собой «Взрывную ловушку».",
    ["When an enemy with your Decay or Agony dies, they jump to the nearest enemy without them, keeping every stack."] = "Когда враг с «Разложением» или «Агонией» погибает, эффекты переходят к ближайшему врагу без них со всеми зарядами.",
    ["When an enemy with your Decay or Agony dies, they spread to the nearest enemy without them, keeping half the stacks."] = "После гибели врага эффекты «Разложения» и «Агонии» переходят на ближайшего врага без них, сохраняя половину зарядов.",
    ["While Enraged, your critical strikes deal 20% more damage."] = "В состоянии исступления критические удары наносят на 20% больше урона.",
    ["While you have a Shield, you take 20% less damage and deal 20% more damage."] = "Пока у вас есть щит, вы получаете на 20% меньше урона и наносите на 20% больше.",
    ["While your Shield holds at least 30% of your maximum health, you deal 10% more damage."] = "Пока щит составляет не менее 30% максимального здоровья, вы наносите на 10% больше урона.",
    ["Whirlwind spins 3 times while you are Enraged."] = "В состоянии исступления «Вихрь» совершает 3 вращения.",
    ["Your Agony deals 12% more damage."] = "«Агония» наносит на 12% больше урона.",
    ["Your Bleed can critically strike for half the critical strike bonus."] = "Кровотечение может наносить критический урон с половиной обычного бонуса.",
    ["Your Burning can critically strike for half the critical strike bonus."] = "Горение может наносить критический урон с половиной обычного бонуса.",
    ["Your Decay and Agony can critically strike for half the critical strike bonus."] = "«Разложение» и «Агония» могут наносить критический урон с половиной обычного бонуса.",
    ["Your Decay deals 12% more damage."] = "«Разложение» наносит на 12% больше урона.",
    ["Your Moonfire can critically strike for half the critical strike bonus."] = "«Лунный огонь» может наносить критический урон с половиной обычного бонуса.",
    ["Your Poison can critically strike for half the critical strike bonus."] = "Периодический урон яда может быть критическим с половиной обычного бонуса.",
    ["Your abilities apply 1 additional stack of Poison per hit, even without Deadly Poison."] = "Каждое попадание ваших способностей накладывает ещё 1 эффект яда, даже без «Смертельного яда».",
    ["Your critical strikes deal 10% more damage."] = "Критические удары наносят на 10% больше урона.",
    ["Your critical strikes deal 100% more damage. Your maximum health is reduced by 35%."] = "Критические удары наносят на 100% больше урона, но максимальное здоровье уменьшается на 35%.",
    ["Your dash becomes Blink and its cooldown is halved. Each dash sets off your Arcane Explosion where you land. Stacks with the Blink spell."] = "Рывок становится «Скачком» с вдвое меньшей перезарядкой. При приземлении срабатывает «Чародейский взрыв». Суммируется с эффектом заклинания «Скачок».",
    ["Your demon's attacks apply 1 additional stack of Poison."] = "Атаки вашего демона накладывают ещё 1 эффект яда.",
    ["Your demons deal 10% more damage for each different demon you command, up to 40%."] = "Ваши демоны наносят на 10% больше урона за каждый вид призванного демона (до 40%).",
    ["Your spells have a 2% chance to reset their cooldown."] = "Заклинания с шансом 2% мгновенно восстанавливают перезарядку.",
}
for en, ru in pairs(v12Strings) do dict[en] = ru end


-- v1.3: verified ruRU catalog entries unavailable in the original post-load dictionary.
-- This is client-side fallback; native server localization still requires MariaDB.
local v13ServerStrings = {
    ["+0.8% dodge chance."] = "+0.8% к шансу уклонения.",
    ["+1.2% critical strike chance."] = "+1.2% к шансу критического удара.",
    ["+1.5 Armor."] = "+1.5 к броне.",
    ["+10% pickup range."] = "+10% к радиусу подбора.",
    ["+12% critical strike damage."] = "+12% к урону критических ударов.",
    ["+16% maximum health."] = "+16% к максимальному здоровью.",
    ["+2.5% Area."] = "+2.5% к области действия.",
    ["+2.5% Haste."] = "+2.5% к скорости.",
    ["+2% dodge chance."] = "+2% к шансу уклонения.",
    ["+2% movement speed."] = "+2% к скорости передвижения.",
    ["+3% critical strike chance."] = "+3% к шансу критического удара.",
    ["+3% dodge chance."] = "+3% к шансу уклонения.",
    ["+3% pet critical strike chance."] = "+3% к шансу крита питомцев.",
    ["+3% Power."] = "+3% к силе.",
    ["+4% critical strike chance."] = "+4% к шансу критического удара.",
    ["+4% critical strike damage."] = "+4% к урону критических ударов.",
    ["+4% Haste."] = "+4% к скорости.",
    ["+4% maximum health."] = "+4% к максимальному здоровью.",
    ["+4% movement speed."] = "+4% к скорости движения.",
    ["+4% Power."] = "+4% к силе.",
    ["+5 Armor."] = "+5 к броне.",
    ["+5% Area."] = "+5% к площади действия.",
    ["+5% maximum health."] = "+5% к максимальному здоровью.",
    ["+7% Haste."] = "+7% к скорости.",
    ["+8 Armor."] = "+8 к броне.",
    ["Acolyte"] = "Послушник",
    ["Adept"] = "Адепт",
    ["Aegis"] = "Эгида",
    ["Affliction spells deal 4% more damage."] = "Урон способностей ветки «Колдовство» увеличен на 4%.",
    ["Affliction spells deal 5% more damage."] = "Урон способностей ветки «Колдовство» увеличен на 5%.",
    ["Agility"] = "Ловкость",
    ["Agony's Echo"] = "Эхо агонии",
    ["Aimed Shot marks every enemy it passes through. Can't be learned with Improved Arcane Shot."] = "«Прицельный выстрел» помечает каждого пронзённого врага. Нельзя изучать вместе с «Улучшенный чародейский выстрел».",
    ["Alpha Wolf applies 1 additional stack of Static."] = "«Вожак волков» накладывает 1 дополнительных эффект(а) «Статика».",
    ["Ambush deals 5% more damage."] = "«Внезапная атака» наносит на 5% больше урона.",
    ["Ancient of War"] = "Древень войны",
    ["Apex Predator"] = "Высший хищник",
    ["Apotheosis"] = "Апофеоз",
    ["Apprentice"] = "Ученик",
    ["Arcane Archer"] = "Чародейский лучник",
    ["Arcane Power"] = "Чародейская мощь",
    ["Arcane Shot slows normal enemies by 30% for 2 sec. Can't be learned with Improved Aimed Shot."] = "«Чародейский выстрел» замедляет обычных врагов на 30% на 2 сек. Нельзя изучать вместе с «Улучшенный прицельный выстрел».",
    ["Arcane spells deal 4% more damage."] = "Урон способностей ветки «Тайная магия» увеличен на 4%.",
    ["Arcane spells deal 5% more damage."] = "Урон способностей ветки «Тайная магия» увеличен на 5%.",
    ["Arcanist"] = "Чародей",
    ["Archdruid"] = "Верховный друид",
    ["Archmage"] = "Архимаг",
    ["Ardent Defender"] = "Ревностный защитник",
    ["Argent Initiate"] = "Послушник Серебряного Авангарда",
    ["Arms spells deal 4% more damage."] = "Урон способностей ветки «Оружие» увеличен на 4%.",
    ["Arms spells deal 5% more damage."] = "Урон способностей ветки «Оружие» увеличен на 5%.",
    ["Arrow Storm"] = "Буря стрел",
    ["Ashbringer"] = "Испепелитель",
    ["Assassin"] = "Ассасин",
    ["Assassination spells deal 4% more damage."] = "Урон способностей ветки «Ликвидация» увеличен на 4%.",
    ["Assassination spells deal 5% more damage."] = "Урон способностей ветки «Ликвидация» увеличен на 5%.",
    ["Attunement"] = "Настройка",
    ["Avatar of the Wild"] = "Аватар дикой природы",
    ["Avenging Crusader"] = "Карающий крестоносец",
    ["Balance spells deal 4% more damage."] = "Урон способностей ветки «Баланс» увеличен на 4%.",
    ["Balance spells deal 5% more damage."] = "Урон способностей ветки «Баланс» увеличен на 5%.",
    ["Banishment"] = "Изгнание",
    ["Barkskin"] = "Дубовая кожа",
    ["Battle-Hardened"] = "Закалённый боями",
    ["Beast Mastery spells deal 4% more damage."] = "Урон способностей ветки «Повелитель зверей» увеличен на 4%.",
    ["Beast of Burden"] = "Вьючный зверь",
    ["Beastmaster"] = "Повелитель зверей",
    ["Big Game"] = "Крупная дичь",
    ["Big Game Hunter"] = "Охотник на крупную дичь",
    ["Blade Flurry lasts 2 sec longer."] = "«Шквал клинков» действует на 2 сек. дольше.",
    ["Bladestorm"] = "Вихрь клинков",
    ["Blessed Ground"] = "Благословенная земля",
    ["Blessing of Might"] = "Благословение могущества",
    ["Blindside"] = "Удар с фланга",
    ["Blood Aura"] = "Кровавая аура",
    ["Blood Pool"] = "Лужа крови",
    ["Blood Shield"] = "Кровавый щит",
    ["Bloodbath"] = "Кровавая баня",
    ["Bloodlust"] = "Жажда крови",
    ["Bloodsplatter"] = "Брызги крови",
    ["Bloodthirsty"] = "Кровожадный",
    ["Bloody Frenzy"] = "Кровавое безумие",
    ["Bone Collector"] = "Собиратель костей",
    ["Bone Pile"] = "Груда костей",
    ["Bonk Legend"] = "Легенда Азерота",
    ["Boss"] = "Босс",
    ["Boss Bonker"] = "Укротитель боссов",
    ["Boss Buster"] = "Гроза боссов",
    ["Bounty Hunter"] = "Охотник за головами",
    ["Brambles"] = "Ежевика",
    ["Breather"] = "Передышка",
    ["Brutal Foes"] = "Свирепые враги",
    ["Brute Wave"] = "Волна громил",
    ["Build-up"] = "Нарастание",
    ["Bulwark"] = "Бастион",
    ["Burning Ground"] = "Горящая земля",
    ["Caltrops"] = "Шипы",
    ["Campfire Tales"] = "Рассказы у костра",
    ["Card Shark"] = "Карточный шулер",
    ["Cenarion Champion"] = "Поборник Кенария",
    ["Chain Execution"] = "Цепная казнь",
    ["Chain Lightning applies 1 additional stack of Static."] = "«Цепная молния» накладывает 1 дополнительных эффект(а) «Статика».",
    ["Chain Lightning strikes 1 additional enemy."] = "«Цепная молния» поражает ещё 1 врагов.",
    ["Chains of Light"] = "Цепи Света",
    ["Champion"] = "Чемпион",
    ["Champion of Azeroth"] = "Чемпион Азерота",
    ["Champion of the Light"] = "Поборник Света",
    ["Champions"] = "Чемпионы",
    ["Chaos Bolt"] = "Стрела Хаоса",
    ["Cheap Shot"] = "Подлый трюк",
    ["Clarity"] = "Ясность",
    ["Claw of the Wild"] = "Коготь дикой природы",
    ["Clean Hands"] = "Чистые руки",
    ["Close Call"] = "На волоске",
    ["Cluster Trap"] = "Кассетная ловушка",
    ["Cold Descent"] = "Холодное падение",
    ["Combat spells deal 4% more damage."] = "Урон способностей ветки «Бой» увеличен на 4%.",
    ["Combat spells deal 5% more damage."] = "Урон способностей ветки «Бой» увеличен на 5%.",
    ["Concussion Blow slows by 20% more."] = "«Оглушающий удар» замедляет ещё на 20%.",
    ["Confessor"] = "Исповедник",
    ["Conflagrate"] = "Поджигание",
    ["Consecrator"] = "Освятитель",
    ["Contrition"] = "Раскаяние",
    ["Corrosive Vipers"] = "Едкие гадюки",
    ["Corruption applies 1 additional stack of Decay."] = "«Порча» накладывает 1 дополнительных эффект(а) «Разложение».",
    ["Corruptor"] = "Осквернитель",
    ["Coup de Grace"] = "Добивающий удар",
    ["Crash Lightning"] = "Сокрушающая молния",
    ["Crippling Poison"] = "Калечащий яд",
    ["Crusader"] = "Крестоносец",
    ["Crusader Strike strikes 1 additional enemy. Can't be learned with Improved Seal of Command."] = "«Удар воина Света» поражает ещё 1 врагов. Нельзя изучать вместе с «Улучшенная печать повиновения».",
    ["Crusader's Zeal"] = "Рвение крестоносца",
    ["Cultist of the Damned"] = "Сектант Проклятых",
    ["Curse of Agony applies 1 additional stack of Agony."] = "«Проклятие агонии» накладывает 1 дополнительных эффект(а) «Агония».",
    ["Curse of Doom"] = "Проклятие рока",
    ["Cursed Ground"] = "Проклятая земля",
    ["Cutthroat"] = "Головорез",
    ["Dark Harvest"] = "Тёмная жатва",
    ["Dark Pact"] = "Тёмный союз",
    ["Dash Cooldown"] = "Перезарядка рывка",
    ["Dash Range"] = "Дальность рывка",
    ["Deadliest Foes"] = "Опаснейшие враги",
    ["Deadly Fan"] = "Смертоносный веер",
    ["Deadly Throw"] = "Смертоносный бросок",
    ["Deathless"] = "Бессмертный",
    ["Deep Freeze"] = "Глубокая заморозка",
    ["Demonic Empowerment lasts 2 sec longer."] = "«Усиление демонов» действует на 2 сек. дольше.",
    ["Demonic Immolation"] = "Демоническое жертвенное пламя",
    ["Demonology spells deal 4% more damage."] = "Урон способностей ветки «Демонология» увеличен на 4%.",
    ["Demonology spells deal 5% more damage."] = "Урон способностей ветки «Демонология» увеличен на 5%.",
    ["Demoralizing Shout"] = "Деморализующий крик",
    ["Destruction spells deal 4% more damage."] = "Урон способностей ветки «Разрушение» увеличен на 4%.",
    ["Destruction spells deal 5% more damage."] = "Урон способностей ветки «Разрушение» увеличен на 5%.",
    ["Devotion Aura"] = "Аура благочестия",
    ["Devour Affix"] = "Поглощение модификатора",
    ["Discipline spells deal 4% more damage."] = "Урон способностей ветки «Послушание» увеличен на 4%.",
    ["Discipline spells deal 5% more damage."] = "Урон способностей ветки «Послушание» увеличен на 5%.",
    ["Disintegrate"] = "Распад",
    ["Divine Hymn"] = "Божественный гимн",
    ["Divine Tempest"] = "Божественный ураган",
    ["Doom Clock"] = "Часы рока",
    ["Doom Winds"] = "Роковые ветра",
    ["Doomcaller"] = "Вестник рока",
    ["Drain Soul"] = "Похищение души",
    ["Dreadlord"] = "Повелитель ужаса",
    ["Each Eviscerate reduces the cooldown of Killing Spree by 1 sec."] = "Каждое «Потрошение» сокращает перезарядку «Череда убийств» на 1 сек.",
    ["Each Exorcism reduces the cooldown of Light's Hammer by 1 sec."] = "Каждое «Экзорцизм» сокращает перезарядку «Молот Света» на 1 сек.",
    ["Each Hammer of Justice reduces the cooldown of Divine Shield by 1 sec."] = "Каждое «Молот правосудия» сокращает перезарядку «Божественный щит» на 1 сек.",
    ["Earth Shield"] = "Земной щит",
    ["Earth Shock applies 1 stack of Static."] = "«Земной шок» накладывает 1 дополнительных эффект(а) «Статика».",
    ["Earth Shock stuns normal enemies for 1 sec. Once per enemy every 6 sec. Can't be learned with Elemental Focus."] = "«Земной шок» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек. Нельзя изучать вместе с «Сосредоточение стихий».",
    ["Earthbind"] = "Путы земли",
    ["Earthen Ring"] = "Служитель Служителей Земли",
    ["Earthquake"] = "Землетрясение",
    ["Echo of Light"] = "Эхо Света",
    ["Efflorescence"] = "Период цветения",
    ["Elemental Mastery"] = "Мастерство стихий",
    ["Elemental Shift"] = "Смена стихий",
    ["Elemental spells deal 4% more damage."] = "Урон способностей ветки «Стихии» увеличен на 4%.",
    ["Elemental spells deal 5% more damage."] = "Урон способностей ветки «Стихии» увеличен на 5%.",
    ["Elemental Spirits"] = "Духи стихий",
    ["Elementalist"] = "Повелитель стихий",
    ["Empowered Elites"] = "Усиленные элиты",
    ["Endless Flurry"] = "Бесконечный шквал",
    ["Enhancement spells deal 4% more damage."] = "Урон способностей ветки «Совершенствование» увеличен на 4%.",
    ["Enhancement spells deal 5% more damage."] = "Урон способностей ветки «Совершенствование» увеличен на 5%.",
    ["Enrage lasts 1 sec longer."] = "«Исступление» действует на 1 сек. дольше.",
    ["Errand Runner"] = "Посыльный",
    ["Escape Artist"] = "Мастер побега",
    ["Eviscerate strikes 1 additional enemy."] = "«Потрошение» поражает ещё 1 врагов.",
    ["Exorcism stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Экзорцизм» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек.",
    ["Exorcist"] = "Экзорцист",
    ["Explosive Trap applies 2 additional stacks of Burning."] = "«Взрывная ловушка» накладывает 2 дополнительных эффект(а) «Горение».",
    ["Exsanguinate"] = "Обескровливание",
    ["Exterminator"] = "Истребитель",
    ["Eye of the Storm"] = "Око бури",
    ["Faithful"] = "Верный",
    ["Fallen Hero"] = "Павший герой",
    ["Fan of Knives slows normal enemies by 30% for 2 sec."] = "«Веер клинков» замедляет обычных врагов на 30% на 2 сек.",
    ["Farseer"] = "Предсказатель",
    ["Feeding Frenzy"] = "Пищевая ярость",
    ["Felhunter deals 15% more damage. Can't be learned with Improved Succubus."] = "Охотник Скверны наносит на 15% больше урона. Нельзя изучать вместе с «Улучшенный суккуб».",
    ["Feral spells deal 4% more damage."] = "Урон способностей ветки «Сила зверя» увеличен на 4%.",
    ["Feral spells deal 5% more damage."] = "Урон способностей ветки «Сила зверя» увеличен на 5%.",
    ["Ferocious Bite"] = "Свирепый укус",
    ["Field Medic"] = "Полевой медик",
    ["Find Weakness"] = "Поиск слабости",
    ["Fire Elemental"] = "Элементаль огня",
    ["Fire Nova Totem"] = "Тотем огненного кольца",
    ["Fire spells deal 4% more damage."] = "Урон способностей ветки «Огонь» увеличен на 4%.",
    ["Fire spells deal 5% more damage."] = "Урон способностей ветки «Огонь» увеличен на 5%.",
    ["Firelord"] = "Повелитель огня",
    ["Firelord's Favor"] = "Милость Повелителя огня",
    ["Firewalk"] = "Огненная поступь",
    ["Flame Shock"] = "Огненный шок",
    ["Flame Shock applies 2 more stacks of Burning."] = "«Огненный шок» накладывает 2 дополнительных эффект(а) «Горение».",
    ["Flametongue Weapon"] = "Оружие языка пламени",
    ["Flare"] = "Осветительная ракета",
    ["Flawless"] = "Безупречно",
    ["Fleet Foot"] = "Быстрая поступь",
    ["Footpad"] = "Грабитель",
    ["Force of Nature"] = "Сила природы",
    ["Foresight"] = "Предвидение",
    ["Forked Lightning"] = "Разветвлённая молния",
    ["Fortitude"] = "Стойкость",
    ["Fortune"] = "Удача",
    ["Fourth Swing"] = "Четвёртый удар",
    ["Free. Divine Storm is a starter spell."] = "Бесплатно. «Божественная буря» — начальное заклинание.",
    ["Free. Rejuvenation is a starter spell."] = "Бесплатно. «Омоложение» — начальное заклинание.",
    ["Free. Searing Totem is a starter spell."] = "Бесплатно. «Опаляющий тотем» — начальное заклинание.",
    ["Free. Shadow Bolt is a starter spell."] = "Бесплатно. «Стрела Тьмы» — начальное заклинание.",
    ["Free. Shadow Word: Pain is a starter spell."] = "Бесплатно. «Слово Тьмы: Боль» — начальное заклинание.",
    ["Free. Shuriken Toss is a starter spell."] = "Бесплатно. «Бросок сюрикена» — начальное заклинание.",
    ["Free. Thunder Clap is a starter spell."] = "Бесплатно. «Удар грома» — начальное заклинание.",
    ["Frenzied Regeneration"] = "Неистовое восстановление",
    ["Frost Shock"] = "Ледяной шок",
    ["Frost spells deal 4% more damage."] = "Урон способностей ветки «Лёд» увеличен на 4%.",
    ["Frost spells deal 5% more damage."] = "Урон способностей ветки «Лёд» увеличен на 5%.",
    ["Frostbinder"] = "Повелитель холода",
    ["Frostbite"] = "Обморожение",
    ["Frostbolt applies 1 additional stack of Chill."] = "«Ледяная стрела» накладывает 1 дополнительных эффект(а) «Охлаждение».",
    ["Frostweaver"] = "Ткач холода",
    ["Full Moon"] = "Полнолуние",
    ["Fungal Growth"] = "Грибной рост",
    ["Fury spells deal 4% more damage."] = "Урон способностей ветки «Неистовство» увеличен на 4%.",
    ["Fury spells deal 5% more damage."] = "Урон способностей ветки «Неистовство» увеличен на 5%.",
    ["Gain a Shield of 4% of your maximum health."] = "Создаёт щит на 4% максимального здоровья.",
    ["Gain a Shield of 5% of your maximum health."] = "Создаёт щит на 5% максимального здоровья.",
    ["Ghost Walk"] = "Призрачная поступь",
    ["Giant Slayer"] = "Убийца великанов",
    ["Glutton for Punishment"] = "Любитель наказаний",
    ["Glyph of Ambition"] = "Символ амбиций",
    ["Glyph of Blinding Speed"] = "Символ ослепительной скорости",
    ["Glyph of Bloodlust"] = "Символ жажды крови",
    ["Glyph of Cleave"] = "Символ рассекающего удара",
    ["Glyph of Corpse Explosion"] = "Символ взрыва трупа",
    ["Glyph of Divination"] = "Символ прорицания",
    ["Glyph of Divine Shield"] = "Символ божественного щита",
    ["Glyph of Echoes"] = "Символ эха",
    ["Glyph of Execute"] = "Символ казни",
    ["Glyph of Foresight"] = "Символ предвидения",
    ["Glyph of Frost Nova"] = "Символ кольца льда",
    ["Glyph of Ignite"] = "Символ воспламенения",
    ["Glyph of Multi-Shot"] = "Символ залпа",
    ["Glyph of Ragnaros"] = "Символ Рагнароса",
    ["Glyph of Raise Dead"] = "Символ воскрешения мёртвых",
    ["Glyph of Second Wind"] = "Символ второго дыхания",
    ["Glyph of Shadowmourne"] = "Символ Тёмной Скорби",
    ["Glyph of Soul Harvest"] = "Символ жатвы душ",
    ["Glyph of Soul Siphon"] = "Символ похищения души",
    ["Glyph of the Gambler"] = "Символ азартного игрока",
    ["Glyph of the Hunt"] = "Символ охоты",
    ["Glyph of the Last Stand"] = "Символ последнего рубежа",
    ["Glyph of the Ley Line"] = "Символ лей-линии",
    ["Glyph of the Nomad"] = "Символ кочевника",
    ["Glyph of the Packrat"] = "Символ запасливого",
    ["Glyph of the Prodigy"] = "Символ вундеркинда",
    ["Glyph of the Scavenger"] = "Символ собирателя",
    ["Glyph of the Treasure Hunter"] = "Символ кладоискателя",
    ["Glyph of the Windseeker"] = "Символ Искателя Ветра",
    ["Glyph of Vanish"] = "Символ исчезновения",
    ["Glyph of Vengeance"] = "Символ возмездия",
    ["Glyph of Windfury"] = "Символ неистовства ветра",
    ["Goblin Snatcher"] = "Ловец гоблинов",
    ["Grand Finale"] = "Грандиозный финал",
    ["Grand Magus"] = "Верховный маг",
    ["Gravity Volley"] = "Притягивающий залп",
    ["Ground Breaker"] = "Землекрушитель",
    ["Guardian of Cenarius"] = "Страж Кенария",
    ["Guardian of Tirisfal"] = "Страж Тирисфаля",
    ["Haggle"] = "Торг",
    ["Hail of Bolts"] = "Град снарядов",
    ["Halfway Down"] = "Полпути вниз",
    ["Hallowed Ground"] = "Святая земля",
    ["Halo"] = "Ореол",
    ["Halo slows normal enemies by 30% for 2 sec."] = "«Ореол» замедляет обычных врагов на 30% на 2 сек.",
    ["Hammer of Justice"] = "Молот правосудия",
    ["Hammer of Justice strikes 2 additional enemies."] = "«Молот правосудия» поражает ещё 2 врагов.",
    ["Hammer of Light"] = "Молот Света",
    ["Hammer of the Light"] = "Молот Света",
    ["Hammer of the Righteous"] = "Молот праведника",
    ["Hardened"] = "Закалённый",
    ["Hardened Foes"] = "Закалённые враги",
    ["Head Start"] = "Фора",
    ["Healing Rain"] = "Целительный дождь",
    ["Healing Stream Totem"] = "Тотем исцеляющего потока",
    ["Healing Tide"] = "Целительный прилив",
    ["Hearthstone Lore"] = "Знание камня возвращения",
    ["Hellcaller"] = "Призыватель адского пламени",
    ["Hellfire stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Адское пламя» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек.",
    ["Hero of Zandalar"] = "Герой Зандалара",
    ["Heroic Strikes"] = "Удары героя",
    ["High Priest"] = "Верховный жрец",
    ["High Roller"] = "Азартный игрок",
    ["Highlord"] = "Верховный лорд",
    ["Hogger!"] = "Хоггер!",
    ["Holy Fire"] = "Священный огонь",
    ["Holy Shield"] = "Щит Света",
    ["Holy spells deal 4% more damage."] = "Урон способностей ветки «Свет» увеличен на 4%.",
    ["Holy spells deal 5% more damage."] = "Урон способностей ветки «Свет» увеличен на 5%.",
    ["Holy Word: Chastise strikes 2 additional enemies."] = "«Слово Света: Наказание» поражает ещё 2 врагов.",
    ["Holy Word: Sanctify"] = "Слово Света: Освящение",
    ["Hound Master"] = "Повелитель гончих",
    ["Howl of the Pack Leader"] = "Вой вожака стаи",
    ["Hungry for More"] = "Всегда голоден",
    ["Huntmaster"] = "Мастер охоты",
    ["Hurricane"] = "Ураган",
    ["Hurricane lasts 1 sec longer."] = "«Ураган» действует на 1 сек. дольше.",
    ["Hurricane stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Ураган» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек.",
    ["Hydra"] = "Гидра",
    ["Ice Nova"] = "Ледяная вспышка",
    ["Illumination"] = "Просветление",
    ["Immolate strikes 1 additional enemy. Can't be learned with Improved Rain of Fire."] = "«Жертвенный огонь» поражает ещё одну цель. Нельзя изучать вместе с «Улучшенный огненный дождь».",
    ["Improved Cleave"] = "Улучшенный рассекающий удар",
    ["Increases the radius of Cleave by 2 yards."] = "Радиус «Рассекающий удар» увеличивается на 2 ярда.",
    ["Increases the radius of Consecration by 2 yards."] = "Радиус «Освящение» увеличивается на 2 ярда.",
    ["Increases the radius of Divine Storm by 2 yards."] = "Радиус «Божественная буря» увеличивается на 2 ярда.",
    ["Increases the radius of Fan of Knives by 2 yards."] = "Радиус «Веер клинков» увеличивается на 2 ярда.",
    ["Increases the radius of Halo by 6%."] = "Радиус «Ореол» увеличен на 6%.",
    ["Increases the radius of Hellfire by 20%."] = "Радиус «Адское пламя» увеличен на 20%.",
    ["Increases the radius of Hunter's Mark by 4 yards."] = "Радиус «Метка охотника» увеличивается на 4 ярда.",
    ["Increases the radius of Mortal Strike by 2 yards."] = "Радиус «Смертельный удар» увеличивается на 2 ярда.",
    ["Increases the radius of Psychic Scream by 2 yards."] = "Радиус «Ментальный крик» увеличивается на 2 ярда.",
    ["Increases the radius of Shield Slam by 2 yards."] = "Радиус «Мощный удар щитом» увеличивается на 2 ярда.",
    ["Increases the radius of Thunder Clap by 2 yards."] = "Радиус «Удар грома» увеличивается на 2 ярда.",
    ["Inferno"] = "Инферно",
    ["Initiate of the Coven"] = "Посвящённый ковена",
    ["Initiate of the Grove"] = "Посвящённый рощи",
    ["Insanity"] = "Безумие",
    ["Insight"] = "Озарение",
    ["Instant Poison"] = "Быстродействующий яд",
    ["Into the Deep"] = "В самую глубь",
    ["Ironclad"] = "Закованный в сталь",
    ["Judgement of Light"] = "Правосудие Света",
    ["Judgement of the Crusader"] = "Правосудие крестоносца",
    ["Judgement strikes 2 additional enemies."] = "«Правосудие» поражает ещё 2 врагов.",
    ["Keeper of the Grove"] = "Хранитель рощи",
    ["King of the Crater"] = "Король кратера",
    ["King of the Murlocs"] = "Король мурлоков",
    ["Kingslayer"] = "Цареубийца",
    ["Kirin Tor"] = "Кирин-Тор",
    ["Knight of the Silver Hand"] = "Рыцарь Серебряной Длани",
    ["Lacerate"] = "Растерзание",
    ["Lava Burst"] = "Выброс лавы",
    ["Lava Lash"] = "Удар лавы",
    ["Lava Surge"] = "Волна лавы",
    ["Lay on Hands"] = "Возложение рук",
    ["Lifebloom"] = "Жизнецвет",
    ["Lifegiver"] = "Дарующий жизнь",
    ["Light of Azeroth"] = "Свет Азерота",
    ["Light on Your Feet"] = "Лёгкая поступь",
    ["Light's Edge"] = "Острие Света",
    ["Light's Hammer slows normal enemies by 30% for 2 sec."] = "«Молот Света» замедляет обычных врагов на 30% на 2 сек.",
    ["Lightbearer"] = "Светоносец",
    ["Lightbringer"] = "Несущий Свет",
    ["Lightning Bolt strikes 1 additional enemy."] = "«Молния» поражает ещё 1 врагов.",
    ["Lightning Overload"] = "Перегрузка молний",
    ["Lightning Shield"] = "Щит молний",
    ["Lightsworn"] = "Присягнувший Свету",
    ["Liquid Magma"] = "Жидкая магма",
    ["Living Bomb"] = "Живая бомба",
    ["Lockpicker"] = "Взломщик замков",
    ["Lucky Draw"] = "Счастливый выбор",
    ["Lull"] = "Затишье",
    ["Maelstrom Weapon"] = "Оружие Водоворота",
    ["Magister"] = "Магистр",
    ["Magnetic Personality"] = "Магнитная личность",
    ["Main Gauche"] = "Удар второй рукой",
    ["Mangle"] = "Увечье",
    ["Marksmanship spells deal 4% more damage."] = "Урон способностей ветки «Стрельба» увеличен на 4%.",
    ["Marksmanship spells deal 5% more damage."] = "Урон способностей ветки «Стрельба» увеличен на 5%.",
    ["Mass Entanglement"] = "Массовые корни",
    ["Mass Exorcism"] = "Массовый экзорцизм",
    ["Mass Shackle"] = "Массовые оковы",
    ["Master of One"] = "Мастер одного дела",
    ["Master of the Hunt"] = "Мастер охоты",
    ["Master Thief"] = "Мастер-вор",
    ["Meteor"] = "Метеор",
    ["Meteor Shower"] = "Метеоритный дождь",
    ["Might"] = "Мощь",
    ["Mind Blast"] = "Взрыв разума",
    ["Mind Flay"] = "Пытка разума",
    ["Mind Flay stuns normal enemies for 1 sec. Once per enemy every 6 sec. Can't be learned with Shadow Weaving."] = "«Пытка разума» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек. Нельзя изучать вместе с «Плетение Тьмы».",
    ["Mind Sear"] = "Опаляющий разум",
    ["Mind Spike"] = "Ментальный шип",
    ["Mindbender"] = "Подчинитель разума",
    ["Misery"] = "Страдание",
    ["Moonfire strikes 1 additional enemy."] = "«Лунный огонь» поражает ещё 1 врагов.",
    ["Moonstorm"] = "Лунная буря",
    ["Mortal Strike deals 1% more damage per Bleed stack on the target."] = "«Смертельный удар» наносит на 1% больше урона за каждый эффект «Кровотечение» на цели.",
    ["Mortal Strike slows normal enemies by 30% for 2 sec."] = "«Смертельный удар» замедляет обычных врагов на 30% на 2 сек.",
    ["Moving On"] = "Дальше в путь",
    ["Murderous Intent"] = "Убийственный замысел",
    ["Mutilate slows normal enemies by 30% for 2 sec."] = "«Расправление» замедляет обычных врагов на 30% на 2 сек.",
    ["Mystic Insight"] = "Мистическое озарение",
    ["Nature's Grasp"] = "Хватка природы",
    ["Netherbound"] = "Связанный с Пустотой",
    ["Nightblade"] = "Ночной клинок",
    ["Now You See Me"] = "А теперь меня нет",
    ["Old Guard"] = "Старая гвардия",
    ["Opening"] = "Начало",
    ["Oracle"] = "Оракул",
    ["Overcharge"] = "Перезарядка",
    ["Overgrowth"] = "Буйная поросль",
    ["Overtime"] = "Дополнительное время",
    ["Pack Mule"] = "Вьючный мул",
    ["Painful Lash"] = "Болезненный хлыст",
    ["Passive Slot"] = "Ячейка пассивного эффекта",
    ["Patience"] = "Терпение",
    ["Peak"] = "Пик",
    ["Penance fires 1 additional bolt."] = "«Покаяние» выпускает ещё 1 снаряд(а).",
    ["Pest Control"] = "Борьба с вредителями",
    ["Pickup Range"] = "Радиус подбора",
    ["Plague Beast"] = "Чумной зверь",
    ["Pocket Change"] = "Мелочь в кармане",
    ["Poisoner"] = "Отравитель",
    ["Power Word: Barrier"] = "Слово силы: Барьер",
    ["Power Word: Fortitude"] = "Слово силы: Стойкость",
    ["Power Word: Shield"] = "Слово силы: Щит",
    ["Prayer of Mending"] = "Молитва восстановления",
    ["Premonition"] = "Предчувствие",
    ["Prophet"] = "Пророк",
    ["Protection spells deal 4% more damage."] = "Урон способностей ветки «Защита» увеличен на 4%.",
    ["Protection spells deal 5% more damage."] = "Урон способностей ветки «Защита» увеличен на 5%.",
    ["Psychic Horror"] = "Ментальный ужас",
    ["Psychic Scream"] = "Ментальный крик",
    ["Pyroblast stuns normal enemies for 1 sec. Once per enemy every 6 sec. Can't be learned with Combustion."] = "«Огненная глыба» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек. Нельзя изучать вместе с «Возгорание».",
    ["Pyromancer"] = "Пиромант",
    ["Quick Draw"] = "Молниеносный выстрел",
    ["Rain of Chaos"] = "Дождь Хаоса",
    ["Rake applies 1 additional stack of Bleed."] = "«Глубокая рана» накладывает 1 дополнительных эффект(а) «Кровотечение».",
    ["Ranger"] = "Стрелок",
    ["Rapture"] = "Восторг",
    ["Ravenholdt Initiate"] = "Посвящённый Равенхольдта",
    ["Razor Burn"] = "Жжение лезвий",
    ["Reactive Plating"] = "Отражающая броня",
    ["Reaper"] = "Жнец",
    ["Reduces the cooldown of Blade Flurry by 8%."] = "Время восстановления «Шквал клинков» сокращается на 8%.",
    ["Reduces the cooldown of Divine Shield by 15%. Can't be learned with Blessing of Sanctuary."] = "Время восстановления «Божественный щит» сокращается на 15%. Нельзя изучать вместе с «Благословение неприкосновенности».",
    ["Reduces the cooldown of Earth Shock by 25%."] = "Время восстановления «Земной шок» сокращается на 25%.",
    ["Reduces the cooldown of Entangling Roots by 20%."] = "Время восстановления «Цепкие корни» сокращается на 20%.",
    ["Reduces the cooldown of Evasion by 15%. Can't be learned with Cheat Death."] = "Время восстановления «Ускользание» сокращается на 15%. Нельзя изучать вместе с «Обман смерти».",
    ["Reduces the cooldown of Eviscerate by 8%."] = "Время восстановления «Потрошение» сокращается на 8%.",
    ["Reduces the cooldown of Exorcism by 15%. Can't be learned with Divine Favor."] = "Время восстановления «Экзорцизм» сокращается на 15%. Нельзя изучать вместе с «Божественное одобрение».",
    ["Reduces the cooldown of Exorcism by 20%."] = "Время восстановления «Экзорцизм» сокращается на 20%.",
    ["Reduces the cooldown of Hammer of Justice by 20%."] = "Время восстановления «Молот правосудия» сокращается на 20%.",
    ["Reduces the cooldown of Hammer of Justice by 8%."] = "Время восстановления «Молот правосудия» сокращается на 8%.",
    ["Reduces the cooldown of Holy Word: Chastise by 25%."] = "Время восстановления «Слово Света: Наказание» сокращается на 25%.",
    ["Reduces the cooldown of Hurricane by 15%. Can't be learned with Celestial Focus."] = "Время восстановления «Ураган» сокращается на 15%. Нельзя изучать вместе с «Небесная сосредоточенность».",
    ["Reduces the cooldown of Judgement by 8%."] = "Время восстановления «Правосудие» сокращается на 8%.",
    ["Reduces the cooldown of Killing Spree by 15%. Can't be learned with Dual Wield Specialization."] = "Время восстановления «Череда убийств» сокращается на 15%. Нельзя изучать вместе с «Специализация на двух оружиях».",
    ["Reduces the cooldown of Light's Hammer by 8%."] = "Время восстановления «Молот Света» сокращается на 8%.",
    ["Reduces the cooldown of Power Word: Shield by 8%."] = "Время восстановления «Слово силы: Щит» сокращается на 8%.",
    ["Reduces the cooldown of Rain of Fire by 15%. Can't be learned with Fire and Brimstone."] = "Время восстановления «Огненный дождь» сокращается на 15%. Нельзя изучать вместе с «Огонь и сера».",
    ["Reduces the cooldown of Shackle by 8%."] = "Время восстановления «Оковы» сокращается на 8%.",
    ["Reduces the cooldown of Shadow Bolt by 8%."] = "Время восстановления «Стрела Тьмы» сокращается на 8%.",
    ["Reduces the cooldown of Starfire by 8%."] = "Время восстановления «Звёздный огонь» сокращается на 8%.",
    ["Reduces the cooldown of Stormstrike by 20%."] = "Время восстановления «Удар бури» сокращается на 20%.",
    ["Reduces the cooldown of Swipe by 15%. Can't be learned with Sharpened Claws."] = "Время восстановления «Размах» сокращается на 15%. Нельзя изучать вместе с «Острые когти».",
    ["Reduces the cooldown of Tranquility by 8%."] = "Перезарядка «Спокойствие» сокращена на 8%.",
    ["Reflective Shield"] = "Отражающий щит",
    ["Regain 0.4% of your health every second."] = "Восстанавливает 0.4% здоровья ежесекундно.",
    ["Relentless"] = "Неумолимый",
    ["Renew"] = "Обновление",
    ["Renowned"] = "Прославленный",
    ["Repentance"] = "Покаяние",
    ["Restock"] = "Пополнение",
    ["Restoration spells deal 4% more damage."] = "Урон способностей ветки «Исцеление» увеличен на 4%.",
    ["Restoration spells deal 5% more damage."] = "Урон способностей ветки «Исцеление» увеличен на 5%.",
    ["Retribution Aura"] = "Аура воздаяния",
    ["Retribution Aura deals 8% more damage."] = "«Аура воздаяния» наносит на 8% больше урона.",
    ["Retribution spells deal 4% more damage."] = "Урон способностей ветки «Воздаяние» увеличен на 4%.",
    ["Retribution spells deal 5% more damage."] = "Урон способностей ветки «Воздаяние» увеличен на 5%.",
    ["Revenge"] = "Реванш",
    ["Revenge heals you for 0.5% of your maximum health."] = "«Реванш» восстанавливает 0.5% максимального здоровья.",
    ["Revenge slows normal enemies by 30% for 2 sec."] = "«Реванш» замедляет обычных врагов на 30% на 2 сек.",
    ["Revenge stuns normal enemies for 1 sec. Once per enemy every 6 sec. Can't be learned with Last Stand."] = "«Реванш» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек. Нельзя изучать вместе с «Ни шагу назад».",
    ["Rewritten Fate"] = "Переписанная судьба",
    ["Ricochet"] = "Рикошет",
    ["Riposte"] = "Рипост",
    ["Rolling Thunder"] = "Раскаты грома",
    ["Saber Slash"] = "Сабельный удар",
    ["Sacrifice"] = "Жертвоприношение",
    ["Sanctity Aura"] = "Аура святости",
    ["Scarlet Penitent"] = "Кающийся Алого ордена",
    ["Scholar"] = "Учёный",
    ["Scrapper"] = "Разборщик",
    ["Seal of Command deals 15% more damage. Can't be learned with Crusade."] = "«Печать повиновения» наносит на 15% больше урона. Нельзя изучать вместе с «Крестовый поход».",
    ["Seal of Justice"] = "Печать справедливости",
    ["Seal of Light"] = "Печать Света",
    ["Seal of Righteousness"] = "Печать праведности",
    ["Seal of Righteousness deals 10% more damage."] = "«Печать праведности» наносит на 10% больше урона.",
    ["Seal of Righteousness deals 5% more damage."] = "«Печать праведности» наносит на 5% больше урона.",
    ["Seal of the Crusader"] = "Печать крестоносца",
    ["Seal of the Templar"] = "Печать храмовника",
    ["Seal of Vengeance"] = "Печать возмездия",
    ["Sealed Glyphs"] = "Запечатанные символы",
    ["Searing Light"] = "Опаляющий Свет",
    ["Searing Totem applies 1 additional stack of Burning."] = "«Опаляющий тотем» накладывает 1 дополнительных эффект(а) «Горение».",
    ["Searing Totem deals 15% more damage."] = "«Опаляющий тотем» наносит на 15% больше урона.",
    ["Seasoned"] = "Бывалый",
    ["Seasoned Adventurer"] = "Бывалый искатель приключений",
    ["Seasoned Druid"] = "Бывалый друид",
    ["Seasoned Hunter"] = "Бывалый охотник",
    ["Seasoned Mage"] = "Бывалый маг",
    ["Seasoned Paladin"] = "Бывалый паладин",
    ["Seasoned Priest"] = "Бывалый жрец",
    ["Seasoned Rogue"] = "Бывалый разбойник",
    ["Seasoned Shaman"] = "Бывалый шаман",
    ["Seasoned Warlock"] = "Бывалый чернокнижник",
    ["Seasoned Warrior"] = "Бывалый воин",
    ["Second Chance"] = "Второй шанс",
    ["Second Dash"] = "Второй рывок",
    ["Second Life"] = "Вторая жизнь",
    ["Second Sight"] = "Второе зрение",
    ["Second Thoughts"] = "Второй шанс выбора",
    ["Seduction"] = "Соблазнение",
    ["Seed of Corruption"] = "Семя порчи",
    ["Seeing Red"] = "Вижу красное",
    ["Seer"] = "Провидец",
    ["Serpent Spread"] = "Распространение змеиного яда",
    ["Shackle"] = "Оковы",
    ["Shackle deals 20% more damage."] = "«Оковы» наносит на 20% больше урона.",
    ["Shadow Barrage"] = "Теневой залп",
    ["Shadow Blades"] = "Теневые клинки",
    ["Shadow Council"] = "Совет Теней",
    ["Shadow Dance"] = "Танец теней",
    ["Shadow Dance lasts 1 sec longer."] = "«Танец теней» действует на 1 сек. дольше.",
    ["Shadow of Ravenholdt"] = "Тень Равенхольдта",
    ["Shadow spells deal 4% more damage."] = "Урон способностей ветки «Тьма» увеличен на 4%.",
    ["Shadow spells deal 5% more damage."] = "Урон способностей ветки «Тьма» увеличен на 5%.",
    ["Shadow Terror"] = "Теневой ужас",
    ["Shadow Vulnerability"] = "Уязвимость к Тьме",
    ["Shadow Word: Pain applies 2 additional stacks of Decay."] = "«Слово Тьмы: Боль» накладывает 2 дополнительных эффект(а) «Разложение».",
    ["Shadowcaller"] = "Призыватель Тьмы",
    ["Shadowflame"] = "Пламя Тьмы",
    ["Shadowmonger"] = "Торговец Тьмой",
    ["Shadowstalker"] = "Теневой охотник",
    ["Shadowy Shuriken"] = "Теневой сюрикен",
    ["Shake the Heavens"] = "Сотрясение небес",
    ["Shapeshift"] = "Перевоплощение",
    ["Sharpshooter"] = "Меткий стрелок",
    ["Shatter"] = "Раскол",
    ["Shield of the Righteous"] = "Щит праведника",
    ["Shield Slam stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Мощный удар щитом» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек.",
    ["Shifting Surge"] = "Всплеск перевоплощения",
    ["Shimmer"] = "Мерцание",
    ["Shooting Stars"] = "Падающие звёзды",
    ["Shred applies 2 stacks of Bleed."] = "«Растерзание» накладывает 2 дополнительных эффект(а) «Кровотечение».",
    ["Shred strikes 1 additional enemy."] = "«Растерзание» поражает ещё 1 врагов.",
    ["Shred stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Растерзание» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек.",
    ["Shuriken Storm"] = "Буря сюрикенов",
    ["Shuriken Toss stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Бросок сюрикена» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек.",
    ["Sinister Strike deals 10% more damage."] = "«Коварный удар» наносит на 10% больше урона.",
    ["Sinister Strike stuns normal enemies for 1 sec. Once per enemy every 6 sec."] = "«Коварный удар» оглушает обычных врагов на 1 сек. Повтор на одной цели не чаще раза в 6 сек.",
    ["Slippery"] = "Неуловимый",
    ["Slow Poison"] = "Медленный яд",
    ["Smite strikes 1 additional enemy."] = "«Кара» поражает ещё 1 врагов.",
    ["Smitten"] = "Сражённый",
    ["Smoke Bomb"] = "Дымовая шашка",
    ["Soul Bound"] = "Скованный душами",
    ["Soul Harvester"] = "Жнец душ",
    ["Soul Reaper"] = "Жнец душ",
    ["Specialist"] = "Специалист",
    ["Spell Lock"] = "Запрет чар",
    ["Spell Slot"] = "Ячейка заклинания",
    ["Spellbreaker"] = "Разрушитель чар",
    ["Spiked Shield"] = "Шипастый щит",
    ["Spirit Forms"] = "Облики духов",
    ["Spirit Healer's Regular"] = "Постоянный клиент целителя душ",
    ["Spirit Pack"] = "Духовная стая",
    ["Spiritwalker"] = "Духовный странник",
    ["Squire"] = "Оруженосец",
    ["Stacked Deck"] = "Подстроенная колода",
    ["Stalker of the Wilds"] = "Охотник диких земель",
    ["Stampede"] = "Паническое бегство",
    ["Stand Your Ground"] = "Держать строй",
    ["Starburst"] = "Звёздный взрыв",
    ["Starcaller"] = "Призыватель звёзд",
    ["Starfire"] = "Звёздный огонь",
    ["Starfire strikes 2 additional enemies."] = "«Звёздный огонь» поражает ещё 2 врагов.",
    ["Static Shock"] = "Статический шок",
    ["Static Surge"] = "Всплеск статики",
    ["Steady Aim"] = "Твёрдая рука",
    ["Steel Cyclone"] = "Стальной циклон",
    ["Stitched Up"] = "Заштопанный",
    ["Stone Skin"] = "Каменная кожа",
    ["Stormcaller"] = "Призыватель бурь",
    ["Stormlord"] = "Повелитель бури",
    ["Stormstrike applies 1 additional stack of Nature Vulnerability."] = "«Удар бури» накладывает 1 дополнительных эффект(а) «Уязвимость к природе».",
    ["Stormstrike deals 15% more damage."] = "«Удар бури» наносит на 15% больше урона.",
    ["Strangling Vines"] = "Удушающие лозы",
    ["Subtlety spells deal 4% more damage."] = "Урон способностей ветки «Скрытность» увеличен на 4%.",
    ["Subtlety spells deal 5% more damage."] = "Урон способностей ветки «Скрытность» увеличен на 5%.",
    ["Succubus deals 15% more damage. Can't be learned with Improved Felhunter."] = "Суккуб наносит на 15% больше урона. Нельзя изучать вместе с «Улучшенный охотник Скверны».",
    ["Succubus deals 8% more damage."] = "«Суккуб» наносит на 8% больше урона.",
    ["Summon Elemental"] = "Призыв элементаля",
    ["Summon Infernal"] = "Призыв инфернала",
    ["Sunder Armor"] = "Раскол брони",
    ["Sunfire"] = "Солнечный огонь",
    ["Survival spells deal 4% more damage."] = "Урон способностей ветки «Выживание» увеличен на 4%.",
    ["Survival spells deal 5% more damage."] = "Урон способностей ветки «Выживание» увеличен на 5%.",
    ["Swarm"] = "Рой",
    ["Swarming"] = "Рой",
    ["Sweep"] = "Размашистый удар",
    ["Swift Justice"] = "Стремительное правосудие",
    ["Swiftness"] = "Стремительность",
    ["Swipe"] = "Размах",
    ["Symbols of Death"] = "Символы смерти",
    ["The Art of War"] = "Искусство войны",
    ["the Ashbringer"] = "Испепелитель",
    ["the Faithful"] = "Верный",
    ["the Lightsworn"] = "Присягнувший Свету",
    ["the Netherbound"] = "Связанный с Пустотой",
    ["the Relentless"] = "Неумолимый",
    ["the Swift"] = "Стремительный",
    ["the Unseen"] = "Незримый",
    ["the Veteran"] = "Ветеран",
    ["Thorns"] = "Шипы",
    ["Thrash"] = "Взбучка",
    ["Through the Ranks"] = "От рядового до героя",
    ["Ticket Collector"] = "Коллекционер билетов",
    ["Tiger's Fury"] = "Тигриное неистовство",
    ["Tinkerer"] = "Механик",
    ["Totem Carver"] = "Резчик тотемов",
    ["Totem of Wrath"] = "Тотем гнева",
    ["Toxic Blade"] = "Ядовитый клинок",
    ["Tracker"] = "Следопыт",
    ["Tranquility"] = "Спокойствие",
    ["Treasure Hunter"] = "Кладоискатель",
    ["Trick Shots"] = "Хитрые выстрелы",
    ["Trusted Adventurer"] = "Проверенный искатель приключений",
    ["Typhoon"] = "Тайфун",
    ["Undying"] = "Неумирающий",
    ["Unseen"] = "Незримый",
    ["Unstoppable"] = "Неудержимый",
    ["Untouchable"] = "Неуязвимый",
    ["Ursol's Vortex"] = "Вихрь Урсола",
    ["Valued Customer"] = "Ценный покупатель",
    ["Vampiric Touch"] = "Прикосновение вампира",
    ["Vanish"] = "Исчезновение",
    ["Venom Bolts"] = "Ядовитые стрелы",
    ["Venom Burst"] = "Взрыв яда",
    ["Venom Cloud"] = "Ядовитое облако",
    ["Venom Hunter"] = "Охотник с ядами",
    ["Venom Splash"] = "Ядовитые брызги",
    ["Veteran"] = "Ветеран",
    ["Voice of the Elements"] = "Голос стихий",
    ["Void Eruption"] = "Извержение Бездны",
    ["Void Slam"] = "Удар Бездны",
    ["Void Tendrils"] = "Щупальца Бездны",
    ["Voidcaller"] = "Призыватель Бездны",
    ["Volatile Trap"] = "Нестабильная ловушка",
    ["Wake of Ashes"] = "След пепла",
    ["Wake of Blades"] = "След из клинков",
    ["Warbringer"] = "Вестник войны",
    ["Warchief's Herald"] = "Глашатай вождя",
    ["Warlord"] = "Военачальник",
    ["Weaponmaster"] = "Мастер оружия",
    ["When Holy Word: Chastise kills an enemy, its cooldown resets. Can't be learned with Surge of Light."] = "Когда «Слово Света: Наказание» убивает врага, время восстановления сбрасывается. Нельзя изучать вместе с «Прилив Света».",
    ["When Lightning Bolt kills an enemy, its cooldown resets. Can't be learned with Improved Earth Shock."] = "Когда «Молния» убивает врага, время восстановления сбрасывается. Нельзя изучать вместе с «Улучшенный земной шок».",
    ["When Mortal Strike kills an enemy, its cooldown resets. Can't be learned with Blood Frenzy."] = "Когда «Смертельный удар» убивает врага, время восстановления сбрасывается. Нельзя изучать вместе с «Кровавое неистовство».",
    ["When Shadow Bolt kills an enemy, its cooldown resets."] = "Когда «Стрела Тьмы» убивает врага, время восстановления сбрасывается.",
    ["When Smite kills an enemy, its cooldown resets. Can't be learned with Improved Holy Word."] = "Когда «Кара» убивает врага, время восстановления сбрасывается. Нельзя изучать вместе с «Улучшенное слово Света».",
    ["When Stormstrike kills an enemy, its cooldown resets. Can't be learned with Shamanistic Rage."] = "Когда «Удар бури» убивает врага, время восстановления сбрасывается. Нельзя изучать вместе с «Ярость шамана».",
    ["Whirlwind"] = "Вихрь",
    ["Whirlwind slows normal enemies by 30% for 2 sec."] = "«Вихрь» замедляет обычных врагов на 30% на 2 сек.",
    ["Widening Calm"] = "Растущее спокойствие",
    ["Wilderness Walker"] = "Странник диких земель",
    ["Wildfire"] = "Дикий огонь",
    ["Wildheart"] = "Дикое сердце",
    ["Windfury Weapon slows normal enemies by 30% for 2 sec."] = "«Оружие неистовства ветра» замедляет обычных врагов на 30% на 2 сек.",
    ["Windwalker"] = "Странник ветров",
    ["Your Bleed deals 12% more damage."] = "Урон «Кровотечение» увеличен на 12%.",
    ["Your Burning deals 12% more damage."] = "Урон «Горение» увеличен на 12%.",
    ["Your Decay can critically strike for half the critical strike bonus."] = "Эффект «Разложение» может наносить критический урон с половиной обычного бонуса.",
    ["Your Decay lasts 2 sec longer."] = "«Разложение» действует на 2 сек. дольше.",
    ["Your Decay lasts 3 sec longer."] = "«Разложение» действует на 3 сек. дольше.",
    ["Your Moonfire deals 12% more damage."] = "Урон «Лунный огонь» увеличен на 12%.",
    ["Your Moonfire lasts 2 sec longer."] = "«Лунный огонь» действует на 2 сек. дольше.",
    ["Your Poison deals 10% more damage."] = "Урон «Яд» увеличен на 10%.",
}
for en, ru in pairs(v13ServerStrings) do if dict[en] == nil then dict[en] = ru end end

local FONT_PATHS = {
    kr = "Interface\\AddOns\\HordesOfAzeroth\\Fonts\\NotoSansKR-Regular.otf",
    sc = "Interface\\AddOns\\HordesOfAzeroth\\Fonts\\NotoSansSC-Regular.otf",
}
HordesRU_Options = HordesRU_Options or {}
if HordesRU_Options.fontMigration ~= "1.11" then
    HordesRU_Options.font = "kr"
    HordesRU_Options.fontMigration = "1.11"
end
local fontChoice = HordesRU_Options.font == "sc" and "sc" or "kr"
local ruFont = FONT_PATHS[fontChoice]
local cachedFont = setmetatable({}, { __mode = "k" })
local styledTalents = setmetatable({}, { __mode = "k" })
local TALENT_TITLE_SIZE = 10
local TALENT_BODY_SIZE = 9
local TOOLTIP_WRAP_CHARS = 37

-- A tooltip line is created before GameTooltip:Show(), so the style must be
-- established at AddLine time. Changing the font only after Show() caused the
-- measured line height/width to mismatch the rendered text in v0.6.
local function StyleTalentFont(region, first)
    if not region or type(region.GetFont) ~= "function" or type(region.SetFont) ~= "function" then return end
    local desired = first and TALENT_TITLE_SIZE or TALENT_BODY_SIZE
    local ok, path, size, flags = pcall(region.GetFont, region)
    if ok and path == ruFont and size == desired and flags == "" then return end
    local applied, loaded = pcall(region.SetFont, region, ruFont, desired, "")
    if not applied or not loaded then
        applied, loaded = pcall(region.SetFont, region, FONT_PATHS.sc, desired, "")
    end
    if applied and loaded then
        styledTalents[region] = true
        if region.SetShadowColor then pcall(region.SetShadowColor, region, 0, 0, 0, 0.70) end
        if region.SetShadowOffset then pcall(region.SetShadowOffset, region, 1, -1) end
    end
end

local function VisibleLength(value)
    local clean = string.gsub(value, "|c%x%x%x%x%x%x%x%x", "")
    clean = string.gsub(clean, "|r", "")
    -- UTF-8 Cyrillic: count code points rather than bytes.
    clean = string.gsub(clean, "[\128-\191]", "")
    return string.len(clean)
end

local function WrapTooltipText(value, maxChars)
    if VisibleLength(value) <= maxChars or string.find(value, "\n", 1, true) then return value end
    local out, length = {}, 0
    for word in string.gfind(value, "%S+") do
        local width = VisibleLength(word)
        if length > 0 and length + 1 + width > maxChars then
            table.insert(out, "\n" .. word)
            length = width
        else
            table.insert(out, (length > 0 and " " or "") .. word)
            length = length + (length > 0 and 1 or 0) + width
        end
    end
    return table.concat(out)
end

-- Translates predictable *displayed* numeric strings without touching game protocol fields.
-- Vanilla WoW 1.12 / Benilla Lua 5.0 has string.find, not string.match.
-- Return up to two captures from find, preserving the original patterns.
local function MatchCaptures(subject, pattern)
    local _, _, first, second = string.find(subject, pattern)
    return first, second
end

-- HordesRU 1.1: conservative grammar-based translations for variable-rank abilities.
-- Only full-string templates are accepted; never replace English fragments blindly.
local function HRName(en)
    return dict[en]
end
local function HREffect(en)
    return dict[en] or en
end
local HRRules
HRRules = function(s)
    if type(s) ~= "string" then return nil end
    local a,b,c,d,e
    _,_,a,b = string.find(s,"^%+([%d%.]+)%% ([%a ]+)%.?$")
    if a and b then
        local stats = { ["Area"]="к области действия",["Crit"]="к вероятности крита",["critical strike chance"]="к вероятности крита",["Haste"]="к скорости",["Power"]="к силе",["maximum health"]="к максимуму здоровья",["movement speed"]="к скорости передвижения",["dodge chance"]="к вероятности уклонения",["pickup range"]="к дальности подбора",["pet critical strike chance"]="к вероятности крита питомцев" }
        if stats[b] then return "+"..a.."% "..stats[b].."." end
    end
    _,_,a = string.find(s,"^%+([%d%.]+) Armor%.?$")
    if a then return "+"..a.." к броне." end
    _,_,a = string.find(s,"^Regain ([%d%.]+)%% of your health every second%.?$")
    if a then return "Восстанавливает "..a.."% здоровья каждую секунду." end
    _,_,a = string.find(s,"^Gain a Shield of ([%d%.]+)%% of your maximum health%.?$")
    if a then return "Создаёт щит в размере "..a.."% максимального здоровья." end
    _,_,a,b = string.find(s,"^([%w '-]+) spells deal ([%d%.]+)%% more damage%.?$")
    if a and b and HRName(a) then return "Урон заклинаний ветки «"..HRName(a).."» увеличен на "..b.."%." end
    _,_,a,b = string.find(s,"^([%w '%-:]+) deals ([%d%.]+)%% more damage%.?$")
    if a and b and HRName(a) then return "«"..HRName(a).."» наносит на "..b.."% больше урона." end
    _,_,a,b = string.find(s,"^Your ([%w '%-:]+) deals ([%d%.]+)%% more damage%.?$")
    if a and b and HRName(a) then return "Урон «"..HRName(a).."» увеличен на "..b.."%." end
    _,_,a,b = string.find(s,"^([%w '%-:]+) lasts ([%d%.]+) sec longer%.?$")
    if a and b and HRName(a) then return "«"..HRName(a).."» действует на "..b.." сек. дольше." end
    _,_,a,b = string.find(s,"^Your ([%w '%-:]+) lasts ([%d%.]+) sec longer%.?$")
    if a and b and HRName(a) then return "«"..HRName(a).."» действует на "..b.." сек. дольше." end
    _,_,a,b = string.find(s,"^([%w '%-:]+) recharges ([%d%.]+)%% faster%.?$")
    if a and b and HRName(a) then return "«"..HRName(a).."» перезаряжается на "..b.."% быстрее." end
    _,_,a,b = string.find(s,"^Reduces the cooldown of (.-) by ([%d%.]+)%%%.?$")
    if a and b and HRName(a) then return "Перезарядка «"..HRName(a).."» сокращена на "..b.."%." end
    _,_,a,b = string.find(s,"^Reduces the cooldown of (.-) by ([%d%.]+) sec%.?$")
    if a and b and HRName(a) then return "Перезарядка «"..HRName(a).."» сокращена на "..b.." сек." end
    _,_,a,b = string.find(s,"^Increases the radius of (.-) by ([%d%.]+) yards?%.?$")
    if a and b and HRName(a) then return "Радиус «"..HRName(a).."» увеличен на "..b.." ярд." end
    _,_,a,b = string.find(s,"^([%w '%-:]+) strikes ([%d%.]+) additional enemies?%.?$")
    if a and b and HRName(a) then return "«"..HRName(a).."» поражает ещё "..b.." врагов." end
    _,_,a,b = string.find(s,"^([%w '%-:]+) fires ([%d%.]+) additional (.-)%.?$")
    if a and b and HRName(a) then
        local suffix = { ["arrow"]="стрелу", ["arrows"]="стрелы",["missile"]="снаряд",["missiles"]="снаряда",["bolt"]="снаряд",["bolts"]="снаряда" }
        _,_,c=string.find(s,"^.- fires [%d%.]+ additional (.-)%.?$")
        if suffix[c] then return "«"..HRName(a).."» выпускает дополнительно "..b.." "..suffix[c].."." end
    end
    _,_,a,b,c = string.find(s,"^([%w '%-:]+) applies ([%d%.]+) additional stacks? of ([%w ]+)%.?$")
    if a and b and c and HRName(a) and HRName(c) then return "«"..HRName(a).."» накладывает ещё "..b.." эффект «"..HRName(c).."»." end
    _,_,a,b,c = string.find(s,"^([%w '%-:]+) applies ([%d%.]+) stacks? of ([%w ]+)%.?$")
    if a and b and c and HRName(a) and HRName(c) then return "«"..HRName(a).."» накладывает "..b.." эффект «"..HRName(c).."»." end
    _,_,a,b,c = string.find(s,"^([%w '%-:]+) slows normal enemies by ([%d%.]+)%% for ([%d%.]+) sec%.?$")
    if a and b and c and HRName(a) then return "«"..HRName(a).."» замедляет обычных врагов на "..b.."% на "..c.." сек." end
    _,_,a,b = string.find(s,"^([%w '%-:]+) stuns normal enemies for ([%d%.]+) sec%.?$")
    if a and b and HRName(a) then return "«"..HRName(a).."» оглушает обычных врагов на "..b.." сек." end
    _,_,a = string.find(s,"^Free%. (.-) is a starter spell%.?$")
    if a and HRName(a) then return "Бесплатно. «"..HRName(a).."» — начальное заклинание." end
    _,_,a = string.find(s,"^When (.-) kills an enemy, its cooldown resets%.?$")
    if a and HRName(a) then return "При убийстве врага перезарядка «"..HRName(a).."» сбрасывается." end
    _,_,a,b,c = string.find(s,"^([%w '%-:]+) deals ([%d%.]+)%% more damage per (.-) stack on the target%.?$")
    if a and b and HRName(a) and HRName(c) then return "«"..HRName(a).."» наносит на "..b.."% больше урона за эффект «"..HRName(c).."» на цели." end
    _,_,a,b = string.find(s,"^Each (.-) reduces the cooldown of (.-) by 1 sec%.?$")
    if a and b and HRName(a) and HRName(b) then return "Каждое «"..HRName(a).."» сокращает перезарядку «"..HRName(b).."» на 1 сек." end
    _,_,a = string.find(s,"^Your critical strikes deal ([%d%.]+)%% more damage%.?$")
    if a then return "Критические удары наносят на "..a.."% больше урона." end
    -- Compose exact multi-clause talent hints without changing the numeric meaning.
    _,_,a,b = string.find(s,"^(.-)%. Can't be learned with (.-)%.$")
    if a and b and HRName(b) then
        local first = dict[a.."."] or HRRules(a..".")
        if first then return first.."\nНельзя изучать вместе с «"..HRName(b).."»." end
    end
    _,_,a,b = string.find(s,"^(.-)%. Once per enemy every ([%d%.]+) sec%.$")
    if a and b then
        local first = dict[a.."."] or HRRules(a..".")
        if first then return first.." Повторно на одном враге — не чаще раза в "..b.." сек." end
    end
    return nil
end

-- v1.2: complete-sentence templates for canonical server mastery descriptions.
-- Exact grammar only: numbers and restrictions must never be guessed.
local function HR12Name(english)
    return dict[english]
end
local HR12Translate
HR12Translate = function(s, nested)
    if type(s) ~= "string" then return nil end
    local _,_,a,b,c,d
    if not nested then
        _,_,a,b=string.find(s, "^(.-)%. Can't be learned with (.-)%.$")
        if a and b then
            local first = dict[a.."."] or HRRules(a..".") or HR12Translate(a..".",true)
            if first and HR12Name(b) then return first .. "\nНельзя изучить вместе с «"..HR12Name(b).."»." end
        end
        _,_,a,b=string.find(s, "^(.-)%. Once per enemy every ([%d%.]+) sec%.$")
        if a and b then
            local first = dict[a.."."] or HRRules(a..".") or HR12Translate(a..".",true)
            if first then return first .. " Не чаще раза в "..b.." сек. на каждого врага." end
        end
        -- Combining conditions in both orders.
        _,_,a,b=string.find(s,"^(.-)%. Once every ([%d%.]+) sec%.$")
        if a and b then
            local first = dict[a.."."] or HRRules(a..".") or HR12Translate(a..".",true)
            if first then return first .. " Не чаще раза в "..b.." сек." end
        end
    end
    _,_,a,b=string.find(s,"^Increases the radius of (.-) by ([%d%.]+) yards?%.$")
    if a and HR12Name(a) then return "Радиус «"..HR12Name(a).."» увеличен на "..b.." ярд." end
    _,_,a,b=string.find(s,"^Increases the radius of (.-) by ([%d%.]+)%%%.$")
    if a and HR12Name(a) then return "Радиус «"..HR12Name(a).."» увеличен на "..b.."%." end
    _,_,a,b=string.find(s,"^Reduces the cooldown of (.-) by ([%d%.]+)%%%.$")
    if a and HR12Name(a) then return "Перезарядка «"..HR12Name(a).."» сокращена на "..b.."%." end
    _,_,a,b=string.find(s,"^Reduces the cooldown of (.-) by ([%d%.]+) sec%.$")
    if a and HR12Name(a) then return "Перезарядка «"..HR12Name(a).."» сокращена на "..b.." сек." end
    _,_,a,b,c=string.find(s,"^(.-) slows normal enemies by ([%d%.]+)%% for ([%d%.]+) sec%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» замедляет обычных врагов на "..b.."% на "..c.." сек." end
    _,_,a,b=string.find(s,"^(.-) slows normal enemies on it by ([%d%.]+)%%%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» замедляет обычных врагов внутри на "..b.."%." end
    _,_,a,b=string.find(s,"^(.-) slows by ([%d%.]+)%% more%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» замедляет на "..b.."% сильнее." end
    _,_,a,b=string.find(s,"^(.-) heals you for ([%d%.]+)%% of your maximum health%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» восстанавливает "..b.."% максимального здоровья." end
    _,_,a,b,c=string.find(s,"^(.-) stuns normal enemies for ([%d%.]+) sec%. Once per enemy every ([%d%.]+) sec%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» оглушает обычных врагов на "..b.." сек. Не чаще раза в "..c.." сек. на цель." end
    _,_,a,b=string.find(s,"^(.-) stuns normal enemies for ([%d%.]+) sec%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» оглушает обычных врагов на "..b.." сек." end
    _,_,a,b=string.find(s,"^(.-) strikes ([%d%.]+) additional enemies%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» поражает ещё "..b.." врагов." end
    _,_,a,b=string.find(s,"^(.-) strikes ([%d%.]+) additional enemy%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» поражает ещё "..b.." врага." end
    _,_,a,b=string.find(s,"^(.-) strikes ([%d%.]+) additional enemies,.*$")
    if a and HR12Name(a) then return nil end -- do not drop extra clauses
    _,_,a,b=string.find(s,"^(.-) deals ([%d%.]+)%% more damage%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» наносит на "..b.."% больше урона." end
    _,_,a,b=string.find(s,"^Your (.-) deals ([%d%.]+)%% more damage%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» наносит на "..b.."% больше урона." end
    _,_,a,b=string.find(s,"^Your (.-) lasts ([%d%.]+) sec longer%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» действует на "..b.." сек. дольше." end
    _,_,a,b=string.find(s,"^(.-) lasts ([%d%.]+) sec longer%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» действует на "..b.." сек. дольше." end
    _,_,a,b=string.find(s,"^(.-) recharges ([%d%.]+)%% faster%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» перезаряжается на "..b.."% быстрее." end
    _,_,a,b,c=string.find(s,"^(.-) applies ([%d%.]+) additional stacks? of (.-)%.$")
    if a and HR12Name(a) and HR12Name(c) then return "«"..HR12Name(a).."» накладывает ещё "..b.." заряд(а) эффекта «"..HR12Name(c).."»." end
    _,_,a,b,c=string.find(s,"^(.-) applies ([%d%.]+) stacks? of (.-)%.$")
    if a and HR12Name(a) and HR12Name(c) then return "«"..HR12Name(a).."» накладывает "..b.." заряд(а) эффекта «"..HR12Name(c).."»." end
    _,_,a,b=string.find(s,"^(.-) fires ([%d%.]+) additional missile%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» выпускает ещё "..b.." снаряд." end
    _,_,a,b=string.find(s,"^(.-) fires ([%d%.]+) additional arrow%.$")
    if a and HR12Name(a) then return "«"..HR12Name(a).."» выпускает ещё "..b.." стрелу." end
    _,_,a,b=string.find(s,"^When (.-) kills an enemy, its cooldown resets%.$")
    if a and HR12Name(a) then return "Когда «"..HR12Name(a).."» убивает врага, перезарядка сбрасывается." end
    _,_,a,b=string.find(s,"^Each (.-) reduces the cooldown of (.-) by 1 sec%.$")
    if a and HR12Name(a) and HR12Name(b) then return "Каждое применение «"..HR12Name(a).."» сокращает перезарядку «"..HR12Name(b).."» на 1 сек." end
    _,_,a,b=string.find(s,"^(.-) spells deal ([%d%.]+)%% more damage%.$")
    if a and HR12Name(a) then return "Способности ветки «"..HR12Name(a).."» наносят на "..b.."% больше урона." end
    _,_,a=string.find(s,"^Free%. (.-) is a starter spell%.$")
    if a and HR12Name(a) then return "Бесплатно. «"..HR12Name(a).."» — начальное заклинание." end
    _,_,a,b=string.find(s,"^%+([%d%.]+)%% ([%w ]+)%.$")
    if a then
        local stats={ ["Area"]="области действия",["Power"]="силе",["Haste"]="скорости",["maximum health"]="максимальному здоровью",["movement speed"]="скорости передвижения",["critical strike chance"]="шансу критического удара",["dodge chance"]="шансу уклонения",["pickup range"]="радиусу подбора",["pet critical strike chance"]="шансу крита питомцев" }
        if stats[b] then return "+"..a.."% к "..stats[b].."." end
    end
    _,_,a=string.find(s,"^%+([%d%.]+) Armor%.$")
    if a then return "+"..a.." к броне." end
    _,_,a=string.find(s,"^Regain ([%d%.]+)%% of your health every second%.$")
    if a then return "Восстанавливает "..a.."% здоровья ежесекундно." end
    _,_,a=string.find(s,"^Gain a Shield of ([%d%.]+)%% of your maximum health%.$")
    if a then return "Создаёт щит на "..a.."% максимального здоровья." end
    return nil
end

local function TranslateDisplay(text)
    if dict[text] then return dict[text] end
    -- Hordes glossary adds WoW color markup around term names: the underlying
    -- keyword description must be translated separately, without dropping colors.
    if string.find(text, "|c", 1, true) or string.find(text, "|r", 1, true) then
        local _, _, color, name, description = string.find(text, "^|c(%x%x%x%x%x%x%x%x)(.-):|r%s*(.+)$")
        if name and description then
            local translatedDescription = dict[description]
            if not translatedDescription then
                local collapsed = string.gsub(description, "^%s+", "")
                collapsed = string.gsub(collapsed, "%s+$", "")
                translatedDescription = dict[collapsed]
            end
            if translatedDescription then
                return "|c" .. color .. (dict[name] or name) .. ":|r " .. translatedDescription
            end
        end
        local plain = string.gsub(text, "|c%x%x%x%x%x%x%x%x", "")
        plain = string.gsub(plain, "|r", "")
        if dict[plain] then return dict[plain] end
    end
    local byRule = HRRules(text)
    if byRule then return byRule end
    local byRule12 = HR12Translate(text)
    if byRule12 then return byRule12 end
    -- Server passives are rendered with a number replacing the {10} database token.
    local burned = MatchCaptures(text, "^%+([%d%.]+)%% Burning damage%.?$")
    if burned then return "+" .. burned .. "% к урону от горения." end
    local bled = MatchCaptures(text, "^%+([%d%.]+)%% Bleed damage%.?$")
    if bled then return "+" .. bled .. "% к урону от кровотечения." end
    local firedamage = MatchCaptures(text, "^%+([%d%.]+)%% Burning damage%.?$")
    if firedamage then return "+" .. firedamage .. "% к урону горения." end
    local ban, chance = MatchCaptures(text, "^Chests have an? ([%d%.]+)%% chance to cost nothing%.?$")
    if ban then return "Сундук бесплатный с шансом " .. ban .. "%." end
    local seconds, hp = MatchCaptures(text, "^After ([%d%.]+) sec without being hit, regain ([%d%.]+)%% of your health every second%.?$")
    if seconds then return "После " .. seconds .. " сек. без урона: +" .. hp .. "% здоровья/сек." end
    -- Variant format when a spell's new evolution is delivered as a separate sentence.
    local evoA, evoB = MatchCaptures(text, "^Can evolve into (.-) or (.-) through a Legendary rank, offered at rank 10 or higher%.?$")
    if evoA and evoB then
        return "С 10-го ранга доступна легендарная эволюция: «" .. (dict[evoA] or evoA) .. "» или «" .. (dict[evoB] or evoB) .. "»."
    end
    local freeName = MatchCaptures(text, "^Free%. (.-) is a starter spell%.?$")
    if freeName then return "Бесплатно. «" .. (dict[freeName] or freeName) .. "» — начальное заклинание." end
    local initialName = MatchCaptures(text, "^(.-) is a starter spell%.?$")
    if initialName then return "«" .. (dict[initialName] or initialName) .. "» — начальное заклинание." end
    local spell, pct = MatchCaptures(text, "^(.-) deals ([%d%.]+)%% more damage%.?$")
    if spell and dict[spell] then return "Урон «" .. dict[spell] .. "» увеличен на " .. pct .. "%." end
    local rad = MatchCaptures(text, "^([%d%.]+) yd radius$")
    if rad then return "Радиус " .. rad .. " ярдов" end
    local yard = MatchCaptures(text, "^([%d%.]+) yards? range$")
    if yard then return "Дальность " .. yard .. " ярдов" end
    -- Server descriptions for evolving spell ranks vary between builds.
    local shots = MatchCaptures(text, "^Summons an Imp that hurls ([%d]+) Firebolts at enemies within 30 yards, leaving them burning%.?$")
    if shots then return "Призывает беса, бросающего " .. shots .. " огненные стрелы по врагам в радиусе 30 ярдов. Накладывает горение." end
    -- Typical server-provided mastery effects, including later ranks (10% -> 20%).
    local value = MatchCaptures(text, "^%+([%d%.]+)%% pickup range%.?$")
    if value then return "+" .. value .. "% к радиусу подбора." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% maximum health%.?$")
    if value then return "+" .. value .. "% к максимальному здоровью." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% critical strike chance%.?$")
    if value then return "+" .. value .. "% к шансу критического удара." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% critical strike chance against Marked enemies%.?$")
    if value then return "+" .. value .. "% к шансу критического удара по помеченным врагам." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% dodge chance%.?$")
    if value then return "+" .. value .. "% к вероятности уклонения." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% Haste%.?$")
    if value then return "+" .. value .. "% к скорости." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% Power%.?$")
    if value then return "+" .. value .. "% к силе." end
    value = MatchCaptures(text, "^%+([%d%.]+) Armor%.?$")
    if value then return "+" .. value .. " к броне." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% movement speed%.?$")
    if value then return "+" .. value .. "% к скорости передвижения." end
    value = MatchCaptures(text, "^%+([%d%.]+)%% pet critical strike chance%.?$")
    if value then return "+" .. value .. "% к шансу критического удара питомцев." end
    local spec, pct = MatchCaptures(text, "^(.-) spells deal ([%d%.]+)%% more damage%.?$")
    if spec and dict[spec] then return "Урон способностей ветки «" .. dict[spec] .. "» увеличен на " .. pct .. "%." end
    local _, _, a, b = string.find(text, "^Rank (%d+)/(%d+)$")
    if a then return "Ранг " .. a .. "/" .. b end
    local _, _, points = string.find(text, "^(%d+) points to unlock$")
    if points then return points .. " очков для открытия" end
    local _, _, remaining = string.find(text, "^(%d+) points$")
    if remaining then return remaining .. " очков" end
    local _, _, points2 = string.find(text, "^(%d+) Talent Points$")
    if points2 then return points2 .. " очков талантов" end
    local _, _, required, talent = string.find(text, "^Requires (%d+) points in (.+)%.$")
    if required then return "Нужно " .. required .. " очк. («" .. (dict[talent] or talent) .. "»)." end
    local _, _, level, maximum = string.find(text, "^Mastery (%d+)/(%d+)$")
    if level then return "Мастерство " .. level .. "/" .. maximum end
    -- Mixed headers: "Mastery 0/30 (10/50)  0 Talent Points".
    local changed = string.gsub(text, "^Mastery ", "Мастерство ")
    changed = string.gsub(changed, "(%d+) Talent Points", "%1 очков талантов")
    changed = string.gsub(changed, "(%d+) points to unlock", "%1 очков для открытия")
    if changed ~= text then return changed end
    if string.find(text, "\n", 1, true) then
        local out, changed = {}, false
        local start, pos = 1, 1
        while true do
            local first, last = string.find(text, "\n", start, true)
            if not first then
                local part = string.sub(text, start)
                local ru = dict[part]
                if ru then changed = true end
                table.insert(out, ru or part)
                break
            end
            local part = string.sub(text, start, first-1)
            local ru = dict[part]
            if ru then changed = true end
            table.insert(out, ru or part)
            start=last+1
        end
        if changed then return table.concat(out, "\n") end
    end
    -- Unknown strings are left intact rather than translated approximately.
    -- Never translate unknown UI strings with broad word substitutions:
    -- they may contain server protocol identifiers, player names or WoW tags.
end

-- Expose the core dictionary to the final runtime guard. All changes are UI-only.
HordesRU_TranslateDisplay = function(value)
    if type(value) ~= "string" then return value end
    return TranslateDisplay(value) or value
end

-- Missing original Hordes text is collected locally for precise follow-up translation.
HordesRU_Untranslated = HordesRU_Untranslated or {}
local unknownCount = 0
for _ in pairs(HordesRU_Untranslated) do unknownCount = unknownCount + 1 end
local function RememberMissing(text)
    if unknownCount >= 2000 or type(text) ~= "string" or string.len(text) > 450 then return end
    if not string.find(text,"[A-Za-z]") then return end
    if string.find(text,"<html",1,true) then return end
    if HordesRU_Untranslated[text] then return end
    HordesRU_Untranslated[text] = 1
    unknownCount = unknownCount + 1
end

local fontChecked = setmetatable({}, { __mode = "k" })
local function IsHordesWidget(widget)
    local node, tries = widget, 0
    while node and tries < 15 do
        if type(node.GetName) == "function" then
            local ok, name = pcall(node.GetName, node)
            if ok and type(name) == "string" and string.find(name, "VanillaBonk", 1, true) then return true end
        end
        if type(node.GetParent) ~= "function" then break end
        local ok, parent = pcall(node.GetParent, node)
        if not ok or parent == node then break end
        node, tries = parent, tries + 1
    end
    return false
end
local function StyleHordesText(widget)
    if not widget or fontChecked[widget] == ruFont then return end
    if not IsHordesWidget(widget) then return end
    if type(widget.GetFont) ~= "function" or type(widget.SetFont) ~= "function" then return end
    local ok, old, size = pcall(widget.GetFont, widget)
    if not ok or not size or size <= 0 then return end
    -- Reward cards have already been sized by Hordes; do not inflate font sizes.
    local wanted = size
    if type(widget.GetWidth) == "function" then
        local okW, width = pcall(widget.GetWidth, widget)
        if okW and width and width > 0 and width < 110 then wanted = math.min(size, 10) end
    end
    if old ~= ruFont or size ~= wanted then
        local success, loaded = pcall(widget.SetFont, widget, ruFont, wanted, "")
        if not success or not loaded then return end
    end
    fontChecked[widget] = ruFont
end

local function TranslateOne(widget)
    if not widget or type(widget.GetText) ~= "function" or type(widget.SetText) ~= "function" then
        return
    end
    local ok, current = pcall(widget.GetText, widget)
    if not ok or type(current) ~= "string" then return end
    StyleHordesText(widget)
    local translated = TranslateDisplay(current)
    if not translated or translated == current then
        if IsHordesWidget(widget) then RememberMissing(current) end
        return
    end
    if not cachedFont[widget] and type(widget.GetFont) == "function" and type(widget.SetFont) == "function" then
        local got, original, size, flags = pcall(widget.GetFont, widget)
        if got and size and size > 0 then
            -- Hordes already ships this Unicode-capable font; nothing is bundled.
            local callOK, fontOK = pcall(widget.SetFont, widget, ruFont, size, "")
            if not callOK or not fontOK then
                callOK, fontOK = pcall(widget.SetFont, widget, FONT_PATHS.sc, size, "")
            end
            cachedFont[widget] = callOK and fontOK ~= nil
        end
    end
    pcall(widget.SetText, widget, translated)
    -- Card names in the Darkmoon Deck have only 80px; use compact font sizes
    -- on that frame rather than globally shrinking every HUD label.
    if type(widget.GetParent) == "function" and type(widget.SetFont) == "function" then
        local root = widget
        local isDeck = false
        local depth = 0
        while root and depth < 12 do
            if type(root.GetName) == "function" and root:GetName() == "VanillaBonkDeckFrame" then
                isDeck = true; break
            end
            if type(root.GetParent) ~= "function" then break end
            root = root:GetParent()
            depth = depth + 1
        end
        if isDeck and type(widget.GetWidth) == "function" then
            local width = widget:GetWidth() or 0
            if width > 0 and width <= 120 then
                local size = VisibleLength(translated) > 19 and 8 or 9
                pcall(widget.SetFont, widget, ruFont, size, "")
            end
        end
    end
end

local function Scan(object, depth, seen)
    if not object or depth > 24 or seen[object] then return end
    seen[object] = true
    -- Hidden menus are translated when opened; no CPU wasted on invisible trees.
    if type(object.IsShown) == "function" then
        local success, visible = pcall(object.IsShown, object)
        if success and not visible then return end
    end
    TranslateOne(object)
    if type(object.GetRegions) == "function" then
        local children = {object:GetRegions()}
        local i
        for i = 1, table.getn(children) do
            TranslateOne(children[i])
        end
    end
    if type(object.GetChildren) == "function" then
        local children = {object:GetChildren()}
        local i
        for i = 1, table.getn(children) do
            Scan(children[i], depth + 1, seen)
        end
    end
end

-- Hook the actual Hordes of Azeroth reward card layout, not the on-screen
-- HTML result: card.description:SetText() receives formatted HTML, not English.
-- Translate a shallow COPY so offer data / network IDs remain original.
local offerHookInstalled = false
local function InstallOfferHook()
    if offerHookInstalled then return end
    local frame = getglobal and getglobal("VanillaBonkOffer")
    if not frame or type(frame.FitCard) ~= "function" then return end
    offerHookInstalled = true
    local oldFitCard = frame.FitCard
    frame.FitCard = function(card, option, width, hasLock)
        if not card or not option then return oldFitCard(card, option, width, hasLock) end
        local english = type(option.description) == "string" and option.description or ""
        local russian = TranslateDisplay(english)
        local translatedOption = option
        if russian and russian ~= english then
            translatedOption = {}
            for key, value in pairs(option) do translatedOption[key] = value end
            translatedOption.description = russian
        end
        -- Original FitCard makes the HTML and calculates text room. This wrapper
        -- preserves its dynamic sizing and updates both measure and rendered fonts.
        local result = oldFitCard(card, translatedOption, width, hasLock)
        if card.name and card.name.SetFont then pcall(card.name.SetFont, card.name, ruFont, 14, "") end
        if card.level and card.level.SetFont then pcall(card.level.SetFont, card.level, ruFont, 10, "") end
        if card.name and type(option.name) == "string" then
            local title = TranslateDisplay(option.name)
            if title and title ~= option.name then
                if card.name.SetFont then pcall(card.name.SetFont, card.name, ruFont, 14, "") end
                card.name:SetText(title)
            end
        end
        if card.level then TranslateOne(card.level) end
        if card.damage then
            if card.damage.label then TranslateOne(card.damage.label) end
            if card.damage.before then TranslateOne(card.damage.before) end
        end
        -- SimpleHTML uses a separate paragraph font; keep its glyph metrics in
        -- sync with the hidden measurement FontString to prevent clipping.
        if translatedOption ~= option and card.measure and card.description then
            local room = card.description.GetHeight and card.description:GetHeight() or 0
            local size = 10
            while size >= 9 do
                local ok = pcall(card.measure.SetFont, card.measure, ruFont, size, "")
                if not ok then break end
                local needed = card.measure.GetHeight and card.measure:GetHeight() or 0
                if room == 0 or needed <= room or size == 9 then break end
                size = size - 1
            end
            pcall(card.description.SetFont, card.description, "P", ruFont, size, "")
            local needed = card.measure.GetHeight and card.measure:GetHeight() or 0
            if room > 0 and needed > room then
                card.overflow = math.max(card.overflow or 0, needed - room)
            end
        end
        if card.stats then
            for _, block in ipairs(card.stats) do
                if block.label then TranslateOne(block.label) end
            end
        end
        return result
    end
end

local deckHookInstalled = false
local function InstallDeckHook()
    if deckHookInstalled then return end
    local deck = VanillaBonkDeck
    if not deck or type(deck.Refresh) ~= "function" then return end
    deckHookInstalled = true
    local oldRefresh = deck.Refresh
    deck.Refresh = function(received)
        local result = oldRefresh(received)
        local frame = getglobal and getglobal("VanillaBonkDeckFrame")
        if frame then Scan(frame, 0, {}) end
        return result
    end
end

local function Apply()
    InstallOfferHook()
    InstallDeckHook()
    local seen = {}
    if UIParent then Scan(UIParent, 0, seen) end
    if WorldFrame then Scan(WorldFrame, 0, seen) end
    if GameTooltip then Scan(GameTooltip, 0, seen) end
    if ItemRefTooltip then Scan(ItemRefTooltip, 0, seen) end
    -- The same FontStrings are reused for new talent tooltips. Keep their
    -- font compact without overriding existing colored lines or game tooltips.
    if GameTooltip and GameTooltip.IsShown and GameTooltip:IsShown() and GameTooltip.GetOwner then
        local owner = GameTooltip:GetOwner()
        if owner and (owner.node or owner.pair) then
            local regions = { GameTooltip:GetRegions() }
            local title = getglobal and getglobal("GameTooltipTextLeft1")
            local i
            for i = 1, table.getn(regions) do
                local region = regions[i]
                if region and region.GetText then
                    StyleTalentFont(region, region == title)
                end
            end
        end
    end
end


local function IsHordesOwner(owner)
    if not owner then return false end
    if owner.node or owner.pair then return true end
    local root = owner
    local depth = 0
    while root and depth < 14 do
        if type(root.GetName) == "function" then
            local name = root:GetName()
            if type(name) == "string" and string.find(name, "VanillaBonk", 1, true) then
                return true
            end
        end
        if type(root.GetParent) ~= "function" then return false end
        root = root:GetParent()
        depth = depth + 1
    end
    return false
end

-- Translate while adding lines, before the game measures width/height.
-- Long translations are wrapped explicitly: v0.6 altered fonts AFTER layout,
-- which made lower lines overlap or extend beyond the talent tooltip frame.
if GameTooltip and GameTooltip.AddLine and not HordesRU_TooltipHook then
    HordesRU_TooltipHook = true
    local originalAddLine = GameTooltip.AddLine
    GameTooltip.AddLine = function(self, text, red, green, blue, wrap)
        local owner = self.GetOwner and self:GetOwner()
        if IsHordesOwner(owner) and type(text) == "string" then
            local translated = TranslateDisplay(text)
            if translated then text = translated else RememberMissing(text) end
            if VisibleLength(text) > TOOLTIP_WRAP_CHARS then
                text = WrapTooltipText(text, TOOLTIP_WRAP_CHARS)
                wrap = 1
            end
            local result = originalAddLine(self, text, red, green, blue, wrap)
            local number = self.NumLines and self:NumLines()
            if number and getglobal then
                StyleTalentFont(getglobal("GameTooltipTextLeft" .. number), number == 1)
                StyleTalentFont(getglobal("GameTooltipTextRight" .. number), false)
            end
            return result
        end
        return originalAddLine(self, text, red, green, blue, wrap)
    end
end

-- Recalculate displayed tooltip geometry AFTER translated FontStrings have
-- acquired their final glyph metrics. We restrict this to Hordes-only tips.
if GameTooltip and GameTooltip.Show and not HordesRU_ShowHook then
    HordesRU_ShowHook = true
    local baseShow = GameTooltip.Show
    GameTooltip.Show = function(self)
        local result = baseShow(self)
        if IsHordesOwner(self.GetOwner and self:GetOwner()) and self.NumLines then
            local n = self:NumLines() or 0
            local total = 17
            local i
            for i = 1, n do
                local left = getglobal and getglobal("GameTooltipTextLeft" .. i)
                if left and left.IsShown and left:IsShown() then
                    local h = left.GetHeight and left:GetHeight() or 13
                    total = total + math.max(12, h) + 3
                end
            end
            -- The stock tooltip has already laid itself out, so don't shrink it:
            -- only increase height when a translated multi-line hint needs room.
            if self.GetHeight and self.SetHeight and total > self:GetHeight() then
                self:SetHeight(total)
            end
        end
        return result
    end
end

local runner = CreateFrame("Frame", "HordesRUController")
local nextUpdate = 0
local announced = false
local function Announce()
    if not announced and DEFAULT_CHAT_FRAME then
        announced = true
        DEFAULT_CHAT_FRAME:AddMessage("|cff55ff99[HordesRU]|r v1.21: русификатор загружен (шрифт KR)")
    end
end
runner:RegisterEvent("PLAYER_LOGIN")
runner:RegisterEvent("PLAYER_ENTERING_WORLD")
runner:SetScript("OnEvent", function()
    Announce()
    Apply()
end)
runner:SetScript("OnUpdate", function()
    local now = GetTime()
    if now < nextUpdate then return end
    nextUpdate = now + ((GameTooltip and GameTooltip:IsShown()) and 0.20 or 0.85)
    Announce()
    Apply()
end)

SLASH_HORDESRU1 = "/hru"
SlashCmdList["HORDESRU"] = function(message)
    if message == "font sc" or message == "font kr" then
        local choice = string.sub(message, 6, 7)
        fontChoice = choice
        HordesRU_Options.font = choice
        ruFont = FONT_PATHS[choice]
        cachedFont = setmetatable({}, { __mode = "k" })
        styledTalents = setmetatable({}, { __mode = "k" })
        if DEFAULT_CHAT_FRAME then
            DEFAULT_CHAT_FRAME:AddMessage("|cff55ff99[HordesRU]|r Font: " .. choice .. " (reload UI to refresh all existing labels)")
        end
    else
        Announce()
        Apply()
        if DEFAULT_CHAT_FRAME then
            DEFAULT_CHAT_FRAME:AddMessage("|cff55ff99[HordesRU]|r scan complete. Font: " .. fontChoice .. "; untranslated visible: " .. unknownCount)
        end
    end
end


-- HordesRU v1.5 server talent data hook.
-- In Hordes 0.6.x the server fills each talent's f[14] name and f[15] description,
-- then invokes VanillaBonkTalents.ParseNode before the tooltip renders.
HordesRU_LiveMissing = HordesRU_LiveMissing or {}
local function HordesRU_V15Translate(text)
    if type(text) ~= "string" then return text end
    if text == "Imp hurls 1 additional Firebolt in each volley." then
        return "Бес выпускает на одну огненную стрелу больше за каждый залп."
    end
    if text == "Each different demon you command gives you +3% Power." then
        return "Каждый вид призванного демона даёт +3% к силе."
    end
    local _, _, amount = string.find(text, "^Each different demon you command gives you %+([%d%.]+)%% Power%.?$")
    if amount then return "Каждый вид призванного демона даёт +" .. amount .. "% к силе." end
    return TranslateDisplay(text) or text
end
local function HordesRU_V15LocalizeNode(node)
    if type(node) ~= "table" then return end
    local key = tostring(node.id or "?")
    if type(node.name) == "string" then
        local en = node._HordesRU_EnglishName or node.name
        node._HordesRU_EnglishName = en
        local ru = HordesRU_V15Translate(en)
        if ru ~= en then node.name = ru
        else HordesRU_LiveMissing["talent-name:" .. key] = en end
    end
    if type(node.description) == "string" then
        local en = node._HordesRU_EnglishDescription or node.description
        node._HordesRU_EnglishDescription = en
        local ru = HordesRU_V15Translate(en)
        if ru ~= en then node.description = ru
        else HordesRU_LiveMissing["talent-description:" .. key] = en end
    end
end
if type(VanillaBonkTalents) == "table" and type(VanillaBonkTalents.ParseNode) == "function"
    and not HordesRU_V15NodeHooked then
    HordesRU_V15NodeHooked = true
    local baseParse = VanillaBonkTalents.ParseNode
    VanillaBonkTalents.ParseNode = function(node, fields)
        local result = baseParse(node, fields)
        HordesRU_V15LocalizeNode(node)
        return result
    end
    if type(VanillaBonkTalents.Show) == "function" then
        local baseShow = VanillaBonkTalents.Show
        VanillaBonkTalents.Show = function(shop, data, top)
            if type(data) == "table" and type(data.nodes) == "table" then
                for _, node in pairs(data.nodes) do HordesRU_V15LocalizeNode(node) end
            end
            return baseShow(shop, data, top)
        end
    end
end
