# 0 "src/quest_log_events.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/quest_log_events.c"
# 1 "include/global.h" 1



# 1 "include/config.h" 1



# 1 "include/global.h" 1
# 5 "include/config.h" 2
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/gba/gba.h" 2
# 1 "include/gba/defines.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 7 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;
typedef vu8 vbool8;
typedef vu16 vbool16;
typedef vu32 vbool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 120 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 9 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

s32 Div(s32 num, s32 denom);
# 10 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 11 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1



# 1 "include/gba/types.h" 1
# 5 "include/gba/isagbprint.h" 2
# 21 "include/gba/isagbprint.h"
bool32 MgbaOpen(void);
void MgbaClose(void);
void MgbaPrintf(s32 level, const char *pBuf, ...);
void MgbaAssert(const char *pFile, s32 nLine, const char *pExpression, bool32 nStopProgram);
void NoCashGBAPrintf(const char *pBuf, ...);
void NoCashGBAAssert(const char *pFile, s32 nLine, const char *pExpression, bool32 nStopProgram);
void AGBPrintf(const char *pBuf, ...);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
void AGBPrintInit(void);
# 12 "include/gba/gba.h" 2
# 6 "include/global.h" 2

# 1 "include/constants/global.h" 1
# 8 "include/global.h" 2
# 1 "include/constants/flags.h" 1



# 1 "include/constants/trainers.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/trainers.h" 2
# 5 "include/constants/flags.h" 2
# 9 "include/global.h" 2
# 1 "include/constants/vars.h" 1
# 10 "include/global.h" 2
# 1 "include/constants/species.h" 1
# 11 "include/global.h" 2
# 1 "include/constants/pokedex.h" 1




enum {
    NATIONAL_DEX_NONE,

    NATIONAL_DEX_BULBASAUR,
    NATIONAL_DEX_IVYSAUR,
    NATIONAL_DEX_VENUSAUR,
    NATIONAL_DEX_CHARMANDER,
    NATIONAL_DEX_CHARMELEON,
    NATIONAL_DEX_CHARIZARD,
    NATIONAL_DEX_SQUIRTLE,
    NATIONAL_DEX_WARTORTLE,
    NATIONAL_DEX_BLASTOISE,
    NATIONAL_DEX_CATERPIE,
    NATIONAL_DEX_METAPOD,
    NATIONAL_DEX_BUTTERFREE,
    NATIONAL_DEX_WEEDLE,
    NATIONAL_DEX_KAKUNA,
    NATIONAL_DEX_BEEDRILL,
    NATIONAL_DEX_PIDGEY,
    NATIONAL_DEX_PIDGEOTTO,
    NATIONAL_DEX_PIDGEOT,
    NATIONAL_DEX_RATTATA,
    NATIONAL_DEX_RATICATE,
    NATIONAL_DEX_SPEAROW,
    NATIONAL_DEX_FEAROW,
    NATIONAL_DEX_EKANS,
    NATIONAL_DEX_ARBOK,
    NATIONAL_DEX_PIKACHU,
    NATIONAL_DEX_RAICHU,
    NATIONAL_DEX_SANDSHREW,
    NATIONAL_DEX_SANDSLASH,
    NATIONAL_DEX_NIDORAN_F,
    NATIONAL_DEX_NIDORINA,
    NATIONAL_DEX_NIDOQUEEN,
    NATIONAL_DEX_NIDORAN_M,
    NATIONAL_DEX_NIDORINO,
    NATIONAL_DEX_NIDOKING,
    NATIONAL_DEX_CLEFAIRY,
    NATIONAL_DEX_CLEFABLE,
    NATIONAL_DEX_VULPIX,
    NATIONAL_DEX_NINETALES,
    NATIONAL_DEX_JIGGLYPUFF,
    NATIONAL_DEX_WIGGLYTUFF,
    NATIONAL_DEX_ZUBAT,
    NATIONAL_DEX_GOLBAT,
    NATIONAL_DEX_ODDISH,
    NATIONAL_DEX_GLOOM,
    NATIONAL_DEX_VILEPLUME,
    NATIONAL_DEX_PARAS,
    NATIONAL_DEX_PARASECT,
    NATIONAL_DEX_VENONAT,
    NATIONAL_DEX_VENOMOTH,
    NATIONAL_DEX_DIGLETT,
    NATIONAL_DEX_DUGTRIO,
    NATIONAL_DEX_MEOWTH,
    NATIONAL_DEX_PERSIAN,
    NATIONAL_DEX_PSYDUCK,
    NATIONAL_DEX_GOLDUCK,
    NATIONAL_DEX_MANKEY,
    NATIONAL_DEX_PRIMEAPE,
    NATIONAL_DEX_GROWLITHE,
    NATIONAL_DEX_ARCANINE,
    NATIONAL_DEX_POLIWAG,
    NATIONAL_DEX_POLIWHIRL,
    NATIONAL_DEX_POLIWRATH,
    NATIONAL_DEX_ABRA,
    NATIONAL_DEX_KADABRA,
    NATIONAL_DEX_ALAKAZAM,
    NATIONAL_DEX_MACHOP,
    NATIONAL_DEX_MACHOKE,
    NATIONAL_DEX_MACHAMP,
    NATIONAL_DEX_BELLSPROUT,
    NATIONAL_DEX_WEEPINBELL,
    NATIONAL_DEX_VICTREEBEL,
    NATIONAL_DEX_TENTACOOL,
    NATIONAL_DEX_TENTACRUEL,
    NATIONAL_DEX_GEODUDE,
    NATIONAL_DEX_GRAVELER,
    NATIONAL_DEX_GOLEM,
    NATIONAL_DEX_PONYTA,
    NATIONAL_DEX_RAPIDASH,
    NATIONAL_DEX_SLOWPOKE,
    NATIONAL_DEX_SLOWBRO,
    NATIONAL_DEX_MAGNEMITE,
    NATIONAL_DEX_MAGNETON,
    NATIONAL_DEX_FARFETCHD,
    NATIONAL_DEX_DODUO,
    NATIONAL_DEX_DODRIO,
    NATIONAL_DEX_SEEL,
    NATIONAL_DEX_DEWGONG,
    NATIONAL_DEX_GRIMER,
    NATIONAL_DEX_MUK,
    NATIONAL_DEX_SHELLDER,
    NATIONAL_DEX_CLOYSTER,
    NATIONAL_DEX_GASTLY,
    NATIONAL_DEX_HAUNTER,
    NATIONAL_DEX_GENGAR,
    NATIONAL_DEX_ONIX,
    NATIONAL_DEX_DROWZEE,
    NATIONAL_DEX_HYPNO,
    NATIONAL_DEX_KRABBY,
    NATIONAL_DEX_KINGLER,
    NATIONAL_DEX_VOLTORB,
    NATIONAL_DEX_ELECTRODE,
    NATIONAL_DEX_EXEGGCUTE,
    NATIONAL_DEX_EXEGGUTOR,
    NATIONAL_DEX_CUBONE,
    NATIONAL_DEX_MAROWAK,
    NATIONAL_DEX_HITMONLEE,
    NATIONAL_DEX_HITMONCHAN,
    NATIONAL_DEX_LICKITUNG,
    NATIONAL_DEX_KOFFING,
    NATIONAL_DEX_WEEZING,
    NATIONAL_DEX_RHYHORN,
    NATIONAL_DEX_RHYDON,
    NATIONAL_DEX_CHANSEY,
    NATIONAL_DEX_TANGELA,
    NATIONAL_DEX_KANGASKHAN,
    NATIONAL_DEX_HORSEA,
    NATIONAL_DEX_SEADRA,
    NATIONAL_DEX_GOLDEEN,
    NATIONAL_DEX_SEAKING,
    NATIONAL_DEX_STARYU,
    NATIONAL_DEX_STARMIE,
    NATIONAL_DEX_MR_MIME,
    NATIONAL_DEX_SCYTHER,
    NATIONAL_DEX_JYNX,
    NATIONAL_DEX_ELECTABUZZ,
    NATIONAL_DEX_MAGMAR,
    NATIONAL_DEX_PINSIR,
    NATIONAL_DEX_TAUROS,
    NATIONAL_DEX_MAGIKARP,
    NATIONAL_DEX_GYARADOS,
    NATIONAL_DEX_LAPRAS,
    NATIONAL_DEX_DITTO,
    NATIONAL_DEX_EEVEE,
    NATIONAL_DEX_VAPOREON,
    NATIONAL_DEX_JOLTEON,
    NATIONAL_DEX_FLAREON,
    NATIONAL_DEX_PORYGON,
    NATIONAL_DEX_OMANYTE,
    NATIONAL_DEX_OMASTAR,
    NATIONAL_DEX_KABUTO,
    NATIONAL_DEX_KABUTOPS,
    NATIONAL_DEX_AERODACTYL,
    NATIONAL_DEX_SNORLAX,
    NATIONAL_DEX_ARTICUNO,
    NATIONAL_DEX_ZAPDOS,
    NATIONAL_DEX_MOLTRES,
    NATIONAL_DEX_DRATINI,
    NATIONAL_DEX_DRAGONAIR,
    NATIONAL_DEX_DRAGONITE,
    NATIONAL_DEX_MEWTWO,
    NATIONAL_DEX_MEW,

    NATIONAL_DEX_CHIKORITA,
    NATIONAL_DEX_BAYLEEF,
    NATIONAL_DEX_MEGANIUM,
    NATIONAL_DEX_CYNDAQUIL,
    NATIONAL_DEX_QUILAVA,
    NATIONAL_DEX_TYPHLOSION,
    NATIONAL_DEX_TOTODILE,
    NATIONAL_DEX_CROCONAW,
    NATIONAL_DEX_FERALIGATR,
    NATIONAL_DEX_SENTRET,
    NATIONAL_DEX_FURRET,
    NATIONAL_DEX_HOOTHOOT,
    NATIONAL_DEX_NOCTOWL,
    NATIONAL_DEX_LEDYBA,
    NATIONAL_DEX_LEDIAN,
    NATIONAL_DEX_SPINARAK,
    NATIONAL_DEX_ARIADOS,
    NATIONAL_DEX_CROBAT,
    NATIONAL_DEX_CHINCHOU,
    NATIONAL_DEX_LANTURN,
    NATIONAL_DEX_PICHU,
    NATIONAL_DEX_CLEFFA,
    NATIONAL_DEX_IGGLYBUFF,
    NATIONAL_DEX_TOGEPI,
    NATIONAL_DEX_TOGETIC,
    NATIONAL_DEX_NATU,
    NATIONAL_DEX_XATU,
    NATIONAL_DEX_MAREEP,
    NATIONAL_DEX_FLAAFFY,
    NATIONAL_DEX_AMPHAROS,
    NATIONAL_DEX_BELLOSSOM,
    NATIONAL_DEX_MARILL,
    NATIONAL_DEX_AZUMARILL,
    NATIONAL_DEX_SUDOWOODO,
    NATIONAL_DEX_POLITOED,
    NATIONAL_DEX_HOPPIP,
    NATIONAL_DEX_SKIPLOOM,
    NATIONAL_DEX_JUMPLUFF,
    NATIONAL_DEX_AIPOM,
    NATIONAL_DEX_SUNKERN,
    NATIONAL_DEX_SUNFLORA,
    NATIONAL_DEX_YANMA,
    NATIONAL_DEX_WOOPER,
    NATIONAL_DEX_QUAGSIRE,
    NATIONAL_DEX_ESPEON,
    NATIONAL_DEX_UMBREON,
    NATIONAL_DEX_MURKROW,
    NATIONAL_DEX_SLOWKING,
    NATIONAL_DEX_MISDREAVUS,
    NATIONAL_DEX_UNOWN,
    NATIONAL_DEX_WOBBUFFET,
    NATIONAL_DEX_GIRAFARIG,
    NATIONAL_DEX_PINECO,
    NATIONAL_DEX_FORRETRESS,
    NATIONAL_DEX_DUNSPARCE,
    NATIONAL_DEX_GLIGAR,
    NATIONAL_DEX_STEELIX,
    NATIONAL_DEX_SNUBBULL,
    NATIONAL_DEX_GRANBULL,
    NATIONAL_DEX_QWILFISH,
    NATIONAL_DEX_SCIZOR,
    NATIONAL_DEX_SHUCKLE,
    NATIONAL_DEX_HERACROSS,
    NATIONAL_DEX_SNEASEL,
    NATIONAL_DEX_TEDDIURSA,
    NATIONAL_DEX_URSARING,
    NATIONAL_DEX_SLUGMA,
    NATIONAL_DEX_MAGCARGO,
    NATIONAL_DEX_SWINUB,
    NATIONAL_DEX_PILOSWINE,
    NATIONAL_DEX_CORSOLA,
    NATIONAL_DEX_REMORAID,
    NATIONAL_DEX_OCTILLERY,
    NATIONAL_DEX_DELIBIRD,
    NATIONAL_DEX_MANTINE,
    NATIONAL_DEX_SKARMORY,
    NATIONAL_DEX_HOUNDOUR,
    NATIONAL_DEX_HOUNDOOM,
    NATIONAL_DEX_KINGDRA,
    NATIONAL_DEX_PHANPY,
    NATIONAL_DEX_DONPHAN,
    NATIONAL_DEX_PORYGON2,
    NATIONAL_DEX_STANTLER,
    NATIONAL_DEX_SMEARGLE,
    NATIONAL_DEX_TYROGUE,
    NATIONAL_DEX_HITMONTOP,
    NATIONAL_DEX_SMOOCHUM,
    NATIONAL_DEX_ELEKID,
    NATIONAL_DEX_MAGBY,
    NATIONAL_DEX_MILTANK,
    NATIONAL_DEX_BLISSEY,
    NATIONAL_DEX_RAIKOU,
    NATIONAL_DEX_ENTEI,
    NATIONAL_DEX_SUICUNE,
    NATIONAL_DEX_LARVITAR,
    NATIONAL_DEX_PUPITAR,
    NATIONAL_DEX_TYRANITAR,
    NATIONAL_DEX_LUGIA,
    NATIONAL_DEX_HO_OH,
    NATIONAL_DEX_CELEBI,

    NATIONAL_DEX_TREECKO,
    NATIONAL_DEX_GROVYLE,
    NATIONAL_DEX_SCEPTILE,
    NATIONAL_DEX_TORCHIC,
    NATIONAL_DEX_COMBUSKEN,
    NATIONAL_DEX_BLAZIKEN,
    NATIONAL_DEX_MUDKIP,
    NATIONAL_DEX_MARSHTOMP,
    NATIONAL_DEX_SWAMPERT,
    NATIONAL_DEX_POOCHYENA,
    NATIONAL_DEX_MIGHTYENA,
    NATIONAL_DEX_ZIGZAGOON,
    NATIONAL_DEX_LINOONE,
    NATIONAL_DEX_WURMPLE,
    NATIONAL_DEX_SILCOON,
    NATIONAL_DEX_BEAUTIFLY,
    NATIONAL_DEX_CASCOON,
    NATIONAL_DEX_DUSTOX,
    NATIONAL_DEX_LOTAD,
    NATIONAL_DEX_LOMBRE,
    NATIONAL_DEX_LUDICOLO,
    NATIONAL_DEX_SEEDOT,
    NATIONAL_DEX_NUZLEAF,
    NATIONAL_DEX_SHIFTRY,
    NATIONAL_DEX_TAILLOW,
    NATIONAL_DEX_SWELLOW,
    NATIONAL_DEX_WINGULL,
    NATIONAL_DEX_PELIPPER,
    NATIONAL_DEX_RALTS,
    NATIONAL_DEX_KIRLIA,
    NATIONAL_DEX_GARDEVOIR,
    NATIONAL_DEX_SURSKIT,
    NATIONAL_DEX_MASQUERAIN,
    NATIONAL_DEX_SHROOMISH,
    NATIONAL_DEX_BRELOOM,
    NATIONAL_DEX_SLAKOTH,
    NATIONAL_DEX_VIGOROTH,
    NATIONAL_DEX_SLAKING,
    NATIONAL_DEX_NINCADA,
    NATIONAL_DEX_NINJASK,
    NATIONAL_DEX_SHEDINJA,
    NATIONAL_DEX_WHISMUR,
    NATIONAL_DEX_LOUDRED,
    NATIONAL_DEX_EXPLOUD,
    NATIONAL_DEX_MAKUHITA,
    NATIONAL_DEX_HARIYAMA,
    NATIONAL_DEX_AZURILL,
    NATIONAL_DEX_NOSEPASS,
    NATIONAL_DEX_SKITTY,
    NATIONAL_DEX_DELCATTY,
    NATIONAL_DEX_SABLEYE,
    NATIONAL_DEX_MAWILE,
    NATIONAL_DEX_ARON,
    NATIONAL_DEX_LAIRON,
    NATIONAL_DEX_AGGRON,
    NATIONAL_DEX_MEDITITE,
    NATIONAL_DEX_MEDICHAM,
    NATIONAL_DEX_ELECTRIKE,
    NATIONAL_DEX_MANECTRIC,
    NATIONAL_DEX_PLUSLE,
    NATIONAL_DEX_MINUN,
    NATIONAL_DEX_VOLBEAT,
    NATIONAL_DEX_ILLUMISE,
    NATIONAL_DEX_ROSELIA,
    NATIONAL_DEX_GULPIN,
    NATIONAL_DEX_SWALOT,
    NATIONAL_DEX_CARVANHA,
    NATIONAL_DEX_SHARPEDO,
    NATIONAL_DEX_WAILMER,
    NATIONAL_DEX_WAILORD,
    NATIONAL_DEX_NUMEL,
    NATIONAL_DEX_CAMERUPT,
    NATIONAL_DEX_TORKOAL,
    NATIONAL_DEX_SPOINK,
    NATIONAL_DEX_GRUMPIG,
    NATIONAL_DEX_SPINDA,
    NATIONAL_DEX_TRAPINCH,
    NATIONAL_DEX_VIBRAVA,
    NATIONAL_DEX_FLYGON,
    NATIONAL_DEX_CACNEA,
    NATIONAL_DEX_CACTURNE,
    NATIONAL_DEX_SWABLU,
    NATIONAL_DEX_ALTARIA,
    NATIONAL_DEX_ZANGOOSE,
    NATIONAL_DEX_SEVIPER,
    NATIONAL_DEX_LUNATONE,
    NATIONAL_DEX_SOLROCK,
    NATIONAL_DEX_BARBOACH,
    NATIONAL_DEX_WHISCASH,
    NATIONAL_DEX_CORPHISH,
    NATIONAL_DEX_CRAWDAUNT,
    NATIONAL_DEX_BALTOY,
    NATIONAL_DEX_CLAYDOL,
    NATIONAL_DEX_LILEEP,
    NATIONAL_DEX_CRADILY,
    NATIONAL_DEX_ANORITH,
    NATIONAL_DEX_ARMALDO,
    NATIONAL_DEX_FEEBAS,
    NATIONAL_DEX_MILOTIC,
    NATIONAL_DEX_CASTFORM,
    NATIONAL_DEX_KECLEON,
    NATIONAL_DEX_SHUPPET,
    NATIONAL_DEX_BANETTE,
    NATIONAL_DEX_DUSKULL,
    NATIONAL_DEX_DUSCLOPS,
    NATIONAL_DEX_TROPIUS,
    NATIONAL_DEX_CHIMECHO,
    NATIONAL_DEX_ABSOL,
    NATIONAL_DEX_WYNAUT,
    NATIONAL_DEX_SNORUNT,
    NATIONAL_DEX_GLALIE,
    NATIONAL_DEX_SPHEAL,
    NATIONAL_DEX_SEALEO,
    NATIONAL_DEX_WALREIN,
    NATIONAL_DEX_CLAMPERL,
    NATIONAL_DEX_HUNTAIL,
    NATIONAL_DEX_GOREBYSS,
    NATIONAL_DEX_RELICANTH,
    NATIONAL_DEX_LUVDISC,
    NATIONAL_DEX_BAGON,
    NATIONAL_DEX_SHELGON,
    NATIONAL_DEX_SALAMENCE,
    NATIONAL_DEX_BELDUM,
    NATIONAL_DEX_METANG,
    NATIONAL_DEX_METAGROSS,
    NATIONAL_DEX_REGIROCK,
    NATIONAL_DEX_REGICE,
    NATIONAL_DEX_REGISTEEL,
    NATIONAL_DEX_LATIAS,
    NATIONAL_DEX_LATIOS,
    NATIONAL_DEX_KYOGRE,
    NATIONAL_DEX_GROUDON,
    NATIONAL_DEX_RAYQUAZA,
    NATIONAL_DEX_JIRACHI,
    NATIONAL_DEX_DEOXYS,
    NATIONAL_DEX_LITTEN,

    NATIONAL_DEX_OLD_UNOWN_B,
    NATIONAL_DEX_OLD_UNOWN_C,
    NATIONAL_DEX_OLD_UNOWN_D,
    NATIONAL_DEX_OLD_UNOWN_E,
    NATIONAL_DEX_OLD_UNOWN_F,
    NATIONAL_DEX_OLD_UNOWN_G,
    NATIONAL_DEX_OLD_UNOWN_H,
    NATIONAL_DEX_OLD_UNOWN_I,
    NATIONAL_DEX_OLD_UNOWN_J,
    NATIONAL_DEX_OLD_UNOWN_K,
    NATIONAL_DEX_OLD_UNOWN_L,
    NATIONAL_DEX_OLD_UNOWN_M,
    NATIONAL_DEX_OLD_UNOWN_N,
    NATIONAL_DEX_OLD_UNOWN_O,
    NATIONAL_DEX_OLD_UNOWN_P,
    NATIONAL_DEX_OLD_UNOWN_Q,
    NATIONAL_DEX_OLD_UNOWN_R,
    NATIONAL_DEX_OLD_UNOWN_S,
    NATIONAL_DEX_OLD_UNOWN_T,
    NATIONAL_DEX_OLD_UNOWN_U,
    NATIONAL_DEX_OLD_UNOWN_V,
    NATIONAL_DEX_OLD_UNOWN_W,
    NATIONAL_DEX_OLD_UNOWN_X,
    NATIONAL_DEX_OLD_UNOWN_Y,
    NATIONAL_DEX_OLD_UNOWN_Z,
};






enum {
    HOENN_DEX_NONE,
    HOENN_DEX_TREECKO,
    HOENN_DEX_GROVYLE,
    HOENN_DEX_SCEPTILE,
    HOENN_DEX_TORCHIC,
    HOENN_DEX_COMBUSKEN,
    HOENN_DEX_BLAZIKEN,
    HOENN_DEX_MUDKIP,
    HOENN_DEX_MARSHTOMP,
    HOENN_DEX_SWAMPERT,
    HOENN_DEX_POOCHYENA,
    HOENN_DEX_MIGHTYENA,
    HOENN_DEX_ZIGZAGOON,
    HOENN_DEX_LINOONE,
    HOENN_DEX_WURMPLE,
    HOENN_DEX_SILCOON,
    HOENN_DEX_BEAUTIFLY,
    HOENN_DEX_CASCOON,
    HOENN_DEX_DUSTOX,
    HOENN_DEX_LOTAD,
    HOENN_DEX_LOMBRE,
    HOENN_DEX_LUDICOLO,
    HOENN_DEX_SEEDOT,
    HOENN_DEX_NUZLEAF,
    HOENN_DEX_SHIFTRY,
    HOENN_DEX_TAILLOW,
    HOENN_DEX_SWELLOW,
    HOENN_DEX_WINGULL,
    HOENN_DEX_PELIPPER,
    HOENN_DEX_RALTS,
    HOENN_DEX_KIRLIA,
    HOENN_DEX_GARDEVOIR,
    HOENN_DEX_SURSKIT,
    HOENN_DEX_MASQUERAIN,
    HOENN_DEX_SHROOMISH,
    HOENN_DEX_BRELOOM,
    HOENN_DEX_SLAKOTH,
    HOENN_DEX_VIGOROTH,
    HOENN_DEX_SLAKING,
    HOENN_DEX_ABRA,
    HOENN_DEX_KADABRA,
    HOENN_DEX_ALAKAZAM,
    HOENN_DEX_NINCADA,
    HOENN_DEX_NINJASK,
    HOENN_DEX_SHEDINJA,
    HOENN_DEX_WHISMUR,
    HOENN_DEX_LOUDRED,
    HOENN_DEX_EXPLOUD,
    HOENN_DEX_MAKUHITA,
    HOENN_DEX_HARIYAMA,
    HOENN_DEX_GOLDEEN,
    HOENN_DEX_SEAKING,
    HOENN_DEX_MAGIKARP,
    HOENN_DEX_GYARADOS,
    HOENN_DEX_AZURILL,
    HOENN_DEX_MARILL,
    HOENN_DEX_AZUMARILL,
    HOENN_DEX_GEODUDE,
    HOENN_DEX_GRAVELER,
    HOENN_DEX_GOLEM,
    HOENN_DEX_NOSEPASS,
    HOENN_DEX_SKITTY,
    HOENN_DEX_DELCATTY,
    HOENN_DEX_ZUBAT,
    HOENN_DEX_GOLBAT,
    HOENN_DEX_CROBAT,
    HOENN_DEX_TENTACOOL,
    HOENN_DEX_TENTACRUEL,
    HOENN_DEX_SABLEYE,
    HOENN_DEX_MAWILE,
    HOENN_DEX_ARON,
    HOENN_DEX_LAIRON,
    HOENN_DEX_AGGRON,
    HOENN_DEX_MACHOP,
    HOENN_DEX_MACHOKE,
    HOENN_DEX_MACHAMP,
    HOENN_DEX_MEDITITE,
    HOENN_DEX_MEDICHAM,
    HOENN_DEX_ELECTRIKE,
    HOENN_DEX_MANECTRIC,
    HOENN_DEX_PLUSLE,
    HOENN_DEX_MINUN,
    HOENN_DEX_MAGNEMITE,
    HOENN_DEX_MAGNETON,
    HOENN_DEX_VOLTORB,
    HOENN_DEX_ELECTRODE,
    HOENN_DEX_VOLBEAT,
    HOENN_DEX_ILLUMISE,
    HOENN_DEX_ODDISH,
    HOENN_DEX_GLOOM,
    HOENN_DEX_VILEPLUME,
    HOENN_DEX_BELLOSSOM,
    HOENN_DEX_DODUO,
    HOENN_DEX_DODRIO,
    HOENN_DEX_ROSELIA,
    HOENN_DEX_GULPIN,
    HOENN_DEX_SWALOT,
    HOENN_DEX_CARVANHA,
    HOENN_DEX_SHARPEDO,
    HOENN_DEX_WAILMER,
    HOENN_DEX_WAILORD,
    HOENN_DEX_NUMEL,
    HOENN_DEX_CAMERUPT,
    HOENN_DEX_SLUGMA,
    HOENN_DEX_MAGCARGO,
    HOENN_DEX_TORKOAL,
    HOENN_DEX_GRIMER,
    HOENN_DEX_MUK,
    HOENN_DEX_KOFFING,
    HOENN_DEX_WEEZING,
    HOENN_DEX_SPOINK,
    HOENN_DEX_GRUMPIG,
    HOENN_DEX_SANDSHREW,
    HOENN_DEX_SANDSLASH,
    HOENN_DEX_SPINDA,
    HOENN_DEX_SKARMORY,
    HOENN_DEX_TRAPINCH,
    HOENN_DEX_VIBRAVA,
    HOENN_DEX_FLYGON,
    HOENN_DEX_CACNEA,
    HOENN_DEX_CACTURNE,
    HOENN_DEX_SWABLU,
    HOENN_DEX_ALTARIA,
    HOENN_DEX_ZANGOOSE,
    HOENN_DEX_SEVIPER,
    HOENN_DEX_LUNATONE,
    HOENN_DEX_SOLROCK,
    HOENN_DEX_BARBOACH,
    HOENN_DEX_WHISCASH,
    HOENN_DEX_CORPHISH,
    HOENN_DEX_CRAWDAUNT,
    HOENN_DEX_BALTOY,
    HOENN_DEX_CLAYDOL,
    HOENN_DEX_LILEEP,
    HOENN_DEX_CRADILY,
    HOENN_DEX_ANORITH,
    HOENN_DEX_ARMALDO,
    HOENN_DEX_IGGLYBUFF,
    HOENN_DEX_JIGGLYPUFF,
    HOENN_DEX_WIGGLYTUFF,
    HOENN_DEX_FEEBAS,
    HOENN_DEX_MILOTIC,
    HOENN_DEX_CASTFORM,
    HOENN_DEX_STARYU,
    HOENN_DEX_STARMIE,
    HOENN_DEX_KECLEON,
    HOENN_DEX_SHUPPET,
    HOENN_DEX_BANETTE,
    HOENN_DEX_DUSKULL,
    HOENN_DEX_DUSCLOPS,
    HOENN_DEX_TROPIUS,
    HOENN_DEX_CHIMECHO,
    HOENN_DEX_ABSOL,
    HOENN_DEX_VULPIX,
    HOENN_DEX_NINETALES,
    HOENN_DEX_PICHU,
    HOENN_DEX_PIKACHU,
    HOENN_DEX_RAICHU,
    HOENN_DEX_PSYDUCK,
    HOENN_DEX_GOLDUCK,
    HOENN_DEX_WYNAUT,
    HOENN_DEX_WOBBUFFET,
    HOENN_DEX_NATU,
    HOENN_DEX_XATU,
    HOENN_DEX_GIRAFARIG,
    HOENN_DEX_PHANPY,
    HOENN_DEX_DONPHAN,
    HOENN_DEX_PINSIR,
    HOENN_DEX_HERACROSS,
    HOENN_DEX_RHYHORN,
    HOENN_DEX_RHYDON,
    HOENN_DEX_SNORUNT,
    HOENN_DEX_GLALIE,
    HOENN_DEX_SPHEAL,
    HOENN_DEX_SEALEO,
    HOENN_DEX_WALREIN,
    HOENN_DEX_CLAMPERL,
    HOENN_DEX_HUNTAIL,
    HOENN_DEX_GOREBYSS,
    HOENN_DEX_RELICANTH,
    HOENN_DEX_CORSOLA,
    HOENN_DEX_CHINCHOU,
    HOENN_DEX_LANTURN,
    HOENN_DEX_LUVDISC,
    HOENN_DEX_HORSEA,
    HOENN_DEX_SEADRA,
    HOENN_DEX_KINGDRA,
    HOENN_DEX_BAGON,
    HOENN_DEX_SHELGON,
    HOENN_DEX_SALAMENCE,
    HOENN_DEX_BELDUM,
    HOENN_DEX_METANG,
    HOENN_DEX_METAGROSS,
    HOENN_DEX_REGIROCK,
    HOENN_DEX_REGICE,
    HOENN_DEX_REGISTEEL,
    HOENN_DEX_LATIAS,
    HOENN_DEX_LATIOS,
    HOENN_DEX_KYOGRE,
    HOENN_DEX_GROUDON,
    HOENN_DEX_RAYQUAZA,
    HOENN_DEX_JIRACHI,
    HOENN_DEX_DEOXYS,
    HOENN_DEX_LITTEN,


    HOENN_DEX_BULBASAUR,
    HOENN_DEX_IVYSAUR,
    HOENN_DEX_VENUSAUR,
    HOENN_DEX_CHARMANDER,
    HOENN_DEX_CHARMELEON,
    HOENN_DEX_CHARIZARD,
    HOENN_DEX_SQUIRTLE,
    HOENN_DEX_WARTORTLE,
    HOENN_DEX_BLASTOISE,
    HOENN_DEX_CATERPIE,
    HOENN_DEX_METAPOD,
    HOENN_DEX_BUTTERFREE,
    HOENN_DEX_WEEDLE,
    HOENN_DEX_KAKUNA,
    HOENN_DEX_BEEDRILL,
    HOENN_DEX_PIDGEY,
    HOENN_DEX_PIDGEOTTO,
    HOENN_DEX_PIDGEOT,
    HOENN_DEX_RATTATA,
    HOENN_DEX_RATICATE,
    HOENN_DEX_SPEAROW,
    HOENN_DEX_FEAROW,
    HOENN_DEX_EKANS,
    HOENN_DEX_ARBOK,
    HOENN_DEX_NIDORAN_F,
    HOENN_DEX_NIDORINA,
    HOENN_DEX_NIDOQUEEN,
    HOENN_DEX_NIDORAN_M,
    HOENN_DEX_NIDORINO,
    HOENN_DEX_NIDOKING,
    HOENN_DEX_CLEFAIRY,
    HOENN_DEX_CLEFABLE,
    HOENN_DEX_PARAS,
    HOENN_DEX_PARASECT,
    HOENN_DEX_VENONAT,
    HOENN_DEX_VENOMOTH,
    HOENN_DEX_DIGLETT,
    HOENN_DEX_DUGTRIO,
    HOENN_DEX_MEOWTH,
    HOENN_DEX_PERSIAN,
    HOENN_DEX_MANKEY,
    HOENN_DEX_PRIMEAPE,
    HOENN_DEX_GROWLITHE,
    HOENN_DEX_ARCANINE,
    HOENN_DEX_POLIWAG,
    HOENN_DEX_POLIWHIRL,
    HOENN_DEX_POLIWRATH,
    HOENN_DEX_BELLSPROUT,
    HOENN_DEX_WEEPINBELL,
    HOENN_DEX_VICTREEBEL,
    HOENN_DEX_PONYTA,
    HOENN_DEX_RAPIDASH,
    HOENN_DEX_SLOWPOKE,
    HOENN_DEX_SLOWBRO,
    HOENN_DEX_FARFETCHD,
    HOENN_DEX_SEEL,
    HOENN_DEX_DEWGONG,
    HOENN_DEX_SHELLDER,
    HOENN_DEX_CLOYSTER,
    HOENN_DEX_GASTLY,
    HOENN_DEX_HAUNTER,
    HOENN_DEX_GENGAR,
    HOENN_DEX_ONIX,
    HOENN_DEX_DROWZEE,
    HOENN_DEX_HYPNO,
    HOENN_DEX_KRABBY,
    HOENN_DEX_KINGLER,
    HOENN_DEX_EXEGGCUTE,
    HOENN_DEX_EXEGGUTOR,
    HOENN_DEX_CUBONE,
    HOENN_DEX_MAROWAK,
    HOENN_DEX_HITMONLEE,
    HOENN_DEX_HITMONCHAN,
    HOENN_DEX_LICKITUNG,
    HOENN_DEX_CHANSEY,
    HOENN_DEX_TANGELA,
    HOENN_DEX_KANGASKHAN,
    HOENN_DEX_MR_MIME,
    HOENN_DEX_SCYTHER,
    HOENN_DEX_JYNX,
    HOENN_DEX_ELECTABUZZ,
    HOENN_DEX_MAGMAR,
    HOENN_DEX_TAUROS,
    HOENN_DEX_LAPRAS,
    HOENN_DEX_DITTO,
    HOENN_DEX_EEVEE,
    HOENN_DEX_VAPOREON,
    HOENN_DEX_JOLTEON,
    HOENN_DEX_FLAREON,
    HOENN_DEX_PORYGON,
    HOENN_DEX_OMANYTE,
    HOENN_DEX_OMASTAR,
    HOENN_DEX_KABUTO,
    HOENN_DEX_KABUTOPS,
    HOENN_DEX_AERODACTYL,
    HOENN_DEX_SNORLAX,
    HOENN_DEX_ARTICUNO,
    HOENN_DEX_ZAPDOS,
    HOENN_DEX_MOLTRES,
    HOENN_DEX_DRATINI,
    HOENN_DEX_DRAGONAIR,
    HOENN_DEX_DRAGONITE,
    HOENN_DEX_MEWTWO,
    HOENN_DEX_MEW,
    HOENN_DEX_CHIKORITA,
    HOENN_DEX_BAYLEEF,
    HOENN_DEX_MEGANIUM,
    HOENN_DEX_CYNDAQUIL,
    HOENN_DEX_QUILAVA,
    HOENN_DEX_TYPHLOSION,
    HOENN_DEX_TOTODILE,
    HOENN_DEX_CROCONAW,
    HOENN_DEX_FERALIGATR,
    HOENN_DEX_SENTRET,
    HOENN_DEX_FURRET,
    HOENN_DEX_HOOTHOOT,
    HOENN_DEX_NOCTOWL,
    HOENN_DEX_LEDYBA,
    HOENN_DEX_LEDIAN,
    HOENN_DEX_SPINARAK,
    HOENN_DEX_ARIADOS,
    HOENN_DEX_CLEFFA,
    HOENN_DEX_TOGEPI,
    HOENN_DEX_TOGETIC,
    HOENN_DEX_MAREEP,
    HOENN_DEX_FLAAFFY,
    HOENN_DEX_AMPHAROS,
    HOENN_DEX_SUDOWOODO,
    HOENN_DEX_POLITOED,
    HOENN_DEX_HOPPIP,
    HOENN_DEX_SKIPLOOM,
    HOENN_DEX_JUMPLUFF,
    HOENN_DEX_AIPOM,
    HOENN_DEX_SUNKERN,
    HOENN_DEX_SUNFLORA,
    HOENN_DEX_YANMA,
    HOENN_DEX_WOOPER,
    HOENN_DEX_QUAGSIRE,
    HOENN_DEX_ESPEON,
    HOENN_DEX_UMBREON,
    HOENN_DEX_MURKROW,
    HOENN_DEX_SLOWKING,
    HOENN_DEX_MISDREAVUS,
    HOENN_DEX_UNOWN,
    HOENN_DEX_PINECO,
    HOENN_DEX_FORRETRESS,
    HOENN_DEX_DUNSPARCE,
    HOENN_DEX_GLIGAR,
    HOENN_DEX_STEELIX,
    HOENN_DEX_SNUBBULL,
    HOENN_DEX_GRANBULL,
    HOENN_DEX_QWILFISH,
    HOENN_DEX_SCIZOR,
    HOENN_DEX_SHUCKLE,
    HOENN_DEX_SNEASEL,
    HOENN_DEX_TEDDIURSA,
    HOENN_DEX_URSARING,
    HOENN_DEX_SWINUB,
    HOENN_DEX_PILOSWINE,
    HOENN_DEX_REMORAID,
    HOENN_DEX_OCTILLERY,
    HOENN_DEX_DELIBIRD,
    HOENN_DEX_MANTINE,
    HOENN_DEX_HOUNDOUR,
    HOENN_DEX_HOUNDOOM,
    HOENN_DEX_PORYGON2,
    HOENN_DEX_STANTLER,
    HOENN_DEX_SMEARGLE,
    HOENN_DEX_TYROGUE,
    HOENN_DEX_HITMONTOP,
    HOENN_DEX_SMOOCHUM,
    HOENN_DEX_ELEKID,
    HOENN_DEX_MAGBY,
    HOENN_DEX_MILTANK,
    HOENN_DEX_BLISSEY,
    HOENN_DEX_RAIKOU,
    HOENN_DEX_ENTEI,
    HOENN_DEX_SUICUNE,
    HOENN_DEX_LARVITAR,
    HOENN_DEX_PUPITAR,
    HOENN_DEX_TYRANITAR,
    HOENN_DEX_LUGIA,
    HOENN_DEX_HO_OH,
    HOENN_DEX_CELEBI,
    HOENN_DEX_OLD_UNOWN_B,
    HOENN_DEX_OLD_UNOWN_C,
    HOENN_DEX_OLD_UNOWN_D,
    HOENN_DEX_OLD_UNOWN_E,
    HOENN_DEX_OLD_UNOWN_F,
    HOENN_DEX_OLD_UNOWN_G,
    HOENN_DEX_OLD_UNOWN_H,
    HOENN_DEX_OLD_UNOWN_I,
    HOENN_DEX_OLD_UNOWN_J,
    HOENN_DEX_OLD_UNOWN_K,
    HOENN_DEX_OLD_UNOWN_L,
    HOENN_DEX_OLD_UNOWN_M,
    HOENN_DEX_OLD_UNOWN_N,
    HOENN_DEX_OLD_UNOWN_O,
    HOENN_DEX_OLD_UNOWN_P,
    HOENN_DEX_OLD_UNOWN_Q,
    HOENN_DEX_OLD_UNOWN_R,
    HOENN_DEX_OLD_UNOWN_S,
    HOENN_DEX_OLD_UNOWN_T,
    HOENN_DEX_OLD_UNOWN_U,
    HOENN_DEX_OLD_UNOWN_V,
    HOENN_DEX_OLD_UNOWN_W,
    HOENN_DEX_OLD_UNOWN_X,
    HOENN_DEX_OLD_UNOWN_Y,
    HOENN_DEX_OLD_UNOWN_Z,
};
# 12 "include/global.h" 2
# 1 "include/constants/easy_chat.h" 1
# 13 "include/global.h" 2
# 1 "include/constants/rgb.h" 1
# 14 "include/global.h" 2
# 121 "include/global.h"
extern u8 gStringVar1[];
extern u8 gStringVar2[];
extern u8 gStringVar3[];
extern u8 gStringVar4[];
# 138 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
};

struct Pokedex
{
             u8 order;
             u8 mode;
             u8 unused;
             u8 nationalMagic;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 owned[(((413) / (8)) + (((413) % (8)) ? 1 : 0))];
             u8 seen[(((413) / (8)) + (((413) % (8)) ? 1 : 0))];
};

struct PokemonJumpRecords
{
    u16 jumpsInRow;
    u16 unused1;
    u16 excellentsInRow;
    u16 gamesWithMaxPlayers;
    u32 unused2;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};

struct BerryCrush
{
    u16 pressingSpeeds[4];
    u32 berryPowderAmount;
    u32 unk;
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

# 1 "include/constants/game_stat.h" 1
# 259 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 16 "include/global.fieldmap.h"
enum {
    METATILE_LAYER_TYPE_NORMAL,
    METATILE_LAYER_TYPE_COVERED,
    METATILE_LAYER_TYPE_SPLIT,
};



enum
{
    METATILE_ATTRIBUTE_BEHAVIOR,
    METATILE_ATTRIBUTE_TERRAIN,
    METATILE_ATTRIBUTE_2,
    METATILE_ATTRIBUTE_3,
    METATILE_ATTRIBUTE_ENCOUNTER_TYPE,
    METATILE_ATTRIBUTE_5,
    METATILE_ATTRIBUTE_LAYER_TYPE,
    METATILE_ATTRIBUTE_7,
    METATILE_ATTRIBUTE_COUNT,
    METATILE_ATTRIBUTES_ALL = 255
};

enum
{
    TILE_ENCOUNTER_NONE,
    TILE_ENCOUNTER_LAND,
    TILE_ENCOUNTER_WATER,
};

enum
{
    TILE_TERRAIN_NORMAL,
    TILE_TERRAIN_GRASS,
    TILE_TERRAIN_WATER,
    TILE_TERRAIN_WATERFALL,
};


enum
{
    HIDDEN_ITEM_ITEM,
    HIDDEN_ITEM_FLAG,
    HIDDEN_ITEM_QUANTITY,
    HIDDEN_ITEM_UNDERFOOT
};
# 78 "include/global.fieldmap.h"
typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             const u32 *tiles;
             const u16 (*palettes)[16];
             const u16 *metatiles;
             TilesetCB callback;
             const u32 *metatileAttributes;
};

struct MapLayout
{
             s32 width;
             s32 height;
             const u16 *border;
             const u16 *map;
             const struct Tileset *primaryTileset;
             const struct Tileset *secondaryTileset;
             u8 borderWidth;
             u8 borderHeight;
};

struct BackupMapLayout
{
    s32 Xsize;
    s32 Ysize;
    u16 *map;
};

struct ObjectEventTemplate
{
    u8 localId;
    u8 graphicsId;
    u8 kind;
    s16 x, y;
    union {
        struct {
            u8 elevation;
            u8 movementType;
            u16 movementRangeX:4;
            u16 movementRangeY:4;
            u16 trainerType;
            u16 trainerRange_berryTreeId;
        } normal;
        struct {
            u8 targetLocalId;
            u8 padding[3];
            u16 targetMapNum;
            u16 targetMapGroup;
        } clone;
    } objUnion;
    const u8 *script;
    u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    u16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    const u8 *script;
};

struct BgEvent
{
    u16 x, y;
    u8 elevation;
    u8 kind;
    union {
        const u8 *script;
        u32 hiddenItem;
    } bgUnion;
};

struct MapEvents
{
    u8 objectEventCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;
    const struct ObjectEventTemplate *objectEvents;
    const struct WarpEvent *warps;
    const struct CoordEvent *coordEvents;
    const struct BgEvent *bgEvents;
};

struct MapConnection
{
          u8 direction;
          u32 offset;
          u8 mapGroup;
          u8 mapNum;
};

struct MapConnections
{
    s32 count;
    const struct MapConnection *connections;
};

struct MapHeader
{
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;

               bool8 bikingAllowed;
               bool8 allowEscaping:1;
               bool8 allowRunning:1;
               bool8 showMapName:6;
               s8 floorNum;
               u8 battleType;
};

struct ObjectEvent
{
                    u32 active:1;
                    u32 singleMovementActive:1;
                    u32 triggerGroundEffectsOnMove:1;
                    u32 triggerGroundEffectsOnStop:1;
                    u32 disableCoveringGroundEffects:1;
                    u32 landingJump:1;
                    u32 heldMovementActive:1;
                    u32 heldMovementFinished:1;
                    u32 frozen:1;
                    u32 facingDirectionLocked:1;
                    u32 disableAnim:1;
                    u32 enableAnim:1;
                    u32 inanimate:1;
                    u32 invisible:1;
                    u32 offScreen:1;
                    u32 trackedByCamera:1;
                    u32 isPlayer:1;
                    u32 hasReflection:1;
                    u32 inShortGrass:1;
                    u32 inShallowFlowingWater:1;
                    u32 inSandPile:1;
                    u32 inHotSprings:1;
                    u32 hasShadow:1;
                    u32 spriteAnimPausedBackup:1;
                    u32 spriteAffineAnimPausedBackup:1;
                    u32 disableJumpLandingGroundEffect:1;
                    u32 fixedPriority:1;
                    u32 hideReflection:1;
                    u8 spriteId;
                    u8 graphicsId;
                    u8 movementType;
                    u8 trainerType;
                    u8 localId;
                    u8 mapNum;
                    u8 mapGroup;
                    u8 currentElevation:4;
                    u8 previousElevation:4;
                    struct Coords16 initialCoords;
                    struct Coords16 currentCoords;
                    struct Coords16 previousCoords;
                    u8 facingDirection:4;
                    u8 movementDirection:4;
                    u16 rangeX:4;
                    u16 rangeY:4;
                    u8 fieldEffectSpriteId;
                    u8 warpArrowSpriteId;
                    u8 movementActionId;
                    u8 trainerRange_berryTreeId;
                    u8 currentMetatileBehavior;
                    u8 previousMetatileBehavior;
                    u8 previousMovementDirection;
                    u8 directionSequenceIndex;
                    u8 playerCopyableMovement;

};

struct ObjectEventGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag;
             u16 reflectionPaletteTag;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_CONTROLLABLE,
    PLAYER_AVATAR_STATE_FORCED,
    PLAYER_AVATAR_STATE_DASH,
};
# 310 "include/global.fieldmap.h"
enum {
    PLAYER_AVATAR_GFX_NORMAL,
    PLAYER_AVATAR_GFX_BIKE,
    PLAYER_AVATAR_GFX_RIDE,
    PLAYER_AVATAR_GFX_FIELD_MOVE,
    PLAYER_AVATAR_GFX_FISH,
    PLAYER_AVATAR_GFX_VSSEEKER,
};

enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    COLLISION_NONE,
    COLLISION_OUTSIDE_RANGE,
    COLLISION_IMPASSABLE,
    COLLISION_ELEVATION_MISMATCH,
    COLLISION_OBJECT_EVENT,
    COLLISION_STOP_SURFING,
    COLLISION_LEDGE_JUMP,
    COLLISION_PUSHED_BOULDER,
    COLLISION_DIRECTIONAL_STAIR_WARP,
    COLLISION_WHEELIE_HOP,
    COLLISION_ISOLATED_VERTICAL_RAIL,
    COLLISION_ISOLATED_HORIZONTAL_RAIL,
    COLLISION_VERTICAL_RAIL,
    COLLISION_HORIZONTAL_RAIL,
    COLLISION_COUNT
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 transitionFlags;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 objectEventId;
             bool8 preventStep;
             u8 gender;

    u8 acroBikeState;
    u8 newDirBackup;
    u8 bikeFrameCounter;
    u8 bikeSpeed;
    u32 directionHistory;
    u32 abStartSelectHistory;
    u8 dirTimerHistory[8];

    u16 lastSpinTile;
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct ObjectEvent gObjectEvents[16];
extern u8 gSelectedObjectEvent;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 260 "include/global.h" 2
# 1 "include/global.berry.h" 1







struct Berry
{
    const u8 name[7];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    const u8 *description1;
    const u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};



struct Berry2
{
    u8 name[7];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};

struct EnigmaBerry
{
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[7];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 261 "include/global.h" 2
# 1 "include/pokemon.h" 1




# 1 "include/sprite.h" 1
# 13 "include/sprite.h"
struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};




struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 91 "include/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 145 "include/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};

struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             s16 x, y;
             s16 x2, y2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             u8 animPaused:1;
             u8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             u16 inUse:1;
             u16 coordOffsetEnabled:1;
             u16 invisible:1;
             u16 flags_3:1;
             u16 flags_4:1;
             u16 flags_5:1;
             u16 flags_6:1;
             u16 flags_7:1;
             u16 hFlip:1;
             u16 vFlip:1;
             u16 animBeginning:1;
             u16 affineAnimBeginning:1;
             u16 animEnded:1;
             u16 affineAnimEnded:1;
             u16 usingSheet:1;
             u16 anchored:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern const struct SpriteTemplate gDummySpriteTemplate;
extern struct Sprite gSprites[];
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;
extern u16 gReservedSpriteTileCount;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void AnimateSprite(struct Sprite *sprite);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
void FreeSpriteTilesIfNotUsingSheet(struct Sprite *sprite);
s16 AllocSpriteTiles(u16 tileCount);
void SetSpriteMatrixAnchor(struct Sprite* sprite, s16 xmod, s16 ymod);
# 6 "include/pokemon.h" 2
# 1 "include/constants/pokemon.h" 1
# 7 "include/pokemon.h" 2

struct PokemonSubstruct0
{
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
    u16 filler;
};

struct PokemonSubstruct1
{
    u16 moves[4];
    u8 pp[4];
};

struct PokemonSubstruct2
{
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
};

struct PokemonSubstruct3
{
            u8 pokerus;
            u8 metLocation;

            u16 metLevel:7;
            u16 metGame:4;
            u16 pokeball:4;
            u16 otGender:1;

            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 isEgg:1;
            u32 abilityNum:1;

            u32 coolRibbon:3;
            u32 beautyRibbon:3;
            u32 cuteRibbon:3;
            u32 smartRibbon:3;
            u32 toughRibbon:3;
            u32 championRibbon:1;
            u32 winningRibbon:1;
            u32 victoryRibbon:1;
            u32 artistRibbon:1;
            u32 effortRibbon:1;
            u32 marineRibbon:1;
            u32 landRibbon:1;
            u32 skyRibbon:1;
            u32 countryRibbon:1;
            u32 nationalRibbon:1;
            u32 earthRibbon:1;
            u32 worldRibbon:1;
            u32 unusedRibbons:4;







            u32 modernFatefulEncounter:1;
};
# 96 "include/pokemon.h"
union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[(((sizeof(struct PokemonSubstruct0)) >= (((sizeof(struct PokemonSubstruct1)) >= (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))) ? (sizeof(struct PokemonSubstruct1)) : (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))))) ? (sizeof(struct PokemonSubstruct0)) : (((sizeof(struct PokemonSubstruct1)) >= (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))) ? (sizeof(struct PokemonSubstruct1)) : (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))))))) / 2];
};

struct BoxPokemon
{
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 blockBoxRS:1;
    u8 unused:4;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;

    union
    {
        u32 raw[((((sizeof(struct PokemonSubstruct0)) >= (((sizeof(struct PokemonSubstruct1)) >= (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))) ? (sizeof(struct PokemonSubstruct1)) : (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))))) ? (sizeof(struct PokemonSubstruct0)) : (((sizeof(struct PokemonSubstruct1)) >= (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))) ? (sizeof(struct PokemonSubstruct1)) : (((sizeof(struct PokemonSubstruct2)) >= (sizeof(struct PokemonSubstruct3)) ? (sizeof(struct PokemonSubstruct2)) : (sizeof(struct PokemonSubstruct3)))))))) * 4) / 4];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
    struct BoxPokemon box;
    u32 status;
    u8 level;
    u8 mail;
    u16 hp;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
};

struct BattleTowerPokemon
{
             u16 species;
             u16 heldItem;
             u16 moves[4];
             u8 level;
             u8 ppBonuses;
             u8 hpEV;
             u8 attackEV;
             u8 defenseEV;
             u8 speedEV;
             u8 spAttackEV;
             u8 spDefenseEV;
             u32 otId;
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 gap:1;
             u32 abilityNum:1;
             u32 personality;
             u8 nickname[10 + 1];
             u8 friendship;
};

struct BattlePokemon
{
             u16 species;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 isEgg:1;
             u32 abilityNum:1;
             s8 statStages[(6 + 2)];
             u8 ability;
             u8 type1;
             u8 type2;
             u8 unknown;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[7 + 1];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct SpeciesInfo
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 types[2];
            u8 catchRate;
            u8 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 itemCommon;
            u16 itemRare;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroups[2];
            u8 abilities[2];
            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
};

struct BattleMove
{
    u8 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u8 flags;
};




struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct __attribute__((packed)) LevelUpMove
{
    u16 move:9;
    u16 level:7;
};

struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};
# 284 "include/pokemon.h"
extern const struct BattleMove gBattleMoves[];
extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern const struct SpeciesInfo gSpeciesInfo[];
extern const u8 *const gItemEffectTable[];
extern const u8 gStatStageRatios[][2];
extern struct SpriteTemplate gMultiuseSpriteTemplate;
extern struct PokemonStorage* gPokemonStoragePtr;
extern const u32 gExperienceTables[][100 + 1];
extern const u16 *const gLevelUpLearnsets[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct SpriteTemplate gSpriteTemplates_Battlers[];
extern const u8 gPPUpGetMask[];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void ConvertPokemonToBattleTowerPokemon(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
s32 CalculateBaseDamage(struct BattlePokemon *attacker, struct BattlePokemon *defender, u32 move, u16 sideStatus, u16 powerOverride, u8 typeOverride, u8 battlerIdAtk, u8 battlerIdDef);





u8 CountAliveMonsInBattle(u8 caseId);

u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
# 347 "include/pokemon.h"
u32 GetMonData();
u32 GetBoxMonData();


void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetAbilityBySpecies(u16 species, bool8 abilityNum);
u8 GetMonAbility(struct Pokemon *mon);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerNameIndex(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, bool8 usedByAI);
bool8 PokemonItemUseNoEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
const u8 *Battle_PrintStatBoosterEffectMessage(u16 itemId);
u8 GetNature(struct Pokemon *mon);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
u16 SpeciesToCryId(u16 species);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, bool8 isFrontPic);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
bool8 GetPlayerFlankId(void);
bool16 GetLinkTrainerFlankId(u8 linkPlayerId);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainer);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 party_bm);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
void ClearBattleMonForms(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsMonSpriteNotFlipped(u16 species);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
u8 *GetTrainerPartnerName(void);
u8 GetPlayerPartyHighestLevel(void);
u16 FacilityClassToPicIndex(u16 facilityClass);
bool8 ShouldIgnoreDeoxysForm(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 GetUnionRoomTrainerPic(void);
u16 GetUnionRoomTrainerClass(void);
void CreateEnemyEventMon(void);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
bool8 CheckBattleTypeGhost(struct Pokemon *mon, u8 bank);
struct MonSpritesGfxManager *CreateMonSpritesGfxManager(u8 battlePosition, u8 mode);
void DestroyMonSpritesGfxManager(void);
u8 *MonSpritesGfxManager_GetSpritePtr(u8 bufferId);
# 262 "include/global.h" 2

struct BattleTowerRecord
{
             u8 battleTowerLevelType;
             u8 trainerClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};

struct BattleTowerEReaderTrainer
{
                         u8 unk0;
                         u8 trainerClass;
                         u16 winStreak;
                         u8 name[8];
                         u8 trainerId[4];
                         u16 greeting[6];
                         u16 farewellPlayerLost[6];
                         u16 farewellPlayerWon[6];
                         struct BattleTowerPokemon party[3];
                         u32 checksum;
};

struct BattleTowerData
{
                       struct BattleTowerRecord playerRecord;
                       struct BattleTowerRecord records[5];
                       u16 firstMonSpecies;
                       u16 defeatedBySpecies;
                       u8 defeatedByTrainerName[8];
                       u8 firstMonNickname[10];
                       struct BattleTowerEReaderTrainer ereaderTrainer;
                       u8 battleTowerLevelType:1;
                       u8 unk_554:1;
                       u8 battleOutcome;
                       u8 var_4AE[2];
                       u16 curChallengeBattleNum[2];
                       u16 curStreakChallengesNum[2];
                       u16 recordWinStreaks[2];
                       u8 battleTowerTrainerId;
                       u8 selectedPartyMons[0x3];
                       u16 prizeItem;
                       u8 battledTrainerIds[6];
                       u16 totalBattleTowerWins;
                       u16 bestBattleTowerWinStreak;
                       u16 currentWinStreaks[2];
                       u8 lastStreakLevelType;
                       u8 filler_4D1[0x317];
};

struct SaveBlock2
{
              u8 playerName[7 + 1];
              u8 playerGender;
              u8 specialSaveWarpFlags;
              u8 playerTrainerId[4];
              u16 playTimeHours;
              u8 playTimeMinutes;
              u8 playTimeSeconds;
              u8 playTimeVBlanks;
              u8 optionsButtonMode;
              u16 optionsTextSpeed:3;
              u16 optionsWindowFrameType:5;
              u16 optionsSound:1;
              u16 optionsBattleStyle:1;
              u16 optionsBattleSceneOff:1;
              u16 regionMapZoom:1;
              struct Pokedex pokedex;
              u8 filler_90[0x8];
              struct Time localTimeOffset;
              struct Time lastBerryTreeUpdate;
              u32 gcnLinkFlags;
              bool8 unkFlag1;
              bool8 unkFlag2;
              struct BattleTowerData battleTower;
              u16 mapView[0x100];
              struct LinkBattleRecords linkBattleRecords;
              struct BerryCrush berryCrush;
              struct PokemonJumpRecords pokeJump;
              struct BerryPickingResults berryPick;
              u8 filler_B20[0x400];
              u32 encryptionKey;
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};


struct SecretBaseRecord
{
               u8 secretBaseId;
               u8 toRegister:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 unused;
               u8 decorations[16];
               u8 decorationPos[16];
               struct SecretBaseParty party;
};

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};


struct DewfordTrend
{
    u16 trendiness:7;
    u16 maxTrendiness:7;
    u16 gainingTrendiness:1;
    u16 rand;
    u16 words[2];
};

struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[7 + 1];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorIds[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct Mail
{
             u16 words[9];
             u8 playerName[7 + 1];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};

struct DayCareMail
{
    struct Mail message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u16 offspringPersonality;
    u8 stepCounter;
};


struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct QuestLogObjectEventTemplate
{
    u32 x:8;
    u32 negx:1;
    u32 y:8;
    u32 negy:1;
    u32 elevation:6;
    u32 movementType:8;
};

struct QuestLogObjectEvent
{
             u8 active:1;
             u8 triggerGroundEffectsOnStop:1;
             u8 disableCoveringGroundEffects:1;
             u8 landingJump:1;
             u8 frozen:1;
             u8 facingDirectionLocked:1;
             u8 disableAnim:1;
             u8 enableAnim:1;
             u8 inanimate:1;
             u8 invisible:1;
             u8 offScreen:1;
             u8 trackedByCamera:1;
             u8 isPlayer:1;
             u8 spriteAnimPausedBackup:1;
             u8 spriteAffineAnimPausedBackup:1;
             u8 disableJumpLandingGroundEffect:1;
             u8 fixedPriority:1;
             u8 facingDirection:4;
             u8 unused:3;
             u8 currentElevation:4;
             u8 previousElevation:4;
             u8 graphicsId;
             u8 movementType;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             s16 x;
             s16 y;
             u8 trainerRange_berryTreeId;
             u8 previousMetatileBehavior;
             u8 directionSequenceIndex;
             u8 animId;
};



struct QuestLogScene
{
               u8 startType;
               u8 mapGroup;
               u8 mapNum;
               u8 warpId;
               s16 x;
               s16 y;
               struct QuestLogObjectEvent objectEvents[16];
               u8 flags[((((((((0x500 + 1) + 768 - 1) + 1) + 0xFF) + 1)) / (8)) + ((((((((0x500 + 1) + 768 - 1) + 1) + 0xFF) + 1)) % (8)) ? 1 : 0))];
               u16 vars[(0x40FF - 0x4000 + 1)];
               struct QuestLogObjectEventTemplate objectEventTemplates[64];
               u16 script[128];
               u16 end[0];
};

# 1 "include/fame_checker.h" 1



# 1 "include/main.h" 1



typedef void (*MainCallback)(void);
typedef void (*IntrCallback)(void);
typedef void (*IntrFunc)(void);



extern IntrFunc gIntrTable[];

struct Main
{
              MainCallback callback1;
              MainCallback callback2;

              MainCallback savedCallback;

              IntrCallback vblankCallback;
              IntrCallback hblankCallback;
              IntrCallback vcountCallback;
              IntrCallback serialCallback;

              vu16 intrCheck;

              u32 *vblankCounter1;
              u32 vblankCounter2;

              u16 heldKeysRaw;
              u16 newKeysRaw;
              u16 heldKeys;
              u16 newKeys;
              u16 newAndRepeatedKeys;
              u16 keyRepeatCounter;
              bool16 watchedKeysPressed;
              u16 watchedKeysMask;

              struct OamData oamBuffer[128];

              u8 state;

              u8 oamLoadDisabled:1;
              u8 inBattle:1;
              u8 field_439_x4:1;
};

extern struct Main gMain;
extern bool8 gSoftResetDisabled;
extern bool8 gLinkVSyncDisabled;

extern const u8 gGameVersion;
extern const u8 gGameLanguage;

void AgbMain(void);
void SetMainCallback2(MainCallback callback);
void InitKeys(void);
void SetVBlankCallback(IntrCallback callback);
void SetHBlankCallback(IntrCallback callback);
void SetVCountCallback(IntrCallback callback);
void SetSerialCallback(IntrCallback callback);
void InitFlashTimer(void);
void DoSoftReset(void);
void ClearPokemonCrySongs(void);
void RestoreSerialTimer3IntrHandlers(void);
void SetVBlankCounter1Ptr(u32 *ptr);
void DisableVBlankCounter1(void);
void StartTimer1(void);
void SeedRngAndSetTrainerId(void);
u16 GetGeneratedTrainerIdLower(void);


extern const char RomHeaderGameCode[4];
extern const char RomHeaderSoftwareVersion;

extern u8 gLinkTransferringData;
extern u16 gKeyRepeatStartDelay;
# 5 "include/fame_checker.h" 2
# 1 "include/constants/fame_checker.h" 1
# 6 "include/fame_checker.h" 2

enum {
    FCWINDOWID_LIST,
    FCWINDOWID_UIHELP,
    FCWINDOWID_MSGBOX,
    FCWINDOWID_ICONDESC
};

extern struct ListMenuTemplate gFameChecker_ListMenuTemplate;
extern u8 gIconDescriptionBoxIsOpen;

void ResetFameChecker(void);
void FullyUnlockFameChecker(void);
void UseFameChecker(MainCallback savedCallback);
void SetFlavorTextFlagFromSpecialVars(void);
void UpdatePickStateFromSpecialVar8005(void);
# 619 "include/global.h" 2

struct FameCheckerSaveData
{
             u16 pickState:2;
    u16 flavorTextFlags:12;
    u16 unk_0_E:2;
};

struct WonderNewsMetadata
{
    u8 newsType:2;
    u8 sentRewardCounter:3;
    u8 rewardCounter:3;
    u8 berry;
};

struct WonderNews
{
    u16 id;
    u8 sendType;
    u8 bgType;
    u8 titleText[40];
    u8 bodyText[10][40];
};

struct WonderCard
{
    u16 flagId;
    u16 iconSpecies;
    u32 idNumber;
    u8 type:2;
    u8 bgType:4;
    u8 sendType:2;
    u8 maxStamps;
    u8 titleText[40];
    u8 subtitleText[40];
    u8 bodyText[4][40];
    u8 footerLine1Text[40];
    u8 footerLine2Text[40];
};

struct WonderCardMetadata
{
    u16 battlesWon;
    u16 battlesLost;
    u16 numTrades;
    u16 iconSpecies;
    u16 stampData[2][7];
};

struct MysteryGiftSave
{
    u32 newsCrc;
    struct WonderNews news;
    u32 cardCrc;
    struct WonderCard card;
    u32 cardMetadataCrc;
    struct WonderCardMetadata cardMetadata;
    u16 questionnaireWords[4];
    struct WonderNewsMetadata newsMetadata;
    u32 trainerIds[2][5];
};

struct TrainerTower
{
    u32 timer;
    u32 bestTime;
    u8 floorsCleared;
    u8 unk9;
    bool8 receivedPrize:1;
    bool8 checkedFinalTime:1;
    bool8 spokeToOwner:1;
    bool8 hasLost:1;
    bool8 unkA_4:1;
    bool8 validated:1;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};



struct ExternalEventData
{
    u8 unknownExternalDataFields1[7];
    u32 unknownExternalDataFields2:8;
    u32 currentPokeCoupons:24;
    u32 gotGoldPokeCouponTitleReward:1;
    u32 gotSilverPokeCouponTitleReward:1;
    u32 gotBronzePokeCouponTitleReward:1;
    u32 receivedAgetoCelebi:1;
    u32 unknownExternalDataFields3:4;
    u32 totalEarnedPokeCoupons:24;
    u8 unknownExternalDataFields4[5];
} __attribute__((packed));



struct ExternalEventFlags
{
    u8 usedBoxRS:1;
    u8 boxRSEggsUnlocked:2;
    u8 padding:5;
    u8 unknownFlag1;
    u8 receivedGCNJirachi;
    u8 unknownFlag3;
    u8 unknownFlag4;
    u8 unknownFlag5;
    u8 unknownFlag6;
    u8 unknownFlag7;
    u8 unknownFlag8;
    u8 unknownFlag9;
    u8 unknownFlag10;
    u8 unknownFlag11;
    u8 unknownFlag12;
    u8 unknownFlag13;
    u8 unknownFlag14;
    u8 unknownFlag15;
    u8 unknownFlag16;
    u8 unknownFlag17;
    u8 unknownFlag18;
    u8 unknownFlag19;
    u8 unknownFlag20;

} __attribute__((packed));

struct SaveBlock1
{
               struct Coords16 pos;
               struct WarpData location;
               struct WarpData continueGameWarp;
               struct WarpData dynamicWarp;
               struct WarpData lastHealLocation;
               struct WarpData escapeWarp;
               u16 savedMusic;
               u8 weather;
               u8 weatherCycleStage;
               u8 flashLevel;
               u16 mapLayoutId;
               u8 playerPartyCount;
               struct Pokemon playerParty[6];
               u32 money;
               u16 coins;
               u16 registeredItem;
               struct ItemSlot pcItems[30];
               struct ItemSlot bagPocket_Items[42];
               struct ItemSlot bagPocket_KeyItems[30];
               struct ItemSlot bagPocket_PokeBalls[13];
               struct ItemSlot bagPocket_TMHM[58];
               struct ItemSlot bagPocket_Berries[43];
               u8 seen1[(((413) / (8)) + (((413) % (8)) ? 1 : 0))];
               u16 berryBlenderRecords[3];
               u8 unused_632[6];
               u16 trainerRematchStepCounter;
               u8 __attribute__((aligned(2))) trainerRematches[100];
               struct ObjectEvent objectEvents[16];
               struct ObjectEventTemplate objectEventTemplates[64];
               u8 flags[((((((((0x500 + 1) + 768 - 1) + 1) + 0xFF) + 1)) / (8)) + ((((((((0x500 + 1) + 768 - 1) + 1) + 0xFF) + 1)) % (8)) ? 1 : 0))];
               u16 vars[(0x40FF - 0x4000 + 1)];
               u32 gameStats[64];
               struct QuestLogScene questLog[4];
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct Mail mail[(6 + 10)];
               u8 additionalPhrases[(((33) / (8)) + (((33) % (8)) ? 1 : 0))];
               OldMan oldMan;
               struct DewfordTrend dewfordTrends[5];
               struct DayCare daycare;
               u8 giftRibbons[11];
               struct ExternalEventData externalEventData;
               struct ExternalEventFlags externalEventFlags;
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct MysteryGiftSave mysteryGift;
               u8 unused_348C[400];
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               u8 seen2[(((413) / (8)) + (((413) % (8)) ? 1 : 0))];
               u8 rivalName[7 + 1];
               struct FameCheckerSaveData fameChecker[16];
               u8 unused_3A94[64];
               u8 registeredTexts[10][21];
               struct TrainerNameRecord trainerNameRecords[20];
               struct DaycareMon route5DayCareMon;
               u8 unused_3D24[16];
               u32 towerChallengeId;
               struct TrainerTower trainerTower[4];
};

struct MapPosition
{
    s16 x;
    s16 y;
    s8 elevation;
};

extern struct SaveBlock1* gSaveBlock1Ptr;
extern u8 gReservedSpritePaletteCount;
# 2 "src/quest_log_events.c" 2
# 1 "include/gflib.h" 1





# 1 "include/bg.h" 1





struct BGCntrlBitfield
{
    volatile u16 priority:2;
    volatile u16 charBaseBlock:2;
    volatile u16 field_0_2:4;
    volatile u16 field_1_0:5;
    volatile u16 areaOverflowMode:1;
    volatile u16 screenSize:2;
};

enum
{
    BG_CTRL_ATTR_VISIBLE = 1,
    BG_CTRL_ATTR_CHARBASEINDEX = 2,
    BG_CTRL_ATTR_MAPBASEINDEX = 3,
    BG_CTRL_ATTR_SCREENSIZE = 4,
    BG_CTRL_ATTR_PALETTEMODE = 5,
    BG_CTRL_ATTR_PRIORITY = 6,
    BG_CTRL_ATTR_MOSAIC = 7,
    BG_CTRL_ATTR_WRAPAROUND = 8,
};

enum
{
    BG_ATTR_CHARBASEINDEX = 1,
    BG_ATTR_MAPBASEINDEX = 2,
    BG_ATTR_SCREENSIZE = 3,
    BG_ATTR_PALETTEMODE = 4,
    BG_ATTR_MOSAIC = 5,
    BG_ATTR_WRAPAROUND = 6,
    BG_ATTR_PRIORITY = 7,
    BG_ATTR_MAPSIZE = 8,
    BG_ATTR_BGTYPE = 9,
    BG_ATTR_BASETILE = 10
};


enum {
    BG_COORD_SET,
    BG_COORD_ADD,
    BG_COORD_SUB,
};

enum AdjustBgMosaicMode
{
    BG_MOSAIC_SET,
    BG_MOSAIC_SET_H,
    BG_MOSAIC_INC_H,
    BG_MOSAIC_DEC_H,
    BG_MOSAIC_SET_V,
    BG_MOSAIC_INC_V,
    BG_MOSAIC_DEC_V,
};

enum BgTileAllocMode
{
    BG_TILE_FIND_FREE_SPACE,
    BG_TILE_ALLOC,
    BG_TILE_FREE,
};

struct BgTemplate
{
    u16 bg:2;
    u16 charBaseIndex:2;
    u16 mapBaseIndex:5;
    u16 screenSize:2;
    u16 paletteMode:1;
    u16 priority:2;
    u16 baseTile:10;
};

void ResetBgs(void);
u8 GetBgMode(void);
void ResetBgControlStructs(void);
void Unused_ResetBgControlStruct(u8 bg);
void SetBgControlAttributes(u8 bg, u8 charBaseIndex, u8 mapBaseIndex, u8 screenSize, u8 paletteMode, u8 priority, u8 mosaic, u8 wraparound);
u16 GetBgControlAttribute(u8 bg, u8 attributeId);
u8 LoadBgVram(u8 bg, const void *src, u16 size, u16 destOffset, u8 mode);
void SetTextModeAndHideBgs(void);
bool8 IsInvalidBg(u8 bg);
int BgTileAllocOp(int bg, int offset, int count, int mode);
void ResetBgsAndClearDma3BusyFlags(bool32 enableWindowTileAutoAlloc);
void InitBgsFromTemplates(u8 bgMode, const struct BgTemplate *templates, u8 numTemplates);
void InitBgFromTemplate(const struct BgTemplate *template);
void SetBgMode(u8 bgMode);
u16 LoadBgTiles(u8 bg, const void *src, u16 size, u16 destOffset);
u16 LoadBgTilemap(u8 bg, const void *src, u16 size, u16 destOffset);
u16 Unused_LoadBgPalette(u8 bg, const void *src, u16 size, u16 destOffset);
bool8 IsDma3ManagerBusyWithBgCopy(void);
void ShowBg(u8 bg);
void HideBg(u8 bg);
void SetBgAttribute(u8 bg, u8 attributeId, u8 value);
u16 GetBgAttribute(u8 bg, u8 attributeId);
u32 ChangeBgX(u8 bg, u32 value, u8 op);
u32 GetBgX(u8 bg);
u32 ChangeBgY(u8 bg, u32 value, u8 op);
u32 ChangeBgY_ScreenOff(u8 bg, u32 value, u8 op);
u32 GetBgY(u8 bg);
void SetBgAffine(u8 bg, u32 srcCenterX, u32 srcCenterY, s16 dispCenterX, s16 dispCenterY, s16 scaleX, s16 scaleY, u16 rotationAngle);
u8 AdjustBgMosaic(u8 value, u8 mode);
void SetBgTilemapBuffer(u8 bg, void *tilemap);
void UnsetBgTilemapBuffer(u8 bg);
void *GetBgTilemapBuffer(u8 bg);
void CopyToBgTilemapBuffer(u8 bg, const void *src, u16 mode, u16 destOffset);
void CopyBgTilemapBufferToVram(u8 bg);
void CopyToBgTilemapBufferRect(u8 bg, const void *src, u8 destX, u8 destY, u8 width, u8 height);
void CopyToBgTilemapBufferRect_ChangePalette(u8 bg, const void *src, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, u8 palette);
void CopyRectToBgTilemapBufferRect(u8 bg, const void *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, u8 palette1, s16 tileOffset, s16 palette2);
void FillBgTilemapBufferRect_Palette0(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height);
void FillBgTilemapBufferRect(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height, u8 palette);
void WriteSequenceToBgTilemapBuffer(u8 bg, u16 firstTileNum, u8 x, u8 y, u8 width, u8 height, u8 paletteSlot, s16 tileNumDelta);
u16 GetBgMetricTextMode(u8 bg, u8 whichMetric);
u32 GetBgMetricAffineMode(u8 bg, u8 whichMetric);
u32 GetTileMapIndexFromCoords(s32 x, s32 y, s32 screenSize, u32 screenWidth, u32 screenHeight);
void CopyTileMapEntry(const u16 *src, u16 *dest, s32 palette1, s32 tileOffset, s32 palette2);
u32 GetBgType(u8 bg);
bool32 IsInvalidBg32(u8 bg);
bool32 IsTileMapOutsideWram(u8 bg);

extern bool32 gWindowTileAutoAllocEnabled;
# 7 "include/gflib.h" 2
# 1 "include/palette.h" 1
# 29 "include/palette.h"
enum
{
    FAST_FADE_IN_FROM_WHITE,
    FAST_FADE_OUT_TO_WHITE,
    FAST_FADE_IN_FROM_BLACK,
    FAST_FADE_OUT_TO_BLACK,
};

struct PaletteFadeControl
{
    u32 multipurpose1;
    u8 delayCounter:6;
    u16 y:5;
    u16 targetY:5;
    u16 blendColor:15;
    u16 active:1;
    u16 multipurpose2:6;
    u16 yDec:1;
    u16 bufferTransferDisabled:1;
    u16 mode:2;
    u16 shouldResetBlendRegisters:1;
    u16 hardwareFadeFinishing:1;
    u16 softwareFadeFinishingCounter:5;
    u16 softwareFadeFinishing:1;
    u16 objPaletteToggle:1;
    u8 deltaY:4;
    u32 unused;
};

extern struct PaletteFadeControl gPaletteFade;
extern u32 gPlttBufferTransferPending;
extern u16 gPlttBufferUnfaded[((0x200 + 0x200) / sizeof(u16))];
extern u16 gPlttBufferFaded[((0x200 + 0x200) / sizeof(u16))];

void LoadCompressedPalette(const u32 *src, u16 offset, u16 size);
void LoadPalette(const void *src, u16 offset, u16 size);
void FillPalette(u16 value, u16 offset, u16 size);
void TransferPlttBuffer(void);
u8 UpdatePaletteFade(void);
void ResetPaletteFade(void);
void ReadPlttIntoBuffers(void);
bool8 BeginNormalPaletteFade(u32 selectedPalettes, s8 delay, u8 startY, u8 targetY, u16 blendColor);
void ResetPaletteFadeControl(void);
void InvertPlttBuffer(u32 selectedPalettes);
void TintPlttBuffer(u32 selectedPalettes, s8 r, s8 g, s8 b);
void UnfadePlttBuffer(u32 selectedPalettes);
void BeginFastPaletteFade(u8 submode);
void BeginHardwarePaletteFade(u8 blendCnt, u8 delay, u8 y, u8 targetY, u8 shouldResetBlendRegisters);
void BlendPalettes(u32 selectedPalettes, u8 coeff, u16 color);
void BlendPalettesUnfaded(u32 selectedPalettes, u8 coeff, u16 color);
void TintPalette_GrayScale(u16 *palette, u16 count);
void TintPalette_GrayScale2(u16 *palette, u16 count);
void TintPalette_SepiaTone(u16 *palette, u16 count);
void TintPalette_CustomTone(u16 *palette, u16 count, u16 rTone, u16 gTone, u16 bTone);
void PaletteStruct_ResetById(u16 id);
void CopyPaletteInvertedTint(const u16 *src, u16 *dst, u16 count, u8 tone);
void BlendPalettesGradually(u32 selectedPalettes, s8 delay, u8 coeff, u8 coeffTarget, u16 color, u8 priority, u8 id);
bool32 IsBlendPalettesGraduallyTaskActive(u8 var);
void DestroyBlendPalettesGraduallyTask(void);

static inline void SetBackdropFromColor(u16 color)
{
  FillPalette(color, 0, ((1) * sizeof(u16)));
}

static inline void SetBackdropFromPalette(const u16 *palette)
{
  LoadPalette(palette, 0, ((1) * sizeof(u16)));
}
# 8 "include/gflib.h" 2
# 1 "include/gpu_regs.h" 1
# 11 "include/gpu_regs.h"
void InitGpuRegManager(void);
void CopyBufferedValuesToGpuRegs(void);
void SetGpuReg(u8 regOffset, u16 value);
void SetGpuReg_ForcedBlank(u8 regOffset, u16 value);
u16 GetGpuReg(u8 regOffset);
void SetGpuRegBits(u8 regOffset, u16 mask);
void ClearGpuRegBits(u8 regOffset, u16 mask);
void EnableInterrupts(u16 mask);
void DisableInterrupts(u16 mask);
# 9 "include/gflib.h" 2
# 1 "include/dma3.h" 1
# 60 "include/dma3.h"
void ClearDma3Requests(void);


void ProcessDma3Requests(void);




s16 RequestDma3Copy(const void *src, void *dest, u16 size, u8 mode);




s16 RequestDma3Fill(s32 value, void *dest, u16 size, u8 mode);





s16 WaitDma3Request(s16 index);
# 10 "include/gflib.h" 2
# 1 "include/malloc.h" 1
# 19 "include/malloc.h"
extern u8 gHeap[];
void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 11 "include/gflib.h" 2
# 1 "include/sound.h" 1





void InitMapMusic(void);
void MapMusicMain(void);
void ResetMapMusic(void);
u16 GetCurrentMapMusic(void);
void PlayNewMapMusic(u16 songNum);
void StopMapMusic(void);
void FadeOutMapMusic(u8 speed);
void FadeOutAndPlayNewMapMusic(u16 songNum, u8 speed);
void FadeOutAndFadeInNewMapMusic(u16 songNum, u8 fadeOutSpeed, u8 fadeInSpeed);
bool8 IsNotWaitingForBGMStop(void);
void PlayFanfareByFanfareNum(u8 fanfareNum);
bool8 WaitFanfare(bool8 stop);
void StopFanfareByFanfareNum(u8 fanfareNum);
void PlayFanfare(u16 songNum);
bool8 IsFanfareTaskInactive(void);
void FadeInNewBGM(u16 songNum, u8 speed);
void FadeOutBGMTemporarily(u8 speed);
bool8 IsBGMPausedOrStopped(void);
void FadeInBGM(u8 speed);
void FadeOutBGM(u8 speed);
bool8 IsBGMStopped(void);
void PlayCry_Normal(u16 species, s8 pan);
void PlayCry_NormalNoDucking(u16 species, s8 pan, s8 volume, u8 priority);
void PlayCry_ByMode(u16 species, s8 pan, u8 mode);
void PlayCry_ReleaseDouble(u16 species, s8 pan, u8 mode);
void PlayCry_Script(u16 species, u8 mode);
void PlayCryInternal(u16 species, s8 pan, s8 volume, u8 priority, u8 mode);
bool8 IsCryFinished(void);
void StopCryAndClearCrySongs(void);
void StopCry(void);
bool8 IsCryPlayingOrClearCrySongs(void);
bool8 IsCryPlaying(void);
void PlayBGM(u16 songNum);
void PlaySE(u16 songNum);
void PlaySE12WithPanning(u16 songNum, s8 pan);
void PlaySE1WithPanning(u16 songNum, s8 pan);
void PlaySE2WithPanning(u16 songNum, s8 pan);
void SE12PanpotControl(s8 pan);
bool8 IsSEPlaying(void);
bool8 IsBGMPlaying(void);
bool8 IsSpecialSEPlaying(void);
void SetBGMVolume_SuppressHelpSystemReduction(u16 volume);
void BGMVolumeMax_EnableHelpSystemReduction(void);
# 12 "include/gflib.h" 2
# 1 "include/text.h" 1




# 1 "include/characters.h" 1
# 6 "include/text.h" 2
# 15 "include/text.h"
enum {
    FONT_SMALL,
    FONT_NORMAL_COPY_1,
    FONT_NORMAL,
    FONT_NORMAL_COPY_2,
    FONT_MALE,
    FONT_FEMALE,
    FONT_BRAILLE,
    FONT_BOLD,
};


enum {
    RENDER_PRINT,
    RENDER_FINISH,
    RENDER_REPEAT,
    RENDER_UPDATE,
};


enum {
    RENDER_STATE_HANDLE_CHAR,
    RENDER_STATE_WAIT,
    RENDER_STATE_CLEAR,
    RENDER_STATE_SCROLL_START,
    RENDER_STATE_SCROLL,
    RENDER_STATE_WAIT_SE,
    RENDER_STATE_PAUSE,
};

enum
{
    FONTATTR_MAX_LETTER_WIDTH,
    FONTATTR_MAX_LETTER_HEIGHT,
    FONTATTR_LETTER_SPACING,
    FONTATTR_LINE_SPACING,
    FONTATTR_UNKNOWN,
    FONTATTR_COLOR_FOREGROUND,
    FONTATTR_COLOR_BACKGROUND,
    FONTATTR_COLOR_SHADOW
};

struct GlyphInfo
{
    u8 pixels[0x80];
    u8 width;
    u8 height;
};

extern struct GlyphInfo gGlyphInfo;

struct TextPrinterSubStruct
{
    u8 glyphId:4;
    bool8 hasPrintBeenSpedUp:1;
    u8 font_type_5:3;
    u8 downArrowDelay:5;
    u8 downArrowYPosIdx:2;
    u8 hasGlyphIdBeenSet:1;
    u8 autoScrollDelay;
};

struct TextPrinterTemplate
{
    const u8 *currentChar;
    u8 windowId;
    u8 fontId;
    u8 x;
    u8 y;
    u8 currentX;
    u8 currentY;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

struct TextPrinter
{
    struct TextPrinterTemplate printerTemplate;
    void (*callback)(struct TextPrinterTemplate *, u16);
    union __attribute__((packed)) {
        struct TextPrinterSubStruct sub;
        u8 fields[7];
    } subUnion;
    u8 active;
    u8 state;
    u8 textSpeed;
    u8 delayCounter;
    u8 scrollDistance;
    u8 minLetterSpacing;
    u8 japanese;
};

struct FontInfo
{
    u16 (*fontFunction)(struct TextPrinter *x);
    u8 maxLetterWidth;
    u8 maxLetterHeight;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

extern const struct FontInfo *gFonts;

struct GlyphWidthFunc
{
    u32 fontId;
    s32 (*func)(u16 glyphId, bool32 isJapanese);
};

typedef struct {
    u8 canABSpeedUpPrint:1;
    u8 useAlternateDownArrow:1;
    u8 autoScroll:1;
    u8 forceMidTextSpeed:1;
} TextFlags;

extern TextFlags gTextFlags;

extern u8 gStringVar1[];
extern u8 gStringVar2[];
extern u8 gStringVar3[];
extern u8 gStringVar4[];

extern const u8 gKeypadIconTiles[];

void SetFontsPointer(const struct FontInfo *fonts);
void DeactivateAllTextPrinters(void);
u16 AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
bool16 AddTextPrinter(struct TextPrinterTemplate *textSubPrinter, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
void RunTextPrinters(void);
bool16 IsTextPrinterActive(u8 id);
u32 RenderFont(struct TextPrinter *textPrinter);
void GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor);
void SaveTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void RestoreTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void DecompressGlyphTile(const u16 *src, u16 *dest);
u8 GetLastTextColor(u8 colorType);
void CopyGlyphToWindow(struct TextPrinter *x);
void ClearTextSpan(struct TextPrinter *textPrinter, u32 width);

u16 FontFunc_Small(struct TextPrinter *textPrinter);
u16 FontFunc_NormalCopy1(struct TextPrinter *textPrinter);
u16 FontFunc_Normal(struct TextPrinter *textPrinter);
u16 FontFunc_NormalCopy2(struct TextPrinter *textPrinter);
u16 FontFunc_Male(struct TextPrinter *textPrinter);
u16 FontFunc_Female(struct TextPrinter *textPrinter);
u16 FontFunc_Braille(struct TextPrinter *textPrinter);

void TextPrinterInitDownArrowCounters(struct TextPrinter *textPrinter);
void TextPrinterDrawDownArrow(struct TextPrinter *textPrinter);
void TextPrinterClearDownArrow(struct TextPrinter *textPrinter);
bool8 TextPrinterWaitAutoMode(struct TextPrinter *textPrinter);
bool16 TextPrinterWaitWithDownArrow(struct TextPrinter *textPrinter);
bool16 TextPrinterWait(struct TextPrinter *textPrinter);
void DrawDownArrow(u8 windowId, u16 x, u16 y, u8 bgColor, bool8 drawArrow, u8 *counter, u8 *yCoordIndex);
u16 RenderText(struct TextPrinter *textPrinter);
s32 (*GetFontWidthFunc(u8 glyphId))(u16, bool32);
s32 GetStringWidth(u8 fontId, const u8 *str, s16 letterSpacing);
u8 RenderTextHandleBold(u8 *pixels, u8 fontId, u8 *str, int a3, int a4, int a5, int a6, int a7);
u8 DrawKeypadIcon(u8 windowId, u8 keypadIconId, u16 x, u16 y);
u8 GetKeypadIconTileOffset(u8 keypadIconId);
u8 GetKeypadIconWidth(u8 keypadIconId);
u8 GetKeypadIconHeight(u8 keypadIconId);
u8 GetFontAttribute(u8 fontId, u8 attributeId);
u8 GetMenuCursorDimensionByFont(u8 fontId, u8 whichDimension);
void DecompressGlyph_Small(u16 glyphId, bool32 isJapanese);
void DecompressGlyph_Normal(u16 glyphId, bool32 isJapanese);
void DecompressGlyph_Female(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidth_Braille(u16 font_type, bool32 isJapanese);
u8 CreateTextCursorSprite(u8 sheetId, u16 x, u16 y, u8 priority, u8 subpriority);
void DestroyTextCursorSprite(u8 spriteId);
# 13 "include/gflib.h" 2

# 1 "include/window.h" 1







enum
{
    WINDOW_BG,
    WINDOW_TILEMAP_LEFT,
    WINDOW_TILEMAP_TOP,
    WINDOW_WIDTH,
    WINDOW_HEIGHT,
    WINDOW_PALETTE_NUM,
    WINDOW_BASE_BLOCK,
    WINDOW_TILE_DATA
};


enum {
    COPYWIN_NONE,
    COPYWIN_MAP,
    COPYWIN_GFX,
    COPYWIN_FULL,
};

struct WindowTemplate
{
    u8 bg;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseBlock;
};
# 54 "include/window.h"
struct Window
{
    struct WindowTemplate window;
    u8 *tileData;
};

typedef void (*WindowFunc)(u8 bg, u8 tilemapLeft, u8 tilemapTop, u8 width, u8 height, u8 paletteNum);

bool16 InitWindows(const struct WindowTemplate *templates);
u16 AddWindow(const struct WindowTemplate *template);
int AddWindowWithoutTileMap(const struct WindowTemplate *template);
void RemoveWindow(u8 windowId);
void FreeAllWindowBuffers(void);

void CopyWindowToVram(u8 windowId, u8 mode);
void CopyWindowToVram8Bit(u8 windowId, u8 mode);

void PutWindowTilemap(u8 windowId);
void PutWindowRectTilemapOverridePalette(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 palette);
void ClearWindowTilemap(u8 windowId);
void PutWindowRectTilemap(u8 windowId, u8 x, u8 y, u8 width, u8 height);
void BlitBitmapToWindow(u8 windowId, const u8 *pixels, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight);
void FillWindowPixelRect(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void CopyToWindowPixelBuffer(u8 windowId, const void *src, u16 size, u16 tileOffset);
void FillWindowPixelBuffer(u8 windowId, u8 fillValue);
void ScrollWindow(u8 windowId, u8 direction, u8 distance, u8 fillValue);
void CallWindowFunction(u8 windowId, WindowFunc func);
bool8 SetWindowAttribute(u8 windowId, u8 attributeId, u32 value);
u32 GetWindowAttribute(u8 windowId, u8 attributeId);
u16 AddWindow8Bit(const struct WindowTemplate *template);
void FillWindowPixelBuffer8Bit(u8 windowId, u8 fillValue);
void FillWindowPixelRect8Bit(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow4BitTo8Bit(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight, u8 paletteNum);

extern void *gWindowBgTilemapBuffers[];
extern struct Window gWindows[];
# 15 "include/gflib.h" 2
# 1 "include/blit.h" 1



struct Bitmap
{
    u8 *pixels;
    u32 width:16;
    u32 height:16;
};

void BlitBitmapRect4BitWithoutColorKey(const struct Bitmap *src, struct Bitmap *dst, u16 srcX, u16 srcY, u16 dstX, u16 dstY, u16 width, u16 height);
void BlitBitmapRect4Bit(const struct Bitmap *src, struct Bitmap *dst, u16 srcX, u16 srcY, u16 dstX, u16 dstY, u16 width, u16 height, u8 colorKey);
void FillBitmapRect4Bit(struct Bitmap *surface, u16 x, u16 y, u16 width, u16 height, u8 fillValue);
void BlitBitmapRect4BitTo8Bit(const struct Bitmap *src, struct Bitmap *dst, u16 srcX, u16 srcY, u16 dstX, u16 dstY, u16 width, u16 height, u8 colorKey, u8 paletteOffset);
void FillBitmapRect8Bit(struct Bitmap *surface, u16 x, u16 y, u16 width, u16 height, u8 fillValue);
# 16 "include/gflib.h" 2
# 1 "include/string_util.h" 1





enum StringConvertMode
{
    STR_CONV_MODE_LEFT_ALIGN,
    STR_CONV_MODE_RIGHT_ALIGN,
    STR_CONV_MODE_LEADING_ZEROS
};

u8 *StringCopy_Nickname(u8 *dest, const u8 *src);
u8 *StringGet_Nickname(u8 *str);
u8 *StringCopy_PlayerName(u8 *dest, const u8 *src);
u8 *StringCopy(u8 *dest, const u8 *src);
u8 *StringAppend(u8 *dest, const u8 *src);
u8 *StringCopyN(u8 *dest, const u8 *src, u8 n);
u8 *StringAppendN(u8 *dest, const u8 *src, u8 n);
u16 StringLength(const u8 *str);
s32 StringCompare(const u8 *str1, const u8 *str2);
s32 StringCompareN(const u8 *str1, const u8 *str2, u32 n);
bool8 IsStringLengthAtLeast(const u8 *str, s32 n);
u8 *ConvertIntToDecimalStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertUIntToDecimalStringN(u8 *dest, u32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertIntToHexStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *StringExpandPlaceholders(u8 *dest, const u8 *src);
u8 *StringBraille(u8 *dest, const u8 *src);
u8 *GetExpandedPlaceholder(u32 id);
u8 *StringFill(u8 *dest, u8 c, u16 n);
u8 *StringCopyPadded(u8 *dest, const u8 *src, u8 c, u16 n);
u8 *StringFillWithTerminator(u8 *dest, u16 n);
u8 *StringCopyN_Multibyte(u8 *dest, const u8 *src, u32 n);
u32 StringLength_Multibyte(const u8 *str);
u8 *WriteColorChangeControlCode(u8 *dest, u32 colorType, u8 color);
bool32 IsStringJapanese(u8 *str);
u8 GetExtCtrlCodeLength(u8 code);
s32 StringCompareWithoutExtCtrlCodes(const u8 *str1, const u8 *str2);
void ConvertInternationalString(u8 *s, u8 language);
void StripExtCtrlCodes(u8 *str);
# 17 "include/gflib.h" 2
# 3 "src/quest_log_events.c" 2
# 1 "include/battle.h" 1



# 1 "tools/agbcc/include/limits.h" 1
# 5 "include/battle.h" 2

# 1 "include/constants/battle.h" 1
# 7 "include/battle.h" 2
# 1 "include/constants/battle_script_commands.h" 1
# 8 "include/battle.h" 2
# 1 "include/battle_util.h" 1
# 61 "include/battle_util.h"
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingImprison(u8 attacker);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void MarkBattlerForControllerExec(u8 battlerId);
void MarkBattlerReceivedLinkData(u8 battlerId);
void CancelMultiTurnMoves(u8 battler);
bool8 WasUnableToUseMove(u8 battler);
void PrepareStringBattle(u16 stringId, u8 battler);
void ResetSentPokesToOpponentValue(void);
void OpponentSwitchInResetSentPokesToOpponentValue(u8 battler);
void UpdateSentPokesToOpponentValue(u8 battler);
void BattleScriptPush(const u8 *bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
u8 CheckMoveLimitations(u8 battlerId, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battlerId, u16 move);
u8 DoFieldEndTurnEffects(void);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageStatuses(void);
u8 AtkCanceller_UnableToUseMove(void);
bool8 HasNoMonsToSwitch(u8 battler, u8 partyIdBattlerOn1, u8 partyIdBattlerOn2);
u8 CastformDataTypeChange(u8 battler);
u8 AbilityBattleEffects(u8 caseID, u8 battler, u8 ability, u8 special, u16 moveArg);
void BattleScriptExecute(const u8 *BS_ptr);
void BattleScriptPushCursorAndCallback(const u8 *BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battlerId, bool8 moveTurn);
void ClearFuryCutterDestinyBondGrudge(u8 battlerId);
void HandleAction_RunBattleScript(void);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);
# 9 "include/battle.h" 2
# 1 "include/battle_script_commands.h" 1
# 10 "include/battle_script_commands.h"
void AI_CalcDmg(u8 attacker, u8 defender);
u8 TypeCalc(u16 move, u8 attacker, u8 defender);
u8 AI_TypeCalc(u16 move, u16 targetSpecies, u8 targetAbility);
u8 GetBattlerTurnOrderNum(u8 battlerId);
void SetMoveEffect(bool8 primary, u8 certain);
bool32 IsMonGettingExpSentOut(void);
void BattleDestroyYesNoCursorAt(void);
void BattleCreateYesNoCursorAt(void);
void BufferMoveToLearnIntoBattleTextBuff2(void);
void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags);
bool8 UproarWakeUpCheck(u8 battlerId);

extern void (* const gBattleScriptingCommandsTable[])(void);
# 10 "include/battle.h" 2
# 1 "include/battle_main.h" 1



# 1 "include/constants/abilities.h" 1
# 5 "include/battle_main.h" 2

struct TrainerMoney
{
    u8 classId;
    u8 value;
};

struct MultiBattlePokemonTx
{
             u16 species;
             u16 heldItem;
             u8 nickname[10 + 1];
             u8 level;
             u16 hp;
             u16 maxhp;
             u32 status;
             u32 personality;
             u8 gender;
             u8 language;
};
# 48 "include/battle_main.h"
extern const struct SpriteTemplate gUnknownDebugSprite;
extern const struct OamData gOamData_BattlerOpponent;
extern const struct OamData gOamData_BattlerPlayer;
extern const u8 gTypeNames[][6 + 1];
extern const u8 gStatusConditionString_PoisonJpn[8];
extern const u8 gStatusConditionString_SleepJpn[8];
extern const u8 gStatusConditionString_ParalysisJpn[8];
extern const u8 gStatusConditionString_BurnJpn[8];
extern const u8 gStatusConditionString_IceJpn[8];
extern const u8 gStatusConditionString_ConfusionJpn[8];
extern const u8 gStatusConditionString_LoveJpn[8];
extern const u8 *const gStatusConditionStringsTable[7][2];
extern const u8 gTypeEffectiveness[336];
extern const struct TrainerMoney gTrainerMoneyTable[];
extern const u8 *const gAbilityDescriptionPointers[78];
extern const u8 gAbilityNames[78][12 + 1];

void CB2_InitBattle(void);
void BattleMainCB2(void);
void FreeRestoreBattleData(void);
void VBlankCB_Battle(void);
void SpriteCB_VsLetterDummy(struct Sprite *sprite);
void SpriteCB_VsLetterInit(struct Sprite *sprite);
void CB2_InitEndLinkBattle(void);
u32 GetBattleBgTemplateData(u8 arrayId, u8 caseId);
void SpriteCB_EnemyMon(struct Sprite *sprite);
void SpriteCallbackDummy_2(struct Sprite *sprite);
void SpriteCB_FaintOpponentMon(struct Sprite *sprite);
void SpriteCB_ShowAsMoveTarget(struct Sprite *sprite);
void SpriteCB_HideAsMoveTarget(struct Sprite *sprite);
void SpriteCB_AllyMon(struct Sprite *sprite);
void SetIdleSpriteCallback(struct Sprite *sprite);
void SpriteCB_FaintSlideAnim(struct Sprite *sprite);
void DoBounceEffect(u8 battler, u8 which, s8 delta, s8 amplitude);
void EndBounceEffect(u8 battler, u8 which);
void SpriteCB_PlayerThrowInit(struct Sprite *sprite);
void UpdatePlayerPosInThrowAnim(struct Sprite *sprite);
void BeginBattleIntroDummy(void);
void BeginBattleIntro(void);
void SwitchInClearSetData(void);
void FaintClearSetData(void);
void BattleTurnPassed(void);
u8 IsRunningFromBattleImpossible(void);
void UpdatePartyOwnerOnSwitch_NonMulti(u8 battler);
void SwapTurnOrder(u8 id1, u8 id2);
u8 GetWhoStrikesFirst(u8 battler1, u8 battler2, bool8 ignoreChosenMoves);
void RunBattleScriptCommands_PopCallbacksStack(void);
void RunBattleScriptCommands(void);
bool8 TryRunFromBattle(u8 battler);
# 11 "include/battle.h" 2
# 1 "include/battle_ai_switch_items.h" 1





enum {
    AI_ITEM_FULL_RESTORE = 1,
    AI_ITEM_HEAL_HP,
    AI_ITEM_CURE_CONDITION,
    AI_ITEM_X_STAT,
    AI_ITEM_GUARD_SPECS,
    AI_ITEM_NOT_RECOGNIZABLE
};

enum {
    AI_HEAL_CONFUSION,
    AI_HEAL_PARALYSIS,
    AI_HEAL_FREEZE,
    AI_HEAL_BURN,
    AI_HEAL_POISON,
    AI_HEAL_SLEEP,
};

void AI_TrySwitchOrUseItem(void);
u8 GetMostSuitableMonToSwitchInto(void);
# 12 "include/battle.h" 2
# 1 "include/battle_gfx_sfx_util.h" 1



void AllocateBattleSpritesData(void);
void FreeBattleSpritesData(void);
void SpriteCB_WaitForBattlerBallReleaseAnim(struct Sprite *sprite);
void SpriteCB_TrainerSlideIn(struct Sprite *sprite);
void InitAndLaunchChosenStatusAnimation(bool8 isStatus2, u32 status);
bool8 TryHandleLaunchBattleTableAnimation(u8 activeBattler, u8 atkBattler, u8 defBattler, u8 tableId, u16 argument);
void InitAndLaunchSpecialAnimation(u8 activeBattler, u8 atkBattler, u8 defBattler, u8 tableId);
bool8 IsMoveWithoutAnimation(u16 moveId, u8 animationTurn);
bool8 IsBattleSEPlaying(u8 battlerId);
void BattleLoadOpponentMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void BattleLoadPlayerMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void DecompressGhostFrontPic(struct Pokemon *unused, u8 battlerId);
void DecompressTrainerFrontPic(u16 frontPicId, u8 battlerId);
void DecompressTrainerBackPalette(u16 a1, u8 a2);
void BattleGfxSfxDummy3(u8 gender);
void FreeTrainerFrontPicPaletteAndTile(u16 frontPicId);
bool8 BattleLoadAllHealthBoxesGfx(u8 state);
void LoadBattleBarGfx(u8 arg0);
bool8 BattleInitAllSprites(u8 *state, u8 *battlerId);
void ClearSpritesHealthboxAnimData(void);
void CopyAllBattleSpritesInvisibilities(void);
void CopyBattleSpriteInvisibility(u8 battlerId);
void HandleSpeciesGfxDataChange(u8 battlerAtk, u8 battlerDef, u8 transformType);
void BattleLoadSubstituteOrMonSpriteGfx(u8 battlerId, bool8 loadMonSprite);
void LoadBattleMonGfxAndAnimate(u8 battlerId, bool8 loadMonSprite, u8 spriteId);
void TrySetBehindSubstituteSpriteBit(u8 battlerId, u16 move);
void ClearBehindSubstituteBit(u8 battlerId);
void HandleLowHpMusicChange(struct Pokemon *mon, u8 battlerId);
void BattleStopLowHpSound(void);
void HandleBattleLowHpMusicChange(void);
void SetBattlerSpriteAffineMode(u8 affineMode);
void LoadAndCreateEnemyShadowSprites(void);
void SpriteCB_SetInvisible(struct Sprite *sprite);
void SetBattlerShadowSpriteCallback(u8 battlerId, u16 species);
void HideBattlerShadowSprite(u8 battlerId);
void BattleInterfaceSetWindowPals(void);
void ClearTemporarySpeciesSpriteData(u8 battlerId, bool8 dontClearSubstitute);
void AllocateMonSpritesGfx(void);
void FreeMonSpritesGfx(void);
bool32 ShouldPlayNormalMonCry(struct Pokemon *mon);
# 13 "include/battle.h" 2
# 1 "include/battle_util2.h" 1





void AllocateBattleResources(void);
void FreeBattleResources(void);
void AdjustFriendshipOnBattleFaint(u8 bank);
# 14 "include/battle.h" 2
# 1 "include/battle_bg.h" 1





extern const struct BgTemplate gBattleBgTemplates[];

void InitBattleBgsVideo(void);
void DrawBattleEntryBackground(void);
void InitLinkBattleVsScreen(u8 taskId);
void LoadBattleMenuWindowGfx(void);
void LoadBattleTextboxAndBackground(void);
void BattleInitBgsAndWindows(void);
void DrawMainBattleBackground(void);
# 15 "include/battle.h" 2
# 53 "include/battle.h"
enum {
    BATTLER_AFFINE_NORMAL,
    BATTLER_AFFINE_EMERGE,
    BATTLER_AFFINE_RETURN,
};
# 71 "include/battle.h"
struct TrainerMonNoItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
};

struct TrainerMonItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
};

struct TrainerMonNoItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 moves[4];
};

struct TrainerMonItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
    u16 moves[4];
};






union TrainerMonPtr
{
    const struct TrainerMonNoItemDefaultMoves *NoItemDefaultMoves;
    const struct TrainerMonNoItemCustomMoves *NoItemCustomMoves;
    const struct TrainerMonItemDefaultMoves *ItemDefaultMoves;
    const struct TrainerMonItemCustomMoves *ItemCustomMoves;
};

struct Trainer
{
             u8 partyFlags;
             u8 trainerClass;
             u8 encounterMusic_gender;
             u8 trainerPic;
             u8 trainerName[12];
             u16 items[4];
             bool8 doubleBattle;
             u32 aiFlags;
             u8 partySize;
             const union TrainerMonPtr party;
};

extern const struct Trainer gTrainers[];

struct ResourceFlags
{
    u32 flags[4];
};



struct DisableStruct
{
             u32 transformedMonPersonality;
             u16 disabledMove;
             u16 encoredMove;
             u8 protectUses;
             u8 stockpileCounter;
             u8 substituteHP;
             u8 disableTimer : 4;
             u8 disableTimerStartValue : 4;
             u8 encoredMovePos;
             u8 unkD;
             u8 encoreTimer : 4;
             u8 encoreTimerStartValue : 4;
             u8 perishSongTimer : 4;
             u8 perishSongTimerStartValue : 4;
             u8 furyCutterCounter;
             u8 rolloutTimer : 4;
             u8 rolloutTimerStartValue : 4;
             u8 chargeTimer : 4;
             u8 chargeTimerStartValue : 4;
             u8 tauntTimer:4;
             u8 tauntTimer2:4;
             u8 battlerPreventingEscape;
             u8 battlerWithSureHit;
             u8 isFirstTurn;
             u8 unk17;
             u8 truantCounter : 1;
             u8 truantSwitchInHack : 1;
             u8 unk18_a_2 : 2;
             u8 mimickedMoves : 4;
             u8 rechargeTimer;
             u8 unk1A[2];
};

extern struct DisableStruct gDisableStructs[4];

struct ProtectStruct
{

    u32 protected:1;
    u32 endured:1;
    u32 noValidMoves:1;
    u32 helpingHand:1;
    u32 bounceMove:1;
    u32 stealMove:1;
    u32 flag0Unknown:1;
    u32 prlzImmobility:1;

    u32 confusionSelfDmg:1;
    u32 targetNotAffected:1;
    u32 chargingTurn:1;
    u32 fleeType:2;
    u32 usedImprisonedMove:1;
    u32 loveImmobility:1;
    u32 usedDisabledMove:1;

    u32 usedTauntedMove:1;
    u32 flag2Unknown:1;
    u32 flinchImmobility:1;
    u32 notFirstStrike:1;
    u32 flag_x10 : 1;
    u32 flag_x20 : 1;
    u32 flag_x40 : 1;
    u32 flag_x80 : 1;
    u32 field3 : 8;

    u32 physicalDmg;
    u32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u16 fieldE;
};

extern struct ProtectStruct gProtectStructs[4];

struct SpecialStatus
{
    u8 statLowered:1;
    u8 lightningRodRedirected:1;
    u8 restoredBattlerSprite:1;
    u8 intimidatedMon:1;
    u8 traced:1;
    u8 ppNotAffectedByPressure:1;
    u8 faintedHasReplacement:1;
    u8 focusBanded:1;
    u8 field1[3];
    s32 dmg;
    s32 physicalDmg;
    s32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u8 field12;
    u8 field13;
};

extern struct SpecialStatus gSpecialStatuses[4];

struct SideTimer
{
             u8 reflectTimer;
             u8 reflectBattlerId;
             u8 lightscreenTimer;
             u8 lightscreenBattlerId;
             u8 mistTimer;
             u8 mistBattlerId;
             u8 safeguardTimer;
             u8 safeguardBattlerId;
             u8 followmeTimer;
             u8 followmeTarget;
             u8 spikesAmount;
             u8 fieldB;
};

extern struct SideTimer gSideTimers[];

struct WishFutureKnock
{
    u8 futureSightCounter[4];
    u8 futureSightAttacker[4];
    s32 futureSightDmg[4];
    u16 futureSightMove[4];
    u8 wishCounter[4];
    u8 wishMonId[4];
    u8 weatherDuration;
    u8 knockedOffMons[2];
};

extern struct WishFutureKnock gWishFutureKnock;

struct AI_ThinkingStruct
{
    u8 aiState;
    u8 movesetIndex;
    u16 moveConsidered;
    s8 score[4];
    u32 funcResult;
    u32 aiFlags;
    u8 aiAction;
    u8 aiLogicId;
    u8 filler12[6];
    u8 simulatedRNG[4];
};

extern u8 gActiveBattler;
extern u8 gBattlerTarget;
extern u8 gAbsentBattlerFlags;

extern struct BattlePokemon gBattleMons[4];

struct UsedMoves
{
    u16 moves[4];
    u16 unknown[4];
};

struct BattleHistory
{
             u16 usedMoves[2][8];
             u8 abilities[4 / 2];
             u8 itemEffects[4 / 2];
             u16 trainerItems[4];
             u8 itemsNo;
};

struct BattleScriptsStack
{
    const u8 *ptr[8];
    u8 size;
};

struct BattleCallbacksStack
{
    void (*function[8])(void);
    u8 size;
};

struct StatsArray
{
    u16 stats[6];
};

struct BattleResources
{
    struct SecretBaseRecord *secretBase;
    struct ResourceFlags *flags;
    struct BattleScriptsStack *battleScriptsStack;
    struct BattleCallbacksStack *battleCallbackStack;
    struct StatsArray *beforeLvlUp;
    struct AI_ThinkingStruct *ai;
    struct BattleHistory *battleHistory;
    struct BattleScriptsStack *AI_ScriptsStack;
};

extern struct BattleResources *gBattleResources;

struct BattleResults
{
    u8 playerFaintCounter;
    u8 opponentFaintCounter;
    u8 playerSwitchesCounter;
    u8 numHealingItemsUsed;
    u8 numRevivesUsed;
    u8 playerMonWasDamaged:1;
    u8 usedMasterBall:1;
    u8 caughtMonBall:4;
    u8 shinyWildMon:1;
    u8 unk5_7:1;
    u16 playerMon1Species;
    u8 playerMon1Name[11];
    u8 battleTurnCounter;
    u8 playerMon2Name[11];
    u8 pokeblockThrows;
    u16 lastOpponentSpecies;
    u16 lastUsedMovePlayer;
    u16 lastUsedMoveOpponent;
    u16 playerMon2Species;
    u16 caughtMonSpecies;
    u8 caughtMonNick[10];
    u8 filler34[2];
    u8 catchAttempts[11];
};

extern struct BattleResults gBattleResults;

struct LinkBattlerHeader
{
    u8 versionSignatureLo;
    u8 versionSignatureHi;
    u8 vsScreenHealthFlagsLo;
    u8 vsScreenHealthFlagsHi;
    struct BattleEnigmaBerry battleEnigmaBerry;
};

struct BattleStruct
{
    u8 turnEffectsTracker;
    u8 turnEffectsBattlerId;
    u8 filler2;
    u8 turnCountersTracker;
    u8 wrappedMove[4 * 2];
    u8 moveTarget[4];
    u8 expGetterMonId;
    u8 field_11;
    u8 wildVictorySong;
    u8 dynamicMoveType;
    u8 wrappedBy[4];
    u16 assistPossibleMoves[6 * 4];
    u8 focusPunchBattlerId;
    u8 battlerPreventingSwitchout;
    u8 moneyMultiplier;
    u8 savedTurnActionNumber;
    u8 switchInAbilitiesCounter;
    u8 faintedActionsState;
    u8 faintedActionsBattlerId;

    u16 expValue;
    u8 scriptPartyIdx;
    u8 sentInPokes;
    bool8 selectionScriptFinished[4];
    u8 battlerPartyIndexes[4];
    u8 monToSwitchIntoId[4];
    u8 battlerPartyOrders[4][3];
    u8 runTries;
    u8 caughtMonNick[10 + 1];
    u8 field_78;
    u8 safariRockThrowCounter;
    u8 safariBaitThrowCounter;
    u8 safariEscapeFactor;
    u8 safariCatchFactor;
    u8 linkBattleVsSpriteId_V;
    u8 linkBattleVsSpriteId_S;
    u8 formToChangeInto;
    u8 chosenMovePositions[4];
    u8 stateIdAfterSelScript[4];
    u8 field_88;
    u8 field_89;
    u8 field_8A;
    u8 playerPartyIdx;
    u8 field_8C;
    u8 field_8D;
    u8 stringMoveType;
    u8 expGetterBattlerId;
    u8 field_90;
    u8 absentBattlerFlags;
    u8 AI_monToSwitchIntoId[2];
    u8 simulatedInputState[4];
    u8 lastTakenMove[4 * 2 * 2];
    u16 hpOnSwitchout[2];
    u8 abilityPreventingSwitchout;
    u8 hpScale;
    u16 savedBattleTypeFlags;
    void (*savedCallback)(void);
    u8 synchronizeMoveEffect;
    u8 multiplayerId;
    u8 overworldWeatherDone;
    u8 atkCancellerTracker;
    u16 usedHeldItems[4];
    u8 chosenItem[4];
    u8 AI_itemType[2];
    u8 AI_itemFlags[2];
    u16 choicedMove[4];
    u16 changedItems[4];
    u8 intimidateBattler;
    u8 switchInItemsCounter;
    u8 field_DA;
    u8 turnSideTracker;
    u8 fillerDC[0xDF-0xDC];
    u8 givenExpMons;
    u8 lastTakenMoveFrom[4 * 4 * 2];
    u16 castformPalette[4][16];
    u8 wishPerishSongState;
    u8 wishPerishSongBattlerId;
    u8 lastAttackerToFaintOpponent;

    union {
        struct LinkBattlerHeader linkBattlerHeader;
        struct MultiBattlePokemonTx multiBattleMons[3];
    } multiBuffer;
    u8 padding_1E4[0x1C];
};

extern struct BattleStruct *gBattleStruct;
# 498 "include/battle.h"
struct BattleScripting
{
    s32 painSplitHp;
    s32 bideDmg;
    u8 multihitString[6];
    u8 dmgMultiplier;
    u8 twoTurnsMoveStringId;
    u8 animArg1;
    u8 animArg2;
    u16 tripleKickPower;
    u8 moveendState;
    u8 battlerWithAbility;
    u8 multihitMoveEffect;
    u8 battler;
    u8 animTurn;
    u8 animTargetsHit;
    u8 statChanger;
    bool8 statAnimPlayed;
    u8 getexpState;
    u8 battleStyle;
    u8 drawlvlupboxState;
    u8 learnMoveState;
    u8 pursuitDoublesAttacker;
    u8 reshowMainState;
    u8 reshowHelperState;
    u8 levelUpHP;
};

struct BattleSpriteInfo
{
            u16 invisible : 1;
            u16 lowHpSong : 1;
            u16 behindSubstitute : 1;
            u16 flag_x8 : 1;
            u16 hpNumbersNoBars : 1;
            u16 transformSpecies;
};

struct BattleAnimationInfo
{
    u16 animArg;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 ballThrowCaseId;
    u8 introAnimActive:1;
    u8 wildMonInvisible:1;
    u8 field_9_x1C:3;
    u8 field_9_x20:1;
    u8 field_9_x40:1;
    u8 field_9_x80:1;
    u8 numBallParticles;
    u8 field_B;
    s16 ballSubpx;
    u8 field_E;
    u8 field_F;
};

struct BattleHealthboxInfo
{
    u8 partyStatusSummaryShown : 1;
    u8 healthboxIsBouncing : 1;
    u8 battlerIsBouncing : 1;
    u8 ballAnimActive : 1;
    u8 statusAnimActive : 1;
    u8 animFromTableActive : 1;
    u8 specialAnimActive : 1;
    u8 triedShinyMonAnim : 1;
    u8 finishedShinyMonAnim : 1;
    u8 opponentDrawPartyStatusSummaryDelay : 5;
    u8 healthboxBounceSpriteId;
    u8 battlerBounceSpriteId;
    u8 animationState;
    u8 partyStatusDelayTimer;
    u8 matrixNum;
    u8 shadowSpriteId;
    u8 soundTimer;
    u8 introEndDelay;
};

struct BattleBarInfo
{
    u8 healthboxSpriteId;
    s32 maxValue;
    s32 oldValue;
    s32 receivedValue;
    s32 currValue;
};

struct BattleSpriteData
{
    struct BattleSpriteInfo *battlerData;
    struct BattleHealthboxInfo *healthBoxesData;
    struct BattleAnimationInfo *animationData;
    struct BattleBarInfo *battleBars;
};

extern struct BattleSpriteData *gBattleSpritesDataPtr;



extern u8 *gLinkBattleSendBuffer;
extern u8 *gLinkBattleRecvBuffer;





struct MonSpritesGfx
{
    void *firstDecompressed;
    void *sprites[4];
    struct SpriteTemplate templates[4];
    struct SpriteFrameImage images[4][4];
    u8 field_F4[0x80];
    u8 *barFontGfx;
    void *field_178;
    u16 *multiUseBuffer;
};

struct PokedudeBattlerState
{
    u8 action_idx;
    u8 move_idx;
    u8 timer;
    u8 msg_idx;
    u8 saved_bg0y;
};

extern u16 gBattle_BG0_X;
extern u16 gBattle_BG0_Y;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;
extern u16 gBattle_BG2_X;
extern u16 gBattle_BG2_Y;
extern u16 gBattle_BG3_X;
extern u16 gBattle_BG3_Y;
extern u16 gBattle_WIN0H;
extern u16 gBattle_WIN0V;
extern u16 gBattle_WIN1H;
extern u16 gBattle_WIN1V;
extern struct BattleSpritesGfx *gMonSpritesGfx;
extern u8 gBattleOutcome;
extern u16 gLastUsedItem;
extern u32 gBattleTypeFlags;
extern struct MonSpritesGfx *gMonSpritesGfxPtr;
extern u16 gTrainerBattleOpponent_A;
extern u16 gMoveToLearn;
extern u16 gBattleMovePower;
extern struct BattleEnigmaBerry gEnigmaBerries[4];
extern u16 gCurrentMove;
extern u16 gChosenMove;
extern u16 gCalledMove;
extern u8 gCritMultiplier;
extern u16 gBattleWeather;
extern u8 gLastUsedAbility;
extern u8 gBattlerInMenuId;
extern u8 gPotentialItemEffectBattler;
extern u8 gBattlersCount;
extern u16 gBattlerPartyIndexes[4];
extern s32 gBattleMoveDamage;
extern u16 gIntroSlideFlags;
extern u32 gTransformedPersonalities[4];
extern u8 gBattlerPositions[4];
extern u8 gHealthboxSpriteIds[4];
extern u8 gBattleOutcome;
extern u8 gBattleMonForms[4];
extern void (*gBattlerControllerFuncs[4])(void);
extern u32 gBattleControllerExecFlags;
extern u8 gBattleBufferA[4][0x200];
extern u8 gBattleBufferB[4][0x200];
extern u8 gActionSelectionCursor[4];
extern void (*gPreBattleCallback1)(void);
extern bool8 gDoingBattleAnim;
extern struct PokedudeBattlerState *gPokedudeBattlerStates[4];
extern u8 *gBattleAnimBgTileBuffer;
extern u8 *gBattleAnimBgTilemapBuffer;
extern void (*gBattleMainFunc)(void);
extern u8 gMoveSelectionCursor[4];
extern u32 gUnusedFirstBattleVar1;
extern u8 gUnusedFirstBattleVar2;
extern u8 gBattlerAttacker;
extern u8 gEffectBattler;
extern u8 gMultiHitCounter;
extern struct BattleScripting gBattleScripting;
extern u8 gBattlerFainted;
extern u32 gStatuses3[4];
extern u8 gSentPokesToOpponent[2];
extern const u8 *gBattlescriptCurrInstr;
extern const u8 *gSelectionBattleScripts[4];
extern u16 gLastMoves[4];
extern u8 gBattlerByTurnOrder[4];
extern u8 gBattleCommunication[8];
extern u16 gSideStatuses[2];
extern u32 gHitMarker;
extern u16 gChosenMoveByBattler[4];
extern u8 gMoveResultFlags;
extern s32 gTakenDmg[4];
extern u8 gTakenDmgByBattler[4];
extern u8 gCurrentActionFuncId;
extern u8 gCurrMovePos;
extern u8 gChosenMovePos;
extern u8 gBattleControllerData[4];
extern u8 gBattlerStatusSummaryTaskId[4];
extern u16 gDynamicBasePower;
extern u16 gLastLandedMoves[4];
extern u8 gLastHitBy[4];
extern u8 gMultiUsePlayerCursor;
extern u8 gNumberOfMovesToChoose;
extern u16 gLastHitByType[4];
extern s32 gHpDealt;
extern u16 gPauseCounterBattle;
extern u16 gPaydayMoney;
extern u16 gLockedMoves[4];
extern u8 gCurrentTurnActionNumber;
extern u16 gExpShareExp;
extern u8 gLeveledUpInBattle;
extern u16 gLastResultingMoves[4];
extern u16 gLastPrintedMoves[4];
extern u8 gActionsByTurnOrder[4];
extern u8 gChosenActionByBattler[4];
extern u8 gBattleTerrain;
extern struct MultiBattlePokemonTx gMultiPartnerParty[3];
extern u16 gRandomTurnNumber;
# 4 "src/quest_log_events.c" 2
# 1 "include/data.h" 1
# 9 "include/data.h"
struct MonCoords
{


    u8 size;
    u8 y_offset;
};





extern const u8 gSpeciesNames[][10 + 1];
extern const u8 gMoveNames[][12 + 1];

extern const u8 gTrainerClassNames[][13];

extern const struct MonCoords gMonFrontPicCoords[];
extern const struct CompressedSpriteSheet gMonFrontPicTable[];
extern const struct MonCoords gMonBackPicCoords[];
extern const struct CompressedSpriteSheet gMonBackPicTable[];
extern const struct CompressedSpritePalette gMonPaletteTable[];
extern const struct CompressedSpritePalette gMonShinyPaletteTable[];
extern const union AnimCmd *const *const gTrainerFrontAnimsPtrTable[];
extern const struct MonCoords gTrainerFrontPicCoords[];
extern const struct CompressedSpriteSheet gTrainerFrontPicTable[];
extern const struct CompressedSpriteSheet gTrainerBackPicTable[];
extern const struct CompressedSpritePalette gTrainerFrontPicPaletteTable[];
extern const union AnimCmd *const *const gTrainerBackAnimsPtrTable[];
extern const struct MonCoords gTrainerBackPicCoords[];
extern const struct CompressedSpritePalette gTrainerBackPicPaletteTable[];

extern const struct CompressedSpriteSheet gSpriteSheet_EnemyShadow;
extern const struct SpriteTemplate gSpriteTemplate_EnemyShadow;

extern const u8 gEnemyMonElevation[413];

extern const u8 *const gBattleAnims_General[];
extern const u8 *const gBattleAnims_Special[];

extern const union AnimCmd *const gAnims_MonPic[];
extern const union AffineAnimCmd *const gAffineAnims_BattleSpritePlayerSide[];
extern const union AffineAnimCmd *const gAffineAnims_BattleSpriteOpponentSide[];
extern const struct SpriteFrameImage gBattlerPicTable_PlayerLeft[];
extern const struct SpriteFrameImage gBattlerPicTable_OpponentLeft[];
extern const struct SpriteFrameImage gBattlerPicTable_PlayerRight[];
extern const struct SpriteFrameImage gBattlerPicTable_OpponentRight[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Red[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Leaf[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Pokedude[];
extern const struct SpriteFrameImage gTrainerBackPicTable_OldMan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RSBrendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RSMay[];
# 5 "src/quest_log_events.c" 2
# 1 "include/dynamic_placeholder_text_util.h" 1





void DynamicPlaceholderTextUtil_Reset(void);
void DynamicPlaceholderTextUtil_SetPlaceholderPtr(u8 idx, const u8 *ptr);
u8 *DynamicPlaceholderTextUtil_ExpandPlaceholders(u8 *dest, const u8 *src);
const u8 *DynamicPlaceholderTextUtil_GetPlaceholderPtr(u8 idx);
u8 GetColorFromTextColorTable(u16 graphicId);
# 6 "src/quest_log_events.c" 2
# 1 "include/event_data.h" 1





extern u16 gSpecialVar_0x8000;
extern u16 gSpecialVar_0x8001;
extern u16 gSpecialVar_0x8002;
extern u16 gSpecialVar_0x8003;
extern u16 gSpecialVar_0x8004;
extern u16 gSpecialVar_0x8005;
extern u16 gSpecialVar_0x8006;
extern u16 gSpecialVar_0x8007;
extern u16 gSpecialVar_0x8008;
extern u16 gSpecialVar_0x8009;
extern u16 gSpecialVar_0x800A;
extern u16 gSpecialVar_0x800B;
extern u16 gSpecialVar_Facing;
extern u16 gSpecialVar_Result;
extern u16 gSpecialVar_LastTalked;
extern u16 gSpecialVar_MonBoxId;
extern u16 gSpecialVar_MonBoxPos;
extern u16 gSpecialVar_TextColor;
extern u16 gSpecialVar_PrevTextColor;

void InitEventData(void);
void ClearTempFieldEventData(void);
void ClearUpperFlags(void);
void DisableNationalPokedex(void);
void EnableNationalPokedex(void);
bool32 IsNationalPokedexEnabled(void);
void DisableMysteryEvent(void);
void EnableMysteryEvent(void);
bool32 IsMysteryEventEnabled(void);
void DisableMysteryGift(void);
void EnableMysteryGift(void);
bool32 IsMysteryGiftEnabled(void);
void DisableResetRTC(void);
void EnableResetRTC(void);
bool32 CanResetRTC(void);
u16 *GetVarPointer(u16 id);
u16 VarGet(u16 id);
bool8 VarSet(u16 id, u16 value);
u8 VarGetObjectEventGraphicsId(u8 id);
u8 *GetFlagPointer(u16 id);
u8 FlagSet(u16 id);
u8 FlagClear(u16 id);
bool8 FlagGet(u16 id);
u16 * GetVarPointer(u16 id);
bool32 IsMysteryGiftEnabled(void);
void ResetSpecialVars(void);
void ClearMysteryGiftFlags(void);
void ClearMysteryGiftVars(void);
bool32 IsNationalPokedexEnabled(void);
void EnableNationalPokedex_RSE(void);
void ClearTempFieldEventData(void);
# 7 "src/quest_log_events.c" 2
# 1 "include/event_scripts.h" 1
# 10 "include/event_scripts.h"
extern const u8 gTVBravoTrainerText00[];
extern const u8 gTVBravoTrainerText01[];
extern const u8 gTVBravoTrainerText02[];
extern const u8 gTVBravoTrainerText03[];
extern const u8 gTVBravoTrainerText04[];
extern const u8 gTVBravoTrainerText05[];
extern const u8 gTVBravoTrainerText06[];
extern const u8 gTVBravoTrainerText07[];
extern const u8 gTVBravoTrainerText08[];
extern const u8 gTVBravoTrainerBattleTowerText00[];
extern const u8 gTVBravoTrainerBattleTowerText01[];
extern const u8 gTVBravoTrainerBattleTowerText02[];
extern const u8 gTVBravoTrainerBattleTowerText03[];
extern const u8 gTVBravoTrainerBattleTowerText04[];
extern const u8 gTVBravoTrainerBattleTowerText05[];
extern const u8 gTVBravoTrainerBattleTowerText06[];
extern const u8 gTVBravoTrainerBattleTowerText07[];
extern const u8 gTVBravoTrainerBattleTowerText08[];
extern const u8 gTVBravoTrainerBattleTowerText09[];
extern const u8 gTVBravoTrainerBattleTowerText10[];
extern const u8 gTVBravoTrainerBattleTowerText11[];
extern const u8 gTVBravoTrainerBattleTowerText12[];
extern const u8 gTVBravoTrainerBattleTowerText13[];
extern const u8 gTVBravoTrainerBattleTowerText14[];
extern const u8 gTVFanClubOpinionsText00[];
extern const u8 gTVFanClubOpinionsText01[];
extern const u8 gTVFanClubOpinionsText02[];
extern const u8 gTVFanClubOpinionsText03[];
extern const u8 gTVFanClubOpinionsText04[];
extern const u8 gTVFanClubText00[];
extern const u8 gTVFanClubText01[];
extern const u8 gTVFanClubText02[];
extern const u8 gTVFanClubText03[];
extern const u8 gTVFanClubText04[];
extern const u8 gTVFanClubText05[];
extern const u8 gTVFanClubText06[];
extern const u8 gTVFanClubText07[];
extern const u8 gTVRecentHappeningsText00[];
extern const u8 gTVRecentHappeningsText01[];
extern const u8 gTVRecentHappeningsText02[];
extern const u8 gTVRecentHappeningsText03[];
extern const u8 gTVRecentHappeningsText04[];
extern const u8 gTVRecentHappeningsText05[];
extern const u8 gTVMassOutbreakText00[];
extern const u8 gTV3CheersForPokeblocksText00[];
extern const u8 gTV3CheersForPokeblocksText01[];
extern const u8 gTV3CheersForPokeblocksText02[];
extern const u8 gTV3CheersForPokeblocksText03[];
extern const u8 gTV3CheersForPokeblocksText04[];
extern const u8 gTV3CheersForPokeblocksText05[];
extern const u8 gTVTrainerFanClubSpecialText00[];
extern const u8 gTVTrainerFanClubSpecialText01[];
extern const u8 gTVTrainerFanClubSpecialText02[];
extern const u8 gTVTrainerFanClubSpecialText03[];
extern const u8 gTVTrainerFanClubSpecialText04[];
extern const u8 gTVTrainerFanClubSpecialText05[];
extern const u8 gTVNameRaterText00[];
extern const u8 gTVNameRaterText01[];
extern const u8 gTVNameRaterText02[];
extern const u8 gTVNameRaterText03[];
extern const u8 gTVNameRaterText04[];
extern const u8 gTVNameRaterText05[];
extern const u8 gTVNameRaterText06[];
extern const u8 gTVNameRaterText07[];
extern const u8 gTVNameRaterText08[];
extern const u8 gTVNameRaterText09[];
extern const u8 gTVNameRaterText10[];
extern const u8 gTVNameRaterText11[];
extern const u8 gTVNameRaterText12[];
extern const u8 gTVNameRaterText13[];
extern const u8 gTVNameRaterText14[];
extern const u8 gTVNameRaterText15[];
extern const u8 gTVNameRaterText16[];
extern const u8 gTVNameRaterText17[];
extern const u8 gTVNameRaterText18[];
extern const u8 gTVPokemonAnglerText00[];
extern const u8 gTVPokemonAnglerText01[];
extern const u8 gTVPokemonTodayFailedText00[];
extern const u8 gTVPokemonTodayFailedText01[];
extern const u8 gTVPokemonTodayFailedText02[];
extern const u8 gTVPokemonTodayFailedText03[];
extern const u8 gTVPokemonTodayFailedText04[];
extern const u8 gTVPokemonTodayFailedText05[];
extern const u8 gTVPokemonTodayFailedText06[];
extern const u8 gTVPokemonTodaySuccessfulText00[];
extern const u8 gTVPokemonTodaySuccessfulText01[];
extern const u8 gTVPokemonTodaySuccessfulText02[];
extern const u8 gTVPokemonTodaySuccessfulText03[];
extern const u8 gTVPokemonTodaySuccessfulText04[];
extern const u8 gTVPokemonTodaySuccessfulText05[];
extern const u8 gTVPokemonTodaySuccessfulText06[];
extern const u8 gTVPokemonTodaySuccessfulText07[];
extern const u8 gTVPokemonTodaySuccessfulText08[];
extern const u8 gTVPokemonTodaySuccessfulText09[];
extern const u8 gTVPokemonTodaySuccessfulText10[];
extern const u8 gTVPokemonTodaySuccessfulText11[];
extern const u8 gTVTodaysSmartShopperText00[];
extern const u8 gTVTodaysSmartShopperText01[];
extern const u8 gTVTodaysSmartShopperText02[];
extern const u8 gTVTodaysSmartShopperText03[];
extern const u8 gTVTodaysSmartShopperText04[];
extern const u8 gTVTodaysSmartShopperText05[];
extern const u8 gTVTodaysSmartShopperText06[];
extern const u8 gTVTodaysSmartShopperText07[];
extern const u8 gTVTodaysSmartShopperText08[];
extern const u8 gTVTodaysSmartShopperText09[];
extern const u8 gTVTodaysSmartShopperText10[];
extern const u8 gTVTodaysSmartShopperText11[];
extern const u8 gTVTodaysSmartShopperText12[];
extern const u8 gTVWorldOfMastersText00[];
extern const u8 gTVWorldOfMastersText01[];
extern const u8 gTVWorldOfMastersText02[];
extern const u8 gTVTodaysRivalTrainerText00[];
extern const u8 gTVTodaysRivalTrainerText07[];
extern const u8 gTVTodaysRivalTrainerText08[];
extern const u8 gTVTodaysRivalTrainerText09[];
extern const u8 gTVTodaysRivalTrainerText10[];
extern const u8 gTVTodaysRivalTrainerText01[];
extern const u8 gTVTodaysRivalTrainerText02[];
extern const u8 gTVTodaysRivalTrainerText03[];
extern const u8 gTVTodaysRivalTrainerText04[];
extern const u8 gTVTodaysRivalTrainerText05[];
extern const u8 gTVTodaysRivalTrainerText06[];
extern const u8 gTVDewfordTrendWatcherNetworkText00[];
extern const u8 gTVDewfordTrendWatcherNetworkText01[];
extern const u8 gTVDewfordTrendWatcherNetworkText02[];
extern const u8 gTVDewfordTrendWatcherNetworkText03[];
extern const u8 gTVDewfordTrendWatcherNetworkText04[];
extern const u8 gTVDewfordTrendWatcherNetworkText05[];
extern const u8 gTVDewfordTrendWatcherNetworkText06[];
extern const u8 gTVHoennTreasureInvestigatorsText00[];
extern const u8 gTVHoennTreasureInvestigatorsText01[];
extern const u8 gTVHoennTreasureInvestigatorsText02[];
extern const u8 gTVFindThatGamerText00[];
extern const u8 gTVFindThatGamerText01[];
extern const u8 gTVFindThatGamerText02[];
extern const u8 gTVFindThatGamerText03[];
extern const u8 gTVBreakingNewsText00[];
extern const u8 gTVBreakingNewsText01[];
extern const u8 gTVBreakingNewsText02[];
extern const u8 gTVBreakingNewsText03[];
extern const u8 gTVBreakingNewsText04[];
extern const u8 gTVBreakingNewsText05[];
extern const u8 gTVBreakingNewsText06[];
extern const u8 gTVBreakingNewsText07[];
extern const u8 gTVBreakingNewsText12[];
extern const u8 gTVBreakingNewsText08[];
extern const u8 gTVBreakingNewsText09[];
extern const u8 gTVBreakingNewsText10[];
extern const u8 gTVBreakingNewsText11[];
extern const u8 gTVSecretBaseVisitText00[];
extern const u8 gTVSecretBaseVisitText01[];
extern const u8 gTVSecretBaseVisitText02[];
extern const u8 gTVSecretBaseVisitText03[];
extern const u8 gTVSecretBaseVisitText04[];
extern const u8 gTVSecretBaseVisitText05[];
extern const u8 gTVSecretBaseVisitText06[];
extern const u8 gTVSecretBaseVisitText07[];
extern const u8 gTVSecretBaseVisitText08[];
extern const u8 gTVSecretBaseVisitText09[];
extern const u8 gTVSecretBaseVisitText10[];
extern const u8 gTVSecretBaseVisitText11[];
extern const u8 gTVSecretBaseVisitText12[];
extern const u8 gTVSecretBaseVisitText13[];
extern const u8 gTVPokemonLotteryWinnerFlashReportText00[];
extern const u8 gTVThePokemonBattleSeminarText00[];
extern const u8 gTVThePokemonBattleSeminarText01[];
extern const u8 gTVThePokemonBattleSeminarText02[];
extern const u8 gTVThePokemonBattleSeminarText03[];
extern const u8 gTVThePokemonBattleSeminarText04[];
extern const u8 gTVThePokemonBattleSeminarText05[];
extern const u8 gTVThePokemonBattleSeminarText06[];
extern const u8 gTVTrainerFanClubText00[];
extern const u8 gTVTrainerFanClubText01[];
extern const u8 gTVTrainerFanClubText02[];
extern const u8 gTVTrainerFanClubText03[];
extern const u8 gTVTrainerFanClubText04[];
extern const u8 gTVTrainerFanClubText05[];
extern const u8 gTVTrainerFanClubText06[];
extern const u8 gTVTrainerFanClubText07[];
extern const u8 gTVTrainerFanClubText08[];
extern const u8 gTVTrainerFanClubText09[];
extern const u8 gTVTrainerFanClubText10[];
extern const u8 gTVTrainerFanClubText11[];
extern const u8 gTVCutiesText00[];
extern const u8 gTVCutiesText01[];
extern const u8 gTVCutiesText02[];
extern const u8 gTVCutiesText03[];
extern const u8 gTVCutiesText04[];
extern const u8 gTVCutiesText05[];
extern const u8 gTVCutiesText06[];
extern const u8 gTVCutiesText07[];
extern const u8 gTVCutiesText08[];
extern const u8 gTVCutiesText09[];
extern const u8 gTVCutiesText10[];
extern const u8 gTVCutiesText11[];
extern const u8 gTVCutiesText12[];
extern const u8 gTVCutiesText13[];
extern const u8 gTVCutiesText14[];
extern const u8 gTVCutiesText15[];
extern const u8 gTVPokemonNewsBattleFrontierText00[];
extern const u8 gTVPokemonNewsBattleFrontierText01[];
extern const u8 gTVPokemonNewsBattleFrontierText02[];
extern const u8 gTVPokemonNewsBattleFrontierText03[];
extern const u8 gTVPokemonNewsBattleFrontierText04[];
extern const u8 gTVPokemonNewsBattleFrontierText05[];
extern const u8 gTVPokemonNewsBattleFrontierText06[];
extern const u8 gTVPokemonNewsBattleFrontierText07[];
extern const u8 gTVPokemonNewsBattleFrontierText08[];
extern const u8 gTVPokemonNewsBattleFrontierText09[];
extern const u8 gTVPokemonNewsBattleFrontierText10[];
extern const u8 gTVPokemonNewsBattleFrontierText11[];
extern const u8 gTVPokemonNewsBattleFrontierText12[];
extern const u8 gTVPokemonNewsBattleFrontierText13[];
extern const u8 gTVPokemonNewsBattleFrontierText14[];
extern const u8 gTVPokemonNewsBattleFrontierText15[];
extern const u8 gTVPokemonNewsBattleFrontierText16[];
extern const u8 gTVPokemonNewsBattleFrontierText17[];
extern const u8 gTVPokemonNewsBattleFrontierText18[];
extern const u8 gTVWhatsNo1InHoennTodayText00[];
extern const u8 gTVWhatsNo1InHoennTodayText01[];
extern const u8 gTVWhatsNo1InHoennTodayText02[];
extern const u8 gTVWhatsNo1InHoennTodayText03[];
extern const u8 gTVWhatsNo1InHoennTodayText04[];
extern const u8 gTVWhatsNo1InHoennTodayText05[];
extern const u8 gTVWhatsNo1InHoennTodayText06[];
extern const u8 gTVWhatsNo1InHoennTodayText07[];
extern const u8 gTVWhatsNo1InHoennTodayText08[];
extern const u8 gTVSecretBaseSecretsText00[];
extern const u8 gTVSecretBaseSecretsText01[];
extern const u8 gTVSecretBaseSecretsText02[];
extern const u8 gTVSecretBaseSecretsText03[];
extern const u8 gTVSecretBaseSecretsText04[];
extern const u8 gTVSecretBaseSecretsText05[];
extern const u8 gTVSecretBaseSecretsText06[];
extern const u8 gTVSecretBaseSecretsText07[];
extern const u8 gTVSecretBaseSecretsText08[];
extern const u8 gTVSecretBaseSecretsText09[];
extern const u8 gTVSecretBaseSecretsText10[];
extern const u8 gTVSecretBaseSecretsText11[];
extern const u8 gTVSecretBaseSecretsText12[];
extern const u8 gTVSecretBaseSecretsText13[];
extern const u8 gTVSecretBaseSecretsText14[];
extern const u8 gTVSecretBaseSecretsText15[];
extern const u8 gTVSecretBaseSecretsText16[];
extern const u8 gTVSecretBaseSecretsText17[];
extern const u8 gTVSecretBaseSecretsText18[];
extern const u8 gTVSecretBaseSecretsText19[];
extern const u8 gTVSecretBaseSecretsText20[];
extern const u8 gTVSecretBaseSecretsText21[];
extern const u8 gTVSecretBaseSecretsText22[];
extern const u8 gTVSecretBaseSecretsText23[];
extern const u8 gTVSecretBaseSecretsText24[];
extern const u8 gTVSecretBaseSecretsText25[];
extern const u8 gTVSecretBaseSecretsText26[];
extern const u8 gTVSecretBaseSecretsText27[];
extern const u8 gTVSecretBaseSecretsText28[];
extern const u8 gTVSecretBaseSecretsText29[];
extern const u8 gTVSecretBaseSecretsText30[];
extern const u8 gTVSecretBaseSecretsText31[];
extern const u8 gTVSecretBaseSecretsText32[];
extern const u8 gTVSecretBaseSecretsText33[];
extern const u8 gTVSecretBaseSecretsText34[];
extern const u8 gTVSecretBaseSecretsText35[];
extern const u8 gTVSecretBaseSecretsText36[];
extern const u8 gTVSecretBaseSecretsText37[];
extern const u8 gTVSecretBaseSecretsText38[];
extern const u8 gTVSecretBaseSecretsText39[];
extern const u8 gTVSecretBaseSecretsText40[];
extern const u8 gTVSecretBaseSecretsText41[];
extern const u8 gTVSecretBaseSecretsText42[];
extern const u8 gTVSafariFanClubText00[];
extern const u8 gTVSafariFanClubText01[];
extern const u8 gTVSafariFanClubText02[];
extern const u8 gTVSafariFanClubText03[];
extern const u8 gTVSafariFanClubText04[];
extern const u8 gTVSafariFanClubText05[];
extern const u8 gTVSafariFanClubText06[];
extern const u8 gTVSafariFanClubText07[];
extern const u8 gTVSafariFanClubText08[];
extern const u8 gTVSafariFanClubText09[];
extern const u8 gTVSafariFanClubText10[];
extern const u8 gTVContestLiveUpdatesText00[];
extern const u8 gTVContestLiveUpdatesText01[];
extern const u8 gTVContestLiveUpdatesText02[];
extern const u8 gTVContestLiveUpdatesText03[];
extern const u8 gTVContestLiveUpdatesText04[];
extern const u8 gTVContestLiveUpdatesText05[];
extern const u8 gTVContestLiveUpdatesText06[];
extern const u8 gTVContestLiveUpdatesText07[];
extern const u8 gTVContestLiveUpdatesText08[];
extern const u8 gTVContestLiveUpdatesText09[];
extern const u8 gTVContestLiveUpdatesText10[];
extern const u8 gTVContestLiveUpdatesText11[];
extern const u8 gTVContestLiveUpdatesText12[];
extern const u8 gTVContestLiveUpdatesText13[];
extern const u8 gTVContestLiveUpdatesText14[];
extern const u8 gTVContestLiveUpdatesText15[];
extern const u8 gTVContestLiveUpdatesText16[];
extern const u8 gTVContestLiveUpdatesText17[];
extern const u8 gTVContestLiveUpdatesText18[];
extern const u8 gTVContestLiveUpdatesText19[];
extern const u8 gTVContestLiveUpdatesText20[];
extern const u8 gTVContestLiveUpdatesText21[];
extern const u8 gTVContestLiveUpdatesText22[];
extern const u8 gTVContestLiveUpdatesText23[];
extern const u8 gTVContestLiveUpdatesText24[];
extern const u8 gTVContestLiveUpdatesText25[];
extern const u8 gTVContestLiveUpdatesText26[];
extern const u8 gTVContestLiveUpdatesText27[];
extern const u8 gTVContestLiveUpdatesText28[];
extern const u8 gTVContestLiveUpdatesText29[];
extern const u8 gTVContestLiveUpdatesText30[];
extern const u8 gTVContestLiveUpdatesText31[];
extern const u8 gTVContestLiveUpdatesText32[];
extern const u8 gTVPokemonBattleUpdateText00[];
extern const u8 gTVPokemonBattleUpdateText01[];
extern const u8 gTVPokemonBattleUpdateText02[];
extern const u8 gTVPokemonBattleUpdateText03[];
extern const u8 gTVPokemonBattleUpdateText04[];
extern const u8 gTVPokemonBattleUpdateText05[];
extern const u8 gTVPokemonBattleUpdateText06[];
extern const u8 gTVPokemonBattleUpdateText07[];
extern const u8 gTVInSearchOfTrainersText00[];
extern const u8 gTVInSearchOfTrainersText01[];
extern const u8 gTVInSearchOfTrainersText02[];
extern const u8 gTVInSearchOfTrainersText03[];
extern const u8 gTVInSearchOfTrainersText04[];
extern const u8 gTVInSearchOfTrainersText05[];
extern const u8 gTVInSearchOfTrainersText06[];
extern const u8 gTVInSearchOfTrainersText07[];
extern const u8 gTVInSearchOfTrainersText08[];
extern const u8 gTVPokemonContestLiveUpdates2Text00[];
extern const u8 gTVPokemonContestLiveUpdates2Text01[];
extern const u8 gTVPokemonContestLiveUpdates2Text02[];
extern const u8 gTVPokemonContestLiveUpdates2Text03[];
extern const u8 gPokeNewsTextSlateport_Upcoming[];
extern const u8 gPokeNewsTextSlateport_Ongoing[];
extern const u8 gPokeNewsTextSlateport_Ending[];
extern const u8 gPokeNewsTextGameCorner_Upcoming[];
extern const u8 gPokeNewsTextGameCorner_Ongoing[];
extern const u8 gPokeNewsTextGameCorner_Ending[];
extern const u8 gPokeNewsTextLilycove_Upcoming[];
extern const u8 gPokeNewsTextLilycove_Ongoing[];
extern const u8 gPokeNewsTextLilycove_Ending[];
extern const u8 gPokeNewsTextBlendMaster_Upcoming[];
extern const u8 gPokeNewsTextBlendMaster_Ongoing[];
extern const u8 gPokeNewsTextBlendMaster_Ending[];

extern const u8 gText_LtSurge[];
extern const u8 gText_Koga[];
extern const u8 gText_PokemonCenter[];

extern const u8 VSSeeker_Text_BatteryNotChargedNeedXSteps[];
extern const u8 VSSeeker_Text_NoTrainersWithinRange[];
extern const u8 VSSeeker_Text_TrainersNotReady[];



extern const u8 gFameCheckerFlavorText_ProfOak0[];
extern const u8 gFameCheckerFlavorText_ProfOak1[];
extern const u8 gFameCheckerFlavorText_ProfOak2[];
extern const u8 gFameCheckerFlavorText_ProfOak3[];
extern const u8 gFameCheckerFlavorText_ProfOak4[];
extern const u8 gFameCheckerFlavorText_ProfOak5[];
extern const u8 gFameCheckerFlavorText_Daisy0[];
extern const u8 gFameCheckerFlavorText_Daisy1[];
extern const u8 gFameCheckerFlavorText_Daisy2[];
extern const u8 gFameCheckerFlavorText_Daisy3[];
extern const u8 gFameCheckerFlavorText_Daisy4[];
extern const u8 gFameCheckerFlavorText_Daisy5[];
extern const u8 gFameCheckerFlavorText_Brock0[];
extern const u8 gFameCheckerFlavorText_Brock1[];
extern const u8 gFameCheckerFlavorText_Brock2[];
extern const u8 gFameCheckerFlavorText_Brock3[];
extern const u8 gFameCheckerFlavorText_Brock4[];
extern const u8 gFameCheckerFlavorText_Brock5[];
extern const u8 gFameCheckerFlavorText_Misty0[];
extern const u8 gFameCheckerFlavorText_Misty1[];
extern const u8 gFameCheckerFlavorText_Misty2[];
extern const u8 gFameCheckerFlavorText_Misty3[];
extern const u8 gFameCheckerFlavorText_Misty4[];
extern const u8 gFameCheckerFlavorText_Misty5[];
extern const u8 gFameCheckerFlavorText_LtSurge0[];
extern const u8 gFameCheckerFlavorText_LtSurge1[];
extern const u8 gFameCheckerFlavorText_LtSurge2[];
extern const u8 gFameCheckerFlavorText_LtSurge3[];
extern const u8 gFameCheckerFlavorText_LtSurge4[];
extern const u8 gFameCheckerFlavorText_LtSurge5[];
extern const u8 gFameCheckerFlavorText_Erika0[];
extern const u8 gFameCheckerFlavorText_Erika1[];
extern const u8 gFameCheckerFlavorText_Erika2[];
extern const u8 gFameCheckerFlavorText_Erika3[];
extern const u8 gFameCheckerFlavorText_Erika4[];
extern const u8 gFameCheckerFlavorText_Erika5[];
extern const u8 gFameCheckerFlavorText_Koga0[];
extern const u8 gFameCheckerFlavorText_Koga1[];
extern const u8 gFameCheckerFlavorText_Koga2[];
extern const u8 gFameCheckerFlavorText_Koga3[];
extern const u8 gFameCheckerFlavorText_Koga4[];
extern const u8 gFameCheckerFlavorText_Koga5[];
extern const u8 gFameCheckerFlavorText_Sabrina0[];
extern const u8 gFameCheckerFlavorText_Sabrina1[];
extern const u8 gFameCheckerFlavorText_Sabrina2[];
extern const u8 gFameCheckerFlavorText_Sabrina3[];
extern const u8 gFameCheckerFlavorText_Sabrina4[];
extern const u8 gFameCheckerFlavorText_Sabrina5[];
extern const u8 gFameCheckerFlavorText_Blaine0[];
extern const u8 gFameCheckerFlavorText_Blaine1[];
extern const u8 gFameCheckerFlavorText_Blaine2[];
extern const u8 gFameCheckerFlavorText_Blaine3[];
extern const u8 gFameCheckerFlavorText_Blaine4[];
extern const u8 gFameCheckerFlavorText_Blaine5[];
extern const u8 gFameCheckerFlavorText_Lorelei0[];
extern const u8 gFameCheckerFlavorText_Lorelei1[];
extern const u8 gFameCheckerFlavorText_Lorelei2[];
extern const u8 gFameCheckerFlavorText_Lorelei3[];
extern const u8 gFameCheckerFlavorText_Lorelei4[];
extern const u8 gFameCheckerFlavorText_Lorelei5[];
extern const u8 gFameCheckerFlavorText_Bruno0[];
extern const u8 gFameCheckerFlavorText_Bruno1[];
extern const u8 gFameCheckerFlavorText_Bruno2[];
extern const u8 gFameCheckerFlavorText_Bruno3[];
extern const u8 gFameCheckerFlavorText_Bruno4[];
extern const u8 gFameCheckerFlavorText_Bruno5[];
extern const u8 gFameCheckerFlavorText_Agatha0[];
extern const u8 gFameCheckerFlavorText_Agatha1[];
extern const u8 gFameCheckerFlavorText_Agatha2[];
extern const u8 gFameCheckerFlavorText_Agatha3[];
extern const u8 gFameCheckerFlavorText_Agatha4[];
extern const u8 gFameCheckerFlavorText_Agatha5[];
extern const u8 gFameCheckerFlavorText_Lance0[];
extern const u8 gFameCheckerFlavorText_Lance1[];
extern const u8 gFameCheckerFlavorText_Lance2[];
extern const u8 gFameCheckerFlavorText_Lance3[];
extern const u8 gFameCheckerFlavorText_Lance4[];
extern const u8 gFameCheckerFlavorText_Lance5[];
extern const u8 gFameCheckerFlavorText_Bill0[];
extern const u8 gFameCheckerFlavorText_Bill1[];
extern const u8 gFameCheckerFlavorText_Bill2[];
extern const u8 gFameCheckerFlavorText_Bill3[];
extern const u8 gFameCheckerFlavorText_Bill4[];
extern const u8 gFameCheckerFlavorText_Bill5[];
extern const u8 gFameCheckerFlavorText_MrFuji0[];
extern const u8 gFameCheckerFlavorText_MrFuji1[];
extern const u8 gFameCheckerFlavorText_MrFuji2[];
extern const u8 gFameCheckerFlavorText_MrFuji3[];
extern const u8 gFameCheckerFlavorText_MrFuji4[];
extern const u8 gFameCheckerFlavorText_MrFuji5[];
extern const u8 gFameCheckerFlavorText_Giovanni0[];
extern const u8 gFameCheckerFlavorText_Giovanni1[];
extern const u8 gFameCheckerFlavorText_Giovanni2[];
extern const u8 gFameCheckerFlavorText_Giovanni3[];
extern const u8 gFameCheckerFlavorText_Giovanni4[];
extern const u8 gFameCheckerFlavorText_Giovanni5[];
extern const u8 gFameCheckerPersonName_ProfOak[];
extern const u8 gFameCheckerPersonQuote_ProfOak[];
extern const u8 gFameCheckerPersonName_Daisy[];
extern const u8 gFameCheckerPersonQuote_Daisy[];
extern const u8 gFameCheckerPersonName_Brock[];
extern const u8 gFameCheckerPersonQuote_Brock[];
extern const u8 gFameCheckerPersonName_Misty[];
extern const u8 gFameCheckerPersonQuote_Misty[];
extern const u8 gFameCheckerPersonName_LtSurge[];
extern const u8 gFameCheckerPersonQuote_LtSurge[];
extern const u8 gFameCheckerPersonName_Erika[];
extern const u8 gFameCheckerPersonQuote_Erika[];
extern const u8 gFameCheckerPersonName_Koga[];
extern const u8 gFameCheckerPersonQuote_Koga[];
extern const u8 gFameCheckerPersonName_Sabrina[];
extern const u8 gFameCheckerPersonQuote_Sabrina[];
extern const u8 gFameCheckerPersonName_Blaine[];
extern const u8 gFameCheckerPersonQuote_Blaine[];
extern const u8 gFameCheckerPersonName_Lorelei[];
extern const u8 gFameCheckerPersonQuote_Lorelei[];
extern const u8 gFameCheckerPersonName_Bruno[];
extern const u8 gFameCheckerPersonQuote_Bruno[];
extern const u8 gFameCheckerPersonName_Agatha[];
extern const u8 gFameCheckerPersonQuote_Agatha[];
extern const u8 gFameCheckerPersonName_Lance[];
extern const u8 gFameCheckerPersonQuote_Lance[];
extern const u8 gFameCheckerPersonName_Bill[];
extern const u8 gFameCheckerPersonQuote_Bill[];
extern const u8 gFameCheckerPersonName_MrFuji[];
extern const u8 gFameCheckerPersonQuote_MrFuji[];
extern const u8 gFameCheckerPersonName_Giovanni[];
extern const u8 gFameCheckerPersonQuote_Giovanni[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni5[];

extern const u8 gOtherText_NewName[];
extern const u8 gNameChoice_Green[];
extern const u8 gNameChoice_Red[];
extern const u8 gNameChoice_Fire[];
extern const u8 gNameChoice_Leaf[];
extern const u8 gNameChoice_Gary[];
extern const u8 gNameChoice_Kaz[];
extern const u8 gNameChoice_Toru[];
extern const u8 gNameChoice_Ash[];
extern const u8 gNameChoice_Kene[];
extern const u8 gNameChoice_Geki[];
extern const u8 gNameChoice_Jak[];
extern const u8 gNameChoice_Janne[];
extern const u8 gNameChoice_Jonn[];
extern const u8 gNameChoice_Kamon[];
extern const u8 gNameChoice_Karl[];
extern const u8 gNameChoice_Taylor[];
extern const u8 gNameChoice_Oscar[];
extern const u8 gNameChoice_Hiro[];
extern const u8 gNameChoice_Max[];
extern const u8 gNameChoice_Jon[];
extern const u8 gNameChoice_Ralph[];
extern const u8 gNameChoice_Kay[];
extern const u8 gNameChoice_Tosh[];
extern const u8 gNameChoice_Roak[];
extern const u8 gNameChoice_Omi[];
extern const u8 gNameChoice_Jodi[];
extern const u8 gNameChoice_Amanda[];
extern const u8 gNameChoice_Hillary[];
extern const u8 gNameChoice_Makey[];
extern const u8 gNameChoice_Michi[];
extern const u8 gNameChoice_Paula[];
extern const u8 gNameChoice_June[];
extern const u8 gNameChoice_Cassie[];
extern const u8 gNameChoice_Rey[];
extern const u8 gNameChoice_Seda[];
extern const u8 gNameChoice_Kiko[];
extern const u8 gNameChoice_Mina[];
extern const u8 gNameChoice_Norie[];
extern const u8 gNameChoice_Sai[];
extern const u8 gNameChoice_Momo[];
extern const u8 gNameChoice_Suzi[];
extern const u8 gControlsGuide_Text_Intro[];
extern const u8 gControlsGuide_Text_DPad[];
extern const u8 gControlsGuide_Text_AButton[];
extern const u8 gControlsGuide_Text_BButton[];
extern const u8 gControlsGuide_Text_StartButton[];
extern const u8 gControlsGuide_Text_SelectButton[];
extern const u8 gControlsGuide_Text_LRButtons[];
extern const u8 gOakSpeech_Text_AskPlayerGender[];
extern const u8 gPikachuIntro_Text_Page1[];
extern const u8 gPikachuIntro_Text_Page2[];
extern const u8 gPikachuIntro_Text_Page3[];
extern const u8 gOakSpeech_Text_WelcomeToTheWorld[];
extern const u8 gOakSpeech_Text_ThisWorld[];
extern const u8 gOakSpeech_Text_IsInhabitedFarAndWide[];
extern const u8 gOakSpeech_Text_IStudyPokemon[];
extern const u8 gOakSpeech_Text_TellMeALittleAboutYourself[];
extern const u8 gOakSpeech_Text_YourNameWhatIsIt[];
extern const u8 gOakSpeech_Text_SoYourNameIsPlayer[];
extern const u8 gOakSpeech_Text_WhatWasHisName[];
extern const u8 gOakSpeech_Text_YourRivalsNameWhatWasIt[];
extern const u8 gOakSpeech_Text_ConfirmRivalName[];
extern const u8 gOakSpeech_Text_RememberRivalsName[];
extern const u8 gOakSpeech_Text_LetsGo[];


extern const u8 Help_Text_WhatShouldIDo[];
extern const u8 Help_Text_HowDoIDoThis[];
extern const u8 Help_Text_WhatDoesThisTermMean[];
extern const u8 Help_Text_AboutThisGame[];
extern const u8 Help_Text_TypeMatchupList[];
extern const u8 Help_Text_Exit[];
extern const u8 Help_Text_Cancel[];
extern const u8 Help_Text_DescWhatShouldIDo[];
extern const u8 Help_Text_DescHowDoIDoThis[];
extern const u8 Help_Text_DescWhatDoesThisTermMean[];
extern const u8 Help_Text_DescAboutThisGame[];
extern const u8 Help_Text_DescTypeMatchupList[];
extern const u8 Help_Text_DescExit[];
extern const u8 Help_Text_Greetings[];
extern const u8 Help_Text_PlayingForFirstTime[];
extern const u8 Help_Text_WhatShouldIBeDoing[];
extern const u8 Help_Text_CantGetOutOfRoom[];
extern const u8 Help_Text_CantFindPersonIWant[];
extern const u8 Help_Text_TalkedToEveryoneNowWhat[];
extern const u8 Help_Text_SomeoneBlockingMyWay[];
extern const u8 Help_Text_ICantGoOn[];
extern const u8 Help_Text_OutOfThingsToDo[];
extern const u8 Help_Text_WhatHappenedToItemIGot[];
extern const u8 Help_Text_WhatAreMyAdventureBasics[];
extern const u8 Help_Text_HowAreRoadsForestsDifferent[];
extern const u8 Help_Text_HowAreCavesDifferent[];
extern const u8 Help_Text_HowDoIProgress[];
extern const u8 Help_Text_WhenCanIUseItem[];
extern const u8 Help_Text_WhatsABattle[];
extern const u8 Help_Text_HowDoIPrepareForBattle[];
extern const u8 Help_Text_WhatIsAMonsVitality[];
extern const u8 Help_Text_MyMonsAreHurt[];
extern const u8 Help_Text_WhatIsStatusProblem[];
extern const u8 Help_Text_WhatHappensIfAllMyMonsFaint[];
extern const u8 Help_Text_CantCatchMons[];
extern const u8 Help_Text_RanOutOfPotions[];
extern const u8 Help_Text_CanIBuyPokeBalls[];
extern const u8 Help_Text_WhatsATrainer[];
extern const u8 Help_Text_HowDoIWinAgainstTrainer[];
extern const u8 Help_Text_WhereDoMonsAppear[];
extern const u8 Help_Text_WhatAreMoves[];
extern const u8 Help_Text_WhatAreHiddenMoves[];
extern const u8 Help_Text_WhatMovesShouldIUse[];
extern const u8 Help_Text_WantToAddMoreMoves[];
extern const u8 Help_Text_WantToMakeMonStronger[];
extern const u8 Help_Text_FoeMonsTooStrong[];
extern const u8 Help_Text_WhatDoIDoInCave[];
extern const u8 Help_Text_NothingIWantToKnow[];
extern const u8 Help_Text_WhatsPokemonCenter[];
extern const u8 Help_Text_WhatsPokemonMart[];
extern const u8 Help_Text_WantToEndGame[];
extern const u8 Help_Text_WhatsAMon[];
extern const u8 Help_Text_WhatIsThatPersonLike[];
extern const u8 Help_Text_WhatDoesHiddenMoveDo[];
extern const u8 Help_Text_WhatDoIDoInSafari[];
extern const u8 Help_Text_WhatAreSafariRules[];
extern const u8 Help_Text_WantToEndSafari[];
extern const u8 Help_Text_WhatIsAGym[];
extern const u8 Help_Text_AnswerPlayingForFirstTime[];
extern const u8 Help_Text_AnswerWhatShouldIBeDoing[];
extern const u8 Help_Text_AnswerCantGetOutOfRoom[];
extern const u8 Help_Text_AnswerCantFindPersonIWant[];
extern const u8 Help_Text_AnswerTalkedToEveryoneNowWhat[];
extern const u8 Help_Text_AnswerSomeoneBlockingMyWay[];
extern const u8 Help_Text_AnswerICantGoOn[];
extern const u8 Help_Text_AnswerOutOfThingsToDo[];
extern const u8 Help_Text_AnswerWhatHappenedToItemIGot[];
extern const u8 Help_Text_AnswerWhatAreMyAdventureBasics[];
extern const u8 Help_Text_AnswerHowAreRoadsForestsDifferent[];
extern const u8 Help_Text_AnswerHowAreCavesDifferent[];
extern const u8 Help_Text_AnswerHowDoIProgress[];
extern const u8 Help_Text_AnswerWhenCanIUseItem[];
extern const u8 Help_Text_AnswerWhatsABattle[];
extern const u8 Help_Text_AnswerHowDoIPrepareForBattle[];
extern const u8 Help_Text_AnswerWhatIsAMonsVitality[];
extern const u8 Help_Text_AnswerMyMonsAreHurt[];
extern const u8 Help_Text_AnswerWhatIsStatusProblem[];
extern const u8 Help_Text_AnswerWhatHappensIfAllMyMonsFaint[];
extern const u8 Help_Text_AnswerCantCatchMons[];
extern const u8 Help_Text_AnswerRanOutOfPotions[];
extern const u8 Help_Text_AnswerCanIBuyPokeBalls[];
extern const u8 Help_Text_AnswerWhatsATrainer[];
extern const u8 Help_Text_AnswerHowDoIWinAgainstTrainer[];
extern const u8 Help_Text_AnswerWhereDoMonsAppear[];
extern const u8 Help_Text_AnswerWhatAreMoves[];
extern const u8 Help_Text_AnswerWhatAreHiddenMoves[];
extern const u8 Help_Text_AnswerWhatMovesShouldIUse[];
extern const u8 Help_Text_AnswerWantToAddMoreMoves[];
extern const u8 Help_Text_AnswerWantToMakeMonStronger[];
extern const u8 Help_Text_AnswerFoeMonsTooStrong[];
extern const u8 Help_Text_AnswerWhatDoIDoInCave[];
extern const u8 Help_Text_AnswerNothingIWantToKnow[];
extern const u8 Help_Text_AnswerWhatsPokemonCenter[];
extern const u8 Help_Text_AnswerWhatsPokemonMart[];
extern const u8 Help_Text_AnswerWantToEndGame[];
extern const u8 Help_Text_AnswerWhatsAMon[];
extern const u8 Help_Text_AnswerWhatIsThatPersonLike[];
extern const u8 Help_Text_AnswerWhatDoesHiddenMoveDo[];
extern const u8 Help_Text_AnswerWhatDoIDoInSafari[];
extern const u8 Help_Text_AnswerWhatAreSafariRules[];
extern const u8 Help_Text_AnswerWantToEndSafari[];
extern const u8 Help_Text_AnswerWhatIsAGym[];
extern const u8 Help_Text_UsingPokedex[];
extern const u8 Help_Text_UsingPokemon[];
extern const u8 Help_Text_UsingSummary[];
extern const u8 Help_Text_UsingSwitch[];
extern const u8 Help_Text_UsingItem[];
extern const u8 Help_Text_UsingBag[];
extern const u8 Help_Text_UsingAnItem[];
extern const u8 Help_Text_UsingKeyItem[];
extern const u8 Help_Text_UsingPokeBall[];
extern const u8 Help_Text_UsingPlayer[];
extern const u8 Help_Text_UsingSave[];
extern const u8 Help_Text_UsingOption[];
extern const u8 Help_Text_UsingPotion[];
extern const u8 Help_Text_UsingTownMap[];
extern const u8 Help_Text_UsingTM[];
extern const u8 Help_Text_UsingHM[];
extern const u8 Help_Text_UsingMoveOutsideOfBattle[];
extern const u8 Help_Text_RidingBicycle[];
extern const u8 Help_Text_EnteringName[];
extern const u8 Help_Text_UsingPC[];
extern const u8 Help_Text_UsingBillsPC[];
extern const u8 Help_Text_UsingWithdraw[];
extern const u8 Help_Text_UsingDeposit[];
extern const u8 Help_Text_UsingMove[];
extern const u8 Help_Text_MovingItems[];
extern const u8 Help_Text_UsingPlayersPC[];
extern const u8 Help_Text_UsingWithdrawItem[];
extern const u8 Help_Text_UsingDepositItem[];
extern const u8 Help_Text_UsingMailbox[];
extern const u8 Help_Text_UsingProfOaksPC[];
extern const u8 Help_Text_OpeningMenu[];
extern const u8 Help_Text_UsingFight[];
extern const u8 Help_Text_UsingPokemon2[];
extern const u8 Help_Text_UsingShift[];
extern const u8 Help_Text_UsingSummary2[];
extern const u8 Help_Text_UsingBag2[];
extern const u8 Help_Text_ReadingPokedex[];
extern const u8 Help_Text_UsingHomePC[];
extern const u8 Help_Text_UsingItemStorage[];
extern const u8 Help_Text_UsingWithdrawItem2[];
extern const u8 Help_Text_UsingDepositItem2[];
extern const u8 Help_Text_UsingMailbox2[];
extern const u8 Help_Text_UsingRun[];
extern const u8 Help_Text_RegisterKeyItem[];
extern const u8 Help_Text_UsingBall[];
extern const u8 Help_Text_UsingBait[];
extern const u8 Help_Text_UsingRock[];
extern const u8 Help_Text_UsingHallOfFame[];
extern const u8 Help_Text_HowToUsePokedex[];
extern const u8 Help_Text_HowToUsePokemon[];
extern const u8 Help_Text_HowToUseSummary[];
extern const u8 Help_Text_HowToUseSwitch[];
extern const u8 Help_Text_HowToUseItem[];
extern const u8 Help_Text_HowToUseBag[];
extern const u8 Help_Text_HowToUseAnItem[];
extern const u8 Help_Text_HowToUseKeyItem[];
extern const u8 Help_Text_HowToUsePokeBall[];
extern const u8 Help_Text_HowToUsePlayer[];
extern const u8 Help_Text_HowToUseSave[];
extern const u8 Help_Text_HowToUseOption[];
extern const u8 Help_Text_HowToUsePotion[];
extern const u8 Help_Text_HowToUseTownMap[];
extern const u8 Help_Text_HowToUseTM[];
extern const u8 Help_Text_HowToUseHM[];
extern const u8 Help_Text_HowToUseMoveOutsideOfBattle[];
extern const u8 Help_Text_HowToRideBicycle[];
extern const u8 Help_Text_HowToEnterName[];
extern const u8 Help_Text_HowToUsePC[];
extern const u8 Help_Text_HowToUseBillsPC[];
extern const u8 Help_Text_HowToUseWithdraw[];
extern const u8 Help_Text_HowToUseDeposit[];
extern const u8 Help_Text_HowToUseMove[];
extern const u8 Help_Text_HowToMoveItems[];
extern const u8 Help_Text_HowToUsePlayersPC[];
extern const u8 Help_Text_HowToUseWithdrawItem[];
extern const u8 Help_Text_HowToUseDepositItem[];
extern const u8 Help_Text_HowToUseMailbox[];
extern const u8 Help_Text_HowToUseProfOaksPC[];
extern const u8 Help_Text_HowToOpenMenu[];
extern const u8 Help_Text_HowToUseFight[];
extern const u8 Help_Text_HowToUsePokemon2[];
extern const u8 Help_Text_HowToUseShift[];
extern const u8 Help_Text_HowToUseSummary2[];
extern const u8 Help_Text_HowToUseBag2[];
extern const u8 Help_Text_HowToReadPokedex[];
extern const u8 Help_Text_HowToUseHomePC[];
extern const u8 Help_Text_HowToUseItemStorage[];
extern const u8 Help_Text_HowToUseWithdrawItem2[];
extern const u8 Help_Text_HowToUseDepositItem2[];
extern const u8 Help_Text_HowToUseMailbox2[];
extern const u8 Help_Text_HowToUseRun[];
extern const u8 Help_Text_HowToRegisterKeyItem[];
extern const u8 Help_Text_HowToUseBall[];
extern const u8 Help_Text_HowToUseBait[];
extern const u8 Help_Text_HowToUseRock[];
extern const u8 Help_Text_HowToUseHallOfFame[];
extern const u8 Help_Text_HP[];
extern const u8 Help_Text_EXP[];
extern const u8 Help_Text_Moves[];
extern const u8 Help_Text_Attack[];
extern const u8 Help_Text_Defense[];
extern const u8 Help_Text_SpAtk[];
extern const u8 Help_Text_SpDef[];
extern const u8 Help_Text_Speed[];
extern const u8 Help_Text_Level[];
extern const u8 Help_Text_Type[];
extern const u8 Help_Text_OT[];
extern const u8 Help_Text_Item[];
extern const u8 Help_Text_Ability[];
extern const u8 Help_Text_Money[];
extern const u8 Help_Text_MoveType[];
extern const u8 Help_Text_Nature[];
extern const u8 Help_Text_IDNo[];
extern const u8 Help_Text_PP[];
extern const u8 Help_Text_Power[];
extern const u8 Help_Text_Accuracy[];
extern const u8 Help_Text_FNT[];
extern const u8 Help_Text_Items[];
extern const u8 Help_Text_KeyItems[];
extern const u8 Help_Text_PokeBalls[];
extern const u8 Help_Text_Pokedex[];
extern const u8 Help_Text_PlayTime[];
extern const u8 Help_Text_Badges[];
extern const u8 Help_Text_TextSpeed[];
extern const u8 Help_Text_BattleScene[];
extern const u8 Help_Text_BattleStyle[];
extern const u8 Help_Text_Sound[];
extern const u8 Help_Text_ButtonMode[];
extern const u8 Help_Text_Frame[];
extern const u8 Help_Text_Cancel2[];
extern const u8 Help_Text_TM[];
extern const u8 Help_Text_HM[];
extern const u8 Help_Text_HMMove[];
extern const u8 Help_Text_Evolution[];
extern const u8 Help_Text_StatusProblem[];
extern const u8 Help_Text_Pokemon[];
extern const u8 Help_Text_IDNo2[];
extern const u8 Help_Text_Money2[];
extern const u8 Help_Text_Badges2[];
extern const u8 Help_Text_DefineHP[];
extern const u8 Help_Text_DefineEXP[];
extern const u8 Help_Text_DefineMoves[];
extern const u8 Help_Text_DefineAttack[];
extern const u8 Help_Text_DefineDefense[];
extern const u8 Help_Text_DefineSpAtk[];
extern const u8 Help_Text_DefineSpDef[];
extern const u8 Help_Text_DefineSpeed[];
extern const u8 Help_Text_DefineLevel[];
extern const u8 Help_Text_DefineType[];
extern const u8 Help_Text_DefineOT[];
extern const u8 Help_Text_DefineItem[];
extern const u8 Help_Text_DefineAbility[];
extern const u8 Help_Text_DefineMoney[];
extern const u8 Help_Text_DefineMoveType[];
extern const u8 Help_Text_DefineNature[];
extern const u8 Help_Text_DefineIDNo[];
extern const u8 Help_Text_DefinePP[];
extern const u8 Help_Text_DefinePower[];
extern const u8 Help_Text_DefineAccuracy[];
extern const u8 Help_Text_DefineFNT[];
extern const u8 Help_Text_DefineItems[];
extern const u8 Help_Text_DefineKeyItems[];
extern const u8 Help_Text_DefinePokeBalls[];
extern const u8 Help_Text_DefinePokedex[];
extern const u8 Help_Text_DefinePlayTime[];
extern const u8 Help_Text_DefineBadges[];
extern const u8 Help_Text_DefineTextSpeed[];
extern const u8 Help_Text_DefineBattleScene[];
extern const u8 Help_Text_DefineBattleStyle[];
extern const u8 Help_Text_DefineSound[];
extern const u8 Help_Text_DefineButtonMode[];
extern const u8 Help_Text_DefineFrame[];
extern const u8 Help_Text_DefineCancel2[];
extern const u8 Help_Text_DefineTM[];
extern const u8 Help_Text_DefineHM[];
extern const u8 Help_Text_DefineHMMove[];
extern const u8 Help_Text_DefineEvolution[];
extern const u8 Help_Text_DefineStatusProblem[];
extern const u8 Help_Text_DefinePokemon[];
extern const u8 Help_Text_DefineIDNo2[];
extern const u8 Help_Text_DefineMoney2[];
extern const u8 Help_Text_DefineBadges2[];
extern const u8 Help_Text_TheHelpSystem[];
extern const u8 Help_Text_TheGame[];
extern const u8 Help_Text_WirelessAdapter[];
extern const u8 Help_Text_GameFundamentals1[];
extern const u8 Help_Text_GameFundamentals2[];
extern const u8 Help_Text_GameFundamentals3[];
extern const u8 Help_Text_WhatArePokemon[];
extern const u8 Help_Text_DescTheHelpSystem[];
extern const u8 Help_Text_DescTheGame[];
extern const u8 Help_Text_DescWirelessAdapter[];
extern const u8 Help_Text_DescGameFundamentals1[];
extern const u8 Help_Text_DescGameFundamentals2[];
extern const u8 Help_Text_DescGameFundamentals3[];
extern const u8 Help_Text_DescWhatArePokemon[];
extern const u8 Help_Text_UsingTypeMatchupList[];
extern const u8 Help_Text_OwnMoveDark[];
extern const u8 Help_Text_OwnPokemonDark[];
extern const u8 Help_Text_OwnMoveRock[];
extern const u8 Help_Text_OwnPokemonRock[];
extern const u8 Help_Text_OwnMovePsychic[];
extern const u8 Help_Text_OwnPokemonPsychic[];
extern const u8 Help_Text_OwnMoveFighting[];
extern const u8 Help_Text_OwnPokemonFighting[];
extern const u8 Help_Text_OwnMoveGrass[];
extern const u8 Help_Text_OwnPokemonGrass[];
extern const u8 Help_Text_OwnMoveGhost[];
extern const u8 Help_Text_OwnPokemonGhost[];
extern const u8 Help_Text_OwnMoveIce[];
extern const u8 Help_Text_OwnPokemonIce[];
extern const u8 Help_Text_OwnMoveGround[];
extern const u8 Help_Text_OwnPokemonGround[];
extern const u8 Help_Text_OwnMoveElectric[];
extern const u8 Help_Text_OwnPokemonElectric[];
extern const u8 Help_Text_OwnMovePoison[];
extern const u8 Help_Text_OwnPokemonPoison[];
extern const u8 Help_Text_OwnMoveDragon[];
extern const u8 Help_Text_OwnPokemonDragon[];
extern const u8 Help_Text_OwnMoveNormal[];
extern const u8 Help_Text_OwnPokemonNormal[];
extern const u8 Help_Text_OwnMoveSteel[];
extern const u8 Help_Text_OwnPokemonSteel[];
extern const u8 Help_Text_OwnMoveFlying[];
extern const u8 Help_Text_OwnPokemonFlying[];
extern const u8 Help_Text_OwnMoveFire[];
extern const u8 Help_Text_OwnPokemonFire[];
extern const u8 Help_Text_OwnMoveWater[];
extern const u8 Help_Text_OwnPokemonWater[];
extern const u8 Help_Text_OwnMoveBug[];
extern const u8 Help_Text_OwnPokemonBug[];
extern const u8 Help_Text_HowToUseTypeMatchupList[];
extern const u8 Help_Text_TypeMatchupOwnMoveDark[];
extern const u8 Help_Text_TypeMatchupOwnPokemonDark[];
extern const u8 Help_Text_TypeMatchupOwnMoveRock[];
extern const u8 Help_Text_TypeMatchupOwnPokemonRock[];
extern const u8 Help_Text_TypeMatchupOwnMovePsychic[];
extern const u8 Help_Text_TypeMatchupOwnPokemonPsychic[];
extern const u8 Help_Text_TypeMatchupOwnMoveFighting[];
extern const u8 Help_Text_TypeMatchupOwnPokemonFighting[];
extern const u8 Help_Text_TypeMatchupOwnMoveGrass[];
extern const u8 Help_Text_TypeMatchupOwnPokemonGrass[];
extern const u8 Help_Text_TypeMatchupOwnMoveGhost[];
extern const u8 Help_Text_TypeMatchupOwnPokemonGhost[];
extern const u8 Help_Text_TypeMatchupOwnMoveIce[];
extern const u8 Help_Text_TypeMatchupOwnPokemonIce[];
extern const u8 Help_Text_TypeMatchupOwnMoveGround[];
extern const u8 Help_Text_TypeMatchupOwnPokemonGround[];
extern const u8 Help_Text_TypeMatchupOwnMoveElectric[];
extern const u8 Help_Text_TypeMatchupOwnPokemonElectric[];
extern const u8 Help_Text_TypeMatchupOwnMovePoison[];
extern const u8 Help_Text_TypeMatchupOwnPokemonPoison[];
extern const u8 Help_Text_TypeMatchupOwnMoveDragon[];
extern const u8 Help_Text_TypeMatchupOwnPokemonDragon[];
extern const u8 Help_Text_TypeMatchupOwnMoveNormal[];
extern const u8 Help_Text_TypeMatchupOwnPokemonNormal[];
extern const u8 Help_Text_TypeMatchupOwnMoveSteel[];
extern const u8 Help_Text_TypeMatchupOwnPokemonSteel[];
extern const u8 Help_Text_TypeMatchupOwnMoveFlying[];
extern const u8 Help_Text_TypeMatchupOwnPokemonFlying[];
extern const u8 Help_Text_TypeMatchupOwnMoveFire[];
extern const u8 Help_Text_TypeMatchupOwnPokemonFire[];
extern const u8 Help_Text_TypeMatchupOwnMoveWater[];
extern const u8 Help_Text_TypeMatchupOwnPokemonWater[];
extern const u8 Help_Text_TypeMatchupOwnMoveBug[];
extern const u8 Help_Text_TypeMatchupOwnPokemonBug[];

extern const u8 EventScript_FldEffStrength[];
extern const u8 EventScript_FailSweetScent[];
extern const u8 EventScript_FldEffRockSmash[];

extern const u8 SafariZone_EventScript_TimesUp[];
extern const u8 SafariZone_EventScript_RetirePrompt[];
extern const u8 SafariZone_EventScript_OutOfBallsMidBattle[];
extern const u8 SafariZone_EventScript_OutOfBalls[];

extern const u8 EventScript_ItemfinderDigUpUnderfootItem[];


extern const u8 EventScript_DoNoIntroTrainerBattle[];
extern const u8 EventScript_TryDoDoubleTrainerBattle[];
extern const u8 EventScript_TryDoNormalTrainerBattle[];
extern const u8 EventScript_TryDoDoubleRematchBattle[];
extern const u8 EventScript_TryDoRematchBattle[];
extern const u8 EventScript_DoTrainerBattleFromApproach[];
extern const u8 EventScript_TestSignpostMsg[];


extern const u8 EventScript_ResetAllMapFlags[];


extern const u8 EventScript_PalletTown_PlayersHouse_2F_ShutDownPC[];


extern const u8 EventScript_AfterWhiteOutMomHeal[];
extern const u8 EventScript_AfterWhiteOutHeal[];


extern const u8 gText_WouldYouLikeToSaveTheGame[];
extern const u8 gText_AlreadySaveFile_WouldLikeToOverwrite[];
extern const u8 gText_SavingDontTurnOffThePower[];
extern const u8 gText_PlayerSavedTheGame[];
extern const u8 gText_DifferentGameFile[];


extern const u8 EventScript_ReleaseEnd[];
extern const u8 CableClub_Text_TradeMonsUsingLinkCable[];
extern const u8 CableClub_Text_BattleUsingLinkCable[];
extern const u8 CableClub_Text_CancelSelectedItem[];
extern const u8 CableClub_Text_YouMayTradeHere[];
extern const u8 CableClub_Text_YouMayBattleHere[];
extern const u8 CableClub_Text_CanMakeBerryPowder[];
extern const u8 EventScript_PC[];

extern const u8 EventScript_RepelWoreOff[];


extern const u8 Text_MonSentToBoxInSomeonesPC[];
extern const u8 Text_MonSentToBoxInBillsPC[];
extern const u8 Text_MonSentToBoxSomeonesBoxFull[];
extern const u8 Text_MonSentToBoxBillsBoxFull[];

extern const u8 EventScript_BagItemCanBeRegistered[];


extern const u8 EventScript_FldEffCut[];


extern const u8 CableClub_Text_WhenAllPlayersReadyAConfirmBCancel[];
extern const u8 CableClub_Text_AwaitingLinkupBCancel[];
extern const u8 CableClub_Text_StartLinkWithXPlayersAConfirmBCancel[];
extern const u8 CableClub_Text_PleaseWaitBCancel[];


extern const u8 EventScript_FldEffFlash[];


extern const u8 EventScript_CancelMessageBox[];
extern const u8 PalletTown_PlayersHouse_2F_EventScript_PC[];
extern const u8 EventScript_HiddenItemScript[];
extern const u8 EventScript_PC[];
extern const u8 EventScript_WallTownMap[];
extern const u8 EventScript_Bookshelf[];
extern const u8 EventScript_PokeMartShelf[];
extern const u8 EventScript_Food[];
extern const u8 EventScript_ImpressiveMachine[];
extern const u8 EventScript_Blueprints[];
extern const u8 EventScript_VideoGame[];
extern const u8 EventScript_Burglary[];
extern const u8 EventScript_Computer[];
extern const u8 TrainerTower_EventScript_ShowTime[];
extern const u8 EventScript_PlayerFacingTVScreen[];
extern const u8 EventScript_Cabinet[];
extern const u8 EventScript_Kitchen[];
extern const u8 EventScript_Dresser[];
extern const u8 EventScript_Snacks[];
extern const u8 EventScript_Painting[];
extern const u8 EventScript_PowerPlantMachine[];
extern const u8 EventScript_Telephone[];
extern const u8 EventScript_AdvertisingPoster[];
extern const u8 EventScript_TastyFood[];
extern const u8 EventScript_TrashBin[];
extern const u8 EventScript_Cup[];
extern const u8 EventScript_PolishedWindow[];
extern const u8 EventScript_BeautifulSkyWindow[];
extern const u8 EventScript_BlinkingLights[];
extern const u8 EventScript_NeatlyLinedUpTools[];
extern const u8 CableClub_EventScript_ShowWirelessCommunicationScreen[];
extern const u8 EventScript_Questionnaire[];
extern const u8 CableClub_EventScript_ShowBattleRecords[];
extern const u8 EventScript_Indigo_UltimateGoal[];
extern const u8 EventScript_Indigo_HighestAuthority[];
extern const u8 EventScript_PokemartSign[];
extern const u8 EventScript_PokecenterSign[];
extern const u8 EventScript_CurrentTooFast[];
extern const u8 EventScript_UseSurf[];
extern const u8 EventScript_Waterfall[];
extern const u8 EventScript_CantUseWaterfall[];
extern const u8 EventScript_VsSeekerChargingDone[];
extern const u8 EventScript_FieldPoison[];
extern const u8 EventScript_EggHatch[];
extern const u8 EventScript_DoFallWarp[];



extern const u8 EventScript_ResetEliteFourEnd[];
extern const u8 CableClub_EventScript_DoLinkRoomExit[];
extern const u8 CableClub_EventScript_TooBusyToNotice[];
extern const u8 CableClub_EventScript_ReadTrainerCard[];
extern const u8 CableClub_EventScript_ReadTrainerCardColored[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot0[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot1[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot2[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot3[];
extern const u8 RecordCorner_EventScript_Spot0[];
extern const u8 RecordCorner_EventScript_Spot1[];
extern const u8 RecordCorner_EventScript_Spot2[];
extern const u8 RecordCorner_EventScript_Spot3[];
extern const u8 BattleColosseum_2P_EventScript_PlayerSpot0[];
extern const u8 BattleColosseum_2P_EventScript_PlayerSpot1[];
extern const u8 TradeCenter_EventScript_Chair0[];
extern const u8 TradeCenter_EventScript_Chair1[];
extern const u8 TradeCenter_ConfirmLeaveRoom[];
extern const u8 TradeCenter_TerminateLink[];
# 8 "src/quest_log_events.c" 2
# 1 "include/menu_helpers.h" 1




# 1 "include/task.h" 1
# 13 "include/task.h"
typedef void (*TaskFunc)(u8 taskId);

struct Task
{
    TaskFunc func;
    bool8 isActive;
    u8 prev;
    u8 next;
    u8 priority;
    s16 data[16];
};

extern struct Task gTasks[];

void ResetTasks(void);
u8 CreateTask(TaskFunc func, u8 priority);
void DestroyTask(u8 taskId);
void RunTasks(void);
void TaskDummy(u8 taskId);
void SetTaskFuncWithFollowupFunc(u8 taskId, TaskFunc func, TaskFunc followupFunc);
void SwitchTaskToFollowupFunc(u8 taskId);
bool8 FuncIsActiveTask(TaskFunc func);
u8 FindTaskIdByFunc(TaskFunc func);
u8 GetTaskCount(void);
void SetWordTaskArg(u8 taskId, u8 dataElem, unsigned long value);
u32 GetWordTaskArg(u8 taskId, u8 dataElem);
# 6 "include/menu_helpers.h" 2





struct YesNoFuncTable
{
    TaskFunc yesFunc;
    TaskFunc noFunc;
};

bool16 RunTextPrinters_CheckActive(u8 textPrinterId);
bool8 IsActiveOverworldLinkBusy(void);
bool8 MenuHelpers_ShouldWaitForLinkRecv(void);
bool8 MenuHelpers_IsLinkActive(void);
void SetVBlankHBlankCallbacksToNull(void);
void ResetAllBgsCoordinatesAndBgCntRegs(void);
u8 GetDialogBoxFontId(void);
bool8 AdjustQuantityAccordingToDPadInput(s16 *quantity_p, u16 qmax);
void DisplayMessageAndContinueTask(u8 taskId, u8 windowId, u16 tileNum, u8 paletteNum, u8 fontId, u8 textSpeed, const u8 *string, void *taskFunc);
void CreateYesNoMenuWithCallbacks(u8 taskId, const struct WindowTemplate *template, u8 fontId, u8 left, u8 top, u16 tileStart, u8 palette, const struct YesNoFuncTable *yesNo);
u8 GetLRKeysPressed(void);
u8 GetLRKeysPressedAndHeld(void);
bool8 IsHoldingItemAllowed(u16 itemId);
bool8 IsWritingMailAllowed(u16 itemId);
void ResetVramOamAndBgCntRegs(void);
# 9 "src/quest_log_events.c" 2
# 1 "include/item.h" 1





typedef void (*ItemUseFunc)(u8);

struct Item
{
    u8 name[14];
    u16 itemId;
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    const u8 *description;
    u8 importance;
    u8 registrability;
    u8 pocket;
    u8 type;
    ItemUseFunc fieldUseFunc;
    u8 battleUsage;
    ItemUseFunc battleUseFunc;
    u8 secondaryId;
};

struct BagPocket
{
    struct ItemSlot *itemSlots;
    u8 capacity;
};


enum {
    ITEM_TYPE_MAIL,
    ITEM_TYPE_PARTY_MENU,
    ITEM_TYPE_FIELD,
    ITEM_TYPE_UNUSED,
    ITEM_TYPE_BAG_MENU,
};

extern const struct Item gItems[];
extern struct BagPocket gBagPockets[];

void GetBerryCountString(u8 *dst, const u8 *berryName, u32 quantity);
void CopyItemName(u16 itemId, u8 *string);
void CopyItemNameHandlePlural(u16 itemId, u8 *string, u32 quantity);
bool8 IsBagPocketNonEmpty(u8 pocket);
bool8 CheckBagHasItem(u16 itemId, u16 count);
bool8 CheckBagHasSpace(u16 itemId, u16 count);
bool8 RemoveBagItem(u16 itemId, u16 count);
u8 GetPocketByItemId(u16 itemId);
void ClearItemSlots(struct ItemSlot *itemSlots, u8 b);
u8 CountUsedPCItemSlots(void);
bool8 CheckPCHasItem(u16 itemId, u16 count);
bool8 AddPCItem(u16 itemId, u16 count);
void SwapRegisteredBike(void);
const u8 *ItemId_GetName(u16 itemId);
u16 ItemId_GetId(u16 itemId);
u16 ItemId_GetPrice(u16 itemId);
u8 ItemId_GetHoldEffect(u16 itemId);
u8 ItemId_GetHoldEffectParam(u16 itemId);
const u8 *ItemId_GetDescription(u16 itemId);
bool32 ItemId_CopyDescription(u8 *a, u32 itemId, u32 c);
u8 ItemId_GetImportance(u16 itemId);
u8 ItemId_GetUnknownValue(u16 itemId);
u8 ItemId_GetPocket(u16 itemId);
u8 ItemId_GetType(u16 itemId);
ItemUseFunc ItemId_GetFieldFunc(u16 itemId);
u8 ItemId_GetBattleUsage(u16 itemId);
ItemUseFunc ItemId_GetBattleFunc(u16 itemId);
u8 ItemId_GetSecondaryId(u16 itemId);
u16 ItemId_GetPrice(u16 itemId);
void ClearBag(void);
void ClearPCItemSlots(void);
void TrySetObtainedItemQuestLogEvent(u16 itemId);
bool8 AddBagItem(u16 itemId, u16 amount);

void SortPocketAndPlaceHMsFirst(struct BagPocket * pocket);
u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 itemId);
u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 itemId);
u16 BagGetQuantityByItemId(u16 item);
u8 ItemId_GetImportance(u16 itemId);
void BagPocketCompaction(struct ItemSlot * slots, u8 capacity);
u16 GetPcItemQuantity(u16 *);
void SetBagPocketsPointers(void);

void ItemPcCompaction(void);
void RemovePCItem(u16 itemId, u16 quantity);
void SortAndCompactBagPocket(struct BagPocket * pocket);
u8 CountItemsInPC(void);
void ApplyNewEncryptionKeyToBagItems_(u32 newKey);
bool8 HasAtLeastOneBerry(void);
# 10 "src/quest_log_events.c" 2
# 1 "include/link.h" 1
# 110 "include/link.h"
enum {
    BLOCK_REQ_SIZE_NONE,
    BLOCK_REQ_SIZE_200,
    BLOCK_REQ_SIZE_100,
    BLOCK_REQ_SIZE_220,
    BLOCK_REQ_SIZE_40,
};







enum
{
    LINK_STATE_START0,
    LINK_STATE_START1,
    LINK_STATE_HANDSHAKE,
    LINK_STATE_INIT_TIMER,
    LINK_STATE_CONN_ESTABLISHED,
};

enum
{
    EXCHANGE_NOT_STARTED,
    EXCHANGE_COMPLETE,
    EXCHANGE_TIMED_OUT,
    EXCHANGE_DIFF_SELECTIONS,
    EXCHANGE_PLAYER_NOT_READY,
    EXCHANGE_PARTNER_NOT_READY,
    EXCHANGE_WRONG_NUM_PLAYERS,
};

enum
{
    QUEUE_FULL_NONE,
    QUEUE_FULL_SEND,
    QUEUE_FULL_RECV,
};

enum
{
    LAG_NONE,
    LAG_MASTER,
    LAG_SLAVE,
};

struct LinkPlayer
{
               u16 version;
               u16 lp_field_2;
               u32 trainerId;
               u8 name[7 + 1];
               u8 progressFlags;
               u8 neverRead;
               u8 progressFlagsCopy;
               u8 gender;
               u32 linkType;
               u16 id;
               u16 language;
};

struct LinkPlayerBlock
{
    u8 magic1[16];
    struct LinkPlayer linkPlayer;
    u8 magic2[16];
};



struct SendQueue
{
    u16 data[8][50];
    u8 pos;
    u8 count;
};

struct RecvQueue
{
    u16 data[4][8][50];
    u8 pos;
    u8 count;
};

struct Link
{
    u8 isMaster;
    u8 state;
    u8 localId;
    u8 playerCount;
    u16 tempRecvBuffer[4];
    bool8 receivedNothing;
    s8 serialIntrCounter;
    bool8 handshakeAsMaster;
    u8 link_field_F;


    bool8 hardwareError;
    bool8 badChecksum;
    u8 queueFull;
    u8 lag;

    u16 checksum;

    u8 sendCmdIndex;
    u8 recvCmdIndex;

    struct SendQueue sendQueue;
    struct RecvQueue recvQueue;
};

struct BlockRequest
{
    void *address;
    u32 size;
};

extern const struct BlockRequest sBlockRequestLookupTable[5];

extern struct Link gLink;
extern u16 gRecvCmds[5][8];
extern u8 gBlockSendBuffer[0x100];
extern u16 gLinkType;
extern u32 gLinkStatus;
extern u16 gBlockRecvBuffer[5][0x100 / 2];
extern u16 gSendCmd[8];
extern u8 gShouldAdvanceLinkState;
extern struct LinkPlayer gLinkPlayers[5];
extern u16 word_3002910[];
extern bool8 gReceivedRemoteLinkPlayers;
extern bool8 gLinkVSyncDisabled;
extern u8 gWirelessCommType;
extern struct LinkPlayer gLocalLinkPlayer;

extern u8 gShouldAdvanceLinkState;
extern u16 gLinkPartnersHeldKeys[6];

void Task_DestroySelf(u8);
void OpenLink(void);
void CloseLink(void);
u16 LinkMain2(const u16 *);
void ClearLinkCallback(void);
void ClearLinkCallback_2(void);
u8 GetLinkPlayerCount(void);
void OpenLinkTimed(void);
u8 GetLinkPlayerDataExchangeStatusTimed(int lower, int higher);
bool8 IsLinkPlayerDataExchangeComplete(void);
u32 GetLinkPlayerTrainerId(u8);
void ResetLinkPlayers(void);
u8 GetMultiplayerId(void);
u8 BitmaskAllOtherLinkPlayers(void);
bool8 SendBlock(u8, const void *, u16);
u8 GetBlockReceivedStatus(void);
void ResetBlockReceivedFlags(void);
void ResetBlockReceivedFlag(u8);
void SetLinkDebugValues(u32, u32);
u8 GetSavedPlayerCount(void);
u8 GetLinkPlayerCount_2(void);
bool8 IsLinkMaster(void);
void CB2_LinkError(void);
u8 GetSioMultiSI(void);
bool8 IsLinkConnectionEstablished(void);
void SetSuppressLinkErrorMessage(bool8);
bool8 HasLinkErrorOccurred(void);
void ResetSerial(void);
u32 LinkMain1(u8 *, u16 *, u16[5][8]);
void RfuVSync(void);
void Timer3Intr(void);
void SerialCB(void);
u8 GetLinkPlayerCount(void);
bool32 InUnionRoom(void);

void SetLinkStandbyCallback(void);
void SetWirelessCommType1(void);
void SetCloseLinkCallback(void);
void OpenLink(void);
bool8 IsLinkMaster(void);
void CheckShouldAdvanceLinkState(void);
void SetCloseLinkCallbackAndType(u16 type);
void CloseLink(void);
bool8 IsLinkTaskFinished(void);
bool32 IsLinkRecvQueueAtOverworldMax(void);
void ResetSerial(void);
void SetWirelessCommType1(void);
void LoadWirelessStatusIndicatorSpriteGfx(void);
void CreateWirelessStatusIndicatorSprite(u8, u8);
void StartSendingKeysToLink(void);
void ClearLinkCallback_2(void);
void Rfu_SetLinkStandbyCallback(void);
void ConvertLinkPlayerName(struct LinkPlayer * linkPlayer);
bool8 IsWirelessAdapterConnected(void);
bool8 SendBlockRequest(u8 blockRequestType);
void LinkVSync(void);
bool8 HandleLinkConnection(void);
void LocalLinkPlayerToBlock(void);
void LinkPlayerFromBlock(u32 who);
void SetLinkErrorFromRfu(u32 status, u8 lastSendQueueCount, u8 lastRecvQueueCount, u8 isConnectionError);
u8 GetLinkPlayerCountAsBitFlags(void);
void ResetLinkPlayerCount(void);
void SaveLinkPlayers(u8 numPlayers);
u8 GetSavedLinkPlayerCountAsBitFlags(void);
void CheckLinkPlayersMatchSaved(void);
void SetLocalLinkPlayerId(u8 playerId);
bool32 IsSendingKeysToLink(void);
u32 GetLinkRecvQueueLength(void);
# 11 "src/quest_log_events.c" 2
# 1 "include/quest_log.h" 1




# 1 "include/quest_log_battle.h" 1





void TrySetQuestLogBattleEvent(void);
void TrySetQuestLogLinkBattleEvent(void);
# 6 "include/quest_log.h" 2
# 1 "include/field_control_avatar.h" 1





struct FieldInput
{
    bool8 pressedAButton:1;
    bool8 checkStandardWildEncounter:1;
    bool8 pressedStartButton:1;
    bool8 pressedSelectButton:1;
    bool8 heldDirection:1;
    bool8 heldDirection2:1;
    bool8 tookStep:1;
    bool8 pressedBButton:1;
    bool8 pressedRButton:1;
    bool8 input_field_1_0:1;
    bool8 input_field_1_1:1;
    bool8 input_field_1_2:1;
    bool8 input_field_1_3:1;
    u8 dpadDirection;
};

extern struct FieldInput gFieldInputRecord;

void RestartWildEncounterImmunitySteps(void);
void ClearPoisonStepCounter(void);
int SetCableClubWarp(void);
void HandleBoulderFallThroughHole(struct ObjectEvent *);
bool8 dive_warp(struct MapPosition * pos, u16 behavior);
bool8 IsDirectionalStairWarpMetatileBehavior(u16 metatileBehavior, u8 playerDirection);
const u8 *GetInteractedLinkPlayerScript(struct MapPosition *position, u8 metatileBehavior, u8 direction);
const u8 *GetCoordEventScriptAtMapPosition(struct MapPosition *position);
void FieldClearPlayerInput(struct FieldInput *input);
int ProcessPlayerFieldInput(struct FieldInput *input);
void FieldInput_HandleCancelSignpost(struct FieldInput * input);
void FieldGetPlayerInput(struct FieldInput *input, u16 newKeys, u16 heldKeys);
void HandleBoulderActivateVictoryRoadSwitch(u16 x, u16 y);
# 7 "include/quest_log.h" 2
# 1 "include/constants/quest_log.h" 1
# 8 "include/quest_log.h" 2
# 19 "include/quest_log.h"
struct QuestLogAction
{
    union {
        struct {
            u8 localId;
            u8 mapNum;
            u8 mapGroup;
            u8 movementActionId;
        } a;
        struct {
            u8 localId;
            u8 mapNum;
            u8 mapGroup;
            u8 gfxState;
        } b;
        u8 fieldInput[4];
        u8 raw[4];
    } data;
    u16 duration;
    u8 type;
};

struct QuestLogRepeatEventTracker
{
    u8 id;
    u8 numRepeats;
    u16 counter;
};




struct QuestLogEvent_SwitchedPartyOrder
{
    u16 species1;
    u16 species2;
};
# 64 "include/quest_log.h"
struct QuestLogEvent_Item
{
    u16 itemId;
    u16 unused;
    u16 species;
    u16 itemParam;
};



struct QuestLogEvent_SwappedHeldItem
{
    u16 takenItemId;
    u16 givenItemId;
    u16 species;
};



struct QuestLogEvent_Traded
{
    u16 speciesSent;
    u16 speciesReceived;
    u8 partnerName[7];
};





struct QuestLogEvent_LinkBattle
{
    u8 outcome;
    u8 playerNames[4 - 1][7];
};
# 108 "include/quest_log.h"
struct QuestLogEvent_MovedBoxMon
{
    u16 species1;
    u16 species2;
    u8 box1;
    u8 box2;
};





struct QuestLogEvent_TrainerBattle
{
    u16 trainerId;
    u16 speciesOpponent;
    u16 speciesPlayer;
    u8 hpFractionId;
    u8 mapSec;
};


struct QuestLogEvent_WildBattle
{
    u16 defeatedSpecies;
    u16 caughtSpecies;
    u8 mapSec;
};


struct QuestLogEvent_Departed
{
    u8 mapSec;
    u8 locationId;
};


struct QuestLogEvent_FieldMove
{
    u16 species;
    u8 fieldMove;
    u8 mapSec;
};



struct QuestLogEvent_Shop
{
    u32 totalMoney;
    u16 lastItemId;
    u16 itemQuantity;
    u8 mapSec;
    bool8 hasMultipleTransactions;
    u8 logEventId;
};


struct QuestLogEvent_StoryItem
{
    u16 itemId;
    u8 mapSec;
};

extern u8 gQuestLogState;
extern u8 gQuestLogPlaybackState;
extern struct FieldInput gQuestLogFieldInput;
extern struct QuestLogRepeatEventTracker gQuestLogRepeatEventTracker;
extern u16 *gQuestLogDefeatedWildMonRecord;
extern u16 *gQuestLogRecordingPointer;
extern u16 gQuestLogCurActionIdx;

void QuestLogRecordPlayerAvatarGfxTransition(u8);
void SetQuestLogEvent(u16, const u16 *);
void SetQLPlayedTheSlots(void);
void QuestLog_RecordEnteredMap(u16);
u8 QL_GetPlaybackState(void);
bool8 QL_AvoidDisplay(void (*func)(void));
void QuestLog_BackUpPalette(u16 offset, u16 size);
void CommitQuestLogWindow1(void);
void QuestLog_DrawPreviouslyOnQuestHeaderIfInPlaybackMode(void);
void ResetQuestLog(void);
void ResetTrainerFanClub(void);
void TryStartQuestLogPlayback(u8 taskId);
void SaveQuestLogData(void);
void QuestLog_CutRecording(void);
void ResetDeferredLinkEvent(void);
void QL_FinishRecordingScene(void);
void QuestLogEvents_HandleEndTrainerBattle(void);
void *QuestLogGetFlagOrVarPtr(bool8 isFlag, u16 idx);
void QuestLogSetFlagOrVar(bool8 isFlag, u16 idx, u16 value);
void QL_AddASLROffset(void *oldSaveBlockPtr);
void QL_UpdateObject(struct Sprite *sprite);
void QuestLogRecordNPCStep(u8 a0, u8 a1, u8 a2, u8 a3);
bool8 QL_IsTrainerSightDisabled(void);
void QuestLog_OnEscalatorWarp(u8 direction);
void QuestLogRecordPlayerAvatarGfxTransitionWithDuration(u8 movementActionId, u8 duration);
void Special_UpdateTrainerFansAfterLinkBattle(void);
void QuestLogRecordPlayerStep(u8 movementActionId);
void QuestLogRecordPlayerStepWithDuration(u8 movementActionId, u8 duration);
void QuestLogRecordNPCStepWithDuration(u8 localId, u8 mapNum, u8 mapGroup, u8 movementActionId, u8 duration);
void QL_AfterRecordFishActionSuccessful(void);
void QL_ResetDefeatedWildMonRecord(void);
void QL_RestoreMapLayoutId(void);
void QL_RecordFieldInput(struct FieldInput * fieldInput);
void QL_TryRunActions(void);
void RunQuestLogCB(void);
void QL_HandleInput(void);
bool8 QuestLogScenePlaybackIsEnding(void);
void SetQuestLogEvent_Arrived(void);
bool8 QuestLog_ShouldEndSceneOnMapChange(void);
void QuestLog_AdvancePlayhead_(void);
void QuestLog_InitPalettesBackup(void);
void QL_InitSceneObjectsAndActions(void);
u8 GetQuestLogStartType(void);
void QL_CopySaveState(void);
void QL_ResetPartyAndPC(void);
void QL_StartRecordingAction(u16 eventId);
bool8 QL_IsRoomToSaveAction(const void *cursor, size_t size);
bool8 QL_IsRoomToSaveEvent(const void *cursor, size_t size);

void QL_ResetEventStates(void);
void QL_ResetRepeatEventTracker(void);
u16 *QL_RecordAction_SceneEnd(u16 *);
u16 *QL_LoadAction_Wait(u16 *, struct QuestLogAction *);
u16 *QL_RecordAction_Input(u16 *, struct QuestLogAction *);
u16 *QL_LoadAction_Input(u16 *, struct QuestLogAction *);
u16 *QL_RecordAction_MovementOrGfxChange(u16 *, struct QuestLogAction *);
u16 *QL_LoadAction_MovementOrGfxChange(u16 *, struct QuestLogAction *);
void QL_EnableRecordingSteps(void);
u16 *QL_SkipCommand(u16 *, u16 **);
void QL_UpdateLastDepartedLocation(const u16 *);
u16 *QL_LoadAction_SceneEnd(u16 *, struct QuestLogAction *);
bool8 QL_LoadEvent(const u16 *);
bool8 QL_TryRepeatEvent(const u16 *);
void QL_RecordWait(u16);
# 12 "src/quest_log_events.c" 2
# 1 "include/party_menu.h" 1





# 1 "include/constants/party_menu.h" 1
# 131 "include/constants/party_menu.h"
enum
{
    CHOOSE_MONS_FOR_CABLE_CLUB_BATTLE,
    CHOOSE_MONS_FOR_BATTLE_TOWER,
    CHOOSE_MONS_FOR_UNION_ROOM_BATTLE,
};
# 7 "include/party_menu.h" 2

struct PartyMenu
{
    MainCallback exitCallback;
    TaskFunc task;
    u8 menuType:4;
    u8 layout:2;
    u8 chooseMonsBattleType:2;
    s8 slotId;
    s8 slotId2;
    u8 action;
    u16 bagItem;
    s16 data[2];
};

extern struct PartyMenu gPartyMenu;
extern bool8 gPartyMenuUseExitCallback;
extern u8 gSelectedMonPartyId;
extern MainCallback gPostMenuFieldCallback;
extern u8 gSelectedOrderFromParty[3];
extern u8 gBattlePartyCurrentOrder[6 / 2];

extern void (*gItemUseCB)(u8, TaskFunc);

void InitPartyMenu(u8 menuType, u8 layout, u8 partyAction, bool8 keepCursorPos, u8 messageId, TaskFunc task, MainCallback callback);
void AnimatePartySlot(u8 slot, u8 animNum);
bool8 IsMultiBattle(void);
u8 GetCursorSelectionMonId(void);
u8 GetPartyMenuType(void);
void Task_HandleChooseMonInput(u8 taskId);
u8 *GetMonNickname(struct Pokemon *mon, u8 *dest);
u8 DisplayPartyMenuMessage(const u8 *str, bool8 keepOpen);
bool8 IsPartyMenuTextPrinterActive(void);
void PartyMenuModifyHP(u8 taskId, u8 slot, s8 hpIncrement, s16 hpDifference, TaskFunc task);
u8 GetAilmentFromStatus(u32 status);
u8 GetMonAilment(struct Pokemon *mon);
void DisplayPartyMenuStdMessage(u32 stringId);
void LoadHeldItemIcons(void);
void DrawHeldItemIconsForTrade(u8 *partyCounts, u8 *partySpriteIds, u8 whichParty);
void SpriteCB_BounceConfirmCancelButton(u8 spriteId, u8 spriteId2, u8 animNum);
void CB2_SelectBagItemToGive(void);
void CB2_GiveHoldItem(void);
bool8 FieldCallback_PrepareFadeInFromMenu(void);
void CB2_ReturnToPartyMenuFromFlyMap(void);
void SetUsedFlyQuestLogEvent(const u8 *healLocCtrlData);
void CB2_ShowPartyMenuForItemUse(void);
void ItemUseCB_Medicine(u8 taskId, TaskFunc func);
void ItemUseCB_MedicineStep(u8 taskId, TaskFunc func);
void ItemUseCB_TryRestorePP(u8 taskId, TaskFunc func);
void ItemUseCB_PPUp(u8 taskId, TaskFunc func);
u16 ItemIdToBattleMoveId(u16 item);
bool8 IsMoveHm(u16 move);
bool8 MonKnowsMove(struct Pokemon *mon, u16 move);
void ItemUseCB_TMHM(u8 taskId, TaskFunc func);
void ItemUseCB_RareCandy(u8 taskId, TaskFunc func);
void ItemUseCB_SacredAsh(u8 taskId, TaskFunc func);
void ItemUseCB_EvolutionStone(u8 taskId, TaskFunc func);
u8 GetItemEffectType(u16 item);
void CB2_PartyMenuFromStartMenu(void);
void CB2_ChooseMonToGiveItem(void);
void ChooseMonToGiveMailFromMailbox(void);
void InitChooseMonsForBattle(u8 chooseMonsBattleType);
void ClearSelectedPartyOrder(void);
void ChooseMonForTradingBoard(u8 menuType, MainCallback callback);
void ChooseMonForMoveTutor(void);
void ChooseMonForWirelessMinigame(void);
void OpenPartyMenuInTutorialBattle(u8 partyAction);
void Pokedude_OpenPartyMenuInBattle(void);
void Pokedude_ChooseMonForInBattleItem(void);
void EnterPartyFromItemMenuInBattle(void);
void BufferBattlePartyCurrentOrder(void);
void BufferBattlePartyCurrentOrderBySide(u8 battlerId, u8 flankId);
void SwitchPartyOrderLinkMulti(u8 battlerId, u8 slot, u8 slot2);
void SwitchPartyMonSlots(u8 slot, u8 slot2);
u8 GetPartyIdFromBattlePartyId(u8 battlePartyId);
void ShowPartyMenuToShowcaseMultiBattleParty(void);
void ChooseMonForDaycare(void);
void ChoosePartyMonByMenuType(u8 menuType);
# 13 "src/quest_log_events.c" 2
# 1 "include/pokemon_storage_system.h" 1
# 22 "include/pokemon_storage_system.h"
enum
{
    WALLPAPER_FOREST,
    WALLPAPER_CITY,
    WALLPAPER_DESERT,
    WALLPAPER_SAVANNA,
    WALLPAPER_CRAG,
    WALLPAPER_VOLCANO,
    WALLPAPER_SNOW,
    WALLPAPER_CAVE,
    WALLPAPER_BEACH,
    WALLPAPER_SEAFLOOR,
    WALLPAPER_RIVER,
    WALLPAPER_SKY,
    WALLPAPER_STARS,
    WALLPAPER_POKECENTER,
    WALLPAPER_TILES,
    WALLPAPER_SIMPLE,
    WALLPAPER_COUNT
};


struct PokemonStorage
{
               u8 currentBox;
               struct BoxPokemon boxes[14][(5 * 6)];
               u8 boxNames[14][8 + 1];
               u8 boxWallpapers[14];
};

u8 *GetBoxNamePtr(u8 boxNumber);
struct BoxPokemon *GetBoxedMonPtr(u8 boxId, u8 monPosition);
void SetBoxMonNickAt(u8 boxId, u8 monPosition, const u8 *newNick);
s16 CompactPartySlots(void);
u32 GetBoxMonDataAt(u8 boxId, u8 monPosition, s32 request);
void ZeroBoxMonAt(u8 boxId, u8 monPosition);
void CB2_ReturnToPokeStorage(void);
void ResetPokemonStorageSystem(void);
u8 StorageGetCurrentBox(void);
void DrawTextWindowAndBufferTiles(const u8 *string, void *dst, u8 zero1, u8 zero2, u8 *buffer, s32 bytesToBuffer);
# 14 "src/quest_log_events.c" 2
# 1 "include/region_map.h" 1






enum {
    REGIONMAP_TYPE_NORMAL,
    REGIONMAP_TYPE_WALL,
    REGIONMAP_TYPE_FLY,
    REGIONMAP_TYPE_COUNT
};

u8 *GetMapName(u8 *dest, u16 mapsec, u16 fill);
u8 *GetMapNameGeneric(u8 *dest, u16 mapsec);
u8 *GetMapNameGeneric_(u8 *dest, u16 mapsec);
void InitRegionMapWithExitCB(u8 type, void (*callback)(void));
void CB2_OpenFlyMap(void);
# 15 "src/quest_log_events.c" 2
# 1 "include/strings.h" 1
# 12 "include/strings.h"
extern const u8 gText_FromSpace[];
extern const u8 gText_Lv50[];
extern const u8 gText_OpenLevel[];
extern const u8 gText_Mom[];
extern const u8 gText_Dad[];
extern const u8 gText_Cool[];
extern const u8 gText_Beauty[];
extern const u8 gText_Cute[];
extern const u8 gText_Smart[];
extern const u8 gText_Tough[];
extern const u8 gText_Single[];
extern const u8 gText_Double[];
extern const u8 gText_Spicy2[];
extern const u8 gText_Dry2[];
extern const u8 gText_Sweet2[];
extern const u8 gText_Bitter2[];
extern const u8 gText_Sour2[];
extern const u8 gText_Excellent[];
extern const u8 gText_VeryGood[];
extern const u8 gText_Good[];
extern const u8 gText_SoSo[];
extern const u8 gText_Bad[];
extern const u8 gText_TheWorst[];
extern const u8 gText_Slots[];
extern const u8 gText_Roulette[];
extern const u8 gText_Jackpot[];
extern const u8 gText_First[];
extern const u8 gText_Second[];
extern const u8 gText_Third[];
extern const u8 gText_NoDecorations[];
extern const u8 gText_NoDecorationsInUse[];
extern const u8 gText_Cancel[];
extern const u8 gText_Color161Shadow161[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_CantPlaceInRoom[];
extern const u8 gText_NoMoreDecorations[];
extern const u8 gText_NoMoreDecorations2[];
extern const u8 gText_InUseAlready[];
extern const u8 gText_CancelDecorating[];
extern const u8 gText_PlaceItHere[];
extern const u8 gText_CantBePlacedHere[];
extern const u8 gText_DecorationReturnedToPC[];
extern const u8 gText_StopPuttingAwayDecorations[];
extern const u8 gText_ReturnDecorationToPC[];
extern const u8 gText_NoDecorationHere[];
extern const u8 gText_DecorationWillBeDiscarded[];
extern const u8 gText_CantThrowAwayInUse[];
extern const u8 gText_DecorationThrownAway[];
extern const u8 gText_Desk[];
extern const u8 gText_Chair[];
extern const u8 gText_Plant[];
extern const u8 gText_Ornament[];
extern const u8 gText_Mat[];
extern const u8 gText_Poster[];
extern const u8 gText_PutOutSelectedDecorItem[];
extern const u8 gText_StoreChosenDecorInPC[];
extern const u8 gText_ThrowAwayUnwantedDecors[];
extern const u8 gText_Doll[];
extern const u8 gText_Cushion[];
extern const u8 gText_Decorate[];
extern const u8 gText_PutAway[];
extern const u8 gText_Toss2[];
extern const u8 gText_Hoenn[];
extern const u8 gText_Ferry[];
extern const u8 gText_SecretBase[];
extern const u8 gText_Hideout[];
extern const u8 gText_FlyToWhere[];
extern const u8 gText_ApostropheSBase[];
extern const u8 gText_NoRegistry[];
extern const u8 gText_OkayToDeleteFromRegistry[];
extern const u8 gText_RegisteredDataDeleted[];
extern const u8 gText_Confirm3[];
extern const u8 gText_Cancel4[];
extern const u8 gText_IsThisTheCorrectTime[];
extern const u8 gText_PkmnFainted3[];
extern const u8 gText_Coins[];
extern const u8 gText_EggNickname[];
extern const u8 gText_MenuPokemon[];

extern const u8 gOtherText_Use[];
extern const u8 gOtherText_Toss[];
extern const u8 gOtherText_Give[];
extern const u8 gOtherText_Exit[];
extern const u8 gText_ThreeHyphens[];
extern const u8 gText_SevenHyphens[];
extern const u8 gText_NumberClear01[];
extern const u8 gText_TimesStrVar1[];
extern const u8 gText_IsSelected[];
extern const u8 gText_ThereIsNoPokemon[];
extern const u8 gText_ItemCantBeHeld[];
extern const u8 gText_TMCase[];
extern const u8 gText_Close[];
extern const u8 gText_TMCaseWillBePutAway[];
extern const u8 gText_FontSmall[];
extern const u8 gText_FontNormal[];
extern const u8 gText_OhNoICantBuyThat[];
extern const u8 gText_HowManyWouldYouLikeToSell[];
extern const u8 gText_ICanPayThisMuch_WouldThatBeOkay[];
extern const u8 gText_TurnedOverItemsWorthYen[];
extern const u8 gPokedudeText_TMTypes[];
extern const u8 gPokedudeText_ReadTMDescription[];
extern const u8 gFameCheckerText_Cancel[];
extern const u8 gText_SelectorArrow2[];
extern const u8 gFameCheckerText_FameCheckerWillBeClosed[];
extern const u8 gFameCheckerText_ClearTextbox[];
extern const u8 gFameCheckerText_MainScreenUI[];
extern const u8 gFameCheckerText_PickScreenUI[];
extern const u8 gFameCheckerText_FlavorTextUI[];
extern const u8 gFameCheckerOakName[];
extern const u8 gFameCheckerDaisyName[];
extern const u8 gFameCheckerBillName[];
extern const u8 gFameCheckerMrFujiName[];


extern const u8 gTeachyTvString_TeachBattle[];
extern const u8 gTeachyTvString_StatusProblems[];
extern const u8 gTeachyTvString_TypeMatchups[];
extern const u8 gTeachyTvString_CatchPkmn[];
extern const u8 gTeachyTvString_AboutTMs[];
extern const u8 gTeachyTvString_RegisterItem[];
extern const u8 gTeachyTvString_Cancel[];
extern const u8 gTeachyTvText_PokedudeSaysHello[];
extern const u8 gTeachyTvText_BattleScript1[];
extern const u8 gTeachyTvText_StatusScript1[];
extern const u8 gTeachyTvText_MatchupsScript1[];
extern const u8 gTeachyTvText_CatchingScript1[];
extern const u8 gTeachyTvText_TMsScript1[];
extern const u8 gTeachyTvText_RegisterScript1[];
extern const u8 gTeachyTvText_BattleScript2[];
extern const u8 gTeachyTvText_StatusScript2[];
extern const u8 gTeachyTvText_MatchupsScript2[];
extern const u8 gTeachyTvText_CatchingScript2[];
extern const u8 gTeachyTvText_TMsScript2[];
extern const u8 gTeachyTvText_RegisterScript2[];


extern const u8 gText_HelpSystemControls_A_Next[];
extern const u8 gText_HelpSystemControls_PickOkEnd[];
extern const u8 gText_HelpSystemControls_AorBtoCancel[];
extern const u8 gText_HelpSystemControls_PickOkCancel[];


extern const u8 gString_Bill[];
extern const u8 gString_Someone[];
extern const u8 gString_Help[];
extern const u8 gString_HelpSystem_ClearTo8[];

extern const u8 gText_Var1IsSelected[];
extern const u8 gOtherText_WhereShouldTheStrVar1BePlaced[];
extern const u8 gOtherText_Powder[];
extern const u8 gText_NoMoreRoomInBag[];
extern const u8 gText_WithdrawHowMany[];
extern const u8 gText_WithdrewQuantItem[];
extern const u8 gText_WithdrawItem[];
extern const u8 gText_Withdraw[];
extern const u8 gText_ReturnToPC[];

extern const u8 gText_OakForbidsUseOfItemHere[];
extern const u8 gText_CantDismountBike[];
extern const u8 gText_CoinCase[];
extern const u8 gText_PlayerUsedVar2[];
extern const u8 gText_RepelEffectsLingered[];
extern const u8 gText_UsedVar2WildLured[];
extern const u8 gText_UsedVar2WildRepelled[];
extern const u8 gText_BoxFull[];
extern const u8 gText_PowderQty[];
extern const u8 gText_PlayedPokeFluteCatchy[];
extern const u8 gText_PlayedPokeFlute[];
extern const u8 gText_PokeFluteAwakenedMon[];
extern const u8 gText_WontHaveEffect[];
extern const u8 gText_YesNo[];
extern const u8 gText_Berry[];
extern const u8 gText_Ghost[];


extern const u8 gBattleText_Rose[];
extern const u8 gText_DefendersStatRose[];
extern const u8 gBattleText_GetPumped[];
extern const u8 gBattleText_MistShroud[];
extern const u8 gText_BadEgg[];
extern const u8 gText_PkmnsXPreventsSwitching[];
extern const u8 *const gStatNamesTable[];


extern const u8 gText_Diploma_Player[];
extern const u8 gText_Diploma_ThisDocument[];
extern const u8 gText_Diploma_GameFreak[];
extern const u8 gText_Diploma_National[];
extern const u8 gText_Diploma_Kanto[];


extern const u8 gString_BattleRecords_PlayersBattleResults[];
extern const u8 gString_BattleRecords_TotalRecord[];
extern const u8 gString_BattleRecords_ColumnHeaders[];
extern const u8 gString_BattleRecords_7Dashes[];
extern const u8 gString_BattleRecords_4Dashes[];


extern const u8 gString_OutOfCoins[];
extern const u8 gString_QuitPlaying[];
extern const u8 gString_SlotMachineControls[];


extern const u8 gText_EmptyString3[];
extern const u8 gText_SafariZoneMenu[];
extern const u8 gText_WhatWillPlayerThrow[];


extern const u8 gText_BattleSwitchWhich[];
extern const u8 gText_MoveInterfaceDynamicColors[];
extern const u8 gText_MoveInterfacePP[];
extern const u8 gText_MoveInterfaceType[];
extern const u8 gText_LinkStandby[];
extern const u8 gText_BattleMenu[];
extern const u8 gText_WhatWillPkmnDo[];


extern const u8 gText_BattleYesNoChoice[];


extern const u8 gText_ForPetesSake[];
extern const u8 gText_TheTrainerThat[];
extern const u8 gText_TryBattling[];
extern const u8 gText_InflictingDamageIsKey[];
extern const u8 gText_LoweringStats[];
extern const u8 gText_KeepAnEyeOnHP[];
extern const u8 gText_OakNoRunningFromATrainer[];
extern const u8 gText_WinEarnsPrizeMoney[];
extern const u8 gText_HowDissapointing[];
extern const u8 gText_WhatWillOldManDo[];


extern const u8 Pokedude_Text_SpeedierBattlerGoesFirst[];
extern const u8 Pokedude_Text_MyRattataFasterThanPidgey[];
extern const u8 Pokedude_Text_BattlersTakeTurnsAttacking[];
extern const u8 Pokedude_Text_MyRattataWonGetsEXP[];
extern const u8 Pokedude_Text_UhOhRattataPoisoned[];
extern const u8 Pokedude_Text_HealStatusRightAway[];
extern const u8 Pokedude_Text_UsingItemTakesTurn[];
extern const u8 Pokedude_Text_YayWeManagedToWin[];
extern const u8 Pokedude_Text_WaterNotVeryEffectiveAgainstGrass[];
extern const u8 Pokedude_Text_GrassEffectiveAgainstWater[];
extern const u8 Pokedude_Text_LetsTryShiftingMons[];
extern const u8 Pokedude_Text_ShiftingUsesTurn[];
extern const u8 Pokedude_Text_ButterfreeDoubleResistsGrass[];
extern const u8 Pokedude_Text_ButterfreeGoodAgainstOddish[];
extern const u8 Pokedude_Text_YeahWeWon[];
extern const u8 Pokedude_Text_WeakenMonBeforeCatching[];
extern const u8 Pokedude_Text_BestIfTargetStatused[];
extern const u8 Pokedude_Text_CantDoubleUpOnStatus[];
extern const u8 Pokedude_Text_LetMeThrowBall[];
extern const u8 Pokedude_Text_PickBestKindOfBall[];


extern const u8 gText_ChoosePokemon[];
extern const u8 gText_ChoosePokemonCancel[];
extern const u8 gText_ChoosePokemonConfirm[];
extern const u8 gText_MoveToWhere[];
extern const u8 gText_TeachWhichPokemon[];
extern const u8 gText_UseOnWhichPokemon[];
extern const u8 gText_GiveToWhichPokemon[];
extern const u8 gText_NothingToCut[];
extern const u8 gText_CantSurfHere[];
extern const u8 gText_AlreadySurfing[];
extern const u8 gText_CurrentIsTooFast[];
extern const u8 gText_EnjoyCycling[];
extern const u8 gText_InUseAlready_PM[];
extern const u8 gText_CantUseHere[];
extern const u8 gText_NoPokemonForBattle[];
extern const u8 gText_ChoosePokemon2[];
extern const u8 gText_NotEnoughHp[];
extern const u8 gText_ThreePkmnAreNeeded[];
extern const u8 gText_TwoPokemonAreNeeded[];
extern const u8 gText_PokemonCantBeSame[];
extern const u8 gText_NoIdenticalHoldItems[];
extern const u8 gText_DoWhatWithPokemon[];
extern const u8 gText_RestoreWhichMove[];
extern const u8 gText_BoostPp[];
extern const u8 gText_DoWhatWithItem[];
extern const u8 gText_DoWhatWithMail[];
extern const u8 gText_NoUse[];
extern const u8 gText_Able[];
extern const u8 gText_First_PM[];
extern const u8 gText_Second_PM[];
extern const u8 gText_Third_PM[];
extern const u8 gText_NotAble[];
extern const u8 gText_Able3[];
extern const u8 gText_NotAble2[];
extern const u8 gText_Learned[];
extern const u8 gText_Able2[];
extern const u8 gText_CutATreeOrGrass[];
extern const u8 gText_FlyToAKnownTown[];
extern const u8 gText_TravelOnWater[];
extern const u8 gText_MoveHeavyBoulders[];
extern const u8 gText_LightUpDarkness[];
extern const u8 gText_ShatterACrackedRock[];
extern const u8 gText_ClimbAWaterfall[];
extern const u8 gText_EscapeFromHere[];
extern const u8 gText_LureWildPokemon[];
extern const u8 gText_ShareHp[];
extern const u8 gText_ReturnToAHealingSpot[];
extern const u8 gText_Summary5[];
extern const u8 gText_Switch2[];
extern const u8 gText_Item[];
extern const u8 gText_Take[];
extern const u8 gText_Mail[];
extern const u8 gText_Take2[];
extern const u8 gText_Read2[];
extern const u8 gText_Shift[];
extern const u8 gText_SendOut[];
extern const u8 gText_Enter[];
extern const u8 gText_NoEntry[];
extern const u8 gText_Store[];
extern const u8 gText_Trade4[];
extern const u8 gText_NotPkmnOtherTrainerWants[];
extern const u8 gText_ThatIsntAnEgg[];
extern const u8 gText_OtherTrainerCantAcceptPkmn[];
extern const u8 gText_CantTradeWithTrainer[];
extern const u8 gText_CancelBattle[];
extern const u8 gText_PkmnWasGivenItem[];
extern const u8 gText_ReceivedItemFromPkmn[];
extern const u8 gText_PkmnAlreadyHoldingItemSwitch[];
extern const u8 gText_SwitchedPkmnItem[];
extern const u8 gText_BagFullCouldNotRemoveItem[];
extern const u8 gText_PkmnCantParticipate[];
extern const u8 gText_CancelParticipation[];
extern const u8 gText_OakThisIsListOfPokemon[];
extern const u8 gText_PartyMenu_OK[];
extern const u8 gText_MaleSymbol[];
extern const u8 gText_FemaleSymbol[];
extern const u8 gText_Slash[];
extern const u8 gText_OakImportantToGetToKnowPokemonThroughly[];
extern const u8 gText_PkmnNotHolding[];
extern const u8 gText_PCMailboxFull[];
extern const u8 gText_MailSentToPC[];
extern const u8 gText_MailMessageWillBeLost[];
extern const u8 gText_SendMailToPC[];
extern const u8 gText_MailTakenFromPkmn[];
extern const u8 gText_NoMoreThanTwoMayEnter[];
extern const u8 gText_NoMoreThanThreeMayEnter[];
extern const u8 gText_PauseUntilPress[];
extern const u8 gText_CantUseUntilNewBadge[];
extern const u8 gText_ReturnToHealingSpot[];
extern const u8 gText_EscapeFromHereAndReturnTo[];
extern const u8 gText_PkmnCuredOfPoison[];
extern const u8 gText_PkmnWokeUp2[];
extern const u8 gText_PkmnBurnHealed[];
extern const u8 gText_PkmnThawedOut[];
extern const u8 gText_PkmnCuredOfParalysis[];
extern const u8 gText_PkmnSnappedOutOfConfusion[];
extern const u8 gText_PkmnGotOverInfatuation[];
extern const u8 gText_PkmnBecameHealthy[];
extern const u8 gText_ItemEffect_HP[];
extern const u8 gText_ItemEffect_Attack[];
extern const u8 gText_ItemEffect_Defense[];
extern const u8 gText_ItemEffect_Speed[];
extern const u8 gText_ItemEffect_SpAtk[];
extern const u8 gText_ItemEffect_SpDef[];
extern const u8 gText_PkmnBaseVar2StatIncreased[];
extern const u8 gText_MovesPPIncreased[];
extern const u8 gText_PPWasRestored[];
extern const u8 gText_PkmnHPRestoredByVar2[];
extern const u8 gText_PkmnNeedsToReplaceMove[];
extern const u8 gText_PkmnCantLearnMove[];
extern const u8 gText_PkmnAlreadyKnows[];
extern const u8 gText_PkmnLearnedMove3[];
extern const u8 gText_WhichMoveToForget[];
extern const u8 gText_12PoofForgotMove[];
extern const u8 gText_StopLearningMove2[];
extern const u8 gText_MoveNotLearned[];
extern const u8 gText_PkmnElevatedToLvVar2[];
extern const u8 gText_PkmnHoldingItemCantHoldMail[];
extern const u8 gText_MailTransferredFromMailbox[];
extern const u8 gText_RemoveMailBeforeItem[];
extern const u8 gText_CantSwitchWithAlly[];
extern const u8 gText_PkmnHasNoEnergy[];
extern const u8 gText_PkmnAlreadyInBattle[];
extern const u8 gText_EggCantBattle[];
extern const u8 gText_PkmnAlreadySelected[];
extern const u8 gText_PkmnCantSwitchOut[];


extern const u8 gString_Dummy[];
extern const u8 gString_PokemonFireRed_Staff[];
extern const u8 gString_PokemonLeafGreen_Staff[];
extern const u8 gCreditsString_Director[];
extern const u8 gCreditsString_Junichi_Masuda[];
extern const u8 gCreditsString_Art_Director_Battle_Director[];
extern const u8 gCreditsString_Ken_Sugimori_Shigeki_Morimoto[];
extern const u8 gCreditsString_Program_Leader_Planning_Leader_Graphic_Design_Leader[];
extern const u8 gCreditsString_Tetsuya_Watanabe_Koji_Nishino_Takao_Unno[];
extern const u8 gCreditsString_Programmers[];
extern const u8 gCreditsString_Hiroyuki_Nakamura_Masao_Taya_Satoshi_Nohara_Miyuki_Iwasawa_Daisuke_Goto[];
extern const u8 gCreditsString_System_Programmers[];
extern const u8 gCreditsString_Tetsuya_Watanabe_Akito_Mori_Hisashi_Sogabe_Sousuke_Tamada[];
extern const u8 gCreditsString_Graphic_Designers[];
extern const u8 gCreditsString_Takao_Unno_Asuka_Iwashita_Kanako_Eo_Hiroki_Fuchino[];
extern const u8 gCreditsString_Graphic_Designers_2[];
extern const u8 gCreditsString_Ken_Sugimori_Hironobu_Yoshida[];
extern const u8 gCreditsString_Music_Composition[];
extern const u8 gCreditsString_Go_Ichinose_Junichi_Masuda[];
extern const u8 gCreditsString_Sound_Effects[];
extern const u8 gCreditsString_Go_Ichinose[];
extern const u8 gCreditsString_Game_Designers[];
extern const u8 gCreditsString_Junichi_Masuda_Koji_Nishino_Tetsuji_Ohta[];
extern const u8 gCreditsString_Game_Designers_2[];
extern const u8 gCreditsString_Hitomi_Sato_Shigeru_Ohmori_Tadashi_Takahashi[];
extern const u8 gCreditsString_Game_Scenario[];
extern const u8 gCreditsString_Hitomi_Sato_Satoshi_Tajiri[];
extern const u8 gCreditsString_Script_Designer_Map_Designer[];
extern const u8 gCreditsString_Satoshi_Nohara_Shigeru_Ohmori[];
extern const u8 gCreditsString_Parametric_Designers[];
extern const u8 gCreditsString_Koji_Nishino_Tetsuji_Ohta_Shigeki_Morimoto[];
extern const u8 gCreditsString_POKeDEX_Text[];
extern const u8 gCreditsString_Kenji_Matsushima[];
extern const u8 gCreditsString_POKeMON_Designers[];
extern const u8 gCreditsString_Ken_Sugimori_Motofumi_Fujiwara_Shigeki_Morimoto_Hironobu_Yoshida[];
extern const u8 gCreditsString_POKeMON_Designers_2[];
extern const u8 gCreditsString_Satoshi_Ohta_Asuka_Iwashita_Takao_Unno_Kanako_Eo_Aimi_Tomita[];
extern const u8 gCreditsString_POKeMON_Designers_3[];
extern const u8 gCreditsString_Atsuko_Nishida_Muneo_Saito_Rena_Yoshikawa_Jun_Okutani[];
extern const u8 gCreditsString_Supporting_Programmers[];
extern const u8 gCreditsString_Teruyuki_Yoshioka_Takao_Nakano_Satoshi_Mitsuhara_Daisuke_Hoshino[];
extern const u8 gCreditsString_NCL_Product_Testing[];
extern const u8 gCreditsString_NCL_Super_Mario_Club[];
extern const u8 gCreditsString_Special_Thanks[];
extern const u8 gCreditsString_Hiro_Nakamura_Hiroyuki_Uesugi_Teruki_Murakawa_Kazuya_Suyama[];
extern const u8 gCreditsString_Special_Thanks_2[];
extern const u8 gCreditsString_Kenji_Tominaga_Kenjiro_Ito_Tomotaka_Komura_Michiko_Takizawa[];
extern const u8 gCreditsString_Special_Thanks_3[];
extern const u8 gCreditsString_Makiko_Takada_Mikiko_Ohashi_Shusaku_Egami_Takanao_Kondo_Rui_Kawaguchi[];
extern const u8 gCreditsString_Braille_Code_Check[];
extern const u8 gCreditsString_Japan_Braille_Library[];
extern const u8 gCreditsString_Information_Supervisors[];
extern const u8 gCreditsString_Hiroki_Enomoto_Kazuyuki_Terada_Yuri_Sakurai_Yumi_Funasaka_Naoko_Yanase[];
extern const u8 gCreditsString_Coordinators[];
extern const u8 gCreditsString_Azusa_Tajima_Akira_Kinashi_Kazuki_Yoshihara_Retsuji_Nomoto[];
extern const u8 gCreditsString_Task_Managers[];
extern const u8 gCreditsString_Hitoshi_Yamagami_Gakuji_Nomoto[];
extern const u8 gCreditsString_Producers[];
extern const u8 gCreditsString_Hiroyuki_Jinnai_Takehiro_Izushi_Hiroaki_Tsuru[];
extern const u8 gCreditsString_Executive_Director[];
extern const u8 gCreditsString_Satoshi_Tajiri[];
extern const u8 gCreditsString_Executive_Producer[];
extern const u8 gCreditsString_Satoru_Iwata[];
extern const u8 gCreditsString_Executive_Producer_2[];
extern const u8 gCreditsString_Tsunekaz_Ishihara[];
extern const u8 gCreditsString_English_Version_Coordinators[];
extern const u8 gCreditsString_Hiro_Nakamura_Seth_McMahill[];
extern const u8 gCreditsString_Translator_Text_Editor[];
extern const u8 gCreditsString_Nob_Ogasawara_Teresa_Lillygren[];
extern const u8 gCreditsString_Programmers_2[];
extern const u8 gCreditsString_Teruki_Murakawa_Souichi_Yamamoto_Yuichiro_Ito_Akira_Kinashi[];
extern const u8 gCreditsString_Environment_Tool_Programmers[];
extern const u8 gCreditsString_Teruki_Murakawa_Souichi_Yamamoto_Kimiko_Nakamichi[];
extern const u8 gCreditsString_NOA_Product_Testing[];
extern const u8 gCreditsString_Thomas_Hertzog_Kathy_Huguenard_Mika_Kurosawa[];
extern const u8 gCreditsString_Braille_Code_Check_2[];
extern const u8 gCreditsString_National_Federation_of_the_Blind_Patricia_A_Maurer_Japan_Braille_Library_European_Blind_Union[];
extern const u8 gCreditsString_Braille_Code_Check_3[];
extern const u8 gCreditsString_National_Information_Library_Service_Margaret_Campion[];
extern const u8 gCreditsString_Special_Thanks_4[];
extern const u8 gCreditsString_Takehiro_Izushi_Motoyasu_Tojima_Hitoshi_Yamagami_Hiroyuki_Uesugi[];
extern const u8 gCreditsString_Special_Thanks_5[];
extern const u8 gCreditsString_Nicola_Pratt_Barlow_Shellie_Dow_Anthony_Howitt_Naoko_Saeki_Kyoko_Onishi[];
extern const u8 gCreditsString_Braille_Code_Check_4[];
extern const u8 gCreditsString_The_Royal_New_Zealand_Foundation_of_the_Blind_Greg_Moran[];
extern const u8 gCreditsString_Graphic_Designer[];
extern const u8 gCreditsString_Akira_Kinashi[];


extern const u8 gText_TheStrVar1CantBeHeldHere[];
extern const u8 gText_TossOutHowManyStrVar1s[];
extern const u8 gText_ThrewAwayStrVar2StrVar1s[];
extern const u8 gText_ThrowAwayStrVar2OfThisItemQM[];
extern const u8 gText_BerryPouch[];
extern const u8 gText_TheBerryPouchWillBePutAway[];


extern const u8 gText_ItemfinderResponding[];
extern const u8 gText_ItemfinderShakingWildly[];
extern const u8 gText_NopeTheresNoResponse[];


extern const u8 gText_CommErrorEllipsis[];
extern const u8 gText_MoveCloserToLinkPartner[];
extern const u8 gText_CommErrorCheckConnections[];
extern const u8 gText_ABtnTitleScreen[];
extern const u8 gText_ABtnRegistrationCounter[];


extern const u8 gText_SaveFileCorrupted[];
extern const u8 gText_SaveFileHasBeenDeleted[];
extern const u8 gText_1MSubCircuitBoardNotInstalled[];
extern const u8 gText_NewGame[];
extern const u8 gText_Continue[];
extern const u8 gText_MysteryGift[];
extern const u8 gText_WirelessNotConnected[];
extern const u8 gText_MysteryGiftCantUse[];
extern const u8 gText_Player[];
extern const u8 gText_Time[];
extern const u8 gText_Colon[];
extern const u8 gText_Pokedex[];
extern const u8 gTextJPDummy_Hiki[];
extern const u8 gText_Badges[];
extern const u8 gTextJPDummy_Ko[];
extern const u8 gText_Register[];


extern const u8 gText_PickOKExit[];
extern const u8 gText_PickOKCancel[];
extern const u8 gText_MysteryGift2[];
extern const u8 gJPText_MysteryGift[];
extern const u8 gJPText_DecideStop[];
extern const u8 gText_WhatToDoWithCards[];
extern const u8 gText_WhatToDoWithNews[];
extern const u8 gText_OkayToDiscardNews[];
extern const u8 gText_IfThrowAwayCardEventWontHappen[];
extern const u8 gText_WonderCardThrownAway[];
extern const u8 gText_WonderNewsThrownAway[];
extern const u8 gText_DataWillBeSaved[];
extern const u8 gText_SaveCompletedPressA[];
extern const u8 gText_WonderCards[];
extern const u8 gText_WonderNews[];
extern const u8 gText_Exit3[];
extern const u8 gText_WirelessCommunication[];
extern const u8 gText_Friend2[];
extern const u8 gText_Receive[];
extern const u8 gText_Send[];
extern const u8 gText_Toss[];
extern const u8 gText_VarietyOfEventsImportedWireless[];
extern const u8 gText_WonderCardsInPossession[];
extern const u8 gText_ReadNewsThatArrived[];
extern const u8 gText_ReturnToTitle[];
extern const u8 gText_NothingSentOver[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardReceived[];
extern const u8 gText_WonderCardReceivedFrom[];
extern const u8 gText_WonderNewsReceived[];
extern const u8 gText_WonderNewsReceivedFrom[];
extern const u8 gText_NewStampReceived[];
extern const u8 gText_AlreadyHadCard[];
extern const u8 gText_AlreadyHadStamp[];
extern const u8 gText_AlreadyHadNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_CommunicationCanceled[];
extern const u8 gText_CantAcceptCardFromTrainer[];
extern const u8 gText_CantAcceptNewsFromTrainer[];
extern const u8 gText_CommunicationError[];
extern const u8 gText_NewTrainerReceived[];
extern const u8 gText_WonderCardSentTo[];
extern const u8 gText_WonderNewsSentTo[];
extern const u8 gText_StampSentTo[];
extern const u8 gText_OtherTrainerHasCard[];
extern const u8 gText_OtherTrainerHasStamp[];
extern const u8 gText_OtherTrainerHasNews[];
extern const u8 gText_OtherTrainerCanceled[];
extern const u8 gText_GiftSentTo[];
extern const u8 gText_CantSendGiftToTrainer[];
extern const u8 gText_DontHaveCardNewOneInput[];
extern const u8 gText_DontHaveNewsNewOneInput[];
extern const u8 gText_WhereShouldCardBeAccessed[];
extern const u8 gText_WhereShouldNewsBeAccessed[];
extern const u8 gText_Communicating[];
extern const u8 gText_ThrowAwayWonderCard[];
extern const u8 gText_HaventReceivedCardsGift[];
extern const u8 gText_CommunicationCompleted[];
extern const u8 gText_HaventReceivedGiftOkayToDiscard[];
extern const u8 gText_SendingWonderCard[];
extern const u8 gText_SendingWonderNews[];


extern const u8 gText_BerryPickingRecords[];
extern const u8 gText_BerriesPicked[];
extern const u8 gText_BerriesInRowFivePlayers[];
extern const u8 gText_BestScore[];
extern const u8 gText_1Colon[];
extern const u8 gText_2Colon[];
extern const u8 gText_3Colon[];
extern const u8 gText_4Colon[];
extern const u8 gText_5Colon[];
extern const u8 gText_SpacePoints[];
extern const u8 gText_10P30P50P50P[];
extern const u8 gText_AnnouncingPrizes[];
extern const u8 gText_AnnouncingRankings[];
extern const u8 gText_FirstPlacePrize[];
extern const u8 gText_CantHoldAnyMore[];
extern const u8 gText_FilledStorageSpace[];
extern const u8 gText_BerryPickingResults[];
extern const u8 gText_WantToPlayAgain[];
extern const u8 gText_CommunicationStandby3[];
extern const u8 gText_SomeoneDroppedOut[];


extern const u8 gText_WhatWouldYouLikeToDo[];
extern const u8 gText_TakeOutItemsFromThePC[];
extern const u8 gText_StoreItemsInThePC[];
extern const u8 gText_GoBackToThePreviousMenu[];
extern const u8 gText_ItemStorage[];
extern const u8 gText_Mailbox[];
extern const u8 gText_TurnOff[];
extern const u8 gText_WithdrawItem2[];
extern const u8 gText_DepositItem2[];
extern const u8 gOtherText_Read[];
extern const u8 gOtherText_MoveToBag[];
extern const u8 gOtherText_Give2[];
extern const u8 gText_TheresNoMailHere[];
extern const u8 gText_ThereAreNoItems[];
extern const u8 gText_WhatWouldYouLikeToDoWithPlayersMail[];
extern const u8 gText_MessageWillBeLost[];
extern const u8 gText_BagIsFull[];
extern const u8 gText_MailReturnedToBagMessageErased[];


extern const u8 gText_MenuPokedex[];
extern const u8 gText_MenuBag[];
extern const u8 gText_MenuPlayer[];
extern const u8 gText_MenuSave[];
extern const u8 gText_MenuOption[];
extern const u8 gText_MenuExit[];
extern const u8 gText_MenuRetire[];
extern const u8 gText_MenuSafariStats[];
extern const u8 gStartMenuDesc_Pokedex[];
extern const u8 gStartMenuDesc_Pokemon[];
extern const u8 gStartMenuDesc_Bag[];
extern const u8 gStartMenuDesc_Save[];
extern const u8 gStartMenuDesc_Option[];
extern const u8 gStartMenuDesc_Exit[];
extern const u8 gStartMenuDesc_Retire[];
extern const u8 gStartMenuDesc_Player[];
extern const u8 gText_SaveError_PleaseExchangeBackupMemory[];
extern const u8 gText_SavingDontTurnOffThePower2[];
extern const u8 gSaveStatName_Player[];
extern const u8 gSaveStatName_Badges[];
extern const u8 gSaveStatName_Pokedex[];
extern const u8 gSaveStatName_Time[];


extern const u8 gText_From[];


extern const u8 gText_BigGuy[];
extern const u8 gText_BigGirl[];
extern const u8 gText_Son[];
extern const u8 gText_Daughter[];
extern const u8 gText_NowOn[];
extern const u8 gText_B4F[];
extern const u8 gText_B3F[];
extern const u8 gText_B2F[];
extern const u8 gText_B1F[];
extern const u8 gText_1F[];
extern const u8 gText_2F[];
extern const u8 gText_3F[];
extern const u8 gText_4F[];
extern const u8 gText_5F[];
extern const u8 gText_6F[];
extern const u8 gText_7F[];
extern const u8 gText_8F[];
extern const u8 gText_9F[];
extern const u8 gText_10F[];
extern const u8 gText_11F[];
extern const u8 gText_Rooftop[];
extern const u8 gText_BoulderBadge[];
extern const u8 gText_CascadeBadge[];
extern const u8 gText_ThunderBadge[];
extern const u8 gText_RainbowBadge[];
extern const u8 gText_SoulBadge[];
extern const u8 gText_MarshBadge[];
extern const u8 gText_VolcanoBadge[];
extern const u8 gText_EarthBadge[];
extern const u8 gText_LinkedGamePlay[];
extern const u8 gText_DirectCorner[];
extern const u8 gText_UnionRoom[];
extern const u8 gOtherText_Quit[];
extern const u8 gText_Energypowder_50[];
extern const u8 gText_EnergyRoot_80[];
extern const u8 gText_HealPowder_50[];
extern const u8 gText_RevivalHerb_300[];
extern const u8 gText_Protein_1000[];
extern const u8 gText_Iron_1000[];
extern const u8 gText_Carbos_1000[];
extern const u8 gText_Calcium_1000[];
extern const u8 gText_Zinc_1000[];
extern const u8 gText_HpUp_1000[];
extern const u8 gText_PpUp_3000[];


extern const u8 Text_AccessWhichPC[];
extern const u8 gText_SomeoneSPc[];
extern const u8 gText_BillSPc[];
extern const u8 gText_SPc[];
extern const u8 gText_HallOfFame_2[];
extern const u8 gText_LogOff[];
extern const u8 gText_ProfOakSPc[];
extern const u8 gText_Other[];
extern const u8 gOtherText_Double[];
extern const u8 gOtherText_Knockout[];
extern const u8 gOtherText_Mixed[];
extern const u8 gOtherText_Single[];
extern const u8 gText_Info[];
extern const u8 gText_Eggs[];
extern const u8 gText_HallOfFame[];
extern const u8 gText_Victories[];
extern const u8 gText_Quit[];
extern const u8 gText_Psn[];
extern const u8 gText_Par[];
extern const u8 gText_Slp[];
extern const u8 gText_Brn[];
extern const u8 gText_Frz[];
extern const u8 gText_Yes[];
extern const u8 gText_No[];
extern const u8 gText_SingleBattle[];
extern const u8 gText_DoubleBattle[];
extern const u8 gText_MultiBattle[];
extern const u8 gText_MakeAChallenge[];
extern const u8 gText_Info_2[];
extern const u8 gText_FreshWater_200[];
extern const u8 gText_SodaPop_300[];
extern const u8 gText_Lemonade_350[];
extern const u8 gText_50Coins_1000[];
extern const u8 gText_500Coins_10000[];
extern const u8 gText_Excellent[];
extern const u8 gText_NotSoBad[];
extern const u8 gText_RedShard[];
extern const u8 gText_YellowShard[];
extern const u8 gText_BlueShard[];
extern const u8 gText_GreenShard[];
extern const u8 gText_Right[];
extern const u8 gText_Left[];
extern const u8 gText_Tm13_4000Coins[];
extern const u8 gText_Tm23_3500Coins[];
extern const u8 gText_Tm24_4000Coins[];
extern const u8 gText_Tm30_4500Coins[];
extern const u8 gText_Tm35_4000Coins[];
extern const u8 gText_1F_2[];
extern const u8 gText_2F_2[];
extern const u8 gText_3F_2[];
extern const u8 gText_4F_2[];
extern const u8 gText_5F_2[];
extern const u8 gText_Normal[];
extern const u8 gText_Black[];
extern const u8 gText_Pink[];
extern const u8 gText_Sepia[];
extern const u8 gText_Eevee[];
extern const u8 gText_Flareon[];
extern const u8 gText_Jolteon[];
extern const u8 gText_Vaporeon[];
extern const u8 gText_QuitLooking[];
extern const u8 gText_FreshWater[];
extern const u8 gText_SodaPop[];
extern const u8 gText_Lemonade[];
extern const u8 gText_Bicycle_Price[];
extern const u8 gText_NoThanks[];
extern const u8 gText_Abra_180Coins[];
extern const u8 gText_Clefairy_500Coins[];
extern const u8 gText_Dratini_2800Coins[];
extern const u8 gText_Scyther_5500Coins[];
extern const u8 gText_Porygon_9999Coins[];
extern const u8 gText_Abra_120Coins[];
extern const u8 gText_Clefairy_750Coins[];
extern const u8 gText_Pinsir_2500Coins[];
extern const u8 gText_Dratini_4600Coins[];
extern const u8 gText_Porygon_6500Coins[];
extern const u8 gText_NoThanks_2[];
extern const u8 gText_HelixFossil[];
extern const u8 gText_DomeFossil[];
extern const u8 gText_OldAmber[];
extern const u8 gText_TradeCenter[];
extern const u8 gText_Colosseum[];
extern const u8 gText_GameLinkCable[];
extern const u8 gText_Wireless[];
extern const u8 gText_OneIsland[];
extern const u8 gText_TwoIsland[];
extern const u8 gText_ThreeIsland[];
extern const u8 gText_Vermilion[];
extern const u8 gText_Colosseum_2[];
extern const u8 gText_BerryCrush[];
extern const u8 gText_EmptyLinkService1[];
extern const u8 gText_EmptyLinkService2[];
extern const u8 gText_RecordCorner[];
extern const u8 gText_PokemonJump[];
extern const u8 gText_DodrioBerryPicking[];
extern const u8 gText_2Tinymushrooms[];
extern const u8 gText_1BigMushroom[];
extern const u8 gText_SeviiIslands[];
extern const u8 gText_NavelRock[];
extern const u8 gText_BirthIsland[];
extern const u8 gText_MiracleSeed_1000Coins[];
extern const u8 gText_Charcoal_1000Coins[];
extern const u8 gText_MysticWater_1000Coins[];
extern const u8 gText_YellowFlute_1600Coins[];
extern const u8 gText_SmokeBall_800Coins[];
extern const u8 gText_Multichoice_Empty1[];
extern const u8 gText_Multichoice_Empty2[];
extern const u8 gText_BecomeLeader[];
extern const u8 gText_JoinGroup[];
extern const u8 gText_Cool_2[];
extern const u8 gText_Beauty_2[];
extern const u8 gText_Cute_2[];
extern const u8 gText_Smart_2[];
extern const u8 gText_Tough_2[];
extern const u8 gText_Items[];
extern const u8 gText_KeyItems[];
extern const u8 gText_PokeBalls[];
extern const u8 gText_TMsAndHMs[];
extern const u8 gText_Berries[];
extern const u8 gText_Boulderbadge[];
extern const u8 gText_Cascadebadge[];
extern const u8 gText_Thunderbadge[];
extern const u8 gText_Rainbowbadge[];
extern const u8 gText_Soulbadge[];
extern const u8 gText_Marshbadge[];
extern const u8 gText_Volcanobadge[];
extern const u8 gText_Earthbadge[];
extern const u8 gText_Coins_2[];
extern const u8 gText_ItemsPocket[];
extern const u8 gText_KeyItemsPocket[];
extern const u8 gText_PokeBallsPocket[];
extern const u8 gText_TmCase[];
extern const u8 gText_BerryPouch_2[];
extern const u8 gText_FourIsland[];
extern const u8 gText_FiveIsland[];
extern const u8 gText_SixIsland[];
extern const u8 gText_SevenIsland[];


extern const u8 gText_IsThisTradeOkay[];
extern const u8 gText_XWillBeSentToY[];
extern const u8 gText_ByeByeVar1[];
extern const u8 gText_XSentOverY[];
extern const u8 gText_TakeGoodCareOfX[];
extern const u8 gText_CommunicationStandby5[];
extern const u8 gTradeText_Cancel[];
extern const u8 gTradeText_ChooseAPokemon[];
extern const u8 gTradeText_Summary[];
extern const u8 gTradeText_Trade[];
extern const u8 gText_CancelTrade[];
extern const u8 gTradeText_PressBButtonToExit[];
extern const u8 gText_TradeAction_Summary[];
extern const u8 gText_TradeAction_Trade[];
extern const u8 gText_Trade_CommunicationStandby[];
extern const u8 gText_TradeHasBeenCanceled[];
extern const u8 gText_Trade_OnlyPkmnForBattle[];
extern const u8 gText_OnlyPkmnForBattle[];
extern const u8 gText_WaitingForFriendToFinish[];
extern const u8 gText_FriendWantsToTrade[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OtherTrainersPkmnCantBeTraded[];
extern const u8 gText_4Qmark[];

extern const u8 gEasyChatGroupName_Pokemon[];
extern const u8 gEasyChatGroupName_Trainer[];
extern const u8 gEasyChatGroupName_Status[];
extern const u8 gEasyChatGroupName_Battle[];
extern const u8 gEasyChatGroupName_Greetings[];
extern const u8 gEasyChatGroupName_People[];
extern const u8 gEasyChatGroupName_Voices[];
extern const u8 gEasyChatGroupName_Speech[];
extern const u8 gEasyChatGroupName_Endings[];
extern const u8 gEasyChatGroupName_Feelings[];
extern const u8 gEasyChatGroupName_Conditions[];
extern const u8 gEasyChatGroupName_Actions[];
extern const u8 gEasyChatGroupName_Lifestyle[];
extern const u8 gEasyChatGroupName_Hobbies[];
extern const u8 gEasyChatGroupName_Time[];
extern const u8 gEasyChatGroupName_Misc[];
extern const u8 gEasyChatGroupName_Adjectives[];
extern const u8 gEasyChatGroupName_Events[];
extern const u8 gEasyChatGroupName_Move1[];
extern const u8 gEasyChatGroupName_Move2[];
extern const u8 gEasyChatGroupName_TrendySaying[];
extern const u8 gEasyChatGroupName_Pokemon2[];
extern const u8 gText_ThreeQuestionMarks[];


extern const u8 gText_LeagueChamp[];
extern const u8 gText_HOFNumber[];
extern const u8 gText_UPDOWNPick_ABUTTONBBUTTONCancel[];
extern const u8 gText_UPDOWNPick_ABUTTONNext_BBUTTONBack[];
extern const u8 gText_ABUTTONExit[];
extern const u8 gText_HOFCorrupted[];
extern const u8 gText_WelcomeToHOF[];
extern const u8 gText_Number[];
extern const u8 gText_Level[];
extern const u8 gText_IDNumber[];
extern const u8 gText_Name[];
extern const u8 gText_MainMenuTime[];


extern const u8 gText_TeachWhichMoveToMon[];
extern const u8 gText_MonLearnedMove[];
extern const u8 gText_MonIsTryingToLearnMove[];
extern const u8 gText_StopLearningMove[];
extern const u8 gText_1_2_and_Poof[];
extern const u8 gText_MonForgotOldMoveAndMonLearnedNewMove[];
extern const u8 gText_WhichMoveShouldBeForgotten[];
extern const u8 gText_TeachMoveQues[];
extern const u8 gText_GiveUpTryingToTeachNewMove[];


extern const u8 gText_DecimalPoint[];


extern const u8 gText_Rooftop2[];


extern const u8 gText_TextSpeed[];
extern const u8 gText_BattleScene[];
extern const u8 gText_BattleStyle[];
extern const u8 gText_Sound[];
extern const u8 gText_ButtonMode[];
extern const u8 gText_Frame[];
extern const u8 gText_OptionMenuCancel[];
extern const u8 gText_TextSpeedSlow[];
extern const u8 gText_TextSpeedMid[];
extern const u8 gText_TextSpeedFast[];
extern const u8 gText_BattleSceneOn[];
extern const u8 gText_BattleSceneOff[];
extern const u8 gText_BattleStyleShift[];
extern const u8 gText_BattleStyleSet[];
extern const u8 gText_SoundMono[];
extern const u8 gText_SoundStereo[];
extern const u8 gText_ButtonTypeHelp[];
extern const u8 gText_ButtonTypeLR[];
extern const u8 gText_ButtonTypeLEqualsA[];
extern const u8 gText_Option[];
extern const u8 gText_FrameType[];
extern const u8 gTextJP_Type[];
extern const u8 gText_PickSwitchCancel[];


extern const u8 gText_PkmnIsEvolving[];
extern const u8 gText_CongratsPkmnEvolved[];
extern const u8 gText_EllipsisQuestionMark[];
extern const u8 gText_PkmnStoppedEvolving[];


extern const u8 gText_ShopBuy[];
extern const u8 gText_ShopSell[];
extern const u8 gText_ShopQuit[];
extern const u8 gText_AnythingElseICanHelp[];
extern const u8 gText_QuitShopping[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_YouDontHaveMoney[];
extern const u8 gText_Var1CertainlyHowMany[];
extern const u8 gText_InBagVar1[];
extern const u8 gText_Var1AndYouWantedVar2[];
extern const u8 gText_HereYouGoThankYou[];
extern const u8 gText_NoMoreRoomForThis[];


extern const u8 gText_PokedexTableOfContents[];
extern const u8 gText_PickOK[];
extern const u8 gText_Seen[];
extern const u8 gText_Owned[];
extern const u8 gText_Kanto[];
extern const u8 gText_National[];
extern const u8 gText_PokemonListNoColor[];
extern const u8 gText_SearchNoColor[];
extern const u8 gText_5Dashes[];
extern const u8 gText_PickFlipPageCheckCancel[];
extern const u8 gText_PokedexNo[];
extern const u8 gText_Page[];
extern const u8 gText_DexCategory_GrasslandPkmn[];
extern const u8 gText_DexCategory_ForestPkmn[];
extern const u8 gText_DexCategory_WatersEdgePkmn[];
extern const u8 gText_DexCategory_SeaPkmn[];
extern const u8 gText_DexCategory_CavePkmn[];
extern const u8 gText_DexCategory_MountainPkmn[];
extern const u8 gText_DexCategory_RoughTerrainPkmn[];
extern const u8 gText_DexCategory_UrbanPkmn[];
extern const u8 gText_DexCategory_RarePkmn[];
extern const u8 gText_PokemonList[];
extern const u8 gText_NumericalMode[];
extern const u8 gText_PokemonHabitats[];
extern const u8 gText_Search[];
extern const u8 gText_AToZMode[];
extern const u8 gText_TypeMode[];
extern const u8 gText_LightestMode[];
extern const u8 gText_SmallestMode[];
extern const u8 gText_PokedexOther[];
extern const u8 gText_ClosePokedex[];
extern const u8 gText_NumericalModeKanto[];
extern const u8 gText_NumericalModeNational[];
extern const u8 gText_PokedexPokemon[];
extern const u8 gText_HT[];
extern const u8 gText_WT[];
extern const u8 gText_Lbs[];
extern const u8 gText_Cry[];
extern const u8 gText_NextDataCancel[];
extern const u8 gText_Next[];
extern const u8 gText_CancelPreviousData[];
extern const u8 gText_Area[];
extern const u8 gText_Size[];
extern const u8 gText_AreaUnknown[];


extern const u8 gText_Lv[];
extern const u8 gDaycareText_GetAlongVeryWell[];
extern const u8 gDaycareText_GetAlong[];
extern const u8 gDaycareText_DontLikeOther[];
extern const u8 gDaycareText_PlayOther[];
extern const u8 gExpandedPlaceholder_Empty[];
extern const u8 gText_HatchedFromEgg[];
extern const u8 gText_NickHatchPrompt[];


extern const u8 gText_WaitingTrainerFinishReading[];
extern const u8 gText_TrainerCardName[];
extern const u8 gText_TrainerCardIDNo[];
extern const u8 gText_TrainerCardMoney[];
extern const u8 gText_TrainerCardYen[];
extern const u8 gText_TrainerCardPokedex[];
extern const u8 gText_TrainerCardNull[];
extern const u8 gText_Colon2[];
extern const u8 gText_TrainerCardTime[];
extern const u8 gText_Var1sTrainerCard[];
extern const u8 gText_HallOfFameDebut[];
extern const u8 gText_WinLossRatio[];
extern const u8 gText_PokemonTrades[];
extern const u8 gText_BerryCrushes[];
extern const u8 gText_UnionRoomTradesBattles[];
extern const u8 gText_LinkBattles[];
extern const u8 gText_LinkCableBattles[];


extern const u8 gText_RegionMap_DPadMove[];
extern const u8 gText_RegionMap_Space[];
extern const u8 gText_RegionMap_AButtonGuide[];
extern const u8 gText_RegionMap_AButtonCancel[];
extern const u8 gText_RegionMap_AButtonCancel2[];
extern const u8 gText_RegionMap_AButtonSwitch[];
extern const u8 gText_RegionMap_AButtonOK[];
extern const u8 gText_RegionMap_UpDownPick[];
extern const u8 gText_RegionMap_NoData[];
extern const u8 gText_RegionMap_AreaDesc_ViridianForest[];
extern const u8 gText_RegionMap_AreaDesc_MtMoon[];
extern const u8 gText_RegionMap_AreaDesc_DiglettsCave[];
extern const u8 gText_RegionMap_AreaDesc_VictoryRoad[];
extern const u8 gText_RegionMap_AreaDesc_PokemonMansion[];
extern const u8 gText_RegionMap_AreaDesc_SafariZone[];
extern const u8 gText_RegionMap_AreaDesc_RockTunnel[];
extern const u8 gText_RegionMap_AreaDesc_SeafoamIslands[];
extern const u8 gText_RegionMap_AreaDesc_PokemonTower[];
extern const u8 gText_RegionMap_AreaDesc_CeruleanCave[];
extern const u8 gText_RegionMap_AreaDesc_PowerPlant[];
extern const u8 gText_RegionMap_AreaDesc_MtEmber[];
extern const u8 gText_RegionMap_AreaDesc_BerryForest[];
extern const u8 gText_RegionMap_AreaDesc_IcefallCave[];
extern const u8 gText_RegionMap_AreaDesc_LostCave[];
extern const u8 gText_RegionMap_AreaDesc_TanobyRuins[];
extern const u8 gText_RegionMap_AreaDesc_AlteringCave[];
extern const u8 gText_RegionMap_AreaDesc_PatternBush[];
extern const u8 gText_RegionMap_AreaDesc_DottedHole[];


extern const u8 gText_PlayerScurriedToCenter[];
extern const u8 gText_PlayerScurriedBackHome[];


extern const u8 gText_SaveFailedCheckingBackup[];
extern const u8 gText_BackupMemoryDamaged[];
extern const u8 gText_SaveCompletePressA[];


extern const u8 gText_DepositItem[];


extern const u8 gOtherText_Register[];
extern const u8 gOtherText_Walk[];
extern const u8 gOtherText_Check[];
extern const u8 gOtherText_Open[];
extern const u8 gOtherText_Deselect[];
extern const u8 gText_Items2[];
extern const u8 gText_PokeBalls2[];
extern const u8 gText_KeyItems2[];
extern const u8 gText_CloseBag[];
extern const u8 gText_CantWriteMailHere[];
extern const u8 gText_DepositHowManyStrVars1[];
extern const u8 gText_DepositedStrVar2StrVar1s[];
extern const u8 gText_NoRoomToStoreItems[];


extern const u8 gText_CommStandbyAwaitingOtherPlayer[];
extern const u8 gText_RefusedBattle[];
extern const u8 gText_BattleWasRefused[];


extern const u8 gText_F700JoinedChat[];
extern const u8 gText_F700LeftChat[];
extern const u8 gText_Hello[];
extern const u8 gText_Pokemon2[];
extern const u8 gText_Trade[];
extern const u8 gText_Battle[];
extern const u8 gText_Lets[];
extern const u8 gText_Ok[];
extern const u8 gText_Sorry[];
extern const u8 gText_YaySmileEmoji[];
extern const u8 gText_ThankYou[];
extern const u8 gText_ByeBye[];


extern const u8 gText_QuitChatting[];
extern const u8 gText_RegisterTextWhere[];
extern const u8 gText_RegisterTextHere[];
extern const u8 gText_InputText[];
extern const u8 gText_ExitingTheChat[];
extern const u8 gText_LeaderHasLeftEndingChat[];
extern const u8 gText_RegisteredTextChanged_OKtoSave[];
extern const u8 gText_RegisteredTextChanged_AlreadySavedFile[];
extern const u8 gText_RegisteredTextChanged_SavingDontTurnOff[];
extern const u8 gText_RegisteredTextChanged_SavedTheGame[];
extern const u8 gText_IfLeaderLeavesChatWillEnd[];
extern const u8 gText_Upper[];
extern const u8 gText_Lower[];
extern const u8 gText_Symbols[];
extern const u8 gText_Register2[];
extern const u8 gText_Exit[];


extern const u8 gText_Dynamic0Players[];
extern const u8 gText_Dynamic1Players[];
extern const u8 gText_Dynamic2Players[];
extern const u8 gText_Dynamic3Players[];
extern const u8 gText_WirelessCommunicationStatus[];
extern const u8 gText_PeopleTrading[];
extern const u8 gText_PeopleBattling[];
extern const u8 gText_PeopleInUnionRoom[];
extern const u8 gText_PeopleCommunicating[];


extern const u8 gJPText_ReceiveMysteryGiftWithEReader[];
extern const u8 gJPText_SelectConnectFromEReaderMenu[];
extern const u8 gJPText_SelectConnectWithGBA[];
extern const u8 gJPText_LinkIsIncorrect[];
extern const u8 gJPText_CardReadingHasBeenHalted[];
extern const u8 gJPText_Connecting[];
extern const u8 gJPText_ConnectionErrorCheckLink[];
extern const u8 gJPText_ConnectionErrorTryAgain[];
extern const u8 gJPText_AllowEReaderToLoadCard[];
extern const u8 gJPText_ConnectionComplete[];
extern const u8 gJPText_NewTrainerHasComeToSevii[];
extern const u8 gJPText_PleaseWaitAMoment[];
extern const u8 gJPText_WriteErrorUnableToSaveData[];


extern const u8 gText_WantToPlayAgain2[];
extern const u8 gText_SavingDontTurnOffPower[];
extern const u8 gText_SomeoneDroppedOut2[];
extern const u8 gText_CommunicationStandby4[];
extern const u8 gText_AwesomeWonF701F700[];
extern const u8 gText_FilledStorageSpace2[];
extern const u8 gText_CantHoldMore[];
extern const u8 gText_SpacePoints2[];
extern const u8 gText_SpaceTimes3[];
extern const u8 gText_JumpsInARow[];
extern const u8 gText_BestScore2[];
extern const u8 gText_ExcellentsInARow[];
extern const u8 gText_PkmnJumpRecords[];


extern const u8 gText_NumPlayerLink[];
extern const u8 gText_BronzeCard[];
extern const u8 gText_CopperCard[];
extern const u8 gText_SilverCard[];
extern const u8 gText_GoldCard[];


extern const u8 gText_BerryCrush_AreYouReady[];
extern const u8 gText_BerryCrush_WaitForOthersToChooseBerry[];
extern const u8 gText_BerryCrush_GainedXUnitsOfPowder[];
extern const u8 gText_BerryCrush_RecordingGameResults[];
extern const u8 gText_BerryCrush_WantToPlayAgain[];
extern const u8 gText_BerryCrush_NoBerries[];
extern const u8 gText_BerryCrush_MemberDroppedOut[];
extern const u8 gText_BerryCrush_TimeUp[];
extern const u8 gText_BerryCrush_CommunicationStandby[];
extern const u8 gText_1_ClrBluShdwLtBlu_Dynamic0[];
extern const u8 gText_1_Dynamic0[];
extern const u8 gText_SpaceTimes2[];
extern const u8 gText_XDotY[];
extern const u8 gText_StrVar1Berry[];
extern const u8 gText_TimeColon[];
extern const u8 gText_PressingSpeed[];
extern const u8 gText_Silkiness[];
extern const u8 gText_StrVar1[];
extern const u8 gText_SpaceMin[];
extern const u8 gText_XDotY2[];
extern const u8 gText_SpaceSec[];
extern const u8 gText_XDotY3[];
extern const u8 gText_TimesPerSec[];
extern const u8 gText_Var1Percent[];
extern const u8 gText_PressesRankings[];
extern const u8 gText_CrushingResults[];
extern const u8 gText_BerryCrush2[];
extern const u8 gText_PressingSpeedRankings[];
extern const u8 gText_Var1Players[];
extern const u8 gText_NeatnessRankings[];
extern const u8 gText_CooperativeRankings[];
extern const u8 gText_PressingPowerRankings[];


extern const u8 gText_QuestLog_PreviouslyOnYourQuest[];
extern const u8 gText_QuestLog_SwitchMon1WithMon2[];
extern const u8 gText_QuestLog_SwappedHeldItemsOnMon[];
extern const u8 gText_QuestLog_TookHeldItemFromMon[];
extern const u8 gText_QuestLog_UsedItemOnMonAtThisLocation[];
extern const u8 gText_QuestLog_UsedTheItem[];
extern const u8 gText_QuestLog_UsedTheKeyItem[];
extern const u8 gText_QuestLog_MonLearnedMoveFromTM[];
extern const u8 gText_QuestLog_MonReplacedMoveWithTM[];
extern const u8 gText_QuestLog_MonsWereFullyRestoredAtCenter[];
extern const u8 gText_QuestLog_PlayerBattledChampionRival[];
extern const u8 gText_QuestLog_PlayerSentOutMon1RivalSentOutMon2[];
extern const u8 gText_QuestLog_WonTheMatchAsAResult[];
extern const u8 gText_QuestLog_StoredItemInPC[];
extern const u8 gText_QuestLog_WithdrewItemFromPC[];
extern const u8 gText_QuestLog_TradedMon1ForPersonsMon2[];
extern const u8 gText_QuestLog_SingleBattleWithPersonResultedInOutcome[];
extern const u8 gText_QuestLog_DoubleBattleWithPersonResultedInOutcome[];
extern const u8 gText_QuestLog_MultiBattleWithPeopleResultedInOutcome[];
extern const u8 gText_QuestLog_Win[];
extern const u8 gText_QuestLog_Loss[];
extern const u8 gText_QuestLog_MingledInUnionRoom[];
extern const u8 gText_QuestLog_DepartedPlaceInTownForNextDestination[];
extern const u8 gText_QuestLog_SwitchedMonsBetweenBoxes[];
extern const u8 gText_QuestLog_MovedMonToNewBox[];
extern const u8 gText_QuestLog_SwitchedMonsWithinBox[];
extern const u8 gText_QuestLog_MovedMonWithinBox[];
extern const u8 gText_QuestLog_SwitchedPartyMonForPCMon[];
extern const u8 gText_QuestLog_WithdrewMonFromPC[];
extern const u8 gText_QuestLog_DepositedMonInPC[];
extern const u8 gText_QuestLog_SwitchedMultipleMons[];
extern const u8 gText_QuestLog_ADifferentSpot[];
extern const u8 gText_QuestLog_GaveMonHeldItemFromPC[];
extern const u8 gText_QuestLog_SwappedHeldItemFromPC[];
extern const u8 gText_QuestLog_ChattedWithManyTrainers[];
extern const u8 gText_QuestLog_Handily[];
extern const u8 gText_QuestLog_Tenaciously[];
extern const u8 gText_QuestLog_Somehow[];
extern const u8 gText_QuestLog_TradedMon1ForTrainersMon2[];
extern const u8 gText_QuestLog_BattledTrainerEndedInOutcome[];
extern const u8 gText_QuestLog_BoughtItem[];
extern const u8 gText_QuestLog_BoughtItemsIncludingItem[];
extern const u8 gText_QuestLog_SoldNumOfItem[];
extern const u8 gText_QuestLog_SoldItemsIncludingItem[];
extern const u8 gText_QuestLog_JustOne[];
extern const u8 gText_QuestLog_Num[];
extern const u8 gText_QuestLog_UsedSoftboiled[];
extern const u8 gText_QuestLog_UsedMilkDrink[];
extern const u8 gText_QuestLog_MonLearnedMoveFromHM[];
extern const u8 gText_QuestLog_MonReplacedMoveWithHM[];
extern const u8 gText_QuestLog_DefeatedWildMon[];
extern const u8 gText_QuestLog_DefeatedWildMons[];
extern const u8 gText_QuestLog_CaughtWildMon[];
extern const u8 gText_QuestLog_CaughtWildMons[];
extern const u8 gText_QuestLog_DefeatedWildMonAndCaughtWildMon[];
extern const u8 gText_QuestLog_DefeatedWildMonAndCaughtWildMons[];
extern const u8 gText_QuestLog_DefeatedWildMonsAndCaughtWildMon[];
extern const u8 gText_QuestLog_DefeatedWildMonsAndCaughtWildMons[];
extern const u8 gText_QuestLog_GaveMonHeldItem[];
extern const u8 gText_QuestLog_GaveMonHeldItem2[];
extern const u8 gText_QuestLog_UsedCut[];
extern const u8 gText_QuestLog_UsedFly[];
extern const u8 gText_QuestLog_UsedSurf[];
extern const u8 gText_QuestLog_UsedStrength[];
extern const u8 gText_QuestLog_UsedFlash[];
extern const u8 gText_QuestLog_UsedRockSmash[];
extern const u8 gText_QuestLog_UsedWaterfall[];
extern const u8 gText_QuestLog_UsedDive[];
extern const u8 gText_QuestLog_UsedDigInLocation[];
extern const u8 gText_QuestLog_UsedSweetScent[];
extern const u8 gText_QuestLog_UsedTeleportToLocation[];
extern const u8 gText_QuestLog_LeftTownsLocationForNextDestination[];
extern const u8 gText_QuestLog_PlayedGamesAtGameCorner[];
extern const u8 gText_QuestLog_RestedAtHome[];
extern const u8 gText_QuestLog_LeftOaksLab[];
extern const u8 gText_QuestLog_GymWasFullOfToughTrainers[];
extern const u8 gText_QuestLog_DepartedGym[];
extern const u8 gText_QuestLog_HadGreatTimeInSafariZone[];
extern const u8 gText_QuestLog_ManagedToGetOutOfLocation[];
extern const u8 gText_QuestLog_TookOnGymLeadersMonWithMonAndWon[];
extern const u8 gText_QuestLog_TookOnEliteFoursMonWithMonAndWon[];
extern const u8 gText_QuestLog_TookOnTrainersMonWithMonAndWon[];
extern const u8 gText_QuestLog_Coolly[];
extern const u8 gText_QuestLog_Barely[];
extern const u8 gText_QuestLog_UsedEscapeRope[];
extern const u8 gText_QuestLog_Draw[];
extern const u8 gText_QuestLog_DepartedTheLocationForNextDestination[];
extern const u8 gText_QuestLog_DepartedFromLocationToNextDestination[];
extern const u8 gText_QuestLog_ObtainedItemInLocation[];
extern const u8 gText_QuestLog_ArrivedInLocation[];
extern const u8 gText_QuestLog_SavedGameAtLocation[];
extern const u8 gText_QuestLog_Home[];
extern const u8 gText_QuestLog_OakResearchLab[];
extern const u8 gText_QuestLog_Gym[];
extern const u8 gText_QuestLog_PokemonLeagueGate[];
extern const u8 gText_QuestLog_ViridianForest[];
extern const u8 gText_QuestLog_PewterMuseumOfScience[];
extern const u8 gText_QuestLog_MtMoon[];
extern const u8 gText_QuestLog_BikeShop[];
extern const u8 gText_QuestLog_BillsHouse[];
extern const u8 gText_QuestLog_DayCare[];
extern const u8 gText_QuestLog_UndergroundPath[];
extern const u8 gText_QuestLog_PokemonFanClub[];
extern const u8 gText_QuestLog_SSAnne[];
extern const u8 gText_QuestLog_DiglettsCave[];
extern const u8 gText_QuestLog_RockTunnel[];
extern const u8 gText_QuestLog_PowerPlant[];
extern const u8 gText_QuestLog_PokemonTower[];
extern const u8 gText_QuestLog_VolunteerHouse[];
extern const u8 gText_QuestLog_NameRatersHouse[];
extern const u8 gText_QuestLog_CeladonDeptStore[];
extern const u8 gText_QuestLog_CeladonMansion[];
extern const u8 gText_QuestLog_RocketGameCorner[];
extern const u8 gText_QuestLog_Restaurant[];
extern const u8 gText_QuestLog_RocketHideout[];
extern const u8 gText_QuestLog_SafariZone[];
extern const u8 gText_QuestLog_WardensHome[];
extern const u8 gText_QuestLog_FightingDojo[];
extern const u8 gText_QuestLog_SilphCo[];
extern const u8 gText_QuestLog_SeafoamIslands[];
extern const u8 gText_QuestLog_PokemonMansion[];
extern const u8 gText_QuestLog_PokemonResearchLab[];
extern const u8 gText_QuestLog_VictoryRoad[];
extern const u8 gText_QuestLog_PokemonLeague[];
extern const u8 gText_QuestLog_CeruleanCave[];


extern const u8 gText_ClearAllSaveData[];
extern const u8 gText_ClearingData[];


extern const u8 gText_CombineFourWordsOrPhrases[];
extern const u8 gText_AndMakeYourProfile[];
extern const u8 gText_MakeMessageSixPhrases[];
extern const u8 gText_MaxTwoTwelveLetterPhrases[];
extern const u8 gText_FindWordsThatDescribeYour[];
extern const u8 gText_FeelingsRightNow[];
extern const u8 gText_CombineNineWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage[];
extern const u8 gText_ChangeJustOneWordOrPhrase[];
extern const u8 gText_AndImproveTheBardsSong[];
extern const u8 gText_AndFillOutTheQuestionnaire[];
extern const u8 gText_YourProfile[];
extern const u8 gText_YourFeelingAtTheBattlesStart[];
extern const u8 gText_WhatYouSayIfYouWin[];
extern const u8 gText_WhatYouSayIfYouLose[];
extern const u8 gText_TheAnswer[];
extern const u8 gText_TheMailMessage[];
extern const u8 gText_TheNewSong[];
extern const u8 gText_CombineTwoWordsOrPhrases[];
extern const u8 gText_AndMakeATrendySaying[];
extern const u8 gText_TheTrendySaying[];
extern const u8 gText_IsAsShownOkay[];
extern const u8 gText_AllTextBeingEditedWill[];
extern const u8 gText_BeDeletedThatOkay[];
extern const u8 gText_QuitEditing[];
extern const u8 gText_StopGivingPkmnMail[];
extern const u8 gText_Profile[];
extern const u8 gText_AtTheBattlesStart[];
extern const u8 gText_UponWinningABattle[];
extern const u8 gText_UponLosingABattle[];
extern const u8 gText_TheBardsSong[];
extern const u8 gText_WhatsHipAndHappening[];
extern const u8 gText_Interview[];
extern const u8 gText_Questionnaire[];
extern const u8 gText_DelAllCancelOk[];


extern const u8 gText_MoveOkBack[];
extern const u8 gText_AlphabetUpperLower[];
extern const u8 gText_YourName[];
extern const u8 gText_BoxName[];
extern const u8 gText_PkmnsNickname[];
extern const u8 gText_RivalsName[];


extern const u8 gText_WithdrawPokemon[];
extern const u8 gText_WithdrawMonDescription[];
extern const u8 gText_DepositPokemon[];
extern const u8 gText_DepositMonDescription[];
extern const u8 gText_MovePokemon[];
extern const u8 gText_MoveMonDescription[];
extern const u8 gText_MoveItems[];
extern const u8 gText_MoveItemsDescription[];
extern const u8 gText_SeeYa[];
extern const u8 gText_SeeYaDescription[];
extern const u8 gText_PartyFull[];
extern const u8 gText_JustOnePkmn[];
extern const u8 gText_Box[];
extern const u8 gText_ExitFromBox[];
extern const u8 gText_WhatDoYouWantToDo[];
extern const u8 gText_PleasePickATheme[];
extern const u8 gText_PickTheWallpaper[];
extern const u8 gText_PkmnIsSelected[];
extern const u8 gText_JumpToWhichBox[];
extern const u8 gText_DepositInWhichBox[];
extern const u8 gText_PkmnWasDeposited[];
extern const u8 gText_BoxIsFull2[];
extern const u8 gText_ReleaseThisPokemon[];
extern const u8 gText_PkmnWasReleased[];
extern const u8 gText_ByeByePkmn[];
extern const u8 gText_MarkYourPkmn[];
extern const u8 gText_ThatsYourLastPkmn[];
extern const u8 gText_YourPartysFull[];
extern const u8 gText_YoureHoldingAPkmn[];
extern const u8 gText_WhichOneWillYouTake[];
extern const u8 gText_YouCantReleaseAnEgg[];
extern const u8 gText_ContinueBoxOperations[];
extern const u8 gText_PkmnCameBack[];
extern const u8 gText_WasItWorriedAboutYou[];
extern const u8 gText_FourEllipsesExclamation[];
extern const u8 gText_PleaseRemoveTheMail[];
extern const u8 gText_PkmnIsSelected[];
extern const u8 gText_GiveToAPkmn[];
extern const u8 gText_PlacedItemInBag[];
extern const u8 gText_BagIsFull2[];
extern const u8 gText_PutItemInBag[];
extern const u8 gText_ItemIsNowHeld[];
extern const u8 gText_ChangedToNewItem[];
extern const u8 gText_MailCantBeStored[];
extern const u8 gPCText_Cancel[];
extern const u8 gPCText_Store[];
extern const u8 gPCText_Withdraw[];
extern const u8 gPCText_Move[];
extern const u8 gPCText_Shift[];
extern const u8 gPCText_Place[];
extern const u8 gPCText_Summary[];
extern const u8 gPCText_Release[];
extern const u8 gPCText_Mark[];
extern const u8 gPCText_Jump[];
extern const u8 gPCText_Wallpaper[];
extern const u8 gPCText_Name[];
extern const u8 gPCText_Take[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Switch[];
extern const u8 gPCText_Bag[];
extern const u8 gPCText_Info[];
extern const u8 gPCText_Scenery1[];
extern const u8 gPCText_Scenery2[];
extern const u8 gPCText_Scenery3[];
extern const u8 gPCText_Etcetera[];
extern const u8 gPCText_Forest[];
extern const u8 gPCText_City[];
extern const u8 gPCText_Desert[];
extern const u8 gPCText_Savanna[];
extern const u8 gPCText_Crag[];
extern const u8 gPCText_Volcano[];
extern const u8 gPCText_Snow[];
extern const u8 gPCText_Cave[];
extern const u8 gPCText_Beach[];
extern const u8 gPCText_Seafloor[];
extern const u8 gPCText_River[];
extern const u8 gPCText_Sky[];
extern const u8 gPCText_PolkaDot[];
extern const u8 gPCText_Pokecenter[];
extern const u8 gPCText_Machine[];
extern const u8 gPCText_Simple[];


extern const u8 gText_Counting_1[];
extern const u8 gText_Counting_2And[];
extern const u8 gText_Poof[];
extern const u8 gText_WasUsedOn[];
extern const u8 gText_Period[];
extern const u8 gText_LevelRoseTo[];
extern const u8 gText_Period2[];
extern const u8 gText_MonLearnedTMHM[];
extern const u8 gText_MonForgotMove[];
extern const u8 gText_And[];
extern const u8 gText_MachineSet[];
extern const u8 gText_Huh[];
extern const u8 gText_LevelUp_MaxHP[];
extern const u8 gText_LevelUp_Attack[];
extern const u8 gText_LevelUp_Defense[];
extern const u8 gText_LevelUp_SpAtk[];
extern const u8 gText_LevelUp_SpDef[];
extern const u8 gText_LevelUp_Speed[];
extern const u8 gText_LevelUp_Minus[];
extern const u8 gText_LevelUp_Plus[];


extern const u8 gText_PokemonOnHook[];
extern const u8 gText_NotEvenANibble[];
extern const u8 gText_ItGotAway[];


extern const u8 gText_PokeSum_PageName_KnownMoves[];
extern const u8 gText_PokeSum_Controls_PickSwitch[];
extern const u8 gText_PokeSum_Controls_Pick[];
extern const u8 gText_PokeSum_NoData[];
extern const u8 gText_PokeSum_Controls_PageDetail[];
extern const u8 gText_PokeSum_DexNoUnknown[];
extern const u8 gText_PokeSum_Item_None[];
extern const u8 gText_PokeSum_OneHyphen[];
extern const u8 gText_PokeSum_TwoHyphens[];
extern const u8 gText_PokeSum_PP[];
extern const u8 gText_Somewhere[];
extern const u8 gText_PokeSum_ATrade[];
extern const u8 gText_PokeSum_FatefulEncounterHatched_BoldGentleGrammar[];
extern const u8 gText_PokeSum_FatefulEncounterHatched[];
extern const u8 gText_PokeSum_Hatched_BoldGentleGrammar[];
extern const u8 gText_PokeSum_Hatched[];
extern const u8 gText_PokeSum_FatefulEncounterMet_BoldGentleGrammar[];
extern const u8 gText_PokeSum_FatefulEncounterMet[];
extern const u8 gText_PokeSum_Met_BoldGentleGrammar[];
extern const u8 gText_PokeSum_Met[];
extern const u8 gText_PokeSum_MetInATrade_BoldGentleGrammar[];
extern const u8 gText_PokeSum_MetInATrade[];
extern const u8 gText_PokeSum_ApparentlyFatefulEncounterHatched_BoldGentleGrammar[];
extern const u8 gText_PokeSum_ApparentlyFatefulEncounterHatched[];
extern const u8 gText_PokeSum_ApparentlyMet[];
extern const u8 gText_PokeSum_ApparentlyMet_BoldGentleGrammar[];
extern const u8 gText_PokeSum_ExpPoints[];
extern const u8 gText_PokeSum_NextLv[];
extern const u8 gText_PokeSum_PageName_PokemonInfo[];
extern const u8 gText_PokeSum_Controls_PageCancel[];
extern const u8 gText_PokeSum_Controls_Cancel[];
extern const u8 gText_PokeSum_PageName_PokemonSkills[];
extern const u8 gText_PokeSum_Controls_Page[];
extern const u8 gText_PokeSum_Controls_PickDelete[];
extern const u8 gText_PokeSum_HmMovesCantBeForgotten[];
extern const u8 gText_PokeSum_EggHatch_LongTime[];
extern const u8 gText_PokeSum_EggHatch_SomeTime[];
extern const u8 gText_PokeSum_EggHatch_Soon[];
extern const u8 gText_PokeSum_EggHatch_AlmostReady[];
extern const u8 gText_PokeSum_EggOrigin_DayCare[];
extern const u8 gText_PokeSum_EggOrigin_Trade[];
extern const u8 gText_PokeSum_EggOrigin_TravelingMan[];
extern const u8 gText_PokeSum_EggOrigin_Trade[];
extern const u8 gText_PokeSum_EggOrigin_NicePlace[];
extern const u8 gText_PokeSum_EggOrigin_Spa[];
extern const u8 gText_PokeSum_EggOrigin_Trade[];
# 16 "src/quest_log_events.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 1 "include/constants/map_types.h" 1
# 6 "include/constants/maps.h" 2
# 17 "src/quest_log_events.c" 2

# 1 "include/constants/items.h" 1
# 19 "src/quest_log_events.c" 2
# 1 "include/constants/region_map_sections.h" 1
# 20 "src/quest_log_events.c" 2

enum {
    STEP_RECORDING_MODE_ENABLED,
    STEP_RECORDING_MODE_DISABLED,
    STEP_RECORDING_MODE_DISABLED_UNTIL_DEPART,
};

struct DeferredLinkEvent
{
    u16 id;
    u16 __attribute__((aligned(4))) data[14];
};




static __attribute__((section("ewram_data"))) struct DeferredLinkEvent sDeferredEvent = {0};
__attribute__((section("ewram_data"))) struct QuestLogRepeatEventTracker gQuestLogRepeatEventTracker = {0};
static __attribute__((section("ewram_data"))) u8 sStepRecordingMode = 0;
static __attribute__((section("ewram_data"))) bool8 sNewlyEnteredMap = 0;
static __attribute__((section("ewram_data"))) u8 sLastDepartedLocation = 0;
static __attribute__((section("ewram_data"))) bool8 sPlayedTheSlots = 0;

static bool8 InQuestLogDisabledLocation(void);
static bool8 ShouldRegisterEvent_HandlePartyActions(u16, const u16 *);
static bool8 ShouldRegisterEvent_HandleBeatStoryTrainer(u16, const u16 *);
static u16 *ShouldRegisterEvent(u16, const u16 *);
static bool8 TryDeferLinkEvent(u16, const u16 *);
static bool8 TryDeferTrainerBattleEvent(u16, const u16 *);
static bool8 IsEventWithSpecialEncounterSpecies(u16, const u16 *);
static void UpdateRepeatEventCounter(u16);
static u16 *QL_RecordAction_Wait(u16 *, u16);
static u16 *RecordEvent_SwitchedPartyOrder(u16 *, const struct QuestLogEvent_SwitchedPartyOrder *);
static u16 *RecordEvent_UsedItem(u16 *, const struct QuestLogEvent_Item *);
static u16 *RecordEvent_GaveHeldItemFromPartyMenu(u16 *, const struct QuestLogEvent_Item *);
static u16 *RecordEvent_GaveHeldItemFromBagMenu(u16 *, const struct QuestLogEvent_Item *);
static u16 *RecordEvent_GaveHeldItemFromPC(u16 *, const struct QuestLogEvent_Item *);
static u16 *RecordEvent_TookHeldItem(u16 *, const struct QuestLogEvent_Item *);
static u16 *RecordEvent_SwappedHeldItemFromBag(u16 *, const struct QuestLogEvent_SwappedHeldItem *);
static u16 *RecordEvent_SwappedHeldItemFromPC(u16 *, const struct QuestLogEvent_SwappedHeldItem *);
static u16 *RecordEvent_UsedPkmnCenter(u16 *, const u16 *);
static u16 *RecordEvent_LinkTraded(u16 *, const struct QuestLogEvent_Traded *);
static u16 *RecordEvent_LinkBattledSingle(u16 *, const struct QuestLogEvent_LinkBattle *);
static u16 *RecordEvent_LinkBattledDouble(u16 *, const struct QuestLogEvent_LinkBattle *);
static u16 *RecordEvent_LinkBattledMulti(u16 *, const struct QuestLogEvent_LinkBattle *);
static u16 *RecordEvent_UsedUnionRoom(u16 *, const u16 *);
static u16 *RecordEvent_UsedUnionRoomChat(u16 *, const u16 *);
static u16 *RecordEvent_LinkTradedUnionRoom(u16 *, const struct QuestLogEvent_Traded *);
static u16 *RecordEvent_LinkBattledUnionRoom(u16 *, const struct QuestLogEvent_LinkBattle *);
static u16 *RecordEvent_SwitchedMonsBetweenBoxes(u16 *, const struct QuestLogEvent_MovedBoxMon *);
static u16 *RecordEvent_SwitchedMonsWithinBox(u16 *, const u16 *);
static u16 *RecordEvent_SwitchedPartyMonForPCMon(u16 *, const u16 *);
static u16 *RecordEvent_MovedMonBetweenBoxes(u16 *, const u16 *);
static u16 *RecordEvent_MovedMonWithinBox(u16 *, const u16 *);
static u16 *RecordEvent_WithdrewMonFromPC(u16 *, const u16 *);
static u16 *RecordEvent_DepositedMonInPC(u16 *, const u16 *);
static u16 *RecordEvent_SwitchedMultipleMons(u16 *, const u16 *);
static u16 *RecordEvent_DepositedItemInPC(u16 *, const struct QuestLogEvent_Item *);
static u16 *RecordEvent_WithdrewItemFromPC(u16 *, const struct QuestLogEvent_Item *);
static u16 *RecordEvent_DefeatedGymLeader(u16 *, const struct QuestLogEvent_TrainerBattle *);
static u16 *RecordEvent_DefeatedWildMon(u16 *, const struct QuestLogEvent_WildBattle *);
static u16 *RecordEvent_DefeatedEliteFourMember(u16 *, const struct QuestLogEvent_TrainerBattle *);
static u16 *RecordEvent_DefeatedChampion(u16 *, const struct QuestLogEvent_TrainerBattle *);
static u16 *RecordEvent_DefeatedNormalTrainer(u16 *, const struct QuestLogEvent_TrainerBattle *);
static u16 *RecordEvent_DepartedLocation(u16 *, const struct QuestLogEvent_Departed *);
static u16 *RecordEvent_UsedFieldMove(u16 *, const struct QuestLogEvent_FieldMove *);
static u16 *RecordEvent_BoughtItem(u16 *, const struct QuestLogEvent_Shop *);
static u16 *RecordEvent_SoldItem(u16 *, const struct QuestLogEvent_Shop *);
static u16 *RecordEvent_ObtainedStoryItem(u16 *, const struct QuestLogEvent_StoryItem *);
static u16 *RecordEvent_ArrivedInLocation(u16 *, const u16 *);
static const u16 *LoadEvent_SwitchedPartyOrder(const u16 *);
static const u16 *LoadEvent_UsedItem(const u16 *);
static const u16 *LoadEvent_GaveHeldItemFromPartyMenu(const u16 *);
static const u16 *LoadEvent_GaveHeldItemFromBagMenu(const u16 *);
static const u16 *LoadEvent_GaveHeldItemFromPC(const u16 *);
static const u16 *LoadEvent_TookHeldItem(const u16 *);
static const u16 *LoadEvent_SwappedHeldItem(const u16 *);
static const u16 *LoadEvent_SwappedHeldItemFromPC(const u16 *);
static const u16 *LoadEvent_UsedPkmnCenter(const u16 *);
static const u16 *LoadEvent_LinkTraded(const u16 *);
static const u16 *LoadEvent_LinkBattledSingle(const u16 *);
static const u16 *LoadEvent_LinkBattledDouble(const u16 *);
static const u16 *LoadEvent_LinkBattledMulti(const u16 *);
static const u16 *LoadEvent_UsedUnionRoom(const u16 *);
static const u16 *LoadEvent_UsedUnionRoomChat(const u16 *);
static const u16 *LoadEvent_LinkTradedUnionRoom(const u16 *);
static const u16 *LoadEvent_LinkBattledUnionRoom(const u16 *);
static const u16 *LoadEvent_SwitchedMonsBetweenBoxes(const u16 *);
static const u16 *LoadEvent_SwitchedMonsWithinBox(const u16 *);
static const u16 *LoadEvent_SwitchedPartyMonForPCMon(const u16 *);
static const u16 *LoadEvent_MovedMonBetweenBoxes(const u16 *);
static const u16 *LoadEvent_MovedMonWithinBox(const u16 *);
static const u16 *LoadEvent_WithdrewMonFromPC(const u16 *);
static const u16 *LoadEvent_DepositedMonInPC(const u16 *);
static const u16 *LoadEvent_SwitchedMultipleMons(const u16 *);
static const u16 *LoadEvent_DepositedItemInPC(const u16 *);
static const u16 *LoadEvent_WithdrewItemFromPC(const u16 *);
static const u16 *LoadEvent_DefeatedGymLeader(const u16 *);
static const u16 *LoadEvent_DefeatedWildMon(const u16 *);
static const u16 *LoadEvent_DefeatedEliteFourMember(const u16 *);
static const u16 *LoadEvent_DefeatedChampion(const u16 *);
static const u16 *LoadEvent_DefeatedTrainer(const u16 *);
static const u16 *LoadEvent_DepartedLocation(const u16 *);
static const u16 *LoadEvent_UsedFieldMove(const u16 *);
static const u16 *LoadEvent_BoughtItem(const u16 *);
static const u16 *LoadEvent_SoldItem(const u16 *);
static const u16 *LoadEvent_ObtainedStoryItem(const u16 *);
static const u16 *LoadEvent_ArrivedInLocation(const u16 *);
static bool8 IsSpeciesFromSpecialEncounter(u16);
static bool8 ShouldRegisterEvent_HandleDeparted(u16, const u16 *);
static bool8 ShouldRegisterEvent_DepartedGameCorner(u16, const u16 *);
static void TranslateLinkPartnersName(u8 *);

typedef u16 *(*RecordEventFunc)(u16 *, const u16 *);

static const RecordEventFunc sRecordEventFuncs[] = {
    [0] = ((void *)0),
    [1] = ((void *)0),
    [2] = ((void *)0),
    [3] = (RecordEventFunc) RecordEvent_SwitchedPartyOrder,
    [4] = (RecordEventFunc) RecordEvent_UsedItem,
    [5] = (RecordEventFunc) RecordEvent_GaveHeldItemFromPartyMenu,
    [6] = (RecordEventFunc) RecordEvent_GaveHeldItemFromBagMenu,
    [7] = (RecordEventFunc) RecordEvent_GaveHeldItemFromPC,
    [8] = (RecordEventFunc) RecordEvent_TookHeldItem,
    [9] = (RecordEventFunc) RecordEvent_SwappedHeldItemFromBag,
    [10] = (RecordEventFunc) RecordEvent_SwappedHeldItemFromPC,
    [11] = (RecordEventFunc) RecordEvent_UsedPkmnCenter,
    [12] = (RecordEventFunc) RecordEvent_LinkTraded,
    [13] = (RecordEventFunc) RecordEvent_LinkBattledSingle,
    [14] = (RecordEventFunc) RecordEvent_LinkBattledDouble,
    [15] = (RecordEventFunc) RecordEvent_LinkBattledMulti,
    [16] = (RecordEventFunc) RecordEvent_UsedUnionRoom,
    [17] = (RecordEventFunc) RecordEvent_UsedUnionRoomChat,
    [18] = (RecordEventFunc) RecordEvent_LinkTradedUnionRoom,
    [19] = (RecordEventFunc) RecordEvent_LinkBattledUnionRoom,
    [20] = (RecordEventFunc) RecordEvent_SwitchedMonsBetweenBoxes,
    [21] = (RecordEventFunc) RecordEvent_SwitchedMonsWithinBox,
    [22] = (RecordEventFunc) RecordEvent_SwitchedPartyMonForPCMon,
    [23] = (RecordEventFunc) RecordEvent_MovedMonBetweenBoxes,
    [24] = (RecordEventFunc) RecordEvent_MovedMonWithinBox,
    [25] = (RecordEventFunc) RecordEvent_WithdrewMonFromPC,
    [26] = (RecordEventFunc) RecordEvent_DepositedMonInPC,
    [27] = (RecordEventFunc) RecordEvent_SwitchedMultipleMons,
    [28] = (RecordEventFunc) RecordEvent_DepositedItemInPC,
    [29] = (RecordEventFunc) RecordEvent_WithdrewItemFromPC,
    [30] = (RecordEventFunc) RecordEvent_DefeatedGymLeader,
    [31] = (RecordEventFunc) RecordEvent_DefeatedWildMon,
    [32] = (RecordEventFunc) RecordEvent_DefeatedEliteFourMember,
    [33] = (RecordEventFunc) RecordEvent_DefeatedChampion,
    [34] = (RecordEventFunc) RecordEvent_DefeatedNormalTrainer,
    [35] = (RecordEventFunc) RecordEvent_DepartedLocation,
    [36] = (RecordEventFunc) RecordEvent_UsedFieldMove,
    [37] = (RecordEventFunc) RecordEvent_BoughtItem,
    [38] = (RecordEventFunc) RecordEvent_SoldItem,
    [39] = ((void *)0),
    [40] = (RecordEventFunc) RecordEvent_ObtainedStoryItem,
    [41] = ((void *)0),
    [42] = (RecordEventFunc) RecordEvent_ArrivedInLocation
};

static const u16 *(*const sLoadEventFuncs[])(const u16 *) = {
    [0] = ((void *)0),
    [1] = ((void *)0),
    [2] = ((void *)0),
    [3] = LoadEvent_SwitchedPartyOrder,
    [4] = LoadEvent_UsedItem,
    [5] = LoadEvent_GaveHeldItemFromPartyMenu,
    [6] = LoadEvent_GaveHeldItemFromBagMenu,
    [7] = LoadEvent_GaveHeldItemFromPC,
    [8] = LoadEvent_TookHeldItem,
    [9] = LoadEvent_SwappedHeldItem,
    [10] = LoadEvent_SwappedHeldItemFromPC,
    [11] = LoadEvent_UsedPkmnCenter,
    [12] = LoadEvent_LinkTraded,
    [13] = LoadEvent_LinkBattledSingle,
    [14] = LoadEvent_LinkBattledDouble,
    [15] = LoadEvent_LinkBattledMulti,
    [16] = LoadEvent_UsedUnionRoom,
    [17] = LoadEvent_UsedUnionRoomChat,
    [18] = LoadEvent_LinkTradedUnionRoom,
    [19] = LoadEvent_LinkBattledUnionRoom,
    [20] = LoadEvent_SwitchedMonsBetweenBoxes,
    [21] = LoadEvent_SwitchedMonsWithinBox,
    [22] = LoadEvent_SwitchedPartyMonForPCMon,
    [23] = LoadEvent_MovedMonBetweenBoxes,
    [24] = LoadEvent_MovedMonWithinBox,
    [25] = LoadEvent_WithdrewMonFromPC,
    [26] = LoadEvent_DepositedMonInPC,
    [27] = LoadEvent_SwitchedMultipleMons,
    [28] = LoadEvent_DepositedItemInPC,
    [29] = LoadEvent_WithdrewItemFromPC,
    [30] = LoadEvent_DefeatedGymLeader,
    [31] = LoadEvent_DefeatedWildMon,
    [32] = LoadEvent_DefeatedEliteFourMember,
    [33] = LoadEvent_DefeatedChampion,
    [34] = LoadEvent_DefeatedTrainer,
    [35] = LoadEvent_DepartedLocation,
    [36] = LoadEvent_UsedFieldMove,
    [37] = LoadEvent_BoughtItem,
    [38] = LoadEvent_SoldItem,
    [39] = ((void *)0),
    [40] = LoadEvent_ObtainedStoryItem,
    [41] = ((void *)0),
    [42] = LoadEvent_ArrivedInLocation
};

static const u8 sQuestLogEventCmdSizes[] = {
    [0] = 8,
    [1] = 8,
    [2] = 8,
    [3] = 4 + 4,
    [4] = 4 + 6,
    [5] = 4 + 4,
    [6] = 4 + 4,
    [7] = 4 + 4,
    [8] = 4 + 4,
    [9] = 4 + 6,
    [10] = 4 + 6,
    [11] = 4 + 0,
    [12] = 4 + 12,
    [13] = 4 + 8,
    [14] = 4 + 8,
    [15] = 4 + 22,
    [16] = 4 + 0,
    [17] = 4 + 0,
    [18] = 4 + 12,
    [19] = 4 + 8,
    [20] = 4 + 6,
    [21] = 4 + 6,
    [22] = 4 + 6,
    [23] = 4 + 4,
    [24] = 4 + 4,
    [25] = 4 + 4,
    [26] = 4 + 4,
    [27] = 4 + 2,
    [28] = 4 + 2,
    [29] = 4 + 2,
    [30] = 4 + 8,
    [31] = 4 + 8,
    [32] = 4 + 8,
    [33] = 4 + 6,
    [34] = 4 + 8,
    [35] = 4 + 2,
    [36] = 4 + 4,
    [37] = 4 + 10,
    [38] = 4 + 10,
    [39] = 2,
    [40] = 4 + 4,
    [41] = 4,
    [42] = 4 + 2
};

static const u8 *const sDefeatedOpponentFlavorTexts[] = {
    gText_QuestLog_Handily,
    gText_QuestLog_Tenaciously,
    gText_QuestLog_Somehow
};

static const u8 *const sDefeatedChampionFlavorTexts[] = {
    gText_QuestLog_Coolly,
    gText_QuestLog_Somehow,
    gText_QuestLog_Barely
};

static const u8 *const sBattleOutcomeTexts[] = {
    [1 - 1] = gText_QuestLog_Win,
    [2 - 1] = gText_QuestLog_Loss,
    [3 - 1] = gText_QuestLog_Draw,
};

static const u8 *const sLocationNameTexts[] =
{
    [0] = gText_QuestLog_Home,
    [1] = gText_QuestLog_OakResearchLab,
    [2] = gText_QuestLog_Gym,
    [3] = gText_QuestLog_PokemonLeagueGate,
    [4] = gText_QuestLog_PokemonLeagueGate,
    [5] = gText_QuestLog_ViridianForest,
    [6] = gText_QuestLog_ViridianForest,
    [7] = gText_QuestLog_PewterMuseumOfScience,
    [8] = gText_QuestLog_Gym,
    [9] = gText_QuestLog_MtMoon,
    [10] = gText_QuestLog_MtMoon,
    [11] = gText_QuestLog_Gym,
    [12] = gText_QuestLog_BikeShop,
    [13] = gText_QuestLog_BillsHouse,
    [14] = gText_QuestLog_DayCare,
    [15] = gText_QuestLog_UndergroundPath,
    [16] = gText_QuestLog_UndergroundPath,
    [17] = gText_QuestLog_PokemonFanClub,
    [18] = gText_QuestLog_Gym,
    [19] = gText_QuestLog_SSAnne,
    [20] = gText_QuestLog_DiglettsCave,
    [21] = gText_QuestLog_DiglettsCave,
    [22] = gText_QuestLog_RockTunnel,
    [23] = gText_QuestLog_RockTunnel,
    [24] = gText_QuestLog_PowerPlant,
    [25] = gText_QuestLog_PokemonTower,
    [26] = gText_QuestLog_VolunteerHouse,
    [27] = gText_QuestLog_NameRatersHouse,
    [28] = gText_QuestLog_UndergroundPath,
    [29] = gText_QuestLog_UndergroundPath,
    [30] = gText_QuestLog_CeladonDeptStore,
    [31] = gText_QuestLog_CeladonMansion,
    [32] = gText_QuestLog_RocketGameCorner,
    [33] = gText_QuestLog_Gym,
    [34] = gText_QuestLog_Restaurant,
    [35] = gText_QuestLog_RocketHideout,
    [36] = gText_QuestLog_SafariZone,
    [37] = gText_QuestLog_Gym,
    [38] = gText_QuestLog_WardensHome,
    [39] = gText_QuestLog_FightingDojo,
    [40] = gText_QuestLog_Gym,
    [41] = gText_QuestLog_SilphCo,
    [42] = gText_QuestLog_SeafoamIslands,
    [43] = gText_QuestLog_SeafoamIslands,
    [44] = gText_QuestLog_PokemonMansion,
    [45] = gText_QuestLog_Gym,
    [46] = gText_QuestLog_PokemonResearchLab,
    [47] = gText_QuestLog_VictoryRoad,
    [48] = gText_QuestLog_VictoryRoad,
    [49] = gText_QuestLog_PokemonLeague,
    [50] = gText_QuestLog_CeruleanCave
};

static const u8 *const sDepartedLocationTexts[] =
{
    [0] = gText_QuestLog_DepartedPlaceInTownForNextDestination,
    [1] = gText_QuestLog_LeftTownsLocationForNextDestination,
    [2] = gText_QuestLog_PlayedGamesAtGameCorner,
    [3] = gText_QuestLog_RestedAtHome,
    [4] = gText_QuestLog_LeftOaksLab,
    [5] = gText_QuestLog_GymWasFullOfToughTrainers,
    [6] = gText_QuestLog_HadGreatTimeInSafariZone,
    [7] = gText_QuestLog_ManagedToGetOutOfLocation,
    [8] = gText_QuestLog_DepartedTheLocationForNextDestination,
    [9] = gText_QuestLog_DepartedFromLocationToNextDestination
};

static const u8 sLocationToDepartedTextId[] =
{
    [0] = 3,
    [1] = 4,
    [2] = 5,
    [3] = 8,
    [4] = 8,
    [5] = 7,
    [6] = 7,
    [7] = 1,
    [8] = 5,
    [9] = 7,
    [10] = 7,
    [11] = 5,
    [12] = 0,
    [13] = 0,
    [14] = 0,
    [15] = 8,
    [16] = 8,
    [17] = 0,
    [18] = 5,
    [19] = 8,
    [20] = 7,
    [21] = 7,
    [22] = 7,
    [23] = 7,
    [24] = 8,
    [25] = 8,
    [26] = 0,
    [27] = 0,
    [28] = 8,
    [29] = 8,
    [30] = 0,
    [31] = 0,
    [32] = 2,
    [33] = 5,
    [34] = 0,
    [35] = 8,
    [36] = 6,
    [37] = 5,
    [38] = 0,
    [39] = 0,
    [40] = 5,
    [41] = 9,
    [42] = 7,
    [43] = 7,
    [44] = 9,
    [45] = 5,
    [46] = 0,
    [47] = 7,
    [48] = 7,
    [49] = 8,
    [50] = 7
};

static const u8 sGymCityMapSecs[(1 + ((((0x500 + 1) + 768 - 1) + 1) + 0x27) - ((((0x500 + 1) + 768 - 1) + 1) + 0x20))] = {
    0x5A,
    0x5B,
    0x5D,
    0x5E,
    0x5F,
    0x62,
    0x60,
    0x59,
};

static const u8 *const sUsedFieldMoveTexts[] =
{
    [0] = gText_QuestLog_UsedFlash,
    [1] = gText_QuestLog_UsedCut,
    [2] = gText_QuestLog_UsedFly,
    [3] = gText_QuestLog_UsedStrength,
    [4] = gText_QuestLog_UsedSurf,
    [5] = gText_QuestLog_UsedRockSmash,
    [6] = gText_QuestLog_UsedWaterfall,
    [7] = gText_QuestLog_UsedTeleportToLocation,
    [8] = gText_QuestLog_UsedDigInLocation,
    [9] = gText_QuestLog_UsedMilkDrink,
    [10] = gText_QuestLog_UsedSoftboiled,
    [11] = gText_QuestLog_UsedSweetScent
};

static const u16 sWorldMapFlags[] =
{
    ((((0x500 + 1) + 768 - 1) + 1) + 0x91),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x92),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x93),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x94),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x95),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x96),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x97),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x98),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x99),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x9A),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x9B),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x9C),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x9D),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x9E),
    ((((0x500 + 1) + 768 - 1) + 1) + 0x9F),
    ((((0x500 + 1) + 768 - 1) + 1) + 0xA0),
    ((((0x500 + 1) + 768 - 1) + 1) + 0xA1)
};

void SetQuestLogEvent(u16 eventId, const u16 * data)
{
    u16 *r1;

    if (eventId == 35 && sStepRecordingMode == STEP_RECORDING_MODE_DISABLED_UNTIL_DEPART)
    {
        QL_EnableRecordingSteps();
        return;
    }
    QL_EnableRecordingSteps();

    if (gQuestLogState == 2)
        return;

    if (!((eventId) >= 3 && (eventId) <= 42))
        return;


    if (InQuestLogDisabledLocation() == 1)
        return;

    if (TryDeferLinkEvent(eventId, data) == 1)
        return;


    if (MenuHelpers_IsLinkActive() == 1 || InUnionRoom() == 1)
        return;

    if (TryDeferTrainerBattleEvent(eventId, data) == 1)
        return;


    if (IsEventWithSpecialEncounterSpecies(eventId, data) == 1)
        return;


    if (ShouldRegisterEvent_DepartedGameCorner(eventId, data) == 0)
        return;

    if (gQuestLogPlaybackState == 0)
    {
        if (ShouldRegisterEvent_HandlePartyActions(eventId, data) == 1)
            return;

        if (eventId != 31 || gQuestLogDefeatedWildMonRecord == ((void *)0))
        {
            if (ShouldRegisterEvent_HandleDeparted(eventId, data) == 0)
                return;
            QL_StartRecordingAction(eventId);
        }
    }
    else if (eventId == 40)
        return;

    UpdateRepeatEventCounter(eventId);
    if (eventId == 31)
    {
        if (gQuestLogDefeatedWildMonRecord == ((void *)0))
        {
            gQuestLogDefeatedWildMonRecord = gQuestLogRecordingPointer;
            r1 = sRecordEventFuncs[eventId](gQuestLogDefeatedWildMonRecord, data);
        }
        else
        {
            sRecordEventFuncs[eventId](gQuestLogDefeatedWildMonRecord, data);
            return;
        }
    }
    else
    {
        gQuestLogDefeatedWildMonRecord = ((void *)0);
        r1 = sRecordEventFuncs[eventId](gQuestLogRecordingPointer, data);
    }

    if (r1 == ((void *)0))
    {
        QL_FinishRecordingScene();
        r1 = ShouldRegisterEvent(eventId, data);
        if (!r1)
            return;
    }

    gQuestLogRecordingPointer = r1;
    if (sStepRecordingMode == STEP_RECORDING_MODE_ENABLED)
        return;
    QL_FinishRecordingScene();
}

static bool8 InQuestLogDisabledLocation(void)
{

    if (gSaveBlock1Ptr->location.mapGroup == ((1 | (2 << 8)) >> 8)
        && (gSaveBlock1Ptr->location.mapNum == ((1 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((2 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((3 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((4 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((5 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((6 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((7 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((8 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((9 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((10 | (2 << 8)) & 0xFF)
         || gSaveBlock1Ptr->location.mapNum == ((11 | (2 << 8)) & 0xFF)))
        return 1;


    if (gSaveBlock1Ptr->location.mapGroup == ((9 | (14 << 8)) >> 8)
      && gSaveBlock1Ptr->location.mapNum == ((9 | (14 << 8)) & 0xFF))
        return 1;


    if (gSaveBlock1Ptr->location.mapGroup == ((0 | (31 << 8)) >> 8) &&
        (gSaveBlock1Ptr->location.mapNum == ((0 | (31 << 8)) & 0xFF)
      || gSaveBlock1Ptr->location.mapNum == ((1 | (31 << 8)) & 0xFF)))
        return 1;


    if ((gSaveBlock1Ptr->location.mapGroup == ((46 | (1 << 8)) >> 8) && gSaveBlock1Ptr->location.mapNum == ((46 | (1 << 8)) & 0xFF))
     || (gSaveBlock1Ptr->location.mapGroup == ((58 | (1 << 8)) >> 8) && gSaveBlock1Ptr->location.mapNum == ((58 | (1 << 8)) & 0xFF))
     || (gSaveBlock1Ptr->location.mapGroup == ((11 | (2 << 8)) >> 8) && gSaveBlock1Ptr->location.mapNum == ((11 | (2 << 8)) & 0xFF))
     || (gSaveBlock1Ptr->location.mapGroup == ((6 | (10 << 8)) >> 8) && gSaveBlock1Ptr->location.mapNum == ((6 | (10 << 8)) & 0xFF)))
        return 1;

    return 0;
}

bool8 QuestLog_ShouldEndSceneOnMapChange(void)
{
    if (InQuestLogDisabledLocation() != 1)
        return 0;

    if (gQuestLogState == 2)
        return 1;

    if (gQuestLogState == 1)
        QuestLog_CutRecording();

    return 0;
}

static bool8 ShouldRegisterEvent_HandlePartyActions(u16 eventId, const u16 * data)
{
    if (eventId == 36 || eventId == 11)
        return 1;

    if (!FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x2C)))
    {
        if (eventId == 3
         || eventId == 31
         || ShouldRegisterEvent_HandleBeatStoryTrainer(eventId, data) == 1)
            return 1;
    }

    if (!FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x44)))
    {
        if (eventId == 4
         || eventId == 5
         || eventId == 6
         || eventId == 7
         || eventId == 8
         || eventId == 9
         || eventId == 10
         || eventId == 22
         || eventId == 25
         || eventId == 26)
            return 1;
    }

    return 0;
}

static bool8 ShouldRegisterEvent_HandleBeatStoryTrainer(u16 eventId, const u16 * genericData)
{
    if (eventId == 34)
    {
        const struct QuestLogEvent_TrainerBattle * data = (struct QuestLogEvent_TrainerBattle *)genericData;
        u8 trainerClass = gTrainers[data->trainerId].trainerClass;
        if (trainerClass == 81
         || trainerClass == 89
         || trainerClass == 90
         || trainerClass == 83)
            return 0;
        return 1;
    }
    return 0;
}

void QL_EnableRecordingSteps(void)
{
    sStepRecordingMode = STEP_RECORDING_MODE_ENABLED;
}

static u16 *ShouldRegisterEvent(u16 eventId, const u16 * data)
{
    if (ShouldRegisterEvent_HandlePartyActions(eventId, data) == 1)
        return ((void *)0);

    if (ShouldRegisterEvent_HandleDeparted(eventId, data) == 0)
        return ((void *)0);

    QL_StartRecordingAction(eventId);
    UpdateRepeatEventCounter(eventId);

    if (eventId == 31)
        gQuestLogDefeatedWildMonRecord = gQuestLogRecordingPointer;
    else
        gQuestLogDefeatedWildMonRecord = ((void *)0);

    return sRecordEventFuncs[eventId](gQuestLogRecordingPointer, data);
}

static bool8 TryDeferLinkEvent(u16 eventId, const u16 * data)
{
    if (!((eventId) >= 12 && (eventId) <= 19))
        return 0;

    ResetDeferredLinkEvent();
    sDeferredEvent.id = eventId;


    if (eventId != 16 && eventId != 17)
    {
        if (eventId == 12 || eventId == 18)
            memcpy(sDeferredEvent.data, data, sizeof(struct QuestLogEvent_Traded));
        else
            memcpy(sDeferredEvent.data, data, sizeof(struct QuestLogEvent_LinkBattle));
    }
    return 1;
}

void ResetDeferredLinkEvent(void)
{
    sDeferredEvent = (struct DeferredLinkEvent){};
}

void QuestLog_StartRecordingInputsAfterDeferredEvent(void)
{
    if (sDeferredEvent.id != 0)
    {
        u16 *resp;
        sLastDepartedLocation = 0;
        QL_StartRecordingAction(sDeferredEvent.id);
        resp = sRecordEventFuncs[sDeferredEvent.id](gQuestLogRecordingPointer, sDeferredEvent.data);
        gQuestLogRecordingPointer = resp;
        ResetDeferredLinkEvent();
    }
}

static bool8 TryDeferTrainerBattleEvent(u16 eventId, const u16 * data)
{
    if (eventId != 34
     && eventId != 30
     && eventId != 32
     && eventId != 33)
        return 0;

    ResetDeferredLinkEvent();
    if (gQuestLogPlaybackState != 0 || FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x2C)) || ShouldRegisterEvent_HandleBeatStoryTrainer(eventId, data) != 1)
    {
        sDeferredEvent.id = eventId;
        memcpy(sDeferredEvent.data, data, sizeof(struct QuestLogEvent_TrainerBattle));
    }
    return 1;
}

void QuestLogEvents_HandleEndTrainerBattle(void)
{
    if (sDeferredEvent.id != 0)
    {
        u16 *resp;
        if (gQuestLogPlaybackState == 0)
        {
            sLastDepartedLocation = 0;
            QL_StartRecordingAction(sDeferredEvent.id);
        }
        UpdateRepeatEventCounter(sDeferredEvent.id);
        resp = sRecordEventFuncs[sDeferredEvent.id](gQuestLogRecordingPointer, sDeferredEvent.data);
        gQuestLogRecordingPointer = resp;
        QL_RecordWait(1);
        ResetDeferredLinkEvent();
        QL_FinishRecordingScene();
    }
}

void QL_RecordWait(u16 duration)
{
    gQuestLogRecordingPointer = QL_RecordAction_Wait(gQuestLogRecordingPointer, duration);
    gQuestLogCurActionIdx++;
}

static bool8 IsEventWithSpecialEncounterSpecies(u16 eventId, const u16 * genericData)
{
    const struct QuestLogEvent_WildBattle * data;

    if (eventId != 31)
        return 0;

    data = (struct QuestLogEvent_WildBattle *)genericData;

    if (IsSpeciesFromSpecialEncounter(data->defeatedSpecies) == 1)
        return 1;

    if (IsSpeciesFromSpecialEncounter(data->caughtSpecies) == 1)
        return 1;

    return 0;
}

u16 *QL_SkipCommand(u16 *curPtr, u16 **prevPtr_p)
{
    u16 eventId = curPtr[0] & 0x0FFF;
    u16 count = curPtr[0] >> 12;

    if (eventId == 33)
        count = 0;

    if (!((eventId) >= 3 && (eventId) <= 42))
        return ((void *)0);

    *prevPtr_p = curPtr;
    return sQuestLogEventCmdSizes[eventId] + (sQuestLogEventCmdSizes[eventId] - 4) * count + (void *)curPtr;
}

void QL_UpdateLastDepartedLocation(const u16 *a0)
{
    const u8 *r2 = (const u8 *)(a0 + 2);
    if ((a0[0] & 0x0FFF) != 35)
        sLastDepartedLocation = 0;
    else
        sLastDepartedLocation = r2[1] + 1;
}

bool8 QL_LoadEvent(const u16 *eventData)
{
    const u16 *r0 = eventData;

    if (eventData == ((void *)0))
        return 0;
    if (r0[1] > gQuestLogCurActionIdx)
        return 0;

    sLoadEventFuncs[(r0[0] & 0x0FFF)](eventData);
    gQuestLogRepeatEventTracker.id = r0[0];
    gQuestLogRepeatEventTracker.numRepeats = (r0[0] & (0xF << 12)) >> 12;
    if (gQuestLogRepeatEventTracker.numRepeats != 0)
        gQuestLogRepeatEventTracker.counter = 1;
    return 1;
}

bool8 QL_TryRepeatEvent(const u16 *eventData)
{

    if (gQuestLogRepeatEventTracker.counter == 0)
        return 0;


    sLoadEventFuncs[gQuestLogRepeatEventTracker.id](eventData);
    if (++gQuestLogRepeatEventTracker.counter > gQuestLogRepeatEventTracker.numRepeats)
        QL_ResetRepeatEventTracker();
    return 1;
}

void QL_ResetRepeatEventTracker(void)
{
    gQuestLogRepeatEventTracker = (struct QuestLogRepeatEventTracker){};
}

static void UpdateRepeatEventCounter(u16 eventId)
{
    if (gQuestLogRepeatEventTracker.id != (u8)eventId || gQuestLogRepeatEventTracker.counter != gQuestLogCurActionIdx)
    {
        gQuestLogRepeatEventTracker.id = eventId;
        gQuestLogRepeatEventTracker.numRepeats = 0;
        gQuestLogRepeatEventTracker.counter = gQuestLogCurActionIdx;
    }

    else if (gQuestLogRepeatEventTracker.numRepeats < 4 + 1)
    {
        gQuestLogRepeatEventTracker.numRepeats++;
    }
}

void QL_ResetEventStates(void)
{
    sNewlyEnteredMap = 0;
    sLastDepartedLocation = 0;
    sPlayedTheSlots = 0;
}

u16 *QL_RecordAction_SceneEnd(u16 *a0)
{
    if (!QL_IsRoomToSaveAction(a0, sQuestLogEventCmdSizes[39]))
        return ((void *)0);
    a0[0] = 39;
    return a0 + 1;
}

u16 *QL_LoadAction_SceneEnd(u16 *a0, struct QuestLogAction * a1)
{
    if (!QL_IsRoomToSaveAction(a0, sQuestLogEventCmdSizes[39]))
        return ((void *)0);
    a1->type = 255;
    a1->duration = 0;
    a1->data.raw[0] = 0;
    a1->data.raw[1] = 0;
    a1->data.raw[2] = 0;
    a1->data.raw[3] = 0;
    return a0 + 1;
}

static u16 *QL_RecordAction_Wait(u16 *a0, u16 duration)
{
    if (!QL_IsRoomToSaveAction(a0, sQuestLogEventCmdSizes[41]))
        return ((void *)0);
    a0[0] = 41;
    a0[1] = duration;
    return a0 + 2;
}

u16 *QL_LoadAction_Wait(u16 *a0, struct QuestLogAction * a1)
{
    if (!QL_IsRoomToSaveAction(a0, sQuestLogEventCmdSizes[41]))
        return ((void *)0);
    a1->type = 254;
    a1->duration = a0[1];
    a1->data.raw[0] = 0;
    a1->data.raw[1] = 0;
    a1->data.raw[2] = 0;
    a1->data.raw[3] = 0;
    return a0 + 2;
}

u16 *QL_RecordAction_Input(u16 *script, struct QuestLogAction * a1)
{
    u8 *r6 = (u8 *)script + 4;

    if (!QL_IsRoomToSaveAction(script, sQuestLogEventCmdSizes[0]))
        return ((void *)0);
    script[0] = 0;
    script[1] = a1->duration;
    r6[0] = a1->data.raw[0];
    r6[1] = a1->data.raw[1];
    r6[2] = a1->data.raw[2];
    r6[3] = a1->data.raw[3];
    return (u16 *)(r6 + 4);
}

u16 *QL_LoadAction_Input(u16 *a0, struct QuestLogAction * a1)
{
    u8 *r6 = (u8 *)a0 + 4;

    if (!QL_IsRoomToSaveAction(a0, sQuestLogEventCmdSizes[0]))
        return ((void *)0);
    a1->type = 2;
    a1->duration = a0[1];
    a1->data.raw[0] = r6[0];
    a1->data.raw[1] = r6[1];
    a1->data.raw[2] = r6[2];
    a1->data.raw[3] = r6[3];
    return (u16 *)(r6 + 4);
}

u16 *QL_RecordAction_MovementOrGfxChange(u16 *script, struct QuestLogAction * a1)
{
    u16 *r4 = script;
    u8 *r6 = (u8 *)script + 4;

    if (!QL_IsRoomToSaveAction(r4, sQuestLogEventCmdSizes[2]))
        return ((void *)0);
    if (a1->type == 0)
        r4[0] = 2;
    else
        r4[0] = 1;
    r4[1] = a1->duration;
    r6[0] = a1->data.raw[0];
    r6[1] = a1->data.raw[1];
    r6[2] = a1->data.raw[2];
    r6[3] = a1->data.raw[3];
    return (u16 *)(r6 + 4);
}

u16 *QL_LoadAction_MovementOrGfxChange(u16 *a0, struct QuestLogAction * a1)
{
    u16 *r5 = a0;
    u8 *r6 = (u8 *)a0 + 4;

    if (!QL_IsRoomToSaveAction(r5, sQuestLogEventCmdSizes[2]))
        return ((void *)0);
    if (r5[0] == 2)
        a1->type = 0;
    else
        a1->type = 1;
    a1->duration = r5[1];
    a1->data.raw[0] = r6[0];
    a1->data.raw[1] = r6[1];
    a1->data.raw[2] = r6[2];
    a1->data.raw[3] = r6[3];
    return (u16 *)(r6 + 4);
}

static u16 *RecordEventHeader(u16 eventId, u16 *dest)
{
    u8 cmdSize;
    u16 *record;
    u8 i;
    u8 count;

    if (gQuestLogRepeatEventTracker.numRepeats == 0)
        cmdSize = sQuestLogEventCmdSizes[eventId];
    else
        cmdSize = sQuestLogEventCmdSizes[eventId] - 4;

    if (!QL_IsRoomToSaveEvent(dest, cmdSize))
        return ((void *)0);

    record = (void *)dest;

    if (gQuestLogRepeatEventTracker.numRepeats != 0)
        record = (void *)record - (gQuestLogRepeatEventTracker.numRepeats * cmdSize + 4);

    if (gQuestLogRepeatEventTracker.numRepeats == 4 + 1)
    {

        for (i = 0; i < 4; i++)
        {
            memcpy(
                (void *)record + ((i + 0) * cmdSize + 4),
                (void *)record + ((i + 1) * cmdSize + 4),
                cmdSize
            );
        }
        count = 4;
    }
    else
        count = gQuestLogRepeatEventTracker.numRepeats;


    record[0] = eventId + (count << 12);
    record[1] = gQuestLogCurActionIdx;


    record = (void *)record + (count * cmdSize + 4);
    return record;
}

static const u16 *LoadEvent(u16 eventId, const u16 *eventData)
{
    eventData = (const void *)eventData + (gQuestLogRepeatEventTracker.counter * (sQuestLogEventCmdSizes[eventId] - 4) + 4);
    return eventData;
}

static void QuestLog_GetSpeciesName(u16 species, u8 *dest, u8 stringVarId)
{
    if (dest != ((void *)0))
    {
        if (species != 413)
            GetSpeciesName(dest, species);
        else
            StringCopy(dest, gText_EggNickname);
    }
    else
    {
        if (species != 413)
            DynamicPlaceholderTextUtil_SetPlaceholderPtr(stringVarId, gSpeciesNames[species]);
        else
            DynamicPlaceholderTextUtil_SetPlaceholderPtr(stringVarId, gText_EggNickname);
    }
}

static u16 *RecordEvent_SwitchedPartyOrder(u16 *dest, const struct QuestLogEvent_SwitchedPartyOrder * data)
{
    u16 *r2 = RecordEventHeader(3, dest);
    if (r2 == ((void *)0))
        return ((void *)0);

    r2[0] = data->species1;
    r2[1] = data->species2;
    return r2 + 2;
}

static const u16 *LoadEvent_SwitchedPartyOrder(const u16 *eventData)
{
    const u16 *r4 = LoadEvent(3, eventData);
    QuestLog_GetSpeciesName(r4[0], gStringVar1, 0);
    QuestLog_GetSpeciesName(r4[1], gStringVar2, 0);
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_SwitchMon1WithMon2);
    return r4 + 2;
}





static u16 *RecordEvent_UsedItem(u16 *dest, const struct QuestLogEvent_Item * data)
{
    u16 *record = RecordEventHeader(4, dest);
    if (record == ((void *)0))
        return ((void *)0);

    record[0] = data->itemId;
    record[1] = data->species;
    record[2] = data->itemParam;

    if (data->itemId == 85)
        sStepRecordingMode = STEP_RECORDING_MODE_DISABLED_UNTIL_DEPART;

    return record + 3;
}

static const u16 *LoadEvent_UsedItem(const u16 *eventData)
{
    const u16 *record = LoadEvent(4, eventData);

    switch (ItemId_GetPocket(record[0]))
    {
    case 1:
    case 3:
    case 5:
        StringCopy(gStringVar1, ItemId_GetName(record[0]));
        if (record[0] == 85)
        {
            GetMapNameGeneric(gStringVar2, (u8)record[2]);
            StringExpandPlaceholders(gStringVar4, gText_QuestLog_UsedEscapeRope);
        }
        else if (record[1] != 0xFFFF)
        {
            QuestLog_GetSpeciesName(record[1], gStringVar2, 0);
            StringExpandPlaceholders(gStringVar4, gText_QuestLog_UsedItemOnMonAtThisLocation);
        }
        else
        {
            StringExpandPlaceholders(gStringVar4, gText_QuestLog_UsedTheItem);
        }
        break;
    case 2:
        StringCopy(gStringVar1, ItemId_GetName(record[0]));
        StringExpandPlaceholders(gStringVar4, gText_QuestLog_UsedTheKeyItem);
        break;
    case 4:
        QuestLog_GetSpeciesName(record[1], gStringVar1, 0);
        StringCopy(gStringVar2, gMoveNames[ItemIdToBattleMoveId(record[0])]);
        if (record[2] != 0xFFFF)
        {
            StringCopy(gStringVar3, gMoveNames[record[2]]);
            if (record[0] >= 339)
                StringExpandPlaceholders(gStringVar4, gText_QuestLog_MonReplacedMoveWithHM);
            else
                StringExpandPlaceholders(gStringVar4, gText_QuestLog_MonReplacedMoveWithTM);
        }
        else
        {
            if (record[0] >= 339)
                StringExpandPlaceholders(gStringVar4, gText_QuestLog_MonLearnedMoveFromHM);
            else
                StringExpandPlaceholders(gStringVar4, gText_QuestLog_MonLearnedMoveFromTM);
        }
        break;
    }
    return record + 3;
}

static u16 *RecordEvent_GiveTakeHeldItem(u16 eventId, u16 *dest, const struct QuestLogEvent_Item * data)
{
    u16 *record = RecordEventHeader(eventId, dest);
    if (record == ((void *)0))
        return ((void *)0);

    record[0] = data->itemId;
    record[1] = data->species;
    return record + 2;
}

static u16 *RecordEvent_GaveHeldItemFromPartyMenu(u16 *dest, const struct QuestLogEvent_Item * data)
{
    return RecordEvent_GiveTakeHeldItem(5, dest, data);
}

static const u16 *LoadEvent_GaveHeldItemFromPartyMenu(const u16 * eventData)
{
    const u16 *record = LoadEvent(5, eventData);
    QuestLog_GetSpeciesName(record[1], gStringVar1, 0);
    StringCopy(gStringVar2, ItemId_GetName(record[0]));
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_GaveMonHeldItem);
    return record + 2;
}

static u16 *RecordEvent_GaveHeldItemFromBagMenu(u16 *dest, const struct QuestLogEvent_Item * data)
{
    return RecordEvent_GiveTakeHeldItem(6, dest, data);
}

static const u16 *LoadEvent_GaveHeldItemFromBagMenu(const u16 *eventData)
{
    const u16 *record = LoadEvent(6, eventData);
    QuestLog_GetSpeciesName(record[1], gStringVar1, 0);
    StringCopy(gStringVar2, ItemId_GetName(record[0]));
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_GaveMonHeldItem2);
    return record + 2;
}

static u16 *RecordEvent_GaveHeldItemFromPC(u16 *dest, const struct QuestLogEvent_Item * data)
{
    return RecordEvent_GiveTakeHeldItem(7, dest, data);
}

static const u16 *LoadEvent_GaveHeldItemFromPC(const u16 *eventData)
{
    const u16 *record = LoadEvent(7, eventData);

    QuestLog_GetSpeciesName(record[1], gStringVar2, 0);
    StringCopy(gStringVar1, ItemId_GetName(record[0]));
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_GaveMonHeldItemFromPC);
    return record + 2;
}

static u16 *RecordEvent_TookHeldItem(u16 *dest, const struct QuestLogEvent_Item * data)
{
    return RecordEvent_GiveTakeHeldItem(8, dest, data);
}

static const u16 *LoadEvent_TookHeldItem(const u16 *eventData)
{
    const u16 *record = LoadEvent(8, eventData);

    QuestLog_GetSpeciesName(record[1], gStringVar1, 0);
    StringCopy(gStringVar2, ItemId_GetName(record[0]));
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_TookHeldItemFromMon);
    return record + 2;
}
# 1201 "src/quest_log_events.c"
static u16 *RecordEvent_SwappedHeldItem(u16 eventId, u16 *dest, const struct QuestLogEvent_SwappedHeldItem * data)
{
    u16 *record = RecordEventHeader(eventId, dest);
    if (record == ((void *)0))
        return ((void *)0);

    record[0] = data->takenItemId;
    record[1] = data->givenItemId;
    record[2] = data->species;
    return record + 3;
}

static u16 *RecordEvent_SwappedHeldItemFromBag(u16 *dest, const struct QuestLogEvent_SwappedHeldItem * data)
{
    return RecordEvent_SwappedHeldItem(9, dest, data);
}

static const u16 *LoadEvent_SwappedHeldItem(const u16 *eventData)
{
    const u16 *record = LoadEvent(9, eventData);
    QuestLog_GetSpeciesName(record[2], gStringVar1, 0);
    StringCopy(gStringVar2, ItemId_GetName(record[0]));
    StringCopy(gStringVar3, ItemId_GetName(record[1]));
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_SwappedHeldItemsOnMon);
    return record + 3;
}

static u16 *RecordEvent_SwappedHeldItemFromPC(u16 *dest, const struct QuestLogEvent_SwappedHeldItem * data)
{
    return RecordEvent_SwappedHeldItem(10, dest, data);
}

static const u16 *LoadEvent_SwappedHeldItemFromPC(const u16 *eventData)
{
    const u16 *record = LoadEvent(10, eventData);
    QuestLog_GetSpeciesName(record[2], gStringVar2, 0);
    StringCopy(gStringVar3, ItemId_GetName(record[0]));
    StringCopy(gStringVar1, ItemId_GetName(record[1]));
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_SwappedHeldItemFromPC);
    return record + 3;
}






static u16 *RecordEvent_UsedPkmnCenter(u16 *dest, const u16 * data)
{
    u16 *record = dest;
    if (gQuestLogRepeatEventTracker.id == 11 && gQuestLogRepeatEventTracker.numRepeats != 0)
        return record;

    if (!QL_IsRoomToSaveEvent(dest, sQuestLogEventCmdSizes[11]))
        return ((void *)0);

    record[0] = 11;
    record[1] = gQuestLogCurActionIdx;
    return record + 2;
}

static const u16 *LoadEvent_UsedPkmnCenter(const u16 *eventData)
{
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_MonsWereFullyRestoredAtCenter);
    return eventData + 2;
}

static u16 *RecordEvent_LinkTraded(u16 *dest, const struct QuestLogEvent_Traded * data)
{
    u16 *nameDest = dest + 4;

    dest[0] = 12;
    dest[1] = gQuestLogCurActionIdx;
    dest[2] = data->speciesSent;
    dest[3] = data->speciesReceived;
    memcpy(nameDest, data->partnerName, 7);
    return nameDest + 4;
}

static const u16 *LoadEvent_LinkTraded(const u16 *eventData)
{
    const u16 *name = eventData + 4;

    memset(gStringVar1, 0xFF, 7 + 1);
    memcpy(gStringVar1, name, 7);

    TranslateLinkPartnersName(gStringVar1);
    QuestLog_GetSpeciesName(eventData[3], gStringVar2, 0);
    QuestLog_GetSpeciesName(eventData[2], gStringVar3, 0);
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_TradedMon1ForPersonsMon2);
    return name + 4;
}






static u16 *RecordEvent_LinkBattledSingle(u16 *dest, const struct QuestLogEvent_LinkBattle * data)
{
    u8 * record;

    dest[0] = 13;
    dest[1] = gQuestLogCurActionIdx;
    record = (u8 *)(dest + 2);

    record[0] = data->outcome;
    memcpy(&record[1], data->playerNames[0], 7);
    return (u16 *)(record + 1 + 7);
}

static const u16 *LoadEvent_LinkBattledSingle(const u16 *eventData)
{
    const u8 * record = (const u8 *)(eventData + 2);
    DynamicPlaceholderTextUtil_Reset();

    memset(gStringVar1, 0xFF, 7 + 1);
    memcpy(gStringVar1, &record[1], 7);
    TranslateLinkPartnersName(gStringVar1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gStringVar1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, sBattleOutcomeTexts[record[0]]);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_SingleBattleWithPersonResultedInOutcome);
    return (const u16 *)(record + 1 + 7);
}

static u16 *RecordEvent_LinkBattledDouble(u16 *dest, const struct QuestLogEvent_LinkBattle * data)
{
    u8 * record;

    dest[0] = 14;
    dest[1] = gQuestLogCurActionIdx;
    record = (u8 *)(dest + 2);

    record[0] = data->outcome;
    memcpy(&record[1], data->playerNames[0], 7);
    return (u16 *)(record + 1 + 7);
}

static const u16 *LoadEvent_LinkBattledDouble(const u16 *eventData)
{
    const u8 * record = (const u8 *)(eventData + 2);
    DynamicPlaceholderTextUtil_Reset();

    memset(gStringVar1, 0xFF, 7 + 1);
    memcpy(gStringVar1, &record[1], 7);
    TranslateLinkPartnersName(gStringVar1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gStringVar1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, sBattleOutcomeTexts[record[0]]);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DoubleBattleWithPersonResultedInOutcome);
    return (const u16 *)(record + 1 + 7);
}

static u16 *RecordEvent_LinkBattledMulti(u16 *dest, const struct QuestLogEvent_LinkBattle * data)
{
    u8 * record;

    dest[0] = 15;
    dest[1] = gQuestLogCurActionIdx;
    record = (u8 *)(dest + 2);

    record[0] = data->outcome;
    memcpy(&record[1], data->playerNames[0], 7);
    memcpy(&record[1 + 7], data->playerNames[1], 7);
    memcpy(&record[1 + 7 * 2], data->playerNames[2], 7);
    return (u16 *)(record + 1 + 7 * 3);
}

static const u16 *LoadEvent_LinkBattledMulti(const u16 *eventData)
{
    const u8 * record = (const u8 *)(eventData + 2);
    DynamicPlaceholderTextUtil_Reset();

    memset(gStringVar1, 0xFF, 7 + 1);
    memset(gStringVar2, 0xFF, 7 + 1);
    memset(gStringVar3, 0xFF, 7 + 1);
    StringCopy_PlayerName(gStringVar1, &record[1]);
    StringCopy_PlayerName(gStringVar2, &record[1 + 7]);
    StringCopy_PlayerName(gStringVar3, &record[1 + 7 * 2]);
    TranslateLinkPartnersName(gStringVar1);
    TranslateLinkPartnersName(gStringVar2);
    TranslateLinkPartnersName(gStringVar3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gSaveBlock2Ptr->playerName);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, gStringVar1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, gStringVar2);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(3, gStringVar3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(4, sBattleOutcomeTexts[record[0]]);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_MultiBattleWithPeopleResultedInOutcome);
    return (const u16 *)(record + 1 + 7 * 3);
}


static u16 *RecordEvent_UsedUnionRoom(u16 *dest, const u16 * data)
{
    dest[0] = 16;
    dest[1] = gQuestLogCurActionIdx;
    return dest + 2;
}

static const u16 *LoadEvent_UsedUnionRoom(const u16 *eventData)
{
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_MingledInUnionRoom);
    return eventData + 2;
}


static u16 *RecordEvent_UsedUnionRoomChat(u16 *dest, const u16 * data)
{
    dest[0] = 17;
    dest[1] = gQuestLogCurActionIdx;
    return dest + 2;
}

static const u16 *LoadEvent_UsedUnionRoomChat(const u16 *eventData)
{
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_ChattedWithManyTrainers);
    return eventData + 2;
}

static u16 *RecordEvent_LinkTradedUnionRoom(u16 *dest, const struct QuestLogEvent_Traded * data)
{
    u8 *name = (u8 *)(dest + 4);
    dest[0] = 18;
    dest[1] = gQuestLogCurActionIdx;
    dest[2] = data->speciesSent;
    dest[3] = data->speciesReceived;
    memcpy(name, &data->partnerName, 7);
    return (u16 *)(name + 8);
}

static const u16 *LoadEvent_LinkTradedUnionRoom(const u16 *a0)
{
    const u8 *r6 = (const u8 *)(a0 + 4);
    memset(gStringVar1, 0xFF, 7 + 1);
    memcpy(gStringVar1, r6, 7);
    TranslateLinkPartnersName(gStringVar1);
    QuestLog_GetSpeciesName(a0[3], gStringVar2, 0);
    QuestLog_GetSpeciesName(a0[2], gStringVar3, 0);
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_TradedMon1ForTrainersMon2);
    return (const u16 *)(r6 + 8);
}

static u16 *RecordEvent_LinkBattledUnionRoom(u16 *dest, const struct QuestLogEvent_LinkBattle * data)
{
    dest[0] = 19;
    dest[1] = gQuestLogCurActionIdx;
    *(u8 *)&dest[2] = data->outcome;
    memcpy((u8 *)dest + 5, &data->playerNames[0], 7);
    return dest + 6;
}

static const u16 *LoadEvent_LinkBattledUnionRoom(const u16 *eventData)
{
    const u8 * record = (const u8 *)(eventData + 2);

    memset(gStringVar1, 0xFF, 7 + 1);
    memcpy(gStringVar1, &record[1], 7);
    TranslateLinkPartnersName(gStringVar1);
    StringCopy(gStringVar2, sBattleOutcomeTexts[record[0]]);
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_BattledTrainerEndedInOutcome);
    return (const u16 *)(record + 1 + 7);
}
# 1473 "src/quest_log_events.c"
static u16 *RecordEvent_SwitchedMonsBetweenBoxes(u16 *dest, const struct QuestLogEvent_MovedBoxMon * data)
{
    u16 * record = RecordEventHeader(20, dest);
    if (record == ((void *)0))
        return ((void *)0);
    record[0] = data->species1;
    record[1] = data->species2;
    (*((u8*)&record[2] + 0)) = data->box1;
    (*((u8*)&record[2] + 1)) = data->box2;
    return record + 3;
}

static const u16 *LoadEvent_SwitchedMonsBetweenBoxes(const u16 *eventData)
{
    const u8 *boxIdxs;
    const u16 * r0 = LoadEvent(20, eventData);
    boxIdxs = (const u8 *)r0 + 4;
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, GetBoxNamePtr(boxIdxs[0]));
    QuestLog_GetSpeciesName(r0[0], ((void *)0), 1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, GetBoxNamePtr(boxIdxs[1]));
    QuestLog_GetSpeciesName(r0[1], ((void *)0), 3);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_SwitchedMonsBetweenBoxes);
    return r0 + 3;
}

static u16 *RecordEvent_SwitchedMonsWithinBox(u16 *dest, const u16 *eventData)
{
    dest = RecordEventHeader(21, dest);
    if (dest == ((void *)0))
        return ((void *)0);
    dest[0] = eventData[0];
    dest[1] = eventData[1];
    *((u8 *)dest + 4) = *((const u8 *)eventData + 4);
    return dest + 3;
}

static const u16 *LoadEvent_SwitchedMonsWithinBox(const u16 *eventData)
{
    const u8 *boxIdxs;
    eventData = LoadEvent(21, eventData);
    boxIdxs = (const u8 *)eventData + 4;
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, GetBoxNamePtr(boxIdxs[0]));
    QuestLog_GetSpeciesName(eventData[0], ((void *)0), 1);
    QuestLog_GetSpeciesName(eventData[1], ((void *)0), 2);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_SwitchedMonsWithinBox);
    return eventData + 3;
}

static u16 *RecordEvent_SwitchedPartyMonForPCMon(u16 *dest, const u16 *eventData)
{
    u16 *r2;
    u16 *ret;
    r2 = RecordEventHeader(22, dest);
    if (r2 == ((void *)0))
        return ((void *)0);
    ret = r2 + 2;
    if (*((const u8 *)eventData + 4) == 14)
    {
        r2[0] = eventData[1];
        r2[1] = eventData[0];
        *((u8 *)r2 + 4) = *((const u8 *)eventData + 5);
    }
    else
    {
        r2[0] = eventData[0];
        r2[1] = eventData[1];
        *((u8 *)r2 + 4) = *((const u8 *)eventData + 4);
    }
    return ret + 1;
}

static const u16 *LoadEvent_SwitchedPartyMonForPCMon(const u16 *eventData)
{
    const u8 *boxIdxs;
    eventData = LoadEvent(22, eventData);
    boxIdxs = (const u8 *)eventData + 4;
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, GetBoxNamePtr(boxIdxs[0]));
    QuestLog_GetSpeciesName(eventData[0], ((void *)0), 1);
    QuestLog_GetSpeciesName(eventData[1], ((void *)0), 2);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_SwitchedPartyMonForPCMon);
    return eventData + 3;
}

static u16 *RecordEvent_MovedMonBetweenBoxes(u16 *dest, const u16 *eventData)
{
    u16 *r2;
    u16 *ret;
    r2 = RecordEventHeader(23, dest);
    if (r2 == ((void *)0))
        return ((void *)0);
    r2[0] = eventData[0];
    ret = r2 + 1;
    *((u8 *)ret + 0) = *((const u8 *)eventData + 4);
    *((u8 *)ret + 1) = *((const u8 *)eventData + 5);
    return ret + 1;
}

static const u16 *LoadEvent_MovedMonBetweenBoxes(const u16 *eventData)
{
    const u8 *boxIdxs;
    eventData = LoadEvent(23, eventData);
    boxIdxs = (const u8 *)eventData + 2;
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, GetBoxNamePtr(boxIdxs[0]));
    QuestLog_GetSpeciesName(eventData[0], ((void *)0), 1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, GetBoxNamePtr(boxIdxs[1]));
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_MovedMonToNewBox);
    return (const u16 *)boxIdxs + 1;
}

static u16 *RecordEvent_MovedMonWithinBox(u16 *dest, const u16 *eventData)
{
    u16 *r2;
    r2 = RecordEventHeader(24, dest);
    if (r2 == ((void *)0))
        return ((void *)0);
    r2[0] = eventData[0];
    *((u8 *)r2 + 2) = *((const u8 *)eventData + 4);
    return r2 + 2;
}

static const u16 *LoadEvent_MovedMonWithinBox(const u16 *eventData)
{
    const u8 *boxIdxs;
    eventData = LoadEvent(24, eventData);
    boxIdxs = (const u8 *)eventData + 2;
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, GetBoxNamePtr(boxIdxs[0]));
    QuestLog_GetSpeciesName(eventData[0], ((void *)0), 1);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_MovedMonWithinBox);
    return (const u16 *)boxIdxs + 1;
}

static u16 *RecordEvent_WithdrewMonFromPC(u16 *dest, const u16 *eventData)
{
    u16 *r2;
    r2 = RecordEventHeader(25, dest);
    if (r2 == ((void *)0))
        return ((void *)0);
    r2[0] = eventData[0];
    *((u8 *)r2 + 2) = *((const u8 *)eventData + 4);
    return r2 + 2;
}

static const u16 *LoadEvent_WithdrewMonFromPC(const u16 *eventData)
{
    const u8 *boxIdxs;
    eventData = LoadEvent(25, eventData);
    boxIdxs = (const u8 *)eventData + 2;
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, GetBoxNamePtr(boxIdxs[0]));
    QuestLog_GetSpeciesName(eventData[0], ((void *)0), 1);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_WithdrewMonFromPC);
    return (const u16 *)boxIdxs + 1;
}

static u16 *RecordEvent_DepositedMonInPC(u16 *dest, const u16 *eventData)
{
    u16 *r2;
    r2 = RecordEventHeader(26, dest);
    if (r2 == ((void *)0))
        return ((void *)0);
    r2[0] = eventData[0];
    *((u8 *)r2 + 2) = *((const u8 *)eventData + 4);
    return r2 + 2;
}

static const u16 *LoadEvent_DepositedMonInPC(const u16 *eventData)
{
    const u8 *boxIdxs;
    eventData = LoadEvent(26, eventData);
    boxIdxs = (const u8 *)eventData + 2;
    DynamicPlaceholderTextUtil_Reset();
    QuestLog_GetSpeciesName(eventData[0], ((void *)0), 0);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, GetBoxNamePtr(boxIdxs[0]));
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DepositedMonInPC);
    return (const u16 *)boxIdxs + 1;
}

static u16 *RecordEvent_SwitchedMultipleMons(u16 *dest, const u16 *eventData)
{
    u16 *r2;
    r2 = RecordEventHeader(27, dest);
    if (r2 == ((void *)0))
        return ((void *)0);
    *((u8 *)r2 + 0) = *((const u8 *)eventData + 4);
    *((u8 *)r2 + 1) = *((const u8 *)eventData + 5);
    return r2 + 1;
}

static const u16 *LoadEvent_SwitchedMultipleMons(const u16 *eventData)
{
    const u16 *r4 = LoadEvent(27, eventData);
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, GetBoxNamePtr(*((const u8 *)r4 + 0)));
    if (*((const u8 *)r4 + 0) == *((const u8 *)r4 + 1))
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, gText_QuestLog_ADifferentSpot);
    else
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, GetBoxNamePtr(*((const u8 *)r4 + 1)));
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_SwitchedMultipleMons);
    return r4 + 1;
}
# 1686 "src/quest_log_events.c"
static u16 *RecordEvent_DepositedItemInPC(u16 *dest, const struct QuestLogEvent_Item * data)
{
    u16 * record = RecordEventHeader(28, dest);
    if (record == ((void *)0))
        return ((void *)0);
    record[0] = data->itemId;
    return record + 1;
}

static const u16 *LoadEvent_DepositedItemInPC(const u16 *eventData)
{
    const u16 *record = LoadEvent(28, eventData);
    CopyItemName(record[0], gStringVar1);
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_StoredItemInPC);
    return record + 1;
}

static u16 *RecordEvent_WithdrewItemFromPC(u16 *dest, const struct QuestLogEvent_Item * data)
{
    u16 * record = RecordEventHeader(29, dest);
    if (record == ((void *)0))
        return ((void *)0);
    record[0] = data->itemId;
    return record + 1;
}

static const u16 *LoadEvent_WithdrewItemFromPC(const u16 *eventData)
{
    const u16 *record = LoadEvent(29, eventData);
    CopyItemName(record[0], gStringVar1);
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_WithdrewItemFromPC);
    return record + 1;
}
# 1728 "src/quest_log_events.c"
static u16 *RecordEvent_DefeatedTrainer(u16 eventId, u16 *dest, const struct QuestLogEvent_TrainerBattle * data)
{
    u16 * record = RecordEventHeader(eventId, dest);
    if (record == ((void *)0))
        return ((void *)0);
    record[0] = data->speciesOpponent;
    record[1] = data->speciesPlayer;
    record[2] = data->trainerId;
    (*((u8*)&record[3] + 0)) = data->mapSec;
    (*((u8*)&record[3] + 1)) = data->hpFractionId;
    return record + 4;
}

static u16 *RecordEvent_DefeatedGymLeader(u16 *dest, const struct QuestLogEvent_TrainerBattle * data)
{
    sStepRecordingMode = STEP_RECORDING_MODE_DISABLED;
    return RecordEvent_DefeatedTrainer(30, dest, data);
}

static const u16 *LoadEvent_DefeatedGymLeader(const u16 *eventData)
{
    const u8 *r6;
    eventData = LoadEvent(30, eventData);
    r6 = (const u8 *)eventData + 6;
    DynamicPlaceholderTextUtil_Reset();
    GetMapNameGeneric(gStringVar1, r6[0]);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gStringVar1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, gTrainers[eventData[2]].trainerName);
    QuestLog_GetSpeciesName(eventData[0], 0, 2);
    QuestLog_GetSpeciesName(eventData[1], 0, 3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(4, sDefeatedOpponentFlavorTexts[r6[1]]);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_TookOnGymLeadersMonWithMonAndWon);
    return eventData + 4;
}

static u16 *RecordEvent_DefeatedWildMon(u16 *dest, const struct QuestLogEvent_WildBattle * data)
{
    u16 *body = dest;
    u8 *footer = (u8 *)dest + sizeof(struct QuestLogEvent_WildBattle);
    if (!QL_IsRoomToSaveEvent(body, sQuestLogEventCmdSizes[31]))
        return ((void *)0);
    if (footer[0] == 0 && footer[1] == 0)
    {
        body[0] = 31;
        body[1] = gQuestLogCurActionIdx;
    }
    if (data->defeatedSpecies != 0)
        body[2] = data->defeatedSpecies;
    if (data->caughtSpecies != 0)
        body[3] = data->caughtSpecies;
    if (data->defeatedSpecies != 0 && footer[0] != 0xFF)
        footer[0]++;
    if (data->caughtSpecies != 0 && footer[1] != 0xFF)
        footer[1]++;
    footer[2] = data->mapSec;
    return (u16 *)(footer + 4);
}

static const u16 *LoadEvent_DefeatedWildMon(const u16 *a0)
{
    const u8 *data;
    if (!QL_IsRoomToSaveEvent(a0, sQuestLogEventCmdSizes[31]))
        return ((void *)0);

    data = (const u8 *)a0 + 8;
    DynamicPlaceholderTextUtil_Reset();
    GetMapNameGeneric(gStringVar1, data[2]);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gStringVar1);
    QuestLog_GetSpeciesName(a0[2], ((void *)0), 1);
    ConvertIntToDecimalStringN(gStringVar2, data[0], STR_CONV_MODE_LEFT_ALIGN, 3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, gStringVar2);
    QuestLog_GetSpeciesName(a0[3], ((void *)0), 3);
    ConvertIntToDecimalStringN(gStringVar3, data[1], STR_CONV_MODE_LEFT_ALIGN, 3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(4, gStringVar3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(5, gSaveBlock2Ptr->playerName);
    if (data[0] == 0)
    {
        if (data[1] == 1)
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_CaughtWildMon);
        else
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_CaughtWildMons);
    }
    else if (data[1] == 0)
    {
        if (data[0] == 1)
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DefeatedWildMon);
        else
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DefeatedWildMons);
    }
    else if (data[0] == 1)
    {
        if (data[1] == 1)
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DefeatedWildMonAndCaughtWildMon);
        else
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DefeatedWildMonAndCaughtWildMons);
    }
    else
    {
        if (data[1] == 1)
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DefeatedWildMonsAndCaughtWildMon);
        else
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_DefeatedWildMonsAndCaughtWildMons);
    }
    return (const u16 *)(data + 4);
}

static bool8 IsSpeciesFromSpecialEncounter(u16 species)
{
    switch (species)
    {
    case 143:
    case 144:
    case 145:
    case 146:
    case 150:
    case 249:
    case 250:
    case 410:
        return 1;
    }
    return 0;
}

static u16 *RecordEvent_DefeatedEliteFourMember(u16 *dest, const struct QuestLogEvent_TrainerBattle * data)
{
    sStepRecordingMode = STEP_RECORDING_MODE_DISABLED;
    return RecordEvent_DefeatedTrainer(32, dest, data);
}

static const u16 *LoadEvent_DefeatedEliteFourMember(const u16 *eventData)
{
    const u8 *r5;
    eventData = LoadEvent(32, eventData);
    r5 = (const u8 *)eventData + 6;
    DynamicPlaceholderTextUtil_Reset();
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gTrainers[eventData[2]].trainerName);
    QuestLog_GetSpeciesName(eventData[0], ((void *)0), 1);
    QuestLog_GetSpeciesName(eventData[1], ((void *)0), 2);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(3, sDefeatedOpponentFlavorTexts[r5[1]]);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_TookOnEliteFoursMonWithMonAndWon);
    return eventData + 4;
}

static u16 *RecordEvent_DefeatedChampion(u16 *dest, const struct QuestLogEvent_TrainerBattle * data)
{
    if (!QL_IsRoomToSaveEvent(dest, sQuestLogEventCmdSizes[33]))
        return ((void *)0);
    dest[0] = 33 | (2 << 12);
    dest[1] = gQuestLogCurActionIdx;
    dest[2] = data->speciesOpponent;
    dest[3] = data->speciesPlayer;
    *((u8 *)dest + 8) = data->hpFractionId;
    sStepRecordingMode = STEP_RECORDING_MODE_DISABLED;
    return dest + 5;
}

static const u16 *LoadEvent_DefeatedChampion(const u16 *a0)
{
    const u8 *r5;
    if (!QL_IsRoomToSaveEvent(a0, sQuestLogEventCmdSizes[33]))
        return ((void *)0);

    r5 = (const u8 *)a0 + 8;
    DynamicPlaceholderTextUtil_Reset();

    switch (gQuestLogRepeatEventTracker.counter)
    {
    case 0:
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gSaveBlock2Ptr->playerName);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, gSaveBlock1Ptr->rivalName);
        DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_PlayerBattledChampionRival);
        break;
    case 1:
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gSaveBlock1Ptr->rivalName);
        QuestLog_GetSpeciesName(a0[2], ((void *)0), 1);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, gSaveBlock2Ptr->playerName);
        QuestLog_GetSpeciesName(a0[3], ((void *)0), 3);
        DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_PlayerSentOutMon1RivalSentOutMon2);
        break;
    case 2:
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, sDefeatedChampionFlavorTexts[r5[0]]);
        DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_WonTheMatchAsAResult);
        break;
    }
    return (const u16 *)(r5 + 2);
}

static u16 *RecordEvent_DefeatedNormalTrainer(u16 *dest, const struct QuestLogEvent_TrainerBattle * data)
{
    sStepRecordingMode = STEP_RECORDING_MODE_DISABLED;
    return RecordEvent_DefeatedTrainer(34, dest, data);
}

static const u16 *LoadEvent_DefeatedTrainer(const u16 *eventData)
{
    const u16 *r5 = LoadEvent(34, eventData);
    const u8 *r6 = (const u8 *)r5 + 6;
    DynamicPlaceholderTextUtil_Reset();
    GetMapNameGeneric(gStringVar1, r6[0]);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gStringVar1);

    if (gTrainers[r5[2]].trainerClass == 81
     || gTrainers[r5[2]].trainerClass == 89
     || gTrainers[r5[2]].trainerClass == 90)
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, GetExpandedPlaceholder(0x6));
    else
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, gTrainers[r5[2]].trainerName);

    QuestLog_GetSpeciesName(r5[0], ((void *)0), 2);
    QuestLog_GetSpeciesName(r5[1], ((void *)0), 3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(4, sDefeatedOpponentFlavorTexts[r6[1]]);
    DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_TookOnTrainersMonWithMonAndWon);
    return (const u16 *)(r6 + 2);
}
# 1952 "src/quest_log_events.c"
static u16 *RecordEvent_DepartedLocation(u16 *dest, const struct QuestLogEvent_Departed * data)
{
    u8 *record = (u8 *)RecordEventHeader(35, dest);
    if (record == ((void *)0))
        return ((void *)0);

    record[0] = data->mapSec;
    record[1] = data->locationId;
    if (record[1] == 36)
        sStepRecordingMode = STEP_RECORDING_MODE_DISABLED;

    return (u16 *)(record + 2);
}

static const u16 *LoadEvent_DepartedLocation(const u16 *eventData)
{
    u8 i, locationId;
    const u8 *record = (const u8 *)LoadEvent(35, eventData);

    locationId = record[1];
    GetMapNameGeneric(gStringVar1, record[0]);
    StringCopy(gStringVar2, sLocationNameTexts[locationId]);
    if (sLocationToDepartedTextId[locationId] == 5)
    {
        for (i = 0; i < (1 + ((((0x500 + 1) + 768 - 1) + 1) + 0x27) - ((((0x500 + 1) + 768 - 1) + 1) + 0x20)); i++)
        {
            if (record[0] != sGymCityMapSecs[i])
                continue;
            if (FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x20) + i) == 1)
                StringExpandPlaceholders(gStringVar4, gText_QuestLog_DepartedGym);
            else
                StringExpandPlaceholders(gStringVar4, gText_QuestLog_GymWasFullOfToughTrainers);
            break;
        }
        if (i == (1 + ((((0x500 + 1) + 768 - 1) + 1) + 0x27) - ((((0x500 + 1) + 768 - 1) + 1) + 0x20)))
            StringExpandPlaceholders(gStringVar4, sDepartedLocationTexts[sLocationToDepartedTextId[locationId]]);
    }
    else
        StringExpandPlaceholders(gStringVar4, sDepartedLocationTexts[sLocationToDepartedTextId[locationId]]);

    return (const u16 *)(record + 2);
}




void SetQLPlayedTheSlots(void)
{
    sPlayedTheSlots = 1;
}

static bool8 ShouldRegisterEvent_HandleDeparted(u16 eventId, const u16 * genericData)
{
    const struct QuestLogEvent_Departed * data;

    if (eventId != 35)
    {
        sLastDepartedLocation = 0;
        return 1;
    }

    data = (struct QuestLogEvent_Departed *)genericData;

    if (sLastDepartedLocation == data->locationId + 1)
        return 0;
    sLastDepartedLocation = data->locationId + 1;
    return 1;
}

static bool8 ShouldRegisterEvent_DepartedGameCorner(u16 eventId, const u16 * genericData)
{
    const struct QuestLogEvent_Departed * data;

    if (eventId != 35)
        return 1;

    data = (struct QuestLogEvent_Departed *)genericData;

    if (data->locationId == 32 && !sPlayedTheSlots)
        return 0;

    sPlayedTheSlots = 0;
    return 1;
}

static u16 *RecordEvent_UsedFieldMove(u16 *dest, const struct QuestLogEvent_FieldMove * data)
{
    u8 *record;
    dest = RecordEventHeader(36, dest);
    if (dest == ((void *)0))
        return ((void *)0);
    dest[0] = data->species;
    record = (u8 *)dest + 2;
    record[0] = data->fieldMove;
    record[1] = data->mapSec;
    if (record[0] == 7 || record[0] == 8)
        sStepRecordingMode = STEP_RECORDING_MODE_DISABLED_UNTIL_DEPART;
    else
        sStepRecordingMode = STEP_RECORDING_MODE_DISABLED;
    return (u16 *)(record + 2);
}

static const u16 *LoadEvent_UsedFieldMove(const u16 *eventData)
{
    const u16 *r4 = LoadEvent(36, eventData);
    const u8 *r5 = (const u8 *)r4 + 2;
    QuestLog_GetSpeciesName(r4[0], gStringVar1, 0);
    if (r5[1] != 0xFF)
        GetMapNameGeneric(gStringVar2, r5[1]);


    if (r5[0] == 7)
    {
        if (r5[1] == 0x58)
            StringCopy(gStringVar3, gText_QuestLog_Home);
        else
            StringCopy(gStringVar3, gText_PokemonCenter);
    }

    StringExpandPlaceholders(gStringVar4, sUsedFieldMoveTexts[r5[0]]);
    return (const u16 *)(r5 + 2);
}

static u16 *RecordEvent_BoughtItem(u16 *dest, const struct QuestLogEvent_Shop * data)
{
    dest = RecordEventHeader(37, dest);
    if (dest == ((void *)0))
        return ((void *)0);
    dest[0] = data->lastItemId;
    dest[1] = data->itemQuantity;
    dest[2] = data->totalMoney >> 16;
    dest[3] = data->totalMoney;
    *((u8 *)dest + 8) = data->mapSec;
    *((u8 *)dest + 9) = 1;
    return dest + 5;
}

static const u16 *LoadEvent_BoughtItem(const u16 *eventData)
{
    const u16 *r4 = LoadEvent(37, eventData);
    const u8 *r7 = (const u8 *)r4 + 8;
    u32 r6 = (r4[2] << 16) + r4[3];
    DynamicPlaceholderTextUtil_Reset();
    GetMapNameGeneric(gStringVar1, r7[0]);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gStringVar1);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, ItemId_GetName(r4[0]));
    if (r4[1] < 2)
        DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_BoughtItem);
    else
    {
        ConvertIntToDecimalStringN(gStringVar2, r6, STR_CONV_MODE_LEFT_ALIGN, 6);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, gStringVar2);
        DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_BoughtItemsIncludingItem);
    }
    return (const u16 *)(r7 + 2);
}

static u16 *RecordEvent_SoldItem(u16 *dest, const struct QuestLogEvent_Shop * data)
{
    dest = RecordEventHeader(38, dest);
    if (dest == ((void *)0))
        return ((void *)0);
    dest[0] = data->lastItemId;
    dest[1] = data->itemQuantity;
    dest[2] = data->totalMoney >> 16;
    dest[3] = data->totalMoney;
    *((u8 *)dest + 8) = data->mapSec;
    *((u8 *)dest + 9) = data->hasMultipleTransactions;
    return dest + 5;
}

static const u16 *LoadEvent_SoldItem(const u16 *eventData)
{
    const u16 *r5 = LoadEvent(38, eventData);
    const u8 *r7 = (const u8 *) r5 + 8;
    u32 r6 = (r5[2] << 16) + r5[3];
    DynamicPlaceholderTextUtil_Reset();
    GetMapNameGeneric(gStringVar1, r7[0]);
    if (r7[1] == 0) {
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gSaveBlock2Ptr->playerName);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, gStringVar1);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, ItemId_GetName(r5[0]));
        if (r5[1] == 1)
            DynamicPlaceholderTextUtil_SetPlaceholderPtr(3, gText_QuestLog_JustOne);
        else
        {
            ConvertIntToDecimalStringN(gStringVar2, r5[1], STR_CONV_MODE_LEFT_ALIGN, 3);
            DynamicPlaceholderTextUtil_SetPlaceholderPtr(4, gStringVar2);
            DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar3, gText_QuestLog_Num);
            DynamicPlaceholderTextUtil_SetPlaceholderPtr(3, gStringVar3);
        }
        DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_SoldNumOfItem);
    }
    else
    {
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gStringVar1);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, ItemId_GetName(r5[0]));
        ConvertIntToDecimalStringN(gStringVar2, r6, STR_CONV_MODE_LEFT_ALIGN, 6);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, gStringVar2);
        DynamicPlaceholderTextUtil_ExpandPlaceholders(gStringVar4, gText_QuestLog_SoldItemsIncludingItem);
    }
    return (const u16 *)(r7 + 2);
}

static u16 *RecordEvent_ObtainedStoryItem(u16 *dest, const struct QuestLogEvent_StoryItem * data)
{
    dest = RecordEventHeader(40, dest);
    if (dest == ((void *)0))
        return ((void *)0);
    dest[0] = data->itemId;
    *((u8 *)dest + 2) = data->mapSec;
    return dest + 2;
}

static const u16 *LoadEvent_ObtainedStoryItem(const u16 *eventData)
{
    const u16 *r4 = LoadEvent(40, eventData);
    const u8 *r5 = (const u8 *)r4 + 2;
    GetMapNameGeneric(gStringVar1, r5[0]);
    StringCopy(gStringVar2, ItemId_GetName(r4[0]));
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_ObtainedItemInLocation);
    return (const u16 *)(r5 + 2);
}

void QuestLog_RecordEnteredMap(u16 worldMapFlag)
{
    s32 i;

    if ((gQuestLogState == 2 || gQuestLogState == 3))
        return;

    for (i = 0; i < (int)(sizeof(sWorldMapFlags) / sizeof((sWorldMapFlags)[0])); i++)
    {
        if (worldMapFlag == sWorldMapFlags[i])
        {
            if (!FlagGet(worldMapFlag))
            {
                sNewlyEnteredMap = 1;
                break;
            }
            else
            {
                sNewlyEnteredMap += 0;
                sNewlyEnteredMap = 0;
                break;
            }
        }
    }
}

void SetQuestLogEvent_Arrived(void)
{
    if (!(gQuestLogState == 2 || gQuestLogState == 3))
    {
        if (sNewlyEnteredMap)
        {
            u16 mapSec = gMapHeader.regionMapSectionId;
            SetQuestLogEvent(42, &mapSec);
            sNewlyEnteredMap = 0;
        }
    }
}

static u16 *RecordEvent_ArrivedInLocation(u16 *dest, const u16 * data)
{
    dest = RecordEventHeader(42, dest);
    if (dest == ((void *)0))
        return ((void *)0);
    dest[0] = data[0];
    return dest + 1;
}

static const u16 *LoadEvent_ArrivedInLocation(const u16 *eventData)
{
    const u16 *r4 = LoadEvent(42, eventData);
    GetMapNameGeneric(gStringVar1, (u8)r4[0]);
    StringExpandPlaceholders(gStringVar4, gText_QuestLog_ArrivedInLocation);
    return r4 + 1;
}

static void TranslateLinkPartnersName(u8 *dest)
{
    s32 i;
    if (*dest++ == 0xFC && *dest++ == 0x15)
    {
        for (i = 0; i < 5; i++)
        {
            if (*dest == 0xFC)
                break;
            dest++;
        }
        *dest++ = 0xFC;
        *dest++ = 0x16;
        *dest++ = 0xFF;
    }
}
