# 0 "src/trainer_tower_sets.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/trainer_tower_sets.c"
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
# 2 "src/trainer_tower_sets.c" 2
# 1 "include/cereader_tool.h" 1




# 1 "include/constants/trainer_tower.h" 1
# 6 "include/cereader_tool.h" 2

struct TrainerTowerTrainer
{
                u8 name[11];
                u8 facilityClass;
                u8 textColor;
                u16 speechBefore[6];
                u16 speechWin[6];
                u16 speechLose[6];
                u16 speechAfter[6];
                struct BattleTowerPokemon mons[6];
};

struct TrainerTowerFloor
{
                u8 id;
                u8 floorIdx;
                u8 challengeType;
                u8 prize;
                struct TrainerTowerTrainer trainers[3];
                u32 checksum;
};

struct EReaderTrainerTowerSetSubstruct
{
    u8 numFloors;
    u8 id;
    u16 dummy;
    u32 checksum;
};

struct EReaderTrainerTowerSet
{
    u8 numFloors;
    u8 id;
    u16 dummy;
    u32 checksum;
    struct TrainerTowerFloor floors[8];
};

bool32 ValidateTrainerTowerData(struct EReaderTrainerTowerSet * ttdata);
bool32 CEReaderTool_SaveTrainerTower(struct EReaderTrainerTowerSet * ttdata);
bool32 CEReaderTool_LoadTrainerTower(struct EReaderTrainerTowerSet * ttdata);
bool32 ReadTrainerTowerAndValidate(void);
# 3 "src/trainer_tower_sets.c" 2
# 1 "include/trainer_tower.h" 1



void PrintTrainerTowerRecords(void);
void InitTrainerTowerBattleStruct(void);
void FreeTrainerTowerBattleStruct(void);
u8 GetTrainerTowerTrainerFrontSpriteId(void);
void ResetTrainerTowerResults(void);
void GetTrainerTowerOpponentWinText(u8 *dest, u8 opponentIdx);
void GetTrainerTowerOpponentLoseText(u8 *dest, u8 opponentIdx);
void GetTrainerTowerOpponentName(u8 *text);
u8 GetTrainerTowerOpponentClass(void);
# 4 "src/trainer_tower_sets.c" 2
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
# 5 "src/trainer_tower_sets.c" 2
# 1 "include/constants/easy_chat.h" 1
# 6 "src/trainer_tower_sets.c" 2
# 1 "include/constants/items.h" 1
# 7 "src/trainer_tower_sets.c" 2
# 1 "include/constants/moves.h" 1
# 8 "src/trainer_tower_sets.c" 2
# 1 "include/constants/trainer_tower.h" 1
# 9 "src/trainer_tower_sets.c" 2






static const struct TrainerTowerFloor sTrainerTowerFloor_Single_4 = {
 .id = 1,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 7,
 .trainers = {
     {
   .name = _("COLE"),
   .facilityClass = 88,
   .textColor = 1,
   .speechBefore = {(0x6 << 9) | 0xb, (0x5 << 9) | 0x6, (0x8 << 9) | 0x22, (0xa << 9) | 0x8, (0x8 << 9) | 0x44, (0x6 << 9) | 0x0},
   .speechWin = {(0x9 << 9) | 0x27, (0x6 << 9) | 0x0, (0x4 << 9) | 0x20, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF},
   .speechLose = {(0x6 << 9) | 0x2a, (0x6 << 9) | 0x1, (0x9 << 9) | 0x3c, (0x8 << 9) | 0x37, (0x7 << 9) | 0x2f, (0x6 << 9) | 0x1},
   .speechAfter = {(0x6 << 9) | 0x24, (0x6 << 9) | 0x24, (0x5 << 9) | 0x6, (0x3 << 9) | 0x21, 0xFFFF, 0xFFFF},
   .mons = {
    {
     .species = 20,
     .heldItem = 142,
     .moves = {351, 158, 184, 283},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x16,
     .nickname = _("RATICATE"),
     .friendship = 255
    },
    {
     .species = 126,
     .heldItem = 142,
     .moves = {7, 241, 123, 70},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 210,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x56,
     .nickname = _("MAGMAR"),
     .friendship = 255
    },
    {
     .species = 219,
     .heldItem = 142,
     .moves = {53, 133, 34, 106},
     .hpEV = 110,
     .attackEV = 200,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x02,
     .nickname = _("MAGCARGO"),
     .friendship = 255
    },
    {
     .species = 57,
     .heldItem = 142,
     .moves = {315, 69, 207, 2},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 210,
     .spAttackEV = 200,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x87,
     .nickname = _("PRIMEAPE"),
     .friendship = 255
    },
    {
     .species = 42,
     .heldItem = 142,
     .moves = {202, 109, 188, 212},
     .hpEV = 0,
     .attackEV = 200,
     .defenseEV = 0,
     .speedEV = 110,
     .spAttackEV = 200,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x81,
     .nickname = _("GOLBAT"),
     .friendship = 255
    },
    {
     .species = 80,
     .heldItem = 142,
     .moves = {241, 281, 53, 93},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 210,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x11,
     .nickname = _("SLOWBRO"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016aab
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_7 = {
 .id = 2,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 13,
 .trainers = {
     {
   .name = _("JAC"),
   .facilityClass = 98,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x20, ((0x13 << 9) | 168), (0x6 << 9) | 0x0, (0x4 << 9) | 0xa, (0x7 << 9) | 0x26},
   .speechWin = {(0x5 << 9) | 0x7, (0x9 << 9) | 0xa, (0xa << 9) | 0x30, (0xf << 9) | 0x14, (0x5 << 9) | 0x1, (0x9 << 9) | 0x36},
   .speechLose = {(0x6 << 9) | 0x20, (0x6 << 9) | 0x1, (0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0x5 << 9) | 0x1, (0x3 << 9) | 0x13},
   .speechAfter = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0xe << 9) | 0x19, (0xa << 9) | 0xe, (0x8 << 9) | 0x20, ((0x13 << 9) | 168)},
   .mons = {
    {
     .species = 52,
     .heldItem = 168,
     .moves = {207, 164, 252, 163},
     .hpEV = 200,
     .attackEV = 110,
     .defenseEV = 0,
     .speedEV = 200,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 138 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("MEOWTH"),
     .friendship = 255
    },
    {
     .species = 136,
     .heldItem = 171,
     .moves = {53, 44, 28, 83},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("FLAREON"),
     .friendship = 255
    },
    {
     .species = 137,
     .heldItem = 171,
     .moves = {161, 278, 60, 176},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 210,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("PORYGON"),
     .friendship = 255
    },
    {
     .species = 113,
     .heldItem = 222,
     .moves = {53, 113, 34, 107},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x10,
     .nickname = _("CHANSEY"),
     .friendship = 255
    },
    {
     .species = 83,
     .heldItem = 225,
     .moves = {282, 14, 19, 28},
     .hpEV = 100,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 110,
     .otId = 133 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x85,
     .nickname = _("FARFETCH'D"),
     .friendship = 255
    },
    {
     .species = 122,
     .heldItem = 198,
     .moves = {164, 351, 113, 280},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 130 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x82,
     .nickname = _("MR. MIME"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016456
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_Unused = {
 .id = 3,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 2,
 .trainers = {
     {
   .name = _("MILY"),
   .facilityClass = 137,
   .textColor = 1,
   .speechBefore = {(0xd << 9) | 0x35, (0x8 << 9) | 0x36, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, ((0x13 << 9) | 276), (0x6 << 9) | 0x0},
   .speechWin = {(0x8 << 9) | 0x13, (0x8 << 9) | 0x29, (0x9 << 9) | 0x21, (0x6 << 9) | 0x3, (0x1 << 9) | 0xe, (0x3 << 9) | 0x1e},
   .speechLose = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x21, (0xa << 9) | 0x36, ((0x12 << 9) | 171), (0x6 << 9) | 0x5},
   .speechAfter = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0xc << 9) | 0x27, (0xa << 9) | 0x30, (0x7 << 9) | 0x36},
   .mons = {
    {
     .species = 113,
     .heldItem = 139,
     .moves = {113, 121, 107, 290},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x08,
     .nickname = _("CHANSEY"),
     .friendship = 255
    },
    {
     .species = 36,
     .heldItem = 139,
     .moves = {118, 115, 47, 1},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("CLEFABLE"),
     .friendship = 255
    },
    {
     .species = 176,
     .heldItem = 139,
     .moves = {118, 115, 186, 64},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x16,
     .nickname = _("TOGETIC"),
     .friendship = 255
    },
    {
     .species = 176,
     .heldItem = 139,
     .moves = {118, 237, 213, 113},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x20,
     .nickname = _("TOGETIC"),
     .friendship = 255
    },
    {
     .species = 113,
     .heldItem = 139,
     .moves = {53, 135, 113, 290},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x05,
     .nickname = _("CHANSEY"),
     .friendship = 255
    },
    {
     .species = 36,
     .heldItem = 139,
     .moves = {115, 53, 47, 34},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0xC0,
     .nickname = _("CLEFABLE"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x000164ec
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_5 = {
 .id = 4,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 9,
 .trainers = {
     {
   .name = _("JOS & ANNE"),
   .facilityClass = 127,
   .textColor = 7,
   .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x3 << 9) | 0x31, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x2, (0xf << 9) | 0xa},
   .speechWin = {(0x7 << 9) | 0x1a, (0xa << 9) | 0x40, (0x9 << 9) | 0x3c, (0x6 << 9) | 0x0, (0xa << 9) | 0x5, (0x3 << 9) | 0x28},
   .speechLose = {(0x6 << 9) | 0x15, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x29, (0x9 << 9) | 0xc, (0x7 << 9) | 0xa, (0x5 << 9) | 0x2, (0x3 << 9) | 0x6, (0x6 << 9) | 0x4},
   .mons = {
    {
     .species = 78,
     .heldItem = 180,
     .moves = {340, 315, 95, 216},
     .hpEV = 100,
     .attackEV = 100,
     .defenseEV = 0,
     .speedEV = 110,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x10,
     .nickname = _("RAPIDASH"),
     .friendship = 255
    },
    {
     .species = 38,
     .heldItem = 215,
     .moves = {109, 261, 257, 91},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 200,
     .spAttackEV = 200,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x15,
     .nickname = _("NINETALES"),
     .friendship = 255
    },
    {
     .species = 200,
     .heldItem = 200,
     .moves = {288, 94, 247, 85},
     .hpEV = 200,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 210,
     .spAttackEV = 100,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("MISDREAVUS"),
     .friendship = 255
    },
    {
     .species = 65,
     .heldItem = 200,
     .moves = {113, 105, 94, 9},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("ALAKAZAM"),
     .friendship = 255
    },
    {
     .species = 242,
     .heldItem = 200,
     .moves = {113, 213, 216, 94},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x16,
     .nickname = _("BLISSEY"),
     .friendship = 255
    },
    {
     .species = 169,
     .heldItem = 200,
     .moves = {92, 19, 109, 247},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 210,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x17,
     .nickname = _("CROBAT"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("JOS & ANNE"),
   .facilityClass = 127,
   .textColor = 7,
   .speechBefore = {(0x4 << 9) | 0x2, (0x6 << 9) | 0x1, (0x1 << 9) | 0xf, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x31},
   .speechWin = {(0x7 << 9) | 0x2a, (0x6 << 9) | 0x0, (0x5 << 9) | 0x3d, (0x1 << 9) | 0xf, (0x7 << 9) | 0xd, (0x3 << 9) | 0x6},
   .speechLose = {(0x3 << 9) | 0x30, (0x6 << 9) | 0x2, (0x5 << 9) | 0x2, (0x7 << 9) | 0x20, (0x7 << 9) | 0x24, (0x6 << 9) | 0x0},
   .speechAfter = {(0x7 << 9) | 0xf, (0x8 << 9) | 0x8, (0x5 << 9) | 0x1, (0x3 << 9) | 0x31, (0xf << 9) | 0xf, (0x6 << 9) | 0x3},
   .mons = {
    {
     .species = 229,
     .heldItem = 215,
     .moves = {269, 53, 261, 242},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x82,
     .nickname = _("HOUNDOOM"),
     .friendship = 255
    },
    {
     .species = 142,
     .heldItem = 200,
     .moves = {46, 126, 63, 332},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x33,
     .nickname = _("AERODACTYL"),
     .friendship = 255
    },
    {
     .species = 59,
     .heldItem = 215,
     .moves = {257, 245, 46, 91},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 200,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x56,
     .nickname = _("ARCANINE"),
     .friendship = 255
    },
    {
     .species = 110,
     .heldItem = 200,
     .moves = {153, 108, 188, 85},
     .hpEV = 100,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 110,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x8E,
     .nickname = _("WEEZING"),
     .friendship = 255
    },
    {
     .species = 6,
     .heldItem = 180,
     .moves = {315, 200, 82, 108},
     .hpEV = 100,
     .attackEV = 110,
     .defenseEV = 0,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x33,
     .nickname = _("CHARIZARD"),
     .friendship = 255
    },
    {
     .species = 94,
     .heldItem = 200,
     .moves = {95, 138, 247, 85},
     .hpEV = 55,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x87,
     .nickname = _("GENGAR"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00017908
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_6 = {
 .id = 5,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 4,
 .trainers = {
     {
   .name = _("EMY & ALEK"),
   .facilityClass = 128,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x3 << 9) | 0x30, (0x8 << 9) | 0x37, (0x10 << 9) | 0x21, (0x9 << 9) | 0x6},
   .speechWin = {(0x6 << 9) | 0x1d, (0x6 << 9) | 0x1d, (0x5 << 9) | 0x1a, (0x8 << 9) | 0xb, (0x7 << 9) | 0x2c, (0x10 << 9) | 0x17},
   .speechLose = {(0x6 << 9) | 0x29, (0x6 << 9) | 0x1, (0x5 << 9) | 0x6, (0x8 << 9) | 0x22, (0x3 << 9) | 0x2c, (0x6 << 9) | 0x3},
   .speechAfter = {(0x5 << 9) | 0x2b, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3, 0xFFFF, 0xFFFF},
   .mons = {
    {
     .species = 128,
     .heldItem = 141,
     .moves = {53, 156, 351, 104},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("TAUROS"),
     .friendship = 255
    },
    {
     .species = 115,
     .heldItem = 141,
     .moves = {53, 146, 156, 252},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("KANGASKHAN"),
     .friendship = 255
    },
    {
     .species = 22,
     .heldItem = 141,
     .moves = {65, 161, 38, 156},
     .hpEV = 100,
     .attackEV = 210,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x94,
     .nickname = _("FEAROW"),
     .friendship = 255
    },
    {
     .species = 176,
     .heldItem = 141,
     .moves = {53, 113, 156, 246},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x24,
     .nickname = _("TOGETIC"),
     .friendship = 255
    },
    {
     .species = 18,
     .heldItem = 141,
     .moves = {211, 19, 119, 156},
     .hpEV = 100,
     .attackEV = 110,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0D,
     .nickname = _("PIDGEOT"),
     .friendship = 255
    },
    {
     .species = 217,
     .heldItem = 141,
     .moves = {156, 173, 91, 163},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("URSARING"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("EMY & ALEK"),
   .facilityClass = 128,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x4, (0x8 << 9) | 0x30, (0x10 << 9) | 0x21, (0x9 << 9) | 0x1c, (0x6 << 9) | 0x1},
   .speechWin = {(0x6 << 9) | 0x14, (0x6 << 9) | 0x4, (0x5 << 9) | 0x28, (0x5 << 9) | 0x15, (0x8 << 9) | 0xb, (0x2 << 9) | 0x18},
   .speechLose = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x1, (0x5 << 9) | 0x2, (0x8 << 9) | 0x15, (0x8 << 9) | 0x6, (0x3 << 9) | 0x2c},
   .speechAfter = {(0x9 << 9) | 0x37, (0x6 << 9) | 0x4, (0x5 << 9) | 0x2b, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
   .mons = {
    {
     .species = 108,
     .heldItem = 219,
     .moves = {53, 89, 156, 214},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 55,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x16,
     .nickname = _("LICKITUNG"),
     .friendship = 255
    },
    {
     .species = 164,
     .heldItem = 219,
     .moves = {95, 138, 115, 332},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("NOCTOWL"),
     .friendship = 255
    },
    {
     .species = 162,
     .heldItem = 219,
     .moves = {53, 133, 351, 163},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0E,
     .nickname = _("FURRET"),
     .friendship = 255
    },
    {
     .species = 20,
     .heldItem = 219,
     .moves = {162, 98, 207, 283},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x8A,
     .nickname = _("RATICATE"),
     .friendship = 255
    },
    {
     .species = 40,
     .heldItem = 219,
     .moves = {241, 53, 213, 34},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("WIGGLYTUFF"),
     .friendship = 255
    },
    {
     .species = 233,
     .heldItem = 219,
     .moves = {85, 176, 161, 105},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("PORYGON2"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00015d3b
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_2 = {
 .id = 6,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 0,
 .trainers = {
     {
   .name = _("JO & HALEY"),
   .facilityClass = 129,
   .textColor = 5,
   .speechBefore = {(0x5 << 9) | 0x41, (0xb << 9) | 0x2c, (0xf << 9) | 0x14, (0x3 << 9) | 0x16, (0x6 << 9) | 0x38, (0x6 << 9) | 0x3},
   .speechWin = {(0x6 << 9) | 0x3a, (0x5 << 9) | 0x3d, (0x3 << 9) | 0x7, (0x6 << 9) | 0x0, (0x4 << 9) | 0xb, (0x6 << 9) | 0x0},
   .speechLose = {(0x6 << 9) | 0x3b, (0x6 << 9) | 0x0, (0xf << 9) | 0x19, (0x7 << 9) | 0x2c, (0x9 << 9) | 0x30, (0x6 << 9) | 0x0},
   .speechAfter = {(0x8 << 9) | 0x2a, (0x5 << 9) | 0x1, (0x8 << 9) | 0x18, (0x8 << 9) | 0xb, (0x3 << 9) | 0x31, (0x6 << 9) | 0x4},
   .mons = {
    {
     .species = 215,
     .heldItem = 170,
     .moves = {247, 241, 269, 332},
     .hpEV = 200,
     .attackEV = 0,
     .defenseEV = 50,
     .speedEV = 210,
     .spAttackEV = 0,
     .spDefenseEV = 50,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0D,
     .nickname = _("SNEASEL"),
     .friendship = 255
    },
    {
     .species = 65,
     .heldItem = 170,
     .moves = {7, 105, 94, 241},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x05,
     .nickname = _("ALAKAZAM"),
     .friendship = 255
    },
    {
     .species = 237,
     .heldItem = 170,
     .moves = {25, 283, 91, 241},
     .hpEV = 100,
     .attackEV = 210,
     .defenseEV = 0,
     .speedEV = 200,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x08,
     .nickname = _("HITMONTOP"),
     .friendship = 255
    },
    {
     .species = 203,
     .heldItem = 170,
     .moves = {113, 241, 247, 60},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0A,
     .nickname = _("GIRAFARIG"),
     .friendship = 255
    },
    {
     .species = 178,
     .heldItem = 170,
     .moves = {241, 65, 109, 94},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("XATU"),
     .friendship = 255
    },
    {
     .species = 122,
     .heldItem = 170,
     .moves = {115, 241, 94, 351},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 200,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x05,
     .nickname = _("MR. MIME"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("JO & HALEY"),
   .facilityClass = 129,
   .textColor = 5,
   .speechBefore = {(0x5 << 9) | 0x2, (0x5 << 9) | 0x2, (0x5 << 9) | 0x2, (0x8 << 9) | 0x31, (0x8 << 9) | 0x22, (0x3 << 9) | 0x6},
   .speechWin = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x22, (0x7 << 9) | 0x24, (0x6 << 9) | 0x3, (0x5 << 9) | 0x3d, (0x3 << 9) | 0x7},
   .speechLose = {(0x10 << 9) | 0x18, (0x6 << 9) | 0x4, (0x5 << 9) | 0x3d, (0x8 << 9) | 0x11, (0x3 << 9) | 0x39, (0x6 << 9) | 0x4},
   .speechAfter = {(0x6 << 9) | 0x28, (0x6 << 9) | 0x4, (0x5 << 9) | 0x41, (0x7 << 9) | 0x2f, (0x10 << 9) | 0xd, (0x6 << 9) | 0x4},
   .mons = {
    {
     .species = 97,
     .heldItem = 196,
     .moves = {7, 95, 94, 171},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x87,
     .nickname = _("HYPNO"),
     .friendship = 255
    },
    {
     .species = 107,
     .heldItem = 196,
     .moves = {7, 9, 8, 197},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("HITMONCHAN"),
     .friendship = 255
    },
    {
     .species = 68,
     .heldItem = 196,
     .moves = {53, 280, 184, 91},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x43,
     .nickname = _("MACHAMP"),
     .friendship = 255
    },
    {
     .species = 229,
     .heldItem = 196,
     .moves = {46, 53, 44, 182},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x87,
     .nickname = _("HOUNDOOM"),
     .friendship = 255
    },
    {
     .species = 57,
     .heldItem = 196,
     .moves = {315, 207, 69, 104},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 110,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x8C,
     .nickname = _("PRIMEAPE"),
     .friendship = 255
    },
    {
     .species = 214,
     .heldItem = 196,
     .moves = {224, 89, 68, 43},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x85,
     .nickname = _("HERACROSS"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x000160b1
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_1 = {
 .id = 7,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 12,
 .trainers = {
     {
   .name = _("JORDY"),
   .facilityClass = 97,
   .textColor = 3,
   .speechBefore = {(0x8 << 9) | 0x17, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, (0x6 << 9) | 0x13, (0x5 << 9) | 0x2, (0x3 << 9) | 0x3b},
   .speechWin = {(0xf << 9) | 0x22, (0x7 << 9) | 0x13, (0x3 << 9) | 0x3b, (0x5 << 9) | 0x2, (0x8 << 9) | 0xf, (0x6 << 9) | 0x0},
   .speechLose = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x11, (0x7 << 9) | 0x25, (0x8 << 9) | 0x2f, (0x2 << 9) | 0xa, (0x6 << 9) | 0x0},
   .speechAfter = {(0x9 << 9) | 0x1f, (0x6 << 9) | 0x0, (0x5 << 9) | 0x1, (0x8 << 9) | 0x17, (0x1 << 9) | 0xf, (0x8 << 9) | 0x29},
   .mons = {
    {
     .species = 240,
     .heldItem = 221,
     .moves = {108, 109, 53, 103},
     .hpEV = 210,
     .attackEV = 30,
     .defenseEV = 30,
     .speedEV = 0,
     .spAttackEV = 210,
     .spDefenseEV = 30,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x43,
     .nickname = _("MAGBY"),
     .friendship = 0
    },
    {
     .species = 173,
     .heldItem = 221,
     .moves = {213, 204, 290, 148},
     .hpEV = 210,
     .attackEV = 210,
     .defenseEV = 30,
     .speedEV = 0,
     .spAttackEV = 30,
     .spDefenseEV = 30,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0xCA,
     .nickname = _("CLEFFA"),
     .friendship = 255
    },
    {
     .species = 174,
     .heldItem = 221,
     .moves = {47, 237, 204, 104},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 45,
     .speedEV = 210,
     .spAttackEV = 0,
     .spDefenseEV = 45,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0xD2,
     .nickname = _("IGGLYBUFF"),
     .friendship = 255
    },
    {
     .species = 238,
     .heldItem = 221,
     .moves = {313, 94, 212, 47},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 45,
     .speedEV = 0,
     .spAttackEV = 210,
     .spDefenseEV = 45,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("SMOOCHUM"),
     .friendship = 255
    },
    {
     .species = 175,
     .heldItem = 221,
     .moves = {186, 281, 246, 104},
     .hpEV = 210,
     .attackEV = 210,
     .defenseEV = 45,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 45,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x34,
     .nickname = _("TOGEPI"),
     .friendship = 0
    },
    {
     .species = 172,
     .heldItem = 221,
     .moves = {86, 351, 186, 148},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 45,
     .speedEV = 0,
     .spAttackEV = 210,
     .spDefenseEV = 45,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x8E,
     .nickname = _("PICHU"),
     .friendship = 0
    },
   }
  },
  {
   .name = _("ERNEST"),
   .facilityClass = 97,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x31, (0xb << 9) | 0x34, (0xe << 9) | 0x13, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x22, (0x6 << 9) | 0x0},
   .speechWin = {(0x8 << 9) | 0x22, (0x3 << 9) | 0x14, (0x7 << 9) | 0x11, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechLose = {(0xf << 9) | 0x25, (0x8 << 9) | 0x3b, (0x5 << 9) | 0x2, (0x11 << 9) | 0x16, (0x5 << 9) | 0x14, (0x6 << 9) | 0x3},
   .speechAfter = {(0x5 << 9) | 0x29, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x20, (0xd << 9) | 0x28},
   .mons = {
    {
     .species = 173,
     .heldItem = 183,
     .moves = {186, 218, 47, 213},
     .hpEV = 210,
     .attackEV = 210,
     .defenseEV = 45,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 45,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0xCA,
     .nickname = _("CLEFFA"),
     .friendship = 0
    },
    {
     .species = 240,
     .heldItem = 183,
     .moves = {218, 109, 53, 92},
     .hpEV = 90,
     .attackEV = 210,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 210,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x4D,
     .nickname = _("MAGBY"),
     .friendship = 0
    },
    {
     .species = 175,
     .heldItem = 183,
     .moves = {218, 104, 92, 186},
     .hpEV = 210,
     .attackEV = 210,
     .defenseEV = 45,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 45,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x34,
     .nickname = _("TOGEPI"),
     .friendship = 0
    },
    {
     .species = 238,
     .heldItem = 183,
     .moves = {212, 195, 92, 148},
     .hpEV = 90,
     .attackEV = 0,
     .defenseEV = 210,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 210,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("SMOOCHUM"),
     .friendship = 0
    },
    {
     .species = 174,
     .heldItem = 183,
     .moves = {104, 186, 69, 148},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 45,
     .speedEV = 210,
     .spAttackEV = 0,
     .spDefenseEV = 45,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("IGGLYBUFF"),
     .friendship = 0
    },
    {
     .species = 172,
     .heldItem = 183,
     .moves = {39, 218, 213, 86},
     .hpEV = 90,
     .attackEV = 210,
     .defenseEV = 0,
     .speedEV = 210,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("PICHU"),
     .friendship = 0
    },
   }
  },
  {
   .name = _("GABRIEL"),
   .facilityClass = 102,
   .textColor = 1,
   .speechBefore = {(0x4 << 9) | 0x26, (0x6 << 9) | 0x0, (0x4 << 9) | 0x3, (0x8 << 9) | 0x2f, (0x2 << 9) | 0x62, (0x5 << 9) | 0x2},
   .speechWin = {(0x5 << 9) | 0x29, (0x3 << 9) | 0x36, (0x5 << 9) | 0x2, (0x9 << 9) | 0xa, (0xf << 9) | 0x14, (0x6 << 9) | 0x3},
   .speechLose = {(0xf << 9) | 0x22, (0x8 << 9) | 0x10, (0xf << 9) | 0x14, (0x6 << 9) | 0x3, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x6, (0xe << 9) | 0x1c, (0xe << 9) | 0x13},
   .mons = {
    {
     .species = 172,
     .heldItem = 179,
     .moves = {86, 218, 85, 213},
     .hpEV = 90,
     .attackEV = 210,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 210,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x81,
     .nickname = _("PICHU"),
     .friendship = 0
    },
    {
     .species = 175,
     .heldItem = 179,
     .moves = {213, 218, 92, 164},
     .hpEV = 210,
     .attackEV = 210,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 90,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x33,
     .nickname = _("TOGEPI"),
     .friendship = 0
    },
    {
     .species = 173,
     .heldItem = 179,
     .moves = {227, 92, 104, 148},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 150,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 150,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0xCF,
     .nickname = _("CLEFFA"),
     .friendship = 0
    },
    {
     .species = 174,
     .heldItem = 179,
     .moves = {213, 164, 47, 195},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 210,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 90,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0xCF,
     .nickname = _("IGGLYBUFF"),
     .friendship = 0
    },
    {
     .species = 238,
     .heldItem = 179,
     .moves = {186, 195, 92, 213},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("SMOOCHUM"),
     .friendship = 0
    },
    {
     .species = 240,
     .heldItem = 179,
     .moves = {43, 218, 164, 53},
     .hpEV = 90,
     .attackEV = 210,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 210,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x4D,
     .nickname = _("MAGBY"),
     .friendship = 0
    },
   }
  },
 },
 .checksum = 0x00017a4a
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_2 = {
 .id = 8,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 14,
 .trainers = {
     {
   .name = _("MIKE"),
   .facilityClass = 96,
   .textColor = 5,
   .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0xa << 9) | 0xc, (0x8 << 9) | 0x34, (0x3 << 9) | 0x1e},
   .speechWin = {(0x4 << 9) | 0x1b, (0xf << 9) | 0x20, (0x8 << 9) | 0xb, (0x5 << 9) | 0x5, (0x3 << 9) | 0x1e, (0x6 << 9) | 0x3},
   .speechLose = {(0x5 << 9) | 0x2, (0x9 << 9) | 0xa, (0x5 << 9) | 0x14, (0x8 << 9) | 0x30, (0x5 << 9) | 0x5, ((0x13 << 9) | 252)},
   .speechAfter = {(0x6 << 9) | 0x1c, (0x6 << 9) | 0x0, (0x7 << 9) | 0x1d, (0xa << 9) | 0x1a, (0xa << 9) | 0x1c, (0x6 << 9) | 0x0},
   .mons = {
    {
     .species = 127,
     .heldItem = 198,
     .moves = {12, 280, 91, 279},
     .hpEV = 100,
     .attackEV = 210,
     .defenseEV = 0,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("PINSIR"),
     .friendship = 255
    },
    {
     .species = 6,
     .heldItem = 198,
     .moves = {337, 232, 332, 200},
     .hpEV = 200,
     .attackEV = 200,
     .defenseEV = 0,
     .speedEV = 110,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x35,
     .nickname = _("CHARIZARD"),
     .friendship = 255
    },
    {
     .species = 112,
     .heldItem = 198,
     .moves = {224, 32, 306, 280},
     .hpEV = 100,
     .attackEV = 210,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x09,
     .nickname = _("RHYDON"),
     .friendship = 255
    },
    {
     .species = 59,
     .heldItem = 198,
     .moves = {245, 231, 332, 91},
     .hpEV = 110,
     .attackEV = 200,
     .defenseEV = 0,
     .speedEV = 200,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x3F,
     .nickname = _("ARCANINE"),
     .friendship = 255
    },
    {
     .species = 76,
     .heldItem = 198,
     .moves = {38, 205, 280, 91},
     .hpEV = 100,
     .attackEV = 210,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("GOLEM"),
     .friendship = 255
    },
    {
     .species = 229,
     .heldItem = 198,
     .moves = {242, 179, 38, 68},
     .hpEV = 200,
     .attackEV = 110,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 1,
     .personality = 0x08,
     .nickname = _("HOUNDOOM"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("REBECCA"),
   .facilityClass = 138,
   .textColor = 5,
   .speechBefore = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x3 << 9) | 0x6, (0x6 << 9) | 0x1, 0xFFFF, 0xFFFF},
   .speechWin = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x39, (0x9 << 9) | 0x2e, (0x7 << 9) | 0xa, (0x5 << 9) | 0x29, (0xa << 9) | 0x22},
   .speechLose = {(0x6 << 9) | 0x34, (0x6 << 9) | 0x1, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x18, (0x5 << 9) | 0x14, (0x7 << 9) | 0xa, (0x5 << 9) | 0x6, (0x2 << 9) | 0x33},
   .mons = {
    {
     .species = 28,
     .heldItem = 217,
     .moves = {306, 91, 38, 332},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x0D,
     .nickname = _("SANDSLASH"),
     .friendship = 255
    },
    {
     .species = 148,
     .heldItem = 217,
     .moves = {200, 231, 38, 21},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("DRAGONAIR"),
     .friendship = 255
    },
    {
     .species = 78,
     .heldItem = 217,
     .moves = {340, 231, 37, 38},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 1,
     .personality = 0x94,
     .nickname = _("RAPIDASH"),
     .friendship = 255
    },
    {
     .species = 136,
     .heldItem = 217,
     .moves = {231, 175, 44, 38},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x21,
     .nickname = _("FLAREON"),
     .friendship = 255
    },
    {
     .species = 31,
     .heldItem = 217,
     .moves = {276, 332, 280, 68},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x17,
     .nickname = _("NIDOQUEEN"),
     .friendship = 255
    },
    {
     .species = 53,
     .heldItem = 217,
     .moves = {216, 332, 231, 91},
     .hpEV = 110,
     .attackEV = 200,
     .defenseEV = 0,
     .speedEV = 200,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("PERSIAN"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("NICOLAS"),
   .facilityClass = 111,
   .textColor = 5,
   .speechBefore = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0xf << 9) | 0x20, (0x5 << 9) | 0x2, (0xe << 9) | 0x19, (0x6 << 9) | 0x0},
   .speechWin = {(0x5 << 9) | 0x6, (0x3 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0x8 << 9) | 0x32, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x14},
   .speechLose = {(0xf << 9) | 0x25, (0xb << 9) | 0x2d, (0x5 << 9) | 0x1, (0x9 << 9) | 0x3f, (0x5 << 9) | 0x2, (0x6 << 9) | 0x3},
   .speechAfter = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0xc << 9) | 0xf, (0x5 << 9) | 0x4a, (0x7 << 9) | 0x36},
   .mons = {
    {
     .species = 106,
     .heldItem = 187,
     .moves = {25, 179, 264, 280},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x08,
     .nickname = _("HITMONLEE"),
     .friendship = 255
    },
    {
     .species = 123,
     .heldItem = 187,
     .moves = {163, 179, 211, 332},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x17,
     .nickname = _("SCYTHER"),
     .friendship = 255
    },
    {
     .species = 126,
     .heldItem = 187,
     .moves = {7, 9, 280, 231},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x53,
     .nickname = _("MAGMAR"),
     .friendship = 255
    },
    {
     .species = 68,
     .heldItem = 187,
     .moves = {223, 91, 238, 279},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x3F,
     .nickname = _("MACHAMP"),
     .friendship = 255
    },
    {
     .species = 57,
     .heldItem = 187,
     .moves = {37, 238, 231, 332},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 110,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x08,
     .nickname = _("PRIMEAPE"),
     .friendship = 255
    },
    {
     .species = 62,
     .heldItem = 187,
     .moves = {34, 91, 25, 68},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x0D,
     .nickname = _("POLIWRATH"),
     .friendship = 255
    },
   }
  },
 },
 .checksum = 0x00016f05
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_5 = {
 .id = 9,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 0,
 .trainers = {
     {
   .name = _("JOEY"),
   .facilityClass = 92,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x9 << 9) | 0x19, (0x3 << 9) | 0x20, (0x6 << 9) | 0x0},
   .speechWin = {(0x8 << 9) | 0x11, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x39, (0xa << 9) | 0x21, (0x6 << 9) | 0x3},
   .speechLose = {(0x5 << 9) | 0x5, (0x1 << 9) | 0xe, (0x8 << 9) | 0xf, (0x6 << 9) | 0x23, (0x3 << 9) | 0x21, (0x6 << 9) | 0x0},
   .speechAfter = {(0x7 << 9) | 0xd, (0x6 << 9) | 0x23, (0x1 << 9) | 0xe, (0x3 << 9) | 0x0, (0x8 << 9) | 0xb, (0x9 << 9) | 0x8},
   .mons = {
    {
     .species = 198,
     .heldItem = 206,
     .moves = {185, 332, 247, 109},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("MURKROW"),
     .friendship = 255
    },
    {
     .species = 128,
     .heldItem = 217,
     .moves = {89, 34, 317, 228},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("TAUROS"),
     .friendship = 255
    },
    {
     .species = 80,
     .heldItem = 209,
     .moves = {133, 94, 57, 58},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x89,
     .nickname = _("SLOWBRO"),
     .friendship = 255
    },
    {
     .species = 24,
     .heldItem = 211,
     .moves = {231, 188, 157, 92},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x89,
     .nickname = _("ARBOK"),
     .friendship = 255
    },
    {
     .species = 34,
     .heldItem = 203,
     .moves = {89, 224, 188, 157},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("NIDOKING"),
     .friendship = 255
    },
    {
     .species = 78,
     .heldItem = 215,
     .moves = {53, 340, 98, 24},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x89,
     .nickname = _("RAPIDASH"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016417
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_8 = {
 .id = 10,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 12,
 .trainers = {
     {
   .name = _("LILY"),
   .facilityClass = 140,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x36, (0x7 << 9) | 0x26, (0x8 << 9) | 0x37, ((0x12 << 9) | 216), (0x6 << 9) | 0x0},
   .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0x27, (0x8 << 9) | 0x37, (0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x6 << 9) | 0x0},
   .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x7 << 9) | 0x26, (0x8 << 9) | 0x37, ((0x12 << 9) | 216), (0x6 << 9) | 0x4},
   .speechAfter = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x1e, (0x5 << 9) | 0x28, (0xb << 9) | 0x15, (0xe << 9) | 0x8},
   .mons = {
    {
     .species = 35,
     .heldItem = 142,
     .moves = {204, 118, 216, 156},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("CLEFAIRY"),
     .friendship = 255
    },
    {
     .species = 175,
     .heldItem = 142,
     .moves = {204, 118, 216, 156},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x0C,
     .nickname = _("TOGEPI"),
     .friendship = 255
    },
    {
     .species = 52,
     .heldItem = 217,
     .moves = {204, 274, 216, 156},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("MEOWTH"),
     .friendship = 255
    },
    {
     .species = 39,
     .heldItem = 217,
     .moves = {204, 205, 216, 156},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("JIGGLYPUFF"),
     .friendship = 255
    },
    {
     .species = 143,
     .heldItem = 200,
     .moves = {204, 205, 216, 156},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x25,
     .nickname = _("SNORLAX"),
     .friendship = 255
    },
    {
     .species = 209,
     .heldItem = 200,
     .moves = {204, 122, 216, 156},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("SNUBBULL"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016cb7
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_2 = {
 .id = 11,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 14,
 .trainers = {
     {
   .name = _("BRANDON"),
   .facilityClass = 89,
   .textColor = 1,
   .speechBefore = {(0x2 << 9) | 0x3c, (0x8 << 9) | 0xb, (0x7 << 9) | 0x1e, (0x8 << 9) | 0x25, (0xa << 9) | 0x36, (0x8 << 9) | 0xc},
   .speechWin = {(0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0x8 << 9) | 0x13, (0x2 << 9) | 0x3c, (0x9 << 9) | 0x30, (0x6 << 9) | 0x3},
   .speechLose = {(0x4 << 9) | 0x1c, (0x5 << 9) | 0x40, (0x2 << 9) | 0x3c, (0x8 << 9) | 0x3c, (0xc << 9) | 0xd, (0x6 << 9) | 0x3},
   .speechAfter = {(0x2 << 9) | 0x3c, (0x8 << 9) | 0xb, (0x8 << 9) | 0x20, (0x9 << 9) | 0x30, ((0x12 << 9) | 259), (0x8 << 9) | 0xc},
   .mons = {
    {
     .species = 12,
     .heldItem = 179,
     .moves = {318, 79, 94, 48},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("BUTTERFREE"),
     .friendship = 255
    },
    {
     .species = 15,
     .heldItem = 179,
     .moves = {188, 41, 104, 332},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("BEEDRILL"),
     .friendship = 255
    },
    {
     .species = 47,
     .heldItem = 179,
     .moves = {202, 113, 78, 163},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("PARASECT"),
     .friendship = 255
    },
    {
     .species = 193,
     .heldItem = 179,
     .moves = {95, 49, 98, 332},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 1,
     .personality = 0x8A,
     .nickname = _("YANMA"),
     .friendship = 255
    },
    {
     .species = 213,
     .heldItem = 142,
     .moves = {92, 317, 182, 156},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("SHUCKLE"),
     .friendship = 255
    },
    {
     .species = 205,
     .heldItem = 142,
     .moves = {92, 202, 182, 201},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("FORRETRESS"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016e1f
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_3 = {
 .id = 12,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 2,
 .trainers = {
     {
   .name = _("RIC & RENE"),
   .facilityClass = 129,
   .textColor = 5,
   .speechBefore = {(0x5 << 9) | 0x28, (0xa << 9) | 0x13, (0x5 << 9) | 0xe, (0x8 << 9) | 0xb, (0x7 << 9) | 0x2c, (0x10 << 9) | 0x17},
   .speechWin = {(0x5 << 9) | 0x28, (0xa << 9) | 0x13, (0x5 << 9) | 0xe, (0x8 << 9) | 0xb, (0x8 << 9) | 0x39, (0x10 << 9) | 0x17},
   .speechLose = {(0x5 << 9) | 0x28, (0xa << 9) | 0x13, (0x5 << 9) | 0xe, (0x8 << 9) | 0x13, (0x10 << 9) | 0x17, (0x6 << 9) | 0x3},
   .speechAfter = {(0xa << 9) | 0x13, (0x5 << 9) | 0xe, (0x3 << 9) | 0x29, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF},
   .mons = {
    {
     .species = 106,
     .heldItem = 198,
     .moves = {317, 136, 339, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("HITMONLEE"),
     .friendship = 255
    },
    {
     .species = 112,
     .heldItem = 219,
     .moves = {224, 350, 280, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x7F,
     .nickname = _("RHYDON"),
     .friendship = 255
    },
    {
     .species = 76,
     .heldItem = 198,
     .moves = {280, 350, 91, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x02,
     .nickname = _("GOLEM"),
     .friendship = 255
    },
    {
     .species = 126,
     .heldItem = 219,
     .moves = {7, 280, 109, 182},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x4F,
     .nickname = _("MAGMAR"),
     .friendship = 255
    },
    {
     .species = 214,
     .heldItem = 196,
     .moves = {224, 280, 317, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x7F,
     .nickname = _("HERACROSS"),
     .friendship = 255
    },
    {
     .species = 62,
     .heldItem = 198,
     .moves = {264, 57, 339, 182},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x97,
     .nickname = _("POLIWRATH"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("RIC & RENE"),
   .facilityClass = 129,
   .textColor = 5,
   .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x2c, (0x10 << 9) | 0x17, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF},
   .speechWin = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x39, (0x10 << 9) | 0x17, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF},
   .speechLose = {(0x4 << 9) | 0x1c, 0xFFFF, (0x5 << 9) | 0x29, (0x7 << 9) | 0x1, (0x10 << 9) | 0x17, (0x6 << 9) | 0x3},
   .speechAfter = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x8 << 9) | 0x18, (0x5 << 9) | 0x28, (0xa << 9) | 0x3c, (0x6 << 9) | 0x0},
   .mons = {
    {
     .species = 68,
     .heldItem = 198,
     .moves = {238, 69, 317, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x4E,
     .nickname = _("MACHAMP"),
     .friendship = 255
    },
    {
     .species = 127,
     .heldItem = 196,
     .moves = {317, 69, 66, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("PINSIR"),
     .friendship = 255
    },
    {
     .species = 105,
     .heldItem = 219,
     .moves = {280, 155, 332, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x03,
     .nickname = _("MAROWAK"),
     .friendship = 255
    },
    {
     .species = 107,
     .heldItem = 198,
     .moves = {183, 9, 104, 182},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("HITMONCHAN"),
     .friendship = 255
    },
    {
     .species = 125,
     .heldItem = 219,
     .moves = {9, 280, 86, 182},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x4F,
     .nickname = _("ELECTABUZZ"),
     .friendship = 255
    },
    {
     .species = 62,
     .heldItem = 198,
     .moves = {264, 57, 339, 182},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x97,
     .nickname = _("POLIWRATH"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x000166b4
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_1 = {
 .id = 13,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 13,
 .trainers = {
     {
   .name = _("JEN & KIRA"),
   .facilityClass = 126,
   .textColor = 5,
   .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x9 << 9) | 0xf, (0x9 << 9) | 0x2f, (0x6 << 9) | 0x0},
   .speechWin = {(0x6 << 9) | 0x1a, (0x6 << 9) | 0x3a, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechLose = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x9 << 9) | 0xf, (0x8 << 9) | 0x2f, (0x1 << 9) | 0xf, (0x8 << 9) | 0x31},
   .mons = {
    {
     .species = 135,
     .heldItem = 183,
     .moves = {98, 85, 24, 42},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x29,
     .nickname = _("JOLTEON"),
     .friendship = 255
    },
    {
     .species = 196,
     .heldItem = 183,
     .moves = {98, 94, 247, 44},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x29,
     .nickname = _("ESPEON"),
     .friendship = 255
    },
    {
     .species = 136,
     .heldItem = 183,
     .moves = {98, 53, 247, 231},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x33,
     .nickname = _("FLAREON"),
     .friendship = 255
    },
    {
     .species = 134,
     .heldItem = 183,
     .moves = {98, 127, 58, 44},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x10,
     .nickname = _("VAPOREON"),
     .friendship = 255
    },
    {
     .species = 133,
     .heldItem = 183,
     .moves = {98, 38, 44, 231},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x10,
     .nickname = _("EEVEE"),
     .friendship = 255
    },
    {
     .species = 197,
     .heldItem = 183,
     .moves = {98, 185, 247, 231},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x10,
     .nickname = _("UMBREON"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("JEN & KIRA"),
   .facilityClass = 126,
   .textColor = 3,
   .speechBefore = {(0x8 << 9) | 0xd, (0x9 << 9) | 0xf, (0x9 << 9) | 0x2f, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF},
   .speechWin = {(0x6 << 9) | 0x13, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechLose = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x0, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x3d, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x2f, (0xc << 9) | 0xd, (0x8 << 9) | 0x31, 0xFFFF},
   .mons = {
    {
     .species = 135,
     .heldItem = 179,
     .moves = {45, 39, 270, 85},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 10 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("JOLTEON"),
     .friendship = 255
    },
    {
     .species = 196,
     .heldItem = 179,
     .moves = {113, 115, 270, 94},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 10 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("ESPEON"),
     .friendship = 255
    },
    {
     .species = 136,
     .heldItem = 179,
     .moves = {45, 39, 270, 53},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 13 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0D,
     .nickname = _("FLAREON"),
     .friendship = 255
    },
    {
     .species = 134,
     .heldItem = 179,
     .moves = {45, 39, 270, 57},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 35 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x23,
     .nickname = _("VAPOREON"),
     .friendship = 255
    },
    {
     .species = 133,
     .heldItem = 179,
     .moves = {45, 39, 270, 38},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 35 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x23,
     .nickname = _("EEVEE"),
     .friendship = 255
    },
    {
     .species = 197,
     .heldItem = 179,
     .moves = {45, 39, 270, 185},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 35 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x23,
     .nickname = _("UMBREON"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00017fc2
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_4 = {
 .id = 14,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 8,
 .trainers = {
     {
   .name = _("ISAC & MAG"),
   .facilityClass = 127,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x40, ((0x12 << 9) | 89), (0x8 << 9) | 0x0, (0xb << 9) | 0x1e, (0x5 << 9) | 0x2, (0x10 << 9) | 0x1a},
   .speechWin = {(0x7 << 9) | 0x9, (0x10 << 9) | 0x1a, (0x4 << 9) | 0x1c, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechLose = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x2a, (0x10 << 9) | 0x1a, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x28, (0x5 << 9) | 0x15, (0x8 << 9) | 0x13, (0x10 << 9) | 0x1a, (0x5 << 9) | 0x49, (0x10 << 9) | 0x21},
   .mons = {
    {
     .species = 34,
     .heldItem = 203,
     .moves = {89, 224, 247, 126},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("NIDOKING"),
     .friendship = 255
    },
    {
     .species = 207,
     .heldItem = 203,
     .moves = {89, 98, 332, 231},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("GLIGAR"),
     .friendship = 255
    },
    {
     .species = 195,
     .heldItem = 203,
     .moves = {89, 188, 59, 280},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("QUAGSIRE"),
     .friendship = 0
    },
    {
     .species = 221,
     .heldItem = 203,
     .moves = {89, 59, 246, 34},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("PILOSWINE"),
     .friendship = 255
    },
    {
     .species = 76,
     .heldItem = 203,
     .moves = {89, 350, 280, 153},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x80,
     .nickname = _("GOLEM"),
     .friendship = 255
    },
    {
     .species = 208,
     .heldItem = 203,
     .moves = {89, 231, 225, 38},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("STEELIX"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("ISAC & MAG"),
   .facilityClass = 127,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x28, (0x1 << 9) | 0xe, (0x8 << 9) | 0x3d, (0x1 << 9) | 0xf, (0x8 << 9) | 0x2a, (0x10 << 9) | 0x1a},
   .speechWin = {(0x9 << 9) | 0x39, (0x6 << 9) | 0x3, (0x5 << 9) | 0x1, (0x8 << 9) | 0x3c, (0x7 << 9) | 0x3, (0x6 << 9) | 0x0},
   .speechLose = {(0x4 << 9) | 0x1c, (0x5 << 9) | 0x2, (0xf << 9) | 0x28, (0x5 << 9) | 0x14, (0x7 << 9) | 0x9, (0x10 << 9) | 0x1a},
   .speechAfter = {(0x5 << 9) | 0x29, (0x10 << 9) | 0x21, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x19, (0x8 << 9) | 0x22, (0x10 << 9) | 0x1a},
   .mons = {
    {
     .species = 227,
     .heldItem = 187,
     .moves = {201, 211, 314, 191},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("SKARMORY"),
     .friendship = 255
    },
    {
     .species = 226,
     .heldItem = 141,
     .moves = {58, 57, 109, 332},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0B,
     .nickname = _("MANTINE"),
     .friendship = 255
    },
    {
     .species = 189,
     .heldItem = 141,
     .moves = {39, 241, 76, 332},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("JUMPLUFF"),
     .friendship = 255
    },
    {
     .species = 94,
     .heldItem = 187,
     .moves = {247, 188, 85, 94},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("GENGAR"),
     .friendship = 255
    },
    {
     .species = 169,
     .heldItem = 187,
     .moves = {202, 305, 19, 211},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("CROBAT"),
     .friendship = 255
    },
    {
     .species = 178,
     .heldItem = 141,
     .moves = {94, 109, 332, 113},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("XATU"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016bb0
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_8 = {
 .id = 15,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 6,
 .trainers = {
     {
   .name = _("CHELSEA"),
   .facilityClass = 142,
   .textColor = 7,
   .speechBefore = {(0x7 << 9) | 0xd, (0x1 << 9) | 0x14, (0xc << 9) | 0x2c, (0x8 << 9) | 0xb, (0x9 << 9) | 0x8, (0x8 << 9) | 0xc},
   .speechWin = {(0x5 << 9) | 0x2, (0xb << 9) | 0x47, (0x7 << 9) | 0xd, (0x3 << 9) | 0x2e, 0xFFFF, 0xFFFF},
   .speechLose = {(0x8 << 9) | 0x6, (0xa << 9) | 0x3f, (0x8 << 9) | 0x2f, (0x7 << 9) | 0xd, (0x1 << 9) | 0x14, (0xc << 9) | 0x2c},
   .speechAfter = {(0x8 << 9) | 0x17, (0x8 << 9) | 0x32, (0x2 << 9) | 0x3c, (0x7 << 9) | 0xd, (0x1 << 9) | 0x14, (0xc << 9) | 0x2c},
   .mons = {
    {
     .species = 45,
     .heldItem = 171,
     .moves = {275, 202, 188, 78},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("VILEPLUME"),
     .friendship = 255
    },
    {
     .species = 121,
     .heldItem = 171,
     .moves = {94, 58, 127, 105},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x10,
     .nickname = _("STARMIE"),
     .friendship = 255
    },
    {
     .species = 217,
     .heldItem = 168,
     .moves = {185, 34, 280, 317},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x01,
     .nickname = _("URSARING"),
     .friendship = 255
    },
    {
     .species = 164,
     .heldItem = 168,
     .moves = {95, 138, 185, 332},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x01,
     .nickname = _("NOCTOWL"),
     .friendship = 255
    },
    {
     .species = 38,
     .heldItem = 171,
     .moves = {288, 315, 185, 261},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x10,
     .nickname = _("NINETALES"),
     .friendship = 255
    },
    {
     .species = 166,
     .heldItem = 168,
     .moves = {318, 129, 332, 92},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x01,
     .nickname = _("LEDIAN"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("TRENTON"),
   .facilityClass = 141,
   .textColor = 7,
   .speechBefore = {(0x5 << 9) | 0x1, ((0x13 << 9) | 182), (0x7 << 9) | 0xd, (0x9 << 9) | 0x40, (0x1 << 9) | 0x14, (0xc << 9) | 0x2c},
   .speechWin = {(0x3 << 9) | 0x10, (0x6 << 9) | 0x0, (0x7 << 9) | 0xd, (0x3 << 9) | 0x2e, (0x8 << 9) | 0xb, (0x5 << 9) | 0x3},
   .speechLose = {((0x13 << 9) | 182), (0x7 << 9) | 0xd, (0x1 << 9) | 0x14, (0xc << 9) | 0x2c, 0xFFFF, 0xFFFF},
   .speechAfter = {((0x13 << 9) | 182), (0x7 << 9) | 0x15, (0x3 << 9) | 0x2a, (0x7 << 9) | 0xd, (0x1 << 9) | 0x14, (0xc << 9) | 0x2c},
   .mons = {
    {
     .species = 130,
     .heldItem = 142,
     .moves = {89, 127, 59, 63},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x88,
     .nickname = _("GYARADOS"),
     .friendship = 255
    },
    {
     .species = 71,
     .heldItem = 142,
     .moves = {202, 188, 115, 213},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x8E,
     .nickname = _("VICTREEBEL"),
     .friendship = 255
    },
    {
     .species = 232,
     .heldItem = 142,
     .moves = {89, 246, 231, 38},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x97,
     .nickname = _("DONPHAN"),
     .friendship = 255
    },
    {
     .species = 22,
     .heldItem = 142,
     .moves = {185, 65, 211, 104},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x97,
     .nickname = _("FEAROW"),
     .friendship = 255
    },
    {
     .species = 59,
     .heldItem = 142,
     .moves = {245, 126, 242, 332},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x4F,
     .nickname = _("ARCANINE"),
     .friendship = 255
    },
    {
     .species = 168,
     .heldItem = 142,
     .moves = {94, 188, 324, 92},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x97,
     .nickname = _("ARIADOS"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("ALBERT"),
   .facilityClass = 116,
   .textColor = 7,
   .speechBefore = {(0x8 << 9) | 0xd, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x21, (0x10 << 9) | 0xf, (0xe << 9) | 0x13, (0xf << 9) | 0xa},
   .speechWin = {(0x5 << 9) | 0x6, (0x3 << 9) | 0x3a, (0x8 << 9) | 0x2f, (0xb << 9) | 0x1e, (0xf << 9) | 0x4, (0x10 << 9) | 0xf},
   .speechLose = {(0x5 << 9) | 0x6, (0x3 << 9) | 0x20, (0xf << 9) | 0x19, (0x7 << 9) | 0x1c, (0x7 << 9) | 0x15, (0x10 << 9) | 0xf},
   .speechAfter = {(0x5 << 9) | 0x29, (0xa << 9) | 0x2a, (0x8 << 9) | 0x3f, (0xf << 9) | 0x14, (0x10 << 9) | 0xf, (0x3 << 9) | 0x18},
   .mons = {
    {
     .species = 230,
     .heldItem = 170,
     .moves = {239, 190, 62, 216},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x15,
     .nickname = _("KINGDRA"),
     .friendship = 255
    },
    {
     .species = 76,
     .heldItem = 170,
     .moves = {89, 157, 280, 38},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x7F,
     .nickname = _("GOLEM"),
     .friendship = 255
    },
    {
     .species = 149,
     .heldItem = 170,
     .moves = {87, 126, 59, 337},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x01,
     .nickname = _("DRAGONITE"),
     .friendship = 255
    },
    {
     .species = 248,
     .heldItem = 170,
     .moves = {89, 242, 87, 126},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x97,
     .nickname = _("TYRANITAR"),
     .friendship = 255
    },
    {
     .species = 181,
     .heldItem = 170,
     .moves = {115, 87, 280, 216},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x13,
     .nickname = _("AMPHAROS"),
     .friendship = 255
    },
    {
     .species = 3,
     .heldItem = 170,
     .moves = {202, 73, 92, 34},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x2A,
     .nickname = _("VENUSAUR"),
     .friendship = 255
    },
   }
  },
 },
 .checksum = 0x0001844c
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_3 = {
 .id = 16,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 4,
 .trainers = {
     {
   .name = _("CAMRYN"),
   .facilityClass = 93,
   .textColor = 1,
   .speechBefore = {(0x8 << 9) | 0xd, (0x3 << 9) | 0x28, (0x5 << 9) | 0x1, (0x8 << 9) | 0x14, (0x3 << 9) | 0x31, (0x6 << 9) | 0x0},
   .speechWin = {(0x5 << 9) | 0x1, (0xb << 9) | 0xb, (0xf << 9) | 0x14, (0x5 << 9) | 0x1, (0x8 << 9) | 0xa, (0x3 << 9) | 0x6},
   .speechLose = {(0x6 << 9) | 0xc, (0x6 << 9) | 0x6, (0x8 << 9) | 0x3b, (0x5 << 9) | 0x1, (0x3 << 9) | 0x31, (0x6 << 9) | 0x3},
   .speechAfter = {(0x5 << 9) | 0x6, (0x3 << 9) | 0x21, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .mons = {
    {
     .species = 198,
     .heldItem = 206,
     .moves = {332, 247, 185, 109},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("MURKROW"),
     .friendship = 255
    },
    {
     .species = 78,
     .heldItem = 215,
     .moves = {340, 53, 98, 24},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0C,
     .nickname = _("RAPIDASH"),
     .friendship = 255
    },
    {
     .species = 241,
     .heldItem = 217,
     .moves = {208, 280, 34, 247},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("MILTANK"),
     .friendship = 255
    },
    {
     .species = 55,
     .heldItem = 209,
     .moves = {56, 58, 347, 113},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("GOLDUCK"),
     .friendship = 255
    },
    {
     .species = 28,
     .heldItem = 203,
     .moves = {201, 332, 89, 317},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("SANDSLASH"),
     .friendship = 255
    },
    {
     .species = 31,
     .heldItem = 204,
     .moves = {89, 276, 188, 157},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("NIDOQUEEN"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("NATALIA"),
   .facilityClass = 143,
   .textColor = 1,
   .speechBefore = {(0xf << 9) | 0xf, ((0x12 << 9) | 230), (0x5 << 9) | 0x2, (0x8 << 9) | 0x3a, (0x8 << 9) | 0x29, (0x6 << 9) | 0x3},
   .speechWin = {(0x8 << 9) | 0x1c, (0xf << 9) | 0x14, (0x9 << 9) | 0x32, (0x6 << 9) | 0x3, 0xFFFF, 0xFFFF},
   .speechLose = {(0xf << 9) | 0x14, (0x8 << 9) | 0x1c, (0xa << 9) | 0x5, (0x6 << 9) | 0x3, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x1, ((0x13 << 9) | 287), (0xf << 9) | 0x4, (0x8 << 9) | 0x30, (0xa << 9) | 0x1f, ((0x12 << 9) | 312)},
   .mons = {
    {
     .species = 182,
     .heldItem = 140,
     .moves = {230, 213, 80, 175},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("BELLOSSOM"),
     .friendship = 255
    },
    {
     .species = 71,
     .heldItem = 205,
     .moves = {230, 213, 202, 188},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("VICTREEBEL"),
     .friendship = 255
    },
    {
     .species = 47,
     .heldItem = 205,
     .moves = {230, 213, 202, 332},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("PARASECT"),
     .friendship = 255
    },
    {
     .species = 45,
     .heldItem = 140,
     .moves = {230, 213, 80, 188},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("VILEPLUME"),
     .friendship = 255
    },
    {
     .species = 3,
     .heldItem = 140,
     .moves = {230, 213, 80, 188},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0C,
     .nickname = _("VENUSAUR"),
     .friendship = 255
    },
    {
     .species = 154,
     .heldItem = 205,
     .moves = {230, 213, 202, 34},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x25,
     .nickname = _("MEGANIUM"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("KATHLEEN"),
   .facilityClass = 117,
   .textColor = 7,
   .speechBefore = {(0x8 << 9) | 0x39, (0x9 << 9) | 0x2e, (0x5 << 9) | 0x31, (0x8 << 9) | 0x28, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x2},
   .speechWin = {(0x4 << 9) | 0xb, (0x6 << 9) | 0x4, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechLose = {(0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x9 << 9) | 0x2f, (0x8 << 9) | 0x2f, (0xb << 9) | 0x27, (0x6 << 9) | 0x4},
   .speechAfter = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0x2 << 9) | 0x6b, (0xf << 9) | 0x14, (0x8 << 9) | 0xb, (0xa << 9) | 0x31},
   .mons = {
    {
     .species = 105,
     .heldItem = 141,
     .moves = {89, 280, 155, 332},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("MAROWAK"),
     .friendship = 255
    },
    {
     .species = 131,
     .heldItem = 141,
     .moves = {57, 59, 94, 87},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0C,
     .nickname = _("LAPRAS"),
     .friendship = 255
    },
    {
     .species = 59,
     .heldItem = 141,
     .moves = {245, 53, 242, 332},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x57,
     .nickname = _("ARCANINE"),
     .friendship = 255
    },
    {
     .species = 26,
     .heldItem = 141,
     .moves = {85, 98, 104, 231},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x89,
     .nickname = _("RAICHU"),
     .friendship = 255
    },
    {
     .species = 176,
     .heldItem = 141,
     .moves = {246, 186, 94, 345},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0C,
     .nickname = _("TOGETIC"),
     .friendship = 255
    },
    {
     .species = 143,
     .heldItem = 141,
     .moves = {34, 156, 173, 247},
     .hpEV = 84,
     .attackEV = 84,
     .defenseEV = 84,
     .speedEV = 84,
     .spAttackEV = 84,
     .spDefenseEV = 84,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0C,
     .nickname = _("SNORLAX"),
     .friendship = 255
    },
   }
  },
 },
 .checksum = 0x0001738c
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_6 = {
 .id = 17,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 3,
 .trainers = {
     {
   .name = _("BRADEN"),
   .facilityClass = 101,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x1a, (0x9 << 9) | 0x5, (0x8 << 9) | 0x30, (0x5 << 9) | 0x28, (0x2 << 9) | 0x34},
   .speechWin = {(0x6 << 9) | 0x11, 0xFFFF, (0x7 << 9) | 0x2e, (0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x6 << 9) | 0x3},
   .speechLose = {(0x5 << 9) | 0x2, (0x6 << 9) | 0x1f, (0x5 << 9) | 0x14, (0x8 << 9) | 0x38, (0x8 << 9) | 0x34, (0x9 << 9) | 0x6},
   .speechAfter = {(0x9 << 9) | 0x32, (0xc << 9) | 0xd, (0x5 << 9) | 0x2, (0x6 << 9) | 0x0, (0x5 << 9) | 0x6, (0xa << 9) | 0x23},
   .mons = {
    {
     .species = 134,
     .heldItem = 133,
     .moves = {57, 58, 247, 273},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 110,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("VAPOREON"),
     .friendship = 255
    },
    {
     .species = 80,
     .heldItem = 183,
     .moves = {57, 93, 133, 50},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x91,
     .nickname = _("SLOWBRO"),
     .friendship = 255
    },
    {
     .species = 186,
     .heldItem = 134,
     .moves = {57, 89, 95, 207},
     .hpEV = 100,
     .attackEV = 100,
     .defenseEV = 110,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x96,
     .nickname = _("POLITOED"),
     .friendship = 255
    },
    {
     .species = 73,
     .heldItem = 211,
     .moves = {57, 188, 58, 243},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 110,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x00,
     .nickname = _("TENTACRUEL"),
     .friendship = 255
    },
    {
     .species = 20,
     .heldItem = 142,
     .moves = {162, 158, 86, 98},
     .hpEV = 110,
     .attackEV = 200,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x80,
     .nickname = _("RATICATE"),
     .friendship = 255
    },
    {
     .species = 206,
     .heldItem = 140,
     .moves = {352, 89, 157, 281},
     .hpEV = 255,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x7F,
     .nickname = _("DUNSPARCE"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016530
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Mixed_1 = {
 .id = 18,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 10,
 .trainers = {
     {
   .name = _("ALLYSON"),
   .facilityClass = 117,
   .textColor = 7,
   .speechBefore = {(0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0x8 << 9) | 0x27, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x31, (0xe << 9) | 0xd},
   .speechWin = {(0x4 << 9) | 0x1, (0x6 << 9) | 0x1, (0x5 << 9) | 0x1, (0x9 << 9) | 0x28, (0x5 << 9) | 0x25, (0xe << 9) | 0xd},
   .speechLose = {(0x5 << 9) | 0x26, (0xf << 9) | 0x26, (0x8 << 9) | 0x27, (0xf << 9) | 0x4, (0x5 << 9) | 0x1, (0x9 << 9) | 0x12},
   .speechAfter = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x39, (0x3 << 9) | 0x20, (0xe << 9) | 0xd, (0x7 << 9) | 0x1d, (0x8 << 9) | 0x2a},
   .mons = {
    {
     .species = 121,
     .heldItem = 141,
     .moves = {57, 94, 86, 105},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x0F,
     .nickname = _("STARMIE"),
     .friendship = 255
    },
    {
     .species = 9,
     .heldItem = 170,
     .moves = {56, 58, 89, 243},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x32,
     .nickname = _("BLASTOISE"),
     .friendship = 255
    },
    {
     .species = 230,
     .heldItem = 134,
     .moves = {57, 58, 225, 156},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x8C,
     .nickname = _("KINGDRA"),
     .friendship = 255
    },
    {
     .species = 195,
     .heldItem = 134,
     .moves = {57, 89, 58, 156},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 155,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("QUAGSIRE"),
     .friendship = 255
    },
    {
     .species = 131,
     .heldItem = 200,
     .moves = {57, 58, 94, 213},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x0F,
     .nickname = _("LAPRAS"),
     .friendship = 255
    },
    {
     .species = 149,
     .heldItem = 219,
     .moves = {57, 58, 89, 113},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 155,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x96,
     .nickname = _("DRAGONITE"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016e32
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_1 = {
 .id = 19,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 14,
 .trainers = {
     {
   .name = _("ALBERTO"),
   .facilityClass = 91,
   .textColor = 5,
   .speechBefore = {(0x8 << 9) | 0xd, (0x1 << 9) | 0xf, (0x8 << 9) | 0x30, (0x8 << 9) | 0x29, (0xf << 9) | 0x29, (0xf << 9) | 0x1e},
   .speechWin = {(0x4 << 9) | 0x27, (0x6 << 9) | 0x1, (0x5 << 9) | 0x2, (0x3 << 9) | 0x2d, (0xe << 9) | 0x1a, (0x6 << 9) | 0x18},
   .speechLose = {(0x5 << 9) | 0x31, (0x8 << 9) | 0x2a, (0x8 << 9) | 0x28, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0x3 << 9) | 0x13},
   .speechAfter = {(0x6 << 9) | 0x38, (0x5 << 9) | 0x1, (0xb << 9) | 0x1, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0x3 << 9) | 0x30},
   .mons = {
    {
     .species = 160,
     .heldItem = 196,
     .moves = {57, 89, 242, 337},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x32,
     .nickname = _("FERALIGATR"),
     .friendship = 255
    },
    {
     .species = 62,
     .heldItem = 187,
     .moves = {57, 89, 25, 317},
     .hpEV = 100,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 1,
     .personality = 0x96,
     .nickname = _("POLIWRATH"),
     .friendship = 255
    },
    {
     .species = 115,
     .heldItem = 183,
     .moves = {306, 89, 317, 332},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 130,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 125,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("KANGASKHAN"),
     .friendship = 255
    },
    {
     .species = 241,
     .heldItem = 200,
     .moves = {89, 247, 317, 208},
     .hpEV = 155,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("MILTANK"),
     .friendship = 255
    },
    {
     .species = 55,
     .heldItem = 198,
     .moves = {238, 57, 58, 50},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 210,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 1,
     .personality = 0x96,
     .nickname = _("GOLDUCK"),
     .friendship = 255
    },
    {
     .species = 210,
     .heldItem = 168,
     .moves = {242, 89, 247, 188},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 130,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 125,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0xCA,
     .nickname = _("GRANBULL"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016890
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Mixed_5 = {
 .id = 20,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 12,
 .trainers = {
     {
   .name = _("KAT & KIPP"),
   .facilityClass = 130,
   .textColor = 4,
   .speechBefore = {(0x5 << 9) | 0x29, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x9 << 9) | 0xf, (0x5 << 9) | 0x28, (0xa << 9) | 0x3c},
   .speechWin = {(0x6 << 9) | 0x23, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x1, (0x5 << 9) | 0x28, (0x10 << 9) | 0x17, (0x5 << 9) | 0xe},
   .speechLose = {(0x6 << 9) | 0x14, (0x6 << 9) | 0x4, (0x7 << 9) | 0x1d, (0x7 << 9) | 0xf, (0x8 << 9) | 0x29, (0x9 << 9) | 0x3},
   .speechAfter = {(0x6 << 9) | 0x38, (0x5 << 9) | 0x28, (0x10 << 9) | 0x17, (0x5 << 9) | 0xe, (0x3 << 9) | 0x29, (0x3 << 9) | 0x29},
   .mons = {
    {
     .species = 215,
     .heldItem = 136,
     .moves = {91, 259, 115, 269},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x0D,
     .nickname = _("SNEASEL"),
     .friendship = 255
    },
    {
     .species = 139,
     .heldItem = 183,
     .moves = {291, 43, 321, 48},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x2D,
     .nickname = _("OMASTAR"),
     .friendship = 255
    },
    {
     .species = 87,
     .heldItem = 140,
     .moves = {291, 227, 45, 219},
     .hpEV = 200,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 210,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("DEWGONG"),
     .friendship = 255
    },
    {
     .species = 195,
     .heldItem = 183,
     .moves = {291, 281, 133, 219},
     .hpEV = 200,
     .attackEV = 0,
     .defenseEV = 110,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x91,
     .nickname = _("QUAGSIRE"),
     .friendship = 255
    },
    {
     .species = 222,
     .heldItem = 183,
     .moves = {91, 243, 105, 109},
     .hpEV = 155,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x17,
     .nickname = _("CORSOLA"),
     .friendship = 255
    },
    {
     .species = 28,
     .heldItem = 142,
     .moves = {91, 68, 111, 28},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x94,
     .nickname = _("SANDSLASH"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("KAT & KIPP"),
   .facilityClass = 130,
   .textColor = 4,
   .speechBefore = {(0x6 << 9) | 0x2b, (0x6 << 9) | 0x4, (0x5 << 9) | 0x3d, (0x9 << 9) | 0x1e, (0x3 << 9) | 0x31, (0x6 << 9) | 0x0},
   .speechWin = {(0x6 << 9) | 0x2b, (0x6 << 9) | 0x4, (0x5 << 9) | 0x41, (0x3 << 9) | 0x21, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x31},
   .speechLose = {(0xf << 9) | 0x22, (0x4 << 9) | 0x1c, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0x7 << 9) | 0x24, (0x6 << 9) | 0x3},
   .speechAfter = {(0x6 << 9) | 0xa, (0x6 << 9) | 0xa, (0x6 << 9) | 0x1d, (0xa << 9) | 0x13, (0x5 << 9) | 0xf, (0x6 << 9) | 0x0},
   .mons = {
    {
     .species = 162,
     .heldItem = 187,
     .moves = {91, 133, 111, 266},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x80,
     .nickname = _("FURRET"),
     .friendship = 255
    },
    {
     .species = 184,
     .heldItem = 180,
     .moves = {291, 113, 39, 111},
     .hpEV = 155,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("AZUMARILL"),
     .friendship = 255
    },
    {
     .species = 99,
     .heldItem = 183,
     .moves = {291, 106, 43, 133},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x91,
     .nickname = _("KINGLER"),
     .friendship = 255
    },
    {
     .species = 91,
     .heldItem = 183,
     .moves = {291, 110, 182, 48},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("CLOYSTER"),
     .friendship = 255
    },
    {
     .species = 195,
     .heldItem = 183,
     .moves = {91, 281, 133, 219},
     .hpEV = 200,
     .attackEV = 0,
     .defenseEV = 110,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x94,
     .nickname = _("QUAGSIRE"),
     .friendship = 255
    },
    {
     .species = 141,
     .heldItem = 135,
     .moves = {91, 28, 203, 109},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x30,
     .nickname = _("KABUTOPS"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00015d7c
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_8 = {
 .id = 21,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 8,
 .trainers = {
     {
   .name = _("GEB&MEGAN"),
   .facilityClass = 127,
   .textColor = 7,
   .speechBefore = {(0x5 << 9) | 0x6, (0x5 << 9) | 0x40, (0x5 << 9) | 0x0, (0x6 << 9) | 0x3, (0x3 << 9) | 0x3b, (0x6 << 9) | 0x28},
   .speechWin = {(0x6 << 9) | 0x28, (0x4 << 9) | 0xb, (0x5 << 9) | 0x28, (0x5 << 9) | 0x33, (0x2 << 9) | 0x33, (0x3 << 9) | 0x2e},
   .speechLose = {(0x5 << 9) | 0x6, (0x3 << 9) | 0x2c, (0x5 << 9) | 0x1f, (0x5 << 9) | 0x2, (0x5 << 9) | 0x33, (0x6 << 9) | 0x3},
   .speechAfter = {(0x8 << 9) | 0x14, (0x5 << 9) | 0x2, (0x1 << 9) | 0xf, (0x3 << 9) | 0x30, (0xb << 9) | 0x11, (0x6 << 9) | 0x3},
   .mons = {
    {
     .species = 186,
     .heldItem = 187,
     .moves = {57, 95, 195, 207},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x8C,
     .nickname = _("POLITOED"),
     .friendship = 255
    },
    {
     .species = 130,
     .heldItem = 170,
     .moves = {63, 349, 86, 85},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x96,
     .nickname = _("GYARADOS"),
     .friendship = 255
    },
    {
     .species = 131,
     .heldItem = 219,
     .moves = {57, 94, 85, 58},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0F,
     .nickname = _("LAPRAS"),
     .friendship = 255
    },
    {
     .species = 31,
     .heldItem = 196,
     .moves = {57, 89, 276, 157},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("NIDOQUEEN"),
     .friendship = 255
    },
    {
     .species = 124,
     .heldItem = 179,
     .moves = {352, 115, 113, 94},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("JYNX"),
     .friendship = 255
    },
    {
     .species = 203,
     .heldItem = 141,
     .moves = {113, 242, 94, 115},
     .hpEV = 210,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x8C,
     .nickname = _("GIRAFARIG"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("GEB&MEGAN"),
   .facilityClass = 127,
   .textColor = 7,
   .speechBefore = {(0x5 << 9) | 0x6, (0x5 << 9) | 0x40, (0x3 << 9) | 0x23, (0x6 << 9) | 0x3, (0x6 << 9) | 0x13, (0x6 << 9) | 0x4},
   .speechWin = {(0x6 << 9) | 0x13, (0x6 << 9) | 0x4, (0x5 << 9) | 0x29, (0x8 << 9) | 0x25, (0x4 << 9) | 0xb, 0xFFFF},
   .speechLose = {(0x5 << 9) | 0x28, (0xc << 9) | 0xa, (0xf << 9) | 0xf, (0x8 << 9) | 0xb, (0x7 << 9) | 0x1e, (0x9 << 9) | 0x21},
   .speechAfter = {(0x5 << 9) | 0x3d, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0xc << 9) | 0xf, (0x5 << 9) | 0x4a, (0x7 << 9) | 0x36},
   .mons = {
    {
     .species = 105,
     .heldItem = 170,
     .moves = {89, 157, 332, 182},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x94,
     .nickname = _("MAROWAK"),
     .friendship = 255
    },
    {
     .species = 217,
     .heldItem = 198,
     .moves = {38, 89, 157, 332},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("URSARING"),
     .friendship = 255
    },
    {
     .species = 199,
     .heldItem = 200,
     .moves = {57, 94, 58, 247},
     .hpEV = 0,
     .attackEV = 110,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x11,
     .nickname = _("SLOWKING"),
     .friendship = 255
    },
    {
     .species = 65,
     .heldItem = 179,
     .moves = {94, 182, 113, 115},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x41,
     .nickname = _("ALAKAZAM"),
     .friendship = 255
    },
    {
     .species = 34,
     .heldItem = 196,
     .moves = {57, 224, 85, 58},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("NIDOKING"),
     .friendship = 255
    },
    {
     .species = 112,
     .heldItem = 183,
     .moves = {89, 182, 224, 157},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x93,
     .nickname = _("RHYDON"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x000160f4
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_Unused1 = {
 .id = 22,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 5,
 .trainers = {
     {
   .name = _("LISA&LEAH"),
   .facilityClass = 126,
   .textColor = 1,
   .speechBefore = {(0x7 << 9) | 0x14, (0x5 << 9) | 0x41, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x6, (0x6 << 9) | 0x0},
   .speechWin = {(0x4 << 9) | 0x1f, (0x6 << 9) | 0x1, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF},
   .speechLose = {(0x6 << 9) | 0x3b, (0x6 << 9) | 0x0, (0x6 << 9) | 0xa, (0x6 << 9) | 0x1, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x4 << 9) | 0x16, (0x7 << 9) | 0xa, (0x5 << 9) | 0x6, (0x8 << 9) | 0x2a, (0x3 << 9) | 0x21, 0xFFFF},
   .mons = {
    {
     .species = 60,
     .heldItem = 133,
     .moves = {57, 182, 92, 104},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x87,
     .nickname = _("POLIWAG"),
     .friendship = 255
    },
    {
     .species = 7,
     .heldItem = 209,
     .moves = {352, 182, 92, 243},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x2D,
     .nickname = _("SQUIRTLE"),
     .friendship = 255
    },
    {
     .species = 170,
     .heldItem = 208,
     .moves = {57, 86, 109, 85},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("CHINCHOU"),
     .friendship = 255
    },
    {
     .species = 29,
     .heldItem = 211,
     .moves = {352, 188, 242, 91},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("NIDORAN♀"),
     .friendship = 255
    },
    {
     .species = 35,
     .heldItem = 180,
     .moves = {352, 104, 47, 107},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("CLEFAIRY"),
     .friendship = 255
    },
    {
     .species = 116,
     .heldItem = 142,
     .moves = {57, 108, 213, 82},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x2D,
     .nickname = _("HORSEA"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("LISA&LEAH"),
   .facilityClass = 126,
   .textColor = 1,
   .speechBefore = {(0x8 << 9) | 0x16, (0x5 << 9) | 0x3d, (0x3 << 9) | 0x6, (0x6 << 9) | 0x3, (0x5 << 9) | 0x31, (0x10 << 9) | 0xf},
   .speechWin = {(0x4 << 9) | 0x1f, (0x6 << 9) | 0x1, (0x5 << 9) | 0x2, (0xb << 9) | 0x1e, (0x5 << 9) | 0x14, (0x9 << 9) | 0x5},
   .speechLose = {(0x6 << 9) | 0x3b, (0x6 << 9) | 0x0, (0x6 << 9) | 0xa, (0x6 << 9) | 0x1, 0xFFFF, 0xFFFF},
   .speechAfter = {(0x5 << 9) | 0x2, (0x9 << 9) | 0x31, (0x8 << 9) | 0x22, ((0x13 << 9) | 251), (0x8 << 9) | 0x2c, (0x5 << 9) | 0x22},
   .mons = {
    {
     .species = 194,
     .heldItem = 200,
     .moves = {57, 89, 281, 148},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x93,
     .nickname = _("WOOPER"),
     .friendship = 255
    },
    {
     .species = 54,
     .heldItem = 198,
     .moves = {57, 238, 95, 50},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 1,
     .personality = 0x96,
     .nickname = _("PSYDUCK"),
     .friendship = 255
    },
    {
     .species = 209,
     .heldItem = 135,
     .moves = {352, 86, 242, 247},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("SNUBBULL"),
     .friendship = 255
    },
    {
     .species = 39,
     .heldItem = 142,
     .moves = {352, 86, 47, 50},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("JIGGLYPUFF"),
     .friendship = 255
    },
    {
     .species = 32,
     .heldItem = 196,
     .moves = {352, 188, 32, 91},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("NIDORAN♂"),
     .friendship = 255
    },
    {
     .species = 158,
     .heldItem = 179,
     .moves = {57, 182, 92, 104},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x2D,
     .nickname = _("TOTODILE"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 15, .attackIV = 15, .defenseIV = 15, .speedIV = 15, .spAttackIV = 15, .spDefenseIV = 15, .nickname = _("$$$$$$$$$$")}, {.hpIV = 15, .attackIV = 15, .defenseIV = 15, .speedIV = 15, .spAttackIV = 15, .spDefenseIV = 15, .nickname = _("$$$$$$$$$$")}, {.hpIV = 15, .attackIV = 15, .defenseIV = 15, .speedIV = 15, .spAttackIV = 15, .spDefenseIV = 15, .nickname = _("$$$$$$$$$$")}, {.hpIV = 15, .attackIV = 15, .defenseIV = 15, .speedIV = 15, .spAttackIV = 15, .spDefenseIV = 15, .nickname = _("$$$$$$$$$$")}, {.hpIV = 15, .attackIV = 15, .defenseIV = 15, .speedIV = 15, .spAttackIV = 15, .spDefenseIV = 15, .nickname = _("$$$$$$$$$$")}, {.hpIV = 15, .attackIV = 15, .defenseIV = 15, .speedIV = 15, .spAttackIV = 15, .spDefenseIV = 15, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x000197d4
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_7 = {
 .id = 23,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 1,
 .trainers = {
     {
   .name = _("PRISCILLA"),
   .facilityClass = 139,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x13, (0x1 << 9) | 0xe, (0x5 << 9) | 0x15, (0x4 << 9) | 0x3, (0x6 << 9) | 0x0},
   .speechWin = {(0x6 << 9) | 0xa, (0x6 << 9) | 0x0, (0x8 << 9) | 0x3b, (0x5 << 9) | 0x1, (0x3 << 9) | 0x6, (0x6 << 9) | 0x3},
   .speechLose = {(0x6 << 9) | 0x33, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0xb << 9) | 0x2d, (0x3 << 9) | 0x6, (0x6 << 9) | 0x4},
   .speechAfter = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x20, (0x9 << 9) | 0x32, (0x1 << 9) | 0xb, (0x4 << 9) | 0x11, (0x6 << 9) | 0x0},
   .mons = {
    {
     .species = 118,
     .heldItem = 142,
     .moves = {352, 224, 48, 58},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x96,
     .nickname = _("GOLDEEN"),
     .friendship = 0
    },
    {
     .species = 119,
     .heldItem = 198,
     .moves = {57, 224, 32, 182},
     .hpEV = 100,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x00,
     .nickname = _("SEAKING"),
     .friendship = 0
    },
    {
     .species = 171,
     .heldItem = 219,
     .moves = {57, 85, 86, 58},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 210,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x8C,
     .nickname = _("LANTURN"),
     .friendship = 0
    },
    {
     .species = 171,
     .heldItem = 200,
     .moves = {56, 87, 58, 240},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 210,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("LANTURN"),
     .friendship = 0
    },
    {
     .species = 118,
     .heldItem = 172,
     .moves = {352, 38, 92, 60},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x00,
     .nickname = _("GOLDEEN"),
     .friendship = 0
    },
    {
     .species = 119,
     .heldItem = 171,
     .moves = {57, 63, 58, 60},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x96,
     .nickname = _("SEAKING"),
     .friendship = 0
    },
   }
  },
  {
   .name = _("CHARLOTTE"),
   .facilityClass = 145,
   .textColor = 1,
   .speechBefore = {(0x4 << 9) | 0xf, (0x8 << 9) | 0x23, (0x5 << 9) | 0x29, (0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0x5 << 9) | 0x32},
   .speechWin = {(0x6 << 9) | 0x1d, (0x5 << 9) | 0x28, (0x5 << 9) | 0x28, (0x6 << 9) | 0x4, (0x5 << 9) | 0x29, (0x4 << 9) | 0xb},
   .speechLose = {(0x5 << 9) | 0x6, (0x8 << 9) | 0x31, (0x8 << 9) | 0x42, (0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0x5 << 9) | 0x32},
   .speechAfter = {(0x6 << 9) | 0x31, (0x4 << 9) | 0x11, (0x8 << 9) | 0x2b, (0x8 << 9) | 0x21, (0xa << 9) | 0x17, (0x3 << 9) | 0x28},
   .mons = {
    {
     .species = 224,
     .heldItem = 142,
     .moves = {190, 58, 94, 53},
     .hpEV = 55,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("OCTILLERY"),
     .friendship = 255
    },
    {
     .species = 211,
     .heldItem = 140,
     .moves = {57, 92, 279, 104},
     .hpEV = 200,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 210,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("QWILFISH"),
     .friendship = 255
    },
    {
     .species = 223,
     .heldItem = 135,
     .moves = {57, 94, 58, 86},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x96,
     .nickname = _("REMORAID"),
     .friendship = 255
    },
    {
     .species = 223,
     .heldItem = 180,
     .moves = {352, 59, 126, 182},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("REMORAID"),
     .friendship = 255
    },
    {
     .species = 224,
     .heldItem = 196,
     .moves = {190, 188, 86, 63},
     .hpEV = 155,
     .attackEV = 100,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x93,
     .nickname = _("OCTILLERY"),
     .friendship = 255
    },
    {
     .species = 211,
     .heldItem = 183,
     .moves = {56, 188, 247, 194},
     .hpEV = 100,
     .attackEV = 100,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 210,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x96,
     .nickname = _("QWILFISH"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("SHANIA"),
   .facilityClass = 105,
   .textColor = 1,
   .speechBefore = {(0x8 << 9) | 0x20, (0x1 << 9) | 0xe, (0xd << 9) | 0x29, (0x7 << 9) | 0x1d, (0xf << 9) | 0x22, (0x5 << 9) | 0x29},
   .speechWin = {(0x6 << 9) | 0xb, (0x4 << 9) | 0x1d, (0x6 << 9) | 0x23, (0x5 << 9) | 0x6, (0x3 << 9) | 0x3a, (0x7 << 9) | 0x2e},
   .speechLose = {(0xf << 9) | 0x25, (0x6 << 9) | 0x2, (0x5 << 9) | 0x2, (0x9 << 9) | 0x31, (0x8 << 9) | 0x22, (0x7 << 9) | 0x3},
   .speechAfter = {(0x9 << 9) | 0x32, (0x3 << 9) | 0x28, (0x4 << 9) | 0x0, (0x8 << 9) | 0x2b, (0xa << 9) | 0x18, (0x5 << 9) | 0x14},
   .mons = {
    {
     .species = 226,
     .heldItem = 179,
     .moves = {38, 89, 332, 157},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("MANTINE"),
     .friendship = 255
    },
    {
     .species = 129,
     .heldItem = 186,
     .moves = {150, 33, 0, 0},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0D,
     .nickname = _("MAGIKARP"),
     .friendship = 255
    },
    {
     .species = 226,
     .heldItem = 185,
     .moves = {57, 58, 109, 213},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("MANTINE"),
     .friendship = 255
    },
    {
     .species = 130,
     .heldItem = 219,
     .moves = {63, 86, 89, 182},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("GYARADOS"),
     .friendship = 255
    },
    {
     .species = 129,
     .heldItem = 186,
     .moves = {175, 33, 0, 0},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x94,
     .nickname = _("MAGIKARP"),
     .friendship = 255
    },
    {
     .species = 130,
     .heldItem = 187,
     .moves = {38, 86, 89, 349},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("GYARADOS"),
     .friendship = 255
    },
   }
  },
 },
 .checksum = 0x0001521d
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_4 = {
 .id = 24,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 13,
 .trainers = {
     {
   .name = _("BRENNAN"),
   .facilityClass = 91,
   .textColor = 1,
   .speechBefore = {(0xb << 9) | 0x47, (0xf << 9) | 0x4, (0x3 << 9) | 0x38, (0x6 << 9) | 0x4, (0x7 << 9) | 0x1d, (0x9 << 9) | 0x8},
   .speechWin = {(0x5 << 9) | 0x2, (0x3 << 9) | 0x31, (0x7 << 9) | 0x19, (0x5 << 9) | 0x2, (0x3 << 9) | 0x2d, (0x6 << 9) | 0x0},
   .speechLose = {(0x6 << 9) | 0x1e, (0x5 << 9) | 0x2, (0x9 << 9) | 0xa, (0x8 << 9) | 0x21, (0x3 << 9) | 0x38, (0x3 << 9) | 0x6},
   .speechAfter = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x17, ((0x12 << 9) | 288), (0x5 << 9) | 0x2, (0x7 << 9) | 0xa, (0x6 << 9) | 0x4},
   .mons = {
    {
     .species = 131,
     .heldItem = 134,
     .moves = {56, 94, 213, 156},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 255,
     .otId = 15 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x0F,
     .nickname = _("LAPRAS"),
     .friendship = 255
    },
    {
     .species = 230,
     .heldItem = 134,
     .moves = {56, 59, 225, 156},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x8C,
     .nickname = _("KINGDRA"),
     .friendship = 255
    },
    {
     .species = 68,
     .heldItem = 198,
     .moves = {238, 89, 157, 63},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 130,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 125,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x4E,
     .nickname = _("MACHAMP"),
     .friendship = 255
    },
    {
     .species = 113,
     .heldItem = 139,
     .moves = {352, 135, 107, 86},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x05,
     .nickname = _("CHANSEY"),
     .friendship = 255
    },
    {
     .species = 128,
     .heldItem = 141,
     .moves = {38, 89, 317, 207},
     .hpEV = 110,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("TAUROS"),
     .friendship = 255
    },
    {
     .species = 143,
     .heldItem = 139,
     .moves = {38, 89, 104, 156},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x21,
     .nickname = _("SNORLAX"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("KADEN"),
   .facilityClass = 100,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x28, (0xd << 9) | 0x20, (0xd << 9) | 0x2a, (0x11 << 9) | 0x0, (0x8 << 9) | 0xb, (0x7 << 9) | 0x3b},
   .speechWin = {(0x5 << 9) | 0x28, (0x7 << 9) | 0x3b, (0xd << 9) | 0x2a, (0x11 << 9) | 0x0, (0x3 << 9) | 0x5, (0x8 << 9) | 0x38},
   .speechLose = {(0x6 << 9) | 0x9, (0x6 << 9) | 0x4, (0x5 << 9) | 0x1, (0x9 << 9) | 0x39, (0x5 << 9) | 0x1, (0x3 << 9) | 0x30},
   .speechAfter = {(0xd << 9) | 0x2a, (0x11 << 9) | 0x0, (0x8 << 9) | 0x14, (0x1 << 9) | 0xf, (0x5 << 9) | 0x14, (0x3 << 9) | 0x5},
   .mons = {
    {
     .species = 170,
     .heldItem = 208,
     .moves = {85, 86, 109, 182},
     .hpEV = 100,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("CHINCHOU"),
     .friendship = 255
    },
    {
     .species = 147,
     .heldItem = 142,
     .moves = {352, 86, 225, 182},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("DRATINI"),
     .friendship = 255
    },
    {
     .species = 79,
     .heldItem = 135,
     .moves = {352, 281, 50, 182},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x96,
     .nickname = _("SLOWPOKE"),
     .friendship = 255
    },
    {
     .species = 129,
     .heldItem = 179,
     .moves = {150, 175, 33, 0},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 23 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x17,
     .nickname = _("MAGIKARP"),
     .friendship = 255
    },
    {
     .species = 119,
     .heldItem = 133,
     .moves = {32, 224, 48, 97},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 23 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x17,
     .nickname = _("SEAKING"),
     .friendship = 255
    },
    {
     .species = 73,
     .heldItem = 196,
     .moves = {243, 48, 182, 92},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x96,
     .nickname = _("TENTACRUEL"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("EMANUEL"),
   .facilityClass = 122,
   .textColor = 1,
   .speechBefore = {(0x6 << 9) | 0xf, (0x6 << 9) | 0x3, (0x8 << 9) | 0xf, (0x5 << 9) | 0x2, (0xa << 9) | 0x11, (0x6 << 9) | 0x3},
   .speechWin = {(0x5 << 9) | 0x1, (0x9 << 9) | 0x39, (0x5 << 9) | 0x1, (0x8 << 9) | 0x1c, (0xf << 9) | 0x29, (0x6 << 9) | 0x4},
   .speechLose = {(0x5 << 9) | 0x2, (0x7 << 9) | 0x2d, (0x8 << 9) | 0xf, (0x8 << 9) | 0x20, (0x11 << 9) | 0x13, (0x1 << 9) | 0xb},
   .speechAfter = {(0x5 << 9) | 0x29, (0x4 << 9) | 0xb, (0xf << 9) | 0x14, (0x5 << 9) | 0x26, (0x5 << 9) | 0x5, (0x5 << 9) | 0x0},
   .mons = {
    {
     .species = 134,
     .heldItem = 219,
     .moves = {57, 58, 213, 44},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("VAPOREON"),
     .friendship = 255
    },
    {
     .species = 196,
     .heldItem = 134,
     .moves = {94, 44, 115, 156},
     .hpEV = 110,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("ESPEON"),
     .friendship = 255
    },
    {
     .species = 242,
     .heldItem = 200,
     .moves = {352, 107, 86, 182},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x05,
     .nickname = _("BLISSEY"),
     .friendship = 255
    },
    {
     .species = 121,
     .heldItem = 141,
     .moves = {57, 58, 105, 94},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 20 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x14,
     .nickname = _("STARMIE"),
     .friendship = 255
    },
    {
     .species = 53,
     .heldItem = 187,
     .moves = {163, 207, 244, 252},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 130,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 125,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0D,
     .nickname = _("PERSIAN"),
     .friendship = 255
    },
    {
     .species = 184,
     .heldItem = 183,
     .moves = {57, 227, 213, 91},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x00,
     .nickname = _("AZUMARILL"),
     .friendship = 255
    },
   }
  },
 },
 .checksum = 0x0001554b
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Single_3 = {
 .id = 25,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 12,
 .trainers = {
     {
   .name = _("JARRETT"),
   .facilityClass = 108,
   .textColor = 2,
   .speechBefore = {(0x8 << 9) | 0xd, (0x8 << 9) | 0x1e, (0x8 << 9) | 0x21, ((0x13 << 9) | 153), (0xc << 9) | 0x21, (0x6 << 9) | 0x0},
   .speechWin = {(0x4 << 9) | 0x9, (0x8 << 9) | 0x2b, (0x5 << 9) | 0x5, (0x3 << 9) | 0x2e, (0xc << 9) | 0x21, (0x5 << 9) | 0x21},
   .speechLose = {(0x9 << 9) | 0x32, ((0x12 << 9) | 120), (0x8 << 9) | 0x23, (0x6 << 9) | 0x0, (0x5 << 9) | 0x6, (0x7 << 9) | 0x2a},
   .speechAfter = {(0x9 << 9) | 0x36, (0x8 << 9) | 0x2f, (0xc << 9) | 0x21, (0x5 << 9) | 0x4a, (0x7 << 9) | 0x36, (0x6 << 9) | 0x3},
   .mons = {
    {
     .species = 101,
     .heldItem = 196,
     .moves = {153, 113, 103, 85},
     .hpEV = 10,
     .attackEV = 150,
     .defenseEV = 100,
     .speedEV = 150,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x0D,
     .nickname = _("ELECTRODE"),
     .friendship = 255
    },
    {
     .species = 100,
     .heldItem = 179,
     .moves = {153, 148, 104, 87},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x0D,
     .nickname = _("VOLTORB"),
     .friendship = 255
    },
    {
     .species = 110,
     .heldItem = 170,
     .moves = {153, 188, 194, 85},
     .hpEV = 0,
     .attackEV = 200,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("WEEZING"),
     .friendship = 255
    },
    {
     .species = 76,
     .heldItem = 219,
     .moves = {153, 38, 89, 317},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 150,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x7F,
     .nickname = _("GOLEM"),
     .friendship = 255
    },
    {
     .species = 102,
     .heldItem = 183,
     .moves = {153, 78, 95, 202},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("EXEGGCUTE"),
     .friendship = 255
    },
    {
     .species = 205,
     .heldItem = 200,
     .moves = {153, 202, 91, 182},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x84,
     .nickname = _("FORRETRESS"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00015b6a
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Mixed_3 = {
 .id = 26,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 13,
 .trainers = {
     {
   .name = _("OWEN"),
   .facilityClass = 95,
   .textColor = 2,
   .speechBefore = {(0x4 << 9) | 0x4, ((0x13 << 9) | 86), (0x8 << 9) | 0x17, ((0x13 << 9) | 35), (0x5 << 9) | 0x14, (0x6 << 9) | 0x0},
   .speechWin = {(0x3 << 9) | 0x35, (0x5 << 9) | 0x28, ((0x13 << 9) | 217), (0x8 << 9) | 0x34, ((0x13 << 9) | 86), (0x6 << 9) | 0x0},
   .speechLose = {((0x13 << 9) | 35), ((0x12 << 9) | 20), (0x2 << 9) | 0x39, ((0x13 << 9) | 18), (0x10 << 9) | 0x7, (0x7 << 9) | 0x17},
   .speechAfter = {((0x13 << 9) | 18), (0x10 << 9) | 0x7, 0xFFFF, 0xFFFF, (0x10 << 9) | 0x7, ((0x13 << 9) | 18)},
   .mons = {
    {
     .species = 82,
     .heldItem = 200,
     .moves = {182, 192, 92, 48},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 125,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 130,
     .otId = 10 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x0A,
     .nickname = _("MAGNETON"),
     .friendship = 255
    },
    {
     .species = 25,
     .heldItem = 202,
     .moves = {86, 85, 182, 104},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 150,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 105,
     .otId = 15 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("PIKACHU"),
     .friendship = 255
    },
    {
     .species = 135,
     .heldItem = 179,
     .moves = {86, 85, 104, 92},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x37,
     .nickname = _("JOLTEON"),
     .friendship = 255
    },
    {
     .species = 242,
     .heldItem = 141,
     .moves = {86, 59, 352, 156},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x05,
     .nickname = _("BLISSEY"),
     .friendship = 255
    },
    {
     .species = 233,
     .heldItem = 170,
     .moves = {86, 192, 94, 105},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 125,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 130,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x05,
     .nickname = _("PORYGON2"),
     .friendship = 255
    },
    {
     .species = 137,
     .heldItem = 221,
     .moves = {86, 192, 104, 182},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 5 | (0 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x05,
     .nickname = _("PORYGON"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x000160ec
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Mixed_2 = {
 .id = 27,
 .floorIdx = 8,
 .challengeType = 0,
 .prize = 1,
 .trainers = {
     {
   .name = _("LORENZO"),
   .facilityClass = 106,
   .textColor = 1,
   .speechBefore = {(0xf << 9) | 0xf, (0x3 << 9) | 0x1e, (0x8 << 9) | 0xb, (0xe << 9) | 0x1a, (0xd << 9) | 0x12, (0x6 << 9) | 0x0},
   .speechWin = {(0x4 << 9) | 0x1d, (0x2 << 9) | 0x2f, (0x8 << 9) | 0x16, (0xe << 9) | 0x19, (0x5 << 9) | 0x28, (0x3 << 9) | 0x1e},
   .speechLose = {(0x4 << 9) | 0x4, (0x6 << 9) | 0x0, ((0x12 << 9) | 134), (0x6 << 9) | 0x0, (0x6 << 9) | 0x4, (0xf << 9) | 0x22},
   .speechAfter = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0xb << 9) | 0x1e, (0x7 << 9) | 0xd, ((0x12 << 9) | 134), (0x11 << 9) | 0x9},
   .mons = {
    {
     .species = 122,
     .heldItem = 183,
     .moves = {85, 86, 113, 115},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("MR. MIME"),
     .friendship = 255
    },
    {
     .species = 97,
     .heldItem = 170,
     .moves = {9, 7, 8, 94},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 200,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x8C,
     .nickname = _("HYPNO"),
     .friendship = 255
    },
    {
     .species = 65,
     .heldItem = 186,
     .moves = {9, 7, 8, 94},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 150,
     .spAttackEV = 155,
     .spDefenseEV = 50,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("ALAKAZAM"),
     .friendship = 255
    },
    {
     .species = 94,
     .heldItem = 200,
     .moves = {85, 247, 95, 92},
     .hpEV = 0,
     .attackEV = 200,
     .defenseEV = 0,
     .speedEV = 100,
     .spAttackEV = 55,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x88,
     .nickname = _("GENGAR"),
     .friendship = 255
    },
    {
     .species = 203,
     .heldItem = 141,
     .moves = {85, 242, 34, 156},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 155,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 1,
     .personality = 0x03,
     .nickname = _("GIRAFARIG"),
     .friendship = 255
    },
    {
     .species = 121,
     .heldItem = 172,
     .moves = {85, 57, 105, 58},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 55,
     .speedEV = 250,
     .spAttackEV = 150,
     .spDefenseEV = 55,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("STARMIE"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x0001624b
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_Unused2 = {
 .id = 28,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 11,
 .trainers = {
  {
   .name = _("NIA & CARL"),
   .facilityClass = 127,
   .textColor = 4,
   .speechBefore = {(0x4 << 9) | 0x2, (0x5 << 9) | 0x28, (0xc << 9) | 0x18, (0x9 << 9) | 0x41, (0xd << 9) | 0x27, (0x3 << 9) | 0x16},
   .speechWin = {(0x7 << 9) | 0x1d, (0x7 << 9) | 0xd, (0xc << 9) | 0x18, (0x11 << 9) | 0xb, (0x7 << 9) | 0x35, (0x3 << 9) | 0x1e},
   .speechLose = {(0x5 << 9) | 0x28, (0x7 << 9) | 0x2a, (0x3 << 9) | 0x16, (0x8 << 9) | 0x10, ((0x13 << 9) | 251), (0x6 << 9) | 0x3},
   .speechAfter = {(0x5 << 9) | 0x28, (0x3 << 9) | 0x36, (0x3 << 9) | 0x16, (0x8 << 9) | 0x10, (0x10 << 9) | 0x1f, (0x6 << 9) | 0x4},
   .mons = {
    {
     .species = 89,
     .heldItem = 186,
     .moves = {85, 188, 247, 34},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x07,
     .nickname = _("MUK"),
     .friendship = 255
    },
    {
     .species = 94,
     .heldItem = 171,
     .moves = {85, 109, 94, 153},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 155,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x15,
     .nickname = _("GENGAR"),
     .friendship = 255
    },
    {
     .species = 65,
     .heldItem = 169,
     .moves = {9, 94, 105, 115},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("ALAKAZAM"),
     .friendship = 255
    },
    {
     .species = 135,
     .heldItem = 179,
     .moves = {85, 175, 86, 104},
     .hpEV = 0,
     .attackEV = 50,
     .defenseEV = 100,
     .speedEV = 160,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x05,
     .nickname = _("JOLTEON"),
     .friendship = 255
    },
    {
     .species = 101,
     .heldItem = 168,
     .moves = {85, 153, 243, 113},
     .hpEV = 0,
     .attackEV = 55,
     .defenseEV = 0,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("ELECTRODE"),
     .friendship = 255
    },
    {
     .species = 26,
     .heldItem = 170,
     .moves = {85, 68, 179, 113},
     .hpEV = 0,
     .attackEV = 55,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("RAICHU"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("NIA & CARL"),
   .facilityClass = 127,
   .textColor = 4,
   .speechBefore = {(0x11 << 9) | 0x13, (0xd << 9) | 0x12, (0xd << 9) | 0x2a, (0xc << 9) | 0xe, (0xe << 9) | 0x17, (0x6 << 9) | 0x0},
   .speechWin = {(0xf << 9) | 0x17, (0x7 << 9) | 0xd, (0x3 << 9) | 0x1e, (0x8 << 9) | 0x34, (0x5 << 9) | 0x40, (0xc << 9) | 0xe},
   .speechLose = {(0x6 << 9) | 0x38, (0x6 << 9) | 0x0, ((0x12 << 9) | 85), (0x2 << 9) | 0x42, (0xc << 9) | 0xe, (0xe << 9) | 0x17},
   .speechAfter = {(0x3 << 9) | 0x1, (0x8 << 9) | 0x2c, (0xb << 9) | 0x11, (0x6 << 9) | 0x0, (0x6 << 9) | 0x24, (0x6 << 9) | 0x4},
   .mons = {
    {
     .species = 115,
     .heldItem = 170,
     .moves = {247, 179, 203, 252},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 105,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 150,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("KANGASKHAN"),
     .friendship = 255
    },
    {
     .species = 128,
     .heldItem = 141,
     .moves = {38, 317, 57, 156},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("TAUROS"),
     .friendship = 255
    },
    {
     .species = 241,
     .heldItem = 170,
     .moves = {34, 247, 208, 317},
     .hpEV = 0,
     .attackEV = 155,
     .defenseEV = 50,
     .speedEV = 250,
     .spAttackEV = 0,
     .spDefenseEV = 55,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("MILTANK"),
     .friendship = 255
    },
    {
     .species = 112,
     .heldItem = 186,
     .moves = {85, 224, 32, 317},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x80,
     .nickname = _("RHYDON"),
     .friendship = 255
    },
    {
     .species = 149,
     .heldItem = 198,
     .moves = {59, 57, 200, 53},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 0,
     .personality = 0x91,
     .nickname = _("DRAGONITE"),
     .friendship = 255
    },
    {
     .species = 131,
     .heldItem = 219,
     .moves = {85, 59, 57, 32},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 31,
     .attackIV = 31,
     .defenseIV = 31,
     .speedIV = 31,
     .spAttackIV = 31,
     .spDefenseIV = 31,
     .abilityNum = 1,
     .personality = 0x91,
     .nickname = _("LAPRAS"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00016360
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_7 = {
 .id = 29,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 3,
 .trainers = {
  {
   .name = _("AXE & REN"),
   .facilityClass = 130,
   .textColor = 2,
   .speechBefore = {(0x5 << 9) | 0x31, (0xa << 9) | 0x8, (0x8 << 9) | 0x2f, (0x1 << 9) | 0xf, (0x7 << 9) | 0x34, (0xa << 9) | 0x1e},
   .speechWin = {(0x7 << 9) | 0x1d, (0xf << 9) | 0x14, (0x5 << 9) | 0x13, (0x5 << 9) | 0x29, (0xa << 9) | 0x1e, (0x6 << 9) | 0x0},
   .speechLose = {(0x5 << 9) | 0x1, (0x3 << 9) | 0xa, (0x8 << 9) | 0x37, (0xf << 9) | 0xf, ((0x12 << 9) | 329), (0x6 << 9) | 0x4},
   .speechAfter = {(0xf << 9) | 0xf, ((0x12 << 9) | 329), (0xa << 9) | 0x4, (0x5 << 9) | 0x14, (0x7 << 9) | 0x9, (0x10 << 9) | 0x1a},
   .mons = {
    {
     .species = 171,
     .heldItem = 179,
     .moves = {240, 57, 87, 58},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("LANTURN"),
     .friendship = 255
    },
    {
     .species = 226,
     .heldItem = 171,
     .moves = {240, 57, 109, 58},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 155,
     .spAttackEV = 100,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x14,
     .nickname = _("MANTINE"),
     .friendship = 255
    },
    {
     .species = 87,
     .heldItem = 200,
     .moves = {240, 57, 329, 59},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 55,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("DEWGONG"),
     .friendship = 255
    },
    {
     .species = 91,
     .heldItem = 187,
     .moves = {240, 57, 58, 63},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("CLOYSTER"),
     .friendship = 255
    },
    {
     .species = 73,
     .heldItem = 183,
     .moves = {240, 57, 202, 188},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 100,
     .speedEV = 100,
     .spAttackEV = 255,
     .spDefenseEV = 55,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("TENTACRUEL"),
     .friendship = 255
    },
    {
     .species = 130,
     .heldItem = 168,
     .moves = {240, 57, 349, 216},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("GYARADOS"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("AXE & REN"),
   .facilityClass = 130,
   .textColor = 2,
   .speechBefore = {(0x5 << 9) | 0x40, (0x2 << 9) | 0x2c, (0xf << 9) | 0x28, (0x5 << 9) | 0x14, (0x7 << 9) | 0x9, (0xa << 9) | 0x1e},
   .speechWin = {(0x5 << 9) | 0x1, (0x3 << 9) | 0x7, (0x7 << 9) | 0xa, (0x5 << 9) | 0x29, (0x8 << 9) | 0x22, (0xa << 9) | 0x0},
   .speechLose = {(0x5 << 9) | 0x29, (0x10 << 9) | 0x3, (0x8 << 9) | 0x2b, (0x7 << 9) | 0x39, (0xa << 9) | 0x0, (0xb << 9) | 0x29},
   .speechAfter = {(0x5 << 9) | 0xf, (0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x7 << 9) | 0x26, (0xa << 9) | 0x0, (0xb << 9) | 0x11},
   .mons = {
    {
     .species = 125,
     .heldItem = 198,
     .moves = {87, 94, 238, 113},
     .hpEV = 0,
     .attackEV = 155,
     .defenseEV = 155,
     .speedEV = 100,
     .spAttackEV = 100,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x40,
     .nickname = _("ELECTABUZZ"),
     .friendship = 255
    },
    {
     .species = 82,
     .heldItem = 171,
     .moves = {87, 49, 319, 115},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x0A,
     .nickname = _("MAGNETON"),
     .friendship = 255
    },
    {
     .species = 137,
     .heldItem = 200,
     .moves = {87, 94, 59, 182},
     .hpEV = 255,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("PORYGON"),
     .friendship = 255
    },
    {
     .species = 148,
     .heldItem = 219,
     .moves = {87, 57, 59, 200},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 50,
     .speedEV = 155,
     .spAttackEV = 255,
     .spDefenseEV = 50,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("DRAGONAIR"),
     .friendship = 255
    },
    {
     .species = 53,
     .heldItem = 219,
     .moves = {87, 252, 352, 216},
     .hpEV = 0,
     .attackEV = 155,
     .defenseEV = 0,
     .speedEV = 200,
     .spAttackEV = 155,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0B,
     .nickname = _("PERSIAN"),
     .friendship = 255
    },
    {
     .species = 121,
     .heldItem = 169,
     .moves = {87, 57, 105, 115},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 95,
     .speedEV = 255,
     .spAttackEV = 100,
     .spDefenseEV = 60,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x05,
     .nickname = _("STARMIE"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00015272
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Double_Unused3 = {
 .id = 30,
 .floorIdx = 8,
 .challengeType = 1,
 .prize = 5,
 .trainers = {
  {
   .name = _("KATI & GEB"),
   .facilityClass = 128,
   .textColor = 2,
   .speechBefore = {(0x4 << 9) | 0x6, (0x8 << 9) | 0x2f, (0x5 << 9) | 0x40, (0x10 << 9) | 0x21, ((0x13 << 9) | 86), ((0x12 << 9) | 201)},
   .speechWin = {(0x6 << 9) | 0x39, (0x6 << 9) | 0x39, (0x5 << 9) | 0x40, (0x10 << 9) | 0x21, (0x6 << 9) | 0x39, (0xc << 9) | 0x29},
   .speechLose = {(0x5 << 9) | 0x1, (0xa << 9) | 0xf, (0x8 << 9) | 0x2f, (0x3 << 9) | 0x31, (0x5 << 9) | 0x28, ((0x13 << 9) | 218)},
   .speechAfter = {(0x5 << 9) | 0x6, (0x7 << 9) | 0x1e, (0x7 << 9) | 0x13, (0x5 << 9) | 0x21, (0x6 << 9) | 0xb, (0x6 << 9) | 0x0},
   .mons = {
    {
     .species = 180,
     .heldItem = 200,
     .moves = {213, 182, 85, 115},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x84,
     .nickname = _("FLAAFFY"),
     .friendship = 255
    },
    {
     .species = 195,
     .heldItem = 183,
     .moves = {213, 57, 133, 59},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x93,
     .nickname = _("QUAGSIRE"),
     .friendship = 255
    },
    {
     .species = 25,
     .heldItem = 170,
     .moves = {213, 179, 85, 231},
     .hpEV = 0,
     .attackEV = 155,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("PIKACHU"),
     .friendship = 255
    },
    {
     .species = 125,
     .heldItem = 168,
     .moves = {213, 68, 8, 34},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 150,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 105,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x46,
     .nickname = _("ELECTABUZZ"),
     .friendship = 255
    },
    {
     .species = 176,
     .heldItem = 187,
     .moves = {213, 59, 246, 352},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x2D,
     .nickname = _("TOGETIC"),
     .friendship = 255
    },
    {
     .species = 55,
     .heldItem = 198,
     .moves = {213, 57, 91, 238},
     .hpEV = 0,
     .attackEV = 155,
     .defenseEV = 50,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 50,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x80,
     .nickname = _("GOLDUCK"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("KATI & GEB"),
   .facilityClass = 128,
   .textColor = 2,
   .speechBefore = {(0x5 << 9) | 0x29, (0x2 << 9) | 0x53, (0x5 << 9) | 0x6, (0x2 << 9) | 0x5c, (0x10 << 9) | 0x21, (0x2 << 9) | 0x28},
   .speechWin = {(0x8 << 9) | 0x17, (0xe << 9) | 0x19, (0x5 << 9) | 0x40, (0x10 << 9) | 0x21, (0xd << 9) | 0x23, (0x6 << 9) | 0x0},
   .speechLose = {(0x5 << 9) | 0x1d, (0x6 << 9) | 0x19, (0xa << 9) | 0x4, (0x2 << 9) | 0x63, (0x8 << 9) | 0x39, (0x6 << 9) | 0x0},
   .speechAfter = {(0x5 << 9) | 0x2, (0x8 << 9) | 0x1e, (0xe << 9) | 0x13, (0x8 << 9) | 0x2f, (0xb << 9) | 0x3c, (0x6 << 9) | 0x3},
   .mons = {
    {
     .species = 172,
     .heldItem = 196,
     .moves = {213, 182, 186, 179},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x03,
     .nickname = _("PICHU"),
     .friendship = 255
    },
    {
     .species = 239,
     .heldItem = 179,
     .moves = {213, 182, 104, 264},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 130,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 125,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("ELEKID"),
     .friendship = 255
    },
    {
     .species = 175,
     .heldItem = 196,
     .moves = {213, 182, 281, 352},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x0F,
     .nickname = _("TOGEPI"),
     .friendship = 255
    },
    {
     .species = 54,
     .heldItem = 179,
     .moves = {213, 182, 91, 291},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("PSYDUCK"),
     .friendship = 255
    },
    {
     .species = 179,
     .heldItem = 179,
     .moves = {213, 182, 113, 85},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("MAREEP"),
     .friendship = 255
    },
    {
     .species = 194,
     .heldItem = 196,
     .moves = {213, 182, 57, 281},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 10,
     .attackIV = 10,
     .defenseIV = 10,
     .speedIV = 10,
     .spAttackIV = 10,
     .spDefenseIV = 10,
     .abilityNum = 1,
     .personality = 0x07,
     .nickname = _("WOOPER"),
     .friendship = 255
    },
   }
  },
  {.name = _(""), .textColor = 1, .speechBefore = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechWin = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechLose = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .speechAfter = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF}, .mons = {{.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}, {.hpIV = 0, .attackIV = 0, .defenseIV = 0, .speedIV = 0, .spAttackIV = 0, .spDefenseIV = 0, .nickname = _("$$$$$$$$$$")}}},
 },
 .checksum = 0x00015966
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_6 = {
 .id = 31,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 7,
 .trainers = {
  {
   .name = _("BEN"),
   .facilityClass = 107,
   .textColor = 1,
   .speechBefore = {(0x6 << 9) | 0x39, (0x8 << 9) | 0xd, ((0x12 << 9) | 47), (0x8 << 9) | 0x27, (0x2 << 9) | 0x39, (0x3 << 9) | 0x1e},
   .speechWin = {(0x2 << 9) | 0x31, (0x8 << 9) | 0xb, (0x2 << 9) | 0x39, (0x4 << 9) | 0x1, (0x8 << 9) | 0x29, (0x8 << 9) | 0xb},
   .speechLose = {(0x2 << 9) | 0x39, (0x8 << 9) | 0x27, (0x5 << 9) | 0x28, (0xc << 9) | 0x18, (0xc << 9) | 0x1b, (0x5 << 9) | 0x29},
   .speechAfter = {(0x2 << 9) | 0x39, (0x6 << 9) | 0x0, (0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0xa << 9) | 0x31, (0x3 << 9) | 0x1e},
   .mons = {
    {
     .species = 101,
     .heldItem = 168,
     .moves = {85, 243, 153, 86},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 55,
     .speedEV = 255,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x14,
     .nickname = _("ELECTRODE"),
     .friendship = 255
    },
    {
     .species = 125,
     .heldItem = 186,
     .moves = {85, 7, 94, 8},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 155,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0F,
     .nickname = _("ELECTABUZZ"),
     .friendship = 255
    },
    {
     .species = 171,
     .heldItem = 186,
     .moves = {85, 38, 58, 56},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 125,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 130,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x8E,
     .nickname = _("LANTURN"),
     .friendship = 255
    },
    {
     .species = 82,
     .heldItem = 168,
     .moves = {192, 63, 199, 48},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 55,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x14,
     .nickname = _("MAGNETON"),
     .friendship = 255
    },
    {
     .species = 26,
     .heldItem = 170,
     .moves = {38, 25, 179, 34},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 80,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 75,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x8A,
     .nickname = _("RAICHU"),
     .friendship = 255
    },
    {
     .species = 181,
     .heldItem = 219,
     .moves = {85, 25, 68, 34},
     .hpEV = 0,
     .attackEV = 200,
     .defenseEV = 150,
     .speedEV = 0,
     .spAttackEV = 10,
     .spDefenseEV = 150,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("AMPHAROS"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("CAMDEN"),
   .facilityClass = 99,
   .textColor = 1,
   .speechBefore = {(0x6 << 9) | 0x39, (0x8 << 9) | 0xd, ((0x12 << 9) | 47), (0x8 << 9) | 0x27, (0x2 << 9) | 0x39, (0x3 << 9) | 0x1e},
   .speechWin = {(0x8 << 9) | 0x20, ((0x12 << 9) | 85), (0x8 << 9) | 0xb, (0x2 << 9) | 0x39, (0x8 << 9) | 0x39, (0x6 << 9) | 0x0},
   .speechLose = {(0x2 << 9) | 0x39, (0x6 << 9) | 0x0, (0x5 << 9) | 0x31, (0x8 << 9) | 0x27, (0x11 << 9) | 0x1b, (0x1 << 9) | 0x9},
   .speechAfter = {(0x2 << 9) | 0x39, (0x6 << 9) | 0x0, (0x5 << 9) | 0x31, (0x8 << 9) | 0x20, (0xd << 9) | 0x1b, (0x6 << 9) | 0x0},
   .mons = {
    {
     .species = 210,
     .heldItem = 186,
     .moves = {85, 242, 89, 317},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 55,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("GRANBULL"),
     .friendship = 255
    },
    {
     .species = 53,
     .heldItem = 198,
     .moves = {85, 352, 95, 163},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 55,
     .speedEV = 255,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("PERSIAN"),
     .friendship = 255
    },
    {
     .species = 108,
     .heldItem = 200,
     .moves = {182, 57, 89, 247},
     .hpEV = 200,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 55,
     .spDefenseEV = 0,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("LICKITUNG"),
     .friendship = 255
    },
    {
     .species = 20,
     .heldItem = 170,
     .moves = {85, 158, 162, 179},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 100,
     .speedEV = 50,
     .spAttackEV = 0,
     .spDefenseEV = 105,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x94,
     .nickname = _("RATICATE"),
     .friendship = 255
    },
    {
     .species = 57,
     .heldItem = 198,
     .moves = {85, 238, 89, 317},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 130,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 125,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("PRIMEAPE"),
     .friendship = 255
    },
    {
     .species = 115,
     .heldItem = 141,
     .moves = {85, 57, 306, 156},
     .hpEV = 0,
     .attackEV = 100,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("KANGASKHAN"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("ZACKERY"),
   .facilityClass = 113,
   .textColor = 1,
   .speechBefore = {(0x6 << 9) | 0x39, (0x8 << 9) | 0xd, ((0x12 << 9) | 47), (0x8 << 9) | 0x27, (0x2 << 9) | 0x39, (0x3 << 9) | 0x1e},
   .speechWin = {((0x13 << 9) | 84), (0x8 << 9) | 0xb, (0x2 << 9) | 0x39, (0x5 << 9) | 0x2, (0xb << 9) | 0x20, (0x6 << 9) | 0x3},
   .speechLose = {(0x2 << 9) | 0x39, (0x6 << 9) | 0x0, ((0x13 << 9) | 148), ((0x13 << 9) | 148), ((0x13 << 9) | 148), (0x6 << 9) | 0x1},
   .speechAfter = {(0x8 << 9) | 0x2a, (0xa << 9) | 0xb, (0xe << 9) | 0x1a, (0x6 << 9) | 0x0, ((0x12 << 9) | 209), ((0x12 << 9) | 209)},
   .mons = {
    {
     .species = 110,
     .heldItem = 186,
     .moves = {85, 188, 53, 247},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 0,
     .speedEV = 0,
     .spAttackEV = 155,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("WEEZING"),
     .friendship = 255
    },
    {
     .species = 89,
     .heldItem = 200,
     .moves = {85, 188, 202, 174},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 150,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 105,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 1,
     .personality = 0x84,
     .nickname = _("MUK"),
     .friendship = 255
    },
    {
     .species = 94,
     .heldItem = 171,
     .moves = {85, 95, 138, 261},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 250,
     .spAttackEV = 155,
     .spDefenseEV = 105,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("GENGAR"),
     .friendship = 255
    },
    {
     .species = 200,
     .heldItem = 170,
     .moves = {94, 288, 109, 194},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 0,
     .speedEV = 150,
     .spAttackEV = 105,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x0A,
     .nickname = _("MISDREAVUS"),
     .friendship = 255
    },
    {
     .species = 169,
     .heldItem = 179,
     .moves = {188, 109, 202, 92},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 110,
     .spAttackEV = 0,
     .spDefenseEV = 200,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x87,
     .nickname = _("CROBAT"),
     .friendship = 255
    },
    {
     .species = 93,
     .heldItem = 170,
     .moves = {194, 95, 109, 92},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 20,
     .attackIV = 20,
     .defenseIV = 20,
     .speedIV = 20,
     .spAttackIV = 20,
     .spDefenseIV = 20,
     .abilityNum = 0,
     .personality = 0x91,
     .nickname = _("HAUNTER"),
     .friendship = 255
    },
   }
  },
 },
 .checksum = 0x00014f49
};

static const struct TrainerTowerFloor sTrainerTowerFloor_Knockout_5 = {
 .id = 32,
 .floorIdx = 8,
 .challengeType = 2,
 .prize = 14,
 .trainers = {
  {
   .name = _("MAURA"),
   .facilityClass = 104,
   .textColor = 2,
   .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, (0xc << 9) | 0x9, (0x3 << 9) | 0x3c, (0x6 << 9) | 0x0, 0xFFFF},
   .speechWin = {(0xf << 9) | 0x22, (0xf << 9) | 0x18, (0x5 << 9) | 0x1, (0x3 << 9) | 0x3c, (0x8 << 9) | 0x34, (0x6 << 9) | 0x3},
   .speechLose = {(0x5 << 9) | 0x29, (0x4 << 9) | 0x1d, (0x3 << 9) | 0x3c, (0x5 << 9) | 0x31, (0x7 << 9) | 0x13, (0x7 << 9) | 0x3},
   .speechAfter = {(0x4 << 9) | 0x22, (0x6 << 9) | 0x0, (0x7 << 9) | 0xd, (0x2 << 9) | 0x26, (0x8 << 9) | 0xb, (0x10 << 9) | 0x12},
   .mons = {
    {
     .species = 172,
     .heldItem = 196,
     .moves = {84, 86, 186, 182},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x05,
     .nickname = _("PICHU"),
     .friendship = 255
    },
    {
     .species = 179,
     .heldItem = 179,
     .moves = {84, 268, 182, 216},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("MAREEP"),
     .friendship = 255
    },
    {
     .species = 174,
     .heldItem = 183,
     .moves = {47, 186, 217, 182},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("IGGLYBUFF"),
     .friendship = 255
    },
    {
     .species = 173,
     .heldItem = 221,
     .moves = {47, 186, 227, 118},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("CLEFFA"),
     .friendship = 255
    },
    {
     .species = 29,
     .heldItem = 142,
     .moves = {242, 91, 260, 213},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("NIDORAN♀"),
     .friendship = 255
    },
    {
     .species = 32,
     .heldItem = 142,
     .moves = {32, 188, 260, 213},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 255,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 255,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("NIDORAN♂"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("MIKAELA"),
   .facilityClass = 90,
   .textColor = 1,
   .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0x2c, (0x7 << 9) | 0xd, (0x3 << 9) | 0x2, (0x1 << 9) | 0xb, (0xf << 9) | 0xa},
   .speechWin = {(0x9 << 9) | 0x1e, (0xb << 9) | 0xb, (0xf << 9) | 0x22, (0x5 << 9) | 0x29, (0x3 << 9) | 0x2, (0x8 << 9) | 0x36},
   .speechLose = {(0xe << 9) | 0x1c, (0xe << 9) | 0x13, (0x5 << 9) | 0x1, (0x8 << 9) | 0x0, (0x8 << 9) | 0x6, (0xa << 9) | 0x22},
   .speechAfter = {(0x5 << 9) | 0x2, ((0x13 << 9) | 255), (0x5 << 9) | 0x14, (0x7 << 9) | 0x31, (0x5 << 9) | 0x29, (0xa << 9) | 0x30},
   .mons = {
    {
     .species = 33,
     .heldItem = 186,
     .moves = {351, 32, 58, 231},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("NIDORINO"),
     .friendship = 255
    },
    {
     .species = 30,
     .heldItem = 186,
     .moves = {351, 242, 34, 68},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("NIDORINA"),
     .friendship = 255
    },
    {
     .species = 25,
     .heldItem = 202,
     .moves = {351, 86, 68, 34},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 200,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 55,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x11,
     .nickname = _("PIKACHU"),
     .friendship = 255
    },
    {
     .species = 180,
     .heldItem = 179,
     .moves = {351, 104, 69, 34},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 150,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("FLAAFFY"),
     .friendship = 255
    },
    {
     .species = 39,
     .heldItem = 186,
     .moves = {351, 247, 264, 34},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 150,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 105,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x16,
     .nickname = _("JIGGLYPUFF"),
     .friendship = 255
    },
    {
     .species = 35,
     .heldItem = 186,
     .moves = {351, 309, 236, 34},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 155,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("CLEFAIRY"),
     .friendship = 255
    },
   }
  },
  {
   .name = _("FLINT"),
   .facilityClass = 99,
   .textColor = 4,
   .speechBefore = {(0x5 << 9) | 0x29, (0x7 << 9) | 0xd, ((0x13 << 9) | 208), (0xc << 9) | 0x2c, (0x3 << 9) | 0x3c, (0x6 << 9) | 0x0},
   .speechWin = {(0x5 << 9) | 0x2a, (0x3 << 9) | 0x7, (0xf << 9) | 0xf, ((0x13 << 9) | 208), (0x3 << 9) | 0x18, (0x6 << 9) | 0x0},
   .speechLose = {(0x5 << 9) | 0x1, (0x8 << 9) | 0x15, (0x9 << 9) | 0x33, (0x7 << 9) | 0x39, (0x7 << 9) | 0x36, (0xb << 9) | 0x36},
   .speechAfter = {(0x6 << 9) | 0x10, (0x6 << 9) | 0x0, (0x5 << 9) | 0x29, (0x10 << 9) | 0xe, (0x8 << 9) | 0x2a, (0x8 << 9) | 0x28},
   .mons = {
    {
     .species = 40,
     .heldItem = 186,
     .moves = {85, 94, 352, 53},
     .hpEV = 0,
     .attackEV = 0,
     .defenseEV = 155,
     .speedEV = 0,
     .spAttackEV = 255,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0xCF,
     .nickname = _("WIGGLYTUFF"),
     .friendship = 255
    },
    {
     .species = 36,
     .heldItem = 170,
     .moves = {85, 135, 309, 38},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 100,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 150,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0xCF,
     .nickname = _("CLEFABLE"),
     .friendship = 255
    },
    {
     .species = 31,
     .heldItem = 186,
     .moves = {85, 242, 276, 57},
     .hpEV = 0,
     .attackEV = 200,
     .defenseEV = 110,
     .speedEV = 0,
     .spAttackEV = 100,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x07,
     .nickname = _("NIDOQUEEN"),
     .friendship = 255
    },
    {
     .species = 34,
     .heldItem = 186,
     .moves = {85, 63, 224, 247},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 150,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 100,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x02,
     .nickname = _("NIDOKING"),
     .friendship = 255
    },
    {
     .species = 26,
     .heldItem = 170,
     .moves = {85, 179, 231, 38},
     .hpEV = 0,
     .attackEV = 155,
     .defenseEV = 150,
     .speedEV = 100,
     .spAttackEV = 0,
     .spDefenseEV = 105,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("RAICHU"),
     .friendship = 255
    },
    {
     .species = 181,
     .heldItem = 141,
     .moves = {85, 156, 34, 231},
     .hpEV = 0,
     .attackEV = 255,
     .defenseEV = 150,
     .speedEV = 0,
     .spAttackEV = 0,
     .spDefenseEV = 105,
     .otId = 0 | (4096 << 16),
     .hpIV = 15,
     .attackIV = 15,
     .defenseIV = 15,
     .speedIV = 15,
     .spAttackIV = 15,
     .spDefenseIV = 15,
     .abilityNum = 0,
     .personality = 0x80,
     .nickname = _("AMPHAROS"),
     .friendship = 255
    },
   }
  },
 },
 .checksum = 0x00016b80
};

const struct EReaderTrainerTowerSetSubstruct gTrainerTowerLocalHeader = {
    .numFloors = 8,
    .id = 1
};

const struct TrainerTowerFloor *const gTrainerTowerFloors[4][8] = {
    [0] = {
        &sTrainerTowerFloor_Single_1,
        &sTrainerTowerFloor_Single_2,
        &sTrainerTowerFloor_Single_3,
        &sTrainerTowerFloor_Single_4,
        &sTrainerTowerFloor_Single_5,
        &sTrainerTowerFloor_Single_6,
        &sTrainerTowerFloor_Single_7,
        &sTrainerTowerFloor_Single_8
    },
    [1] = {
        &sTrainerTowerFloor_Double_1,
        &sTrainerTowerFloor_Double_2,
        &sTrainerTowerFloor_Double_3,
        &sTrainerTowerFloor_Double_4,
        &sTrainerTowerFloor_Double_5,
        &sTrainerTowerFloor_Double_6,
        &sTrainerTowerFloor_Double_7,
        &sTrainerTowerFloor_Double_8
    },
    [2] = {
        &sTrainerTowerFloor_Knockout_1,
        &sTrainerTowerFloor_Knockout_2,
        &sTrainerTowerFloor_Knockout_3,
        &sTrainerTowerFloor_Knockout_4,
        &sTrainerTowerFloor_Knockout_5,
        &sTrainerTowerFloor_Knockout_6,
        &sTrainerTowerFloor_Knockout_7,
        &sTrainerTowerFloor_Knockout_8
    },
    [3] = {
        &sTrainerTowerFloor_Mixed_1,
        &sTrainerTowerFloor_Mixed_2,
        &sTrainerTowerFloor_Mixed_3,
        &sTrainerTowerFloor_Double_8,
        &sTrainerTowerFloor_Mixed_5,
        &sTrainerTowerFloor_Knockout_8,
        &sTrainerTowerFloor_Double_3,
        &sTrainerTowerFloor_Knockout_2
    }
};
