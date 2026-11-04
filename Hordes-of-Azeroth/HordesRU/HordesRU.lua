-- HordesRU v0.6 (post-load, safe addon for Hordes of Azeroth 0.6.x)
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

local ruFont = "Interface\\AddOns\\HordesOfAzeroth\\Fonts\\NotoSansSC-Regular.otf"
local cachedFont = setmetatable({}, { __mode = "k" })
local styledTalents = setmetatable({}, { __mode = "k" })


-- Translates predictable *displayed* numeric strings without touching game protocol fields.
-- Vanilla WoW 1.12 / Benilla Lua 5.0 has string.find, not string.match.
-- Return up to two captures from find, preserving the original patterns.
local function MatchCaptures(subject, pattern)
    local _, _, first, second = string.find(subject, pattern)
    return first, second
end

local function TranslateDisplay(text)
    if dict[text] then return dict[text] end
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
    if required then return "Требуется " .. required .. " очков в ветке «" .. (dict[talent] or talent) .. "»." end
    local _, _, level, maximum = string.find(text, "^Mastery (%d+)/(%d+)$")
    if level then return "Мастерство " .. level .. "/" .. maximum end
    -- Mixed headers: "Mastery 0/30 (10/50)  0 Talent Points".
    local changed = string.gsub(text, "^Mastery ", "Мастерство ")
    changed = string.gsub(changed, "(%d+) Talent Points", "%1 очков талантов")
    changed = string.gsub(changed, "(%d+) points to unlock", "%1 очков для открытия")
    if changed ~= text then return changed end
    -- Never translate unknown UI strings with broad word substitutions:
    -- they may contain server protocol identifiers, player names or WoW tags.
end

local function TranslateOne(widget)
    if not widget or type(widget.GetText) ~= "function" or type(widget.SetText) ~= "function" then
        return
    end
    local ok, current = pcall(widget.GetText, widget)
    if not ok or type(current) ~= "string" then return end
    local translated = TranslateDisplay(current)
    if not translated or translated == current then return end
    if not cachedFont[widget] and type(widget.GetFont) == "function" and type(widget.SetFont) == "function" then
        local got, original, size, flags = pcall(widget.GetFont, widget)
        if got and size and size > 0 then
            -- Hordes already ships this Unicode-capable font; nothing is bundled.
            local callOK, fontOK = pcall(widget.SetFont, widget, ruFont, size, "")
            cachedFont[widget] = callOK and fontOK ~= nil
        end
    end
    pcall(widget.SetText, widget, translated)
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

local function Apply()
    local seen = {}
    if UIParent then Scan(UIParent, 0, seen) end
    if WorldFrame then Scan(WorldFrame, 0, seen) end
    if GameTooltip then Scan(GameTooltip, 0, seen) end
    if ItemRefTooltip then Scan(ItemRefTooltip, 0, seen) end
    -- Talent tooltip is rendered from server strings with mixed Latin/Cyrillic.
    -- Style all its lines consistently to avoid an ugly mixed-font appearance.
    if GameTooltip and GameTooltip.IsShown and GameTooltip:IsShown() and GameTooltip.GetOwner then
        local owner = GameTooltip:GetOwner()
        if owner and (owner.node or owner.pair) then
            local regions = { GameTooltip:GetRegions() }
            local i
            for i = 1, table.getn(regions) do
                local region = regions[i]
                if region and region.GetFont and region.SetFont then
                    if not styledTalents[region] then
                        -- 13px, no heavy outline. Keep original text colours.
                        local ok, loaded = pcall(region.SetFont, region, ruFont, 13, "")
                        if ok and loaded ~= nil then
                            if region.SetShadowColor then pcall(region.SetShadowColor, region, 0, 0, 0, 0.90) end
                            if region.SetShadowOffset then pcall(region.SetShadowOffset, region, 1, -1) end
                            styledTalents[region] = true
                        end
                    end
                end
            end
        end
    end
end


-- Translate mastery tooltip lines at creation, not only during periodic UI scans.
-- The owner marker exists on the official talent-tree buttons. Outside talents,
-- preserve the original GameTooltip behavior word for word.
if GameTooltip and GameTooltip.AddLine and not HordesRU_TooltipHook then
    HordesRU_TooltipHook = true
    local originalAddLine = GameTooltip.AddLine
    GameTooltip.AddLine = function(self, text, red, green, blue, wrap)
        local owner = self.GetOwner and self:GetOwner()
        if owner and (owner.node or owner.pair) and type(text) == "string" then
            text = TranslateDisplay(text) or text
        end
        return originalAddLine(self, text, red, green, blue, wrap)
    end
end

local runner = CreateFrame("Frame", "HordesRUController")
local nextUpdate = 0
local announced = false
local function Announce()
    if not announced and DEFAULT_CHAT_FRAME then
        announced = true
        DEFAULT_CHAT_FRAME:AddMessage("|cff55ff99[HordesRU]|r v0.6 loaded")
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
SlashCmdList["HORDESRU"] = function()
    Announce()
    Apply()
    if DEFAULT_CHAT_FRAME then
        DEFAULT_CHAT_FRAME:AddMessage("|cff55ff99[HordesRU]|r scan complete.")
    end
end
