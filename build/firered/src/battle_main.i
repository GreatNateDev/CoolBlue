# 0 "src/battle_main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/battle_main.c"
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
# 2 "src/battle_main.c" 2
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
# 3 "src/battle_main.c" 2
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
extern const u8 *const gAbilityDescriptionPointers[80];
extern const u8 gAbilityNames[80][12 + 1];

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
# 4 "src/battle_main.c" 2
# 1 "include/battle_anim.h" 1



# 1 "include/battle.h" 1
# 5 "include/battle_anim.h" 2
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
# 6 "include/battle_anim.h" 2
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
# 7 "include/battle_anim.h" 2
# 1 "include/constants/battle_anim.h" 1
# 8 "include/battle_anim.h" 2

enum
{
    BG_ANIM_SCREEN_SIZE,
    BG_ANIM_AREA_OVERFLOW_MODE,
    BG_ANIM_MOSAIC,
    BG_ANIM_CHAR_BASE_BLOCK,
    BG_ANIM_PRIORITY,
    BG_ANIM_PALETTES_MODE,
    BG_ANIM_SCREEN_BASE_BLOCK
};

enum
{
    BATTLER_COORD_X,
    BATTLER_COORD_Y,
    BATTLER_COORD_X_2,
    BATTLER_COORD_Y_PIC_OFFSET,
    BATTLER_COORD_Y_PIC_OFFSET_DEFAULT,
};

enum
{
    BATTLER_COORD_ATTR_HEIGHT,
    BATTLER_COORD_ATTR_WIDTH,
    BATTLER_COORD_ATTR_TOP,
    BATTLER_COORD_ATTR_BOTTOM,
    BATTLER_COORD_ATTR_LEFT,
    BATTLER_COORD_ATTR_RIGHT,
    BATTLER_COORD_ATTR_RAW_BOTTOM,
};
# 50 "include/battle_anim.h"
struct BattleAnimBgData
{
    u8 *bgTiles;
    u16 *bgTilemap;
    u8 paletteId;
    u8 bgId;
    u16 tilesOffset;
    u16 unused;
};

struct BattleAnimBackground
{
    const u32 *image;
    const u32 *palette;
    const u32 *tilemap;
};
# 78 "include/battle_anim.h"
extern void (*gAnimScriptCallback)(void);
extern bool8 gAnimScriptActive;
extern u8 gAnimVisualTaskCount;
extern u8 gAnimSoundTaskCount;
extern struct DisableStruct *gAnimDisableStructPtr;
extern u16 gAnimMovePower;
extern u8 gAnimFriendship;
extern u16 gWeatherMoveAnim;
extern s16 gBattleAnimArgs[8];
extern u8 gAnimMoveTurn;
extern u8 gBattleAnimAttacker;
extern u8 gBattleAnimTarget;
extern u8 gBattlerSpriteIds[4];
extern s32 gAnimMoveDmg;
extern u16 gAnimBattlerSpecies[4];
extern u8 gAnimCustomPanning;

extern const struct OamData gOamData_AffineOff_ObjNormal_8x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x64;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_8x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_8x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x8;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x8;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x8;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x64;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_64x64;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_64x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x64;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x64;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_64x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_64x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x64;
extern const struct MonCoords gCastformFrontSpriteCoords[];
extern const struct CompressedSpriteSheet gBattleAnimPicTable[];
extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];
extern const struct SpriteTemplate gFlashingHitSplatSpriteTemplate;
extern const struct SpriteTemplate gBasicHitSplatSpriteTemplate;
extern const struct SpriteTemplate gWaterHitSplatSpriteTemplate;
extern const struct SpriteTemplate gWishStarSpriteTemplate;
extern const struct SpriteTemplate gMiniTwinklingStarSpriteTemplate;
extern const struct SpriteTemplate gThoughtBubbleSpriteTemplate;
extern const union AffineAnimCmd *const gAffineAnims_Bite[];
extern const union AffineAnimCmd *const gAffineAnims_Droplet[];
extern const union AffineAnimCmd *const gGrowingRingAffineAnimTable[];
extern const union AnimCmd *const gAnims_SmallBubblePair[];
extern const union AnimCmd *const gAnims_BasicFire[];
extern const union AnimCmd *const gAnims_WaterMudOrb[];
extern const union AnimCmd *const gAnims_WaterBubble[];
extern const union AnimCmd *const gMusicNotesAnimTable[];
extern const u8 *const gBattleAnims_StatusConditions[];
extern const u8 *const gBattleAnims_Moves[];
extern const u16 gMovesWithQuietBGM[];

void MoveBattlerSpriteToBG(u8 battlerId, u8);
void ResetBattleAnimBg(u8);
void ClearBattleAnimationVars(void);
void DoMoveAnim(u16 move);
void LaunchBattleAnimation(const u8 *const animsTable[], u16 tableId, bool8 isMoveAnim);
void DestroyAnimSprite(struct Sprite *sprite);
void DestroyAnimVisualTask(u8 taskId);
void DestroyAnimSoundTask(u8 taskId);
bool8 IsContest(void);
s8 BattleAnimAdjustPanning(s8 pan);
s8 BattleAnimAdjustPanning2(s8 pan);
s16 CalculatePanIncrement(s16 sourcePan, s16 targetPan, s16 incrementPan);
bool8 IsBattlerSpriteVisible(u8 battlerId);
s16 KeepPanInRange(s16 a, s32 oldPan);
void RelocateBattleBgPal(u16 paletteNum, u16 *dest, s32 offset, u8 largeScreen);
void SetAnimBgAttribute(u8 bgId, u8 attributeId, u8 value);
s32 GetAnimBgAttribute(u8 bgId, u8 attributeId);
void HandleIntroSlide(u8 terrain);
void BattleIntroSlideEnd(u8 taskId);
void CopyBattlerSpriteToBg(s32 bgId, u8 x, u8 y, u8 battlerPosition, u8 palno, u8 *tilesDest, u16 *tilemapDest, u16 tilesOffset);
void SetSpriteNextToMonHead(u8 battler, struct Sprite* sprite);
void TryShinyAnimation(u8 battler, struct Pokemon *mon);
u8 ItemIdToBallId(u16 itemId);
u8 AnimateBallOpenParticles(u8 x, u8 y, u8 priority, u8 subpriority, u8 ballId);
u8 LaunchBallFadeMonTask(bool8 unFadeLater, u8 battlerId, u32 arg2, u8 ballId);
void DoLoadHealthboxPalsForLevelUp(u8 *, u8 *, u8 battlerId);
void DoFreeHealthboxPalsForLevelUp(u8 batterId);
void LaunchStatusAnimation(u8 battlerId, u8 statusAnimId);
u8 GetBattlerSpriteCoord(u8 battlerId, u8 coordType);
u8 GetBattlerSpriteCoord2(u8 battlerId, u8 coordType);
u8 GetBattlerSpriteDefault_Y(u8 battlerId);
u8 GetSubstituteSpriteDefault_Y(u8 battlerId);
u8 GetGhostSpriteDefault_Y(u8 battlerId);
u8 GetBattlerYCoordWithElevation(u8 battlerId);
u8 GetAnimBattlerSpriteId(u8 animBattler);
void StoreSpriteCallbackInData6(struct Sprite *sprite, SpriteCallback callback);
void TranslateSpriteInCircle(struct Sprite *sprite);
void TranslateSpriteInGrowingCircle(struct Sprite *sprite);
void TranslateSpriteInEllipse(struct Sprite *sprite);
void WaitAnimForDuration(struct Sprite *sprite);
void ConvertPosDataToTranslateLinearData(struct Sprite *sprite);
void TranslateSpriteLinear(struct Sprite *sprite);
void TranslateSpriteLinearFixedPoint(struct Sprite *sprite);
void TranslateSpriteLinearById(struct Sprite *sprite);
void TranslateSpriteLinearByIdFixedPoint(struct Sprite *sprite);
void TranslateSpriteLinearAndFlicker(struct Sprite *sprite);
void DestroySpriteAndMatrix(struct Sprite *sprite);
void RunStoredCallbackWhenAffineAnimEnds(struct Sprite *sprite);
void RunStoredCallbackWhenAnimEnds(struct Sprite *sprite);
void DestroyAnimSpriteAndDisableBlend(struct Sprite *sprite);
void DestroyAnimVisualTaskAndDisableBlend(u8 taskId);
void SetSpriteCoordsToAnimAttackerCoords(struct Sprite *sprite);
void SetAnimSpriteInitialXOffset(struct Sprite *sprite, s16 xOffset);
void InitAnimArcTranslation(struct Sprite *sprite);
bool8 TranslateAnimHorizontalArc(struct Sprite *sprite);
bool8 TranslateAnimVerticalArc(struct Sprite *sprite);
void SetSpritePrimaryCoordsFromSecondaryCoords(struct Sprite *sprite);
void InitSpritePosToAnimTarget(struct Sprite *sprite, bool8 respectMonPicOffsets);
void InitSpritePosToAnimAttacker(struct Sprite *sprite, bool8 respectMonPicOffsets);
u8 GetBattlerSide(u8 battlerId);
u8 GetBattlerPosition(u8 battlerId);
u8 GetBattlerAtPosition(u8 position);
bool8 IsBattlerSpritePresent(u8 battlerId);
bool8 IsDoubleBattle(void);
void GetBattleAnimBg1Data(struct BattleAnimBgData *animBgData);
void GetBattleAnimBgData(struct BattleAnimBgData *animBgData, u32 bgId);
void GetBattleAnimBgDataByPriorityRank(struct BattleAnimBgData *animBgData, u8 unused);
void InitBattleAnimBg(u32 bgId);
void AnimLoadCompressedBgGfx(u32 bgId, const u32 *src, u32 tilesOffset);
void InitAnimBgTilemapBuffer(u32 bgId, const void *src);
void AnimLoadCompressedBgTilemap(u32 bgId, const u32 *src);
u8 GetBattleBgPaletteNum(void);
void ToggleBg3Mode(bool8 arg0);
void Trade_MoveSelectedMonToTarget(struct Sprite *sprite);
void InitSpriteDataForLinearTranslation(struct Sprite *sprite);
void InitAnimLinearTranslation(struct Sprite *sprite);
void StartAnimLinearTranslation(struct Sprite *sprite);
void PlayerThrowBall_StartAnimLinearTranslation(struct Sprite *sprite);
bool8 AnimTranslateLinear(struct Sprite *sprite);
void AnimTranslateLinear_WithFollowup(struct Sprite *sprite);
void InitAnimLinearTranslationWithSpeed(struct Sprite *sprite);
void InitAnimLinearTranslationWithSpeedAndPos(struct Sprite *sprite);
void InitAndRunAnimFastLinearTranslation(struct Sprite *sprite);
bool8 AnimFastTranslateLinear(struct Sprite *sprite);
void InitAnimFastLinearTranslationWithSpeed(struct Sprite *sprite);
void InitAnimFastLinearTranslationWithSpeedAndPos(struct Sprite *sprite);
void SetSpriteRotScale(u8 spriteId, s16 xScale, s16 yScale, u16 rotation);
void PrepareBattlerSpriteForRotScale(u8 spriteId, u8 objMode);
void ResetSpriteRotScale(u8 spriteId);
void SetBattlerSpriteYOffsetFromRotation(u8 spriteId);
void TrySetSpriteRotScale(struct Sprite *sprite, bool8 recalcCenterVector, s16 xScale, s16 yScale, u16 rotation);
void TryResetSpriteAffineState(struct Sprite *sprite);
u16 ArcTan2Neg(s16 a, s16 b);
void SetGreyscaleOrOriginalPalette(u16 paletteNum, bool8 restoreOriginalColor);
u32 GetBattlePalettesMask(bool8 battleBackground, bool8 attacker, bool8 target, bool8 attackerPartner, bool8 targetPartner, bool8 a6, bool8 a7);
u32 GetBattleMonSpritePalettesMask(bool8 playerLeft, bool8 playerRight, bool8 foeLeft, bool8 foeRight);
u8 GetSpritePalIdxByBattler(u8 a1);
void AnimSpriteOnMonPos(struct Sprite *sprite);
void TranslateAnimSpriteToTargetMonLocation(struct Sprite *sprite);
void AnimThrowProjectile(struct Sprite *sprite);
void AnimTravelDiagonally(struct Sprite *sprite);
s16 CloneBattlerSpriteWithBlend(u8 animBattler);
void DestroySpriteWithActiveSheet(struct Sprite *sprite);
void PrepareAffineAnimInTaskData(struct Task *task, u8 spriteId, const union AffineAnimCmd *affineAnimCmds);
bool8 RunAffineAnimFromTaskData(struct Task *task);
void SetBattlerSpriteYOffsetFromYScale(u8 spriteId);
void SetBattlerSpriteYOffsetFromOtherYScale(u8 spriteId, u8 otherSpriteId);
void StorePointerInVars(s16 *lo, s16 *hi, const void *ptr);
void *LoadPointerFromVars(s16 lo, s16 hi);
void BattleAnimHelper_SetSpriteSquashParams(struct Task *task, u8 spriteId, s16 xScale0, s16 yScale0, s16 xScale1, s16 yScale1, u16 duration);
u8 BattleAnimHelper_RunSpriteSquash(struct Task *task);
void InitPrioritiesForVisibleBattlers(void);
u8 GetBattlerSpriteSubpriority(u8 battlerId);
u8 GetBattlerSpriteBGPriority(u8 battlerId);
u8 GetBattlerSpriteBGPriorityRank(u8 battlerId);
u8 CreateAdditionalMonSpriteForMoveAnim(u16 species, bool8 isBackpic, u8 templateId, s16 x, s16 y, u8 subpriority, u32 personality, u32 trainerId, u32 battlerId, u32 ignoreDeoxys);
void DestroySpriteAndFreeResources_(struct Sprite *sprite);
s16 GetBattlerSpriteCoordAttr(u8 battlerId, u8 attr);
void SetAverageBattlerPositions(u8 battlerId, bool8 respectMonPicOffsets, s16 *x, s16 *y);
u8 CreateInvisibleSpriteCopy(s32 battlerId, u8 spriteId, s32 species);
void AnimTranslateLinearAndFlicker_Flipped(struct Sprite *sprite);
void AnimTranslateLinearAndFlicker(struct Sprite *sprite);
void AnimSpinningSparkle(struct Sprite *sprite);
void AnimWeatherBallUp(struct Sprite *sprite);
void AnimWeatherBallDown(struct Sprite *sprite);
void AnimParticleBurst(struct Sprite *);
void AnimMoveTwisterParticle(struct Sprite *);
u32 UnpackSelectedBattlePalettes(s16 selector);
void AnimTask_HorizontalShake(u8 taskId);
void DestroyAnimSpriteAfterTimer(struct Sprite *sprite);
void AnimWaterPulseRing(struct Sprite *sprite);
u8 SmokescreenImpact(s16 x, s16 y, u8 a3);
void InitStatsChangeAnimation(u8 taskId);
void StartMonScrollingBgMask(u8 taskId, s32 unused, u16 arg2, u8 battler1, u8 arg4, u8 arg5, u8 arg6, u8 arg7, const u32 *gfx, const u32 *tilemap, const u32 *palette);
# 5 "src/battle_main.c" 2
# 1 "include/battle_ai_script_commands.h" 1
# 11 "include/battle_ai_script_commands.h"
void BattleAI_HandleItemUseBeforeAISetup(void);
void BattleAI_SetupAIData(void);
u8 BattleAI_ChooseMoveOrAction(void);
void ClearBankMoveHistory(u8 bank);
void RecordAbilityBattle(u8 bank, u8 abilityId);
void ClearBankAbilityHistory(u8 bank);
void RecordItemEffectBattle(u8 bank, u8 itemEffect);
void ClearBankItemEffectHistory(u8 bank);
u8 BattleAI_ChooseMoveOrAction(void);
# 6 "src/battle_main.c" 2
# 1 "include/battle_controllers.h" 1






enum
{
    REQUEST_ALL_BATTLE,
    REQUEST_SPECIES_BATTLE,
    REQUEST_HELDITEM_BATTLE,
    REQUEST_MOVES_PP_BATTLE,
    REQUEST_MOVE1_BATTLE,
    REQUEST_MOVE2_BATTLE,
    REQUEST_MOVE3_BATTLE,
    REQUEST_MOVE4_BATTLE,
    REQUEST_PP_DATA_BATTLE,
    REQUEST_PPMOVE1_BATTLE,
    REQUEST_PPMOVE2_BATTLE,
    REQUEST_PPMOVE3_BATTLE,
    REQUEST_PPMOVE4_BATTLE,
    REQUEST_UNUSED_13_BATTLE,
    REQUEST_UNUSED_14_BATTLE,
    REQUEST_UNUSED_15_BATTLE,
    REQUEST_UNUSED_16_BATTLE,
    REQUEST_OTID_BATTLE,
    REQUEST_EXP_BATTLE,
    REQUEST_HP_EV_BATTLE,
    REQUEST_ATK_EV_BATTLE,
    REQUEST_DEF_EV_BATTLE,
    REQUEST_SPEED_EV_BATTLE,
    REQUEST_SPATK_EV_BATTLE,
    REQUEST_SPDEF_EV_BATTLE,
    REQUEST_FRIENDSHIP_BATTLE,
    REQUEST_POKERUS_BATTLE,
    REQUEST_MET_LOCATION_BATTLE,
    REQUEST_MET_LEVEL_BATTLE,
    REQUEST_MET_GAME_BATTLE,
    REQUEST_POKEBALL_BATTLE,
    REQUEST_ALL_IVS_BATTLE,
    REQUEST_HP_IV_BATTLE,
    REQUEST_ATK_IV_BATTLE,
    REQUEST_DEF_IV_BATTLE,
    REQUEST_SPEED_IV_BATTLE,
    REQUEST_SPATK_IV_BATTLE,
    REQUEST_SPDEF_IV_BATTLE,
    REQUEST_PERSONALITY_BATTLE,
    REQUEST_CHECKSUM_BATTLE,
    REQUEST_STATUS_BATTLE,
    REQUEST_LEVEL_BATTLE,
    REQUEST_HP_BATTLE,
    REQUEST_MAX_HP_BATTLE,
    REQUEST_ATK_BATTLE,
    REQUEST_DEF_BATTLE,
    REQUEST_SPEED_BATTLE,
    REQUEST_SPATK_BATTLE,
    REQUEST_SPDEF_BATTLE,
    REQUEST_COOL_BATTLE,
    REQUEST_BEAUTY_BATTLE,
    REQUEST_CUTE_BATTLE,
    REQUEST_SMART_BATTLE,
    REQUEST_TOUGH_BATTLE,
    REQUEST_SHEEN_BATTLE,
    REQUEST_COOL_RIBBON_BATTLE,
    REQUEST_BEAUTY_RIBBON_BATTLE,
    REQUEST_CUTE_RIBBON_BATTLE,
    REQUEST_SMART_RIBBON_BATTLE,
    REQUEST_TOUGH_RIBBON_BATTLE,
};



enum {
    BUFFER_A,
    BUFFER_B
};

enum {
    RESET_ACTION_MOVE_SELECTION,
    RESET_ACTION_SELECTION,
    RESET_MOVE_SELECTION,
};

enum {
    BALL_NO_SHAKES,
    BALL_1_SHAKE,
    BALL_2_SHAKES,
    BALL_3_SHAKES_FAIL,
    BALL_3_SHAKES_SUCCESS,
    BALL_TRAINER_BLOCK,
    BALL_GHOST_DODGE,
};

enum {
    LINK_STANDBY_MSG_STOP_BOUNCE,
    LINK_STANDBY_STOP_BOUNCE_ONLY,
    LINK_STANDBY_MSG_ONLY,
};
# 109 "include/battle_controllers.h"
struct UnusedControllerStruct
{
    u8 unk:7;
    u8 flag:1;
};

struct HpAndStatus
{
    u16 hp;
    u32 status;
};

struct MovePpInfo
{
    u16 moves[4];
    u8 pp[4];
    u8 ppBonuses;
};

struct ChooseMoveStruct
{
    u16 moves[4];
    u8 currentPp[4];
    u8 maxPp[4];
    u16 species;
    u8 monType1;
    u8 monType2;
};

enum
{
    CONTROLLER_GETMONDATA,
    CONTROLLER_GETRAWMONDATA,
    CONTROLLER_SETMONDATA,
    CONTROLLER_SETRAWMONDATA,
    CONTROLLER_LOADMONSPRITE,
    CONTROLLER_SWITCHINANIM,
    CONTROLLER_RETURNMONTOBALL,
    CONTROLLER_DRAWTRAINERPIC,
    CONTROLLER_TRAINERSLIDE,
    CONTROLLER_TRAINERSLIDEBACK,
    CONTROLLER_FAINTANIMATION,
    CONTROLLER_PALETTEFADE,
    CONTROLLER_SUCCESSBALLTHROWANIM,
    CONTROLLER_BALLTHROWANIM,
    CONTROLLER_PAUSE,
    CONTROLLER_MOVEANIMATION,
    CONTROLLER_PRINTSTRING,
    CONTROLLER_PRINTSTRINGPLAYERONLY,
    CONTROLLER_CHOOSEACTION,
    CONTROLLER_UNKNOWNYESNOBOX,
    CONTROLLER_CHOOSEMOVE,
    CONTROLLER_OPENBAG,
    CONTROLLER_CHOOSEPOKEMON,
    CONTROLLER_23,
    CONTROLLER_HEALTHBARUPDATE,
    CONTROLLER_EXPUPDATE,
    CONTROLLER_STATUSICONUPDATE,
    CONTROLLER_STATUSANIMATION,
    CONTROLLER_STATUSXOR,
    CONTROLLER_DATATRANSFER,
    CONTROLLER_DMA3TRANSFER,
    CONTROLLER_PLAYBGM,
    CONTROLLER_32,
    CONTROLLER_TWORETURNVALUES,
    CONTROLLER_CHOSENMONRETURNVALUE,
    CONTROLLER_ONERETURNVALUE,
    CONTROLLER_ONERETURNVALUE_DUPLICATE,
    CONTROLLER_CLEARUNKVAR,
    CONTROLLER_SETUNKVAR,
    CONTROLLER_CLEARUNKFLAG,
    CONTROLLER_TOGGLEUNKFLAG,
    CONTROLLER_HITANIMATION,
    CONTROLLER_CANTSWITCH,
    CONTROLLER_PLAYSE,
    CONTROLLER_PLAYFANFARE,
    CONTROLLER_FAINTINGCRY,
    CONTROLLER_INTROSLIDE,
    CONTROLLER_INTROTRAINERBALLTHROW,
    CONTROLLER_DRAWPARTYSTATUSSUMMARY,
    CONTROLLER_HIDEPARTYSTATUSSUMMARY,
    CONTROLLER_ENDBOUNCE,
    CONTROLLER_SPRITEINVISIBILITY,
    CONTROLLER_BATTLEANIMATION,
    CONTROLLER_LINKSTANDBYMSG,
    CONTROLLER_RESETACTIONMOVESELECTION,
    CONTROLLER_ENDLINKBATTLE,

    CONTROLLER_TERMINATOR_NOP,
    CONTROLLER_CMDS_COUNT
};

extern struct UnusedControllerStruct gUnusedControllerStruct;


void HandleLinkBattleSetup(void);
void SetUpBattleVars(void);
void InitBattleControllers(void);
void TryReceiveLinkBattleData(void);
void PrepareBufferDataTransferLink(u8 bufferId, u16 size, u8 *data);


void BtlController_EmitGetMonData(u8 bufferId, u8 requestId, u8 monToCheck);
void BtlController_EmitSetMonData(u8 bufferId, u8 requestId, u8 monToCheck, u8 bytes, void *data);
void BtlController_EmitLoadMonSprite(u8 bufferId);
void BtlController_EmitSwitchInAnim(u8 bufferId, u8 partyId, bool8 dontClearSubstituteBit);
void BtlController_EmitReturnMonToBall(u8 bufferId, bool8 skipAnim);
void BtlController_EmitDrawTrainerPic(u8 bufferId);
void BtlController_EmitTrainerSlide(u8 bufferId);
void BtlController_EmitTrainerSlideBack(u8 bufferId);
void BtlController_EmitFaintAnimation(u8 bufferId);
void BtlController_EmitBallThrowAnim(u8 bufferId, u8 caseId);
void BtlController_EmitMoveAnimation(u8 bufferId, u16 move, u8 turnOfMove, u16 movePower, s32 dmg, u8 friendship, struct DisableStruct *disableStructPtr);
void BtlController_EmitPrintString(u8 bufferId, u16 stringId);
void BtlController_EmitPrintSelectionString(u8 bufferId, u16 stringId);
void BtlController_EmitChooseAction(u8 bufferId, u8 action, u16 itemId);
void BtlController_EmitChooseMove(u8 bufferId, bool8 isDoubleBattle, bool8 NoPpNumber, struct ChooseMoveStruct *movePpData);
void BtlController_EmitChooseItem(u8 bufferId, u8 *arg1);
void BtlController_EmitChoosePokemon(u8 bufferId, u8 caseId, u8 arg2, u8 abilityId, u8 *arg4);
void BtlController_EmitHealthBarUpdate(u8 bufferId, u16 hpValue);
void BtlController_EmitExpUpdate(u8 bufferId, u8 partyId, u16 expPoints);
void BtlController_EmitStatusIconUpdate(u8 bufferId, u32 status1, u32 status2);
void BtlController_EmitStatusAnimation(u8 bufferId, bool8 status2, u32 status);
void BtlController_EmitDataTransfer(u8 bufferId, u16 size, void *data);
void BtlController_EmitTwoReturnValues(u8 bufferId, u8 arg1, u16 arg2);
void BtlController_EmitChosenMonReturnValue(u8 bufferId, u8 b, u8 *c);
void BtlController_EmitOneReturnValue(u8 bufferId, u16 arg1);
void BtlController_EmitOneReturnValue_Duplicate(u8 bufferId, u16 b);
void BtlController_EmitHitAnimation(u8 bufferId);
void BtlController_EmitCantSwitch(u8 bufferId);
void BtlController_EmitPlaySE(u8 bufferId, u16 songId);
void BtlController_EmitPlayFanfare(u8 bufferId, u16 songId);
void BtlController_EmitFaintingCry(u8 bufferId);
void BtlController_EmitIntroSlide(u8 bufferId, u8 terrainId);
void BtlController_EmitIntroTrainerBallThrow(u8 bufferId);
void BtlController_EmitDrawPartyStatusSummary(u8 bufferId, struct HpAndStatus *hpAndStatus, u8 param);
void BtlController_EmitHidePartyStatusSummary(u8 bufferId);
void BtlController_EmitEndBounceEffect(u8 bufferId);
void BtlController_EmitSpriteInvisibility(u8 bufferId, bool8 isInvisible);
void BtlController_EmitBattleAnimation(u8 bufferId, u8 animationId, u16 argument);
void BtlController_EmitLinkStandbyMsg(u8 bufferId, u8 mode);
void BtlController_EmitResetActionMoveSelection(u8 bufferId, u8 caseId);
void BtlController_EmitEndLinkBattle(u8 bufferId, u8 battleOutcome);


void BattleControllerDummy(void);
void SetControllerToPlayer(void);
void PlayerHandleGetRawMonData(void);
void SpriteCB_FreePlayerSpriteLoadMonSprite(struct Sprite *sprite);
void SetCB2ToReshowScreenAfterMenu(void);
void SetCB2ToReshowScreenAfterMenu2(void);
void Task_PlayerController_RestoreBgmAfterCry(u8 taskId);
void ActionSelectionCreateCursorAt(u8 cursorPos, u8 unused);
void ActionSelectionDestroyCursorAt(u8 cursorPos);
void InitMoveSelectionsVarsAndStrings(void);
void SetBattleEndCallbacks(void);
void MoveSelectionCreateCursorAt(u8 cursorPos, u8 arg1);
void MoveSelectionDestroyCursorAt(u8 cursorPos);
void HandleInputChooseMove(void);


void SetControllerToOpponent(void);
void OpponentBufferExecCompleted(void);


void SetControllerToSafari(void);


void SetControllerToPokedude(void);
void InitPokedudePartyAndOpponent(void);


void SetControllerToOakOrOldMan(void);
# 295 "include/battle_controllers.h"
bool8 BtlCtrl_OakOldMan_TestState2Flag(u8 mask);
void BtlCtrl_OakOldMan_SetState2Flag(u8 mask);
void PrintOakText_InflictingDamageIsKey(void);
void PrintOakText_HowDisappointing(void);
void PrintOakText_OakNoRunningFromATrainer(void);
void OakOldManHandleInputChooseMove(void);
void BtlCtrl_DrawVoiceoverMessageFrame(void);
void BtlCtrl_RemoveVoiceoverMessageFrame(void);


void SetControllerToLinkOpponent(void);


void SetControllerToLinkPartner(void);
# 7 "src/battle_main.c" 2
# 1 "include/battle_interface.h" 1




# 1 "include/battle_controllers.h" 1
# 6 "include/battle_interface.h" 2

enum
{
    HP_CURRENT,
    HP_MAX
};

enum
{
    HEALTH_BAR,
    EXP_BAR
};

enum
{
    HP_BAR_EMPTY,
    HP_BAR_RED,
    HP_BAR_YELLOW,
    HP_BAR_GREEN,
    HP_BAR_FULL,
};
# 54 "include/battle_interface.h"
enum
{
    HEALTHBOX_ALL,
    HEALTHBOX_CURRENT_HP,
    HEALTHBOX_MAX_HP,
    HEALTHBOX_LEVEL,
    HEALTHBOX_NICK,
    HEALTHBOX_HEALTH_BAR,
    HEALTHBOX_EXP_BAR,
    HEALTHBOX_UNUSED_7,
    HEALTHBOX_UNUSED_8,
    HEALTHBOX_STATUS_ICON,
    HEALTHBOX_SAFARI_ALL_TEXT,
    HEALTHBOX_SAFARI_BALLS_TEXT
};

void Task_HidePartyStatusSummary(u8 taskId);
u8 CreateBattlerHealthboxSprites(u8 battlerId);
u8 CreateSafariPlayerHealthboxSprites(void);
void SetBattleBarStruct(u8 battlerId, u8 healthboxSpriteId, s32 maxVal, s32 currVal, s32 receivedValue);
void SetHealthboxSpriteInvisible(u8 healthboxSpriteId);
void SetHealthboxSpriteVisible(u8 healthboxSpriteId);
void DestoryHealthboxSprite(u8 healthboxSpriteId);
void DummyBattleInterfaceFunc(u8 healthboxSpriteId, bool8 isDoubleBattleBankOnly);
void UpdateOamPriorityInAllHealthboxes(u8 priority);
void InitBattlerHealthboxCoords(u8 battlerId);
void UpdateHpTextInHealthbox(u8 healthboxSpriteId, s16 value, u8 maxOrCurrent);
void SwapHpBarsWithHpText(void);
u8 CreatePartyStatusSummarySprites(u8 battlerId, struct HpAndStatus *partyInfo, u8 isSwitchingMons, bool8 isBattleStart);
void UpdateHealthboxAttribute(u8 healthboxSpriteId, struct Pokemon *mon, u8 elementId);
u8 GetScaledHPFraction(s16 hp, s16 maxhp, u8 scale);
u8 GetHPBarLevel(s16 hp, s16 maxhp);
void UpdateNickInHealthbox(u8 spriteId, struct Pokemon *mon);
void TryAddPokeballIconToHealthbox(u8 spriteId, u8);
s32 MoveBattleBar(u8 battler, u8 healthboxSpriteId, u8 whichBar, u8 arg3);
# 8 "src/battle_main.c" 2
# 1 "include/battle_main.h" 1
# 9 "src/battle_main.c" 2
# 1 "include/battle_message.h" 1




# 1 "include/constants/battle_string_ids.h" 1
# 6 "include/battle_message.h" 2
# 196 "include/battle_message.h"
struct BattleMsgData
{
    u16 currentMove;
    u16 originallyUsedMove;
    u16 lastItem;
    u8 lastAbility;
    u8 scrActive;
    u8 bakScriptPartyIdx;
    u8 hpScale;
    u8 itemEffectBattler;
    u8 moveType;
    u8 abilities[4];
    u8 textBuffs[3][0x10];
};

void BufferStringBattle(u16 stringID);
u32 BattleStringExpandPlaceholdersToDisplayedString(const u8 *src);
u32 BattleStringExpandPlaceholders(const u8 *src, u8 *dst);
void BattleHandleAddTextPrinter(const u8 *text, u8 arg1);
void SetPpNumbersPaletteInMoveSelection(void);
u8 GetCurrentPpToMaxPpState(u8 currentPp, u8 maxPp);
void BattlePutTextOnWindow(const u8 *text, u8 windowId_flags);
bool8 BattleStringShouldBeColored(u16);

extern struct BattleMsgData *gBattleMsgDataPtr;



extern u8 gDisplayedStringBattle[300];
extern u8 gBattleTextBuff1[16];
extern u8 gBattleTextBuff2[16];
extern u8 gBattleTextBuff3[16];

extern const u8 *const gBattleStringsTable[];
extern const u8 *const gStatNamesTable[];
extern const u8 *const gPokeblockWasTooXStringTable[];
extern const u8 *const gRefereeStringsTable[];
extern const u8 *const gStatNamesTable2[];

extern const u16 gMissStringIds[];
extern const u16 gTrappingMoves[];

extern const u8 gText_Sleep[];
extern const u8 gText_Poison[];
extern const u8 gText_Burn[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];

extern const u8 gText_BattleTowerBan_Space[];
extern const u8 gText_BattleTowerBan_Newline1[];
extern const u8 gText_BattleTowerBan_Newline2[];
extern const u8 gText_BattleTowerBan_Is1[];
extern const u8 gText_BattleTowerBan_Is2[];

extern const u8 gText_SafariBalls[];
extern const u8 gText_HighlightRed_Left[];

extern const u8 gText_Win[];
extern const u8 gText_Loss[];
extern const u8 gText_Draw[];
# 10 "src/battle_main.c" 2
# 1 "include/battle_scripts.h" 1





extern const u8 BattleScript_HitFromCritCalc[];
extern const u8 BattleScript_MoveEnd[];
extern const u8 BattleScript_MakeMoveMissed[];
extern const u8 BattleScript_PrintMoveMissed[];
extern const u8 BattleScript_MoveMissedPause[];
extern const u8 BattleScript_MoveMissed[];
extern const u8 BattleScript_ButItFailed[];
extern const u8 BattleScript_StatUp[];
extern const u8 BattleScript_StatDown[];
extern const u8 BattleScript_AlreadyAtFullHp[];
extern const u8 BattleScript_PresentHealTarget[];
extern const u8 BattleScript_MoveUsedMustRecharge[];
extern const u8 BattleScript_FaintAttacker[];
extern const u8 BattleScript_FaintTarget[];
extern const u8 BattleScript_GiveExp[];
extern const u8 BattleScript_HandleFaintedMon[];
extern const u8 BattleScript_LocalTrainerBattleWon[];
extern const u8 BattleScript_LocalTwoTrainersDefeated[];
extern const u8 BattleScript_LocalBattleWonLoseTexts[];
extern const u8 BattleScript_LocalBattleWonReward[];
extern const u8 BattleScript_PayDayMoneyAndPickUpItems[];
extern const u8 BattleScript_LocalBattleLost[];
extern const u8 BattleScript_LocalBattleLostPrintWhiteOut[];
extern const u8 BattleScript_LocalBattleLostEnd[];
extern const u8 BattleScript_CheckDomeDrew[];
extern const u8 BattleScript_LinkBattleWonOrLost[];
extern const u8 BattleScript_BattleTowerTrainerBattleWon[];
extern const u8 BattleScript_SmokeBallEscape[];
extern const u8 BattleScript_RanAwayUsingMonAbility[];
extern const u8 BattleScript_GotAwaySafely[];
extern const u8 BattleScript_WildMonFled[];
extern const u8 BattleScript_PrintCantRunFromTrainer[];
extern const u8 BattleScript_PrintFailedToRunString[];
extern const u8 BattleScript_PrintCantEscapeFromBattle[];
extern const u8 BattleScript_PrintFullBox[];
extern const u8 BattleScript_ActionSwitch[];
extern const u8 BattleScript_Pausex20[];
extern const u8 BattleScript_LevelUp[];
extern const u8 BattleScript_RainContinuesOrEnds[];
extern const u8 BattleScript_DamagingWeatherContinues[];
extern const u8 BattleScript_SandStormHailEnds[];
extern const u8 BattleScript_SunlightContinues[];
extern const u8 BattleScript_SunlightFaded[];
extern const u8 BattleScript_OverworldWeatherStarts[];
extern const u8 BattleScript_SideStatusWoreOff[];
extern const u8 BattleScript_SafeguardProtected[];
extern const u8 BattleScript_SafeguardEnds[];
extern const u8 BattleScript_LeechSeedTurnDrain[];
extern const u8 BattleScript_BideStoringEnergy[];
extern const u8 BattleScript_BideAttack[];
extern const u8 BattleScript_BideNoEnergyToAttack[];
extern const u8 BattleScript_SuccessForceOut[];
extern const u8 BattleScript_MistProtected[];
extern const u8 BattleScript_RageIsBuilding[];
extern const u8 BattleScript_MoveUsedIsDisabled[];
extern const u8 BattleScript_SelectingDisabledMove[];
extern const u8 BattleScript_DisabledNoMore[];
extern const u8 BattleScript_SelectingDisabledMoveInPalace[];
extern const u8 BattleScript_SelectingUnusableMoveInPalace[];
extern const u8 BattleScript_EncoredNoMore[];
extern const u8 BattleScript_DestinyBondTakesLife[];
extern const u8 BattleScript_SpikesOnAttacker[];
extern const u8 BattleScript_SpikesOnTarget[];
extern const u8 BattleScript_SpikesOngBank1[];
extern const u8 BattleScript_PerishSongTakesLife[];
extern const u8 BattleScript_PerishSongCountGoesDown[];
extern const u8 BattleScript_AllStatsUp[];
extern const u8 BattleScript_RapidSpinAway[];
extern const u8 BattleScript_WrapFree[];
extern const u8 BattleScript_LeechSeedFree[];
extern const u8 BattleScript_SpikesFree[];
extern const u8 BattleScript_MonTookFutureAttack[];
extern const u8 BattleScript_NoMovesLeft[];
extern const u8 BattleScript_SelectingMoveWithNoPP[];
extern const u8 BattleScript_NoPPForMove[];
extern const u8 BattleScript_SelectingTormentedMove[];
extern const u8 BattleScript_MoveUsedIsTormented[];
extern const u8 BattleScript_SelectingTormentedMoveInPalace[];
extern const u8 BattleScript_SelectingNotAllowedMoveTaunt[];
extern const u8 BattleScript_MoveUsedIsTaunted[];
extern const u8 BattleScript_SelectingNotAllowedMoveTauntInPalace[];
extern const u8 BattleScript_WishComesTrue[];
extern const u8 BattleScript_IngrainTurnHeal[];
extern const u8 BattleScript_AtkDefDown[];
extern const u8 BattleScript_KnockedOff[];
extern const u8 BattleScript_MoveUsedIsImprisoned[];
extern const u8 BattleScript_SelectingImprisonedMove[];
extern const u8 BattleScript_SelectingImprisonedMoveInPalace[];
extern const u8 BattleScript_GrudgeTakesPp[];
extern const u8 BattleScript_MagicCoatBounce[];
extern const u8 BattleScript_SnatchedMove[];
extern const u8 BattleScript_EnduredMsg[];
extern const u8 BattleScript_OneHitKOMsg[];
extern const u8 BattleScript_SAtkDown2[];
extern const u8 BattleScript_FocusPunchSetUp[];
extern const u8 BattleScript_MoveUsedIsAsleep[];
extern const u8 BattleScript_MoveUsedWokeUp[];
extern const u8 BattleScript_MonWokeUpInUproar[];
extern const u8 BattleScript_PoisonTurnDmg[];
extern const u8 BattleScript_BurnTurnDmg[];
extern const u8 BattleScript_MoveUsedIsFrozen[];
extern const u8 BattleScript_MoveUsedUnfroze[];
extern const u8 BattleScript_DefrostedViaFireMove[];
extern const u8 BattleScript_MoveUsedIsParalyzed[];
extern const u8 BattleScript_MoveUsedFlinched[];
extern const u8 BattleScript_PrintUproarOverTurns[];
extern const u8 BattleScript_ThrashConfuses[];
extern const u8 BattleScript_MoveUsedIsConfused[];
extern const u8 BattleScript_MoveUsedIsConfusedNoMore[];
extern const u8 BattleScript_PrintPayDayMoneyString[];
extern const u8 BattleScript_WrapTurnDmg[];
extern const u8 BattleScript_WrapEnds[];
extern const u8 BattleScript_MoveUsedIsInLove[];
extern const u8 BattleScript_MoveUsedIsInLoveCantAttack[];
extern const u8 BattleScript_MoveUsedIsParalyzedCantAttack[];
extern const u8 BattleScript_NightmareTurnDmg[];
extern const u8 BattleScript_CurseTurnDmg[];
extern const u8 BattleScript_TargetPRLZHeal[];
extern const u8 BattleScript_MoveEffectSleep[];
extern const u8 BattleScript_YawnMakesAsleep[];
extern const u8 BattleScript_MoveEffectPoison[];
extern const u8 BattleScript_MoveEffectBurn[];
extern const u8 BattleScript_MoveEffectFreeze[];
extern const u8 BattleScript_MoveEffectParalysis[];
extern const u8 BattleScript_MoveEffectUproar[];
extern const u8 BattleScript_MoveEffectToxic[];
extern const u8 BattleScript_MoveEffectPayDay[];
extern const u8 BattleScript_MoveEffectWrap[];
extern const u8 BattleScript_MoveEffectConfusion[];
extern const u8 BattleScript_MoveEffectRecoil33[];
extern const u8 BattleScript_DoRecoil33[];
extern const u8 BattleScript_Recoil33End[];
extern const u8 BattleScript_ItemSteal[];
extern const u8 BattleScript_DrizzleActivates[];
extern const u8 BattleScript_SpeedBoostActivates[];
extern const u8 BattleScript_TraceActivates[];
extern const u8 BattleScript_RainDishActivates[];
extern const u8 BattleScript_SandstreamActivates[];
extern const u8 BattleScript_ShedSkinActivates[];
extern const u8 BattleScript_WeatherFormChanges[];
extern const u8 BattleScript_WeatherFormChangesLoop[];
extern const u8 BattleScript_CastformChange[];
extern const u8 BattleScript_DroughtActivates[];
extern const u8 BattleScript_TookAttack[];
extern const u8 BattleScript_SturdyPreventsOHKO[];
extern const u8 BattleScript_DampStopsExplosion[];
extern const u8 BattleScript_MoveHPDrain_PPLoss[];
extern const u8 BattleScript_MoveHPDrain[];
extern const u8 BattleScript_MonMadeMoveUseless_PPLoss[];
extern const u8 BattleScript_MonMadeMoveUseless[];
extern const u8 BattleScript_FlashFireBoost_PPLoss[];
extern const u8 BattleScript_FlashFireBoost[];
extern const u8 BattleScript_AbilityNoStatLoss[];
extern const u8 BattleScript_BRNPrevention[];
extern const u8 BattleScript_PRLZPrevention[];
extern const u8 BattleScript_PSNPrevention[];
extern const u8 BattleScript_ObliviousPreventsAttraction[];
extern const u8 BattleScript_FlinchPrevention[];
extern const u8 BattleScript_OwnTempoPrevents[];
extern const u8 BattleScript_SoundproofProtected[];
extern const u8 BattleScript_AbilityNoSpecificStatLoss[];
extern const u8 BattleScript_StickyHoldActivates[];
extern const u8 BattleScript_ColorChangeActivates[];
extern const u8 BattleScript_RoughSkinActivates[];
extern const u8 BattleScript_CuteCharmActivates[];
extern const u8 BattleScript_ApplySecondaryEffect[];
extern const u8 BattleScript_SynchronizeActivates[];
extern const u8 BattleScript_NoItemSteal[];
extern const u8 BattleScript_AbilityCuredStatus[];
extern const u8 BattleScript_IgnoresAndUsesRandomMove[];
extern const u8 BattleScript_MoveUsedLoafingAround[];
extern const u8 BattleScript_IgnoresAndFallsAsleep[];
extern const u8 BattleScript_SubstituteFade[];
extern const u8 BattleScript_BerryCurePrlzEnd2[];
extern const u8 BattleScript_BerryCureParRet[];
extern const u8 BattleScript_BerryCurePsnEnd2[];
extern const u8 BattleScript_BerryCurePsnRet[];
extern const u8 BattleScript_BerryCureBrnEnd2[];
extern const u8 BattleScript_BerryCureBrnRet[];
extern const u8 BattleScript_BerryCureFrzEnd2[];
extern const u8 BattleScript_BerryCureFrzRet[];
extern const u8 BattleScript_BerryCureSlpEnd2[];
extern const u8 BattleScript_BerryCureSlpRet[];
extern const u8 BattleScript_BerryCureConfusionEnd2[];
extern const u8 BattleScript_BerryCureConfusionRet[];
extern const u8 BattleScript_BerryCureChosenStatusEnd2[];
extern const u8 BattleScript_BerryCureChosenStatusRet[];
extern const u8 BattleScript_WhiteHerbEnd2[];
extern const u8 BattleScript_WhiteHerbRet[];
extern const u8 BattleScript_ItemHealHP_RemoveItem[];
extern const u8 BattleScript_BerryPPHealEnd2[];
extern const u8 BattleScript_ItemHealHP_End2[];
extern const u8 BattleScript_ItemHealHP_Ret[];
extern const u8 BattleScript_SelectingNotAllowedMoveChoiceItem[];
extern const u8 BattleScript_FocusBandActivates[];
extern const u8 BattleScript_BerryConfuseHealEnd2[];
extern const u8 BattleScript_BerryStatRaiseEnd2[];
extern const u8 BattleScript_BerryFocusEnergyEnd2[];
extern const u8 BattleScript_ActionSelectionItemsCantBeUsed[];
extern const u8 BattleScript_AskIfWantsToForfeitMatch[];
extern const u8 BattleScript_PrintPlayerForfeited[];
extern const u8 BattleScript_PrintPlayerForfeitedLinkBattle[];
extern const u8 BattleScript_BallThrow[];
extern const u8 BattleScript_BallThrowByWally[];
extern const u8 BattleScript_SafariBallThrow[];
extern const u8 BattleScript_SuccessBallThrow[];
extern const u8 BattleScript_WallyBallThrow[];
extern const u8 BattleScript_ShakeBallThrow[];
extern const u8 BattleScript_TrainerBallBlock[];
extern const u8 BattleScript_RunByUsingItem[];
extern const u8 BattleScript_ActionWatchesCarefully[];
extern const u8 BattleScript_ActionGetNear[];
extern const u8 BattleScript_ActionThrowPokeblock[];
extern const u8 BattleScript_GhostGetOutGetOut[];
extern const u8 BattleScript_TooScaredToMove[];
extern const u8 BattleScript_IntimidateActivates[];
extern const u8 BattleScript_IntimidateActivatesEnd3[];
extern const u8 BattleScript_IgnoresWhileAsleep[];
extern const u8 BattleScript_IgnoresAndHitsItself[];
extern const u8 BattleScript_MoveEffectRecoil[];
extern const u8 BattleScript_FlushMessageBox[];
extern const u8 BattleScript_SpikesOnFaintedBattler[];
extern const u8 BattleScript_GhostBallDodge[];
extern const u8 BattleScript_OldMan_Pokedude_CaughtMessage[];
extern const u8 BattleScript_SilphScopeUnveiled[];
extern const u8 BattleScript_BattleTowerTrainerBattleWon[];
extern const u8 BattleScript_OldBoomerActivates[];
extern const u8 *const gBattleScriptsForMoveEffects[];
extern const u8 *const gBattlescriptsForBallThrow[];
extern const u8 *const gBattlescriptsForRunningByItem[];
extern const u8 *const gBattlescriptsForUsingItem[];
extern const u8 *const gBattlescriptsForSafariActions[];
# 11 "src/battle_main.c" 2
# 1 "include/battle_setup.h" 1





void StartWildBattle(void);
void StartRoamerBattle(void);
void StartOldManTutorialBattle(void);
void StartScriptedWildBattle(void);
void StartMarowakBattle(void);
void StartSouthernIslandBattle(void);
void StartLegendaryBattle(void);
void StartGroudonKyogreBattle(void);
void StartRegiBattle(void);
u8 BattleSetup_GetTerrainId(void);
u8 BattleSetup_GetBattleTowerBattleTransition(void);
const u8 *BattleSetup_ConfigureTrainerBattle(const u8 *data);
void ConfigureAndSetUpOneTrainerBattle(u8 trainerEventObjId, const u8 *trainerScript);
bool32 GetTrainerFlagFromScriptPointer(const u8 *data);
void SetUpTrainerMovement(void);
u8 GetTrainerBattleMode(void);
u16 GetRivalBattleFlags(void);
void SetBattledTrainerFlag(void);
bool8 HasTrainerBeenFought(u16 trainerId);
void SetTrainerFlag(u16 trainerId);
void ClearTrainerFlag(u16 trainerId);
void StartTrainerBattle(void);
void StartRematchBattle(void);
void ShowTrainerIntroSpeech(void);
const u8 *BattleSetup_GetScriptAddrAfterBattle(void);
const u8 *BattleSetup_GetTrainerPostBattleScript(void);
void ShowTrainerCantBattleSpeech(void);
void PlayTrainerEncounterMusic(void);
const u8 *GetTrainerALoseText(void);
const u8 *GetTrainerWonSpeech(void);
# 12 "src/battle_main.c" 2
# 1 "include/berry.h" 1





enum
{
    BERRY_FIRMNESS_UNKNOWN,
    BERRY_FIRMNESS_VERY_SOFT,
    BERRY_FIRMNESS_SOFT,
    BERRY_FIRMNESS_HARD,
    BERRY_FIRMNESS_VERY_HARD,
    BERRY_FIRMNESS_SUPER_HARD,
};

enum
{
    FLAVOR_SPICY,
    FLAVOR_DRY,
    FLAVOR_SWEET,
    FLAVOR_BITTER,
    FLAVOR_SOUR,
    FLAVOR_COUNT
};



void ClearEnigmaBerries(void);
void SetEnigmaBerry(u8 *src);
bool32 IsEnigmaBerryValid(void);
const struct Berry *GetBerryInfo(u8 berry);
u8 ItemIdToBerryType(u16 item);
void GetBerryNameByBerryType(u8 berry, u8 *string);

extern const struct Berry gBerries[];

struct BerryCrushStats {
    u8 difficulty;
    u16 powder;
};

extern const struct BerryCrushStats gBerryCrush_BerryData[];
# 13 "src/battle_main.c" 2
# 1 "include/data.h" 1
# 14 "src/battle_main.c" 2
# 1 "include/decompress.h" 1







extern u8 gDecompressionBuffer[0x4000];

void LZDecompressWram(const void *src, void *dest);
void LZDecompressVram(const void *src, void *dest);

u16 LoadCompressedSpriteSheet(const struct CompressedSpriteSheet *src);
void LoadCompressedSpriteSheetOverrideBuffer(const struct CompressedSpriteSheet *src, void *buffer);
bool8 LoadCompressedSpriteSheetUsingHeap(const struct CompressedSpriteSheet* src);

void LoadCompressedSpritePalette(const struct CompressedSpritePalette *src);
void LoadCompressedSpritePaletteOverrideBuffer(const struct CompressedSpritePalette *a, void *buffer);
bool8 LoadCompressedSpritePaletteUsingHeap(const struct CompressedSpritePalette *src);

void DecompressPicFromTable(const struct CompressedSpriteSheet *src, void *buffer, s32 species);
void DecompressPicFromTable_2(const struct CompressedSpriteSheet *src, void *buffer, s32 species);
void DecompressPicFromTable_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *buffer, s32 species);

void HandleLoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);
void HandleLoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);

void LoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_2(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);

u32 GetDecompressedDataSize(const u8 *ptr);
# 15 "src/battle_main.c" 2
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
# 16 "src/battle_main.c" 2
# 1 "include/evolution_scene.h" 1





extern void (*gCB2_AfterEvolution)(void);

void BeginEvolutionScene(struct Pokemon* mon, u16 speciesToEvolve, u8, u8 partyId);
void EvolutionScene(struct Pokemon* mon, u16 speciesToEvolve, u8, u8 partyId);
void TradeEvolutionScene(struct Pokemon* mon, u16 speciesToEvolve, u8 preEvoSpriteId, u8 partyId);
void IsMovingBackgroundTaskRunning(void);
# 17 "src/battle_main.c" 2
# 1 "include/graphics.h" 1





extern const u32 gBallGfx_Poke[];
extern const u32 gBallPal_Poke[];
extern const u32 gBallGfx_Great[];
extern const u32 gBallPal_Great[];
extern const u32 gBallGfx_Safari[];
extern const u32 gBallPal_Safari[];
extern const u32 gBallGfx_Ultra[];
extern const u32 gBallPal_Ultra[];
extern const u32 gBallGfx_Master[];
extern const u32 gBallPal_Master[];
extern const u32 gBallGfx_Net[];
extern const u32 gBallPal_Net[];
extern const u32 gBallGfx_Dive[];
extern const u32 gBallPal_Dive[];
extern const u32 gBallGfx_Nest[];
extern const u32 gBallPal_Nest[];
extern const u32 gBallGfx_Repeat[];
extern const u32 gBallPal_Repeat[];
extern const u32 gBallGfx_Timer[];
extern const u32 gBallPal_Timer[];
extern const u32 gBallGfx_Luxury[];
extern const u32 gBallPal_Luxury[];
extern const u32 gBallGfx_Premier[];
extern const u32 gBallPal_Premier[];
extern const u32 gOpenPokeballGfx[];


extern const u32 gMonFrontPic_Bulbasaur[];
extern const u32 gMonPalette_Bulbasaur[];
extern const u32 gMonBackPic_Bulbasaur[];
extern const u32 gMonShinyPalette_Bulbasaur[];
extern const u8 gMonIcon_Bulbasaur[];
extern const u8 gMonFootprint_Bulbasaur[];
extern const u32 gMonFrontPic_Ivysaur[];
extern const u32 gMonPalette_Ivysaur[];
extern const u32 gMonBackPic_Ivysaur[];
extern const u32 gMonShinyPalette_Ivysaur[];
extern const u8 gMonIcon_Ivysaur[];
extern const u8 gMonFootprint_Ivysaur[];
extern const u32 gMonFrontPic_Venusaur[];
extern const u32 gMonPalette_Venusaur[];
extern const u32 gMonBackPic_Venusaur[];
extern const u32 gMonShinyPalette_Venusaur[];
extern const u8 gMonIcon_Venusaur[];
extern const u8 gMonFootprint_Venusaur[];
extern const u32 gMonFrontPic_Charmander[];
extern const u32 gMonPalette_Charmander[];
extern const u32 gMonBackPic_Charmander[];
extern const u32 gMonShinyPalette_Charmander[];
extern const u8 gMonIcon_Charmander[];
extern const u8 gMonFootprint_Charmander[];
extern const u32 gMonFrontPic_Charmeleon[];
extern const u32 gMonPalette_Charmeleon[];
extern const u32 gMonBackPic_Charmeleon[];
extern const u32 gMonShinyPalette_Charmeleon[];
extern const u8 gMonIcon_Charmeleon[];
extern const u8 gMonFootprint_Charmeleon[];
extern const u32 gMonFrontPic_Charizard[];
extern const u32 gMonPalette_Charizard[];
extern const u32 gMonBackPic_Charizard[];
extern const u32 gMonShinyPalette_Charizard[];
extern const u8 gMonIcon_Charizard[];
extern const u8 gMonFootprint_Charizard[];
extern const u32 gMonFrontPic_Squirtle[];
extern const u32 gMonPalette_Squirtle[];
extern const u32 gMonBackPic_Squirtle[];
extern const u32 gMonShinyPalette_Squirtle[];
extern const u8 gMonIcon_Squirtle[];
extern const u8 gMonFootprint_Squirtle[];
extern const u32 gMonFrontPic_Wartortle[];
extern const u32 gMonPalette_Wartortle[];
extern const u32 gMonBackPic_Wartortle[];
extern const u32 gMonShinyPalette_Wartortle[];
extern const u8 gMonIcon_Wartortle[];
extern const u8 gMonFootprint_Wartortle[];
extern const u32 gMonFrontPic_Blastoise[];
extern const u32 gMonPalette_Blastoise[];
extern const u32 gMonBackPic_Blastoise[];
extern const u32 gMonShinyPalette_Blastoise[];
extern const u8 gMonIcon_Blastoise[];
extern const u8 gMonFootprint_Blastoise[];
extern const u32 gMonFrontPic_Caterpie[];
extern const u32 gMonPalette_Caterpie[];
extern const u32 gMonBackPic_Caterpie[];
extern const u32 gMonShinyPalette_Caterpie[];
extern const u8 gMonIcon_Caterpie[];
extern const u8 gMonFootprint_Caterpie[];
extern const u32 gMonFrontPic_Metapod[];
extern const u32 gMonPalette_Metapod[];
extern const u32 gMonBackPic_Metapod[];
extern const u32 gMonShinyPalette_Metapod[];
extern const u8 gMonIcon_Metapod[];
extern const u8 gMonFootprint_Metapod[];
extern const u32 gMonFrontPic_Butterfree[];
extern const u32 gMonPalette_Butterfree[];
extern const u32 gMonBackPic_Butterfree[];
extern const u32 gMonShinyPalette_Butterfree[];
extern const u8 gMonIcon_Butterfree[];
extern const u8 gMonFootprint_Butterfree[];
extern const u32 gMonFrontPic_Weedle[];
extern const u32 gMonPalette_Weedle[];
extern const u32 gMonBackPic_Weedle[];
extern const u32 gMonShinyPalette_Weedle[];
extern const u8 gMonIcon_Weedle[];
extern const u8 gMonFootprint_Weedle[];
extern const u32 gMonFrontPic_Kakuna[];
extern const u32 gMonPalette_Kakuna[];
extern const u32 gMonBackPic_Kakuna[];
extern const u32 gMonShinyPalette_Kakuna[];
extern const u8 gMonIcon_Kakuna[];
extern const u8 gMonFootprint_Kakuna[];
extern const u32 gMonFrontPic_Beedrill[];
extern const u32 gMonPalette_Beedrill[];
extern const u32 gMonBackPic_Beedrill[];
extern const u32 gMonShinyPalette_Beedrill[];
extern const u8 gMonIcon_Beedrill[];
extern const u8 gMonFootprint_Beedrill[];
extern const u32 gMonFrontPic_Pidgey[];
extern const u32 gMonPalette_Pidgey[];
extern const u32 gMonBackPic_Pidgey[];
extern const u32 gMonShinyPalette_Pidgey[];
extern const u8 gMonIcon_Pidgey[];
extern const u8 gMonFootprint_Pidgey[];
extern const u32 gMonFrontPic_Pidgeotto[];
extern const u32 gMonPalette_Pidgeotto[];
extern const u32 gMonBackPic_Pidgeotto[];
extern const u32 gMonShinyPalette_Pidgeotto[];
extern const u8 gMonIcon_Pidgeotto[];
extern const u8 gMonFootprint_Pidgeotto[];
extern const u32 gMonFrontPic_Pidgeot[];
extern const u32 gMonPalette_Pidgeot[];
extern const u32 gMonBackPic_Pidgeot[];
extern const u32 gMonShinyPalette_Pidgeot[];
extern const u8 gMonIcon_Pidgeot[];
extern const u8 gMonFootprint_Pidgeot[];
extern const u32 gMonFrontPic_Rattata[];
extern const u32 gMonPalette_Rattata[];
extern const u32 gMonBackPic_Rattata[];
extern const u32 gMonShinyPalette_Rattata[];
extern const u8 gMonIcon_Rattata[];
extern const u8 gMonFootprint_Rattata[];
extern const u32 gMonFrontPic_Raticate[];
extern const u32 gMonPalette_Raticate[];
extern const u32 gMonBackPic_Raticate[];
extern const u32 gMonShinyPalette_Raticate[];
extern const u8 gMonIcon_Raticate[];
extern const u8 gMonFootprint_Raticate[];
extern const u32 gMonFrontPic_Spearow[];
extern const u32 gMonPalette_Spearow[];
extern const u32 gMonBackPic_Spearow[];
extern const u32 gMonShinyPalette_Spearow[];
extern const u8 gMonIcon_Spearow[];
extern const u8 gMonFootprint_Spearow[];
extern const u32 gMonFrontPic_Fearow[];
extern const u32 gMonPalette_Fearow[];
extern const u32 gMonBackPic_Fearow[];
extern const u32 gMonShinyPalette_Fearow[];
extern const u8 gMonIcon_Fearow[];
extern const u8 gMonFootprint_Fearow[];
extern const u32 gMonFrontPic_Ekans[];
extern const u32 gMonPalette_Ekans[];
extern const u32 gMonBackPic_Ekans[];
extern const u32 gMonShinyPalette_Ekans[];
extern const u8 gMonIcon_Ekans[];
extern const u8 gMonFootprint_Ekans[];
extern const u32 gMonFrontPic_Arbok[];
extern const u32 gMonPalette_Arbok[];
extern const u32 gMonBackPic_Arbok[];
extern const u32 gMonShinyPalette_Arbok[];
extern const u8 gMonIcon_Arbok[];
extern const u8 gMonFootprint_Arbok[];
extern const u32 gMonFrontPic_Pikachu[];
extern const u32 gMonPalette_Pikachu[];
extern const u32 gMonBackPic_Pikachu[];
extern const u32 gMonShinyPalette_Pikachu[];
extern const u8 gMonIcon_Pikachu[];
extern const u8 gMonFootprint_Pikachu[];
extern const u32 gMonFrontPic_Raichu[];
extern const u32 gMonPalette_Raichu[];
extern const u32 gMonBackPic_Raichu[];
extern const u32 gMonShinyPalette_Raichu[];
extern const u8 gMonIcon_Raichu[];
extern const u8 gMonFootprint_Raichu[];
extern const u32 gMonFrontPic_Sandshrew[];
extern const u32 gMonPalette_Sandshrew[];
extern const u32 gMonBackPic_Sandshrew[];
extern const u32 gMonShinyPalette_Sandshrew[];
extern const u8 gMonIcon_Sandshrew[];
extern const u8 gMonFootprint_Sandshrew[];
extern const u32 gMonFrontPic_Sandslash[];
extern const u32 gMonPalette_Sandslash[];
extern const u32 gMonBackPic_Sandslash[];
extern const u32 gMonShinyPalette_Sandslash[];
extern const u8 gMonIcon_Sandslash[];
extern const u8 gMonFootprint_Sandslash[];
extern const u32 gMonFrontPic_NidoranF[];
extern const u32 gMonPalette_NidoranF[];
extern const u32 gMonBackPic_NidoranF[];
extern const u32 gMonShinyPalette_NidoranF[];
extern const u8 gMonIcon_NidoranF[];
extern const u8 gMonFootprint_NidoranF[];
extern const u32 gMonFrontPic_Nidorina[];
extern const u32 gMonPalette_Nidorina[];
extern const u32 gMonBackPic_Nidorina[];
extern const u32 gMonShinyPalette_Nidorina[];
extern const u8 gMonIcon_Nidorina[];
extern const u8 gMonFootprint_Nidorina[];
extern const u32 gMonFrontPic_Nidoqueen[];
extern const u32 gMonPalette_Nidoqueen[];
extern const u32 gMonBackPic_Nidoqueen[];
extern const u32 gMonShinyPalette_Nidoqueen[];
extern const u8 gMonIcon_Nidoqueen[];
extern const u8 gMonFootprint_Nidoqueen[];
extern const u32 gMonFrontPic_NidoranM[];
extern const u32 gMonPalette_NidoranM[];
extern const u32 gMonBackPic_NidoranM[];
extern const u32 gMonShinyPalette_NidoranM[];
extern const u8 gMonIcon_NidoranM[];
extern const u8 gMonFootprint_NidoranM[];
extern const u32 gMonFrontPic_Nidorino[];
extern const u32 gMonPalette_Nidorino[];
extern const u32 gMonBackPic_Nidorino[];
extern const u32 gMonShinyPalette_Nidorino[];
extern const u8 gMonIcon_Nidorino[];
extern const u8 gMonFootprint_Nidorino[];
extern const u32 gMonFrontPic_Nidoking[];
extern const u32 gMonPalette_Nidoking[];
extern const u32 gMonBackPic_Nidoking[];
extern const u32 gMonShinyPalette_Nidoking[];
extern const u8 gMonIcon_Nidoking[];
extern const u8 gMonFootprint_Nidoking[];
extern const u32 gMonFrontPic_Clefairy[];
extern const u32 gMonPalette_Clefairy[];
extern const u32 gMonBackPic_Clefairy[];
extern const u32 gMonShinyPalette_Clefairy[];
extern const u8 gMonIcon_Clefairy[];
extern const u8 gMonFootprint_Clefairy[];
extern const u32 gMonFrontPic_Clefable[];
extern const u32 gMonPalette_Clefable[];
extern const u32 gMonBackPic_Clefable[];
extern const u32 gMonShinyPalette_Clefable[];
extern const u8 gMonIcon_Clefable[];
extern const u8 gMonFootprint_Clefable[];
extern const u32 gMonFrontPic_Vulpix[];
extern const u32 gMonPalette_Vulpix[];
extern const u32 gMonBackPic_Vulpix[];
extern const u32 gMonShinyPalette_Vulpix[];
extern const u8 gMonIcon_Vulpix[];
extern const u8 gMonFootprint_Vulpix[];
extern const u32 gMonFrontPic_Ninetales[];
extern const u32 gMonPalette_Ninetales[];
extern const u32 gMonBackPic_Ninetales[];
extern const u32 gMonShinyPalette_Ninetales[];
extern const u8 gMonIcon_Ninetales[];
extern const u8 gMonFootprint_Ninetales[];
extern const u32 gMonFrontPic_Jigglypuff[];
extern const u32 gMonPalette_Jigglypuff[];
extern const u32 gMonBackPic_Jigglypuff[];
extern const u32 gMonShinyPalette_Jigglypuff[];
extern const u8 gMonIcon_Jigglypuff[];
extern const u8 gMonFootprint_Jigglypuff[];
extern const u32 gMonFrontPic_Wigglytuff[];
extern const u32 gMonPalette_Wigglytuff[];
extern const u32 gMonBackPic_Wigglytuff[];
extern const u32 gMonShinyPalette_Wigglytuff[];
extern const u8 gMonIcon_Wigglytuff[];
extern const u8 gMonFootprint_Wigglytuff[];
extern const u32 gMonFrontPic_Zubat[];
extern const u32 gMonPalette_Zubat[];
extern const u32 gMonBackPic_Zubat[];
extern const u32 gMonShinyPalette_Zubat[];
extern const u8 gMonIcon_Zubat[];
extern const u8 gMonFootprint_Zubat[];
extern const u32 gMonFrontPic_Golbat[];
extern const u32 gMonPalette_Golbat[];
extern const u32 gMonBackPic_Golbat[];
extern const u32 gMonShinyPalette_Golbat[];
extern const u8 gMonIcon_Golbat[];
extern const u8 gMonFootprint_Golbat[];
extern const u32 gMonFrontPic_Oddish[];
extern const u32 gMonPalette_Oddish[];
extern const u32 gMonBackPic_Oddish[];
extern const u32 gMonShinyPalette_Oddish[];
extern const u8 gMonIcon_Oddish[];
extern const u8 gMonFootprint_Oddish[];
extern const u32 gMonFrontPic_Gloom[];
extern const u32 gMonPalette_Gloom[];
extern const u32 gMonBackPic_Gloom[];
extern const u32 gMonShinyPalette_Gloom[];
extern const u8 gMonIcon_Gloom[];
extern const u8 gMonFootprint_Gloom[];
extern const u32 gMonFrontPic_Vileplume[];
extern const u32 gMonPalette_Vileplume[];
extern const u32 gMonBackPic_Vileplume[];
extern const u32 gMonShinyPalette_Vileplume[];
extern const u8 gMonIcon_Vileplume[];
extern const u8 gMonFootprint_Vileplume[];
extern const u32 gMonFrontPic_Paras[];
extern const u32 gMonPalette_Paras[];
extern const u32 gMonBackPic_Paras[];
extern const u32 gMonShinyPalette_Paras[];
extern const u8 gMonIcon_Paras[];
extern const u8 gMonFootprint_Paras[];
extern const u32 gMonFrontPic_Parasect[];
extern const u32 gMonPalette_Parasect[];
extern const u32 gMonBackPic_Parasect[];
extern const u32 gMonShinyPalette_Parasect[];
extern const u8 gMonIcon_Parasect[];
extern const u8 gMonFootprint_Parasect[];
extern const u32 gMonFrontPic_Venonat[];
extern const u32 gMonPalette_Venonat[];
extern const u32 gMonBackPic_Venonat[];
extern const u32 gMonShinyPalette_Venonat[];
extern const u8 gMonIcon_Venonat[];
extern const u8 gMonFootprint_Venonat[];
extern const u32 gMonFrontPic_Venomoth[];
extern const u32 gMonPalette_Venomoth[];
extern const u32 gMonBackPic_Venomoth[];
extern const u32 gMonShinyPalette_Venomoth[];
extern const u8 gMonIcon_Venomoth[];
extern const u8 gMonFootprint_Venomoth[];
extern const u32 gMonFrontPic_Diglett[];
extern const u32 gMonPalette_Diglett[];
extern const u32 gMonBackPic_Diglett[];
extern const u32 gMonShinyPalette_Diglett[];
extern const u8 gMonIcon_Diglett[];
extern const u8 gMonFootprint_Diglett[];
extern const u32 gMonFrontPic_Dugtrio[];
extern const u32 gMonPalette_Dugtrio[];
extern const u32 gMonBackPic_Dugtrio[];
extern const u32 gMonShinyPalette_Dugtrio[];
extern const u8 gMonIcon_Dugtrio[];
extern const u8 gMonFootprint_Dugtrio[];
extern const u32 gMonFrontPic_Meowth[];
extern const u32 gMonPalette_Meowth[];
extern const u32 gMonBackPic_Meowth[];
extern const u32 gMonShinyPalette_Meowth[];
extern const u8 gMonIcon_Meowth[];
extern const u8 gMonFootprint_Meowth[];
extern const u32 gMonFrontPic_Persian[];
extern const u32 gMonPalette_Persian[];
extern const u32 gMonBackPic_Persian[];
extern const u32 gMonShinyPalette_Persian[];
extern const u8 gMonIcon_Persian[];
extern const u8 gMonFootprint_Persian[];
extern const u32 gMonFrontPic_Psyduck[];
extern const u32 gMonPalette_Psyduck[];
extern const u32 gMonBackPic_Psyduck[];
extern const u32 gMonShinyPalette_Psyduck[];
extern const u8 gMonIcon_Psyduck[];
extern const u8 gMonFootprint_Psyduck[];
extern const u32 gMonFrontPic_Golduck[];
extern const u32 gMonPalette_Golduck[];
extern const u32 gMonBackPic_Golduck[];
extern const u32 gMonShinyPalette_Golduck[];
extern const u8 gMonIcon_Golduck[];
extern const u8 gMonFootprint_Golduck[];
extern const u32 gMonFrontPic_Mankey[];
extern const u32 gMonPalette_Mankey[];
extern const u32 gMonBackPic_Mankey[];
extern const u32 gMonShinyPalette_Mankey[];
extern const u8 gMonIcon_Mankey[];
extern const u8 gMonFootprint_Mankey[];
extern const u32 gMonFrontPic_Primeape[];
extern const u32 gMonPalette_Primeape[];
extern const u32 gMonBackPic_Primeape[];
extern const u32 gMonShinyPalette_Primeape[];
extern const u8 gMonIcon_Primeape[];
extern const u8 gMonFootprint_Primeape[];
extern const u32 gMonFrontPic_Growlithe[];
extern const u32 gMonPalette_Growlithe[];
extern const u32 gMonBackPic_Growlithe[];
extern const u32 gMonShinyPalette_Growlithe[];
extern const u8 gMonIcon_Growlithe[];
extern const u8 gMonFootprint_Growlithe[];
extern const u32 gMonFrontPic_Arcanine[];
extern const u32 gMonPalette_Arcanine[];
extern const u32 gMonBackPic_Arcanine[];
extern const u32 gMonShinyPalette_Arcanine[];
extern const u8 gMonIcon_Arcanine[];
extern const u8 gMonFootprint_Arcanine[];
extern const u32 gMonFrontPic_Poliwag[];
extern const u32 gMonPalette_Poliwag[];
extern const u32 gMonBackPic_Poliwag[];
extern const u32 gMonShinyPalette_Poliwag[];
extern const u8 gMonIcon_Poliwag[];
extern const u8 gMonFootprint_Poliwag[];
extern const u32 gMonFrontPic_Poliwhirl[];
extern const u32 gMonPalette_Poliwhirl[];
extern const u32 gMonBackPic_Poliwhirl[];
extern const u32 gMonShinyPalette_Poliwhirl[];
extern const u8 gMonIcon_Poliwhirl[];
extern const u8 gMonFootprint_Poliwhirl[];
extern const u32 gMonFrontPic_Poliwrath[];
extern const u32 gMonPalette_Poliwrath[];
extern const u32 gMonBackPic_Poliwrath[];
extern const u32 gMonShinyPalette_Poliwrath[];
extern const u8 gMonIcon_Poliwrath[];
extern const u8 gMonFootprint_Poliwrath[];
extern const u32 gMonFrontPic_Abra[];
extern const u32 gMonPalette_Abra[];
extern const u32 gMonBackPic_Abra[];
extern const u32 gMonShinyPalette_Abra[];
extern const u8 gMonIcon_Abra[];
extern const u8 gMonFootprint_Abra[];
extern const u32 gMonFrontPic_Kadabra[];
extern const u32 gMonPalette_Kadabra[];
extern const u32 gMonBackPic_Kadabra[];
extern const u32 gMonShinyPalette_Kadabra[];
extern const u8 gMonIcon_Kadabra[];
extern const u8 gMonFootprint_Kadabra[];
extern const u32 gMonFrontPic_Alakazam[];
extern const u32 gMonPalette_Alakazam[];
extern const u32 gMonBackPic_Alakazam[];
extern const u32 gMonShinyPalette_Alakazam[];
extern const u8 gMonIcon_Alakazam[];
extern const u8 gMonFootprint_Alakazam[];
extern const u32 gMonFrontPic_Machop[];
extern const u32 gMonPalette_Machop[];
extern const u32 gMonBackPic_Machop[];
extern const u32 gMonShinyPalette_Machop[];
extern const u8 gMonIcon_Machop[];
extern const u8 gMonFootprint_Machop[];
extern const u32 gMonFrontPic_Machoke[];
extern const u32 gMonPalette_Machoke[];
extern const u32 gMonBackPic_Machoke[];
extern const u32 gMonShinyPalette_Machoke[];
extern const u8 gMonIcon_Machoke[];
extern const u8 gMonFootprint_Machoke[];
extern const u32 gMonFrontPic_Machamp[];
extern const u32 gMonPalette_Machamp[];
extern const u32 gMonBackPic_Machamp[];
extern const u32 gMonShinyPalette_Machamp[];
extern const u8 gMonIcon_Machamp[];
extern const u8 gMonFootprint_Machamp[];
extern const u32 gMonFrontPic_Bellsprout[];
extern const u32 gMonPalette_Bellsprout[];
extern const u32 gMonBackPic_Bellsprout[];
extern const u32 gMonShinyPalette_Bellsprout[];
extern const u8 gMonIcon_Bellsprout[];
extern const u8 gMonFootprint_Bellsprout[];
extern const u32 gMonFrontPic_Weepinbell[];
extern const u32 gMonPalette_Weepinbell[];
extern const u32 gMonBackPic_Weepinbell[];
extern const u32 gMonShinyPalette_Weepinbell[];
extern const u8 gMonIcon_Weepinbell[];
extern const u8 gMonFootprint_Weepinbell[];
extern const u32 gMonFrontPic_Victreebel[];
extern const u32 gMonPalette_Victreebel[];
extern const u32 gMonBackPic_Victreebel[];
extern const u32 gMonShinyPalette_Victreebel[];
extern const u8 gMonIcon_Victreebel[];
extern const u8 gMonFootprint_Victreebel[];
extern const u32 gMonFrontPic_Tentacool[];
extern const u32 gMonPalette_Tentacool[];
extern const u32 gMonBackPic_Tentacool[];
extern const u32 gMonShinyPalette_Tentacool[];
extern const u8 gMonIcon_Tentacool[];
extern const u8 gMonFootprint_Tentacool[];
extern const u32 gMonFrontPic_Tentacruel[];
extern const u32 gMonPalette_Tentacruel[];
extern const u32 gMonBackPic_Tentacruel[];
extern const u32 gMonShinyPalette_Tentacruel[];
extern const u8 gMonIcon_Tentacruel[];
extern const u8 gMonFootprint_Tentacruel[];
extern const u32 gMonFrontPic_Geodude[];
extern const u32 gMonPalette_Geodude[];
extern const u32 gMonBackPic_Geodude[];
extern const u32 gMonShinyPalette_Geodude[];
extern const u8 gMonIcon_Geodude[];
extern const u8 gMonFootprint_Geodude[];
extern const u32 gMonFrontPic_Graveler[];
extern const u32 gMonPalette_Graveler[];
extern const u32 gMonBackPic_Graveler[];
extern const u32 gMonShinyPalette_Graveler[];
extern const u8 gMonIcon_Graveler[];
extern const u8 gMonFootprint_Graveler[];
extern const u32 gMonFrontPic_Golem[];
extern const u32 gMonPalette_Golem[];
extern const u32 gMonBackPic_Golem[];
extern const u32 gMonShinyPalette_Golem[];
extern const u8 gMonIcon_Golem[];
extern const u8 gMonFootprint_Golem[];
extern const u32 gMonFrontPic_Ponyta[];
extern const u32 gMonPalette_Ponyta[];
extern const u32 gMonBackPic_Ponyta[];
extern const u32 gMonShinyPalette_Ponyta[];
extern const u8 gMonIcon_Ponyta[];
extern const u8 gMonFootprint_Ponyta[];
extern const u32 gMonFrontPic_Rapidash[];
extern const u32 gMonPalette_Rapidash[];
extern const u32 gMonBackPic_Rapidash[];
extern const u32 gMonShinyPalette_Rapidash[];
extern const u8 gMonIcon_Rapidash[];
extern const u8 gMonFootprint_Rapidash[];
extern const u32 gMonFrontPic_Slowpoke[];
extern const u32 gMonPalette_Slowpoke[];
extern const u32 gMonBackPic_Slowpoke[];
extern const u32 gMonShinyPalette_Slowpoke[];
extern const u8 gMonIcon_Slowpoke[];
extern const u8 gMonFootprint_Slowpoke[];
extern const u32 gMonFrontPic_Slowbro[];
extern const u32 gMonPalette_Slowbro[];
extern const u32 gMonBackPic_Slowbro[];
extern const u32 gMonShinyPalette_Slowbro[];
extern const u8 gMonIcon_Slowbro[];
extern const u8 gMonFootprint_Slowbro[];
extern const u32 gMonFrontPic_Magnemite[];
extern const u32 gMonPalette_Magnemite[];
extern const u32 gMonBackPic_Magnemite[];
extern const u32 gMonShinyPalette_Magnemite[];
extern const u8 gMonIcon_Magnemite[];
extern const u8 gMonFootprint_Magnemite[];
extern const u32 gMonFrontPic_Magneton[];
extern const u32 gMonPalette_Magneton[];
extern const u32 gMonBackPic_Magneton[];
extern const u32 gMonShinyPalette_Magneton[];
extern const u8 gMonIcon_Magneton[];
extern const u8 gMonFootprint_Magneton[];
extern const u32 gMonFrontPic_Farfetchd[];
extern const u32 gMonPalette_Farfetchd[];
extern const u32 gMonBackPic_Farfetchd[];
extern const u32 gMonShinyPalette_Farfetchd[];
extern const u8 gMonIcon_Farfetchd[];
extern const u8 gMonFootprint_Farfetchd[];
extern const u32 gMonFrontPic_Doduo[];
extern const u32 gMonPalette_Doduo[];
extern const u32 gMonBackPic_Doduo[];
extern const u32 gMonShinyPalette_Doduo[];
extern const u8 gMonIcon_Doduo[];
extern const u8 gMonFootprint_Doduo[];
extern const u32 gMonFrontPic_Dodrio[];
extern const u32 gMonPalette_Dodrio[];
extern const u32 gMonBackPic_Dodrio[];
extern const u32 gMonShinyPalette_Dodrio[];
extern const u8 gMonIcon_Dodrio[];
extern const u8 gMonFootprint_Dodrio[];
extern const u32 gMonFrontPic_Seel[];
extern const u32 gMonPalette_Seel[];
extern const u32 gMonBackPic_Seel[];
extern const u32 gMonShinyPalette_Seel[];
extern const u8 gMonIcon_Seel[];
extern const u8 gMonFootprint_Seel[];
extern const u32 gMonFrontPic_Dewgong[];
extern const u32 gMonPalette_Dewgong[];
extern const u32 gMonBackPic_Dewgong[];
extern const u32 gMonShinyPalette_Dewgong[];
extern const u8 gMonIcon_Dewgong[];
extern const u8 gMonFootprint_Dewgong[];
extern const u32 gMonFrontPic_Grimer[];
extern const u32 gMonPalette_Grimer[];
extern const u32 gMonBackPic_Grimer[];
extern const u32 gMonShinyPalette_Grimer[];
extern const u8 gMonIcon_Grimer[];
extern const u8 gMonFootprint_Grimer[];
extern const u32 gMonFrontPic_Muk[];
extern const u32 gMonPalette_Muk[];
extern const u32 gMonBackPic_Muk[];
extern const u32 gMonShinyPalette_Muk[];
extern const u8 gMonIcon_Muk[];
extern const u8 gMonFootprint_Muk[];
extern const u32 gMonFrontPic_Shellder[];
extern const u32 gMonPalette_Shellder[];
extern const u32 gMonBackPic_Shellder[];
extern const u32 gMonShinyPalette_Shellder[];
extern const u8 gMonIcon_Shellder[];
extern const u8 gMonFootprint_Shellder[];
extern const u32 gMonFrontPic_Cloyster[];
extern const u32 gMonPalette_Cloyster[];
extern const u32 gMonBackPic_Cloyster[];
extern const u32 gMonShinyPalette_Cloyster[];
extern const u8 gMonIcon_Cloyster[];
extern const u8 gMonFootprint_Cloyster[];
extern const u32 gMonFrontPic_Gastly[];
extern const u32 gMonPalette_Gastly[];
extern const u32 gMonBackPic_Gastly[];
extern const u32 gMonShinyPalette_Gastly[];
extern const u8 gMonIcon_Gastly[];
extern const u8 gMonFootprint_Gastly[];
extern const u32 gMonFrontPic_Haunter[];
extern const u32 gMonPalette_Haunter[];
extern const u32 gMonBackPic_Haunter[];
extern const u32 gMonShinyPalette_Haunter[];
extern const u8 gMonIcon_Haunter[];
extern const u8 gMonFootprint_Haunter[];
extern const u32 gMonFrontPic_Gengar[];
extern const u32 gMonPalette_Gengar[];
extern const u32 gMonBackPic_Gengar[];
extern const u32 gMonShinyPalette_Gengar[];
extern const u8 gMonIcon_Gengar[];
extern const u8 gMonFootprint_Gengar[];
extern const u32 gMonFrontPic_Onix[];
extern const u32 gMonPalette_Onix[];
extern const u32 gMonBackPic_Onix[];
extern const u32 gMonShinyPalette_Onix[];
extern const u8 gMonIcon_Onix[];
extern const u8 gMonFootprint_Onix[];
extern const u32 gMonFrontPic_Drowzee[];
extern const u32 gMonPalette_Drowzee[];
extern const u32 gMonBackPic_Drowzee[];
extern const u32 gMonShinyPalette_Drowzee[];
extern const u8 gMonIcon_Drowzee[];
extern const u8 gMonFootprint_Drowzee[];
extern const u32 gMonFrontPic_Hypno[];
extern const u32 gMonPalette_Hypno[];
extern const u32 gMonBackPic_Hypno[];
extern const u32 gMonShinyPalette_Hypno[];
extern const u8 gMonIcon_Hypno[];
extern const u8 gMonFootprint_Hypno[];
extern const u32 gMonFrontPic_Krabby[];
extern const u32 gMonPalette_Krabby[];
extern const u32 gMonBackPic_Krabby[];
extern const u32 gMonShinyPalette_Krabby[];
extern const u8 gMonIcon_Krabby[];
extern const u8 gMonFootprint_Krabby[];
extern const u32 gMonFrontPic_Kingler[];
extern const u32 gMonPalette_Kingler[];
extern const u32 gMonBackPic_Kingler[];
extern const u32 gMonShinyPalette_Kingler[];
extern const u8 gMonIcon_Kingler[];
extern const u8 gMonFootprint_Kingler[];
extern const u32 gMonFrontPic_Voltorb[];
extern const u32 gMonPalette_Voltorb[];
extern const u32 gMonBackPic_Voltorb[];
extern const u32 gMonShinyPalette_Voltorb[];
extern const u8 gMonIcon_Voltorb[];
extern const u8 gMonFootprint_Voltorb[];
extern const u32 gMonFrontPic_Electrode[];
extern const u32 gMonPalette_Electrode[];
extern const u32 gMonBackPic_Electrode[];
extern const u32 gMonShinyPalette_Electrode[];
extern const u8 gMonIcon_Electrode[];
extern const u8 gMonFootprint_Electrode[];
extern const u32 gMonFrontPic_Exeggcute[];
extern const u32 gMonPalette_Exeggcute[];
extern const u32 gMonBackPic_Exeggcute[];
extern const u32 gMonShinyPalette_Exeggcute[];
extern const u8 gMonIcon_Exeggcute[];
extern const u8 gMonFootprint_Exeggcute[];
extern const u32 gMonFrontPic_Exeggutor[];
extern const u32 gMonPalette_Exeggutor[];
extern const u32 gMonBackPic_Exeggutor[];
extern const u32 gMonShinyPalette_Exeggutor[];
extern const u8 gMonIcon_Exeggutor[];
extern const u8 gMonFootprint_Exeggutor[];
extern const u32 gMonFrontPic_Cubone[];
extern const u32 gMonPalette_Cubone[];
extern const u32 gMonBackPic_Cubone[];
extern const u32 gMonShinyPalette_Cubone[];
extern const u8 gMonIcon_Cubone[];
extern const u8 gMonFootprint_Cubone[];
extern const u32 gMonFrontPic_Marowak[];
extern const u32 gMonPalette_Marowak[];
extern const u32 gMonBackPic_Marowak[];
extern const u32 gMonShinyPalette_Marowak[];
extern const u8 gMonIcon_Marowak[];
extern const u8 gMonFootprint_Marowak[];
extern const u32 gMonFrontPic_Hitmonlee[];
extern const u32 gMonPalette_Hitmonlee[];
extern const u32 gMonBackPic_Hitmonlee[];
extern const u32 gMonShinyPalette_Hitmonlee[];
extern const u8 gMonIcon_Hitmonlee[];
extern const u8 gMonFootprint_Hitmonlee[];
extern const u32 gMonFrontPic_Hitmonchan[];
extern const u32 gMonPalette_Hitmonchan[];
extern const u32 gMonBackPic_Hitmonchan[];
extern const u32 gMonShinyPalette_Hitmonchan[];
extern const u8 gMonIcon_Hitmonchan[];
extern const u8 gMonFootprint_Hitmonchan[];
extern const u32 gMonFrontPic_Lickitung[];
extern const u32 gMonPalette_Lickitung[];
extern const u32 gMonBackPic_Lickitung[];
extern const u32 gMonShinyPalette_Lickitung[];
extern const u8 gMonIcon_Lickitung[];
extern const u8 gMonFootprint_Lickitung[];
extern const u32 gMonFrontPic_Koffing[];
extern const u32 gMonPalette_Koffing[];
extern const u32 gMonBackPic_Koffing[];
extern const u32 gMonShinyPalette_Koffing[];
extern const u8 gMonIcon_Koffing[];
extern const u8 gMonFootprint_Koffing[];
extern const u32 gMonFrontPic_Weezing[];
extern const u32 gMonPalette_Weezing[];
extern const u32 gMonBackPic_Weezing[];
extern const u32 gMonShinyPalette_Weezing[];
extern const u8 gMonIcon_Weezing[];
extern const u8 gMonFootprint_Weezing[];
extern const u32 gMonFrontPic_Rhyhorn[];
extern const u32 gMonPalette_Rhyhorn[];
extern const u32 gMonBackPic_Rhyhorn[];
extern const u32 gMonShinyPalette_Rhyhorn[];
extern const u8 gMonIcon_Rhyhorn[];
extern const u8 gMonFootprint_Rhyhorn[];
extern const u32 gMonFrontPic_Rhydon[];
extern const u32 gMonPalette_Rhydon[];
extern const u32 gMonBackPic_Rhydon[];
extern const u32 gMonShinyPalette_Rhydon[];
extern const u8 gMonIcon_Rhydon[];
extern const u8 gMonFootprint_Rhydon[];
extern const u32 gMonFrontPic_Chansey[];
extern const u32 gMonPalette_Chansey[];
extern const u32 gMonBackPic_Chansey[];
extern const u32 gMonShinyPalette_Chansey[];
extern const u8 gMonIcon_Chansey[];
extern const u8 gMonFootprint_Chansey[];
extern const u32 gMonFrontPic_Tangela[];
extern const u32 gMonPalette_Tangela[];
extern const u32 gMonBackPic_Tangela[];
extern const u32 gMonShinyPalette_Tangela[];
extern const u8 gMonIcon_Tangela[];
extern const u8 gMonFootprint_Tangela[];
extern const u32 gMonFrontPic_Kangaskhan[];
extern const u32 gMonPalette_Kangaskhan[];
extern const u32 gMonBackPic_Kangaskhan[];
extern const u32 gMonShinyPalette_Kangaskhan[];
extern const u8 gMonIcon_Kangaskhan[];
extern const u8 gMonFootprint_Kangaskhan[];
extern const u32 gMonFrontPic_Horsea[];
extern const u32 gMonPalette_Horsea[];
extern const u32 gMonBackPic_Horsea[];
extern const u32 gMonShinyPalette_Horsea[];
extern const u8 gMonIcon_Horsea[];
extern const u8 gMonFootprint_Horsea[];
extern const u32 gMonFrontPic_Seadra[];
extern const u32 gMonPalette_Seadra[];
extern const u32 gMonBackPic_Seadra[];
extern const u32 gMonShinyPalette_Seadra[];
extern const u8 gMonIcon_Seadra[];
extern const u8 gMonFootprint_Seadra[];
extern const u32 gMonFrontPic_Goldeen[];
extern const u32 gMonPalette_Goldeen[];
extern const u32 gMonBackPic_Goldeen[];
extern const u32 gMonShinyPalette_Goldeen[];
extern const u8 gMonIcon_Goldeen[];
extern const u8 gMonFootprint_Goldeen[];
extern const u32 gMonFrontPic_Seaking[];
extern const u32 gMonPalette_Seaking[];
extern const u32 gMonBackPic_Seaking[];
extern const u32 gMonShinyPalette_Seaking[];
extern const u8 gMonIcon_Seaking[];
extern const u8 gMonFootprint_Seaking[];
extern const u32 gMonFrontPic_Staryu[];
extern const u32 gMonPalette_Staryu[];
extern const u32 gMonBackPic_Staryu[];
extern const u32 gMonShinyPalette_Staryu[];
extern const u8 gMonIcon_Staryu[];
extern const u8 gMonFootprint_Staryu[];
extern const u32 gMonFrontPic_Starmie[];
extern const u32 gMonPalette_Starmie[];
extern const u32 gMonBackPic_Starmie[];
extern const u32 gMonShinyPalette_Starmie[];
extern const u8 gMonIcon_Starmie[];
extern const u8 gMonFootprint_Starmie[];
extern const u32 gMonFrontPic_Mrmime[];
extern const u32 gMonPalette_Mrmime[];
extern const u32 gMonBackPic_Mrmime[];
extern const u32 gMonShinyPalette_Mrmime[];
extern const u8 gMonIcon_Mrmime[];
extern const u8 gMonFootprint_Mrmime[];
extern const u32 gMonFrontPic_Scyther[];
extern const u32 gMonPalette_Scyther[];
extern const u32 gMonBackPic_Scyther[];
extern const u32 gMonShinyPalette_Scyther[];
extern const u8 gMonIcon_Scyther[];
extern const u8 gMonFootprint_Scyther[];
extern const u32 gMonFrontPic_Jynx[];
extern const u32 gMonPalette_Jynx[];
extern const u32 gMonBackPic_Jynx[];
extern const u32 gMonShinyPalette_Jynx[];
extern const u8 gMonIcon_Jynx[];
extern const u8 gMonFootprint_Jynx[];
extern const u32 gMonFrontPic_Electabuzz[];
extern const u32 gMonPalette_Electabuzz[];
extern const u32 gMonBackPic_Electabuzz[];
extern const u32 gMonShinyPalette_Electabuzz[];
extern const u8 gMonIcon_Electabuzz[];
extern const u8 gMonFootprint_Electabuzz[];
extern const u32 gMonFrontPic_Magmar[];
extern const u32 gMonPalette_Magmar[];
extern const u32 gMonBackPic_Magmar[];
extern const u32 gMonShinyPalette_Magmar[];
extern const u8 gMonIcon_Magmar[];
extern const u8 gMonFootprint_Magmar[];
extern const u32 gMonFrontPic_Pinsir[];
extern const u32 gMonPalette_Pinsir[];
extern const u32 gMonBackPic_Pinsir[];
extern const u32 gMonShinyPalette_Pinsir[];
extern const u8 gMonIcon_Pinsir[];
extern const u8 gMonFootprint_Pinsir[];
extern const u32 gMonFrontPic_Tauros[];
extern const u32 gMonPalette_Tauros[];
extern const u32 gMonBackPic_Tauros[];
extern const u32 gMonShinyPalette_Tauros[];
extern const u8 gMonIcon_Tauros[];
extern const u8 gMonFootprint_Tauros[];
extern const u32 gMonFrontPic_Magikarp[];
extern const u32 gMonPalette_Magikarp[];
extern const u32 gMonBackPic_Magikarp[];
extern const u32 gMonShinyPalette_Magikarp[];
extern const u8 gMonIcon_Magikarp[];
extern const u8 gMonFootprint_Magikarp[];
extern const u32 gMonFrontPic_Gyarados[];
extern const u32 gMonPalette_Gyarados[];
extern const u32 gMonBackPic_Gyarados[];
extern const u32 gMonShinyPalette_Gyarados[];
extern const u8 gMonIcon_Gyarados[];
extern const u8 gMonFootprint_Gyarados[];
extern const u32 gMonFrontPic_Lapras[];
extern const u32 gMonPalette_Lapras[];
extern const u32 gMonBackPic_Lapras[];
extern const u32 gMonShinyPalette_Lapras[];
extern const u8 gMonIcon_Lapras[];
extern const u8 gMonFootprint_Lapras[];
extern const u32 gMonFrontPic_Ditto[];
extern const u32 gMonPalette_Ditto[];
extern const u32 gMonBackPic_Ditto[];
extern const u32 gMonShinyPalette_Ditto[];
extern const u8 gMonIcon_Ditto[];
extern const u8 gMonFootprint_Ditto[];
extern const u32 gMonFrontPic_Eevee[];
extern const u32 gMonPalette_Eevee[];
extern const u32 gMonBackPic_Eevee[];
extern const u32 gMonShinyPalette_Eevee[];
extern const u8 gMonIcon_Eevee[];
extern const u8 gMonFootprint_Eevee[];
extern const u32 gMonFrontPic_Vaporeon[];
extern const u32 gMonPalette_Vaporeon[];
extern const u32 gMonBackPic_Vaporeon[];
extern const u32 gMonShinyPalette_Vaporeon[];
extern const u8 gMonIcon_Vaporeon[];
extern const u8 gMonFootprint_Vaporeon[];
extern const u32 gMonFrontPic_Jolteon[];
extern const u32 gMonPalette_Jolteon[];
extern const u32 gMonBackPic_Jolteon[];
extern const u32 gMonShinyPalette_Jolteon[];
extern const u8 gMonIcon_Jolteon[];
extern const u8 gMonFootprint_Jolteon[];
extern const u32 gMonFrontPic_Flareon[];
extern const u32 gMonPalette_Flareon[];
extern const u32 gMonBackPic_Flareon[];
extern const u32 gMonShinyPalette_Flareon[];
extern const u8 gMonIcon_Flareon[];
extern const u8 gMonFootprint_Flareon[];
extern const u32 gMonFrontPic_Porygon[];
extern const u32 gMonPalette_Porygon[];
extern const u32 gMonBackPic_Porygon[];
extern const u32 gMonShinyPalette_Porygon[];
extern const u8 gMonIcon_Porygon[];
extern const u8 gMonFootprint_Porygon[];
extern const u32 gMonFrontPic_Omanyte[];
extern const u32 gMonPalette_Omanyte[];
extern const u32 gMonBackPic_Omanyte[];
extern const u32 gMonShinyPalette_Omanyte[];
extern const u8 gMonIcon_Omanyte[];
extern const u8 gMonFootprint_Omanyte[];
extern const u32 gMonFrontPic_Omastar[];
extern const u32 gMonPalette_Omastar[];
extern const u32 gMonBackPic_Omastar[];
extern const u32 gMonShinyPalette_Omastar[];
extern const u8 gMonIcon_Omastar[];
extern const u8 gMonFootprint_Omastar[];
extern const u32 gMonFrontPic_Kabuto[];
extern const u32 gMonPalette_Kabuto[];
extern const u32 gMonBackPic_Kabuto[];
extern const u32 gMonShinyPalette_Kabuto[];
extern const u8 gMonIcon_Kabuto[];
extern const u8 gMonFootprint_Kabuto[];
extern const u32 gMonFrontPic_Kabutops[];
extern const u32 gMonPalette_Kabutops[];
extern const u32 gMonBackPic_Kabutops[];
extern const u32 gMonShinyPalette_Kabutops[];
extern const u8 gMonIcon_Kabutops[];
extern const u8 gMonFootprint_Kabutops[];
extern const u32 gMonFrontPic_Aerodactyl[];
extern const u32 gMonPalette_Aerodactyl[];
extern const u32 gMonBackPic_Aerodactyl[];
extern const u32 gMonShinyPalette_Aerodactyl[];
extern const u8 gMonIcon_Aerodactyl[];
extern const u8 gMonFootprint_Aerodactyl[];
extern const u32 gMonFrontPic_Snorlax[];
extern const u32 gMonPalette_Snorlax[];
extern const u32 gMonBackPic_Snorlax[];
extern const u32 gMonShinyPalette_Snorlax[];
extern const u8 gMonIcon_Snorlax[];
extern const u8 gMonFootprint_Snorlax[];
extern const u32 gMonFrontPic_Articuno[];
extern const u32 gMonPalette_Articuno[];
extern const u32 gMonBackPic_Articuno[];
extern const u32 gMonShinyPalette_Articuno[];
extern const u8 gMonIcon_Articuno[];
extern const u8 gMonFootprint_Articuno[];
extern const u32 gMonFrontPic_Zapdos[];
extern const u32 gMonPalette_Zapdos[];
extern const u32 gMonBackPic_Zapdos[];
extern const u32 gMonShinyPalette_Zapdos[];
extern const u8 gMonIcon_Zapdos[];
extern const u8 gMonFootprint_Zapdos[];
extern const u32 gMonFrontPic_Moltres[];
extern const u32 gMonPalette_Moltres[];
extern const u32 gMonBackPic_Moltres[];
extern const u32 gMonShinyPalette_Moltres[];
extern const u8 gMonIcon_Moltres[];
extern const u8 gMonFootprint_Moltres[];
extern const u32 gMonFrontPic_Dratini[];
extern const u32 gMonPalette_Dratini[];
extern const u32 gMonBackPic_Dratini[];
extern const u32 gMonShinyPalette_Dratini[];
extern const u8 gMonIcon_Dratini[];
extern const u8 gMonFootprint_Dratini[];
extern const u32 gMonFrontPic_Dragonair[];
extern const u32 gMonPalette_Dragonair[];
extern const u32 gMonBackPic_Dragonair[];
extern const u32 gMonShinyPalette_Dragonair[];
extern const u8 gMonIcon_Dragonair[];
extern const u8 gMonFootprint_Dragonair[];
extern const u32 gMonFrontPic_Dragonite[];
extern const u32 gMonPalette_Dragonite[];
extern const u32 gMonBackPic_Dragonite[];
extern const u32 gMonShinyPalette_Dragonite[];
extern const u8 gMonIcon_Dragonite[];
extern const u8 gMonFootprint_Dragonite[];
extern const u32 gMonFrontPic_Mewtwo[];
extern const u32 gMonPalette_Mewtwo[];
extern const u32 gMonBackPic_Mewtwo[];
extern const u32 gMonShinyPalette_Mewtwo[];
extern const u8 gMonIcon_Mewtwo[];
extern const u8 gMonFootprint_Mewtwo[];
extern const u32 gMonFrontPic_Mew[];
extern const u32 gMonPalette_Mew[];
extern const u32 gMonBackPic_Mew[];
extern const u32 gMonShinyPalette_Mew[];
extern const u8 gMonIcon_Mew[];
extern const u8 gMonFootprint_Mew[];
extern const u32 gMonFrontPic_Chikorita[];
extern const u32 gMonPalette_Chikorita[];
extern const u32 gMonBackPic_Chikorita[];
extern const u32 gMonShinyPalette_Chikorita[];
extern const u8 gMonIcon_Chikorita[];
extern const u8 gMonFootprint_Chikorita[];
extern const u32 gMonFrontPic_Bayleef[];
extern const u32 gMonPalette_Bayleef[];
extern const u32 gMonBackPic_Bayleef[];
extern const u32 gMonShinyPalette_Bayleef[];
extern const u8 gMonIcon_Bayleef[];
extern const u8 gMonFootprint_Bayleef[];
extern const u32 gMonFrontPic_Meganium[];
extern const u32 gMonPalette_Meganium[];
extern const u32 gMonBackPic_Meganium[];
extern const u32 gMonShinyPalette_Meganium[];
extern const u8 gMonIcon_Meganium[];
extern const u8 gMonFootprint_Meganium[];
extern const u32 gMonFrontPic_Cyndaquil[];
extern const u32 gMonPalette_Cyndaquil[];
extern const u32 gMonBackPic_Cyndaquil[];
extern const u32 gMonShinyPalette_Cyndaquil[];
extern const u8 gMonIcon_Cyndaquil[];
extern const u8 gMonFootprint_Cyndaquil[];
extern const u32 gMonFrontPic_Quilava[];
extern const u32 gMonPalette_Quilava[];
extern const u32 gMonBackPic_Quilava[];
extern const u32 gMonShinyPalette_Quilava[];
extern const u8 gMonIcon_Quilava[];
extern const u8 gMonFootprint_Quilava[];
extern const u32 gMonFrontPic_Typhlosion[];
extern const u32 gMonPalette_Typhlosion[];
extern const u32 gMonBackPic_Typhlosion[];
extern const u32 gMonShinyPalette_Typhlosion[];
extern const u8 gMonIcon_Typhlosion[];
extern const u8 gMonFootprint_Typhlosion[];
extern const u32 gMonFrontPic_Totodile[];
extern const u32 gMonPalette_Totodile[];
extern const u32 gMonBackPic_Totodile[];
extern const u32 gMonShinyPalette_Totodile[];
extern const u8 gMonIcon_Totodile[];
extern const u8 gMonFootprint_Totodile[];
extern const u32 gMonFrontPic_Croconaw[];
extern const u32 gMonPalette_Croconaw[];
extern const u32 gMonBackPic_Croconaw[];
extern const u32 gMonShinyPalette_Croconaw[];
extern const u8 gMonIcon_Croconaw[];
extern const u8 gMonFootprint_Croconaw[];
extern const u32 gMonFrontPic_Feraligatr[];
extern const u32 gMonPalette_Feraligatr[];
extern const u32 gMonBackPic_Feraligatr[];
extern const u32 gMonShinyPalette_Feraligatr[];
extern const u8 gMonIcon_Feraligatr[];
extern const u8 gMonFootprint_Feraligatr[];
extern const u32 gMonFrontPic_Sentret[];
extern const u32 gMonPalette_Sentret[];
extern const u32 gMonBackPic_Sentret[];
extern const u32 gMonShinyPalette_Sentret[];
extern const u8 gMonIcon_Sentret[];
extern const u8 gMonFootprint_Sentret[];
extern const u32 gMonFrontPic_Furret[];
extern const u32 gMonPalette_Furret[];
extern const u32 gMonBackPic_Furret[];
extern const u32 gMonShinyPalette_Furret[];
extern const u8 gMonIcon_Furret[];
extern const u8 gMonFootprint_Furret[];
extern const u32 gMonFrontPic_Hoothoot[];
extern const u32 gMonPalette_Hoothoot[];
extern const u32 gMonBackPic_Hoothoot[];
extern const u32 gMonShinyPalette_Hoothoot[];
extern const u8 gMonIcon_Hoothoot[];
extern const u8 gMonFootprint_Hoothoot[];
extern const u32 gMonFrontPic_Noctowl[];
extern const u32 gMonPalette_Noctowl[];
extern const u32 gMonBackPic_Noctowl[];
extern const u32 gMonShinyPalette_Noctowl[];
extern const u8 gMonIcon_Noctowl[];
extern const u8 gMonFootprint_Noctowl[];
extern const u32 gMonFrontPic_Ledyba[];
extern const u32 gMonPalette_Ledyba[];
extern const u32 gMonBackPic_Ledyba[];
extern const u32 gMonShinyPalette_Ledyba[];
extern const u8 gMonIcon_Ledyba[];
extern const u8 gMonFootprint_Ledyba[];
extern const u32 gMonFrontPic_Ledian[];
extern const u32 gMonPalette_Ledian[];
extern const u32 gMonBackPic_Ledian[];
extern const u32 gMonShinyPalette_Ledian[];
extern const u8 gMonIcon_Ledian[];
extern const u8 gMonFootprint_Ledian[];
extern const u32 gMonFrontPic_Spinarak[];
extern const u32 gMonPalette_Spinarak[];
extern const u32 gMonBackPic_Spinarak[];
extern const u32 gMonShinyPalette_Spinarak[];
extern const u8 gMonIcon_Spinarak[];
extern const u8 gMonFootprint_Spinarak[];
extern const u32 gMonFrontPic_Ariados[];
extern const u32 gMonPalette_Ariados[];
extern const u32 gMonBackPic_Ariados[];
extern const u32 gMonShinyPalette_Ariados[];
extern const u8 gMonIcon_Ariados[];
extern const u8 gMonFootprint_Ariados[];
extern const u32 gMonFrontPic_Crobat[];
extern const u32 gMonPalette_Crobat[];
extern const u32 gMonBackPic_Crobat[];
extern const u32 gMonShinyPalette_Crobat[];
extern const u8 gMonIcon_Crobat[];
extern const u8 gMonFootprint_Crobat[];
extern const u32 gMonFrontPic_Chinchou[];
extern const u32 gMonPalette_Chinchou[];
extern const u32 gMonBackPic_Chinchou[];
extern const u32 gMonShinyPalette_Chinchou[];
extern const u8 gMonIcon_Chinchou[];
extern const u8 gMonFootprint_Chinchou[];
extern const u32 gMonFrontPic_Lanturn[];
extern const u32 gMonPalette_Lanturn[];
extern const u32 gMonBackPic_Lanturn[];
extern const u32 gMonShinyPalette_Lanturn[];
extern const u8 gMonIcon_Lanturn[];
extern const u8 gMonFootprint_Lanturn[];
extern const u32 gMonFrontPic_Pichu[];
extern const u32 gMonPalette_Pichu[];
extern const u32 gMonBackPic_Pichu[];
extern const u32 gMonShinyPalette_Pichu[];
extern const u8 gMonIcon_Pichu[];
extern const u8 gMonFootprint_Pichu[];
extern const u32 gMonFrontPic_Cleffa[];
extern const u32 gMonPalette_Cleffa[];
extern const u32 gMonBackPic_Cleffa[];
extern const u32 gMonShinyPalette_Cleffa[];
extern const u8 gMonIcon_Cleffa[];
extern const u8 gMonFootprint_Cleffa[];
extern const u32 gMonFrontPic_Igglybuff[];
extern const u32 gMonPalette_Igglybuff[];
extern const u32 gMonBackPic_Igglybuff[];
extern const u32 gMonShinyPalette_Igglybuff[];
extern const u8 gMonIcon_Igglybuff[];
extern const u8 gMonFootprint_Igglybuff[];
extern const u32 gMonFrontPic_Togepi[];
extern const u32 gMonPalette_Togepi[];
extern const u32 gMonBackPic_Togepi[];
extern const u32 gMonShinyPalette_Togepi[];
extern const u8 gMonIcon_Togepi[];
extern const u8 gMonFootprint_Togepi[];
extern const u32 gMonFrontPic_Togetic[];
extern const u32 gMonPalette_Togetic[];
extern const u32 gMonBackPic_Togetic[];
extern const u32 gMonShinyPalette_Togetic[];
extern const u8 gMonIcon_Togetic[];
extern const u8 gMonFootprint_Togetic[];
extern const u32 gMonFrontPic_Natu[];
extern const u32 gMonPalette_Natu[];
extern const u32 gMonBackPic_Natu[];
extern const u32 gMonShinyPalette_Natu[];
extern const u8 gMonIcon_Natu[];
extern const u8 gMonFootprint_Natu[];
extern const u32 gMonFrontPic_Xatu[];
extern const u32 gMonPalette_Xatu[];
extern const u32 gMonBackPic_Xatu[];
extern const u32 gMonShinyPalette_Xatu[];
extern const u8 gMonIcon_Xatu[];
extern const u8 gMonFootprint_Xatu[];
extern const u32 gMonFrontPic_Mareep[];
extern const u32 gMonPalette_Mareep[];
extern const u32 gMonBackPic_Mareep[];
extern const u32 gMonShinyPalette_Mareep[];
extern const u8 gMonIcon_Mareep[];
extern const u8 gMonFootprint_Mareep[];
extern const u32 gMonFrontPic_Flaaffy[];
extern const u32 gMonPalette_Flaaffy[];
extern const u32 gMonBackPic_Flaaffy[];
extern const u32 gMonShinyPalette_Flaaffy[];
extern const u8 gMonIcon_Flaaffy[];
extern const u8 gMonFootprint_Flaaffy[];
extern const u32 gMonFrontPic_Ampharos[];
extern const u32 gMonPalette_Ampharos[];
extern const u32 gMonBackPic_Ampharos[];
extern const u32 gMonShinyPalette_Ampharos[];
extern const u8 gMonIcon_Ampharos[];
extern const u8 gMonFootprint_Ampharos[];
extern const u32 gMonFrontPic_Bellossom[];
extern const u32 gMonPalette_Bellossom[];
extern const u32 gMonBackPic_Bellossom[];
extern const u32 gMonShinyPalette_Bellossom[];
extern const u8 gMonIcon_Bellossom[];
extern const u8 gMonFootprint_Bellossom[];
extern const u32 gMonFrontPic_Marill[];
extern const u32 gMonPalette_Marill[];
extern const u32 gMonBackPic_Marill[];
extern const u32 gMonShinyPalette_Marill[];
extern const u8 gMonIcon_Marill[];
extern const u8 gMonFootprint_Marill[];
extern const u32 gMonFrontPic_Azumarill[];
extern const u32 gMonPalette_Azumarill[];
extern const u32 gMonBackPic_Azumarill[];
extern const u32 gMonShinyPalette_Azumarill[];
extern const u8 gMonIcon_Azumarill[];
extern const u8 gMonFootprint_Azumarill[];
extern const u32 gMonFrontPic_Sudowoodo[];
extern const u32 gMonPalette_Sudowoodo[];
extern const u32 gMonBackPic_Sudowoodo[];
extern const u32 gMonShinyPalette_Sudowoodo[];
extern const u8 gMonIcon_Sudowoodo[];
extern const u8 gMonFootprint_Sudowoodo[];
extern const u32 gMonFrontPic_Politoed[];
extern const u32 gMonPalette_Politoed[];
extern const u32 gMonBackPic_Politoed[];
extern const u32 gMonShinyPalette_Politoed[];
extern const u8 gMonIcon_Politoed[];
extern const u8 gMonFootprint_Politoed[];
extern const u32 gMonFrontPic_Hoppip[];
extern const u32 gMonPalette_Hoppip[];
extern const u32 gMonBackPic_Hoppip[];
extern const u32 gMonShinyPalette_Hoppip[];
extern const u8 gMonIcon_Hoppip[];
extern const u8 gMonFootprint_Hoppip[];
extern const u32 gMonFrontPic_Skiploom[];
extern const u32 gMonPalette_Skiploom[];
extern const u32 gMonBackPic_Skiploom[];
extern const u32 gMonShinyPalette_Skiploom[];
extern const u8 gMonIcon_Skiploom[];
extern const u8 gMonFootprint_Skiploom[];
extern const u32 gMonFrontPic_Jumpluff[];
extern const u32 gMonPalette_Jumpluff[];
extern const u32 gMonBackPic_Jumpluff[];
extern const u32 gMonShinyPalette_Jumpluff[];
extern const u8 gMonIcon_Jumpluff[];
extern const u8 gMonFootprint_Jumpluff[];
extern const u32 gMonFrontPic_Aipom[];
extern const u32 gMonPalette_Aipom[];
extern const u32 gMonBackPic_Aipom[];
extern const u32 gMonShinyPalette_Aipom[];
extern const u8 gMonIcon_Aipom[];
extern const u8 gMonFootprint_Aipom[];
extern const u32 gMonFrontPic_Sunkern[];
extern const u32 gMonPalette_Sunkern[];
extern const u32 gMonBackPic_Sunkern[];
extern const u32 gMonShinyPalette_Sunkern[];
extern const u8 gMonIcon_Sunkern[];
extern const u8 gMonFootprint_Sunkern[];
extern const u32 gMonFrontPic_Sunflora[];
extern const u32 gMonPalette_Sunflora[];
extern const u32 gMonBackPic_Sunflora[];
extern const u32 gMonShinyPalette_Sunflora[];
extern const u8 gMonIcon_Sunflora[];
extern const u8 gMonFootprint_Sunflora[];
extern const u32 gMonFrontPic_Yanma[];
extern const u32 gMonPalette_Yanma[];
extern const u32 gMonBackPic_Yanma[];
extern const u32 gMonShinyPalette_Yanma[];
extern const u8 gMonIcon_Yanma[];
extern const u8 gMonFootprint_Yanma[];
extern const u32 gMonFrontPic_Wooper[];
extern const u32 gMonPalette_Wooper[];
extern const u32 gMonBackPic_Wooper[];
extern const u32 gMonShinyPalette_Wooper[];
extern const u8 gMonIcon_Wooper[];
extern const u8 gMonFootprint_Wooper[];
extern const u32 gMonFrontPic_Quagsire[];
extern const u32 gMonPalette_Quagsire[];
extern const u32 gMonBackPic_Quagsire[];
extern const u32 gMonShinyPalette_Quagsire[];
extern const u8 gMonIcon_Quagsire[];
extern const u8 gMonFootprint_Quagsire[];
extern const u32 gMonFrontPic_Espeon[];
extern const u32 gMonPalette_Espeon[];
extern const u32 gMonBackPic_Espeon[];
extern const u32 gMonShinyPalette_Espeon[];
extern const u8 gMonIcon_Espeon[];
extern const u8 gMonFootprint_Espeon[];
extern const u32 gMonFrontPic_Umbreon[];
extern const u32 gMonPalette_Umbreon[];
extern const u32 gMonBackPic_Umbreon[];
extern const u32 gMonShinyPalette_Umbreon[];
extern const u8 gMonIcon_Umbreon[];
extern const u8 gMonFootprint_Umbreon[];
extern const u32 gMonFrontPic_Murkrow[];
extern const u32 gMonPalette_Murkrow[];
extern const u32 gMonBackPic_Murkrow[];
extern const u32 gMonShinyPalette_Murkrow[];
extern const u8 gMonIcon_Murkrow[];
extern const u8 gMonFootprint_Murkrow[];
extern const u32 gMonFrontPic_Slowking[];
extern const u32 gMonPalette_Slowking[];
extern const u32 gMonBackPic_Slowking[];
extern const u32 gMonShinyPalette_Slowking[];
extern const u8 gMonIcon_Slowking[];
extern const u8 gMonFootprint_Slowking[];
extern const u32 gMonFrontPic_Misdreavus[];
extern const u32 gMonPalette_Misdreavus[];
extern const u32 gMonBackPic_Misdreavus[];
extern const u32 gMonShinyPalette_Misdreavus[];
extern const u8 gMonIcon_Misdreavus[];
extern const u8 gMonFootprint_Misdreavus[];
extern const u32 gMonFrontPic_UnownA[];
extern const u32 gMonPalette_Unown[];
extern const u32 gMonBackPic_UnownA[];
extern const u32 gMonShinyPalette_Unown[];
extern const u8 gMonIcon_UnownA[];
extern const u8 gMonFootprint_Unown[];
extern const u32 gMonFrontPic_Wobbuffet[];
extern const u32 gMonPalette_Wobbuffet[];
extern const u32 gMonBackPic_Wobbuffet[];
extern const u32 gMonShinyPalette_Wobbuffet[];
extern const u8 gMonIcon_Wobbuffet[];
extern const u8 gMonFootprint_Wobbuffet[];
extern const u32 gMonFrontPic_Girafarig[];
extern const u32 gMonPalette_Girafarig[];
extern const u32 gMonBackPic_Girafarig[];
extern const u32 gMonShinyPalette_Girafarig[];
extern const u8 gMonIcon_Girafarig[];
extern const u8 gMonFootprint_Girafarig[];
extern const u32 gMonFrontPic_Pineco[];
extern const u32 gMonPalette_Pineco[];
extern const u32 gMonBackPic_Pineco[];
extern const u32 gMonShinyPalette_Pineco[];
extern const u8 gMonIcon_Pineco[];
extern const u8 gMonFootprint_Pineco[];
extern const u32 gMonFrontPic_Forretress[];
extern const u32 gMonPalette_Forretress[];
extern const u32 gMonBackPic_Forretress[];
extern const u32 gMonShinyPalette_Forretress[];
extern const u8 gMonIcon_Forretress[];
extern const u8 gMonFootprint_Forretress[];
extern const u32 gMonFrontPic_Dunsparce[];
extern const u32 gMonPalette_Dunsparce[];
extern const u32 gMonBackPic_Dunsparce[];
extern const u32 gMonShinyPalette_Dunsparce[];
extern const u8 gMonIcon_Dunsparce[];
extern const u8 gMonFootprint_Dunsparce[];
extern const u32 gMonFrontPic_Gligar[];
extern const u32 gMonPalette_Gligar[];
extern const u32 gMonBackPic_Gligar[];
extern const u32 gMonShinyPalette_Gligar[];
extern const u8 gMonIcon_Gligar[];
extern const u8 gMonFootprint_Gligar[];
extern const u32 gMonFrontPic_Steelix[];
extern const u32 gMonPalette_Steelix[];
extern const u32 gMonBackPic_Steelix[];
extern const u32 gMonShinyPalette_Steelix[];
extern const u8 gMonIcon_Steelix[];
extern const u8 gMonFootprint_Steelix[];
extern const u32 gMonFrontPic_Snubbull[];
extern const u32 gMonPalette_Snubbull[];
extern const u32 gMonBackPic_Snubbull[];
extern const u32 gMonShinyPalette_Snubbull[];
extern const u8 gMonIcon_Snubbull[];
extern const u8 gMonFootprint_Snubbull[];
extern const u32 gMonFrontPic_Granbull[];
extern const u32 gMonPalette_Granbull[];
extern const u32 gMonBackPic_Granbull[];
extern const u32 gMonShinyPalette_Granbull[];
extern const u8 gMonIcon_Granbull[];
extern const u8 gMonFootprint_Granbull[];
extern const u32 gMonFrontPic_Qwilfish[];
extern const u32 gMonPalette_Qwilfish[];
extern const u32 gMonBackPic_Qwilfish[];
extern const u32 gMonShinyPalette_Qwilfish[];
extern const u8 gMonIcon_Qwilfish[];
extern const u8 gMonFootprint_Qwilfish[];
extern const u32 gMonFrontPic_Scizor[];
extern const u32 gMonPalette_Scizor[];
extern const u32 gMonBackPic_Scizor[];
extern const u32 gMonShinyPalette_Scizor[];
extern const u8 gMonIcon_Scizor[];
extern const u8 gMonFootprint_Scizor[];
extern const u32 gMonFrontPic_Shuckle[];
extern const u32 gMonPalette_Shuckle[];
extern const u32 gMonBackPic_Shuckle[];
extern const u32 gMonShinyPalette_Shuckle[];
extern const u8 gMonIcon_Shuckle[];
extern const u8 gMonFootprint_Shuckle[];
extern const u32 gMonFrontPic_Heracross[];
extern const u32 gMonPalette_Heracross[];
extern const u32 gMonBackPic_Heracross[];
extern const u32 gMonShinyPalette_Heracross[];
extern const u8 gMonIcon_Heracross[];
extern const u8 gMonFootprint_Heracross[];
extern const u32 gMonFrontPic_Sneasel[];
extern const u32 gMonPalette_Sneasel[];
extern const u32 gMonBackPic_Sneasel[];
extern const u32 gMonShinyPalette_Sneasel[];
extern const u8 gMonIcon_Sneasel[];
extern const u8 gMonFootprint_Sneasel[];
extern const u32 gMonFrontPic_Teddiursa[];
extern const u32 gMonPalette_Teddiursa[];
extern const u32 gMonBackPic_Teddiursa[];
extern const u32 gMonShinyPalette_Teddiursa[];
extern const u8 gMonIcon_Teddiursa[];
extern const u8 gMonFootprint_Teddiursa[];
extern const u32 gMonFrontPic_Ursaring[];
extern const u32 gMonPalette_Ursaring[];
extern const u32 gMonBackPic_Ursaring[];
extern const u32 gMonShinyPalette_Ursaring[];
extern const u8 gMonIcon_Ursaring[];
extern const u8 gMonFootprint_Ursaring[];
extern const u32 gMonFrontPic_Slugma[];
extern const u32 gMonPalette_Slugma[];
extern const u32 gMonBackPic_Slugma[];
extern const u32 gMonShinyPalette_Slugma[];
extern const u8 gMonIcon_Slugma[];
extern const u8 gMonFootprint_Slugma[];
extern const u32 gMonFrontPic_Magcargo[];
extern const u32 gMonPalette_Magcargo[];
extern const u32 gMonBackPic_Magcargo[];
extern const u32 gMonShinyPalette_Magcargo[];
extern const u8 gMonIcon_Magcargo[];
extern const u8 gMonFootprint_Magcargo[];
extern const u32 gMonFrontPic_Swinub[];
extern const u32 gMonPalette_Swinub[];
extern const u32 gMonBackPic_Swinub[];
extern const u32 gMonShinyPalette_Swinub[];
extern const u8 gMonIcon_Swinub[];
extern const u8 gMonFootprint_Swinub[];
extern const u32 gMonFrontPic_Piloswine[];
extern const u32 gMonPalette_Piloswine[];
extern const u32 gMonBackPic_Piloswine[];
extern const u32 gMonShinyPalette_Piloswine[];
extern const u8 gMonIcon_Piloswine[];
extern const u8 gMonFootprint_Piloswine[];
extern const u32 gMonFrontPic_Corsola[];
extern const u32 gMonPalette_Corsola[];
extern const u32 gMonBackPic_Corsola[];
extern const u32 gMonShinyPalette_Corsola[];
extern const u8 gMonIcon_Corsola[];
extern const u8 gMonFootprint_Corsola[];
extern const u32 gMonFrontPic_Remoraid[];
extern const u32 gMonPalette_Remoraid[];
extern const u32 gMonBackPic_Remoraid[];
extern const u32 gMonShinyPalette_Remoraid[];
extern const u8 gMonIcon_Remoraid[];
extern const u8 gMonFootprint_Remoraid[];
extern const u32 gMonFrontPic_Octillery[];
extern const u32 gMonPalette_Octillery[];
extern const u32 gMonBackPic_Octillery[];
extern const u32 gMonShinyPalette_Octillery[];
extern const u8 gMonIcon_Octillery[];
extern const u8 gMonFootprint_Octillery[];
extern const u32 gMonFrontPic_Delibird[];
extern const u32 gMonPalette_Delibird[];
extern const u32 gMonBackPic_Delibird[];
extern const u32 gMonShinyPalette_Delibird[];
extern const u8 gMonIcon_Delibird[];
extern const u8 gMonFootprint_Delibird[];
extern const u32 gMonFrontPic_Mantine[];
extern const u32 gMonPalette_Mantine[];
extern const u32 gMonBackPic_Mantine[];
extern const u32 gMonShinyPalette_Mantine[];
extern const u8 gMonIcon_Mantine[];
extern const u8 gMonFootprint_Mantine[];
extern const u32 gMonFrontPic_Skarmory[];
extern const u32 gMonPalette_Skarmory[];
extern const u32 gMonBackPic_Skarmory[];
extern const u32 gMonShinyPalette_Skarmory[];
extern const u8 gMonIcon_Skarmory[];
extern const u8 gMonFootprint_Skarmory[];
extern const u32 gMonFrontPic_Houndour[];
extern const u32 gMonPalette_Houndour[];
extern const u32 gMonBackPic_Houndour[];
extern const u32 gMonShinyPalette_Houndour[];
extern const u8 gMonIcon_Houndour[];
extern const u8 gMonFootprint_Houndour[];
extern const u32 gMonFrontPic_Houndoom[];
extern const u32 gMonPalette_Houndoom[];
extern const u32 gMonBackPic_Houndoom[];
extern const u32 gMonShinyPalette_Houndoom[];
extern const u8 gMonIcon_Houndoom[];
extern const u8 gMonFootprint_Houndoom[];
extern const u32 gMonFrontPic_Kingdra[];
extern const u32 gMonPalette_Kingdra[];
extern const u32 gMonBackPic_Kingdra[];
extern const u32 gMonShinyPalette_Kingdra[];
extern const u8 gMonIcon_Kingdra[];
extern const u8 gMonFootprint_Kingdra[];
extern const u32 gMonFrontPic_Phanpy[];
extern const u32 gMonPalette_Phanpy[];
extern const u32 gMonBackPic_Phanpy[];
extern const u32 gMonShinyPalette_Phanpy[];
extern const u8 gMonIcon_Phanpy[];
extern const u8 gMonFootprint_Phanpy[];
extern const u32 gMonFrontPic_Donphan[];
extern const u32 gMonPalette_Donphan[];
extern const u32 gMonBackPic_Donphan[];
extern const u32 gMonShinyPalette_Donphan[];
extern const u8 gMonIcon_Donphan[];
extern const u8 gMonFootprint_Donphan[];
extern const u32 gMonFrontPic_Porygon2[];
extern const u32 gMonPalette_Porygon2[];
extern const u32 gMonBackPic_Porygon2[];
extern const u32 gMonShinyPalette_Porygon2[];
extern const u8 gMonIcon_Porygon2[];
extern const u8 gMonFootprint_Porygon2[];
extern const u32 gMonFrontPic_Stantler[];
extern const u32 gMonPalette_Stantler[];
extern const u32 gMonBackPic_Stantler[];
extern const u32 gMonShinyPalette_Stantler[];
extern const u8 gMonIcon_Stantler[];
extern const u8 gMonFootprint_Stantler[];
extern const u32 gMonFrontPic_Smeargle[];
extern const u32 gMonPalette_Smeargle[];
extern const u32 gMonBackPic_Smeargle[];
extern const u32 gMonShinyPalette_Smeargle[];
extern const u8 gMonIcon_Smeargle[];
extern const u8 gMonFootprint_Smeargle[];
extern const u32 gMonFrontPic_Tyrogue[];
extern const u32 gMonPalette_Tyrogue[];
extern const u32 gMonBackPic_Tyrogue[];
extern const u32 gMonShinyPalette_Tyrogue[];
extern const u8 gMonIcon_Tyrogue[];
extern const u8 gMonFootprint_Tyrogue[];
extern const u32 gMonFrontPic_Hitmontop[];
extern const u32 gMonPalette_Hitmontop[];
extern const u32 gMonBackPic_Hitmontop[];
extern const u32 gMonShinyPalette_Hitmontop[];
extern const u8 gMonIcon_Hitmontop[];
extern const u8 gMonFootprint_Hitmontop[];
extern const u32 gMonFrontPic_Smoochum[];
extern const u32 gMonPalette_Smoochum[];
extern const u32 gMonBackPic_Smoochum[];
extern const u32 gMonShinyPalette_Smoochum[];
extern const u8 gMonIcon_Smoochum[];
extern const u8 gMonFootprint_Smoochum[];
extern const u32 gMonFrontPic_Elekid[];
extern const u32 gMonPalette_Elekid[];
extern const u32 gMonBackPic_Elekid[];
extern const u32 gMonShinyPalette_Elekid[];
extern const u8 gMonIcon_Elekid[];
extern const u8 gMonFootprint_Elekid[];
extern const u32 gMonFrontPic_Magby[];
extern const u32 gMonPalette_Magby[];
extern const u32 gMonBackPic_Magby[];
extern const u32 gMonShinyPalette_Magby[];
extern const u8 gMonIcon_Magby[];
extern const u8 gMonFootprint_Magby[];
extern const u32 gMonFrontPic_Miltank[];
extern const u32 gMonPalette_Miltank[];
extern const u32 gMonBackPic_Miltank[];
extern const u32 gMonShinyPalette_Miltank[];
extern const u8 gMonIcon_Miltank[];
extern const u8 gMonFootprint_Miltank[];
extern const u32 gMonFrontPic_Blissey[];
extern const u32 gMonPalette_Blissey[];
extern const u32 gMonBackPic_Blissey[];
extern const u32 gMonShinyPalette_Blissey[];
extern const u8 gMonIcon_Blissey[];
extern const u8 gMonFootprint_Blissey[];
extern const u32 gMonFrontPic_Raikou[];
extern const u32 gMonPalette_Raikou[];
extern const u32 gMonBackPic_Raikou[];
extern const u32 gMonShinyPalette_Raikou[];
extern const u8 gMonIcon_Raikou[];
extern const u8 gMonFootprint_Raikou[];
extern const u32 gMonFrontPic_Entei[];
extern const u32 gMonPalette_Entei[];
extern const u32 gMonBackPic_Entei[];
extern const u32 gMonShinyPalette_Entei[];
extern const u8 gMonIcon_Entei[];
extern const u8 gMonFootprint_Entei[];
extern const u32 gMonFrontPic_Suicune[];
extern const u32 gMonPalette_Suicune[];
extern const u32 gMonBackPic_Suicune[];
extern const u32 gMonShinyPalette_Suicune[];
extern const u8 gMonIcon_Suicune[];
extern const u8 gMonFootprint_Suicune[];
extern const u32 gMonFrontPic_Larvitar[];
extern const u32 gMonPalette_Larvitar[];
extern const u32 gMonBackPic_Larvitar[];
extern const u32 gMonShinyPalette_Larvitar[];
extern const u8 gMonIcon_Larvitar[];
extern const u8 gMonFootprint_Larvitar[];
extern const u32 gMonFrontPic_Pupitar[];
extern const u32 gMonPalette_Pupitar[];
extern const u32 gMonBackPic_Pupitar[];
extern const u32 gMonShinyPalette_Pupitar[];
extern const u8 gMonIcon_Pupitar[];
extern const u8 gMonFootprint_Pupitar[];
extern const u32 gMonFrontPic_Tyranitar[];
extern const u32 gMonPalette_Tyranitar[];
extern const u32 gMonBackPic_Tyranitar[];
extern const u32 gMonShinyPalette_Tyranitar[];
extern const u8 gMonIcon_Tyranitar[];
extern const u8 gMonFootprint_Tyranitar[];
extern const u32 gMonFrontPic_Lugia[];
extern const u32 gMonPalette_Lugia[];
extern const u32 gMonBackPic_Lugia[];
extern const u32 gMonShinyPalette_Lugia[];
extern const u8 gMonIcon_Lugia[];
extern const u8 gMonFootprint_Lugia[];
extern const u32 gMonFrontPic_HoOh[];
extern const u32 gMonPalette_HoOh[];
extern const u32 gMonBackPic_HoOh[];
extern const u32 gMonShinyPalette_HoOh[];
extern const u8 gMonIcon_HoOh[];
extern const u8 gMonFootprint_HoOh[];
extern const u32 gMonFrontPic_Celebi[];
extern const u32 gMonPalette_Celebi[];
extern const u32 gMonBackPic_Celebi[];
extern const u32 gMonShinyPalette_Celebi[];
extern const u8 gMonIcon_Celebi[];
extern const u8 gMonFootprint_Celebi[];
extern const u32 gMonFrontPic_Treecko[];
extern const u32 gMonPalette_Treecko[];
extern const u32 gMonBackPic_Treecko[];
extern const u32 gMonShinyPalette_Treecko[];
extern const u8 gMonIcon_Treecko[];
extern const u8 gMonFootprint_Treecko[];
extern const u32 gMonFrontPic_Grovyle[];
extern const u32 gMonPalette_Grovyle[];
extern const u32 gMonBackPic_Grovyle[];
extern const u32 gMonShinyPalette_Grovyle[];
extern const u8 gMonIcon_Grovyle[];
extern const u8 gMonFootprint_Grovyle[];
extern const u32 gMonFrontPic_Sceptile[];
extern const u32 gMonPalette_Sceptile[];
extern const u32 gMonBackPic_Sceptile[];
extern const u32 gMonShinyPalette_Sceptile[];
extern const u8 gMonIcon_Sceptile[];
extern const u8 gMonFootprint_Sceptile[];
extern const u32 gMonFrontPic_Torchic[];
extern const u32 gMonPalette_Torchic[];
extern const u32 gMonBackPic_Torchic[];
extern const u32 gMonShinyPalette_Torchic[];
extern const u8 gMonIcon_Torchic[];
extern const u8 gMonFootprint_Torchic[];
extern const u32 gMonFrontPic_Combusken[];
extern const u32 gMonPalette_Combusken[];
extern const u32 gMonBackPic_Combusken[];
extern const u32 gMonShinyPalette_Combusken[];
extern const u8 gMonIcon_Combusken[];
extern const u8 gMonFootprint_Combusken[];
extern const u32 gMonFrontPic_Blaziken[];
extern const u32 gMonPalette_Blaziken[];
extern const u32 gMonBackPic_Blaziken[];
extern const u32 gMonShinyPalette_Blaziken[];
extern const u8 gMonIcon_Blaziken[];
extern const u8 gMonFootprint_Blaziken[];
extern const u32 gMonFrontPic_Mudkip[];
extern const u32 gMonPalette_Mudkip[];
extern const u32 gMonBackPic_Mudkip[];
extern const u32 gMonShinyPalette_Mudkip[];
extern const u8 gMonIcon_Mudkip[];
extern const u8 gMonFootprint_Mudkip[];
extern const u32 gMonFrontPic_Marshtomp[];
extern const u32 gMonPalette_Marshtomp[];
extern const u32 gMonBackPic_Marshtomp[];
extern const u32 gMonShinyPalette_Marshtomp[];
extern const u8 gMonIcon_Marshtomp[];
extern const u8 gMonFootprint_Marshtomp[];
extern const u32 gMonFrontPic_Swampert[];
extern const u32 gMonPalette_Swampert[];
extern const u32 gMonBackPic_Swampert[];
extern const u32 gMonShinyPalette_Swampert[];
extern const u8 gMonIcon_Swampert[];
extern const u8 gMonFootprint_Swampert[];
extern const u32 gMonFrontPic_Poochyena[];
extern const u32 gMonPalette_Poochyena[];
extern const u32 gMonBackPic_Poochyena[];
extern const u32 gMonShinyPalette_Poochyena[];
extern const u8 gMonIcon_Poochyena[];
extern const u8 gMonFootprint_Poochyena[];
extern const u32 gMonFrontPic_Mightyena[];
extern const u32 gMonPalette_Mightyena[];
extern const u32 gMonBackPic_Mightyena[];
extern const u32 gMonShinyPalette_Mightyena[];
extern const u8 gMonIcon_Mightyena[];
extern const u8 gMonFootprint_Mightyena[];
extern const u32 gMonFrontPic_Zigzagoon[];
extern const u32 gMonPalette_Zigzagoon[];
extern const u32 gMonBackPic_Zigzagoon[];
extern const u32 gMonShinyPalette_Zigzagoon[];
extern const u8 gMonIcon_Zigzagoon[];
extern const u8 gMonFootprint_Zigzagoon[];
extern const u32 gMonFrontPic_Linoone[];
extern const u32 gMonPalette_Linoone[];
extern const u32 gMonBackPic_Linoone[];
extern const u32 gMonShinyPalette_Linoone[];
extern const u8 gMonIcon_Linoone[];
extern const u8 gMonFootprint_Linoone[];
extern const u32 gMonFrontPic_Wurmple[];
extern const u32 gMonPalette_Wurmple[];
extern const u32 gMonBackPic_Wurmple[];
extern const u32 gMonShinyPalette_Wurmple[];
extern const u8 gMonIcon_Wurmple[];
extern const u8 gMonFootprint_Wurmple[];
extern const u32 gMonFrontPic_Silcoon[];
extern const u32 gMonPalette_Silcoon[];
extern const u32 gMonBackPic_Silcoon[];
extern const u32 gMonShinyPalette_Silcoon[];
extern const u8 gMonIcon_Silcoon[];
extern const u8 gMonFootprint_Silcoon[];
extern const u32 gMonFrontPic_Beautifly[];
extern const u32 gMonPalette_Beautifly[];
extern const u32 gMonBackPic_Beautifly[];
extern const u32 gMonShinyPalette_Beautifly[];
extern const u8 gMonIcon_Beautifly[];
extern const u8 gMonFootprint_Beautifly[];
extern const u32 gMonFrontPic_Cascoon[];
extern const u32 gMonPalette_Cascoon[];
extern const u32 gMonBackPic_Cascoon[];
extern const u32 gMonShinyPalette_Cascoon[];
extern const u8 gMonIcon_Cascoon[];
extern const u8 gMonFootprint_Cascoon[];
extern const u32 gMonFrontPic_Dustox[];
extern const u32 gMonPalette_Dustox[];
extern const u32 gMonBackPic_Dustox[];
extern const u32 gMonShinyPalette_Dustox[];
extern const u8 gMonIcon_Dustox[];
extern const u8 gMonFootprint_Dustox[];
extern const u32 gMonFrontPic_Lotad[];
extern const u32 gMonPalette_Lotad[];
extern const u32 gMonBackPic_Lotad[];
extern const u32 gMonShinyPalette_Lotad[];
extern const u8 gMonIcon_Lotad[];
extern const u8 gMonFootprint_Lotad[];
extern const u32 gMonFrontPic_Lombre[];
extern const u32 gMonPalette_Lombre[];
extern const u32 gMonBackPic_Lombre[];
extern const u32 gMonShinyPalette_Lombre[];
extern const u8 gMonIcon_Lombre[];
extern const u8 gMonFootprint_Lombre[];
extern const u32 gMonFrontPic_Ludicolo[];
extern const u32 gMonPalette_Ludicolo[];
extern const u32 gMonBackPic_Ludicolo[];
extern const u32 gMonShinyPalette_Ludicolo[];
extern const u8 gMonIcon_Ludicolo[];
extern const u8 gMonFootprint_Ludicolo[];
extern const u32 gMonFrontPic_Seedot[];
extern const u32 gMonPalette_Seedot[];
extern const u32 gMonBackPic_Seedot[];
extern const u32 gMonShinyPalette_Seedot[];
extern const u8 gMonIcon_Seedot[];
extern const u8 gMonFootprint_Seedot[];
extern const u32 gMonFrontPic_Nuzleaf[];
extern const u32 gMonPalette_Nuzleaf[];
extern const u32 gMonBackPic_Nuzleaf[];
extern const u32 gMonShinyPalette_Nuzleaf[];
extern const u8 gMonIcon_Nuzleaf[];
extern const u8 gMonFootprint_Nuzleaf[];
extern const u32 gMonFrontPic_Shiftry[];
extern const u32 gMonPalette_Shiftry[];
extern const u32 gMonBackPic_Shiftry[];
extern const u32 gMonShinyPalette_Shiftry[];
extern const u8 gMonIcon_Shiftry[];
extern const u8 gMonFootprint_Shiftry[];
extern const u32 gMonFrontPic_Nincada[];
extern const u32 gMonPalette_Nincada[];
extern const u32 gMonBackPic_Nincada[];
extern const u32 gMonShinyPalette_Nincada[];
extern const u8 gMonIcon_Nincada[];
extern const u8 gMonFootprint_Nincada[];
extern const u32 gMonFrontPic_Ninjask[];
extern const u32 gMonPalette_Ninjask[];
extern const u32 gMonBackPic_Ninjask[];
extern const u32 gMonShinyPalette_Ninjask[];
extern const u8 gMonIcon_Ninjask[];
extern const u8 gMonFootprint_Ninjask[];
extern const u32 gMonFrontPic_Shedinja[];
extern const u32 gMonPalette_Shedinja[];
extern const u32 gMonBackPic_Shedinja[];
extern const u32 gMonShinyPalette_Shedinja[];
extern const u8 gMonIcon_Shedinja[];
extern const u8 gMonFootprint_Shedinja[];
extern const u32 gMonFrontPic_Taillow[];
extern const u32 gMonPalette_Taillow[];
extern const u32 gMonBackPic_Taillow[];
extern const u32 gMonShinyPalette_Taillow[];
extern const u8 gMonIcon_Taillow[];
extern const u8 gMonFootprint_Taillow[];
extern const u32 gMonFrontPic_Swellow[];
extern const u32 gMonPalette_Swellow[];
extern const u32 gMonBackPic_Swellow[];
extern const u32 gMonShinyPalette_Swellow[];
extern const u8 gMonIcon_Swellow[];
extern const u8 gMonFootprint_Swellow[];
extern const u32 gMonFrontPic_Shroomish[];
extern const u32 gMonPalette_Shroomish[];
extern const u32 gMonBackPic_Shroomish[];
extern const u32 gMonShinyPalette_Shroomish[];
extern const u8 gMonIcon_Shroomish[];
extern const u8 gMonFootprint_Shroomish[];
extern const u32 gMonFrontPic_Breloom[];
extern const u32 gMonPalette_Breloom[];
extern const u32 gMonBackPic_Breloom[];
extern const u32 gMonShinyPalette_Breloom[];
extern const u8 gMonIcon_Breloom[];
extern const u8 gMonFootprint_Breloom[];
extern const u32 gMonFrontPic_Spinda[];
extern const u32 gMonPalette_Spinda[];
extern const u32 gMonBackPic_Spinda[];
extern const u32 gMonShinyPalette_Spinda[];
extern const u8 gMonIcon_Spinda[];
extern const u8 gMonFootprint_Spinda[];
extern const u32 gMonFrontPic_Wingull[];
extern const u32 gMonPalette_Wingull[];
extern const u32 gMonBackPic_Wingull[];
extern const u32 gMonShinyPalette_Wingull[];
extern const u8 gMonIcon_Wingull[];
extern const u8 gMonFootprint_Wingull[];
extern const u32 gMonFrontPic_Pelipper[];
extern const u32 gMonPalette_Pelipper[];
extern const u32 gMonBackPic_Pelipper[];
extern const u32 gMonShinyPalette_Pelipper[];
extern const u8 gMonIcon_Pelipper[];
extern const u8 gMonFootprint_Pelipper[];
extern const u32 gMonFrontPic_Surskit[];
extern const u32 gMonPalette_Surskit[];
extern const u32 gMonBackPic_Surskit[];
extern const u32 gMonShinyPalette_Surskit[];
extern const u8 gMonIcon_Surskit[];
extern const u8 gMonFootprint_Surskit[];
extern const u32 gMonFrontPic_Masquerain[];
extern const u32 gMonPalette_Masquerain[];
extern const u32 gMonBackPic_Masquerain[];
extern const u32 gMonShinyPalette_Masquerain[];
extern const u8 gMonIcon_Masquerain[];
extern const u8 gMonFootprint_Masquerain[];
extern const u32 gMonFrontPic_Wailmer[];
extern const u32 gMonPalette_Wailmer[];
extern const u32 gMonBackPic_Wailmer[];
extern const u32 gMonShinyPalette_Wailmer[];
extern const u8 gMonIcon_Wailmer[];
extern const u8 gMonFootprint_Wailmer[];
extern const u32 gMonFrontPic_Wailord[];
extern const u32 gMonPalette_Wailord[];
extern const u32 gMonBackPic_Wailord[];
extern const u32 gMonShinyPalette_Wailord[];
extern const u8 gMonIcon_Wailord[];
extern const u8 gMonFootprint_Wailord[];
extern const u32 gMonFrontPic_Skitty[];
extern const u32 gMonPalette_Skitty[];
extern const u32 gMonBackPic_Skitty[];
extern const u32 gMonShinyPalette_Skitty[];
extern const u8 gMonIcon_Skitty[];
extern const u8 gMonFootprint_Skitty[];
extern const u32 gMonFrontPic_Delcatty[];
extern const u32 gMonPalette_Delcatty[];
extern const u32 gMonBackPic_Delcatty[];
extern const u32 gMonShinyPalette_Delcatty[];
extern const u8 gMonIcon_Delcatty[];
extern const u8 gMonFootprint_Delcatty[];
extern const u32 gMonFrontPic_Kecleon[];
extern const u32 gMonPalette_Kecleon[];
extern const u32 gMonBackPic_Kecleon[];
extern const u32 gMonShinyPalette_Kecleon[];
extern const u8 gMonIcon_Kecleon[];
extern const u8 gMonFootprint_Kecleon[];
extern const u32 gMonFrontPic_Baltoy[];
extern const u32 gMonPalette_Baltoy[];
extern const u32 gMonBackPic_Baltoy[];
extern const u32 gMonShinyPalette_Baltoy[];
extern const u8 gMonIcon_Baltoy[];
extern const u8 gMonFootprint_Baltoy[];
extern const u32 gMonFrontPic_Claydol[];
extern const u32 gMonPalette_Claydol[];
extern const u32 gMonBackPic_Claydol[];
extern const u32 gMonShinyPalette_Claydol[];
extern const u8 gMonIcon_Claydol[];
extern const u8 gMonFootprint_Claydol[];
extern const u32 gMonFrontPic_Nosepass[];
extern const u32 gMonPalette_Nosepass[];
extern const u32 gMonBackPic_Nosepass[];
extern const u32 gMonShinyPalette_Nosepass[];
extern const u8 gMonIcon_Nosepass[];
extern const u8 gMonFootprint_Nosepass[];
extern const u32 gMonFrontPic_Torkoal[];
extern const u32 gMonPalette_Torkoal[];
extern const u32 gMonBackPic_Torkoal[];
extern const u32 gMonShinyPalette_Torkoal[];
extern const u8 gMonIcon_Torkoal[];
extern const u8 gMonFootprint_Torkoal[];
extern const u32 gMonFrontPic_Sableye[];
extern const u32 gMonPalette_Sableye[];
extern const u32 gMonBackPic_Sableye[];
extern const u32 gMonShinyPalette_Sableye[];
extern const u8 gMonIcon_Sableye[];
extern const u8 gMonFootprint_Sableye[];
extern const u32 gMonFrontPic_Barboach[];
extern const u32 gMonPalette_Barboach[];
extern const u32 gMonBackPic_Barboach[];
extern const u32 gMonShinyPalette_Barboach[];
extern const u8 gMonIcon_Barboach[];
extern const u8 gMonFootprint_Barboach[];
extern const u32 gMonFrontPic_Whiscash[];
extern const u32 gMonPalette_Whiscash[];
extern const u32 gMonBackPic_Whiscash[];
extern const u32 gMonShinyPalette_Whiscash[];
extern const u8 gMonIcon_Whiscash[];
extern const u8 gMonFootprint_Whiscash[];
extern const u32 gMonFrontPic_Luvdisc[];
extern const u32 gMonPalette_Luvdisc[];
extern const u32 gMonBackPic_Luvdisc[];
extern const u32 gMonShinyPalette_Luvdisc[];
extern const u8 gMonIcon_Luvdisc[];
extern const u8 gMonFootprint_Luvdisc[];
extern const u32 gMonFrontPic_Corphish[];
extern const u32 gMonPalette_Corphish[];
extern const u32 gMonBackPic_Corphish[];
extern const u32 gMonShinyPalette_Corphish[];
extern const u8 gMonIcon_Corphish[];
extern const u8 gMonFootprint_Corphish[];
extern const u32 gMonFrontPic_Crawdaunt[];
extern const u32 gMonPalette_Crawdaunt[];
extern const u32 gMonBackPic_Crawdaunt[];
extern const u32 gMonShinyPalette_Crawdaunt[];
extern const u8 gMonIcon_Crawdaunt[];
extern const u8 gMonFootprint_Crawdaunt[];
extern const u32 gMonFrontPic_Feebas[];
extern const u32 gMonPalette_Feebas[];
extern const u32 gMonBackPic_Feebas[];
extern const u32 gMonShinyPalette_Feebas[];
extern const u8 gMonIcon_Feebas[];
extern const u8 gMonFootprint_Feebas[];
extern const u32 gMonFrontPic_Milotic[];
extern const u32 gMonPalette_Milotic[];
extern const u32 gMonBackPic_Milotic[];
extern const u32 gMonShinyPalette_Milotic[];
extern const u8 gMonIcon_Milotic[];
extern const u8 gMonFootprint_Milotic[];
extern const u32 gMonFrontPic_Carvanha[];
extern const u32 gMonPalette_Carvanha[];
extern const u32 gMonBackPic_Carvanha[];
extern const u32 gMonShinyPalette_Carvanha[];
extern const u8 gMonIcon_Carvanha[];
extern const u8 gMonFootprint_Carvanha[];
extern const u32 gMonFrontPic_Sharpedo[];
extern const u32 gMonPalette_Sharpedo[];
extern const u32 gMonBackPic_Sharpedo[];
extern const u32 gMonShinyPalette_Sharpedo[];
extern const u8 gMonIcon_Sharpedo[];
extern const u8 gMonFootprint_Sharpedo[];
extern const u32 gMonFrontPic_Trapinch[];
extern const u32 gMonPalette_Trapinch[];
extern const u32 gMonBackPic_Trapinch[];
extern const u32 gMonShinyPalette_Trapinch[];
extern const u8 gMonIcon_Trapinch[];
extern const u8 gMonFootprint_Trapinch[];
extern const u32 gMonFrontPic_Vibrava[];
extern const u32 gMonPalette_Vibrava[];
extern const u32 gMonBackPic_Vibrava[];
extern const u32 gMonShinyPalette_Vibrava[];
extern const u8 gMonIcon_Vibrava[];
extern const u8 gMonFootprint_Vibrava[];
extern const u32 gMonFrontPic_Flygon[];
extern const u32 gMonPalette_Flygon[];
extern const u32 gMonBackPic_Flygon[];
extern const u32 gMonShinyPalette_Flygon[];
extern const u8 gMonIcon_Flygon[];
extern const u8 gMonFootprint_Flygon[];
extern const u32 gMonFrontPic_Makuhita[];
extern const u32 gMonPalette_Makuhita[];
extern const u32 gMonBackPic_Makuhita[];
extern const u32 gMonShinyPalette_Makuhita[];
extern const u8 gMonIcon_Makuhita[];
extern const u8 gMonFootprint_Makuhita[];
extern const u32 gMonFrontPic_Hariyama[];
extern const u32 gMonPalette_Hariyama[];
extern const u32 gMonBackPic_Hariyama[];
extern const u32 gMonShinyPalette_Hariyama[];
extern const u8 gMonIcon_Hariyama[];
extern const u8 gMonFootprint_Hariyama[];
extern const u32 gMonFrontPic_Electrike[];
extern const u32 gMonPalette_Electrike[];
extern const u32 gMonBackPic_Electrike[];
extern const u32 gMonShinyPalette_Electrike[];
extern const u8 gMonIcon_Electrike[];
extern const u8 gMonFootprint_Electrike[];
extern const u32 gMonFrontPic_Manectric[];
extern const u32 gMonPalette_Manectric[];
extern const u32 gMonBackPic_Manectric[];
extern const u32 gMonShinyPalette_Manectric[];
extern const u8 gMonIcon_Manectric[];
extern const u8 gMonFootprint_Manectric[];
extern const u32 gMonFrontPic_Numel[];
extern const u32 gMonPalette_Numel[];
extern const u32 gMonBackPic_Numel[];
extern const u32 gMonShinyPalette_Numel[];
extern const u8 gMonIcon_Numel[];
extern const u8 gMonFootprint_Numel[];
extern const u32 gMonFrontPic_Camerupt[];
extern const u32 gMonPalette_Camerupt[];
extern const u32 gMonBackPic_Camerupt[];
extern const u32 gMonShinyPalette_Camerupt[];
extern const u8 gMonIcon_Camerupt[];
extern const u8 gMonFootprint_Camerupt[];
extern const u32 gMonFrontPic_Spheal[];
extern const u32 gMonPalette_Spheal[];
extern const u32 gMonBackPic_Spheal[];
extern const u32 gMonShinyPalette_Spheal[];
extern const u8 gMonIcon_Spheal[];
extern const u8 gMonFootprint_Spheal[];
extern const u32 gMonFrontPic_Sealeo[];
extern const u32 gMonPalette_Sealeo[];
extern const u32 gMonBackPic_Sealeo[];
extern const u32 gMonShinyPalette_Sealeo[];
extern const u8 gMonIcon_Sealeo[];
extern const u8 gMonFootprint_Sealeo[];
extern const u32 gMonFrontPic_Walrein[];
extern const u32 gMonPalette_Walrein[];
extern const u32 gMonBackPic_Walrein[];
extern const u32 gMonShinyPalette_Walrein[];
extern const u8 gMonIcon_Walrein[];
extern const u8 gMonFootprint_Walrein[];
extern const u32 gMonFrontPic_Cacnea[];
extern const u32 gMonPalette_Cacnea[];
extern const u32 gMonBackPic_Cacnea[];
extern const u32 gMonShinyPalette_Cacnea[];
extern const u8 gMonIcon_Cacnea[];
extern const u8 gMonFootprint_Cacnea[];
extern const u32 gMonFrontPic_Cacturne[];
extern const u32 gMonPalette_Cacturne[];
extern const u32 gMonBackPic_Cacturne[];
extern const u32 gMonShinyPalette_Cacturne[];
extern const u8 gMonIcon_Cacturne[];
extern const u8 gMonFootprint_Cacturne[];
extern const u32 gMonFrontPic_Snorunt[];
extern const u32 gMonPalette_Snorunt[];
extern const u32 gMonBackPic_Snorunt[];
extern const u32 gMonShinyPalette_Snorunt[];
extern const u8 gMonIcon_Snorunt[];
extern const u8 gMonFootprint_Snorunt[];
extern const u32 gMonFrontPic_Glalie[];
extern const u32 gMonPalette_Glalie[];
extern const u32 gMonBackPic_Glalie[];
extern const u32 gMonShinyPalette_Glalie[];
extern const u8 gMonIcon_Glalie[];
extern const u8 gMonFootprint_Glalie[];
extern const u32 gMonFrontPic_Lunatone[];
extern const u32 gMonPalette_Lunatone[];
extern const u32 gMonBackPic_Lunatone[];
extern const u32 gMonShinyPalette_Lunatone[];
extern const u8 gMonIcon_Lunatone[];
extern const u8 gMonFootprint_Lunatone[];
extern const u32 gMonFrontPic_Solrock[];
extern const u32 gMonPalette_Solrock[];
extern const u32 gMonBackPic_Solrock[];
extern const u32 gMonShinyPalette_Solrock[];
extern const u8 gMonIcon_Solrock[];
extern const u8 gMonFootprint_Solrock[];
extern const u32 gMonFrontPic_Azurill[];
extern const u32 gMonPalette_Azurill[];
extern const u32 gMonBackPic_Azurill[];
extern const u32 gMonShinyPalette_Azurill[];
extern const u8 gMonIcon_Azurill[];
extern const u8 gMonFootprint_Azurill[];
extern const u32 gMonFrontPic_Spoink[];
extern const u32 gMonPalette_Spoink[];
extern const u32 gMonBackPic_Spoink[];
extern const u32 gMonShinyPalette_Spoink[];
extern const u8 gMonIcon_Spoink[];
extern const u8 gMonFootprint_Spoink[];
extern const u32 gMonFrontPic_Grumpig[];
extern const u32 gMonPalette_Grumpig[];
extern const u32 gMonBackPic_Grumpig[];
extern const u32 gMonShinyPalette_Grumpig[];
extern const u8 gMonIcon_Grumpig[];
extern const u8 gMonFootprint_Grumpig[];
extern const u32 gMonFrontPic_Plusle[];
extern const u32 gMonPalette_Plusle[];
extern const u32 gMonBackPic_Plusle[];
extern const u32 gMonShinyPalette_Plusle[];
extern const u8 gMonIcon_Plusle[];
extern const u8 gMonFootprint_Plusle[];
extern const u32 gMonFrontPic_Minun[];
extern const u32 gMonPalette_Minun[];
extern const u32 gMonBackPic_Minun[];
extern const u32 gMonShinyPalette_Minun[];
extern const u8 gMonIcon_Minun[];
extern const u8 gMonFootprint_Minun[];
extern const u32 gMonFrontPic_Mawile[];
extern const u32 gMonPalette_Mawile[];
extern const u32 gMonBackPic_Mawile[];
extern const u32 gMonShinyPalette_Mawile[];
extern const u8 gMonIcon_Mawile[];
extern const u8 gMonFootprint_Mawile[];
extern const u32 gMonFrontPic_Meditite[];
extern const u32 gMonPalette_Meditite[];
extern const u32 gMonBackPic_Meditite[];
extern const u32 gMonShinyPalette_Meditite[];
extern const u8 gMonIcon_Meditite[];
extern const u8 gMonFootprint_Meditite[];
extern const u32 gMonFrontPic_Medicham[];
extern const u32 gMonPalette_Medicham[];
extern const u32 gMonBackPic_Medicham[];
extern const u32 gMonShinyPalette_Medicham[];
extern const u8 gMonIcon_Medicham[];
extern const u8 gMonFootprint_Medicham[];
extern const u32 gMonFrontPic_Swablu[];
extern const u32 gMonPalette_Swablu[];
extern const u32 gMonBackPic_Swablu[];
extern const u32 gMonShinyPalette_Swablu[];
extern const u8 gMonIcon_Swablu[];
extern const u8 gMonFootprint_Swablu[];
extern const u32 gMonFrontPic_Altaria[];
extern const u32 gMonPalette_Altaria[];
extern const u32 gMonBackPic_Altaria[];
extern const u32 gMonShinyPalette_Altaria[];
extern const u8 gMonIcon_Altaria[];
extern const u8 gMonFootprint_Altaria[];
extern const u32 gMonFrontPic_Wynaut[];
extern const u32 gMonPalette_Wynaut[];
extern const u32 gMonBackPic_Wynaut[];
extern const u32 gMonShinyPalette_Wynaut[];
extern const u8 gMonIcon_Wynaut[];
extern const u8 gMonFootprint_Wynaut[];
extern const u32 gMonFrontPic_Duskull[];
extern const u32 gMonPalette_Duskull[];
extern const u32 gMonBackPic_Duskull[];
extern const u32 gMonShinyPalette_Duskull[];
extern const u8 gMonIcon_Duskull[];
extern const u8 gMonFootprint_Duskull[];
extern const u32 gMonFrontPic_Dusclops[];
extern const u32 gMonPalette_Dusclops[];
extern const u32 gMonBackPic_Dusclops[];
extern const u32 gMonShinyPalette_Dusclops[];
extern const u8 gMonIcon_Dusclops[];
extern const u8 gMonFootprint_Dusclops[];
extern const u32 gMonFrontPic_Roselia[];
extern const u32 gMonPalette_Roselia[];
extern const u32 gMonBackPic_Roselia[];
extern const u32 gMonShinyPalette_Roselia[];
extern const u8 gMonIcon_Roselia[];
extern const u8 gMonFootprint_Roselia[];
extern const u32 gMonFrontPic_Slakoth[];
extern const u32 gMonPalette_Slakoth[];
extern const u32 gMonBackPic_Slakoth[];
extern const u32 gMonShinyPalette_Slakoth[];
extern const u8 gMonIcon_Slakoth[];
extern const u8 gMonFootprint_Slakoth[];
extern const u32 gMonFrontPic_Vigoroth[];
extern const u32 gMonPalette_Vigoroth[];
extern const u32 gMonBackPic_Vigoroth[];
extern const u32 gMonShinyPalette_Vigoroth[];
extern const u8 gMonIcon_Vigoroth[];
extern const u8 gMonFootprint_Vigoroth[];
extern const u32 gMonFrontPic_Slaking[];
extern const u32 gMonPalette_Slaking[];
extern const u32 gMonBackPic_Slaking[];
extern const u32 gMonShinyPalette_Slaking[];
extern const u8 gMonIcon_Slaking[];
extern const u8 gMonFootprint_Slaking[];
extern const u32 gMonFrontPic_Gulpin[];
extern const u32 gMonPalette_Gulpin[];
extern const u32 gMonBackPic_Gulpin[];
extern const u32 gMonShinyPalette_Gulpin[];
extern const u8 gMonIcon_Gulpin[];
extern const u8 gMonFootprint_Gulpin[];
extern const u32 gMonFrontPic_Swalot[];
extern const u32 gMonPalette_Swalot[];
extern const u32 gMonBackPic_Swalot[];
extern const u32 gMonShinyPalette_Swalot[];
extern const u8 gMonIcon_Swalot[];
extern const u8 gMonFootprint_Swalot[];
extern const u32 gMonFrontPic_Tropius[];
extern const u32 gMonPalette_Tropius[];
extern const u32 gMonBackPic_Tropius[];
extern const u32 gMonShinyPalette_Tropius[];
extern const u8 gMonIcon_Tropius[];
extern const u8 gMonFootprint_Tropius[];
extern const u32 gMonFrontPic_Whismur[];
extern const u32 gMonPalette_Whismur[];
extern const u32 gMonBackPic_Whismur[];
extern const u32 gMonShinyPalette_Whismur[];
extern const u8 gMonIcon_Whismur[];
extern const u8 gMonFootprint_Whismur[];
extern const u32 gMonFrontPic_Loudred[];
extern const u32 gMonPalette_Loudred[];
extern const u32 gMonBackPic_Loudred[];
extern const u32 gMonShinyPalette_Loudred[];
extern const u8 gMonIcon_Loudred[];
extern const u8 gMonFootprint_Loudred[];
extern const u32 gMonFrontPic_Exploud[];
extern const u32 gMonPalette_Exploud[];
extern const u32 gMonBackPic_Exploud[];
extern const u32 gMonShinyPalette_Exploud[];
extern const u8 gMonIcon_Exploud[];
extern const u8 gMonFootprint_Exploud[];
extern const u32 gMonFrontPic_Clamperl[];
extern const u32 gMonPalette_Clamperl[];
extern const u32 gMonBackPic_Clamperl[];
extern const u32 gMonShinyPalette_Clamperl[];
extern const u8 gMonIcon_Clamperl[];
extern const u8 gMonFootprint_Clamperl[];
extern const u32 gMonFrontPic_Huntail[];
extern const u32 gMonPalette_Huntail[];
extern const u32 gMonBackPic_Huntail[];
extern const u32 gMonShinyPalette_Huntail[];
extern const u8 gMonIcon_Huntail[];
extern const u8 gMonFootprint_Huntail[];
extern const u32 gMonFrontPic_Gorebyss[];
extern const u32 gMonPalette_Gorebyss[];
extern const u32 gMonBackPic_Gorebyss[];
extern const u32 gMonShinyPalette_Gorebyss[];
extern const u8 gMonIcon_Gorebyss[];
extern const u8 gMonFootprint_Gorebyss[];
extern const u32 gMonFrontPic_Absol[];
extern const u32 gMonPalette_Absol[];
extern const u32 gMonBackPic_Absol[];
extern const u32 gMonShinyPalette_Absol[];
extern const u8 gMonIcon_Absol[];
extern const u8 gMonFootprint_Absol[];
extern const u32 gMonFrontPic_Shuppet[];
extern const u32 gMonPalette_Shuppet[];
extern const u32 gMonBackPic_Shuppet[];
extern const u32 gMonShinyPalette_Shuppet[];
extern const u8 gMonIcon_Shuppet[];
extern const u8 gMonFootprint_Shuppet[];
extern const u32 gMonFrontPic_Banette[];
extern const u32 gMonPalette_Banette[];
extern const u32 gMonBackPic_Banette[];
extern const u32 gMonShinyPalette_Banette[];
extern const u8 gMonIcon_Banette[];
extern const u8 gMonFootprint_Banette[];
extern const u32 gMonFrontPic_Seviper[];
extern const u32 gMonPalette_Seviper[];
extern const u32 gMonBackPic_Seviper[];
extern const u32 gMonShinyPalette_Seviper[];
extern const u8 gMonIcon_Seviper[];
extern const u8 gMonFootprint_Seviper[];
extern const u32 gMonFrontPic_Zangoose[];
extern const u32 gMonPalette_Zangoose[];
extern const u32 gMonBackPic_Zangoose[];
extern const u32 gMonShinyPalette_Zangoose[];
extern const u8 gMonIcon_Zangoose[];
extern const u8 gMonFootprint_Zangoose[];
extern const u32 gMonFrontPic_Relicanth[];
extern const u32 gMonPalette_Relicanth[];
extern const u32 gMonBackPic_Relicanth[];
extern const u32 gMonShinyPalette_Relicanth[];
extern const u8 gMonIcon_Relicanth[];
extern const u8 gMonFootprint_Relicanth[];
extern const u32 gMonFrontPic_Aron[];
extern const u32 gMonPalette_Aron[];
extern const u32 gMonBackPic_Aron[];
extern const u32 gMonShinyPalette_Aron[];
extern const u8 gMonIcon_Aron[];
extern const u8 gMonFootprint_Aron[];
extern const u32 gMonFrontPic_Lairon[];
extern const u32 gMonPalette_Lairon[];
extern const u32 gMonBackPic_Lairon[];
extern const u32 gMonShinyPalette_Lairon[];
extern const u8 gMonIcon_Lairon[];
extern const u8 gMonFootprint_Lairon[];
extern const u32 gMonFrontPic_Aggron[];
extern const u32 gMonPalette_Aggron[];
extern const u32 gMonBackPic_Aggron[];
extern const u32 gMonShinyPalette_Aggron[];
extern const u8 gMonIcon_Aggron[];
extern const u8 gMonFootprint_Aggron[];
extern const u32 gMonFrontPic_Castform[];
extern const u32 gMonPalette_Castform[];
extern const u32 gMonBackPic_Castform[];
extern const u32 gMonShinyPalette_Castform[];
extern const u8 gMonIcon_Castform[];
extern const u8 gMonFootprint_Castform[];
extern const u32 gMonFrontPic_Volbeat[];
extern const u32 gMonPalette_Volbeat[];
extern const u32 gMonBackPic_Volbeat[];
extern const u32 gMonShinyPalette_Volbeat[];
extern const u8 gMonIcon_Volbeat[];
extern const u8 gMonFootprint_Volbeat[];
extern const u32 gMonFrontPic_Illumise[];
extern const u32 gMonPalette_Illumise[];
extern const u32 gMonBackPic_Illumise[];
extern const u32 gMonShinyPalette_Illumise[];
extern const u8 gMonIcon_Illumise[];
extern const u8 gMonFootprint_Illumise[];
extern const u32 gMonFrontPic_Lileep[];
extern const u32 gMonPalette_Lileep[];
extern const u32 gMonBackPic_Lileep[];
extern const u32 gMonShinyPalette_Lileep[];
extern const u8 gMonIcon_Lileep[];
extern const u8 gMonFootprint_Lileep[];
extern const u32 gMonFrontPic_Cradily[];
extern const u32 gMonPalette_Cradily[];
extern const u32 gMonBackPic_Cradily[];
extern const u32 gMonShinyPalette_Cradily[];
extern const u8 gMonIcon_Cradily[];
extern const u8 gMonFootprint_Cradily[];
extern const u32 gMonFrontPic_Anorith[];
extern const u32 gMonPalette_Anorith[];
extern const u32 gMonBackPic_Anorith[];
extern const u32 gMonShinyPalette_Anorith[];
extern const u8 gMonIcon_Anorith[];
extern const u8 gMonFootprint_Anorith[];
extern const u32 gMonFrontPic_Armaldo[];
extern const u32 gMonPalette_Armaldo[];
extern const u32 gMonBackPic_Armaldo[];
extern const u32 gMonShinyPalette_Armaldo[];
extern const u8 gMonIcon_Armaldo[];
extern const u8 gMonFootprint_Armaldo[];
extern const u32 gMonFrontPic_Ralts[];
extern const u32 gMonPalette_Ralts[];
extern const u32 gMonBackPic_Ralts[];
extern const u32 gMonShinyPalette_Ralts[];
extern const u8 gMonIcon_Ralts[];
extern const u8 gMonFootprint_Ralts[];
extern const u32 gMonFrontPic_Kirlia[];
extern const u32 gMonPalette_Kirlia[];
extern const u32 gMonBackPic_Kirlia[];
extern const u32 gMonShinyPalette_Kirlia[];
extern const u8 gMonIcon_Kirlia[];
extern const u8 gMonFootprint_Kirlia[];
extern const u32 gMonFrontPic_Gardevoir[];
extern const u32 gMonPalette_Gardevoir[];
extern const u32 gMonBackPic_Gardevoir[];
extern const u32 gMonShinyPalette_Gardevoir[];
extern const u8 gMonIcon_Gardevoir[];
extern const u8 gMonFootprint_Gardevoir[];
extern const u32 gMonFrontPic_Bagon[];
extern const u32 gMonPalette_Bagon[];
extern const u32 gMonBackPic_Bagon[];
extern const u32 gMonShinyPalette_Bagon[];
extern const u8 gMonIcon_Bagon[];
extern const u8 gMonFootprint_Bagon[];
extern const u32 gMonFrontPic_Shelgon[];
extern const u32 gMonPalette_Shelgon[];
extern const u32 gMonBackPic_Shelgon[];
extern const u32 gMonShinyPalette_Shelgon[];
extern const u8 gMonIcon_Shelgon[];
extern const u8 gMonFootprint_Shelgon[];
extern const u32 gMonFrontPic_Salamence[];
extern const u32 gMonPalette_Salamence[];
extern const u32 gMonBackPic_Salamence[];
extern const u32 gMonShinyPalette_Salamence[];
extern const u8 gMonIcon_Salamence[];
extern const u8 gMonFootprint_Salamence[];
extern const u32 gMonFrontPic_Beldum[];
extern const u32 gMonPalette_Beldum[];
extern const u32 gMonBackPic_Beldum[];
extern const u32 gMonShinyPalette_Beldum[];
extern const u8 gMonIcon_Beldum[];
extern const u8 gMonFootprint_Beldum[];
extern const u32 gMonFrontPic_Metang[];
extern const u32 gMonPalette_Metang[];
extern const u32 gMonBackPic_Metang[];
extern const u32 gMonShinyPalette_Metang[];
extern const u8 gMonIcon_Metang[];
extern const u8 gMonFootprint_Metang[];
extern const u32 gMonFrontPic_Metagross[];
extern const u32 gMonPalette_Metagross[];
extern const u32 gMonBackPic_Metagross[];
extern const u32 gMonShinyPalette_Metagross[];
extern const u8 gMonIcon_Metagross[];
extern const u8 gMonFootprint_Metagross[];
extern const u32 gMonFrontPic_Regirock[];
extern const u32 gMonPalette_Regirock[];
extern const u32 gMonBackPic_Regirock[];
extern const u32 gMonShinyPalette_Regirock[];
extern const u8 gMonIcon_Regirock[];
extern const u8 gMonFootprint_Regirock[];
extern const u32 gMonFrontPic_Regice[];
extern const u32 gMonPalette_Regice[];
extern const u32 gMonBackPic_Regice[];
extern const u32 gMonShinyPalette_Regice[];
extern const u8 gMonIcon_Regice[];
extern const u8 gMonFootprint_Regice[];
extern const u32 gMonFrontPic_Registeel[];
extern const u32 gMonPalette_Registeel[];
extern const u32 gMonBackPic_Registeel[];
extern const u32 gMonShinyPalette_Registeel[];
extern const u8 gMonIcon_Registeel[];
extern const u8 gMonFootprint_Registeel[];
extern const u32 gMonFrontPic_Kyogre[];
extern const u32 gMonPalette_Kyogre[];
extern const u32 gMonBackPic_Kyogre[];
extern const u32 gMonShinyPalette_Kyogre[];
extern const u8 gMonIcon_Kyogre[];
extern const u8 gMonFootprint_Kyogre[];
extern const u32 gMonFrontPic_Groudon[];
extern const u32 gMonPalette_Groudon[];
extern const u32 gMonBackPic_Groudon[];
extern const u32 gMonShinyPalette_Groudon[];
extern const u8 gMonIcon_Groudon[];
extern const u8 gMonFootprint_Groudon[];
extern const u32 gMonFrontPic_Rayquaza[];
extern const u32 gMonPalette_Rayquaza[];
extern const u32 gMonBackPic_Rayquaza[];
extern const u32 gMonShinyPalette_Rayquaza[];
extern const u8 gMonIcon_Rayquaza[];
extern const u8 gMonFootprint_Rayquaza[];
extern const u32 gMonFrontPic_Latias[];
extern const u32 gMonPalette_Latias[];
extern const u32 gMonBackPic_Latias[];
extern const u32 gMonShinyPalette_Latias[];
extern const u8 gMonIcon_Latias[];
extern const u8 gMonFootprint_Latias[];
extern const u32 gMonFrontPic_Latios[];
extern const u32 gMonPalette_Latios[];
extern const u32 gMonBackPic_Latios[];
extern const u32 gMonShinyPalette_Latios[];
extern const u8 gMonIcon_Latios[];
extern const u8 gMonFootprint_Latios[];
extern const u32 gMonFrontPic_Jirachi[];
extern const u32 gMonPalette_Jirachi[];
extern const u32 gMonBackPic_Jirachi[];
extern const u32 gMonShinyPalette_Jirachi[];
extern const u8 gMonIcon_Jirachi[];
extern const u8 gMonFootprint_Jirachi[];
extern const u32 gMonFrontPic_Deoxys[];
extern const u32 gMonPalette_Deoxys[];
extern const u32 gMonBackPic_Deoxys[];
extern const u32 gMonShinyPalette_Deoxys[];
extern const u8 gMonIcon_Deoxys[];
extern const u8 gMonFootprint_Deoxys[];
extern const u32 gMonFrontPic_Chimecho[];
extern const u32 gMonPalette_Chimecho[];
extern const u32 gMonBackPic_Chimecho[];
extern const u32 gMonShinyPalette_Chimecho[];
extern const u8 gMonIcon_Chimecho[];
extern const u8 gMonFootprint_Chimecho[];
extern const u32 gMonFrontPic_Egg[];
extern const u32 gMonPalette_Egg[];
extern const u8 gMonIcon_Egg[];
extern const u32 gMonFrontPic_UnownB[];
extern const u32 gMonBackPic_UnownB[];
extern const u8 gMonIcon_UnownB[];
extern const u32 gMonFrontPic_UnownC[];
extern const u32 gMonBackPic_UnownC[];
extern const u8 gMonIcon_UnownC[];
extern const u32 gMonFrontPic_UnownD[];
extern const u32 gMonBackPic_UnownD[];
extern const u8 gMonIcon_UnownD[];
extern const u32 gMonFrontPic_UnownE[];
extern const u32 gMonBackPic_UnownE[];
extern const u8 gMonIcon_UnownE[];
extern const u32 gMonFrontPic_UnownF[];
extern const u32 gMonBackPic_UnownF[];
extern const u8 gMonIcon_UnownF[];
extern const u32 gMonFrontPic_UnownG[];
extern const u32 gMonBackPic_UnownG[];
extern const u8 gMonIcon_UnownG[];
extern const u32 gMonFrontPic_UnownH[];
extern const u32 gMonBackPic_UnownH[];
extern const u8 gMonIcon_UnownH[];
extern const u32 gMonFrontPic_UnownI[];
extern const u32 gMonBackPic_UnownI[];
extern const u8 gMonIcon_UnownI[];
extern const u32 gMonFrontPic_UnownJ[];
extern const u32 gMonBackPic_UnownJ[];
extern const u8 gMonIcon_UnownJ[];
extern const u32 gMonFrontPic_UnownK[];
extern const u32 gMonBackPic_UnownK[];
extern const u8 gMonIcon_UnownK[];
extern const u32 gMonFrontPic_UnownL[];
extern const u32 gMonBackPic_UnownL[];
extern const u8 gMonIcon_UnownL[];
extern const u32 gMonFrontPic_UnownM[];
extern const u32 gMonBackPic_UnownM[];
extern const u8 gMonIcon_UnownM[];
extern const u32 gMonFrontPic_UnownN[];
extern const u32 gMonBackPic_UnownN[];
extern const u8 gMonIcon_UnownN[];
extern const u32 gMonFrontPic_UnownO[];
extern const u32 gMonBackPic_UnownO[];
extern const u8 gMonIcon_UnownO[];
extern const u32 gMonFrontPic_UnownP[];
extern const u32 gMonBackPic_UnownP[];
extern const u8 gMonIcon_UnownP[];
extern const u32 gMonFrontPic_UnownQ[];
extern const u32 gMonBackPic_UnownQ[];
extern const u8 gMonIcon_UnownQ[];
extern const u32 gMonFrontPic_UnownR[];
extern const u32 gMonBackPic_UnownR[];
extern const u8 gMonIcon_UnownR[];
extern const u32 gMonFrontPic_UnownS[];
extern const u32 gMonBackPic_UnownS[];
extern const u8 gMonIcon_UnownS[];
extern const u32 gMonFrontPic_UnownT[];
extern const u32 gMonBackPic_UnownT[];
extern const u8 gMonIcon_UnownT[];
extern const u32 gMonFrontPic_UnownU[];
extern const u32 gMonBackPic_UnownU[];
extern const u8 gMonIcon_UnownU[];
extern const u32 gMonFrontPic_UnownV[];
extern const u32 gMonBackPic_UnownV[];
extern const u8 gMonIcon_UnownV[];
extern const u32 gMonFrontPic_UnownW[];
extern const u32 gMonBackPic_UnownW[];
extern const u8 gMonIcon_UnownW[];
extern const u32 gMonFrontPic_UnownX[];
extern const u32 gMonBackPic_UnownX[];
extern const u8 gMonIcon_UnownX[];
extern const u32 gMonFrontPic_UnownY[];
extern const u32 gMonBackPic_UnownY[];
extern const u8 gMonIcon_UnownY[];
extern const u32 gMonFrontPic_UnownZ[];
extern const u32 gMonBackPic_UnownZ[];
extern const u8 gMonIcon_UnownZ[];
extern const u32 gMonFrontPic_UnownExclamationMark[];
extern const u32 gMonBackPic_UnownExclamationMark[];
extern const u8 gMonIcon_UnownExclamationMark[];
extern const u32 gMonFrontPic_UnownQuestionMark[];
extern const u32 gMonBackPic_UnownQuestionMark[];
extern const u8 gMonIcon_UnownQuestionMark[];

extern const u32 gMonFrontPic_CircledQuestionMark[];
extern const u32 gMonBackPic_CircledQuestionMark[];
extern const u32 gMonPalette_CircledQuestionMark[];
extern const u32 gMonShinyPalette_CircledQuestionMark[];
extern const u8 gMonIcon_QuestionMark[];
extern const u8 gMonFootprint_QuestionMark[];
extern const u32 gMonFrontPic_DoubleQuestionMark[];
extern const u32 gMonBackPic_DoubleQuestionMark[];
extern const u32 gMonPalette_DoubleQuestionMark[];
extern const u32 gMonShinyPalette_DoubleQuestionMark[];

extern const u32 gMonFrontPic_Litten[];
extern const u32 gMonPalette_Litten[];
extern const u32 gMonBackPic_Litten[];
extern const u32 gMonShinyPalette_Litten[];
extern const u32 gMonStillFrontPic_Litten[];
extern const u8 gMonIcon_Litten[];
extern const u8 gMonFootprint_Litten[];







extern const u32 gTrainerFrontPic_AquaLeaderArchie[];
extern const u32 gTrainerFrontPic_AquaGruntM[];
extern const u32 gTrainerFrontPic_AquaGruntF[];
extern const u32 gTrainerFrontPic_RSAromaLady[];
extern const u32 gTrainerFrontPic_RSRuinManiac[];
extern const u32 gTrainerFrontPic_Interviewer[];
extern const u32 gTrainerFrontPic_RSTuberF[];
extern const u32 gTrainerFrontPic_TuberM[];
extern const u32 gTrainerFrontPic_RSCooltrainerM[];
extern const u32 gTrainerFrontPic_RSCooltrainerF[];
extern const u32 gTrainerFrontPic_HexManiac[];
extern const u32 gTrainerFrontPic_RSLady[];
extern const u32 gTrainerFrontPic_RSBeauty[];
extern const u32 gTrainerFrontPic_RichBoy[];
extern const u32 gTrainerFrontPic_RSPokeManiac[];
extern const u32 gTrainerFrontPic_RSSwimmerM[];
extern const u32 gTrainerFrontPic_RSBlackBelt[];
extern const u32 gTrainerFrontPic_Guitarist[];
extern const u32 gTrainerFrontPic_Kindler[];
extern const u32 gTrainerFrontPic_RSCamper[];
extern const u32 gTrainerFrontPic_BugManiac[];
extern const u32 gTrainerFrontPic_RSPsychicM[];
extern const u32 gTrainerFrontPic_RSPsychicF[];
extern const u32 gTrainerFrontPic_RSGentleman[];
extern const u32 gTrainerFrontPic_EliteFourSidney[];
extern const u32 gTrainerFrontPic_EliteFourPhoebe[];
extern const u32 gTrainerFrontPic_LeaderRoxanne[];
extern const u32 gTrainerFrontPic_LeaderBrawly[];
extern const u32 gTrainerFrontPic_LeaderTateAndLiza[];
extern const u32 gTrainerFrontPic_SchoolKidM[];
extern const u32 gTrainerFrontPic_SchoolKidF[];
extern const u32 gTrainerFrontPic_SrAndJr[];
extern const u32 gTrainerFrontPic_PokefanM[];
extern const u32 gTrainerFrontPic_PokefanF[];
extern const u32 gTrainerFrontPic_ExpertM[];
extern const u32 gTrainerFrontPic_ExpertF[];
extern const u32 gTrainerFrontPic_RSYoungster[];
extern const u32 gTrainerFrontPic_ChampionSteven[];
extern const u32 gTrainerFrontPic_RSFisherman[];
extern const u32 gTrainerFrontPic_CyclingTriathleteM[];
extern const u32 gTrainerFrontPic_CyclingTriathleteF[];
extern const u32 gTrainerFrontPic_RunningTriathleteM[];
extern const u32 gTrainerFrontPic_RunningTriathleteF[];
extern const u32 gTrainerFrontPic_SwimmingTriathleteM[];
extern const u32 gTrainerFrontPic_SwimmingTriathleteF[];
extern const u32 gTrainerFrontPic_DragonTamer[];
extern const u32 gTrainerFrontPic_RSBirdKeeper[];
extern const u32 gTrainerFrontPic_NinjaBoy[];
extern const u32 gTrainerFrontPic_BattleGirl[];
extern const u32 gTrainerFrontPic_ParasolLady[];
extern const u32 gTrainerFrontPic_RSSwimmerF[];
extern const u32 gTrainerFrontPic_RSPicnicker[];
extern const u32 gTrainerFrontPic_RSTwins[];
extern const u32 gTrainerFrontPic_RSSailor[];
extern const u32 gTrainerFrontPic_Collector[];
extern const u32 gTrainerFrontPic_Wally[];
extern const u32 gTrainerFrontPic_RSBrendan1[];
extern const u32 gTrainerFrontPic_RSMay1[];
extern const u32 gTrainerFrontPic_RSPokemonBreederM[];
extern const u32 gTrainerFrontPic_RSPokemonBreederF[];
extern const u32 gTrainerFrontPic_RSPokemonRangerM[];
extern const u32 gTrainerFrontPic_RSPokemonRangerF[];
extern const u32 gTrainerFrontPic_MagmaLeaderMaxie[];
extern const u32 gTrainerFrontPic_MagmaGruntM[];
extern const u32 gTrainerFrontPic_MagmaGruntF[];
extern const u32 gTrainerFrontPic_RSLass[];
extern const u32 gTrainerFrontPic_RSBugCatcher[];
extern const u32 gTrainerFrontPic_RSHiker[];
extern const u32 gTrainerFrontPic_RSYoungCouple[];
extern const u32 gTrainerFrontPic_OldCouple[];
extern const u32 gTrainerFrontPic_RSSisAndBro[];
extern const u32 gTrainerFrontPic_AquaAdminM[];
extern const u32 gTrainerFrontPic_AquaAdminF[];
extern const u32 gTrainerFrontPic_MagmaAdminM[];
extern const u32 gTrainerFrontPic_MagmaAdminF[];
extern const u32 gTrainerFrontPic_LeaderWattson[];
extern const u32 gTrainerFrontPic_LeaderFlannery[];
extern const u32 gTrainerFrontPic_LeaderNorman[];
extern const u32 gTrainerFrontPic_LeaderWinona[];
extern const u32 gTrainerFrontPic_LeaderWallace[];
extern const u32 gTrainerFrontPic_EliteFourGlacia[];
extern const u32 gTrainerFrontPic_EliteFourDrake[];
extern const u32 gTrainerFrontPic_Youngster[];
extern const u32 gTrainerFrontPic_BugCatcher[];
extern const u32 gTrainerFrontPic_Lass[];
extern const u32 gTrainerFrontPic_Sailor[];
extern const u32 gTrainerFrontPic_Camper[];
extern const u32 gTrainerFrontPic_Picnicker[];
extern const u32 gTrainerFrontPic_PokeManiac[];
extern const u32 gTrainerFrontPic_SuperNerd[];
extern const u32 gTrainerFrontPic_Hiker[];
extern const u32 gTrainerFrontPic_Biker[];
extern const u32 gTrainerFrontPic_Burglar[];
extern const u32 gTrainerFrontPic_Engineer[];
extern const u32 gTrainerFrontPic_Fisherman[];
extern const u32 gTrainerFrontPic_SwimmerM[];
extern const u32 gTrainerFrontPic_CueBall[];
extern const u32 gTrainerFrontPic_Gamer[];
extern const u32 gTrainerFrontPic_Beauty[];
extern const u32 gTrainerFrontPic_SwimmerF[];
extern const u32 gTrainerFrontPic_PsychicM[];
extern const u32 gTrainerFrontPic_Rocker[];
extern const u32 gTrainerFrontPic_Juggler[];
extern const u32 gTrainerFrontPic_Tamer[];
extern const u32 gTrainerFrontPic_BirdKeeper[];
extern const u32 gTrainerFrontPic_BlackBelt[];
extern const u32 gTrainerFrontPic_RivalEarly[];
extern const u32 gTrainerFrontPic_Scientist[];
extern const u32 gTrainerFrontPic_LeaderGiovanni[];
extern const u32 gTrainerFrontPic_RocketGruntM[];
extern const u32 gTrainerFrontPic_CooltrainerM[];
extern const u32 gTrainerFrontPic_CooltrainerF[];
extern const u32 gTrainerFrontPic_EliteFourLorelei[];
extern const u32 gTrainerFrontPic_EliteFourBruno[];
extern const u32 gTrainerFrontPic_EliteFourAgatha[];
extern const u32 gTrainerFrontPic_EliteFourLance[];
extern const u32 gTrainerFrontPic_LeaderBrock[];
extern const u32 gTrainerFrontPic_LeaderMisty[];
extern const u32 gTrainerFrontPic_LeaderLtSurge[];
extern const u32 gTrainerFrontPic_LeaderErika[];
extern const u32 gTrainerFrontPic_LeaderKoga[];
extern const u32 gTrainerFrontPic_LeaderBlaine[];
extern const u32 gTrainerFrontPic_LeaderSabrina[];
extern const u32 gTrainerFrontPic_Gentleman[];
extern const u32 gTrainerFrontPic_RivalLate[];
extern const u32 gTrainerFrontPic_ChampionRival[];
extern const u32 gTrainerFrontPic_Channeler[];
extern const u32 gTrainerFrontPic_Twins[];
extern const u32 gTrainerFrontPic_CoolCouple[];
extern const u32 gTrainerFrontPic_YoungCouple[];
extern const u32 gTrainerFrontPic_CrushKin[];
extern const u32 gTrainerFrontPic_SisAndBro[];
extern const u32 gTrainerFrontPic_ProfessorOak[];
extern const u32 gTrainerFrontPic_RSBrendan2[];
extern const u32 gTrainerFrontPic_RSMay2[];
extern const u32 gTrainerFrontPic_Red[];
extern const u32 gTrainerFrontPic_Leaf[];
extern const u32 gTrainerFrontPic_RocketGruntF[];
extern const u32 gTrainerFrontPic_PsychicF[];
extern const u32 gTrainerFrontPic_CrushGirl[];
extern const u32 gTrainerFrontPic_TuberF[];
extern const u32 gTrainerFrontPic_PokemonBreeder[];
extern const u32 gTrainerFrontPic_PokemonRangerM[];
extern const u32 gTrainerFrontPic_PokemonRangerF[];
extern const u32 gTrainerFrontPic_AromaLady[];
extern const u32 gTrainerFrontPic_RuinManiac[];
extern const u32 gTrainerFrontPic_Lady[];
extern const u32 gTrainerFrontPic_Painter[];

extern const u32 gTrainerPalette_AquaLeaderArchie[];
extern const u32 gTrainerPalette_AquaGruntM[];
extern const u32 gTrainerPalette_AquaGruntF[];
extern const u32 gTrainerPalette_RSAromaLady[];
extern const u32 gTrainerPalette_RSRuinManiac[];
extern const u32 gTrainerPalette_Interviewer[];
extern const u32 gTrainerPalette_RSTuberF[];
extern const u32 gTrainerPalette_TuberM[];
extern const u32 gTrainerPalette_RSCooltrainerM[];
extern const u32 gTrainerPalette_RSCooltrainerF[];
extern const u32 gTrainerPalette_HexManiac[];
extern const u32 gTrainerPalette_RSLady[];
extern const u32 gTrainerPalette_RSBeauty[];
extern const u32 gTrainerPalette_RichBoy[];
extern const u32 gTrainerPalette_RSPokeManiac[];
extern const u32 gTrainerPalette_RSSwimmerM[];
extern const u32 gTrainerPalette_RSBlackBelt[];
extern const u32 gTrainerPalette_Guitarist[];
extern const u32 gTrainerPalette_Kindler[];
extern const u32 gTrainerPalette_RSCamper[];
extern const u32 gTrainerPalette_BugManiac[];
extern const u32 gTrainerPalette_RSPsychicM[];
extern const u32 gTrainerPalette_RSPsychicF[];
extern const u32 gTrainerPalette_RSGentleman[];
extern const u32 gTrainerPalette_EliteFourSidney[];
extern const u32 gTrainerPalette_EliteFourPhoebe[];
extern const u32 gTrainerPalette_LeaderRoxanne[];
extern const u32 gTrainerPalette_LeaderBrawly[];
extern const u32 gTrainerPalette_LeaderTateAndLiza[];
extern const u32 gTrainerPalette_SchoolKidM[];
extern const u32 gTrainerPalette_SchoolKidF[];
extern const u32 gTrainerPalette_SrAndJr[];
extern const u32 gTrainerPalette_PokefanM[];
extern const u32 gTrainerPalette_PokefanF[];
extern const u32 gTrainerPalette_ExpertM[];
extern const u32 gTrainerPalette_ExpertF[];
extern const u32 gTrainerPalette_RSYoungster[];
extern const u32 gTrainerPalette_ChampionSteven[];
extern const u32 gTrainerPalette_RSFisherman[];
extern const u32 gTrainerPalette_CyclingTriathleteM[];
extern const u32 gTrainerPalette_CyclingTriathleteF[];
extern const u32 gTrainerPalette_RunningTriathleteM[];
extern const u32 gTrainerPalette_RunningTriathleteF[];
extern const u32 gTrainerPalette_SwimmingTriathleteM[];
extern const u32 gTrainerPalette_SwimmingTriathleteF[];
extern const u32 gTrainerPalette_DragonTamer[];
extern const u32 gTrainerPalette_RSBirdKeeper[];
extern const u32 gTrainerPalette_NinjaBoy[];
extern const u32 gTrainerPalette_BattleGirl[];
extern const u32 gTrainerPalette_ParasolLady[];
extern const u32 gTrainerPalette_RSSwimmerF[];
extern const u32 gTrainerPalette_RSPicnicker[];
extern const u32 gTrainerPalette_RSTwins[];
extern const u32 gTrainerPalette_RSSailor[];
extern const u32 gTrainerPalette_Collector[];
extern const u32 gTrainerPalette_Wally[];
extern const u32 gTrainerPalette_RSBrendan1[];
extern const u32 gTrainerPalette_RSMay1[];
extern const u32 gTrainerPalette_LeafBackPic[];
extern const u32 gTrainerPalette_RedBackPic[];
extern const u32 gTrainerPalette_PokedudeBackPic[];
extern const u32 gTrainerPalette_OldManBackPic[];
extern const u32 gTrainerPalette_RSPokemonBreederM[];
extern const u32 gTrainerPalette_RSPokemonBreederF[];
extern const u32 gTrainerPalette_RSPokemonRangerM[];
extern const u32 gTrainerPalette_RSPokemonRangerF[];
extern const u32 gTrainerPalette_MagmaLeaderMaxie[];
extern const u32 gTrainerPalette_MagmaGruntM[];
extern const u32 gTrainerPalette_MagmaGruntF[];
extern const u32 gTrainerPalette_RSLass[];
extern const u32 gTrainerPalette_RSBugCatcher[];
extern const u32 gTrainerPalette_RSHiker[];
extern const u32 gTrainerPalette_RSYoungCouple[];
extern const u32 gTrainerPalette_OldCouple[];
extern const u32 gTrainerPalette_RSSisAndBro[];
extern const u32 gTrainerPalette_AquaAdminM[];
extern const u32 gTrainerPalette_AquaAdminF[];
extern const u32 gTrainerPalette_MagmaAdminM[];
extern const u32 gTrainerPalette_MagmaAdminF[];
extern const u32 gTrainerPalette_LeaderWattson[];
extern const u32 gTrainerPalette_LeaderFlannery[];
extern const u32 gTrainerPalette_LeaderNorman[];
extern const u32 gTrainerPalette_LeaderWinona[];
extern const u32 gTrainerPalette_LeaderWallace[];
extern const u32 gTrainerPalette_EliteFourGlacia[];
extern const u32 gTrainerPalette_EliteFourDrake[];
extern const u32 gTrainerPalette_Youngster[];
extern const u32 gTrainerPalette_BugCatcher[];
extern const u32 gTrainerPalette_Lass[];
extern const u32 gTrainerPalette_Sailor[];
extern const u32 gTrainerPalette_Camper[];
extern const u32 gTrainerPalette_Picnicker[];
extern const u32 gTrainerPalette_PokeManiac[];
extern const u32 gTrainerPalette_SuperNerd[];
extern const u32 gTrainerPalette_Hiker[];
extern const u32 gTrainerPalette_Biker[];
extern const u32 gTrainerPalette_Burglar[];
extern const u32 gTrainerPalette_Engineer[];
extern const u32 gTrainerPalette_Fisherman[];
extern const u32 gTrainerPalette_SwimmerM[];
extern const u32 gTrainerPalette_CueBall[];
extern const u32 gTrainerPalette_Gamer[];
extern const u32 gTrainerPalette_Beauty[];
extern const u32 gTrainerPalette_SwimmerF[];
extern const u32 gTrainerPalette_PsychicM[];
extern const u32 gTrainerPalette_Rocker[];
extern const u32 gTrainerPalette_Juggler[];
extern const u32 gTrainerPalette_Tamer[];
extern const u32 gTrainerPalette_BirdKeeper[];
extern const u32 gTrainerPalette_BlackBelt[];
extern const u32 gTrainerPalette_RivalEarly[];
extern const u32 gTrainerPalette_Scientist[];
extern const u32 gTrainerPalette_LeaderGiovanni[];
extern const u32 gTrainerPalette_RocketGruntM[];
extern const u32 gTrainerPalette_CooltrainerM[];
extern const u32 gTrainerPalette_CooltrainerF[];
extern const u32 gTrainerPalette_EliteFourLorelei[];
extern const u32 gTrainerPalette_EliteFourBruno[];
extern const u32 gTrainerPalette_EliteFourAgatha[];
extern const u32 gTrainerPalette_EliteFourLance[];
extern const u32 gTrainerPalette_LeaderBrock[];
extern const u32 gTrainerPalette_LeaderMisty[];
extern const u32 gTrainerPalette_LeaderLtSurge[];
extern const u32 gTrainerPalette_LeaderErika[];
extern const u32 gTrainerPalette_LeaderKoga[];
extern const u32 gTrainerPalette_LeaderBlaine[];
extern const u32 gTrainerPalette_LeaderSabrina[];
extern const u32 gTrainerPalette_Gentleman[];
extern const u32 gTrainerPalette_RivalLate[];
extern const u32 gTrainerPalette_ChampionRival[];
extern const u32 gTrainerPalette_Channeler[];
extern const u32 gTrainerPalette_Twins[];
extern const u32 gTrainerPalette_CoolCouple[];
extern const u32 gTrainerPalette_YoungCouple[];
extern const u32 gTrainerPalette_CrushKin[];
extern const u32 gTrainerPalette_SisAndBro[];
extern const u32 gTrainerPalette_ProfessorOak[];
extern const u32 gTrainerPalette_RSBrendan2[];
extern const u32 gTrainerPalette_RSMay2[];
extern const u32 gTrainerPalette_Red[];
extern const u32 gTrainerPalette_Leaf[];
extern const u32 gTrainerPalette_RocketGruntF[];
extern const u32 gTrainerPalette_PsychicF[];
extern const u32 gTrainerPalette_CrushGirl[];
extern const u32 gTrainerPalette_TuberF[];
extern const u32 gTrainerPalette_PokemonBreeder[];
extern const u32 gTrainerPalette_PokemonRangerM[];
extern const u32 gTrainerPalette_PokemonRangerF[];
extern const u32 gTrainerPalette_AromaLady[];
extern const u32 gTrainerPalette_RuinManiac[];
extern const u32 gTrainerPalette_Lady[];
extern const u32 gTrainerPalette_Painter[];

extern const u8 gMenuInfoElements_Gfx[];
extern const u16 gMenuInfoElements1_Pal[];
extern const u16 gMenuInfoElements2_Pal[];

extern const u32 gItemIcon_QuestionMark[];
extern const u32 gItemIconPalette_QuestionMark[];


extern const u16 gFameCheckerBgPals[][16];
extern const u16 gFameCheckerBgTiles[0xa50];
extern const u16 gFameCheckerBg3Tilemap[0x400];
extern const u16 gFameCheckerBg2Tilemap[0x400];


extern const u32 gTMCase_Gfx[];
extern const u32 gTMCaseMenu_Tilemap[];
extern const u32 gTMCase_Tilemap[];
extern const u32 gTMCaseMenu_Male_Pal[];
extern const u32 gTMCaseMenu_Female_Pal[];
extern const u32 gTMCaseDisc_Gfx[];
extern const u32 gTMCaseDiscTypes1_Pal[];
extern const u32 gTMCaseDiscTypes2_Pal[];
extern const u8 gTMCaseHM_Gfx[];

extern const u16 gStandardMenuPalette[];


extern const u32 gTradeGba2_Pal[];
extern const u32 gTradeGba_Gfx[];


extern const u8 gTeachyTv_Gfx[];
extern const u8 gTeachyTvScreen_Tilemap[];
extern const u8 gTeachyTvTitle_Tilemap[];
extern const u32 gTeachyTv_Pal[];


extern const u8 gBerryFixGameboy_Gfx[];
extern const u8 gBerryFixGameboy_Tilemap[];
extern const u8 gBerryFixGameboy_Pal[];
extern const u8 gBerryFixGameboyLogo_Gfx[];
extern const u8 gBerryFixGameboyLogo_Tilemap[];
extern const u8 gBerryFixGameboyLogo_Pal[];
extern const u8 gBerryFixGbaTransfer_Gfx[];
extern const u8 gBerryFixGbaTransfer_Tilemap[];
extern const u8 gBerryFixGbaTransfer_Pal[];
extern const u8 gBerryFixGbaTransferHighlight_Gfx[];
extern const u8 gBerryFixGbaTransferHighlight_Tilemap[];
extern const u8 gBerryFixGbaTransferHighlight_Pal[];
extern const u8 gBerryFixGbaTransferError_Gfx[];
extern const u8 gBerryFixGbaTransferError_Tilemap[];
extern const u8 gBerryFixGbaTransferError_Pal[];
extern const u8 gBerryFixWindow_Gfx[];
extern const u8 gBerryFixWindow_Tilemap[];
extern const u8 gBerryFixWindow_Pal[];


extern const u8 gItemPcTiles[];
extern const u32 gItemPcBgPals[];
extern const u8 gItemPcTilemap[];


extern const u32 gBagMale_Gfx[];
extern const u32 gBagFemale_Gfx[];
extern const u32 gBag_Pal[];
extern const u32 gSwapLine_Gfx[];
extern const u32 gSwapLine_Pal[];
extern const u32 gItemIcon_MasterBall[];
extern const u32 gItemIconPalette_MasterBall[];
extern const u32 gItemIcon_UltraBall[];
extern const u32 gItemIconPalette_UltraBall[];
extern const u32 gItemIcon_GreatBall[];
extern const u32 gItemIconPalette_GreatBall[];
extern const u32 gItemIcon_PokeBall[];
extern const u32 gItemIconPalette_PokeBall[];
extern const u32 gItemIcon_SafariBall[];
extern const u32 gItemIconPalette_SafariBall[];
extern const u32 gItemIcon_NetBall[];
extern const u32 gItemIconPalette_NetBall[];
extern const u32 gItemIcon_DiveBall[];
extern const u32 gItemIconPalette_DiveBall[];
extern const u32 gItemIcon_NestBall[];
extern const u32 gItemIconPalette_NestBall[];
extern const u32 gItemIcon_RepeatBall[];
extern const u32 gItemIconPalette_RepeatBall[];
extern const u32 gItemIcon_TimerBall[];
extern const u32 gItemIcon_LuxuryBall[];
extern const u32 gItemIconPalette_LuxuryBall[];
extern const u32 gItemIcon_PremierBall[];
extern const u32 gItemIcon_Potion[];
extern const u32 gItemIconPalette_Potion[];
extern const u32 gItemIcon_Antidote[];
extern const u32 gItemIconPalette_Antidote[];
extern const u32 gItemIcon_StatusHeal[];
extern const u32 gItemIconPalette_BurnHeal[];
extern const u32 gItemIconPalette_IceHeal[];
extern const u32 gItemIconPalette_Awakening[];
extern const u32 gItemIconPalette_ParalyzeHeal[];
extern const u32 gItemIcon_LargePotion[];
extern const u32 gItemIconPalette_FullRestore[];
extern const u32 gItemIconPalette_MaxPotion[];
extern const u32 gItemIconPalette_HyperPotion[];
extern const u32 gItemIconPalette_SuperPotion[];
extern const u32 gItemIcon_FullHeal[];
extern const u32 gItemIconPalette_FullHeal[];
extern const u32 gItemIcon_Revive[];
extern const u32 gItemIconPalette_Revive[];
extern const u32 gItemIcon_MaxRevive[];
extern const u32 gItemIcon_FreshWater[];
extern const u32 gItemIconPalette_FreshWater[];
extern const u32 gItemIcon_SodaPop[];
extern const u32 gItemIconPalette_SodaPop[];
extern const u32 gItemIcon_Lemonade[];
extern const u32 gItemIconPalette_Lemonade[];
extern const u32 gItemIcon_MoomooMilk[];
extern const u32 gItemIconPalette_MoomooMilk[];
extern const u32 gItemIcon_Powder[];
extern const u32 gItemIconPalette_EnergyPowder[];
extern const u32 gItemIcon_EnergyRoot[];
extern const u32 gItemIconPalette_EnergyRoot[];
extern const u32 gItemIconPalette_HealPowder[];
extern const u32 gItemIcon_RevivalHerb[];
extern const u32 gItemIconPalette_RevivalHerb[];
extern const u32 gItemIcon_Ether[];
extern const u32 gItemIconPalette_Ether[];
extern const u32 gItemIconPalette_MaxEther[];
extern const u32 gItemIconPalette_Elixir[];
extern const u32 gItemIconPalette_MaxElixir[];
extern const u32 gItemIcon_LavaCookie[];
extern const u32 gItemIconPalette_LavaCookieAndLetter[];
extern const u32 gItemIcon_Flute[];
extern const u32 gItemIconPalette_BlueFlute[];
extern const u32 gItemIconPalette_YellowFlute[];
extern const u32 gItemIconPalette_RedFlute[];
extern const u32 gItemIconPalette_BlackFlute[];
extern const u32 gItemIconPalette_WhiteFlute[];
extern const u32 gItemIcon_BerryJuice[];
extern const u32 gItemIconPalette_BerryJuice[];
extern const u32 gItemIcon_SacredAsh[];
extern const u32 gItemIconPalette_SacredAsh[];
extern const u32 gItemIconPalette_ShoalSalt[];
extern const u32 gItemIcon_ShoalShell[];
extern const u32 gItemIconPalette_Shell[];
extern const u32 gItemIcon_Shard[];
extern const u32 gItemIconPalette_RedShard[];
extern const u32 gItemIconPalette_BlueShard[];
extern const u32 gItemIconPalette_YellowShard[];
extern const u32 gItemIconPalette_GreenShard[];
extern const u32 gItemIcon_HPUp[];
extern const u32 gItemIconPalette_HPUp[];
extern const u32 gItemIcon_Vitamin[];
extern const u32 gItemIconPalette_Protein[];
extern const u32 gItemIconPalette_Iron[];
extern const u32 gItemIconPalette_Carbos[];
extern const u32 gItemIconPalette_Calcium[];
extern const u32 gItemIcon_RareCandy[];
extern const u32 gItemIconPalette_RareCandy[];
extern const u32 gItemIcon_PPUp[];
extern const u32 gItemIconPalette_PPUp[];
extern const u32 gItemIconPalette_Zinc[];
extern const u32 gItemIcon_PPMax[];
extern const u32 gItemIconPalette_PPMax[];
extern const u32 gItemIcon_BattleStatItem[];
extern const u32 gItemIconPalette_GuardSpec[];
extern const u32 gItemIconPalette_DireHit[];
extern const u32 gItemIconPalette_XAttack[];
extern const u32 gItemIconPalette_XDefend[];
extern const u32 gItemIconPalette_XSpeed[];
extern const u32 gItemIconPalette_XAccuracy[];
extern const u32 gItemIconPalette_XSpecial[];
extern const u32 gItemIcon_PokeDoll[];
extern const u32 gItemIconPalette_PokeDoll[];
extern const u32 gItemIcon_FluffyTail[];
extern const u32 gItemIconPalette_FluffyTail[];
extern const u32 gItemIcon_Repel[];
extern const u32 gItemIconPalette_SuperRepel[];
extern const u32 gItemIconPalette_MaxRepel[];
extern const u32 gItemIcon_EscapeRope[];
extern const u32 gItemIconPalette_EscapeRope[];
extern const u32 gItemIcon_Repel[];
extern const u32 gItemIconPalette_Repel[];
extern const u32 gItemIcon_SunStone[];
extern const u32 gItemIconPalette_SunStone[];
extern const u32 gItemIcon_MoonStone[];
extern const u32 gItemIconPalette_MoonStone[];
extern const u32 gItemIcon_FireStone[];
extern const u32 gItemIconPalette_FireStone[];
extern const u32 gItemIcon_ThunderStone[];
extern const u32 gItemIconPalette_ThunderStone[];
extern const u32 gItemIcon_WaterStone[];
extern const u32 gItemIconPalette_WaterStone[];
extern const u32 gItemIcon_LeafStone[];
extern const u32 gItemIconPalette_LeafStone[];
extern const u32 gItemIcon_TinyMushroom[];
extern const u32 gItemIconPalette_Mushroom[];
extern const u32 gItemIcon_BigMushroom[];
extern const u32 gItemIcon_Pearl[];
extern const u32 gItemIconPalette_Pearl[];
extern const u32 gItemIcon_BigPearl[];
extern const u32 gItemIcon_Stardust[];
extern const u32 gItemIconPalette_Star[];
extern const u32 gItemIcon_StarPiece[];
extern const u32 gItemIcon_Nugget[];
extern const u32 gItemIconPalette_Nugget[];
extern const u32 gItemIcon_HeartScale[];
extern const u32 gItemIconPalette_HeartScale[];
extern const u32 gItemIcon_OrangeMail[];
extern const u32 gItemIconPalette_OrangeMail[];
extern const u32 gItemIcon_HarborMail[];
extern const u32 gItemIconPalette_HarborMail[];
extern const u32 gItemIcon_GlitterMail[];
extern const u32 gItemIconPalette_GlitterMail[];
extern const u32 gItemIcon_MechMail[];
extern const u32 gItemIconPalette_MechMail[];
extern const u32 gItemIcon_WoodMail[];
extern const u32 gItemIconPalette_WoodMail[];
extern const u32 gItemIcon_WaveMail[];
extern const u32 gItemIconPalette_WaveMail[];
extern const u32 gItemIcon_BeadMail[];
extern const u32 gItemIconPalette_BeadMail[];
extern const u32 gItemIcon_ShadowMail[];
extern const u32 gItemIconPalette_ShadowMail[];
extern const u32 gItemIcon_TropicMail[];
extern const u32 gItemIconPalette_TropicMail[];
extern const u32 gItemIcon_DreamMail[];
extern const u32 gItemIconPalette_DreamMail[];
extern const u32 gItemIcon_FabMail[];
extern const u32 gItemIconPalette_FabMail[];
extern const u32 gItemIcon_RetroMail[];
extern const u32 gItemIconPalette_RetroMail[];
extern const u32 gItemIcon_CheriBerry[];
extern const u32 gItemIconPalette_CheriBerry[];
extern const u32 gItemIcon_ChestoBerry[];
extern const u32 gItemIconPalette_ChestoBerry[];
extern const u32 gItemIcon_PechaBerry[];
extern const u32 gItemIconPalette_PechaBerry[];
extern const u32 gItemIcon_RawstBerry[];
extern const u32 gItemIconPalette_RawstBerry[];
extern const u32 gItemIcon_AspearBerry[];
extern const u32 gItemIconPalette_AspearBerry[];
extern const u32 gItemIcon_LeppaBerry[];
extern const u32 gItemIconPalette_LeppaBerry[];
extern const u32 gItemIcon_OranBerry[];
extern const u32 gItemIconPalette_OranBerry[];
extern const u32 gItemIcon_PersimBerry[];
extern const u32 gItemIconPalette_PersimBerry[];
extern const u32 gItemIcon_LumBerry[];
extern const u32 gItemIconPalette_LumBerry[];
extern const u32 gItemIcon_SitrusBerry[];
extern const u32 gItemIconPalette_SitrusBerry[];
extern const u32 gItemIcon_FigyBerry[];
extern const u32 gItemIconPalette_FigyBerry[];
extern const u32 gItemIcon_WikiBerry[];
extern const u32 gItemIconPalette_WikiBerry[];
extern const u32 gItemIcon_MagoBerry[];
extern const u32 gItemIconPalette_MagoBerry[];
extern const u32 gItemIcon_AguavBerry[];
extern const u32 gItemIconPalette_AguavBerry[];
extern const u32 gItemIcon_IapapaBerry[];
extern const u32 gItemIconPalette_IapapaBerry[];
extern const u32 gItemIcon_RazzBerry[];
extern const u32 gItemIconPalette_RazzBerry[];
extern const u32 gItemIcon_BlukBerry[];
extern const u32 gItemIconPalette_BlukBerry[];
extern const u32 gItemIcon_NanabBerry[];
extern const u32 gItemIconPalette_NanabBerry[];
extern const u32 gItemIcon_WepearBerry[];
extern const u32 gItemIconPalette_WepearBerry[];
extern const u32 gItemIcon_PinapBerry[];
extern const u32 gItemIconPalette_PinapBerry[];
extern const u32 gItemIcon_PomegBerry[];
extern const u32 gItemIconPalette_PomegBerry[];
extern const u32 gItemIcon_KelpsyBerry[];
extern const u32 gItemIconPalette_KelpsyBerry[];
extern const u32 gItemIcon_QualotBerry[];
extern const u32 gItemIconPalette_QualotBerry[];
extern const u32 gItemIcon_HondewBerry[];
extern const u32 gItemIconPalette_HondewBerry[];
extern const u32 gItemIcon_GrepaBerry[];
extern const u32 gItemIconPalette_GrepaBerry[];
extern const u32 gItemIcon_TamatoBerry[];
extern const u32 gItemIconPalette_TamatoBerry[];
extern const u32 gItemIcon_CornnBerry[];
extern const u32 gItemIconPalette_CornnBerry[];
extern const u32 gItemIcon_MagostBerry[];
extern const u32 gItemIconPalette_MagostBerry[];
extern const u32 gItemIcon_RabutaBerry[];
extern const u32 gItemIconPalette_RabutaBerry[];
extern const u32 gItemIcon_NomelBerry[];
extern const u32 gItemIconPalette_NomelBerry[];
extern const u32 gItemIcon_SpelonBerry[];
extern const u32 gItemIconPalette_SpelonBerry[];
extern const u32 gItemIcon_PamtreBerry[];
extern const u32 gItemIconPalette_PamtreBerry[];
extern const u32 gItemIcon_WatmelBerry[];
extern const u32 gItemIconPalette_WatmelBerry[];
extern const u32 gItemIcon_DurinBerry[];
extern const u32 gItemIconPalette_DurinBerry[];
extern const u32 gItemIcon_BelueBerry[];
extern const u32 gItemIconPalette_BelueBerry[];
extern const u32 gItemIcon_LiechiBerry[];
extern const u32 gItemIconPalette_LiechiBerry[];
extern const u32 gItemIcon_GanlonBerry[];
extern const u32 gItemIconPalette_GanlonBerry[];
extern const u32 gItemIcon_SalacBerry[];
extern const u32 gItemIconPalette_SalacBerry[];
extern const u32 gItemIcon_PetayaBerry[];
extern const u32 gItemIconPalette_PetayaBerry[];
extern const u32 gItemIcon_ApicotBerry[];
extern const u32 gItemIconPalette_ApicotBerry[];
extern const u32 gItemIcon_LansatBerry[];
extern const u32 gItemIconPalette_LansatBerry[];
extern const u32 gItemIcon_StarfBerry[];
extern const u32 gItemIconPalette_StarfBerry[];
extern const u32 gItemIcon_EnigmaBerry[];
extern const u32 gItemIconPalette_EnigmaBerry[];
extern const u32 gItemIcon_BrightPowder[];
extern const u32 gItemIconPalette_BrightPowder[];
extern const u32 gItemIcon_InBattleHerb[];
extern const u32 gItemIconPalette_WhiteHerb[];
extern const u32 gItemIcon_MachoBrace[];
extern const u32 gItemIconPalette_MachoBrace[];
extern const u32 gItemIcon_ExpShare[];
extern const u32 gItemIconPalette_ExpShare[];
extern const u32 gItemIcon_QuickClaw[];
extern const u32 gItemIconPalette_QuickClaw[];
extern const u32 gItemIcon_SootheBell[];
extern const u32 gItemIconPalette_SootheBell[];
extern const u32 gItemIcon_InBattleHerb[];
extern const u32 gItemIconPalette_MentalHerb[];
extern const u32 gItemIcon_ChoiceBand[];
extern const u32 gItemIconPalette_ChoiceBand[];
extern const u32 gItemIcon_KingsRock[];
extern const u32 gItemIconPalette_KingsRock[];
extern const u32 gItemIcon_SilverPowder[];
extern const u32 gItemIconPalette_SilverPowder[];
extern const u32 gItemIcon_AmuletCoin[];
extern const u32 gItemIconPalette_AmuletCoin[];
extern const u32 gItemIcon_CleanseTag[];
extern const u32 gItemIconPalette_CleanseTag[];
extern const u32 gItemIcon_SoulDew[];
extern const u32 gItemIconPalette_SoulDew[];
extern const u32 gItemIcon_DeepSeaTooth[];
extern const u32 gItemIconPalette_DeepSeaTooth[];
extern const u32 gItemIcon_DeepSeaScale[];
extern const u32 gItemIconPalette_DeepSeaScale[];
extern const u32 gItemIcon_SmokeBall[];
extern const u32 gItemIconPalette_SmokeBall[];
extern const u32 gItemIcon_Everstone[];
extern const u32 gItemIconPalette_Everstone[];
extern const u32 gItemIcon_FocusBand[];
extern const u32 gItemIconPalette_FocusBand[];
extern const u32 gItemIcon_LuckyEgg[];
extern const u32 gItemIconPalette_LuckyEgg[];
extern const u32 gItemIcon_ScopeLens[];
extern const u32 gItemIconPalette_ScopeLens[];
extern const u32 gItemIcon_MetalCoat[];
extern const u32 gItemIconPalette_MetalCoat[];
extern const u32 gItemIcon_Leftovers[];
extern const u32 gItemIconPalette_Leftovers[];
extern const u32 gItemIcon_DragonScale[];
extern const u32 gItemIconPalette_DragonScale[];
extern const u32 gItemIcon_LightBall[];
extern const u32 gItemIconPalette_LightBall[];
extern const u32 gItemIcon_SoftSand[];
extern const u32 gItemIconPalette_SoftSand[];
extern const u32 gItemIcon_HardStone[];
extern const u32 gItemIconPalette_HardStone[];
extern const u32 gItemIcon_MiracleSeed[];
extern const u32 gItemIconPalette_MiracleSeed[];
extern const u32 gItemIcon_BlackGlasses[];
extern const u32 gItemIconPalette_BlackTypeEnhancingItem[];
extern const u32 gItemIcon_BlackBelt[];
extern const u32 gItemIconPalette_BlackTypeEnhancingItem[];
extern const u32 gItemIcon_Magnet[];
extern const u32 gItemIconPalette_Magnet[];
extern const u32 gItemIcon_MysticWater[];
extern const u32 gItemIconPalette_MysticWater[];
extern const u32 gItemIcon_SharpBeak[];
extern const u32 gItemIconPalette_SharpBeak[];
extern const u32 gItemIcon_PoisonBarb[];
extern const u32 gItemIconPalette_PoisonBarb[];
extern const u32 gItemIcon_NeverMeltIce[];
extern const u32 gItemIconPalette_NeverMeltIce[];
extern const u32 gItemIcon_SpellTag[];
extern const u32 gItemIconPalette_SpellTag[];
extern const u32 gItemIcon_TwistedSpoon[];
extern const u32 gItemIconPalette_TwistedSpoon[];
extern const u32 gItemIcon_Charcoal[];
extern const u32 gItemIconPalette_Charcoal[];
extern const u32 gItemIcon_DragonFang[];
extern const u32 gItemIconPalette_DragonFang[];
extern const u32 gItemIcon_SilkScarf[];
extern const u32 gItemIconPalette_SilkScarf[];
extern const u32 gItemIcon_UpGrade[];
extern const u32 gItemIconPalette_UpGrade[];
extern const u32 gItemIcon_ShellBell[];
extern const u32 gItemIconPalette_Shell[];
extern const u32 gItemIcon_SeaIncense[];
extern const u32 gItemIconPalette_SeaIncense[];
extern const u32 gItemIcon_LaxIncense[];
extern const u32 gItemIconPalette_LaxIncense[];
extern const u32 gItemIcon_LuckyPunch[];
extern const u32 gItemIconPalette_LuckyPunch[];
extern const u32 gItemIcon_MetalPowder[];
extern const u32 gItemIconPalette_MetalPowder[];
extern const u32 gItemIcon_ThickClub[];
extern const u32 gItemIconPalette_ThickClub[];
extern const u32 gItemIcon_Stick[];
extern const u32 gItemIconPalette_Stick[];
extern const u32 gItemIcon_Scarf[];
extern const u32 gItemIconPalette_RedScarf[];
extern const u32 gItemIconPalette_BlueScarf[];
extern const u32 gItemIconPalette_PinkScarf[];
extern const u32 gItemIconPalette_GreenScarf[];
extern const u32 gItemIconPalette_YellowScarf[];
extern const u32 gItemIcon_MachBike[];
extern const u32 gItemIconPalette_MachBike[];
extern const u32 gItemIcon_CoinCase[];
extern const u32 gItemIconPalette_CoinCase[];
extern const u32 gItemIcon_Itemfinder[];
extern const u32 gItemIconPalette_Itemfinder[];
extern const u32 gItemIcon_OldRod[];
extern const u32 gItemIconPalette_OldRod[];
extern const u32 gItemIcon_GoodRod[];
extern const u32 gItemIconPalette_GoodRod[];
extern const u32 gItemIcon_SuperRod[];
extern const u32 gItemIconPalette_SuperRod[];
extern const u32 gItemIcon_SSTicket[];
extern const u32 gItemIconPalette_SSTicket[];
extern const u32 gItemIcon_ContestPass[];
extern const u32 gItemIconPalette_ContestPass[];
extern const u32 gItemIcon_WailmerPail[];
extern const u32 gItemIconPalette_WailmerPail[];
extern const u32 gItemIcon_DevonGoods[];
extern const u32 gItemIconPalette_DevonGoods[];
extern const u32 gItemIcon_SootSack[];
extern const u32 gItemIconPalette_SootSack[];
extern const u32 gItemIcon_BasementKey[];
extern const u32 gItemIconPalette_OldKey[];
extern const u32 gItemIcon_AcroBike[];
extern const u32 gItemIconPalette_AcroBike[];
extern const u32 gItemIcon_PokeblockCase[];
extern const u32 gItemIconPalette_PokeblockCase[];
extern const u32 gItemIcon_Letter[];
extern const u32 gItemIcon_EonTicket[];
extern const u32 gItemIconPalette_EonTicket[];
extern const u32 gItemIcon_Orb[];
extern const u32 gItemIconPalette_RedOrb[];
extern const u32 gItemIconPalette_BlueOrb[];
extern const u32 gItemIcon_Scanner[];
extern const u32 gItemIconPalette_Scanner[];
extern const u32 gItemIcon_GoGoggles[];
extern const u32 gItemIconPalette_GoGoggles[];
extern const u32 gItemIcon_Meteorite[];
extern const u32 gItemIconPalette_Meteorite[];
extern const u32 gItemIcon_Room1Key[];
extern const u32 gItemIconPalette_Key[];
extern const u32 gItemIcon_Room2Key[];
extern const u32 gItemIcon_Room4Key[];
extern const u32 gItemIcon_Room6Key[];
extern const u32 gItemIcon_StorageKey[];
extern const u32 gItemIcon_RootFossil[];
extern const u32 gItemIconPalette_HoennFossil[];
extern const u32 gItemIcon_ClawFossil[];
extern const u32 gItemIcon_DevonScope[];
extern const u32 gItemIconPalette_DevonScope[];
extern const u32 gItemIcon_TMHM[];
extern const u32 gItemIconPalette_FightingTMHM[];
extern const u32 gItemIconPalette_DragonTMHM[];
extern const u32 gItemIconPalette_WaterTMHM[];
extern const u32 gItemIconPalette_PsychicTMHM[];
extern const u32 gItemIconPalette_NormalTMHM[];
extern const u32 gItemIconPalette_PoisonTMHM[];
extern const u32 gItemIconPalette_IceTMHM[];
extern const u32 gItemIconPalette_GrassTMHM[];
extern const u32 gItemIconPalette_FireTMHM[];
extern const u32 gItemIconPalette_DarkTMHM[];
extern const u32 gItemIconPalette_SteelTMHM[];
extern const u32 gItemIconPalette_ElectricTMHM[];
extern const u32 gItemIconPalette_GroundTMHM[];
extern const u32 gItemIconPalette_GhostTMHM[];
extern const u32 gItemIconPalette_RockTMHM[];
extern const u32 gItemIconPalette_FlyingTMHM[];

extern const u32 gItemIcon_OaksParcel[];
extern const u32 gItemIconPalette_OaksParcel[];
extern const u32 gItemIcon_PokeFlute[];
extern const u32 gItemIconPalette_PokeFlute[];
extern const u32 gItemIcon_SecretKey[];
extern const u32 gItemIconPalette_SecretKey[];
extern const u32 gItemIcon_BikeVoucher[];
extern const u32 gItemIconPalette_BikeVoucher[];
extern const u32 gItemIcon_GoldTeeth[];
extern const u32 gItemIconPalette_GoldTeeth[];
extern const u32 gItemIcon_OldAmber[];
extern const u32 gItemIconPalette_OldAmber[];
extern const u32 gItemIcon_CardKey[];
extern const u32 gItemIconPalette_CardKey[];
extern const u32 gItemIcon_LiftKey[];
extern const u32 gItemIconPalette_Key[];
extern const u32 gItemIcon_HelixFossil[];
extern const u32 gItemIconPalette_KantoFossil[];
extern const u32 gItemIcon_DomeFossil[];
extern const u32 gItemIcon_SilphScope[];
extern const u32 gItemIconPalette_SilphScope[];
extern const u32 gItemIcon_Bicycle[];
extern const u32 gItemIconPalette_Bicycle[];
extern const u32 gItemIcon_TownMap[];
extern const u32 gItemIconPalette_TownMap[];
extern const u32 gItemIcon_VSSeeker[];
extern const u32 gItemIconPalette_VSSeeker[];
extern const u32 gItemIcon_FameChecker[];
extern const u32 gItemIconPalette_FameChecker[];
extern const u32 gItemIcon_TMCase[];
extern const u32 gItemIconPalette_TMCase[];
extern const u32 gItemIcon_BerryPouch[];
extern const u32 gItemIconPalette_BerryPouch[];
extern const u32 gItemIcon_TeachyTV[];
extern const u32 gItemIconPalette_TeachyTV[];
extern const u32 gItemIcon_TriPass[];
extern const u32 gItemIconPalette_TriPass[];
extern const u32 gItemIcon_RainbowPass[];
extern const u32 gItemIconPalette_RainbowPass[];
extern const u32 gItemIcon_Tea[];
extern const u32 gItemIconPalette_Tea[];
extern const u32 gItemIcon_MysticTicket[];
extern const u32 gItemIconPalette_MysticTicket[];
extern const u32 gItemIcon_AuroraTicket[];
extern const u32 gItemIconPalette_AuroraTicket[];
extern const u32 gItemIcon_PowderJar[];
extern const u32 gItemIconPalette_PowderJar[];
extern const u32 gItemIcon_Gem[];
extern const u32 gItemIconPalette_Ruby[];
extern const u32 gItemIconPalette_Sapphire[];
extern const u32 gItemIcon_ReturnToFieldArrow[];
extern const u32 gItemIconPalette_ReturnToFieldArrow[];


extern const u32 gFile_graphics_battle_anims_masks_curse_sheet[];
extern const u32 gFile_graphics_battle_anims_masks_curse_tilemap[];
extern const u32 gBattleStatMask_Gfx[];
extern const u32 gBattleStatMask1_Pal[];
extern const u32 gBattleStatMask2_Pal[];
extern const u32 gBattleStatMask3_Pal[];
extern const u32 gBattleStatMask4_Pal[];
extern const u32 gBattleStatMask5_Pal[];
extern const u32 gBattleStatMask6_Pal[];
extern const u32 gBattleStatMask7_Pal[];
extern const u32 gBattleStatMask8_Pal[];
extern const u32 gBattleStatMask1_Tilemap[];
extern const u32 gBattleStatMask2_Tilemap[];

extern const u32 gSmokescreenImpactTiles[];
extern const u32 gSmokescreenImpactPalette[];
extern const u32 gEnemyMonShadow_Gfx[];


extern const u32 gBattleAnimSpriteGfx_Bone[];
extern const u32 gBattleAnimSpriteGfx_Spark[];
extern const u32 gBattleAnimSpriteGfx_Pencil[];
extern const u32 gBattleAnimSpriteGfx_AirWave[];
extern const u32 gBattleAnimSpriteGfx_Orb[];
extern const u32 gBattleAnimSpriteGfx_Sword[];
extern const u32 gBattleAnimSpriteGfx_Seed[];
extern const u32 gBattleAnimSpriteGfx_Explosion6[];
extern const u32 gBattleAnimSpriteGfx_PinkOrb[];
extern const u32 gBattleAnimSpriteGfx_Gust[];
extern const u32 gBattleAnimSpriteGfx_IceCube[];
extern const u32 gBattleAnimSpriteGfx_Spark2[];
extern const u32 gBattleAnimSpriteGfx_Orange[];
extern const u32 gBattleAnimSpriteGfx_YellowBall[];
extern const u32 gBattleAnimSpriteGfx_LockOn[];
extern const u32 gBattleAnimSpriteGfx_TiedBag[];
extern const u32 gBattleAnimSpriteGfx_BlackSmoke[];
extern const u32 gBattleAnimSpriteGfx_BlackBall[];
extern const u32 gBattleAnimSpriteGfx_Conversion[];
extern const u32 gBattleAnimSpriteGfx_Glass[];
extern const u32 gBattleAnimSpriteGfx_HornHit[];
extern const u32 gBattleAnimSpriteGfx_Hit[];
extern const u32 gBattleAnimSpriteGfx_BlueShards[];
extern const u32 gBattleAnimSpriteGfx_ClosingEye[];
extern const u32 gBattleAnimSpriteGfx_WavingHand[];
extern const u32 gBattleAnimSpriteGfx_HitDuplicate[];
extern const u32 gBattleAnimSpriteGfx_Leer[];
extern const u32 gBattleAnimSpriteGfx_BlueBurst[];
extern const u32 gBattleAnimSpriteGfx_SmallEmber[];
extern const u32 gBattleAnimSpriteGfx_GraySmoke[];
extern const u32 gBattleAnimSpriteGfx_BlueStar[];
extern const u32 gBattleAnimSpriteGfx_BubbleBurst[];
extern const u32 gBattleAnimSpriteGfx_Fire[];
extern const u32 gBattleAnimSpriteGfx_SpinningFire[];
extern const u32 gBattleAnimSpriteGfx_FirePlume[];
extern const u32 gBattleAnimSpriteGfx_Lightning2[];
extern const u32 gBattleAnimSpriteGfx_Lightning[];
extern const u32 gBattleAnimSpriteGfx_ClawSlash2[];
extern const u32 gBattleAnimSpriteGfx_ClawSlash[];
extern const u32 gBattleAnimSpriteGfx_Scratch3[];
extern const u32 gBattleAnimSpriteGfx_Scratch2[];
extern const u32 gBattleAnimSpriteGfx_BubbleBurst2[];
extern const u32 gBattleAnimSpriteGfx_IceChunk[];
extern const u32 gBattleAnimSpriteGfx_Glass2[];
extern const u32 gBattleAnimSpriteGfx_PinkHeart2[];
extern const u32 gBattleAnimSpriteGfx_SapDrip[];
extern const u32 gBattleAnimSpriteGfx_SapDrip[];
extern const u32 gBattleAnimSpriteGfx_Sparkle1[];
extern const u32 gBattleAnimSpriteGfx_Sparkle1[];
extern const u32 gBattleAnimSpriteGfx_HumanoidFoot[];
extern const u32 gBattleAnimSpriteGfx_MonsterFoot[];
extern const u32 gBattleAnimSpriteGfx_HumanoidHand[];
extern const u32 gBattleAnimSpriteGfx_NoiseLine[];
extern const u32 gBattleAnimSpriteGfx_YellowUnk[];
extern const u32 gBattleAnimSpriteGfx_RedFist[];
extern const u32 gBattleAnimSpriteGfx_SlamHit[];
extern const u32 gBattleAnimSpriteGfx_Ring[];
extern const u32 gBattleAnimSpriteGfx_Rocks[];
extern const u32 gBattleAnimSpriteGfx_Z[];
extern const u32 gBattleAnimSpriteGfx_YellowUnk2[];
extern const u32 gBattleAnimSpriteGfx_AirSlash[];
extern const u32 gBattleAnimSpriteGfx_SpinningGreenOrbs[];
extern const u32 gBattleAnimSpriteGfx_Leaf[];
extern const u32 gBattleAnimSpriteGfx_Finger[];
extern const u32 gBattleAnimSpriteGfx_PoisonPowder[];
extern const u32 gBattleAnimSpriteGfx_BrownTriangle[];
extern const u32 gBattleAnimSpriteGfx_Sparkle3[];
extern const u32 gBattleAnimSpriteGfx_Sparkle4[];
extern const u32 gBattleAnimSpriteGfx_MusicNotes[];
extern const u32 gBattleAnimSpriteGfx_Duck[];
extern const u32 gBattleAnimSpriteGfx_MudSand[];
extern const u32 gBattleAnimSpriteGfx_Alert[];
extern const u32 gBattleAnimSpriteGfx_BlueFlames[];
extern const u32 gBattleAnimSpriteGfx_BlueFlames2[];
extern const u32 gBattleAnimSpriteGfx_Shock4[];
extern const u32 gBattleAnimSpriteGfx_Shock[];
extern const u32 gBattleAnimSpriteGfx_Bell2[];
extern const u32 gBattleAnimSpriteGfx_PinkGlove[];
extern const u32 gBattleAnimSpriteGfx_BlueLines[];
extern const u32 gBattleAnimSpriteGfx_Impact3[];
extern const u32 gBattleAnimSpriteGfx_Impact2[];
extern const u32 gBattleAnimSpriteGfx_Reticle[];
extern const u32 gBattleAnimSpriteGfx_Breath[];
extern const u32 gBattleAnimSpriteGfx_Anger[];
extern const u32 gBattleAnimSpriteGfx_Snowball[];
extern const u32 gBattleAnimSpriteGfx_Vine[];
extern const u32 gBattleAnimSpriteGfx_Sword2[];
extern const u32 gBattleAnimSpriteGfx_Clapping[];
extern const u32 gBattleAnimSpriteGfx_RedTube[];
extern const u32 gBattleAnimSpriteGfx_Amnesia[];
extern const u32 gBattleAnimSpriteGfx_String2[];
extern const u32 gBattleAnimSpriteGfx_Pencil2[];
extern const u32 gBattleAnimSpriteGfx_Petal[];
extern const u32 gBattleAnimSpriteGfx_BentSpoon[];
extern const u32 gBattleAnimSpriteGfx_Web[];
extern const u32 gBattleAnimSpriteGfx_MilkBottle[];
extern const u32 gBattleAnimSpriteGfx_Coin[];
extern const u32 gBattleAnimSpriteGfx_CrackedEgg[];
extern const u32 gBattleAnimSpriteGfx_HatchedEgg[];
extern const u32 gBattleAnimSpriteGfx_FreshEgg[];
extern const u32 gBattleAnimSpriteGfx_Fangs[];
extern const u32 gBattleAnimSpriteGfx_Explosion2[];
extern const u32 gBattleAnimSpriteGfx_Explosion3[];
extern const u32 gBattleAnimSpriteGfx_WaterDroplet[];
extern const u32 gBattleAnimSpriteGfx_WaterDroplet2[];
extern const u32 gBattleAnimSpriteGfx_Seed2[];
extern const u32 gBattleAnimSpriteGfx_Sprout[];
extern const u32 gBattleAnimSpriteGfx_RedWand[];
extern const u32 gBattleAnimSpriteGfx_PurpleGreenUnk[];
extern const u32 gBattleAnimSpriteGfx_WaterColumn[];
extern const u32 gBattleAnimSpriteGfx_MudUnk[];
extern const u32 gBattleAnimSpriteGfx_RainDrops[];
extern const u32 gBattleAnimSpriteGfx_FurySwipes[];
extern const u32 gBattleAnimSpriteGfx_Vine2[];
extern const u32 gBattleAnimSpriteGfx_Teeth[];
extern const u32 gBattleAnimSpriteGfx_Bone2[];
extern const u32 gBattleAnimSpriteGfx_WhiteBag[];
extern const u32 gBattleAnimSpriteGfx_Unknown[];
extern const u32 gBattleAnimSpriteGfx_PurpleCoral[];
extern const u32 gBattleAnimSpriteGfx_PurpleDroplet[];
extern const u32 gBattleAnimSpriteGfx_Shock2[];
extern const u32 gBattleAnimSpriteGfx_ClosingEye2[];
extern const u32 gBattleAnimSpriteGfx_MetalBall[];
extern const u32 gBattleAnimSpriteGfx_MonsterDoll[];
extern const u32 gBattleAnimSpriteGfx_Whirlwind[];
extern const u32 gBattleAnimSpriteGfx_Whirlwind2[];
extern const u32 gBattleAnimSpriteGfx_Explosion4[];
extern const u32 gBattleAnimSpriteGfx_Explosion5[];
extern const u32 gBattleAnimSpriteGfx_Tongue[];
extern const u32 gBattleAnimSpriteGfx_Smoke[];
extern const u32 gBattleAnimSpriteGfx_Smoke2[];
extern const u32 gBattleAnimSpriteGfx_Impact[];
extern const u32 gBattleAnimSpriteGfx_Particles[];
extern const u32 gBattleAnimSpriteGfx_CircleImpact[];
extern const u32 gBattleAnimSpriteGfx_Scratch[];
extern const u32 gBattleAnimSpriteGfx_Cut[];
extern const u32 gBattleAnimSpriteGfx_SharpTeeth[];
extern const u32 gBattleAnimSpriteGfx_RainbowRings[];
extern const u32 gBattleAnimSpriteGfx_IceCrystals[];
extern const u32 gBattleAnimSpriteGfx_IceSpikes[];
extern const u32 gBattleAnimSpriteGfx_HandsAndFeet[];
extern const u32 gBattleAnimSpriteGfx_MistCloud[];
extern const u32 gBattleAnimSpriteGfx_Clamp[];
extern const u32 gBattleAnimSpriteGfx_Bubble[];
extern const u32 gBattleAnimSpriteGfx_Orbs[];
extern const u32 gBattleAnimSpriteGfx_WaterImpact[];
extern const u32 gBattleAnimSpriteGfx_WaterOrb[];
extern const u32 gBattleAnimSpriteGfx_PoisonBubble[];
extern const u32 gBattleAnimSpriteGfx_ToxicBubble[];
extern const u32 gBattleAnimSpriteGfx_Spikes[];
extern const u32 gBattleAnimSpriteGfx_HornHit2[];
extern const u32 gBattleAnimSpriteGfx_AirWave2[];
extern const u32 gBattleAnimSpriteGfx_SmallBubbles[];
extern const u32 gBattleAnimSpriteGfx_RoundShadow[];
extern const u32 gBattleAnimSpriteGfx_Sunlight[];
extern const u32 gBattleAnimSpriteGfx_Spore[];
extern const u32 gBattleAnimSpriteGfx_Flower[];
extern const u32 gBattleAnimSpriteGfx_RazorLeaf[];
extern const u32 gBattleAnimSpriteGfx_Needle[];
extern const u32 gBattleAnimSpriteGfx_WhirlwindLines[];
extern const u32 gBattleAnimSpriteGfx_GoldRing[];
extern const u32 gBattleAnimSpriteGfx_GreenLightWall[];
extern const u32 gBattleAnimSpriteGfx_BlackBall2[];
extern const u32 gBattleAnimSpriteGfx_SparkH[];
extern const u32 gBattleAnimSpriteGfx_YellowStar[];
extern const u32 gBattleAnimSpriteGfx_LargeFreshEgg[];
extern const u32 gBattleAnimSpriteGfx_ShadowBall[];
extern const u32 gBattleAnimSpriteGfx_Lick[];
extern const u32 gBattleAnimSpriteGfx_VoidLines[];
extern const u32 gBattleAnimSpriteGfx_String[];
extern const u32 gBattleAnimSpriteGfx_WebThread[];
extern const u32 gBattleAnimSpriteGfx_SpiderWeb[];
extern const u32 gBattleAnimSpriteGfx_Lightbulb[];
extern const u32 gBattleAnimSpriteGfx_Slash[];
extern const u32 gBattleAnimSpriteGfx_FocusEnergy[];
extern const u32 gBattleAnimSpriteGfx_SphereToCube[];
extern const u32 gBattleAnimSpriteGfx_Tendrils[];
extern const u32 gBattleAnimSpriteGfx_Eye[];
extern const u32 gBattleAnimSpriteGfx_WhiteShadow[];
extern const u32 gBattleAnimSpriteGfx_TealAlert[];
extern const u32 gBattleAnimSpriteGfx_OpeningEye[];
extern const u32 gBattleAnimSpriteGfx_RoundWhiteHalo[];
extern const u32 gBattleAnimSpriteGfx_FangAttack[];
extern const u32 gBattleAnimSpriteGfx_PurpleHandOutline[];
extern const u32 gBattleAnimSpriteGfx_Moon[];
extern const u32 gBattleAnimSpriteGfx_GreenSparkle[];
extern const u32 gBattleAnimSpriteGfx_Spiral[];
extern const u32 gBattleAnimSpriteGfx_SnoreZ[];
extern const u32 gBattleAnimSpriteGfx_Explosion[];
extern const u32 gBattleAnimSpriteGfx_Nail[];
extern const u32 gBattleAnimSpriteGfx_GhostlySpirit[];
extern const u32 gBattleAnimSpriteGfx_WarmRock[];
extern const u32 gBattleAnimSpriteGfx_BreakingEgg[];
extern const u32 gBattleAnimSpriteGfx_ThinRing[];
extern const u32 gBattleAnimSpriteGfx_PunchImpact[];
extern const u32 gBattleAnimSpriteGfx_Bell[];
extern const u32 gBattleAnimSpriteGfx_MusicNotes2[];
extern const u32 gBattleAnimSpriteGfx_SpeedDust[];
extern const u32 gBattleAnimSpriteGfx_TornMetal[];
extern const u32 gBattleAnimSpriteGfx_ThoughtBubble[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_ElectricOrbs[];
extern const u32 gBattleAnimSpriteGfx_CircleOfLight[];
extern const u32 gBattleAnimSpriteGfx_Electricity[];
extern const u32 gBattleAnimSpriteGfx_Finger2[];
extern const u32 gBattleAnimSpriteGfx_MovementWaves[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_RedOrb[];
extern const u32 gBattleAnimSpriteGfx_EyeSparkle[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_Angel[];
extern const u32 gBattleAnimSpriteGfx_Devil[];
extern const u32 gBattleAnimSpriteGfx_Swipe[];
extern const u32 gBattleAnimSpriteGfx_Roots[];
extern const u32 gBattleAnimSpriteGfx_ItemBag[];
extern const u32 gBattleAnimSpriteGfx_JaggedMusicNote[];
extern const u32 gBattleAnimSpriteGfx_Pokeball[];
extern const u32 gBattleAnimSpriteGfx_Spotlight[];
extern const u32 gBattleAnimSpriteGfx_LetterZ[];
extern const u32 gBattleAnimSpriteGfx_RapidSpin[];
extern const u32 gBattleAnimSpriteGfx_TriAttackTriangle[];
extern const u32 gBattleAnimSpriteGfx_WispOrb[];
extern const u32 gBattleAnimSpriteGfx_WispFire[];
extern const u32 gBattleAnimSpriteGfx_GoldStars[];
extern const u32 gBattleAnimSpriteGfx_EclipsingOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_PinkPetal[];
extern const u32 gBattleAnimSpriteGfx_PainSplit[];
extern const u32 gBattleAnimSpriteGfx_Confetti[];
extern const u32 gBattleAnimSpriteGfx_GreenStar[];
extern const u32 gBattleAnimSpriteGfx_PinkCloud[];
extern const u32 gBattleAnimSpriteGfx_SweatDrop[];
extern const u32 gBattleAnimSpriteGfx_GuardRing[];
extern const u32 gBattleAnimSpriteGfx_PurpleScratch[];
extern const u32 gBattleAnimSpriteGfx_PurpleSwipe[];
extern const u32 gBattleAnimSpriteGfx_TagHand[];
extern const u32 gBattleAnimSpriteGfx_SmallRedEye[];
extern const u32 gBattleAnimSpriteGfx_HollowOrb[];
extern const u32 gBattleAnimSpriteGfx_XSign[];
extern const u32 gBattleAnimSpriteGfx_BluegreenOrb[];
extern const u32 gBattleAnimSpriteGfx_PawPrint[];
extern const u32 gBattleAnimSpriteGfx_PurpleFlame[];
extern const u32 gBattleAnimSpriteGfx_RedBall[];
extern const u32 gBattleAnimSpriteGfx_SmellingsaltEffect[];
extern const u32 gBattleAnimSpriteGfx_Meteor[];
extern const u32 gBattleAnimSpriteGfx_FlatRock[];
extern const u32 gBattleAnimSpriteGfx_MagnifyingGlass[];
extern const u32 gBattleAnimSpriteGfx_MetalSoundWaves[];
extern const u32 gBattleAnimSpriteGfx_FlyingDirt[];
extern const u32 gBattleAnimSpriteGfx_IcicleSpear[];
extern const u32 gBattleAnimSpriteGfx_Hail[];
extern const u32 gBattleAnimSpriteGfx_GlowyRedOrb[];
extern const u32 gBattleAnimSpriteGfx_GreenSpike[];
extern const u32 gBattleAnimSpriteGfx_SafariBait[];
extern const u32 gBattleAnimSpriteGfx_WhiteFeather[];
extern const u32 gBattleAnimSpriteGfx_Sparkle6[];
extern const u32 gBattleAnimSpriteGfx_Splash[];
extern const u32 gBattleAnimSpriteGfx_SweatBead[];
extern const u32 gBattleAnimSpriteGfx_Gem1[];
extern const u32 gBattleAnimSpriteGfx_Gem2[];
extern const u32 gBattleAnimSpriteGfx_Gem3[];
extern const u32 gBattleAnimSpriteGfx_SlamHit2[];
extern const u32 gBattleAnimSpriteGfx_Recycle[];
extern const u32 gBattleAnimSpriteGfx_RedParticles[];
extern const u32 gBattleAnimSpriteGfx_Protect[];
extern const u32 gBattleAnimSpriteGfx_DirtMound[];
extern const u32 gBattleAnimSpriteGfx_Shock3[];
extern const u32 gBattleAnimSpriteGfx_WeatherBall[];
extern const u32 gBattleAnim_ScaryFaceGfx[];
extern const u32 gBattleAnim_ScaryFacePal[];
extern const u32 gBattleAnimBgTilemap_ScaryFacePlayer[];
extern const u32 gBattleAnimBgTilemap_ScaryFaceOpponent[];
extern const u32 gBattleAnimBgTilemap_ScaryFaceContest[];
extern const u32 gBattleAnimSpriteGfx_Bird[];
extern const u32 gBattleAnimSpriteGfx_CrossImpact[];


extern const u32 gBattleAnimSpritePal_Bone[];
extern const u32 gBattleAnimSpritePal_Spark[];
extern const u32 gBattleAnimSpritePal_Pencil[];
extern const u32 gBattleAnimSpritePal_AirWave[];
extern const u32 gBattleAnimSpritePal_Orb[];
extern const u32 gBattleAnimSpritePal_Sword[];
extern const u32 gBattleAnimSpritePal_Seed[];
extern const u32 gBattleAnimSpritePal_Explosion6[];
extern const u32 gBattleAnimSpritePal_PinkOrb[];
extern const u32 gBattleAnimSpritePal_Gust[];
extern const u32 gBattleAnimSpritePal_IceCube[];
extern const u32 gBattleAnimSpritePal_Spark2[];
extern const u32 gBattleAnimSpritePal_Orange[];
extern const u32 gBattleAnimSpritePal_YellowBall[];
extern const u32 gBattleAnimSpritePal_LockOn[];
extern const u32 gBattleAnimSpritePal_TiedBag[];
extern const u32 gBattleAnimSpritePal_BlackSmoke[];
extern const u32 gBattleAnimSpritePal_Conversion[];
extern const u32 gBattleAnimSpritePal_Glass[];
extern const u32 gBattleAnimSpritePal_HornHit[];
extern const u32 gBattleAnimSpritePal_Hit[];
extern const u32 gBattleAnimSpritePal_Hit2[];
extern const u32 gBattleAnimSpritePal_BlueShards[];
extern const u32 gBattleAnimSpritePal_ClosingEye[];
extern const u32 gBattleAnimSpritePal_WavingHand[];
extern const u32 gBattleAnimSpritePal_HitDuplicate[];
extern const u32 gBattleAnimSpritePal_Leer[];
extern const u32 gBattleAnimSpritePal_BlueBurst[];
extern const u32 gBattleAnimSpritePal_SmallEmber[];
extern const u32 gBattleAnimSpritePal_GraySmoke[];
extern const u32 gBattleAnimSpritePal_BlueStar[];
extern const u32 gBattleAnimSpritePal_BubbleBurst[];
extern const u32 gBattleAnimSpritePal_Fire[];
extern const u32 gBattleAnimSpritePal_Lightning2[];
extern const u32 gBattleAnimSpritePal_ClawSlash2[];
extern const u32 gBattleAnimSpritePal_ClawSlash[];
extern const u32 gBattleAnimSpritePal_BubbleBurst2[];
extern const u32 gBattleAnimSpritePal_IceChunk[];
extern const u32 gBattleAnimSpritePal_Glass2[];
extern const u32 gBattleAnimSpritePal_PinkHeart2[];
extern const u32 gBattleAnimSpritePal_SapDrip[];
extern const u32 gBattleAnimSpritePal_SapDrip2[];
extern const u32 gBattleAnimSpritePal_Sparkle1[];
extern const u32 gBattleAnimSpritePal_Sparkle2[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_HitDuplicate[];
extern const u32 gBattleAnimSpritePal_YellowUnk[];
extern const u32 gBattleAnimSpritePal_SlamHit[];
extern const u32 gBattleAnimSpritePal_Ring[];
extern const u32 gBattleAnimSpritePal_Rocks[];
extern const u32 gBattleAnimSpritePal_Z[];
extern const u32 gBattleAnimSpritePal_YellowUnk2[];
extern const u32 gBattleAnimSpritePal_AirSlash[];
extern const u32 gBattleAnimSpritePal_SpinningGreenOrbs[];
extern const u32 gBattleAnimSpritePal_Leaf[];
extern const u32 gBattleAnimSpritePal_Finger[];
extern const u32 gBattleAnimSpritePal_PoisonPowder[];
extern const u32 gBattleAnimSpritePal_BrownTriangle[];
extern const u32 gBattleAnimSpritePal_SleepPowder[];
extern const u32 gBattleAnimSpritePal_StunSpore[];
extern const u32 gBattleAnimSpritePal_PoisonPowder[];
extern const u32 gBattleAnimSpritePal_Sparkle3[];
extern const u32 gBattleAnimSpritePal_MusicNotes[];
extern const u32 gBattleAnimSpritePal_Duck[];
extern const u32 gBattleAnimSpritePal_MudSand[];
extern const u32 gBattleAnimSpritePal_Alert[];
extern const u32 gBattleAnimSpritePal_BlueFlames[];
extern const u32 gBattleAnimSpritePal_Shock4[];
extern const u32 gBattleAnimSpritePal_Bell2[];
extern const u32 gBattleAnimSpritePal_PinkGlove[];
extern const u32 gBattleAnimSpritePal_BlueLines[];
extern const u32 gBattleAnimSpritePal_Impact3[];
extern const u32 gBattleAnimSpritePal_Impact2[];
extern const u32 gBattleAnimSpritePal_Reticle[];
extern const u32 gBattleAnimSpritePal_Breath[];
extern const u32 gBattleAnimSpritePal_Anger[];
extern const u32 gBattleAnimSpritePal_Snowball[];
extern const u32 gBattleAnimSpritePal_Vine[];
extern const u32 gBattleAnimSpritePal_Sword2[];
extern const u32 gBattleAnimSpritePal_Clapping[];
extern const u32 gBattleAnimSpritePal_RedTube[];
extern const u32 gBattleAnimSpritePal_Amnesia[];
extern const u32 gBattleAnimSpritePal_String2[];
extern const u32 gBattleAnimSpritePal_Pencil2[];
extern const u32 gBattleAnimSpritePal_Petal[];
extern const u32 gBattleAnimSpritePal_BentSpoon[];
extern const u32 gBattleAnimSpritePal_MilkBottle[];
extern const u32 gBattleAnimSpritePal_Coin[];
extern const u32 gBattleAnimSpritePal_CrackedEgg[];
extern const u32 gBattleAnimSpritePal_FreshEgg[];
extern const u32 gBattleAnimSpritePal_Fangs[];
extern const u32 gBattleAnimSpritePal_Explosion2[];
extern const u32 gBattleAnimSpritePal_WaterDroplet[];
extern const u32 gBattleAnimSpritePal_Seed2[];
extern const u32 gBattleAnimSpritePal_RedWand[];
extern const u32 gBattleAnimSpritePal_PurpleGreenUnk[];
extern const u32 gBattleAnimSpritePal_WaterColumn[];
extern const u32 gBattleAnimSpritePal_MudUnk[];
extern const u32 gBattleAnimSpritePal_RainDrops[];
extern const u32 gBattleAnimSpritePal_FurySwipes[];
extern const u32 gBattleAnimSpritePal_Vine2[];
extern const u32 gBattleAnimSpritePal_Teeth[];
extern const u32 gBattleAnimSpritePal_Bone2[];
extern const u32 gBattleAnimSpritePal_WhiteBag[];
extern const u32 gBattleAnimSpritePal_Unknown[];
extern const u32 gBattleAnimSpritePal_PurpleCoral[];
extern const u32 gBattleAnimSpritePal_Shock2[];
extern const u32 gBattleAnimSpritePal_ClosingEye2[];
extern const u32 gBattleAnimSpritePal_MetalBall[];
extern const u32 gBattleAnimSpritePal_MonsterDoll[];
extern const u32 gBattleAnimSpritePal_Whirlwind[];
extern const u32 gBattleAnimSpritePal_Explosion4[];
extern const u32 gBattleAnimSpritePal_Tongue[];
extern const u32 gBattleAnimSpritePal_Smoke[];
extern const u32 gBattleAnimSpritePal_Impact[];
extern const u32 gBattleAnimSpritePal_CircleImpact[];
extern const u32 gBattleAnimSpritePal_SharpTeeth[];
extern const u32 gBattleAnimSpritePal_RainbowRings[];
extern const u32 gBattleAnimSpritePal_IceCrystals[];
extern const u32 gBattleAnimSpritePal_HandsAndFeet[];
extern const u32 gBattleAnimSpritePal_MistCloud[];
extern const u32 gBattleAnimSpritePal_Orbs[];
extern const u32 gBattleAnimSpritePal_WaterImpact[];
extern const u32 gBattleAnimSpritePal_PoisonBubble[];
extern const u32 gBattleAnimSpritePal_Spikes[];
extern const u32 gBattleAnimSpritePal_HornHit2[];
extern const u32 gBattleAnimSpritePal_AirWave2[];
extern const u32 gBattleAnimSpritePal_SmallBubbles[];
extern const u32 gBattleAnimSpritePal_RoundShadow[];
extern const u32 gBattleAnimSpritePal_Sunlight[];
extern const u32 gBattleAnimSpritePal_Spore[];
extern const u32 gBattleAnimSpritePal_Flower[];
extern const u32 gBattleAnimSpritePal_RazorLeaf[];
extern const u32 gBattleAnimSpritePal_Needle[];
extern const u32 gBattleAnimSpritePal_WhirlwindLines[];
extern const u32 gBattleAnimSpritePal_GoldRing[];
extern const u32 gBattleAnimSpritePal_PurpleRing[];
extern const u32 gBattleAnimSpritePal_BlueRing[];
extern const u32 gBattleAnimSpritePal_GreenLightWall[];
extern const u32 gBattleAnimSpritePal_BlueLightWall[];
extern const u32 gBattleAnimSpritePal_RedLightWall[];
extern const u32 gBattleAnimSpritePal_GrayLightWall[];
extern const u32 gBattleAnimSpritePal_OrangeLightWall[];
extern const u32 gBattleAnimSpritePal_BlackBall2[];
extern const u32 gBattleAnimSpritePal_PurpleGasCloud[];
extern const u32 gBattleAnimSpritePal_YellowStar[];
extern const u32 gBattleAnimSpritePal_LargeFreshEgg[];
extern const u32 gBattleAnimSpritePal_ShadowBall[];
extern const u32 gBattleAnimSpritePal_Lick[];
extern const u32 gBattleAnimSpritePal_VoidLines[];
extern const u32 gBattleAnimSpritePal_String[];
extern const u32 gBattleAnimSpritePal_Lightbulb[];
extern const u32 gBattleAnimSpritePal_Slash[];
extern const u32 gBattleAnimSpritePal_FocusEnergy[];
extern const u32 gBattleAnimSpritePal_SphereToCube[];
extern const u32 gBattleAnimSpritePal_Tendrils[];
extern const u32 gBattleAnimSpritePal_Eye[];
extern const u32 gBattleAnimSpritePal_WhiteShadow[];
extern const u32 gBattleAnimSpritePal_TealAlert[];
extern const u32 gBattleAnimSpritePal_OpeningEye[];
extern const u32 gBattleAnimSpritePal_RoundWhiteHalo[];
extern const u32 gBattleAnimSpritePal_FangAttack[];
extern const u32 gBattleAnimSpritePal_PurpleHandOutline[];
extern const u32 gBattleAnimSpritePal_Moon[];
extern const u32 gBattleAnimSpritePal_GreenSparkle[];
extern const u32 gBattleAnimSpritePal_Spiral[];
extern const u32 gBattleAnimSpritePal_SnoreZ[];
extern const u32 gBattleAnimSpritePal_Explosion[];
extern const u32 gBattleAnimSpritePal_Nail[];
extern const u32 gBattleAnimSpritePal_GhostlySpirit[];
extern const u32 gBattleAnimSpritePal_WarmRock[];
extern const u32 gBattleAnimSpritePal_BreakingEgg[];
extern const u32 gBattleAnimSpritePal_ThinRing[];
extern const u32 gBattleAnimSpritePal_PunchImpact[];
extern const u32 gBattleAnimSpritePal_Bell[];
extern const u32 gBattleAnimSpritePal_MusicNotes2[];
extern const u32 gBattleAnimSpritePal_SpeedDust[];
extern const u32 gBattleAnimSpritePal_ThoughtBubble[];
extern const u32 gBattleAnimSpritePal_MagentaHeart[];
extern const u32 gBattleAnimSpritePal_ElectricOrbs[];
extern const u32 gBattleAnimSpritePal_MovementWaves[];
extern const u32 gBattleAnimSpritePal_RedHeart[];
extern const u32 gBattleAnimSpritePal_RedOrb[];
extern const u32 gBattleAnimSpritePal_EyeSparkle[];
extern const u32 gBattleAnimSpritePal_PinkHeart[];
extern const u32 gBattleAnimSpritePal_Angel[];
extern const u32 gBattleAnimSpritePal_Devil[];
extern const u32 gBattleAnimSpritePal_Swipe[];
extern const u32 gBattleAnimSpritePal_Roots[];
extern const u32 gBattleAnimSpritePal_ItemBag[];
extern const u32 gBattleAnimSpritePal_JaggedMusicNote[];
extern const u32 gBattleAnimSpritePal_Pokeball[];
extern const u32 gBattleAnimSpritePal_LetterZ[];
extern const u32 gBattleAnimSpritePal_RapidSpin[];
extern const u32 gBattleAnimSpritePal_TriAttackTriangle[];
extern const u32 gBattleAnimSpritePal_WispOrb[];
extern const u32 gBattleAnimSpritePal_GoldStars[];
extern const u32 gBattleAnimSpritePal_EclipsingOrb[];
extern const u32 gBattleAnimSpritePal_GrayOrb[];
extern const u32 gBattleAnimSpritePal_BlueOrb[];
extern const u32 gBattleAnimSpritePal_RedOrb2[];
extern const u32 gBattleAnimSpritePal_PinkPetal[];
extern const u32 gBattleAnimSpritePal_PainSplit[];
extern const u32 gBattleAnimSpritePal_Confetti[];
extern const u32 gBattleAnimSpritePal_GreenStar[];
extern const u32 gBattleAnimSpritePal_PinkCloud[];
extern const u32 gBattleAnimSpritePal_SweatDrop[];
extern const u32 gBattleAnimSpritePal_GuardRing[];
extern const u32 gBattleAnimSpritePal_PurpleScratch[];
extern const u32 gBattleAnimSpritePal_SmallRedEye[];
extern const u32 gBattleAnimSpritePal_HollowOrb[];
extern const u32 gBattleAnimSpritePal_BluegreenOrb[];
extern const u32 gBattleAnimSpritePal_PawPrint[];
extern const u32 gBattleAnimSpritePal_PurpleFlame[];
extern const u32 gBattleAnimSpritePal_RedBall[];
extern const u32 gBattleAnimSpritePal_SmellingsaltEffect[];
extern const u32 gBattleAnimSpritePal_Meteor[];
extern const u32 gBattleAnimSpritePal_FlatRock[];
extern const u32 gBattleAnimSpritePal_MagnifyingGlass[];
extern const u32 gBattleAnimSpritePal_BrownOrb[];
extern const u32 gBattleAnimSpritePal_MetalSoundWaves[];
extern const u32 gBattleAnimSpritePal_FlyingDirt[];
extern const u32 gBattleAnimSpritePal_IcicleSpear[];
extern const u32 gBattleAnimSpritePal_Hail[];
extern const u32 gBattleAnimSpritePal_GlowyRedOrb[];
extern const u32 gBattleAnimSpritePal_GlowyGreenOrb[];
extern const u32 gBattleAnimSpritePal_GreenSpike[];
extern const u32 gBattleAnimSpritePal_WhiteCircleOfLight[];
extern const u32 gBattleAnimSpritePal_GlowyBlueOrb[];
extern const u32 gBattleAnimSpritePal_SafariBait[];
extern const u32 gBattleAnimSpritePal_WhiteFeather[];
extern const u32 gBattleAnimSpritePal_Sparkle6[];
extern const u32 gBattleAnimSpritePal_Splash[];
extern const u32 gBattleAnimSpritePal_Gem1[];
extern const u32 gBattleAnimSpritePal_SlamHit2[];
extern const u32 gBattleAnimSpritePal_Recycle[];
extern const u32 gBattleAnimSpritePal_RedParticles[];
extern const u32 gBattleAnimSpritePal_Protect[];
extern const u32 gBattleAnimSpritePal_DirtMound[];
extern const u32 gBattleAnimSpritePal_Shock3[];
extern const u32 gBattleAnimSpritePal_WeatherBall[];
extern const u32 gBattleAnimSpritePal_Bird[];
extern const u32 gBattleAnimSpritePal_CrossImpact[];
extern const u32 gBattleAnimSpritePal_Slash2[];
extern const u32 gBattleAnimSpritePal_WhipHit[];
extern const u32 gBattleAnimSpritePal_BlueRing2[];


extern const u32 gUnusedLevelupAnimationGfx[];
extern const u32 gUnusedLevelupAnimationTilemap[];
extern const u32 gCureBubblesGfx[];
extern const u32 gCureBubblesPal[];
extern const u32 gCureBubblesTilemap[];
extern const u32 gBattleAnimBg_AttractGfx[];
extern const u32 gBattleAnimBg_AttractTilemap[];
extern const u32 gBattleAnimBg_AttractPal[];
extern const u32 gBattleAnim_MorningSunGfx[];
extern const u32 gBattleAnim_MorningSunTilemap[];
extern const u32 gBattleAnim_MorningSunPal[];


extern const u32 gBattleAnimBgImage_Dark[];
extern const u32 gBattleAnimBgImage_Ghost[];
extern const u32 gBattleAnimBgImage_Psychic[];
extern const u32 gBattleAnimBgImage_Impact[];
extern const u32 gBattleAnimBgImage_Drill[];
extern const u32 gBattleAnimBgImage_Highspeed[];
extern const u32 gBattleAnimBgImage_Thunder[];
extern const u32 gBattleAnimBgImage_Guillotine[];
extern const u32 gBattleAnimBgImage_Ice[];
extern const u32 gBattleAnimBgImage_Cosmic[];
extern const u32 gBattleAnimBgImage_InAir[];
extern const u32 gBattleAnimBgImage_Aurora[];
extern const u32 gBattleAnimBgImage_Fissure[];
extern const u32 gBattleAnimBgImage_Surf[];
extern const u32 gBattleAnimBgPalette_Dark[];
extern const u32 gBattleAnimBgPalette_Ghost[];
extern const u32 gBattleAnimBgPalette_Psychic[];
extern const u32 gBattleAnimBgPalette_Impact[];
extern const u32 gBattleAnimBgPalette_Drill[];
extern const u32 gBattleAnimBgPalette_Highspeed[];
extern const u32 gBattleAnimBgPalette_Thunder[];
extern const u32 gBattleAnimBgPalette_Guillotine[];
extern const u32 gBattleAnimBgPalette_Ice[];
extern const u32 gBattleAnimBgPalette_Cosmic[];
extern const u32 gBattleAnimBgPalette_InAir[];
extern const u32 gBattleAnimBgPalette_MuddyWater[];
extern const u32 gBattleAnimBgPalette_Sky[];
extern const u32 gBattleAnimBgPalette_Aurora[];
extern const u32 gBattleAnimBgPalette_Fissure[];
extern const u32 gBattleAnimBgPalette_Bug[];
extern const u32 gBattleAnimBgPalette_SolarBeam[];
extern const u32 gBattleAnimBgPalette_Surf[];
extern const u32 gBattleAnimBgTilemap_Dark[];
extern const u32 gBattleAnimBgTilemap_Ghost[];
extern const u32 gBattleAnimBgTilemap_Psychic[];
extern const u32 gBattleAnimBgTilemap_ImpactOpponent[];
extern const u32 gBattleAnimBgTilemap_ImpactPlayer[];
extern const u32 gBattleAnimBgTilemap_ImpactContests[];
extern const u32 gBattleAnimBgTilemap_Drill[];
extern const u32 gBattleAnimBgTilemap_DrillContests[];
extern const u32 gBattleAnimBgTilemap_HighspeedOpponent[];
extern const u32 gBattleAnimBgTilemap_HighspeedPlayer[];
extern const u32 gBattleAnimBgTilemap_Thunder[];
extern const u32 gBattleAnimBgTilemap_GuillotineOpponent[];
extern const u32 gBattleAnimBgTilemap_GuillotinePlayer[];
extern const u32 gBattleAnimBgTilemap_GuillotineContests[];
extern const u32 gBattleAnimBgTilemap_Ice[];
extern const u32 gBattleAnimBgTilemap_Cosmic[];
extern const u32 gBattleAnimBgTilemap_InAir[];
extern const u32 gBattleAnimBgTilemap_Aurora[];
extern const u32 gBattleAnimBgTilemap_Fissure[];
extern const u32 gBattleAnimBgTilemap_SurfOpponent[];
extern const u32 gBattleAnimBgTilemap_SurfPlayer[];
extern const u32 gBattleAnimBgTilemap_SurfContest[];


extern const u32 gMetalShineGfx[];
extern const u32 gMetalShinePalette[];
extern const u32 gMetalShineTilemap[];


extern const u32 gFile_graphics_battle_anims_backgrounds_scary_face_sheet[];
extern const u32 gFile_graphics_battle_anims_backgrounds_scary_face_palette[];
extern const u32 gFile_graphics_battle_anims_backgrounds_scary_face_player_tilemap[];


extern const u32 gFile_graphics_battle_anims_backgrounds_sandstorm_brew_tilemap[];
extern const u32 gFile_graphics_battle_anims_backgrounds_sandstorm_brew_sheet[];
extern const u32 gBattleAnimSpritePal_FlyingDirt[];


extern const u16 gGraphics_TitleScreen_GameTitleLogoPals[];
extern const u8 gGraphics_TitleScreen_GameTitleLogoTiles[];
extern const u8 gGraphics_TitleScreen_GameTitleLogoMap[];
extern const u16 gGraphics_TitleScreen_BoxArtMonPals[];
extern const u8 gGraphics_TitleScreen_BoxArtMonTiles[];
extern const u8 gGraphics_TitleScreen_BoxArtMonMap[];
extern u16 gGraphics_TitleScreen_BackgroundPals[];
extern const u8 gGraphics_TitleScreen_CopyrightPressStartTiles[];
extern const u8 gGraphics_TitleScreen_CopyrightPressStartMap[];
extern const u16 gTitleScreen_Slash_Pal[];
extern const u32 gTitleScreen_BlankSprite_Tiles[];


extern const u32 gHealthboxSinglesPlayerGfx[];
extern const u32 gHealthboxSinglesOpponentGfx[];
extern const u32 gHealthboxDoublesPlayerGfx[];
extern const u32 gHealthboxDoublesOpponentGfx[];
extern const u32 gHealthboxSafariGfx[];
extern const u32 gBlankGfxCompressed[];
extern const u32 gInterfaceGfx_HPNumbers[];
extern const u32 gGhostFrontPic[];
extern const u32 gGhostPalette[];
extern const u32 gSubstituteDollGfx[];
extern const u32 gSubstituteDollTilemap[];
extern const u32 gSubstituteDollPal[];


extern const u8 gWeatherFogHorizontalTiles[];
extern const u32 gBattleAnimFogTilemap[];
extern const u16 gDefaultWeatherSpritePalette[];


extern const u32 gPartyMenuPokeball_Gfx[];
extern const u32 gPartyMenuPokeball_Pal[];
extern const u32 gPartyMenuPokeballSmall_Gfx[];
extern const u32 gStatusGfx_Icons[];
extern const u32 gStatusPal_Icons[];
extern const u32 gPartyMenuBg_Gfx[];
extern const u32 gPartyMenuBg_Tilemap[];
extern const u32 gPartyMenuBg_Pal[];


extern const u32 gCreditsMonPokeball_Tiles[];
extern const u32 gCreditsMonPokeball_Tilemap[];
extern const u16 gCreditsMonPokeball_Pals[][16];
extern const u16 gCreditsCopyright_Pal[];
extern const u8 gCreditsCopyright_Tiles[];
extern const u8 gCreditsCopyright_Tilemap[];


extern const u32 gBerryPouchSpriteTiles[];
extern const u8 gBerryPouchBgGfx[];
extern const u32 gBerryPouchBgPals[];
extern const u32 gBerryPouchBgPal0FemaleOverride[];
extern const u32 gBerryPouchSpritePalette[];
extern const u8 gBerryPouchBg1Tilemap[];

extern const u8 gTrainerBackPic_Red[];
extern const u8 gTrainerBackPic_Leaf[];
extern const u8 gTrainerBackPic_Pokedude[];
extern const u8 gTrainerBackPic_OldMan[];
extern const u8 gTrainerBackPic_RSBrendan[];
extern const u8 gTrainerBackPic_RSMay[];


extern const u16 gFile_graphics_mail_orange_palette_pal[];
extern const u16 gFile_graphics_mail_harbor_palette_pal[];
extern const u16 gFile_graphics_mail_glitter_palette_pal[];
extern const u16 gFile_graphics_mail_mech_palette_pal[];
extern const u16 gFile_graphics_mail_wood_palette_pal[];
extern const u16 gFile_graphics_mail_wave_palette_pal[];
extern const u16 gFile_graphics_mail_bead_palette_pal[];
extern const u16 gFile_graphics_mail_shadow_palette_pal[];
extern const u16 gFile_graphics_mail_tropic_palette_pal[];
extern const u16 gFile_graphics_mail_dream_palette_pal[];
extern const u16 gFile_graphics_mail_fab_palette_pal[];
extern const u16 gFile_graphics_mail_retro_palette_pal[];
extern const u32 gFile_graphics_mail_orange_tiles_sheet[];
extern const u32 gFile_graphics_mail_harbor_tiles_sheet[];
extern const u32 gFile_graphics_mail_glitter_tiles_sheet[];
extern const u32 gFile_graphics_mail_mech_tiles_sheet[];
extern const u32 gFile_graphics_mail_wood_tiles_sheet[];
extern const u32 gFile_graphics_mail_wave_tiles_sheet[];
extern const u32 gFile_graphics_mail_bead_tiles_sheet[];
extern const u32 gFile_graphics_mail_shadow_tiles_sheet[];
extern const u32 gFile_graphics_mail_tropic_tiles_sheet[];
extern const u32 gFile_graphics_mail_dream_tiles_sheet[];
extern const u32 gFile_graphics_mail_fab_tiles_sheet[];
extern const u32 gFile_graphics_mail_retro_tiles_sheet[];
extern const u32 gFile_graphics_mail_orange_map_tilemap[];
extern const u32 gFile_graphics_mail_harbor_map_tilemap[];
extern const u32 gFile_graphics_mail_glitter_map_tilemap[];
extern const u32 gFile_graphics_mail_mech_map_tilemap[];
extern const u32 gFile_graphics_mail_wood_map_tilemap[];
extern const u32 gFile_graphics_mail_wave_map_tilemap[];
extern const u32 gFile_graphics_mail_bead_map_tilemap[];
extern const u32 gFile_graphics_mail_shadow_map_tilemap[];
extern const u32 gFile_graphics_mail_tropic_map_tilemap[];
extern const u32 gFile_graphics_mail_dream_map_tilemap[];
extern const u32 gFile_graphics_mail_fab_map_tilemap[];
extern const u32 gFile_graphics_mail_retro_map_tilemap[];


extern const u8 gMonIcon_Bulbasaur[];
extern const u8 gMonIcon_Ivysaur[];
extern const u8 gMonIcon_Venusaur[];
extern const u8 gMonIcon_Charmander[];
extern const u8 gMonIcon_Charmeleon[];
extern const u8 gMonIcon_Charizard[];
extern const u8 gMonIcon_Squirtle[];
extern const u8 gMonIcon_Wartortle[];
extern const u8 gMonIcon_Blastoise[];
extern const u8 gMonIcon_Caterpie[];
extern const u8 gMonIcon_Metapod[];
extern const u8 gMonIcon_Butterfree[];
extern const u8 gMonIcon_Weedle[];
extern const u8 gMonIcon_Kakuna[];
extern const u8 gMonIcon_Beedrill[];
extern const u8 gMonIcon_Pidgey[];
extern const u8 gMonIcon_Pidgeotto[];
extern const u8 gMonIcon_Pidgeot[];
extern const u8 gMonIcon_Rattata[];
extern const u8 gMonIcon_Raticate[];
extern const u8 gMonIcon_Spearow[];
extern const u8 gMonIcon_Fearow[];
extern const u8 gMonIcon_Ekans[];
extern const u8 gMonIcon_Arbok[];
extern const u8 gMonIcon_Pikachu[];
extern const u8 gMonIcon_Raichu[];
extern const u8 gMonIcon_Sandshrew[];
extern const u8 gMonIcon_Sandslash[];
extern const u8 gMonIcon_Nidoran_f[];
extern const u8 gMonIcon_Nidorina[];
extern const u8 gMonIcon_Nidoqueen[];
extern const u8 gMonIcon_Nidoran_m[];
extern const u8 gMonIcon_Nidorino[];
extern const u8 gMonIcon_Nidoking[];
extern const u8 gMonIcon_Clefairy[];
extern const u8 gMonIcon_Clefable[];
extern const u8 gMonIcon_Vulpix[];
extern const u8 gMonIcon_Ninetales[];
extern const u8 gMonIcon_Jigglypuff[];
extern const u8 gMonIcon_Wigglytuff[];
extern const u8 gMonIcon_Zubat[];
extern const u8 gMonIcon_Golbat[];
extern const u8 gMonIcon_Oddish[];
extern const u8 gMonIcon_Gloom[];
extern const u8 gMonIcon_Vileplume[];
extern const u8 gMonIcon_Paras[];
extern const u8 gMonIcon_Parasect[];
extern const u8 gMonIcon_Venonat[];
extern const u8 gMonIcon_Venomoth[];
extern const u8 gMonIcon_Diglett[];
extern const u8 gMonIcon_Dugtrio[];
extern const u8 gMonIcon_Meowth[];
extern const u8 gMonIcon_Persian[];
extern const u8 gMonIcon_Psyduck[];
extern const u8 gMonIcon_Golduck[];
extern const u8 gMonIcon_Mankey[];
extern const u8 gMonIcon_Primeape[];
extern const u8 gMonIcon_Growlithe[];
extern const u8 gMonIcon_Arcanine[];
extern const u8 gMonIcon_Poliwag[];
extern const u8 gMonIcon_Poliwhirl[];
extern const u8 gMonIcon_Poliwrath[];
extern const u8 gMonIcon_Abra[];
extern const u8 gMonIcon_Kadabra[];
extern const u8 gMonIcon_Alakazam[];
extern const u8 gMonIcon_Machop[];
extern const u8 gMonIcon_Machoke[];
extern const u8 gMonIcon_Machamp[];
extern const u8 gMonIcon_Bellsprout[];
extern const u8 gMonIcon_Weepinbell[];
extern const u8 gMonIcon_Victreebel[];
extern const u8 gMonIcon_Tentacool[];
extern const u8 gMonIcon_Tentacruel[];
extern const u8 gMonIcon_Geodude[];
extern const u8 gMonIcon_Graveler[];
extern const u8 gMonIcon_Golem[];
extern const u8 gMonIcon_Ponyta[];
extern const u8 gMonIcon_Rapidash[];
extern const u8 gMonIcon_Slowpoke[];
extern const u8 gMonIcon_Slowbro[];
extern const u8 gMonIcon_Magnemite[];
extern const u8 gMonIcon_Magneton[];
extern const u8 gMonIcon_Farfetchd[];
extern const u8 gMonIcon_Doduo[];
extern const u8 gMonIcon_Dodrio[];
extern const u8 gMonIcon_Seel[];
extern const u8 gMonIcon_Dewgong[];
extern const u8 gMonIcon_Grimer[];
extern const u8 gMonIcon_Muk[];
extern const u8 gMonIcon_Shellder[];
extern const u8 gMonIcon_Cloyster[];
extern const u8 gMonIcon_Gastly[];
extern const u8 gMonIcon_Haunter[];
extern const u8 gMonIcon_Gengar[];
extern const u8 gMonIcon_Onix[];
extern const u8 gMonIcon_Drowzee[];
extern const u8 gMonIcon_Hypno[];
extern const u8 gMonIcon_Krabby[];
extern const u8 gMonIcon_Kingler[];
extern const u8 gMonIcon_Voltorb[];
extern const u8 gMonIcon_Electrode[];
extern const u8 gMonIcon_Exeggcute[];
extern const u8 gMonIcon_Exeggutor[];
extern const u8 gMonIcon_Cubone[];
extern const u8 gMonIcon_Marowak[];
extern const u8 gMonIcon_Hitmonlee[];
extern const u8 gMonIcon_Hitmonchan[];
extern const u8 gMonIcon_Lickitung[];
extern const u8 gMonIcon_Koffing[];
extern const u8 gMonIcon_Weezing[];
extern const u8 gMonIcon_Rhyhorn[];
extern const u8 gMonIcon_Rhydon[];
extern const u8 gMonIcon_Chansey[];
extern const u8 gMonIcon_Tangela[];
extern const u8 gMonIcon_Kangaskhan[];
extern const u8 gMonIcon_Horsea[];
extern const u8 gMonIcon_Seadra[];
extern const u8 gMonIcon_Goldeen[];
extern const u8 gMonIcon_Seaking[];
extern const u8 gMonIcon_Staryu[];
extern const u8 gMonIcon_Starmie[];
extern const u8 gMonIcon_Mr_Mime[];
extern const u8 gMonIcon_Scyther[];
extern const u8 gMonIcon_Jynx[];
extern const u8 gMonIcon_Electabuzz[];
extern const u8 gMonIcon_Magmar[];
extern const u8 gMonIcon_Pinsir[];
extern const u8 gMonIcon_Tauros[];
extern const u8 gMonIcon_Magikarp[];
extern const u8 gMonIcon_Gyarados[];
extern const u8 gMonIcon_Lapras[];
extern const u8 gMonIcon_Ditto[];
extern const u8 gMonIcon_Eevee[];
extern const u8 gMonIcon_Vaporeon[];
extern const u8 gMonIcon_Jolteon[];
extern const u8 gMonIcon_Flareon[];
extern const u8 gMonIcon_Porygon[];
extern const u8 gMonIcon_Omanyte[];
extern const u8 gMonIcon_Omastar[];
extern const u8 gMonIcon_Kabuto[];
extern const u8 gMonIcon_Kabutops[];
extern const u8 gMonIcon_Aerodactyl[];
extern const u8 gMonIcon_Snorlax[];
extern const u8 gMonIcon_Articuno[];
extern const u8 gMonIcon_Zapdos[];
extern const u8 gMonIcon_Moltres[];
extern const u8 gMonIcon_Dratini[];
extern const u8 gMonIcon_Dragonair[];
extern const u8 gMonIcon_Dragonite[];
extern const u8 gMonIcon_Mewtwo[];
extern const u8 gMonIcon_Mew[];
extern const u8 gMonIcon_Chikorita[];
extern const u8 gMonIcon_Bayleef[];
extern const u8 gMonIcon_Meganium[];
extern const u8 gMonIcon_Cyndaquil[];
extern const u8 gMonIcon_Quilava[];
extern const u8 gMonIcon_Typhlosion[];
extern const u8 gMonIcon_Totodile[];
extern const u8 gMonIcon_Croconaw[];
extern const u8 gMonIcon_Feraligatr[];
extern const u8 gMonIcon_Sentret[];
extern const u8 gMonIcon_Furret[];
extern const u8 gMonIcon_Hoothoot[];
extern const u8 gMonIcon_Noctowl[];
extern const u8 gMonIcon_Ledyba[];
extern const u8 gMonIcon_Ledian[];
extern const u8 gMonIcon_Spinarak[];
extern const u8 gMonIcon_Ariados[];
extern const u8 gMonIcon_Crobat[];
extern const u8 gMonIcon_Chinchou[];
extern const u8 gMonIcon_Lanturn[];
extern const u8 gMonIcon_Pichu[];
extern const u8 gMonIcon_Cleffa[];
extern const u8 gMonIcon_Igglybuff[];
extern const u8 gMonIcon_Togepi[];
extern const u8 gMonIcon_Togetic[];
extern const u8 gMonIcon_Natu[];
extern const u8 gMonIcon_Xatu[];
extern const u8 gMonIcon_Mareep[];
extern const u8 gMonIcon_Flaaffy[];
extern const u8 gMonIcon_Ampharos[];
extern const u8 gMonIcon_Bellossom[];
extern const u8 gMonIcon_Marill[];
extern const u8 gMonIcon_Azumarill[];
extern const u8 gMonIcon_Sudowoodo[];
extern const u8 gMonIcon_Politoed[];
extern const u8 gMonIcon_Hoppip[];
extern const u8 gMonIcon_Skiploom[];
extern const u8 gMonIcon_Jumpluff[];
extern const u8 gMonIcon_Aipom[];
extern const u8 gMonIcon_Sunkern[];
extern const u8 gMonIcon_Sunflora[];
extern const u8 gMonIcon_Yanma[];
extern const u8 gMonIcon_Wooper[];
extern const u8 gMonIcon_Quagsire[];
extern const u8 gMonIcon_Espeon[];
extern const u8 gMonIcon_Umbreon[];
extern const u8 gMonIcon_Murkrow[];
extern const u8 gMonIcon_Slowking[];
extern const u8 gMonIcon_Misdreavus[];
extern const u8 gMonIcon_Unown_A[];
extern const u8 gMonIcon_Wobbuffet[];
extern const u8 gMonIcon_Girafarig[];
extern const u8 gMonIcon_Pineco[];
extern const u8 gMonIcon_Forretress[];
extern const u8 gMonIcon_Dunsparce[];
extern const u8 gMonIcon_Gligar[];
extern const u8 gMonIcon_Steelix[];
extern const u8 gMonIcon_Snubbull[];
extern const u8 gMonIcon_Granbull[];
extern const u8 gMonIcon_Qwilfish[];
extern const u8 gMonIcon_Scizor[];
extern const u8 gMonIcon_Shuckle[];
extern const u8 gMonIcon_Heracross[];
extern const u8 gMonIcon_Sneasel[];
extern const u8 gMonIcon_Teddiursa[];
extern const u8 gMonIcon_Ursaring[];
extern const u8 gMonIcon_Slugma[];
extern const u8 gMonIcon_Magcargo[];
extern const u8 gMonIcon_Swinub[];
extern const u8 gMonIcon_Piloswine[];
extern const u8 gMonIcon_Corsola[];
extern const u8 gMonIcon_Remoraid[];
extern const u8 gMonIcon_Octillery[];
extern const u8 gMonIcon_Delibird[];
extern const u8 gMonIcon_Mantine[];
extern const u8 gMonIcon_Skarmory[];
extern const u8 gMonIcon_Houndour[];
extern const u8 gMonIcon_Houndoom[];
extern const u8 gMonIcon_Kingdra[];
extern const u8 gMonIcon_Phanpy[];
extern const u8 gMonIcon_Donphan[];
extern const u8 gMonIcon_Porygon2[];
extern const u8 gMonIcon_Stantler[];
extern const u8 gMonIcon_Smeargle[];
extern const u8 gMonIcon_Tyrogue[];
extern const u8 gMonIcon_Hitmontop[];
extern const u8 gMonIcon_Smoochum[];
extern const u8 gMonIcon_Elekid[];
extern const u8 gMonIcon_Magby[];
extern const u8 gMonIcon_Miltank[];
extern const u8 gMonIcon_Blissey[];
extern const u8 gMonIcon_Raikou[];
extern const u8 gMonIcon_Entei[];
extern const u8 gMonIcon_Suicune[];
extern const u8 gMonIcon_Larvitar[];
extern const u8 gMonIcon_Pupitar[];
extern const u8 gMonIcon_Tyranitar[];
extern const u8 gMonIcon_Lugia[];
extern const u8 gMonIcon_Ho_Oh[];
extern const u8 gMonIcon_Celebi[];
extern const u8 gMonIcon_Treecko[];
extern const u8 gMonIcon_Grovyle[];
extern const u8 gMonIcon_Sceptile[];
extern const u8 gMonIcon_Torchic[];
extern const u8 gMonIcon_Combusken[];
extern const u8 gMonIcon_Blaziken[];
extern const u8 gMonIcon_Mudkip[];
extern const u8 gMonIcon_Marshtomp[];
extern const u8 gMonIcon_Swampert[];
extern const u8 gMonIcon_Poochyena[];
extern const u8 gMonIcon_Mightyena[];
extern const u8 gMonIcon_Zigzagoon[];
extern const u8 gMonIcon_Linoone[];
extern const u8 gMonIcon_Wurmple[];
extern const u8 gMonIcon_Silcoon[];
extern const u8 gMonIcon_Beautifly[];
extern const u8 gMonIcon_Cascoon[];
extern const u8 gMonIcon_Dustox[];
extern const u8 gMonIcon_Lotad[];
extern const u8 gMonIcon_Lombre[];
extern const u8 gMonIcon_Ludicolo[];
extern const u8 gMonIcon_Seedot[];
extern const u8 gMonIcon_Nuzleaf[];
extern const u8 gMonIcon_Shiftry[];
extern const u8 gMonIcon_Nincada[];
extern const u8 gMonIcon_Ninjask[];
extern const u8 gMonIcon_Shedinja[];
extern const u8 gMonIcon_Taillow[];
extern const u8 gMonIcon_Swellow[];
extern const u8 gMonIcon_Shroomish[];
extern const u8 gMonIcon_Breloom[];
extern const u8 gMonIcon_Spinda[];
extern const u8 gMonIcon_Wingull[];
extern const u8 gMonIcon_Pelipper[];
extern const u8 gMonIcon_Surskit[];
extern const u8 gMonIcon_Masquerain[];
extern const u8 gMonIcon_Wailmer[];
extern const u8 gMonIcon_Wailord[];
extern const u8 gMonIcon_Skitty[];
extern const u8 gMonIcon_Delcatty[];
extern const u8 gMonIcon_Kecleon[];
extern const u8 gMonIcon_Baltoy[];
extern const u8 gMonIcon_Claydol[];
extern const u8 gMonIcon_Nosepass[];
extern const u8 gMonIcon_Torkoal[];
extern const u8 gMonIcon_Sableye[];
extern const u8 gMonIcon_Barboach[];
extern const u8 gMonIcon_Whiscash[];
extern const u8 gMonIcon_Luvdisc[];
extern const u8 gMonIcon_Corphish[];
extern const u8 gMonIcon_Crawdaunt[];
extern const u8 gMonIcon_Feebas[];
extern const u8 gMonIcon_Milotic[];
extern const u8 gMonIcon_Carvanha[];
extern const u8 gMonIcon_Sharpedo[];
extern const u8 gMonIcon_Trapinch[];
extern const u8 gMonIcon_Vibrava[];
extern const u8 gMonIcon_Flygon[];
extern const u8 gMonIcon_Makuhita[];
extern const u8 gMonIcon_Hariyama[];
extern const u8 gMonIcon_Electrike[];
extern const u8 gMonIcon_Manectric[];
extern const u8 gMonIcon_Numel[];
extern const u8 gMonIcon_Camerupt[];
extern const u8 gMonIcon_Spheal[];
extern const u8 gMonIcon_Sealeo[];
extern const u8 gMonIcon_Walrein[];
extern const u8 gMonIcon_Cacnea[];
extern const u8 gMonIcon_Cacturne[];
extern const u8 gMonIcon_Snorunt[];
extern const u8 gMonIcon_Glalie[];
extern const u8 gMonIcon_Lunatone[];
extern const u8 gMonIcon_Solrock[];
extern const u8 gMonIcon_Azurill[];
extern const u8 gMonIcon_Spoink[];
extern const u8 gMonIcon_Grumpig[];
extern const u8 gMonIcon_Plusle[];
extern const u8 gMonIcon_Minun[];
extern const u8 gMonIcon_Mawile[];
extern const u8 gMonIcon_Meditite[];
extern const u8 gMonIcon_Medicham[];
extern const u8 gMonIcon_Swablu[];
extern const u8 gMonIcon_Altaria[];
extern const u8 gMonIcon_Wynaut[];
extern const u8 gMonIcon_Duskull[];
extern const u8 gMonIcon_Dusclops[];
extern const u8 gMonIcon_Roselia[];
extern const u8 gMonIcon_Slakoth[];
extern const u8 gMonIcon_Vigoroth[];
extern const u8 gMonIcon_Slaking[];
extern const u8 gMonIcon_Gulpin[];
extern const u8 gMonIcon_Swalot[];
extern const u8 gMonIcon_Tropius[];
extern const u8 gMonIcon_Whismur[];
extern const u8 gMonIcon_Loudred[];
extern const u8 gMonIcon_Exploud[];
extern const u8 gMonIcon_Clamperl[];
extern const u8 gMonIcon_Huntail[];
extern const u8 gMonIcon_Gorebyss[];
extern const u8 gMonIcon_Absol[];
extern const u8 gMonIcon_Shuppet[];
extern const u8 gMonIcon_Banette[];
extern const u8 gMonIcon_Seviper[];
extern const u8 gMonIcon_Zangoose[];
extern const u8 gMonIcon_Relicanth[];
extern const u8 gMonIcon_Aron[];
extern const u8 gMonIcon_Lairon[];
extern const u8 gMonIcon_Aggron[];
extern const u8 gMonIcon_Castform[];
extern const u8 gMonIcon_Volbeat[];
extern const u8 gMonIcon_Illumise[];
extern const u8 gMonIcon_Lileep[];
extern const u8 gMonIcon_Cradily[];
extern const u8 gMonIcon_Anorith[];
extern const u8 gMonIcon_Armaldo[];
extern const u8 gMonIcon_Ralts[];
extern const u8 gMonIcon_Kirlia[];
extern const u8 gMonIcon_Gardevoir[];
extern const u8 gMonIcon_Bagon[];
extern const u8 gMonIcon_Shelgon[];
extern const u8 gMonIcon_Salamence[];
extern const u8 gMonIcon_Beldum[];
extern const u8 gMonIcon_Metang[];
extern const u8 gMonIcon_Metagross[];
extern const u8 gMonIcon_Regirock[];
extern const u8 gMonIcon_Regice[];
extern const u8 gMonIcon_Registeel[];
extern const u8 gMonIcon_Kyogre[];
extern const u8 gMonIcon_Groudon[];
extern const u8 gMonIcon_Rayquaza[];
extern const u8 gMonIcon_Latias[];
extern const u8 gMonIcon_Latios[];
extern const u8 gMonIcon_Jirachi[];
extern const u8 gMonIcon_Deoxys[];
extern const u8 gMonIcon_Chimecho[];
extern const u8 gMonIcon_Egg[];
extern const u8 gMonIcon_Unown_B[];
extern const u8 gMonIcon_Unown_C[];
extern const u8 gMonIcon_Unown_D[];
extern const u8 gMonIcon_Unown_E[];
extern const u8 gMonIcon_Unown_F[];
extern const u8 gMonIcon_Unown_G[];
extern const u8 gMonIcon_Unown_H[];
extern const u8 gMonIcon_Unown_I[];
extern const u8 gMonIcon_Unown_J[];
extern const u8 gMonIcon_Unown_K[];
extern const u8 gMonIcon_Unown_L[];
extern const u8 gMonIcon_Unown_M[];
extern const u8 gMonIcon_Unown_N[];
extern const u8 gMonIcon_Unown_O[];
extern const u8 gMonIcon_Unown_P[];
extern const u8 gMonIcon_Unown_Q[];
extern const u8 gMonIcon_Unown_R[];
extern const u8 gMonIcon_Unown_S[];
extern const u8 gMonIcon_Unown_T[];
extern const u8 gMonIcon_Unown_U[];
extern const u8 gMonIcon_Unown_V[];
extern const u8 gMonIcon_Unown_W[];
extern const u8 gMonIcon_Unown_X[];
extern const u8 gMonIcon_Unown_Y[];
extern const u8 gMonIcon_Unown_Z[];
extern const u8 gMonIcon_Unown_ExclamationMark[];
extern const u8 gMonIcon_Unown_QuestionMark[];
extern const u8 gMonIcon_QuestionMark[];


extern const u16 gTradeMenu_Pal[];
extern const u16 gTradeCursor_Pal[];
extern const u16 gTradeMenu_Gfx[];
extern const u16 gTradeMenu_Tilemap[];
extern const u16 gTradeCursor_Gfx[];
extern const u16 gTradeMenuMonBox_Tilemap[];


extern const u16 gMonMarkingsMenu_Gfx[];
extern const u16 gMonMarkingsMenu_Pal[];


extern const u32 gFile_graphics_misc_confetti_sheet[];
extern const u32 gFile_graphics_misc_confetti_palette[];


extern const u16 gMoveRelearner_Pal[];
extern const u32 gMoveRelearner_Gfx[];
extern const u32 gMoveRelearner_Tilemap[];


extern const u32 gBuyMenuFrame_Gfx[];
extern const u32 gBuyMenuFrame_Tilemap[];
extern const u32 gBuyMenuFrame_TmHmTilemap[];
extern const u32 gBuyMenuFrame_Pal[];


extern const u16 gPPTextPalette[];


extern const u16 gKantoTrainerCardBlue_Pal[];
extern const u32 gKantoTrainerCard_Gfx[];
extern const u16 gHoennTrainerCardGreen_Pal[];
extern const u32 gHoennTrainerCard_Gfx[];


extern const u32 gBattleInterface_Textbox_Gfx[];
extern const u32 gBattleInterface_Textbox_Pal[];
extern const u32 gBattleInterface_Textbox_Tilemap[];
extern const u32 gBattleInterface_PartySummaryBar_Gfx[];
extern const u8 gBattleInterface_Gfx[][32];
extern const u16 gBattleInterface_Healthbox_Pal[];
extern const u16 gBattleInterface_Healthbar_Pal[];


extern const u32 gBagBg_Gfx[];
extern const u32 gBagBg_Tilemap[];
extern const u32 gBagBg_ItemPC_Tilemap[];
extern const u32 gBagBgPalette[];
extern const u32 gBagBgPalette_FemaleOverride[];


extern const u16 gUnionRoomChat_Panel_Pal[];
extern const u32 gUnionRoomChat_Panel_Gfx[];
extern const u32 gUnionRoomChat_Panel_Tilemap[];
extern const u16 gUnionRoomChat_Bg_Pal[];
extern const u32 gUnionRoomChat_Bg_Gfx[];
extern const u32 gUnionRoomChat_Bg_Tilemap[];


extern const u32 gUnionRoomChat_Icons_Gfx[];


extern const u32 gFile_graphics_battle_transitions_vs_frame_sheet[];
extern const u32 gVsLettersGfx[];
extern const u32 gFile_graphics_battle_transitions_vs_frame_palette[];
extern const u32 gFile_graphics_battle_transitions_vs_frame_tilemap[];


extern const u16 gBerryCrush_Crusher_Pal[];
extern const u32 gBerryCrush_Crusher_Gfx[];
extern const u32 gBerryCrush_TextWindows_Tilemap[];


extern const u32 gEasyChatWindow_Gfx[];
extern const u32 gEasyChatWindow_Tilemap[];
extern const u32 gEasyChatWindow_Pal[];
extern const u16 gEasyChatButtonWindow_Pal[];
extern const u32 gEasyChatRectangleCursor_Gfx[];
extern const u32 gEasyChatButtonWindow_Gfx[];
extern const u32 gEasyChatMode_Gfx[];


extern const u32 gNamingScreenBackground_Tilemap[];
extern const u32 gNamingScreenKeyboardLower_Tilemap[];
extern const u32 gNamingScreenKeyboardUpper_Tilemap[];
extern const u32 gNamingScreenKeyboardSymbols_Tilemap[];
extern const u32 gNamingScreenMenu_Gfx[];
extern const u16 gNamingScreenRival_Pal[];
extern const u16 gNamingScreenKeyboard_Pal[];
extern const u16 gNamingScreenMenu_Pal[6][16];
extern const u16 gNamingScreenBackButton_Gfx[];
extern const u16 gNamingScreenOKButton_Gfx[];
extern const u16 gNamingScreenPageSwapFrame_Gfx[];
extern const u16 gNamingScreenPageSwapButton_Gfx[];
extern const u16 gNamingScreenPageSwapUpper_Gfx[];
extern const u16 gNamingScreenPageSwapLower_Gfx[];
extern const u16 gNamingScreenPageSwapOthers_Gfx[];
extern const u16 gNamingScreenCursor_Gfx[];
extern const u16 gNamingScreenCursorSquished_Gfx[];
extern const u16 gNamingScreenCursorFilled_Gfx[];
extern const u16 gNamingScreenInputArrow_Gfx[];
extern const u16 gNamingScreenUnderscore_Gfx[];


extern const u32 gPokeStorageMenu_Gfx[];
extern const u32 gPokeStoragePartyMenu_Tilemap[];
extern const u16 gPokeStoragePartyMenu_Pal[];
extern const u16 gPokeStorageInterface_Pal[];
extern const u16 gPokeStorageInterface_NoDisplayMon_Pal[];


extern const u16 gDexScreen_TopMenuIconPals_AtoZ[];
extern const u32 gDexScreen_TopMenuIconTiles_AtoZ[];
# 18 "src/battle_main.c" 2
# 1 "include/help_system.h" 1




# 1 "include/list_menu.h" 1
# 15 "include/list_menu.h"
enum
{
    SCROLL_ARROW_LEFT,
    SCROLL_ARROW_RIGHT,
    SCROLL_ARROW_UP,
    SCROLL_ARROW_DOWN,
};

struct ListMenuItem
{
    const u8 *label;
    u32 index;
};

struct ListMenu;


enum ListMenuFields
{
    LISTFIELD_MOVECURSORFUNC = 0,
    LISTFIELD_MOVECURSORFUNC2,
    LISTFIELD_TOTALITEMS,
    LISTFIELD_MAXSHOWED,
    LISTFIELD_WINDOWID,
    LISTFIELD_HEADERX,
    LISTFIELD_ITEMX,
    LISTFIELD_CURSORX,
    LISTFIELD_UPTEXTY,
    LISTFIELD_CURSORPAL,
    LISTFIELD_FILLVALUE,
    LISTFIELD_CURSORSHADOWPAL,
    LISTFIELD_LETTERSPACING,
    LISTFIELD_ITEMVERTICALPADDING,
    LISTFIELD_SCROLLMULTIPLE,
    LISTFIELD_FONTID,
    LISTFIELD_CURSORKIND,
};

struct ListMenuTemplate
{
             const struct ListMenuItem *items;
             void (* moveCursorFunc)(s32 itemIndex, bool8 onInit, struct ListMenu *list);
             void (* itemPrintFunc)(u8 windowId, u32 itemId, u8 y);
             u16 totalItems;
             u16 maxShowed;
             u8 windowId;
             u8 header_X;
             u8 item_X;
             u8 cursor_X;
             u8 upText_Y:4;
             u8 cursorPal:4;
             u8 fillValue:4;
             u8 cursorShadowPal:4;
             u8 lettersSpacing:3;
             u8 itemVerticalPadding:3;
             u8 scrollMultiple:2;
             u8 fontId:6;
             u8 cursorKind:2;
};

struct ListMenu
{
    struct ListMenuTemplate template;
    u16 cursorPos;
    u16 itemsAbove;
    u8 unk_1C;
    u8 unk_1D;
    u8 taskId;
    u8 unk_1F;
};

struct ListMenuWindowRect
{
    u8 x;
    u8 y;
    u8 width;
    u8 height;
    u8 palNum;
};

extern struct ListMenuTemplate gMultiuseListMenuTemplate;

u32 DoMysteryGiftListMenu(const struct WindowTemplate *windowTemplate, const struct ListMenuTemplate *listMenuTemplate, u8 arg2, u16 tileNum, u16 palNum);
u8 ListMenuInit(const struct ListMenuTemplate *listMenuTemplate, u16 cursorPos, u16 itemsAbove);
u8 ListMenuInitInRect(const struct ListMenuTemplate *listMenuTemplate, const struct ListMenuWindowRect *rect, u16 cursorPos, u16 itemsAbove);
s32 ListMenu_ProcessInput(u8 listTaskId);
void DestroyListMenuTask(u8 listTaskId, u16 *cursorPos, u16 *itemsAbove);
void RedrawListMenu(u8 listTaskId);
void ListMenuGetScrollAndRow(u8 listTaskId, u16 *cursorPos, u16 *itemsAbove);
u16 ListMenuGetYCoordForPrintingArrowCursor(u8 listTaskId);
void ListMenuOverrideSetColors(u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ListMenuDefaultCursorMoveFunc(s32 itemIndex, bool8 onInit, struct ListMenu *list);
void ListMenuSetTemplateField(u8 taskId, u8 field, s32 value);
# 6 "include/help_system.h" 2

# 1 "include/constants/help_system.h" 1
# 8 "include/help_system.h" 2

struct HelpSystemListMenu_sub
{
    struct ListMenuItem * items;
    u16 totalItems;
    u16 maxShowed;
    u8 left;
    u8 top;
};

struct HelpSystemListMenu
{
    struct HelpSystemListMenu_sub sub;
    u8 itemsAbove;
    u8 cursorPos;
    u8 state;
    u8 filler_10[0xC];
};

extern struct HelpSystemListMenu gHelpSystemListMenu;
extern struct ListMenuItem gHelpSystemListMenuItems[];
extern bool8 gHelpSystemEnabled;
extern bool8 gHelpSystemToggleWithRButtonDisabled;


void SetHelpContextDontCheckBattle(u8);
void SetHelpContextForMap(void);
void SetHelpContext(u8);
bool8 HelpSystem_UpdateHasntSeenIntro(void);
bool8 HelpSystem_IsSinglePlayer(void);
void HelpSystem_Disable(void);
void HelpSystem_Enable(void);
void HelpSystem_EnableToggleWithRButton(void);
bool8 RunHelpMenuSubroutine(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_PrintWelcomeMessage(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_WelcomeWaitButton(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_WelcomeEndGotoMenu(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_MenuInputHandlerMain(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_InitSubmenu(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_ReturnFromSubmenu(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_SubmenuInputHandler(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
void HelpSystem_PrintTopicLabel(void);
bool8 HelpMenuSubroutine_HelpItemPrint(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_ReturnFromHelpItem(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_HelpItemWaitButton(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 GetHelpSystemMenuLevel(void);


bool8 RunHelpSystemCallback(void);
void SaveCallbacks(void);
void SaveMapGPURegs(void);
void SaveMapTiles(void);
void SaveMapTextColors(void);
void RestoreCallbacks(void);
void RestoreGPURegs(void);
void RestoreMapTiles(void);
void RestoreMapTextColors(void);
void CommitTilemap(void);
void HS_BufferFillMapWithTile1FF(void);
void HS_ShowOrHideWordHELPinTopLeft(u8 mode);
void HS_ShowOrHideControlsGuideInTopRight(u8 mode);
void HS_ShowOrHideMainWindowText(u8 mode);
void HS_SetMainWindowBgBrightness(u8 mode);
void HS_ShowOrHideToplevelTooltipWindow(u8 mode);
void HS_ShowOrHideHeaderAndFooterLines_Lighter(u8 mode);
void HS_ShowOrHideHeaderAndFooterLines_Darker(u8 mode);
void HS_ShowOrHideVerticalBlackBarsAlongSides(u8 mode);
void HS_ShowOrHideHeaderLine_Darker_FooterStyle(u8 mode);
void HS_ShowOrHideScrollArrows(u8 which, u8 mode);
void HelpSystem_PrintTextRightAlign_Row52(const u8 *str);
void HelpSystem_PrintTextAt(const u8 *, u8, u8);
void HelpSystem_PrintQuestionAndAnswerPair(const u8 *a0, const u8 *a1);
void HelpSystem_PrintTopicMouseoverDescription(const u8 *str);
void HelpSystem_FillPanel2(void);
void HelpSystem_FillPanel1(void);
void HelpSystem_InitListMenuController(struct HelpSystemListMenu *, u8, u8);
void HelpSystem_SetInputDelay(u8);
s32 HelpSystem_GetMenuInput(void);
void HS_UpdateMenuScrollArrows(void);

void DecompressAndRenderGlyph(u8 fontId, u16 glyph, struct Bitmap *srcBlit, struct Bitmap *destBlit, u8 *destBuffer, u8 x, u8 y, u8 width, u8 height);
void HelpSystem_PrintTextInTopLeftCorner(const u8 * str);
void HelpSystem_FillPanel3(void);
void PrintListMenuItems(void);
void PlaceListMenuCursor(void);
bool8 MoveCursor(u8 by, u8 dirn);
void BackupHelpContext(void);
void RestoreHelpContext(void);
void HelpSystemRenderText(u8 fontId, u8 * dest, const u8 * src, u8 x, u8 y, u8 width, u8 height);
void HelpSystem_DisableToggleWithRButton(void);
# 19 "src/battle_main.c" 2
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
# 20 "src/battle_main.c" 2
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
# 21 "src/battle_main.c" 2
# 1 "include/link_rfu.h" 1




# 1 "include/librfu.h" 1
# 279 "include/librfu.h"
struct RfuPacket8
{
    u8 data[0x74];
};

struct RfuPacket32
{
    u32 command;
    u32 data[0x1C];
};

union RfuPacket
{
    struct RfuPacket32 rfuPacket32;
    struct RfuPacket8 rfuPacket8;
};

struct STWIStatus
{
    vs32 state;
    u8 reqLength;
    u8 reqNext;
    u8 reqActiveCommand;
    u8 ackLength;
    u8 ackNext;
    u8 ackActiveCommand;
    u8 timerSelect;
    u8 unk_b;



    u32 timerState;

    vu8 timerActive;
    u8 unk_11;
    vu16 error;
    vu8 msMode;
    u8 recoveryCount;
    u8 unk_16;
    u8 unk_17;
    void (*callbackM)();
    void (*callbackS)(u16);
    void (*callbackID)(void);
    union RfuPacket *txPacket;
    union RfuPacket *rxPacket;
    vu8 sending;
};


struct RfuIntrStruct
{
    union RfuPacket rxPacketAlloc;
    union RfuPacket txPacketAlloc;
    u8 block1[0x960];
    struct STWIStatus block2;
};


struct UNISend
{
    u16 state;
    u8 dataReadyFlag;

    u8 bmSlot;
    u16 payloadSize;
    const void *src;
};


struct UNIRecv
{
    u16 state;
    u16 errorCode;
    u16 dataSize;
    u8 newDataFlag;

    u8 dataBlockFlag;
};


struct RfuSlotStatusUNI
{
    struct UNISend send;
    struct UNIRecv recv;
    void *recvBuffer;
    u32 recvBufferSize;
};



struct NIComm
{
    u16 state;
    u16 failCounter;
    const u8 *now_p[4];
    u32 remainSize;
    u16 errorCode;
    u8 bmSlot;


    u8 recvAckFlag[4];
    u8 ack;
    u8 phase;
    u8 n[4];

    const void *src;
    u8 bmSlotOrg;
    u8 dataType;
    u16 payloadSize;
    u32 dataSize;

};

struct RfuSlotStatusNI
{
    struct NIComm send;
    struct NIComm recv;
    void *recvBuffer;
    u32 recvBufferSize;
};


struct RfuTgtData
{
    u16 id;
    u8 slot;
    u8 mbootFlag;

    u16 serialNo;
    u8 gname[13 + 2];
    u8 uname[8 + 1];
};

struct RfuLinkStatus
{
    u8 parentChild;
    u8 connCount;
    u8 connSlotFlag;
    u8 linkLossSlotFlag;
    u8 sendSlotNIFlag;
    u8 recvSlotNIFlag;
    u8 sendSlotUNIFlag;
    u8 getNameFlag;

    u8 findParentCount;
    u8 watchInterval;
    u8 strength[4];
    vu8 LLFReadyFlag;
    u8 remainLLFrameSizeParent;
    u8 remainLLFrameSizeChild[4];
    struct RfuTgtData partner[4];


    struct RfuTgtData my;
};


struct RfuFixed
{
    void (*reqCallback)(u16, u16);
    void (*fastCopyPtr)(const u8 **, u8 **, s32);
    u16 fastCopyBuffer[24];
    u32 fastCopyBuffer2[12];
    u32 LLFBuffer[29];
    struct RfuIntrStruct *STWIBuffer;
};

struct RfuStatic
{
    u8 flags;
    u8 NIEndRecvFlag;
    u8 recvRenewalFlag;
    u8 commExistFlag;
    u8 recvErrorFlag;
    u8 recoveryBmSlot;
    u8 nowWatchInterval;
    u8 nullFrameCount;
    u8 emberCount;
    u8 SCStartFlag;
    u8 linkEmergencyFlag[4];
    u8 lsFixedCount[4];
    u16 cidBak[4];
    u16 linkEmergencyLimit;
    u16 reqResult;
    u16 tryPid;
    u16 watchdogTimer;
    u32 totalPacketSize;
};

extern struct STWIStatus *gSTWIStatus;
extern struct RfuLinkStatus *gRfuLinkStatus;
extern struct RfuStatic *gRfuStatic;
extern struct RfuFixed *gRfuFixed;
extern struct RfuSlotStatusNI *gRfuSlotStatusNI[4];
extern struct RfuSlotStatusUNI *gRfuSlotStatusUNI[4];


s32 AgbRFU_checkID(u8 maxTries);






u16 rfu_initializeAPI(u32 *APIBuffer, u16 buffByteSize, IntrFunc *sioIntrTable_p, bool8 copyInterruptToRam);

void rfu_setTimerInterrupt(u8 timerNo, IntrFunc *timerIntrTable_p);

u16 rfu_syncVBlank(void);

void rfu_setREQCallback(void (*callback)(u16 reqCommandId, u16 reqResult));

u16 rfu_waitREQComplete(void);



u32 rfu_REQBN_softReset_and_checkID(void);

void rfu_REQ_reset(void);

void rfu_REQ_stopMode(void);

void rfu_REQ_configSystem(u16 availSlotFlag, u8 maxMFrame, u8 mcTimer);

void rfu_REQ_configGameData(u8 mbootFlag, u16 serialNo, const u8 *gname, const u8 *uname);



void rfu_REQ_startSearchChild(void);
void rfu_REQ_pollSearchChild(void);
void rfu_REQ_endSearchChild(void);

void rfu_REQ_startSearchParent(void);
void rfu_REQ_pollSearchParent(void);
void rfu_REQ_endSearchParent(void);

void rfu_REQ_startConnectParent(u16 pid);
void rfu_REQ_pollConnectParent(void);
void rfu_REQ_endConnectParent(void);
u16 rfu_getConnectParentStatus(u8 *status,u8 *connectSlotNo);

void rfu_REQ_CHILD_startConnectRecovery(u8 bmRecoverySlot);
void rfu_REQ_CHILD_pollConnectRecovery(void);
void rfu_REQ_CHILD_endConnectRecovery(void);
u16 rfu_CHILD_getConnectRecoveryStatus(u8 *status);



u16 rfu_REQBN_watchLink(u16 reqCommandId, u8 *bmLinkLossSlot, u8 *linkLossReason, u8 *parentBmLinkRecoverySlot);

void rfu_REQ_disconnect(u8 bmDisconnectSlot);



void rfu_REQ_changeMasterSlave(void);

bool8 rfu_getMasterSlave(void);



void rfu_setMSCCallback(void (*callback)(u16 reqCommandId));


void rfu_clearAllSlot(void);
u16 rfu_clearSlot(u8 connTypeFlag, u8 slotStatusIndex);

u16 rfu_setRecvBuffer(u8 connType, u8 slotNo, void *buffer, u32 buffSize);




u16 rfu_UNI_setSendData(u8 bmSendSlot, const void *src, u8 size);

void rfu_UNI_readySendData(u8 slotStatusIndex);

u16 rfu_UNI_changeAndReadySendData(u8 slotStatusIndex, const void *src, u8 size);

u16 rfu_UNI_PARENT_getDRAC_ACK(u8 *ackFlag);

void rfu_UNI_clearRecvNewDataFlag(u8 slotStatusIndex);


u16 rfu_NI_setSendData(u8 bmSendSlot, u8 subFrameSize, const void *src, u32 size);

u16 rfu_NI_CHILD_setSendGameName(u8 slotNo, u8 subFrameSize);

u16 rfu_NI_stopReceivingData(u8 slotStatusIndex);


u16 rfu_changeSendTarget(u8 connType, u8 slotStatusIndex, u8 bmNewTgtSlot);



void rfu_REQ_sendData(bool8 clockChangeFlag);

void rfu_REQ_PARENT_resumeRetransmitAndChange(void);

void rfu_REQ_recvData(void);



u16 rfu_MBOOT_CHILD_inheritanceLinkStatus(void);



u8 *rfu_getSTWIRecvBuffer(void);

void rfu_REQ_RFUStatus(void);
u16 rfu_getRFUStatus(u8 *rfuState);

void rfu_REQ_noise(void);


void IntrSIO32(void);


void STWI_init_all(struct RfuIntrStruct *interruptStruct, IntrFunc *interrupt, bool8 copyInterruptToRam);
void STWI_set_MS_mode(u8 mode);
void STWI_init_Callback_M(void);
void STWI_init_Callback_S(void);
void STWI_set_Callback_M(void *callbackM);
void STWI_set_Callback_S(void (*callbackS)(u16));
void STWI_init_timer(IntrFunc *interrupt, s32 timerSelect);
void AgbRFU_SoftReset(void);
void STWI_set_Callback_ID(void (*func)(void));
u16 STWI_read_status(u8 index);
u16 STWI_poll_CommandEnd(void);
void STWI_send_DataRxREQ(void);
void STWI_send_MS_ChangeREQ(void);
void STWI_send_StopModeREQ(void);
void STWI_send_SystemStatusREQ(void);
void STWI_send_GameConfigREQ(const u8 *serial_uname, const u8 *gname);
void STWI_send_ResetREQ(void);
void STWI_send_LinkStatusREQ(void);
void STWI_send_VersionStatusREQ(void);
void STWI_send_SlotStatusREQ(void);
void STWI_send_ConfigStatusREQ(void);
void STWI_send_ResumeRetransmitAndChangeREQ(void);
void STWI_send_SystemConfigREQ(u16 availSlotFlag, u8 maxMFrame, u8 mcTimer);
void STWI_send_SC_StartREQ(void);
void STWI_send_SC_PollingREQ(void);
void STWI_send_SC_EndREQ(void);
void STWI_send_SP_StartREQ(void);
void STWI_send_SP_PollingREQ(void);
void STWI_send_SP_EndREQ(void);
void STWI_send_CP_StartREQ(u16 unk1);
void STWI_send_CP_PollingREQ(void);
void STWI_send_CP_EndREQ(void);
void STWI_send_DataTxREQ(const void *in, u8 size);
void STWI_send_DataTxAndChangeREQ(const void *in, u8 size);
void STWI_send_DataReadyAndChangeREQ(u8 unk);
void STWI_send_DisconnectedAndChangeREQ(u8 unk0, u8 unk1);
void STWI_send_DisconnectREQ(u8 unk);
void STWI_send_TestModeREQ(u8 unk0, u8 unk1);
void STWI_send_CPR_StartREQ(u16 unk0, u16 unk1, u8 unk2);
void STWI_send_CPR_PollingREQ(void);
void STWI_send_CPR_EndREQ(void);
# 6 "include/link_rfu.h" 2
# 1 "include/link.h" 1
# 7 "include/link_rfu.h" 2
# 1 "include/AgbRfu_LinkManager.h" 1
# 114 "include/AgbRfu_LinkManager.h"
typedef struct InitializeParametersTag {

    u8 maxMFrame;
    u8 MC_TimerCount;
    u16 availSlot_flag;


    u8 mboot_flag;
    u16 serialNo;
    u8 *gameName;
    u8 *userName;


    u8 fastSearchParent_flag;


    u8 linkRecovery_enable;
    u16 linkRecovery_period;


    u16 NI_failCounter_limit;
}INIT_PARAM;



typedef struct VblankTimerTag {
    u8 active;
    u16 count_max;
    u16 count[4];
}VBL_TIMER;

typedef struct linkManagerTag
{
                u8 acceptSlot_flag;
                u8 acceptCount;
                vu8 childClockSlave_flag;
                vu8 parentAck_flag;
                u8 state;
                u8 next_state;
                u8 parent_child;
                u8 pcswitch_flag;
                u8 RFU_powerOn_flag;
                u8 linkRecovery_enable;
                u8 linkRecovery_start_flag;
                u8 fastSearchParent_flag;
                u8 connectSlot_flag_old;
                u8 reserveDisconnectSlot_flag;
                u8 active;
                u8 msc_exe_flag;
                u8 child_slot;
                u8 state_bak[2];
                u16 param[2];
                u16 NI_failCounter_limit;
                u16 connect_period;
                u16 pcswitch_period_bak;
                u16 work;
                u16 *acceptable_serialNo_list;
                VBL_TIMER nameAcceptTimer;
                VBL_TIMER linkRecoveryTimer;
                INIT_PARAM *init_param;
                void (*LMAN_callback)(u8, u8);
                void (*MSC_callback)(u16);
} LINK_MANAGER;

extern struct linkManagerTag lman;

u32 rfu_LMAN_REQBN_softReset_and_checkID(void);
void rfu_LMAN_requestChangeAgbClockMaster(void);
void rfu_LMAN_initializeRFU(INIT_PARAM *init_params);
u8 rfu_LMAN_establishConnection(u8 parent_child, u16 connect_period, u16 name_accept_period, u16 *acceptable_serialNo_list);
void rfu_LMAN_stopManager(bool8 forced_stop_and_RFU_reset_flag);
void rfu_LMAN_setMSCCallback(void (*MSC_callback_p)(u16));
void rfu_LMAN_REQ_sendData(bool8 clockChangeFlag);
void rfu_LMAN_powerDownRFU(void);
u8 rfu_LMAN_CHILD_connectParent(u16 parentId, u16 connect_period);
u8 rfu_LMAN_setLinkRecovery(u8 enable_flag, u16 recovery_period);
void rfu_LMAN_manager_entity(u32 rand);
void rfu_LMAN_syncVBlank(void);
u8 rfu_LMAN_initializeManager(void (*LMAN_callback_p)(u8, u8), void (*MSC_callback_p)(u16));
void rfu_LMAN_forceChangeSP(void);
# 8 "include/link_rfu.h" 2
# 50 "include/link_rfu.h"
enum {
    RFU_DISCONNECT_NONE,
    RFU_DISCONNECT_ERROR,
    RFU_DISCONNECT_NORMAL,
};


enum {
    RFU_ERROR_STATE_NONE,
    RFU_ERROR_STATE_OCCURRED,
    RFU_ERROR_STATE_PROCESSED,
    RFU_ERROR_STATE_DISCONNECTING,
    RFU_ERROR_STATE_IGNORE,
};
# 81 "include/link_rfu.h"
struct RfuGameCompatibilityData
{
    u16 language:4;
    u16 hasNews:1;
    u16 hasCard:1;
    u16 unknown:1;
    u16 canLinkNationally:1;
    u16 hasNationalDex:1;
    u16 gameClear:1;
    u16 version:4;
    u16 unused:2;
    u8 playerTrainerId[2];
};
# 103 "include/link_rfu.h"
struct __attribute__((packed, aligned(2))) RfuGameData
{
    struct RfuGameCompatibilityData compatibility;
    u8 partnerInfo[4];
    u16 tradeSpecies:10;
    u16 tradeType:6;
    u8 activity:7;
    u8 startedActivity:1;
    u8 playerGender:1;
    u8 tradeLevel:7;
    u8 padding;
};
# 127 "include/link_rfu.h"
struct RfuBlockSend
{
               u16 next;
               u16 count;
               const u8 *payload;
               u32 receivedFlags;
               u32 failedFlags;
               u8 sending;
               u8 owner;
               u8 receiving;
};

struct RfuRecvQueue
{
                u8 slots[20][14 * 5];
                vu8 recvSlot;
                vu8 sendSlot;
                vu8 count;
                vu8 full;
};

struct RfuSendQueue
{
                u8 slots[40][14];
                vu8 recvSlot;
                vu8 sendSlot;
                vu8 count;
                vu8 full;
};

struct RfuBackupQueue
{
               u8 slots[2][14];
               vu8 recvSlot;
               vu8 sendSlot;
               vu8 count;
};

struct RfuManager
{
                void (*callback)(void);
                u16 state;
                u8 unused1[4];
                u16 errorInfo;
                u8 parentChild;
                u8 playerCount;
                bool8 runParentMain2;
                u8 unused2;
                u16 errorParams[2];
                u8 childRecvBuffer[4][14];
                u8 childSendBuffer[14];
                u8 blockRequestType;
                u8 sendBlockInitDelay;
                bool8 blockReceived[5];
                u8 numBlocksReceived[5];
                u8 idleTaskId;
                u8 searchTaskId;
                u8 unused3[4];
                struct RfuBlockSend sendBlock;
                struct RfuBlockSend recvBlock[5];
                bool8 readyCloseLink[5];
                bool8 readyExitStandby[5];
                vu8 errorState;
                bool8 isShuttingDown;
                u8 linkLossRecoveryState;
                u8 status;
                u16 packet[6];
                u16 resendExitStandbyTimer;
                u16 resendExitStandbyCount;
                u8 childSendCmdId;
                struct RfuTgtData parent;
                struct RfuRecvQueue recvQueue;
                struct RfuSendQueue sendQueue;
                struct RfuBackupQueue backupQueue;
                vu8 linkRecovered;
                u8 reconnectParentId;
                vu8 childSlot;
                u8 childRecvQueue[14 * 5];
                u8 sendStatus;
                u8 recvStatus;
                u8 recvCmds[5][8 - 1][2];
                u8 parentId;
                u8 multiplayerId;
                u8 connectParentFailures;
                vu8 childSendCount;
                u8 partnerSendStatuses[4];
                u8 partnerRecvStatuses[4];
                bool8 stopNewConnections;
                u8 parentSendSlot;
                vbool8 parentFinished;
                vbool8 parentMain2Failed;
                u8 unused5;
                u8 linkPlayerIdx[4];
                u8 parentSlots;
                u8 disconnectSlots;
                u8 disconnectMode;
                u8 nextChildBits;
                u8 newChildQueue;
                u8 acceptSlot_flag;
                bool8 playerExchangeActive;
                u8 incomingChild;
                u8 numChildRecvErrors[4];
                u8 childRecvIds[4];
};

extern struct RfuGameData gHostRfuGameData;
extern u8 gHostRfuUsername[];
extern struct RfuManager gRfu;

void LinkRfu_FatalError(void);
void MG_DrawCheckerboardPattern(void);
void Rfu_SetCloseLinkCallback(void);
bool8 IsLinkRfuTaskFinished(void);
void DestroyWirelessStatusIndicatorSprite(void);
void CreateTask_LinkMysteryGiftWithFriend(u32 activity);
void CreateTask_LinkMysteryGiftOverWireless(u32 activity);
void CreateTask_SendMysteryGift(u32 activity);
void Rfu_SendPacket(void *data);
u8 CreateTask_ListenToWireless(void);
void DestroyTask_RfuIdle(void);
void InitRFUAPI(void);
void RfuSetIgnoreError(bool32 enable);
bool32 IsSendingKeysToRfu(void);
void ClearLinkRfuCallback(void);
u8 Rfu_GetLinkPlayerCount(void);
void StartSendingKeysToRfu(void);
u8 Rfu_GetMultiplayerId(void);
bool32 Rfu_InitBlockSend(const u8 * src, size_t size);
bool8 Rfu_SendBlockRequest(u8 blockRequestType);
u8 Rfu_GetBlockReceivedStatus(void);
void Rfu_SetBlockReceivedFlag(u8 linkPlayerId);
void Rfu_ResetBlockReceivedFlag(u8 linkPlayerId);
bool8 Rfu_IsMaster(void);
void ResetLinkRfuGFLayer(void);
bool32 RfuMain1(void);
bool32 RfuMain2(void);
bool32 IsRfuRecvQueueEmpty(void);
u32 GetRfuRecvQueueLength(void);
void LinkRfu_Shutdown(void);
void CreateTask_RfuIdle(void);
bool8 Rfu_SetLinkRecovery(bool32 enable);
void SetUsingUnionRoomStartMenu(void);
struct RfuGameData *GetHostRfuGameData(void);
void UpdateWirelessStatusIndicatorSprite(void);
void InitRFU(void);
bool32 RfuHasErrored(void);

void RfuRecvQueue_Reset(struct RfuRecvQueue *queue);
void RfuSendQueue_Reset(struct RfuSendQueue *queue);

void RfuSetStatus(u8 status, u16 msg);
u8 RfuGetStatus(void);
void RfuRecvQueue_Enqueue(struct RfuRecvQueue *queue, u8 *src);
bool8 RfuSendQueue_Dequeue(struct RfuSendQueue *queue, u8 *dest);
bool8 RfuBackupQueue_Dequeue(struct RfuBackupQueue *queue, u8 *dest);
void RfuBackupQueue_Enqueue(struct RfuBackupQueue *queue, const u8 *dest);
bool8 RfuRecvQueue_Dequeue(struct RfuRecvQueue * queue, u8 *dest);
void RfuSendQueue_Enqueue(struct RfuSendQueue * queue, u8 *src);
void InitHostRfuGameData(struct RfuGameData *data, u8 activity, bool32 started, s32 partnerInfo);
void UpdateGameData_GroupLockedIn(bool8 started);
bool32 IsRfuSerialNumberValid(u32 serialNo);
bool8 IsRfuRecoveringFromLinkLoss(void);
bool8 LmanAcceptSlotFlagIsNotZero(void);
void LinkRfu_StopManagerAndFinalizeSlots(void);
bool32 RfuTryDisconnectLeavingChildren(void);
bool32 IsRfuCommunicatingWithAllChildren(void);
bool32 WaitRfuState(bool32 force);
bool32 HasTrainerLeftPartnersList(u16 trainerId, const u8 *trainerName);
void SendRfuStatusToPartner(u8 status, u16 trainerId, const u8 *name);
u32 WaitSendRfuStatusToPartner(u16 trainerId, const u8 *name);
void SetHostRfuGameData(u8 activity, u32 partnerInfo, bool32 startedActivity);
void InitializeRfuLinkManager_LinkLeader(u32 availSlots);
void RequestDisconnectSlotByTrainerNameAndId(const u8 *trainerName, u16 trainerId);
void CopyHostRfuGameDataAndUsername(struct RfuGameData *gameData, u8 *username);
void InitializeRfuLinkManager_JoinGroup(void);
void SendLeaveGroupNotice(void);
void CreateTask_RfuReconnectWithParent(const u8 *src, u16 trainerId);
void UpdateGameData_SetActivity(u8 activity, u32 partnerInfo, u32 startedActivity);
void SaveLinkTrainerNames(void);
void LinkRfu_CreateConnectionAsParent();
void LinkRfu_StopManagerBeforeEnteringChat();
void SetHostRfuWonderFlags(bool32 hasNews, bool32 hasCard);
void ResetHostRfuGameData(void);
void StopUnionRoomLinkManager(void);
void SetTradeBoardRegisteredMonInfo(u32 type, u32 species, u32 level);
bool32 IsUnionRoomListenTaskActive(void);
void InitializeRfuLinkManager_EnterUnionRoom(void);
void Rfu_DisconnectPlayerById(u32 playerIdx);
void TryConnectToUnionRoomParent(const u8 *name, struct RfuGameData *parent, u8 activity);
bool32 PlayerHasMetTrainerBefore(u16 id, u8 *name);
bool8 Rfu_GetCompatiblePlayerData(struct RfuGameData *gameData, u8 *username, u8 idx);
bool8 Rfu_GetWonderDistributorPlayerData(struct RfuGameData *gameData, u8 *username, u8 idx);
bool32 Rfu_IsPlayerExchangeActive(void);
void Rfu_StopPartnerSearch(void);
void RfuSetNormalDisconnectMode(void);
void SetUnionRoomChatPlayerData(u32 numPlayers);
void ClearRecvCommands(void);

# 1 "include/mystery_gift_server.h" 1




# 1 "include/mystery_gift_link.h" 1







enum {
    MG_LINKID_CLIENT_SCRIPT = 16,
    MG_LINKID_GAME_DATA,
    MG_LINKID_GAME_STAT,
    MG_LINKID_RESPONSE,
    MG_LINKID_READY_END,
    MG_LINKID_DYNAMIC_MSG,
    MG_LINKID_CARD,
    MG_LINKID_NEWS,
    MG_LINKID_STAMP,
    MG_LINKID_RAM_SCRIPT,
    MG_LINKID_EREADER_TRAINER,
    MG_LINKID_UNK_1,
    MG_LINKID_UNK_2,
};

struct MysteryGiftLink
{
    s32 state;
    u8 sendPlayerId;
    u8 recvPlayerId;
    u16 recvIdent;
    u16 recvCounter;
    u16 recvCRC;
    u16 recvSize;
    u16 sendIdent;
    u16 sendCounter;
    u16 sendCRC;
    u16 sendSize;
    void * recvBuffer;
    const void * sendBuffer;
    u32 (*recvFunc)(struct MysteryGiftLink *);
    u32 (*sendFunc)(struct MysteryGiftLink *);
};

void MysteryGiftLink_Init(struct MysteryGiftLink * link, u32 sendPlayerId, u32 recvPlayerId);
void MysteryGiftLink_InitSend(struct MysteryGiftLink * link, u32 ident, const void * src, u32 size);
bool32 MysteryGiftLink_Recv(struct MysteryGiftLink * link);
bool32 MysteryGiftLink_Send(struct MysteryGiftLink * link);
void MysteryGiftLink_InitRecv(struct MysteryGiftLink * link, u32 ident, void * dest);
# 6 "include/mystery_gift_server.h" 2



enum {
    SVR_RET_INIT,
    SVR_RET_ACTIVE,
    SVR_RET_UNUSED,
    SVR_RET_END
};


enum {
    SVR_RETURN,
    SVR_SEND,
    SVR_RECV,
    SVR_GOTO,
    SVR_GOTO_IF_EQ,
    SVR_COPY_GAME_DATA,
    SVR_CHECK_GAME_DATA,
    SVR_CHECK_EXISTING_CARD,
    SVR_READ_RESPONSE,
    SVR_CHECK_EXISTING_STAMPS,
    SVR_GET_CARD_STAT,
    SVR_CHECK_QUESTIONNAIRE,
    SVR_COMPARE,
    SVR_LOAD_CARD,
    SVR_LOAD_NEWS,
    SVR_LOAD_RAM_SCRIPT,
    SVR_LOAD_STAMP,
    SVR_LOAD_UNK_2,
    SVR_LOAD_CLIENT_SCRIPT,
    SVR_LOAD_EREADER_TRAINER,
    SVR_LOAD_MSG,
    SVR_COPY_STAMP,
    SVR_COPY_CARD,
    SVR_COPY_NEWS,
    SVR_SET_RAM_SCRIPT,
    SVR_SET_CLIENT_SCRIPT,
    SVR_COPY_SAVED_CARD,
    SVR_COPY_SAVED_NEWS,
    SVR_COPY_SAVED_RAM_SCRIPT,
    SVR_LOAD_UNK_1,
};







enum {
    SVR_MSG_NOTHING_SENT,
    SVR_MSG_RECORD_UPLOADED,
    SVR_MSG_CARD_SENT,
    SVR_MSG_NEWS_SENT,
    SVR_MSG_STAMP_SENT,
    SVR_MSG_HAS_CARD,
    SVR_MSG_HAS_STAMP,
    SVR_MSG_HAS_NEWS,
    SVR_MSG_NO_ROOM_STAMPS,
    SVR_MSG_CLIENT_CANCELED,
    SVR_MSG_CANT_SEND_GIFT_1,
    SVR_MSG_COMM_ERROR,
    SVR_MSG_GIFT_SENT_1,
    SVR_MSG_GIFT_SENT_2,
    SVR_MSG_CANT_SEND_GIFT_2,
};

struct MysteryGiftServerCmd
{
    u32 instr;
    bool32 param;
    const void *ptr;
};

struct MysteryGiftServer
{
    u32 unused;
    u32 param;
    u32 funcId;
    u32 cmdidx;
    const struct MysteryGiftServerCmd * script;
    void *recvBuffer;
    struct WonderCard * card;
    struct WonderNews * news;
    struct MysteryGiftLinkGameData * linkGameData;
    const void *ramScript;
    u32 ramScriptSize;
    const void *clientScript;
    u32 clientScriptSize;
    u32 stamp;
    struct MysteryGiftLink manager;
};

void MysterGiftServer_CreateForNews(void);
void MysterGiftServer_CreateForCard(void);
u32 MysterGiftServer_Run(u16 * endVal);
# 326 "include/link_rfu.h" 2
extern const struct MysteryGiftServerCmd gServerScript_ClientCanceledCard[];
# 22 "src/battle_main.c" 2
# 1 "include/load_save.h" 1





extern bool32 gFlashMemoryPresent;
extern struct SaveBlock1 gSaveBlock1;
extern struct SaveBlock2 gSaveBlock2;
extern struct PokemonStorage gPokemonStorage;

void ClearSav2(void);
void ClearSav1(void);
void CheckForFlashMemory(void);
void MoveSaveBlocks_ResetHeap(void);
bool32 GetSecretBase2Field_9(void);
void ClearSecretBase2Field_9(void);
void SetSecretBase2Field_9(void);
void SetSecretBase2Field_9_AndHideBG(void);
void ClearSecretBase2Field_9_2(void);
void SavePlayerParty(void);
void LoadPlayerParty(void);
void SaveSerializedGame(void);
void LoadSerializedGame(void);
void LoadPlayerBag(void);
void SavePlayerBag(void);
void SetSaveBlocksPointers(void);
void MoveSaveBlocks_ResetHeap(void);
void ApplyNewEncryptionKeyToAllEncryptedData(u32 encryptionKey);
void ApplyNewEncryptionKeyToBagItems(u32 encryptionKey);
void ApplyNewEncryptionKeyToWord(u32 * word, u32 encryptionKey);
void ApplyNewEncryptionKeyToHword(u16 * hword, u32 encryptionKey);
void ClearContinueGameWarpStatus2(void);
void SetContinueGameWarpStatusToDynamicWarp(void);
void SetContinueGameWarpStatus(void);
bool32 UseContinueGameWarp(void);
void ClearContinueGameWarpStatus();
# 23 "src/battle_main.c" 2
# 1 "include/m4a.h" 1



# 1 "include/gba/m4a_internal.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/gba/m4a_internal.h" 2
# 39 "include/gba/m4a_internal.h"
struct WaveData
{
    u16 type;
    u16 status;
    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};
# 57 "include/gba/m4a_internal.h"
struct ToneData
{
    u8 type;
    u8 key;
    u8 length;
    u8 pan_sweep;
    struct WaveData *wav;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
};
# 87 "include/gba/m4a_internal.h"
struct CgbChannel
{
    u8 statusFlags;
    u8 type;
    u8 rightVolume;
    u8 leftVolume;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
    u8 key;
    u8 envelopeVolume;
    u8 envelopeGoal;
    u8 envelopeCounter;
    u8 pseudoEchoVolume;
    u8 pseudoEchoLength;
    u8 dummy1;
    u8 dummy2;
    u8 gateTime;
    u8 midiKey;
    u8 velocity;
    u8 priority;
    u8 rhythmPan;
    u8 dummy3[3];
    u8 dummy5;
    u8 sustainGoal;
    u8 n4;
    u8 pan;
    u8 panMask;
    u8 modify;
    u8 length;
    u8 sweep;
    u32 frequency;
    u32 *wavePointer;
    u32 *currentPointer;
    struct MusicPlayerTrack *track;
    void *prevChannelPointer;
    void *nextChannelPointer;
    u8 dummy4[8];
};

struct MusicPlayerTrack;

struct SoundChannel
{
    u8 statusFlags;
    u8 type;
    u8 rightVolume;
    u8 leftVolume;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
    u8 key;
    u8 envelopeVolume;
    u8 envelopeVolumeRight;
    u8 envelopeVolumeLeft;
    u8 pseudoEchoVolume;
    u8 pseudoEchoLength;
    u8 dummy1;
    u8 dummy2;
    u8 gateTime;
    u8 midiKey;
    u8 velocity;
    u8 priority;
    u8 rhythmPan;
    u8 dummy3[3];
    u32 count;
    u32 fw;
    u32 frequency;
    struct WaveData *wav;
    s8 *currentPointer;
    struct MusicPlayerTrack *track;
    void *prevChannelPointer;
    void *nextChannelPointer;
    u32 dummy4;
    u16 xpi;
    u16 xpc;
};





struct MusicPlayerInfo;

typedef void (*MPlayFunc)();
typedef void (*PlyNoteFunc)(u32, struct MusicPlayerInfo *, struct MusicPlayerTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MusicPlayerInfo *);

struct SoundInfo
{




    u32 ident;

    vu8 pcmDmaCounter;


    u8 reverb;
    u8 maxChans;
    u8 masterVolume;
    u8 freq;

    u8 mode;
    u8 c15;
    u8 pcmDmaPeriod;
    u8 maxLines;
    u8 gap[3];
    s32 pcmSamplesPerVBlank;
    s32 pcmFreq;
    s32 divFreq;
    struct CgbChannel *cgbChans;
    MPlayMainFunc MPlayMainHead;
    struct MusicPlayerInfo *musicPlayerHead;
    CgbSoundFunc CgbSound;
    CgbOscOffFunc CgbOscOff;
    MidiKeyToCgbFreqFunc MidiKeyToCgbFreq;
    MPlayFunc *MPlayJumpTable;
    PlyNoteFunc plynote;
    ExtVolPitFunc ExtVolPit;
    u8 gap2[16];
    struct SoundChannel chans[12];
    s8 pcmBuffer[1584 * 2];
};

struct SongHeader
{
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct ToneData *tone;
    u8 *part[1];
};

struct PokemonCrySong
{
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct ToneData *tone;
    u8 *part[2];
    u8 gap;
    u8 part0;
    u8 tuneValue;
    u8 gotoCmd;
    u32 gotoTarget;
    u8 part1;
    u8 tuneValue2;
    u8 cont[2];
    u8 volCmd;
    u8 volumeValue;
    u8 unkCmd0D[2];
    u32 unkCmd0DParam;
    u8 xreleCmd[2];
    u8 releaseValue;
    u8 panCmd;
    u8 panValue;
    u8 tieCmd;
    u8 tieKeyValue;
    u8 tieVelocityValue;
    u8 unkCmd0C[2];
    u16 unkCmd0CParam;
    u8 end[2];
};
# 268 "include/gba/m4a_internal.h"
struct MusicPlayerTrack
{
    u8 flags;
    u8 wait;
    u8 patternLevel;
    u8 repN;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    u8 keyM;
    u8 pitM;
    s8 keyShift;
    s8 keyShiftX;
    s8 tune;
    u8 pitX;
    s8 bend;
    u8 bendRange;
    u8 volMR;
    u8 volML;
    u8 vol;
    u8 volX;
    s8 pan;
    s8 panX;
    s8 modM;
    u8 mod;
    u8 modT;
    u8 lfoSpeed;
    u8 lfoSpeedC;
    u8 lfoDelay;
    u8 lfoDelayC;
    u8 priority;
    u8 pseudoEchoVolume;
    u8 pseudoEchoLength;
    struct SoundChannel *chan;
    struct ToneData tone;
    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};
# 323 "include/gba/m4a_internal.h"
struct MusicPlayerInfo
{
    struct SongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    u8 unk_B;
    u32 clock;
    u8 gap[8];
    u8 *memAccArea;
    u16 tempoD;
    u16 tempoU;
    u16 tempoI;
    u16 tempoC;
    u16 fadeOI;
    u16 fadeOC;
    u16 fadeOV;
    struct MusicPlayerTrack *tracks;
    struct ToneData *tone;
    u32 ident;
    MPlayMainFunc MPlayMainNext;
    struct MusicPlayerInfo *musicPlayerNext;
};

struct MusicPlayer
{
    struct MusicPlayerInfo *info;
    struct MusicPlayerTrack *track;
    u8 unk_8;
    u16 unk_A;
};

struct Song
{
    struct SongHeader *header;
    u16 ms;
    u16 me;
};

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];



extern u8 gMPlayMemAccArea[];






extern struct PokemonCrySong gPokemonCrySong;
extern struct PokemonCrySong gPokemonCrySongs[];

extern struct MusicPlayerInfo gPokemonCryMusicPlayers[];
extern struct MusicPlayerTrack gPokemonCryTracks[];

extern char SoundMainRAM[];

extern MPlayFunc gMPlayJumpTable[];

typedef void (*XcmdFunc)(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
extern const XcmdFunc gXcmdTable[];

extern struct CgbChannel gCgbChans[];

extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];

extern const struct PokemonCrySong gPokemonCrySongTemplate;

extern const struct ToneData voicegroup000;

extern char gNumMusicPlayers[];
extern char gMaxLines[];




u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void);
void TrackStop(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayMain(struct MusicPlayerInfo *);
void RealClearChain(void *x);

void MPlayContinue(struct MusicPlayerInfo *mplayInfo);
void MPlayStart(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader);
void m4aMPlayStop(struct MusicPlayerInfo *mplayInfo);
void FadeOutBody(struct MusicPlayerInfo *mplayInfo);
void TrkVolPitSet(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void ClearChain(void *x);
void Clear64byte(void *addr);
void SoundInit(struct SoundInfo *soundInfo);
void MPlayExtender(struct CgbChannel *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track, u8 a3);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct CgbChannel *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void DummyFunc(void);
void MPlayJumpTableCopy(MPlayFunc *mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MusicPlayerInfo *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MusicPlayerTrack *track);
void m4aMPlayModDepthSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed);

struct MusicPlayerInfo *SetPokemonCryTone(struct ToneData *tone);
void SetPokemonCryVolume(u8 val);
void SetPokemonCryPanpot(s8 val);
void SetPokemonCryPitch(s16 val);
void SetPokemonCryLength(u16 val);
void SetPokemonCryRelease(u8 val);
void SetPokemonCryProgress(u32 val);
bool32 IsPokemonCryPlaying(struct MusicPlayerInfo *mplayInfo);
void SetPokemonCryChorus(s8 val);
void SetPokemonCryStereo(u32 val);
void SetPokemonCryPriority(u8 val);


void ply_fine(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_goto(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_patt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_rept(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_memacc(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_prio(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tempo(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_keysh(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_voice(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_vol(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pan(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bendr(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfos(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfodl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_mod(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_modt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tune(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_port(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_endtie(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_note(u32 note_cmd, struct MusicPlayerInfo *, struct MusicPlayerTrack *);


void ply_xxx(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xwave(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xtype(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xatta(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xdeca(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xsust(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xrele(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecv(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xleng(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xswee(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd_0C(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd_0D(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
# 5 "include/m4a.h" 2

void m4aSoundVSync(void);
void m4aSoundVSyncOn(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16 n);
void m4aSongNumStartOrChange(u16 n);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayContinue(struct MusicPlayerInfo *mplayInfo);
void m4aMPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MusicPlayerInfo *mplayInfo);

extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;
extern struct SoundInfo gSoundInfo;

extern const struct SongHeader mus_victory_gym_leader;
# 24 "src/battle_main.c" 2
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
# 25 "src/battle_main.c" 2
# 1 "include/pokeball.h" 1





enum
{
    BALL_POKE,
    BALL_GREAT,
    BALL_SAFARI,
    BALL_ULTRA,
    BALL_MASTER,
    BALL_NET,
    BALL_DIVE,
    BALL_NEST,
    BALL_REPEAT,
    BALL_TIMER,
    BALL_LUXURY,
    BALL_PREMIER,
    POKEBALL_COUNT
};

enum {
    BALL_AFFINE_ANIM_0,
    BALL_ROTATE_RIGHT,
    BALL_ROTATE_LEFT,
    BALL_AFFINE_ANIM_3,
    BALL_AFFINE_ANIM_4
};

extern const struct CompressedSpriteSheet gBallSpriteSheets[POKEBALL_COUNT];
extern const struct CompressedSpritePalette gBallSpritePalettes[POKEBALL_COUNT];
extern const struct SpriteTemplate gBallSpriteTemplates[];




u8 DoPokeballSendOutAnimation(s16 pan, u8 kindOfThrow);
void CreatePokeballSpriteToReleaseMon(u8 monSpriteId, u8 monPalNum, u8 x, u8 y, u8 oamPriority, u8 subpriortiy, u8 delay, u32 fadePalettes);
u8 CreateTradePokeballSprite(u8 monSpriteId, u8 monPalNum, u8 x, u8 y, u8 oamPriority, u8 subPriority, u8 delay, u32 fadePalettes);
void DoHitAnimHealthboxEffect(u8 bank);
void LoadBallGfx(u8 ballId);
void FreeBallGfx(u8 ballId);
void StartHealthboxSlideIn(u8 battler);
void DestroySpriteAndFreeResources_Ball(struct Sprite *sprite);
# 26 "src/battle_main.c" 2
# 1 "include/pokedex.h" 1



enum
{
    DEX_MODE_KANTO,
    DEX_MODE_NATIONAL
};

enum
{
    FLAG_GET_SEEN,
    FLAG_GET_CAUGHT,
    FLAG_SET_SEEN,
    FLAG_SET_CAUGHT
};


enum {
    DEX_AREA_NONE,
    DEX_AREA_PALLET_TOWN,
    DEX_AREA_VIRIDIAN_CITY,
    DEX_AREA_PEWTER_CITY,
    DEX_AREA_CERULEAN_CITY,
    DEX_AREA_LAVENDER_TOWN,
    DEX_AREA_VERMILION_CITY,
    DEX_AREA_CELADON_CITY,
    DEX_AREA_FUCHSIA_CITY,
    DEX_AREA_CINNABAR_ISLAND,
    DEX_AREA_INDIGO_PLATEAU,
    DEX_AREA_SAFFRON_CITY,
    DEX_AREA_ROUTE_1,
    DEX_AREA_ROUTE_2,
    DEX_AREA_ROUTE_3,
    DEX_AREA_ROUTE_4,
    DEX_AREA_ROUTE_5,
    DEX_AREA_ROUTE_6,
    DEX_AREA_ROUTE_7,
    DEX_AREA_ROUTE_8,
    DEX_AREA_ROUTE_9,
    DEX_AREA_ROUTE_10,
    DEX_AREA_ROUTE_11,
    DEX_AREA_ROUTE_12,
    DEX_AREA_ROUTE_13,
    DEX_AREA_ROUTE_14,
    DEX_AREA_ROUTE_15,
    DEX_AREA_ROUTE_16,
    DEX_AREA_ROUTE_17,
    DEX_AREA_ROUTE_18,
    DEX_AREA_ROUTE_19,
    DEX_AREA_ROUTE_20,
    DEX_AREA_ROUTE_21,
    DEX_AREA_ROUTE_22,
    DEX_AREA_ROUTE_23,
    DEX_AREA_ROUTE_24,
    DEX_AREA_ROUTE_25,
    DEX_AREA_VIRIDIAN_FOREST,
    DEX_AREA_DIGLETTS_CAVE,
    DEX_AREA_MT_MOON,
    DEX_AREA_CERULEAN_CAVE,
    DEX_AREA_ROCK_TUNNEL,
    DEX_AREA_POWER_PLANT,
    DEX_AREA_POKEMON_TOWER,
    DEX_AREA_SAFARI_ZONE,
    DEX_AREA_SEAFOAM_ISLANDS,
    DEX_AREA_POKEMON_MANSION,
    DEX_AREA_VICTORY_ROAD,
    DEX_AREA_ONE_ISLAND,
    DEX_AREA_TWO_ISLAND,
    DEX_AREA_THREE_ISLAND,
    DEX_AREA_FOUR_ISLAND,
    DEX_AREA_FIVE_ISLAND,
    DEX_AREA_SIX_ISLAND,
    DEX_AREA_SEVEN_ISLAND,
    DEX_AREA_KINDLE_ROAD,
    DEX_AREA_TREASURE_BEACH,
    DEX_AREA_CAPE_BRINK,
    DEX_AREA_BOND_BRIDGE,
    DEX_AREA_THREE_ISLE_PATH,
    DEX_AREA_RESORT_GORGEOUS,
    DEX_AREA_WATER_LABYRINTH,
    DEX_AREA_FIVE_ISLE_MEADOW,
    DEX_AREA_MEMORIAL_PILLAR,
    DEX_AREA_OUTCAST_ISLAND,
    DEX_AREA_GREEN_PATH,
    DEX_AREA_WATER_PATH,
    DEX_AREA_RUIN_VALLEY,
    DEX_AREA_TRAINER_TOWER,
    DEX_AREA_CANYON_ENTRANCE,
    DEX_AREA_SEVAULT_CANYON,
    DEX_AREA_TANOBY_RUINS,
    DEX_AREA_MT_EMBER,
    DEX_AREA_BERRY_FOREST,
    DEX_AREA_ICEFALL_CAVE,
    DEX_AREA_LOST_CAVE,
    DEX_AREA_ALTERING_CAVE,
    DEX_AREA_PATTERN_BUSH,
    DEX_AREA_DOTTED_HOLE,
    DEX_AREA_TANOBY_CHAMBER,
};

struct PokedexEntry
{
             u8 categoryName[12];
             u16 height;
             u16 weight;
             const u8 *description;
             const u8 *unusedDescription;
             u16 unused;
             u16 pokemonScale;
             u16 pokemonOffset;
             u16 trainerScale;
             u16 trainerOffset;
};

void ResetPokedex(void);
void CopyMonCategoryText(u16 species, u8 *dst);
u16 GetPokedexHeightWeight(u16 dexNum, u8 data);
u16 GetNationalPokedexCount(u8);
u16 GetKantoPokedexCount(u8);
bool16 HasAllMons(void);
u8 CreateDexDisplayMonDataTask(u16 dexNum, u32 trainerId, u32 personality);
s8 GetSetPokedexFlag(u16 nationalNum, u8 caseId);
u16 GetNationalPokedexCount(u8);
u16 GetKantoPokedexCount(u8);
bool16 HasAllHoennMons(void);
bool16 HasAllKantoMons(void);
bool16 HasAllMons(void);

u8 DexScreen_RegisterMonToPokedex(u16 species);
# 27 "src/battle_main.c" 2
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
# 28 "src/battle_main.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 29 "src/battle_main.c" 2
# 1 "include/roamer.h" 1





void ClearRoamerData(void);
void ClearRoamerLocationData(void);
void InitRoamer(void);
void UpdateLocationHistoryForRoamer(void);
void RoamerMoveToOtherLocationSet(void);
void RoamerMove(void);
bool8 IsRoamerAt(u8 mapGroup, u8 mapNum);
void CreateRoamerMonInstance(void);
u8 TryStartRoamerEncounter(void);
void UpdateRoamerHPStatus(struct Pokemon *mon);
void SetRoamerInactive(void);
void GetRoamerLocation(u8 *mapGroup, u8 *mapNum);
u16 GetRoamerLocationMapSectionId(void);
# 30 "src/battle_main.c" 2
# 1 "include/safari_zone.h" 1





extern u8 gNumSafariBalls;
extern u16 gSafariZoneStepCounter;

bool32 GetSafariZoneFlag(void);
void SetSafariZoneFlag(void);
void ResetSafariZoneFlag(void);

void EnterSafariMode(void);
void ExitSafariMode(void);

bool8 SafariZoneTakeStep(void);
void SafariZoneRetirePrompt(void);

void CB2_EndSafariBattle(void);
# 31 "src/battle_main.c" 2
# 1 "include/scanline_effect.h" 1
# 17 "include/scanline_effect.h"
struct ScanlineEffectParams
{
    volatile void *dmaDest;
    u32 dmaControl;
    u8 initState;
    u8 unused9;
};

struct ScanlineEffect
{
    void *dmaSrcBuffers[2];
    volatile void *dmaDest;
    u32 dmaControl;
    void (*setFirstScanlineReg)(void);
    u8 srcBuffer;
    u8 state;
    u8 unused16;
    u8 unused17;
    u8 waveTaskId;
};

extern struct ScanlineEffect gScanlineEffect;

extern u16 gScanlineEffectRegBuffers[2][0x3C0];

void ScanlineEffect_Stop(void);
void ScanlineEffect_Clear(void);
void ScanlineEffect_SetParams(struct ScanlineEffectParams);
void ScanlineEffect_InitHBlankDmaTransfer(void);
u8 ScanlineEffect_InitWave(u8 startLine, u8 endLine, u8 frequency, u8 amplitude, u8 delayInterval, u8 regOffset, bool8 a7);
# 32 "src/battle_main.c" 2
# 1 "include/task.h" 1
# 33 "src/battle_main.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[];

s16 Sin(s16 index, s16 amplitude);
s16 Cos(s16 index, s16 amplitude);
s16 Sin2(u16 angle);
s16 Cos2(u16 angle);
# 34 "src/battle_main.c" 2
# 1 "include/vs_seeker.h" 1





void Task_VsSeeker_0(u8 taskId);
void ClearRematchStateByTrainerId(void);
void ClearRematchStateOfLastTalked(void);
int GetRematchTrainerId(u16 trainerId);
bool8 UpdateVsSeekerStepCounter(void);
void MapResetTrainerRematches(u16 mapGroup, u16 mapNum);
# 35 "src/battle_main.c" 2
# 1 "include/util.h" 1







extern const u8 gMiscBlank_Gfx[];
extern const u32 gBitTable[];

u8 CreateInvisibleSpriteWithCallback(void (*)(struct Sprite *));
void StoreWordInTwoHalfwords(u16 *, unsigned);
void LoadWordFromTwoHalfwords(u16 *, unsigned *);
int CountTrailingZeroBits(u32 value);
u16 CalcCRC16(const u8 *data, u32 length);
u16 CalcCRC16WithTable(const u8 *data, u32 length);
u32 CalcByteArraySum(const u8 *data, u32 length);
void BlendPalette(u16 palOffset, u16 numEntries, u8 coeff, u16 blendColor);
void DoBgAffineSet(struct BgAffineDstData * dest, u32 texX, u32 texY, s16 srcX, s16 srcY, s16 sx, s16 sy, u16 alpha);
# 36 "src/battle_main.c" 2
# 1 "include/constants/abilities.h" 1
# 37 "src/battle_main.c" 2
# 1 "include/constants/battle_move_effects.h" 1
# 38 "src/battle_main.c" 2
# 1 "include/constants/battle_setup.h" 1
# 39 "src/battle_main.c" 2
# 1 "include/constants/hold_effects.h" 1
# 40 "src/battle_main.c" 2
# 1 "include/constants/items.h" 1
# 41 "src/battle_main.c" 2
# 1 "include/constants/moves.h" 1
# 42 "src/battle_main.c" 2
# 1 "include/constants/pokemon.h" 1
# 43 "src/battle_main.c" 2
# 1 "include/constants/songs.h" 1
# 44 "src/battle_main.c" 2


static void SpriteCB_UnusedDebugSprite(struct Sprite *sprite);
static void HandleAction_UseMove(void);
static void HandleAction_Switch(void);
static void HandleAction_UseItem(void);
static void HandleAction_Run(void);
static void HandleAction_WatchesCarefully(void);
static void HandleAction_SafariZoneBallThrow(void);
static void HandleAction_ThrowBait(void);
static void HandleAction_ThrowRock(void);
static void HandleAction_SafariZoneRun(void);
static void HandleAction_OldManBallThrow(void);
static void HandleAction_TryFinish(void);
static void HandleAction_NothingIsFainted(void);
static void HandleAction_ActionFinished(void);
static void HandleEndTurn_ContinueBattle(void);
static void HandleEndTurn_BattleWon(void);
static void HandleEndTurn_BattleLost(void);
static void HandleEndTurn_RanFromBattle(void);
static void HandleEndTurn_MonFled(void);
static void HandleEndTurn_FinishBattle(void);
static void CB2_InitBattleInternal(void);
static void CB2_PreInitMultiBattle(void);
static void CB2_HandleStartMultiBattle(void);
static u8 CreateNPCTrainerParty(struct Pokemon *party, u16 trainerNum);
static void CB2_HandleStartBattle(void);
static void TryCorrectShedinjaLanguage(struct Pokemon *mon);
static void BattleMainCB1(void);
static void CB2_QuitPokedudeBattle(void);
static void SpriteCB_UnusedDebugSprite_Step(struct Sprite *sprite);
static void CB2_EndLinkBattle(void);
static void EndLinkBattleInSteps(void);
static void SpriteCB_MoveWildMonToRight(struct Sprite *sprite);
static void SpriteCB_WildMonShowHealthbox(struct Sprite *sprite);
static void SpriteCB_Flicker(struct Sprite *sprite);
static void SpriteCB_AnimFaintOpponent(struct Sprite *sprite);
static void SpriteCB_BlinkVisible(struct Sprite *sprite);
static void oac_poke_ally_(struct Sprite *sprite);
static void SpriteCB_Idle(struct Sprite *sprite);
static void SpriteCB_BounceEffect(struct Sprite *sprite);
static void SpriteCB_PlayerThrowUpdate(struct Sprite *sprite);
static void BattleStartClearSetData(void);
static void BattleIntroGetMonsData(void);
static void TurnValuesCleanUp(bool8 var0);
static void SpecialStatusesClear(void);
static void BattleIntroPrepareBackgroundSlide(void);
static void BattleIntroDrawTrainersOrMonsSprites(void);
static void BattleIntroDrawPartySummaryScreens(void);
static void BattleIntroPrintTrainerWantsToBattle(void);
static void BattleIntroPrintWildMonAttacked(void);
static void BattleIntroPrintOpponentSendsOut(void);
static void BattleIntroPrintPlayerSendsOut(void);
static void BattleIntroRecordMonsToDex(void);
static void BattleIntroOpponentSendsOutMonAnimation(void);
static void BattleIntroPlayerSendsOutMonAnimation(void);
static void TryDoEventsBeforeFirstTurn(void);
static void HandleTurnActionSelectionState(void);
static void RunTurnActionsFunctions(void);
static void SetActionsAndBattlersTurnOrder(void);
static void CheckFocusPunch_ClearVarsBeforeTurnStarts(void);
static void HandleEndTurn_FinishBattle(void);
static void FreeResetData_ReturnToOvOrDoEvolutions(void);
static void ReturnFromBattleToOverworld(void);
static void TryEvolvePokemon(void);
static void WaitForEvoSceneToFinish(void);

__attribute__((section("ewram_data"))) u16 gBattle_BG0_X = 0;
__attribute__((section("ewram_data"))) u16 gBattle_BG0_Y = 0;
__attribute__((section("ewram_data"))) u16 gBattle_BG1_X = 0;
__attribute__((section("ewram_data"))) u16 gBattle_BG1_Y = 0;
__attribute__((section("ewram_data"))) u16 gBattle_BG2_X = 0;
__attribute__((section("ewram_data"))) u16 gBattle_BG2_Y = 0;
__attribute__((section("ewram_data"))) u16 gBattle_BG3_X = 0;
__attribute__((section("ewram_data"))) u16 gBattle_BG3_Y = 0;
__attribute__((section("ewram_data"))) u16 gBattle_WIN0H = 0;
__attribute__((section("ewram_data"))) u16 gBattle_WIN0V = 0;
__attribute__((section("ewram_data"))) u16 gBattle_WIN1H = 0;
__attribute__((section("ewram_data"))) u16 gBattle_WIN1V = 0;
__attribute__((section("ewram_data"))) u8 gDisplayedStringBattle[300] = {0};
__attribute__((section("ewram_data"))) u8 gBattleTextBuff1[16] = {0};
__attribute__((section("ewram_data"))) u8 gBattleTextBuff2[16] = {0};
__attribute__((section("ewram_data"))) u8 gBattleTextBuff3[16] = {0};





static __attribute__((section("ewram_data"))) u32 sFlickerArray[25] = {0};
__attribute__((section("ewram_data"))) u32 gBattleTypeFlags = 0;
__attribute__((section("ewram_data"))) u8 gBattleTerrain = 0;
__attribute__((section("ewram_data"))) u32 gUnusedFirstBattleVar1 = 0;
__attribute__((section("ewram_data"))) struct MultiBattlePokemonTx gMultiPartnerParty[3] = {0};
__attribute__((section("ewram_data"))) u8 *gBattleAnimBgTileBuffer = ((void *)0);
__attribute__((section("ewram_data"))) u8 *gBattleAnimBgTilemapBuffer = ((void *)0);
static __attribute__((section("ewram_data"))) u16 *sUnknownDebugSpriteDataBuffer = ((void *)0);
__attribute__((section("ewram_data"))) u8 gBattleBufferA[4][0x200] = {0};
__attribute__((section("ewram_data"))) u8 gBattleBufferB[4][0x200] = {0};
__attribute__((section("ewram_data"))) u8 gActiveBattler = 0;
__attribute__((section("ewram_data"))) u32 gBattleControllerExecFlags = 0;
__attribute__((section("ewram_data"))) u8 gBattlersCount = 0;
__attribute__((section("ewram_data"))) u16 gBattlerPartyIndexes[4] = {0};
__attribute__((section("ewram_data"))) u8 gBattlerPositions[4] = {0};
__attribute__((section("ewram_data"))) u8 gActionsByTurnOrder[4] = {0};
__attribute__((section("ewram_data"))) u8 gBattlerByTurnOrder[4] = {0};
__attribute__((section("ewram_data"))) u8 gCurrentTurnActionNumber = 0;
__attribute__((section("ewram_data"))) u8 gCurrentActionFuncId = 0;
__attribute__((section("ewram_data"))) struct BattlePokemon gBattleMons[4] = {0};
__attribute__((section("ewram_data"))) u8 gBattlerSpriteIds[4] = {0};
__attribute__((section("ewram_data"))) u8 gCurrMovePos = 0;
__attribute__((section("ewram_data"))) u8 gChosenMovePos = 0;
__attribute__((section("ewram_data"))) u16 gCurrentMove = 0;
__attribute__((section("ewram_data"))) u16 gChosenMove = 0;
__attribute__((section("ewram_data"))) u16 gCalledMove = 0;
__attribute__((section("ewram_data"))) s32 gBattleMoveDamage = 0;
__attribute__((section("ewram_data"))) s32 gHpDealt = 0;
__attribute__((section("ewram_data"))) s32 gTakenDmg[4] = {0};
__attribute__((section("ewram_data"))) u16 gLastUsedItem = 0;
__attribute__((section("ewram_data"))) u8 gLastUsedAbility = 0;
__attribute__((section("ewram_data"))) u8 gBattlerAttacker = 0;
__attribute__((section("ewram_data"))) u8 gBattlerTarget = 0;
__attribute__((section("ewram_data"))) u8 gBattlerFainted = 0;
__attribute__((section("ewram_data"))) u8 gEffectBattler = 0;
__attribute__((section("ewram_data"))) u8 gPotentialItemEffectBattler = 0;
__attribute__((section("ewram_data"))) u8 gAbsentBattlerFlags = 0;
__attribute__((section("ewram_data"))) u8 gCritMultiplier = 0;
__attribute__((section("ewram_data"))) u8 gMultiHitCounter = 0;
__attribute__((section("ewram_data"))) const u8 *gBattlescriptCurrInstr = ((void *)0);
__attribute__((section("ewram_data"))) u32 gUnusedBattleMainVar = 0;
__attribute__((section("ewram_data"))) u8 gChosenActionByBattler[4] = {0};
__attribute__((section("ewram_data"))) const u8 *gSelectionBattleScripts[4] = {((void *)0)};
__attribute__((section("ewram_data"))) u16 gLastPrintedMoves[4] = {0};
__attribute__((section("ewram_data"))) u16 gLastMoves[4] = {0};
__attribute__((section("ewram_data"))) u16 gLastLandedMoves[4] = {0};
__attribute__((section("ewram_data"))) u16 gLastHitByType[4] = {0};
__attribute__((section("ewram_data"))) u16 gLastResultingMoves[4] = {0};
__attribute__((section("ewram_data"))) u16 gLockedMoves[4] = {0};
__attribute__((section("ewram_data"))) u8 gLastHitBy[4] = {0};
__attribute__((section("ewram_data"))) u16 gChosenMoveByBattler[4] = {0};
__attribute__((section("ewram_data"))) u8 gMoveResultFlags = 0;
__attribute__((section("ewram_data"))) u32 gHitMarker = 0;
static __attribute__((section("ewram_data"))) u8 sUnusedBattlersArray[4] = {0};
__attribute__((section("ewram_data"))) u8 gTakenDmgByBattler[4] = {0};
__attribute__((section("ewram_data"))) u8 gUnusedFirstBattleVar2 = 0;
__attribute__((section("ewram_data"))) u16 gSideStatuses[2] = {0};
__attribute__((section("ewram_data"))) struct SideTimer gSideTimers[2] = {0};
__attribute__((section("ewram_data"))) u32 gStatuses3[4] = {0};
__attribute__((section("ewram_data"))) struct DisableStruct gDisableStructs[4] = {0};
__attribute__((section("ewram_data"))) u16 gPauseCounterBattle = 0;
__attribute__((section("ewram_data"))) u16 gPaydayMoney = 0;
__attribute__((section("ewram_data"))) u16 gRandomTurnNumber = 0;
__attribute__((section("ewram_data"))) u8 gBattleCommunication[8] = {0};
__attribute__((section("ewram_data"))) u8 gBattleOutcome = 0;
__attribute__((section("ewram_data"))) struct ProtectStruct gProtectStructs[4] = {0};
__attribute__((section("ewram_data"))) struct SpecialStatus gSpecialStatuses[4] = {0};
__attribute__((section("ewram_data"))) u16 gBattleWeather = 0;
__attribute__((section("ewram_data"))) struct WishFutureKnock gWishFutureKnock = {0};
__attribute__((section("ewram_data"))) u16 gIntroSlideFlags = 0;
__attribute__((section("ewram_data"))) u8 gSentPokesToOpponent[2] = {0};
__attribute__((section("ewram_data"))) u16 gDynamicBasePower = 0;
__attribute__((section("ewram_data"))) u16 gExpShareExp = 0;
__attribute__((section("ewram_data"))) struct BattleEnigmaBerry gEnigmaBerries[4] = {0};
__attribute__((section("ewram_data"))) struct BattleScripting gBattleScripting = {0};
__attribute__((section("ewram_data"))) struct BattleStruct *gBattleStruct = ((void *)0);
__attribute__((section("ewram_data"))) u8 *gLinkBattleSendBuffer = ((void *)0);
__attribute__((section("ewram_data"))) u8 *gLinkBattleRecvBuffer = ((void *)0);
__attribute__((section("ewram_data"))) struct BattleResources *gBattleResources = ((void *)0);
__attribute__((section("ewram_data"))) u8 gActionSelectionCursor[4] = {0};
__attribute__((section("ewram_data"))) u8 gMoveSelectionCursor[4] = {0};
__attribute__((section("ewram_data"))) u8 gBattlerStatusSummaryTaskId[4] = {0};
__attribute__((section("ewram_data"))) u8 gBattlerInMenuId = 0;
__attribute__((section("ewram_data"))) bool8 gDoingBattleAnim = 0;
__attribute__((section("ewram_data"))) u32 gTransformedPersonalities[4] = {0};
__attribute__((section("ewram_data"))) struct BattleSpriteData *gBattleSpritesDataPtr = ((void *)0);
__attribute__((section("ewram_data"))) struct MonSpritesGfx *gMonSpritesGfxPtr = ((void *)0);
__attribute__((section("ewram_data"))) u16 gBattleMovePower = 0;
__attribute__((section("ewram_data"))) u16 gMoveToLearn = 0;
__attribute__((section("ewram_data"))) u8 gBattleMonForms[4] = {0};

void (*gPreBattleCallback1)(void);
void (*gBattleMainFunc)(void);
struct BattleResults gBattleResults;
u8 gLeveledUpInBattle;
void (*gBattlerControllerFuncs[4])(void);
u8 gHealthboxSpriteIds[4];
u8 gMultiUsePlayerCursor;
u8 gNumberOfMovesToChoose;
u8 gBattleControllerData[4];

static const struct ScanlineEffectParams sIntroScanlineParams16Bit =
{
    &(*(vu16 *)(0x4000000 + 0x1c)), (((0x8000 | 0x2000 | 0x0200 | 0x0000 | 0x0000 | 0x0000 | 0x0060) << 16) | 1), 1
};

const struct SpriteTemplate gUnknownDebugSprite =
{
    .tileTag = 0,
    .paletteTag = 0,
    .oam = &gDummyOamData,
    .anims = gDummySpriteAnimTable,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_UnusedDebugSprite,
};

static const u8 sText_ShedinjaJpnName[] = _("ヌケニン");

const struct OamData gOamData_BattlerOpponent =
{
    .y = 0,
    .affineMode = 1,
    .objMode = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (0)) & 0x03),
    .x = 0,
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 2,
    .paletteNum = 0,
    .affineParam = 0,
};

const struct OamData gOamData_BattlerPlayer =
{
    .y = 0,
    .affineMode = 1,
    .objMode = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (0)) & 0x03),
    .x = 0,
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 2,
    .paletteNum = 2,
    .affineParam = 0,
};

static const union AnimCmd sAnim_Unused[] =
{
    {.frame = {0, 5}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd *const sAnims_Unused[] =
{
    sAnim_Unused,
};

static const union AffineAnimCmd sAffineAnim_Unused[] =
{
    {.frame = {.xScale = -0x10, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 0x3C}},
    {.jump = {.type = 0x7FFE, .target = 1}},
};

static const union AffineAnimCmd *const sAffineAnims_Unused[] =
{
    sAffineAnim_Unused,
};

static const s8 sPlayerThrowXTranslation[] = { -32, -16, -16, -32, -32, 0, 0, 0 };







const u8 gTypeEffectiveness[336] =
{
    0, 5, 5,
    0, 8, 5,
    10, 10, 5,
    10, 11, 5,
    10, 12, 20,
    10, 15, 20,
    10, 6, 20,
    10, 5, 5,
    10, 16, 5,
    10, 8, 20,
    11, 10, 20,
    11, 11, 5,
    11, 12, 5,
    11, 4, 20,
    11, 5, 20,
    11, 16, 5,
    13, 11, 20,
    13, 13, 5,
    13, 12, 5,
    13, 4, 0,
    13, 2, 20,
    13, 16, 5,
    12, 10, 5,
    12, 11, 20,
    12, 12, 5,
    12, 3, 5,
    12, 4, 20,
    12, 2, 5,
    12, 6, 5,
    12, 5, 20,
    12, 16, 5,
    12, 8, 5,
    15, 11, 5,
    15, 12, 20,
    15, 15, 5,
    15, 4, 20,
    15, 2, 20,
    15, 16, 20,
    15, 8, 5,
    15, 10, 5,
    1, 0, 20,
    1, 15, 20,
    1, 3, 5,
    1, 2, 5,
    1, 14, 5,
    1, 6, 5,
    1, 5, 20,
    1, 17, 20,
    1, 8, 20,
    3, 12, 20,
    3, 3, 5,
    3, 4, 5,
    3, 5, 5,
    3, 7, 5,
    3, 8, 0,
    4, 10, 20,
    4, 13, 20,
    4, 12, 5,
    4, 3, 20,
    4, 2, 0,
    4, 6, 5,
    4, 5, 20,
    4, 8, 20,
    2, 13, 5,
    2, 12, 20,
    2, 1, 20,
    2, 6, 20,
    2, 5, 5,
    2, 8, 5,
    14, 1, 20,
    14, 3, 20,
    14, 14, 5,
    14, 17, 0,
    14, 8, 5,
    6, 10, 5,
    6, 12, 20,
    6, 1, 5,
    6, 3, 5,
    6, 2, 5,
    6, 14, 20,
    6, 7, 5,
    6, 17, 20,
    6, 8, 5,
    5, 10, 20,
    5, 15, 20,
    5, 1, 5,
    5, 4, 5,
    5, 2, 20,
    5, 6, 20,
    5, 8, 5,
    7, 0, 0,
    7, 14, 20,
    7, 17, 5,
    7, 8, 5,
    7, 7, 20,
    16, 16, 20,
    16, 8, 5,
    17, 1, 5,
    17, 14, 20,
    17, 7, 20,
    17, 17, 5,
    17, 8, 5,
    8, 10, 5,
    8, 11, 5,
    8, 13, 5,
    8, 15, 20,
    8, 5, 20,
    8, 8, 5,
    0xFE, 0xFE, 0,
    0, 7, 0,
    1, 7, 0,
    0xFF, 0xFF, 0
};

const u8 gTypeNames[18][6 + 1] =
{
    [0] = _("NORMAL"),
    [1] = _("FIGHT"),
    [2] = _("FLYING"),
    [3] = _("POISON"),
    [4] = _("GROUND"),
    [5] = _("ROCK"),
    [6] = _("BUG"),
    [7] = _("GHOST"),
    [8] = _("STEEL"),
    [9] = _("???"),
    [10] = _("FIRE"),
    [11] = _("WATER"),
    [12] = _("GRASS"),
    [13] = _("ELECTR"),
    [14] = _("PSYCHC"),
    [15] = _("ICE"),
    [16] = _("DRAGON"),
    [17] = _("DARK"),
};


const struct TrainerMoney gTrainerMoneyTable[] =
{
    {84, 25},
    {87, 25},
    {97, 25},
    {81, 4},
    {89, 9},
    {90, 25},
    {57, 4},
    {58, 3},
    {65, 9},
    {79, 6},
    {62, 5},
    {64, 6},
    {69, 9},
    {85, 8},
    {59, 4},
    {73, 18},
    {80, 6},
    {71, 6},
    {91, 8},
    {76, 6},
    {88, 18},
    {67, 22},
    {70, 1},
    {68, 12},
    {77, 10},
    {60, 8},
    {86, 9},
    {63, 12},
    {78, 10},
    {61, 5},
    {75, 5},
    {66, 5},
    {72, 18},
    {82, 12},
    {99, 6},
    {100, 1},
    {101, 7},
    {102, 9},
    {103, 7},
    {104, 12},
    {105, 50},
    {106, 4},
    {92, 3},
    {94, 7},
    {96, 1},
    {93, 6},
    {95, 6},
    {74, 1},
    {98, 1},
    {24, 25},
    {23, 25},
    {49, 4},
    {29, 4},
    {44, 15},
    {51, 10},
    {12, 20},
    {31, 10},
    {11, 50},
    {32, 10},
    {3, 5},
    {40, 3},
    {38, 2},
    {50, 4},
    {25, 5},
    {13, 50},
    {26, 4},
    {16, 8},
    {7, 1},
    {10, 6},
    {45, 10},
    {48, 5},
    {6, 12},
    {8, 1},
    {52, 8},
    {17, 8},
    {22, 20},
    {30, 50},
    {47, 20},
    {36, 6},
    {15, 2},
    {27, 20},
    {28, 10},
    {33, 12},
    {34, 8},
    {35, 3},
    {37, 10},
    {20, 15},
    {41, 8},
    {43, 15},
    {46, 12},
    {56, 10},
    {4, 10},
    {5, 15},
    {9, 12},
    {14, 15},
    {18, 8},
    {19, 4},
    {39, 4},
    {21, 6},
    {54, 3},
    {53, 10},
    {55, 10},
    {2, 20},
    {83, 25},
    { 0xFF, 5},
};

# 1 "src/data/text/abilities.h" 1
static const u8 sNoneDescription[] = _("No special ability.");
static const u8 sStenchDescription[] = _("Helps repel wild POKéMON.");
static const u8 sDrizzleDescription[] = _("Summons rain in battle.");
static const u8 sSpeedBoostDescription[] = _("Gradually boosts SPEED.");
static const u8 sBattleArmorDescription[] = _("Blocks critical hits.");
static const u8 sSturdyDescription[] = _("Negates 1-hit KO attacks.");
static const u8 sDampDescription[] = _("Prevents self-destruction.");
static const u8 sLimberDescription[] = _("Prevents paralysis.");
static const u8 sSandVeilDescription[] = _("Ups evasion in a sandstorm.");
static const u8 sStaticDescription[] = _("Paralyzes on contact.");
static const u8 sVoltAbsorbDescription[] = _("Turns electricity into HP.");
static const u8 sWaterAbsorbDescription[] = _("Changes water into HP.");
static const u8 sObliviousDescription[] = _("Prevents attraction.");
static const u8 sCloudNineDescription[] = _("Negates weather effects.");
static const u8 sCompoundEyesDescription[] = _("Raises accuracy.");
static const u8 sInsomniaDescription[] = _("Prevents sleep.");
static const u8 sColorChangeDescription[] = _("Changes type to foe's move.");
static const u8 sImmunityDescription[] = _("Prevents poisoning.");
static const u8 sFlashFireDescription[] = _("Powers up if hit by fire.");
static const u8 sShieldDustDescription[] = _("Prevents added effects.");
static const u8 sOwnTempoDescription[] = _("Prevents confusion.");
static const u8 sSuctionCupsDescription[] = _("Firmly anchors the body.");
static const u8 sIntimidateDescription[] = _("Lowers the foe's ATTACK.");
static const u8 sShadowTagDescription[] = _("Prevents the foe's escape.");
static const u8 sRoughSkinDescription[] = _("Hurts to touch.");
static const u8 sWonderGuardDescription[] = _("“Super effective” hits.");
static const u8 sLevitateDescription[] = _("Not hit by GROUND attacks.");
static const u8 sEffectSporeDescription[] = _("Leaves spores on contact.");
static const u8 sSynchronizeDescription[] = _("Passes on status problems.");
static const u8 sClearBodyDescription[] = _("Prevents ability reduction.");
static const u8 sNaturalCureDescription[] = _("Heals upon switching out.");
static const u8 sLightningRodDescription[] = _("Draws electrical moves.");
static const u8 sSereneGraceDescription[] = _("Promotes added effects.");
static const u8 sSwiftSwimDescription[] = _("Raises SPEED in rain.");
static const u8 sChlorophyllDescription[] = _("Raises SPEED in sunshine.");
static const u8 sIlluminateDescription[] = _("Encounter rate increases.");
static const u8 sTraceDescription[] = _("Copies special ability.");
static const u8 sHugePowerDescription[] = _("Raises ATTACK.");
static const u8 sPoisonPointDescription[] = _("Poisons foe on contact.");
static const u8 sInnerFocusDescription[] = _("Prevents flinching.");
static const u8 sMagmaArmorDescription[] = _("Prevents freezing.");
static const u8 sWaterVeilDescription[] = _("Prevents burns.");
static const u8 sMagnetPullDescription[] = _("Traps STEEL-type POKéMON.");
static const u8 sSoundproofDescription[] = _("Avoids sound-based moves.");
static const u8 sRainDishDescription[] = _("Slight HP recovery in rain.");
static const u8 sSandStreamDescription[] = _("Summons a sandstorm.");
static const u8 sPressureDescription[] = _("Raises foe's PP usage.");
static const u8 sThickFatDescription[] = _("Heat-and-cold protection.");
static const u8 sEarlyBirdDescription[] = _("Awakens quickly from sleep.");
static const u8 sFlameBodyDescription[] = _("Burns the foe on contact.");
static const u8 sRunAwayDescription[] = _("Makes escaping easier.");
static const u8 sKeenEyeDescription[] = _("Prevents loss of accuracy.");
static const u8 sHyperCutterDescription[] = _("Prevents ATTACK reduction.");
static const u8 sPickupDescription[] = _("May pick up items.");
static const u8 sTruantDescription[] = _("Moves only every two turns.");
static const u8 sHustleDescription[] = _("Trades accuracy for power.");
static const u8 sCuteCharmDescription[] = _("Infatuates on contact.");
static const u8 sPlusDescription[] = _("Powers up with MINUS.");
static const u8 sMinusDescription[] = _("Powers up with PLUS.");
static const u8 sForecastDescription[] = _("Changes with the weather.");
static const u8 sStickyHoldDescription[] = _("Prevents item theft.");
static const u8 sShedSkinDescription[] = _("Heals the body by shedding.");
static const u8 sGutsDescription[] = _("Ups ATTACK if suffering.");
static const u8 sMarvelScaleDescription[] = _("Ups DEFENSE if suffering.");
static const u8 sLiquidOozeDescription[] = _("Draining causes injury.");
static const u8 sOvergrowDescription[] = _("Ups GRASS moves in a pinch.");
static const u8 sBlazeDescription[] = _("Ups FIRE moves in a pinch.");
static const u8 sTorrentDescription[] = _("Ups WATER moves in a pinch.");
static const u8 sSwarmDescription[] = _("Ups BUG moves in a pinch.");
static const u8 sRockHeadDescription[] = _("Prevents recoil damage.");
static const u8 sDroughtDescription[] = _("Summons sunlight in battle.");
static const u8 sArenaTrapDescription[] = _("Prevents fleeing.");
static const u8 sVitalSpiritDescription[] = _("Prevents sleep.");
static const u8 sWhiteSmokeDescription[] = _("Prevents ability reduction.");
static const u8 sPurePowerDescription[] = _("Raises ATTACK.");
static const u8 sShellArmorDescription[] = _("Blocks critical hits.");
static const u8 sCacophonyDescription[] = _("Avoids sound-based moves.");
static const u8 sAirLockDescription[] = _("Negates weather effects.");
static const u8 sOldBoomerDescription[] = _("Pokemon are slower of old age.");

const u8 *const gAbilityDescriptionPointers[80] =
{
    [0] = sNoneDescription,
    [1] = sStenchDescription,
    [2] = sDrizzleDescription,
    [3] = sSpeedBoostDescription,
    [4] = sBattleArmorDescription,
    [5] = sSturdyDescription,
    [6] = sDampDescription,
    [7] = sLimberDescription,
    [8] = sSandVeilDescription,
    [9] = sStaticDescription,
    [10] = sVoltAbsorbDescription,
    [11] = sWaterAbsorbDescription,
    [12] = sObliviousDescription,
    [13] = sCloudNineDescription,
    [14] = sCompoundEyesDescription,
    [15] = sInsomniaDescription,
    [16] = sColorChangeDescription,
    [17] = sImmunityDescription,
    [18] = sFlashFireDescription,
    [19] = sShieldDustDescription,
    [20] = sOwnTempoDescription,
    [21] = sSuctionCupsDescription,
    [22] = sIntimidateDescription,
    [23] = sShadowTagDescription,
    [24] = sRoughSkinDescription,
    [25] = sWonderGuardDescription,
    [26] = sLevitateDescription,
    [27] = sEffectSporeDescription,
    [28] = sSynchronizeDescription,
    [29] = sClearBodyDescription,
    [30] = sNaturalCureDescription,
    [31] = sLightningRodDescription,
    [32] = sSereneGraceDescription,
    [33] = sSwiftSwimDescription,
    [34] = sChlorophyllDescription,
    [35] = sIlluminateDescription,
    [36] = sTraceDescription,
    [37] = sHugePowerDescription,
    [38] = sPoisonPointDescription,
    [39] = sInnerFocusDescription,
    [40] = sMagmaArmorDescription,
    [41] = sWaterVeilDescription,
    [42] = sMagnetPullDescription,
    [43] = sSoundproofDescription,
    [44] = sRainDishDescription,
    [45] = sSandStreamDescription,
    [46] = sPressureDescription,
    [47] = sThickFatDescription,
    [48] = sEarlyBirdDescription,
    [49] = sFlameBodyDescription,
    [50] = sRunAwayDescription,
    [51] = sKeenEyeDescription,
    [52] = sHyperCutterDescription,
    [53] = sPickupDescription,
    [54] = sTruantDescription,
    [55] = sHustleDescription,
    [56] = sCuteCharmDescription,
    [57] = sPlusDescription,
    [58] = sMinusDescription,
    [59] = sForecastDescription,
    [60] = sStickyHoldDescription,
    [61] = sShedSkinDescription,
    [62] = sGutsDescription,
    [63] = sMarvelScaleDescription,
    [64] = sLiquidOozeDescription,
    [65] = sOvergrowDescription,
    [66] = sBlazeDescription,
    [67] = sTorrentDescription,
    [68] = sSwarmDescription,
    [69] = sRockHeadDescription,
    [70] = sDroughtDescription,
    [71] = sArenaTrapDescription,
    [72] = sVitalSpiritDescription,
    [73] = sWhiteSmokeDescription,
    [74] = sPurePowerDescription,
    [75] = sShellArmorDescription,
    [76] = sCacophonyDescription,
    [77] = sAirLockDescription,
    [78] = sOldBoomerDescription
};

const u8 gAbilityNames[80][12 + 1] =
{
    [0] = _("-------"),
    [1] = _("STENCH"),
    [2] = _("DRIZZLE"),
    [3] = _("SPEED BOOST"),
    [4] = _("BATTLE ARMOR"),
    [5] = _("STURDY"),
    [6] = _("DAMP"),
    [7] = _("LIMBER"),
    [8] = _("SAND VEIL"),
    [9] = _("STATIC"),
    [10] = _("VOLT ABSORB"),
    [11] = _("WATER ABSORB"),
    [12] = _("OBLIVIOUS"),
    [13] = _("CLOUD NINE"),
    [14] = _("COMPOUNDEYES"),
    [15] = _("INSOMNIA"),
    [16] = _("COLOR CHANGE"),
    [17] = _("IMMUNITY"),
    [18] = _("FLASH FIRE"),
    [19] = _("SHIELD DUST"),
    [20] = _("OWN TEMPO"),
    [21] = _("SUCTION CUPS"),
    [22] = _("INTIMIDATE"),
    [23] = _("SHADOW TAG"),
    [24] = _("ROUGH SKIN"),
    [25] = _("WONDER GUARD"),
    [26] = _("LEVITATE"),
    [27] = _("EFFECT SPORE"),
    [28] = _("SYNCHRONIZE"),
    [29] = _("CLEAR BODY"),
    [30] = _("NATURAL CURE"),
    [31] = _("LIGHTNINGROD"),
    [32] = _("SERENE GRACE"),
    [33] = _("SWIFT SWIM"),
    [34] = _("CHLOROPHYLL"),
    [35] = _("ILLUMINATE"),
    [36] = _("TRACE"),
    [37] = _("HUGE POWER"),
    [38] = _("POISON POINT"),
    [39] = _("INNER FOCUS"),
    [40] = _("MAGMA ARMOR"),
    [41] = _("WATER VEIL"),
    [42] = _("MAGNET PULL"),
    [43] = _("SOUNDPROOF"),
    [44] = _("RAIN DISH"),
    [45] = _("SAND STREAM"),
    [46] = _("PRESSURE"),
    [47] = _("THICK FAT"),
    [48] = _("EARLY BIRD"),
    [49] = _("FLAME BODY"),
    [50] = _("RUN AWAY"),
    [51] = _("KEEN EYE"),
    [52] = _("HYPER CUTTER"),
    [53] = _("PICKUP"),
    [54] = _("TRUANT"),
    [55] = _("HUSTLE"),
    [56] = _("CUTE CHARM"),
    [57] = _("PLUS"),
    [58] = _("MINUS"),
    [59] = _("FORECAST"),
    [60] = _("STICKY HOLD"),
    [61] = _("SHED SKIN"),
    [62] = _("GUTS"),
    [63] = _("MARVEL SCALE"),
    [64] = _("LIQUID OOZE"),
    [65] = _("OVERGROW"),
    [66] = _("BLAZE"),
    [67] = _("TORRENT"),
    [68] = _("SWARM"),
    [69] = _("ROCK HEAD"),
    [70] = _("DROUGHT"),
    [71] = _("ARENA TRAP"),
    [72] = _("VITAL SPIRIT"),
    [73] = _("WHITE SMOKE"),
    [74] = _("PURE POWER"),
    [75] = _("SHELL ARMOR"),
    [76] = _("CACOPHONY"),
    [77] = _("AIR LOCK"),
    [78] = _("OLD BOOMER"),
};
# 561 "src/battle_main.c" 2

static void (*const sTurnActionsFuncsTable[])(void) =
{
    [0] = HandleAction_UseMove,
    [1] = HandleAction_UseItem,
    [2] = HandleAction_Switch,
    [3] = HandleAction_Run,
    [4] = HandleAction_WatchesCarefully,
    [5] = HandleAction_SafariZoneBallThrow,
    [6] = HandleAction_ThrowBait,
    [7] = HandleAction_ThrowRock,
    [8] = HandleAction_SafariZoneRun,
    [9] = HandleAction_OldManBallThrow,
    [10] = HandleAction_RunBattleScript,
    [11] = HandleAction_TryFinish,
    [12] = HandleAction_ActionFinished,
    [13] = HandleAction_NothingIsFainted,
};

static void (*const sEndTurnFuncsTable[])(void) =
{
    [0] = HandleEndTurn_ContinueBattle,
    [1] = HandleEndTurn_BattleWon,
    [2] = HandleEndTurn_BattleLost,
    [3] = HandleEndTurn_BattleLost,
    [4] = HandleEndTurn_RanFromBattle,
    [5] = HandleEndTurn_FinishBattle,
    [6] = HandleEndTurn_MonFled,
    [7] = HandleEndTurn_FinishBattle,
    [8] = HandleEndTurn_FinishBattle,
};

const u8 gStatusConditionString_PoisonJpn[] = _("どく$$$$$");
const u8 gStatusConditionString_SleepJpn[] = _("ねむり$$$$");
const u8 gStatusConditionString_ParalysisJpn[] = _("まひ$$$$$");
const u8 gStatusConditionString_BurnJpn[] = _("やけど$$$$");
const u8 gStatusConditionString_IceJpn[] = _("こおり$$$$");
const u8 gStatusConditionString_ConfusionJpn[] = _("こんらん$$$");
const u8 gStatusConditionString_LoveJpn[] = _("メロメロ$$$");

const u8 *const gStatusConditionStringsTable[][2] =
{
    {gStatusConditionString_PoisonJpn, gText_Poison},
    {gStatusConditionString_SleepJpn, gText_Sleep},
    {gStatusConditionString_ParalysisJpn, gText_Paralysis},
    {gStatusConditionString_BurnJpn, gText_Burn},
    {gStatusConditionString_IceJpn, gText_Ice},
    {gStatusConditionString_ConfusionJpn, gText_Confusion},
    {gStatusConditionString_LoveJpn, gText_Love}
};

void CB2_InitBattle(void)
{
    MoveSaveBlocks_ResetHeap();
    AllocateBattleResources();
    AllocateBattleSpritesData();
    AllocateMonSpritesGfx();
    if (gBattleTypeFlags & (1 << 6))
    {
        HandleLinkBattleSetup();
        SetMainCallback2(CB2_PreInitMultiBattle);
        gBattleCommunication[0] = 0;
    }
    else
    {
        CB2_InitBattleInternal();
        if (!(gBattleTypeFlags & (1 << 1)))
        {
            if (gBattleTypeFlags & (1 << 3))
            {
                if (gBattleTypeFlags & (1 << 0))
                    SetHelpContext(25);
                else
                    SetHelpContext(24);
            }
            else if (gBattleTypeFlags & (1 << 7))
            {
                SetHelpContext(26);
            }
            else
            {
                SetHelpContext(23);
            }
        }
    }
}

static void CB2_InitBattleInternal(void)
{
    s32 i;

    SetHBlankCallback(((void *)0));
    SetVBlankCallback(((void *)0));

    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, (void *)(0x6000000), 0x04000000 | 0x01000000 | ((0x18000)/(32/8) & 0x1FFFFF)); };

    SetGpuReg(0x4c, 0);
    SetGpuReg(0x40, 240);
    SetGpuReg(0x44, (((160 / 2) << 8) | (160 / 2 + 1)));
    SetGpuReg(0x48, 0);
    SetGpuReg(0x4a, 0);

    gBattle_WIN0H = 240;
    gBattle_WIN0V = (((160 / 2) << 8) | (160 / 2 + 1));
    ScanlineEffect_Clear();

    for (i = 0; i < 80; ++i)
    {
        gScanlineEffectRegBuffers[0][i] = 0xF0;
        gScanlineEffectRegBuffers[1][i] = 0xF0;
    }
    for (; i < 160; ++i)
    {
        gScanlineEffectRegBuffers[0][i] = 0xFF10;
        gScanlineEffectRegBuffers[1][i] = 0xFF10;
    }
    ScanlineEffect_SetParams(sIntroScanlineParams16Bit);

    ResetPaletteFade();
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gBattle_BG1_X = 0;
    gBattle_BG1_Y = 0;
    gBattle_BG2_X = 0;
    gBattle_BG2_Y = 0;
    gBattle_BG3_X = 0;
    gBattle_BG3_Y = 0;

    gBattleTerrain = BattleSetup_GetTerrainId();

    InitBattleBgsVideo();
    LoadBattleTextboxAndBackground();
    ResetSpriteData();
    ResetTasks();
    DrawBattleEntryBackground();
    FreeAllSpritePalettes();
    gReservedSpritePaletteCount = 4;
    SetVBlankCallback(VBlankCB_Battle);
    SetUpBattleVars();

    if (gBattleTypeFlags & (1 << 6))
        SetMainCallback2(CB2_HandleStartMultiBattle);
    else
        SetMainCallback2(CB2_HandleStartBattle);
    if (!(gBattleTypeFlags & (1 << 1)))
    {
        CreateNPCTrainerParty(&gEnemyParty[0], gTrainerBattleOpponent_A);
        SetWildMonHeldItem();
    }

    gMain.inBattle = 1;
    for (i = 0; i < 6; i++)
        AdjustFriendship(&gPlayerParty[i], 3);

    gBattleCommunication[0] = 0;
}
# 748 "src/battle_main.c"
static void BufferPartyVsScreenHealth_AtStart(void)
{
    u16 flags = 0;
    s32 i;

    for ((i) = 0; (i) < 6; (i)++) { u16 species = GetMonData(&(gPlayerParty)[(i)], 65); u16 hp = GetMonData(&(gPlayerParty)[(i)], 57); u32 status = GetMonData(&(gPlayerParty)[(i)], 55); if (species == 0) continue; if (species != 413 && hp != 0 && status == 0) (flags) |= 1 << (i) * 2; if (species == 0) continue; if (hp != 0 && (species == 413 || status != 0)) (flags) |= 2 << (i) * 2; if (species == 0) continue; if (species != 413 && hp == 0) (flags) |= 3 << (i) * 2; };
    gBattleStruct->multiBuffer.linkBattlerHeader.vsScreenHealthFlagsLo = flags;
    *(&gBattleStruct->multiBuffer.linkBattlerHeader.vsScreenHealthFlagsHi) = flags >> 8;
}

static void SetPlayerBerryDataInBattleStruct(void)
{
    s32 i;
    struct BattleStruct *battleStruct = gBattleStruct;
    struct BattleEnigmaBerry *battleBerry = &battleStruct->multiBuffer.linkBattlerHeader.battleEnigmaBerry;

    if (IsEnigmaBerryValid() == 1)
    {
        for (i = 0; i < 6; i++)
            battleBerry->name[i] = gSaveBlock1Ptr->enigmaBerry.berry.name[i];
        battleBerry->name[i] = 0xFF;
        for (i = 0; i < 18; i++)
            battleBerry->itemEffect[i] = gSaveBlock1Ptr->enigmaBerry.itemEffect[i];
        battleBerry->holdEffect = gSaveBlock1Ptr->enigmaBerry.holdEffect;
        battleBerry->holdEffectParam = gSaveBlock1Ptr->enigmaBerry.holdEffectParam;
    }
    else
    {
        const struct Berry *berryData = GetBerryInfo(ItemIdToBerryType(175));

        for (i = 0; i < 6; i++)
            battleBerry->name[i] = berryData->name[i];
        battleBerry->name[i] = 0xFF;
        for (i = 0; i < 18; i++)
            battleBerry->itemEffect[i] = 0;
        battleBerry->holdEffect = 0;
        battleBerry->holdEffectParam = 0;
    }
}

static void SetAllPlayersBerryData(void)
{
    s32 i, j;

    if (!(gBattleTypeFlags & (1 << 1)))
    {
        if (IsEnigmaBerryValid() == 1)
        {
            for (i = 0; i < 6; i++)
            {
                gEnigmaBerries[0].name[i] = gSaveBlock1Ptr->enigmaBerry.berry.name[i];
                gEnigmaBerries[2].name[i] = gSaveBlock1Ptr->enigmaBerry.berry.name[i];
            }
            gEnigmaBerries[0].name[i] = 0xFF;
            gEnigmaBerries[2].name[i] = 0xFF;

            for (i = 0; i < 18; i++)
            {
                gEnigmaBerries[0].itemEffect[i] = gSaveBlock1Ptr->enigmaBerry.itemEffect[i];
                gEnigmaBerries[2].itemEffect[i] = gSaveBlock1Ptr->enigmaBerry.itemEffect[i];
            }

            gEnigmaBerries[0].holdEffect = gSaveBlock1Ptr->enigmaBerry.holdEffect;
            gEnigmaBerries[2].holdEffect = gSaveBlock1Ptr->enigmaBerry.holdEffect;
            gEnigmaBerries[0].holdEffectParam = gSaveBlock1Ptr->enigmaBerry.holdEffectParam;
            gEnigmaBerries[2].holdEffectParam = gSaveBlock1Ptr->enigmaBerry.holdEffectParam;
        }
        else
        {
            const struct Berry *berryData = GetBerryInfo(ItemIdToBerryType(175));

            for (i = 0; i < 6; i++)
            {
                gEnigmaBerries[0].name[i] = berryData->name[i];
                gEnigmaBerries[2].name[i] = berryData->name[i];
            }
            gEnigmaBerries[0].name[i] = 0xFF;
            gEnigmaBerries[2].name[i] = 0xFF;

            for (i = 0; i < 18; i++)
            {
                gEnigmaBerries[0].itemEffect[i] = 0;
                gEnigmaBerries[2].itemEffect[i] = 0;
            }

            gEnigmaBerries[0].holdEffect = 0;
            gEnigmaBerries[2].holdEffect = 0;
            gEnigmaBerries[0].holdEffectParam = 0;
            gEnigmaBerries[2].holdEffectParam = 0;
        }
    }
    else
    {
        s32 numPlayers;
        struct BattleEnigmaBerry *src;
        u8 battlerId;

        if (gBattleTypeFlags & (1 << 6))
        {
            for (i = 0; i < 4; i++)
            {
                src = (struct BattleEnigmaBerry *)(gBlockRecvBuffer[i] + 2);
                battlerId = gLinkPlayers[i].id;
                for (j = 0; j < 6; j++)
                    gEnigmaBerries[battlerId].name[j] = src->name[j];
                gEnigmaBerries[battlerId].name[j] = 0xFF;
                for (j = 0; j < 18; j++)
                    gEnigmaBerries[battlerId].itemEffect[j] = src->itemEffect[j];
                gEnigmaBerries[battlerId].holdEffect = src->holdEffect;
                gEnigmaBerries[battlerId].holdEffectParam = src->holdEffectParam;
            }
        }
        else
        {
            for (i = 0; i < 2; i++)
            {
                src = (struct BattleEnigmaBerry *)(gBlockRecvBuffer[i] + 2);
                for (j = 0; j < 6; j++)
                {
                    gEnigmaBerries[i].name[j] = src->name[j];
                    gEnigmaBerries[i + 2].name[j] = src->name[j];
                }
                gEnigmaBerries[i].name[j] = 0xFF;
                gEnigmaBerries[i + 2].name[j] = 0xFF;
                for (j = 0; j < 18; j++)
                {
                    gEnigmaBerries[i].itemEffect[j] = src->itemEffect[j];
                    gEnigmaBerries[i + 2].itemEffect[j] = src->itemEffect[j];
                }
                gEnigmaBerries[i].holdEffect = src->holdEffect;
                gEnigmaBerries[i + 2].holdEffect = src->holdEffect;
                gEnigmaBerries[i].holdEffectParam = src->holdEffectParam;
                gEnigmaBerries[i + 2].holdEffectParam = src->holdEffectParam;
            }
        }
    }
}

static void LinkBattleComputeBattleTypeFlags(u8 numPlayers, u8 multiPlayerId)
{
    u8 found = 0;


    if (gBlockRecvBuffer[0][0] == 0x100)
    {
        if (multiPlayerId == 0)
            gBattleTypeFlags |= (1 << 2) | (1 << 3);
        else
            gBattleTypeFlags |= (1 << 3);
        found++;
    }
    if (found == 0)
    {

        s32 i;

        for (i = 0; i < numPlayers; i++)
            if (gBlockRecvBuffer[0][0] != gBlockRecvBuffer[i][0])
                break;
        if (i == numPlayers)
        {
            if (multiPlayerId == 0)
                gBattleTypeFlags |= (1 << 2) | (1 << 3);
            else
                gBattleTypeFlags |= (1 << 3);
            found++;
        }
        if (found == 0)
        {

            for (i = 0; i < numPlayers; i++)
            {
                if (gBlockRecvBuffer[i][0] == 0x201 && i != multiPlayerId)
                    if (i < multiPlayerId)
                        break;
                if (gBlockRecvBuffer[i][0] > 0x201 && i != multiPlayerId)
                    break;
            }
            if (i == numPlayers)
                gBattleTypeFlags |= (1 << 2) | (1 << 3);
            else
                gBattleTypeFlags |= (1 << 3);
        }
    }
}

static void CB2_HandleStartBattle(void)
{
    u8 playerMultiplayerId;
    u8 enemyMultiplayerId;

    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    playerMultiplayerId = GetMultiplayerId();
    gBattleStruct->multiplayerId = playerMultiplayerId;
    enemyMultiplayerId = playerMultiplayerId ^ 1;
    switch (gBattleCommunication[0])
    {
    case 0:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            ShowBg(0);
            ShowBg(1);
            ShowBg(2);
            ShowBg(3);
            BattleInterfaceSetWindowPals();
            gBattleCommunication[0] = 1;
        }
        if (gWirelessCommType)
            LoadWirelessStatusIndicatorSpriteGfx();
        break;
    case 1:
        if (gBattleTypeFlags & (1 << 1))
        {
            if (gReceivedRemoteLinkPlayers)
            {
                if (IsLinkTaskFinished())
                {

                    *(&gBattleStruct->multiBuffer.linkBattlerHeader.versionSignatureLo) = 1;
                    *(&gBattleStruct->multiBuffer.linkBattlerHeader.versionSignatureHi) = 2;
                    BufferPartyVsScreenHealth_AtStart();
                    SetPlayerBerryDataInBattleStruct();
                    SendBlock(BitmaskAllOtherLinkPlayers(), &gBattleStruct->multiBuffer.linkBattlerHeader, sizeof(gBattleStruct->multiBuffer.linkBattlerHeader));
                    gBattleCommunication[0] = 2;
                }
                if (gWirelessCommType != 0)
                    CreateWirelessStatusIndicatorSprite(0, 0);
            }
        }
        else
        {
            gBattleTypeFlags |= (1 << 2);
            gBattleCommunication[0] = 15;
            SetAllPlayersBerryData();
        }
        break;
    case 2:
        if ((GetBlockReceivedStatus() & 3) == 3)
        {
            u8 taskId;

            ResetBlockReceivedFlags();
            LinkBattleComputeBattleTypeFlags(2, playerMultiplayerId);
            SetAllPlayersBerryData();
            taskId = CreateTask(InitLinkBattleVsScreen, 0);
            gTasks[taskId].data[1] = 270;
            gTasks[taskId].data[2] = 90;
            gTasks[taskId].data[5] = 0;
            gTasks[taskId].data[3] = gBattleStruct->multiBuffer.linkBattlerHeader.vsScreenHealthFlagsLo | (gBattleStruct->multiBuffer.linkBattlerHeader.vsScreenHealthFlagsHi << 8);
            gTasks[taskId].data[4] = gBlockRecvBuffer[enemyMultiplayerId][1];
            SetDeoxysStats();
            gBattleCommunication[0]++;
        }
        break;
    case 3:
        if (IsLinkTaskFinished())
        {
            SendBlock(BitmaskAllOtherLinkPlayers(), gPlayerParty, sizeof(struct Pokemon) * 2);
            gBattleCommunication[0]++;
        }
        break;
    case 4:
        if ((GetBlockReceivedStatus() & 3) == 3)
        {
            ResetBlockReceivedFlags();
            memcpy(gEnemyParty, gBlockRecvBuffer[enemyMultiplayerId], sizeof(struct Pokemon) * 2);
            gBattleCommunication[0]++;
        }
        break;
    case 7:
        if (IsLinkTaskFinished())
        {
            SendBlock(BitmaskAllOtherLinkPlayers(), gPlayerParty + 2, sizeof(struct Pokemon) * 2);
            gBattleCommunication[0]++;
        }
        break;
    case 8:
        if ((GetBlockReceivedStatus() & 3) == 3)
        {
            ResetBlockReceivedFlags();
            memcpy(gEnemyParty + 2, gBlockRecvBuffer[enemyMultiplayerId], sizeof(struct Pokemon) * 2);
            gBattleCommunication[0]++;
        }
        break;
    case 11:
        if (IsLinkTaskFinished())
        {
            SendBlock(BitmaskAllOtherLinkPlayers(), gPlayerParty + 4, sizeof(struct Pokemon) * 2);
            gBattleCommunication[0]++;
        }
        break;
    case 12:
        if ((GetBlockReceivedStatus() & 3) == 3)
        {
            ResetBlockReceivedFlags();
            memcpy(gEnemyParty + 4, gBlockRecvBuffer[enemyMultiplayerId], sizeof(struct Pokemon) * 2);
            TryCorrectShedinjaLanguage(&gEnemyParty[0]);
            TryCorrectShedinjaLanguage(&gEnemyParty[1]);
            TryCorrectShedinjaLanguage(&gEnemyParty[2]);
            TryCorrectShedinjaLanguage(&gEnemyParty[3]);
            TryCorrectShedinjaLanguage(&gEnemyParty[4]);
            TryCorrectShedinjaLanguage(&gEnemyParty[5]);
            gBattleCommunication[0]++;
        }
        break;
    case 15:
        InitBattleControllers();
        gBattleCommunication[0]++;
        gBattleCommunication[1] = 0;
        gBattleCommunication[2] = 0;
        break;
    case 16:
        if (BattleInitAllSprites(&gBattleCommunication[1], &gBattleCommunication[2]))
        {
            gPreBattleCallback1 = gMain.callback1;
            gMain.callback1 = BattleMainCB1;
            SetMainCallback2(BattleMainCB2);
            if (gBattleTypeFlags & (1 << 1))
            {
                gBattleTypeFlags |= (1 << 5);
            }
        }
        break;
    case 5:
    case 9:
    case 13:
        gBattleCommunication[0]++;
        gBattleCommunication[1] = 1;
    case 6:
    case 10:
    case 14:
        if (--gBattleCommunication[1] == 0)
            gBattleCommunication[0]++;
        break;
    }
}

static void PrepareOwnMultiPartnerBuffer(void)
{
    s32 i, j;
    u8 *nick, *cur;

    for (i = 0; i < 3; i++)
    {
        gMultiPartnerParty[i].species = GetMonData(&gPlayerParty[i], 11);
        gMultiPartnerParty[i].heldItem = GetMonData(&gPlayerParty[i], 12);
        nick = gMultiPartnerParty[i].nickname;
        GetMonData(&gPlayerParty[i], 2, nick);
        gMultiPartnerParty[i].level = GetMonData(&gPlayerParty[i], 56);
        gMultiPartnerParty[i].hp = GetMonData(&gPlayerParty[i], 57);
        gMultiPartnerParty[i].maxhp = GetMonData(&gPlayerParty[i], 58);
        gMultiPartnerParty[i].status = GetMonData(&gPlayerParty[i], 55);
        gMultiPartnerParty[i].personality = GetMonData(&gPlayerParty[i], 0);
        gMultiPartnerParty[i].gender = GetMonGender(&gPlayerParty[i]);
        StripExtCtrlCodes(nick);
        if (GetMonData(&gPlayerParty[i], 3) != 1)
        {
            for (cur = nick, j = 0; cur[j] != 0xFF; j++)
                ;
            while (j < 6)
                cur[j++] = 0;
            cur[j] = 0xFF;
        }
    }
    memcpy(gBattleStruct->multiBuffer.multiBattleMons, gMultiPartnerParty, sizeof(gMultiPartnerParty));
}

static void CB2_PreInitMultiBattle(void)
{
    s32 i;
    u8 playerMultiplierId;
    u8 r4 = 0xF;
    u16 *savedBattleTypeFlags;
    void (**savedCallback)(void);

    playerMultiplierId = GetMultiplayerId();
    gBattleStruct->multiplayerId = playerMultiplierId;
    savedCallback = &gBattleStruct->savedCallback;
    savedBattleTypeFlags = &gBattleStruct->savedBattleTypeFlags;

    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    switch (gBattleCommunication[0])
    {
    case 0:
        if (gReceivedRemoteLinkPlayers && IsLinkTaskFinished())
        {
            PrepareOwnMultiPartnerBuffer();
            SendBlock(BitmaskAllOtherLinkPlayers(), gBattleStruct->multiBuffer.multiBattleMons, sizeof(gBattleStruct->multiBuffer.multiBattleMons));
            gBattleCommunication[0]++;
        }
        break;
    case 1:
        if ((GetBlockReceivedStatus() & r4) == r4)
        {
            ResetBlockReceivedFlags();
            for (i = 0; i < 4; i++)
            {
                if (i == playerMultiplierId)
                    continue;
                if ((!(gLinkPlayers[i].id & 1) && !(gLinkPlayers[playerMultiplierId].id & 1))
                 || (gLinkPlayers[i].id & 1 && gLinkPlayers[playerMultiplierId].id & 1))
                    memcpy(gMultiPartnerParty, gBlockRecvBuffer[i], sizeof(gMultiPartnerParty));
            }
            gBattleCommunication[0]++;
            *savedCallback = gMain.savedCallback;
            *savedBattleTypeFlags = gBattleTypeFlags;
            gMain.savedCallback = CB2_PreInitMultiBattle;
            ShowPartyMenuToShowcaseMultiBattleParty();
        }
        break;
    case 2:
        if (!gPaletteFade.active)
        {
            gBattleCommunication[0]++;
            if (gWirelessCommType)
                SetLinkStandbyCallback();
            else
                SetCloseLinkCallback();
        }
        break;
    case 3:
        if (gWirelessCommType)
        {
            if (IsLinkRfuTaskFinished())
            {
                gBattleTypeFlags = *savedBattleTypeFlags;
                gMain.savedCallback = *savedCallback;
                SetMainCallback2(CB2_InitBattleInternal);
            }
        }
        else if (!gReceivedRemoteLinkPlayers)
        {
            gBattleTypeFlags = *savedBattleTypeFlags;
            gMain.savedCallback = *savedCallback;
            SetMainCallback2(CB2_InitBattleInternal);
        }
        break;
    }
}

static void CB2_HandleStartMultiBattle(void)
{
    u8 playerMultiplayerId;
    s32 id;
    u8 taskId;

    playerMultiplayerId = GetMultiplayerId();
    gBattleStruct->multiplayerId = playerMultiplayerId;
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    switch (gBattleCommunication[0])
    {
    case 0:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            ShowBg(0);
            ShowBg(1);
            ShowBg(2);
            ShowBg(3);
            BattleInterfaceSetWindowPals();
            gBattleCommunication[0] = 1;
        }
        if (gWirelessCommType)
            LoadWirelessStatusIndicatorSpriteGfx();
        break;
    case 1:
        if (gReceivedRemoteLinkPlayers)
        {
            if (IsLinkTaskFinished())
            {

                *(&gBattleStruct->multiBuffer.linkBattlerHeader.versionSignatureLo) = 1;
                *(&gBattleStruct->multiBuffer.linkBattlerHeader.versionSignatureHi) = 2;
                BufferPartyVsScreenHealth_AtStart();
                SetPlayerBerryDataInBattleStruct();
                SendBlock(BitmaskAllOtherLinkPlayers(), &gBattleStruct->multiBuffer.linkBattlerHeader, sizeof(gBattleStruct->multiBuffer.linkBattlerHeader));
                gBattleCommunication[0]++;
            }
            if (gWirelessCommType)
                CreateWirelessStatusIndicatorSprite(0, 0);
        }
        break;
    case 2:
        if ((GetBlockReceivedStatus() & 0xF) == 0xF)
        {
            ResetBlockReceivedFlags();
            LinkBattleComputeBattleTypeFlags(4, playerMultiplayerId);
            SetAllPlayersBerryData();
            SetDeoxysStats();
            memcpy(gDecompressionBuffer, gPlayerParty, sizeof(struct Pokemon) * 3);
            taskId = CreateTask(InitLinkBattleVsScreen, 0);
            gTasks[taskId].data[1] = 270;
            gTasks[taskId].data[2] = 90;
            gTasks[taskId].data[5] = 0;
            gTasks[taskId].data[3] = 0;
            gTasks[taskId].data[4] = 0;
            for (id = 0; id < 4; ++id)
            {
                switch (gLinkPlayers[id].id)
                {
                case 0:
                    gTasks[taskId].data[3] |= gBlockRecvBuffer[id][1] & 0x3F;
                    break;
                case 1:
                    gTasks[taskId].data[4] |= gBlockRecvBuffer[id][1] & 0x3F;
                    break;
                case 2:
                    gTasks[taskId].data[3] |= (gBlockRecvBuffer[id][1] & 0x3F) << 6;
                    break;
                case 3:
                    gTasks[taskId].data[4] |= (gBlockRecvBuffer[id][1] & 0x3F) << 6;
                    break;
                }
            }
            ZeroPlayerPartyMons();
            ZeroEnemyPartyMons();
            gBattleCommunication[0]++;
        }
        else
        {
            break;
        }

    case 3:
        if (IsLinkTaskFinished())
        {
            SendBlock(BitmaskAllOtherLinkPlayers(), gDecompressionBuffer, sizeof(struct Pokemon) * 2);
            gBattleCommunication[0]++;
        }
        break;
    case 4:
        if ((GetBlockReceivedStatus() & 0xF) == 0xF)
        {
            ResetBlockReceivedFlags();
            for (id = 0; id < 4; ++id)
            {
                if (id == playerMultiplayerId)
                {
                    switch (gLinkPlayers[id].id)
                    {
                    case 0:
                    case 3:
                        memcpy(gPlayerParty, gBlockRecvBuffer[id], sizeof(struct Pokemon) * 2);
                        break;
                    case 1:
                    case 2:
                        memcpy(gPlayerParty + 3, gBlockRecvBuffer[id], sizeof(struct Pokemon) * 2);
                        break;
                    }
                }
                else
                {
                    if ((!(gLinkPlayers[id].id & 1) && !(gLinkPlayers[playerMultiplayerId].id & 1))
                     || ((gLinkPlayers[id].id & 1) && (gLinkPlayers[playerMultiplayerId].id & 1)))
                    {
                        switch (gLinkPlayers[id].id)
                        {
                        case 0:
                        case 3:
                            memcpy(gPlayerParty, gBlockRecvBuffer[id], sizeof(struct Pokemon) * 2);
                            break;
                        case 1:
                        case 2:
                            memcpy(gPlayerParty + 3, gBlockRecvBuffer[id], sizeof(struct Pokemon) * 2);
                            break;
                        }
                    }
                    else
                    {
                        switch (gLinkPlayers[id].id)
                        {
                        case 0:
                        case 3:
                            memcpy(gEnemyParty, gBlockRecvBuffer[id], sizeof(struct Pokemon) * 2);
                            break;
                        case 1:
                        case 2:
                            memcpy(gEnemyParty + 3, gBlockRecvBuffer[id], sizeof(struct Pokemon) * 2);
                            break;
                        }
                    }
                }
            }
            gBattleCommunication[0]++;
        }
        break;
    case 7:
        if (IsLinkTaskFinished())
        {
            SendBlock(BitmaskAllOtherLinkPlayers(), gDecompressionBuffer + sizeof(struct Pokemon) * 2, sizeof(struct Pokemon));
            gBattleCommunication[0]++;
        }
        break;
    case 8:
        if ((GetBlockReceivedStatus() & 0xF) == 0xF)
        {
            ResetBlockReceivedFlags();
            for (id = 0; id < 4; ++id)
            {
                if (id == playerMultiplayerId)
                {
                    switch (gLinkPlayers[id].id)
                    {
                    case 0:
                    case 3:
                        memcpy(gPlayerParty + 2, gBlockRecvBuffer[id], sizeof(struct Pokemon));
                        break;
                    case 1:
                    case 2:
                        memcpy(gPlayerParty + 5, gBlockRecvBuffer[id], sizeof(struct Pokemon));
                        break;
                    }
                }
                else
                {
                    if ((!(gLinkPlayers[id].id & 1) && !(gLinkPlayers[playerMultiplayerId].id & 1))
                     || ((gLinkPlayers[id].id & 1) && (gLinkPlayers[playerMultiplayerId].id & 1)))
                    {
                        switch (gLinkPlayers[id].id)
                        {
                        case 0:
                        case 3:
                            memcpy(gPlayerParty + 2, gBlockRecvBuffer[id], sizeof(struct Pokemon));
                            break;
                        case 1:
                        case 2:
                            memcpy(gPlayerParty + 5, gBlockRecvBuffer[id], sizeof(struct Pokemon));
                            break;
                        }
                    }
                    else
                    {
                        switch (gLinkPlayers[id].id)
                        {
                        case 0:
                        case 3:
                            memcpy(gEnemyParty + 2, gBlockRecvBuffer[id], sizeof(struct Pokemon));
                            break;
                        case 1:
                        case 2:
                            memcpy(gEnemyParty + 5, gBlockRecvBuffer[id], sizeof(struct Pokemon));
                            break;
                        }
                    }
                }
            }
            TryCorrectShedinjaLanguage(&gPlayerParty[0]);
            TryCorrectShedinjaLanguage(&gPlayerParty[1]);
            TryCorrectShedinjaLanguage(&gPlayerParty[2]);
            TryCorrectShedinjaLanguage(&gPlayerParty[3]);
            TryCorrectShedinjaLanguage(&gPlayerParty[4]);
            TryCorrectShedinjaLanguage(&gPlayerParty[5]);
            TryCorrectShedinjaLanguage(&gEnemyParty[0]);
            TryCorrectShedinjaLanguage(&gEnemyParty[1]);
            TryCorrectShedinjaLanguage(&gEnemyParty[2]);
            TryCorrectShedinjaLanguage(&gEnemyParty[3]);
            TryCorrectShedinjaLanguage(&gEnemyParty[4]);
            TryCorrectShedinjaLanguage(&gEnemyParty[5]);
            gBattleCommunication[0]++;
        }
        break;
    case 11:
        InitBattleControllers();
        gBattleCommunication[0]++;
        gBattleCommunication[1] = 0;
        gBattleCommunication[2] = 0;
        break;
    case 12:
        if (BattleInitAllSprites(&gBattleCommunication[1], &gBattleCommunication[2]))
        {
            gPreBattleCallback1 = gMain.callback1;
            gMain.callback1 = BattleMainCB1;
            SetMainCallback2(BattleMainCB2);
            if (gBattleTypeFlags & (1 << 1))
                gBattleTypeFlags |= (1 << 5);
        }
        break;
    case 5:
    case 9:
        ++gBattleCommunication[0];
        gBattleCommunication[1] = 1;

    case 6:
    case 10:
        if (--gBattleCommunication[1] == 0)
            ++gBattleCommunication[0];
        break;
    }
}

void BattleMainCB2(void)
{
    AnimateSprites();
    BuildOamBuffer();
    RunTextPrinters();
    UpdatePaletteFade();
    RunTasks();

    if (({(gMain.heldKeys) & (0x0002);}) && gBattleTypeFlags & (1 << 16))
    {
        gSpecialVar_Result = gBattleOutcome = 3;
        ResetPaletteFadeControl();
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
        SetMainCallback2(CB2_QuitPokedudeBattle);
    }
}

void FreeRestoreBattleData(void)
{
    gMain.callback1 = gPreBattleCallback1;
    gScanlineEffect.state = 3;
    gMain.inBattle = 0;
    ZeroEnemyPartyMons();
    m4aSongNumStop(83);
    FreeMonSpritesGfx();
    FreeBattleSpritesData();
    FreeBattleResources();
}

static void CB2_QuitPokedudeBattle(void)
{
    UpdatePaletteFade();
    if (!gPaletteFade.active)
    {
        FreeRestoreBattleData();
        FreeAllWindowBuffers();
        SetMainCallback2(gMain.savedCallback);
    }
}

static void SpriteCB_UnusedDebugSprite(struct Sprite *sprite)
{
    sprite->data[0] = 0;
    sprite->callback = SpriteCB_UnusedDebugSprite_Step;
}

static void SpriteCB_UnusedDebugSprite_Step(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        sUnknownDebugSpriteDataBuffer = AllocZeroed(0x1000);
        ++sprite->data[0];
        sprite->data[1] = 0;
        sprite->data[2] = 0x281;
        sprite->data[3] = 0;
        sprite->data[4] = 1;

    case 1:
        if (--sprite->data[4] == 0)
        {
            s32 i, r2, r0;

            sprite->data[4] = 2;
            r2 = sprite->data[1] + sprite->data[3] * 32;
            r0 = sprite->data[2] - sprite->data[3] * 32;
            for (i = 0; i <= 29; i += 2)
            {
                *(&sUnknownDebugSpriteDataBuffer[r2] + i) = 0x3D;
                *(&sUnknownDebugSpriteDataBuffer[r0] + i) = 0x3D;
            }
            if (++sprite->data[3] == 21)
            {
                ++sprite->data[0];
                sprite->data[1] = 32;
            }
        }
        break;
    case 2:
        if (--sprite->data[1] == 20)
        {
            if (sUnknownDebugSpriteDataBuffer != ((void *)0))
            {
                memset(sUnknownDebugSpriteDataBuffer, 0, 0x1000);
                { Free(sUnknownDebugSpriteDataBuffer); sUnknownDebugSpriteDataBuffer = ((void *)0); };
            }
            SetMainCallback2(CB2_InitBattle);
        }
        break;
    }
}

static u8 CreateNPCTrainerParty(struct Pokemon *party, u16 trainerNum)
{
    u32 nameHash = 0;
    u32 personalityValue;
    u8 fixedIV;
    s32 i, j;

    if (trainerNum == 0x400)
        return 0;

    if (gBattleTypeFlags & (1 << 3)
     && !(gBattleTypeFlags & ((1 << 8) | (1 << 11) | (1 << 19))))
    {
        ZeroEnemyPartyMons();
        for (i = 0; i < gTrainers[trainerNum].partySize; i++)
        {

            if (gTrainers[trainerNum].doubleBattle == 1)
                personalityValue = 0x80;
            else if (gTrainers[trainerNum].encounterMusic_gender & (1 << 7))
                personalityValue = 0x78;
            else
                personalityValue = 0x88;

            for (j = 0; gTrainers[trainerNum].trainerName[j] != 0xFF; j++)
                nameHash += gTrainers[trainerNum].trainerName[j];

            switch (gTrainers[trainerNum].partyFlags)
            {
            case 0:
            {
                const struct TrainerMonNoItemDefaultMoves *partyData = gTrainers[trainerNum].party.NoItemDefaultMoves;

                for (j = 0; gSpeciesNames[partyData[i].species][j] != 0xFF; j++)
                    nameHash += gSpeciesNames[partyData[i].species][j];

                personalityValue += nameHash << 8;
                fixedIV = partyData[i].iv * 31 / 255;
                CreateMon(&party[i], partyData[i].species, partyData[i].lvl, fixedIV, 1, personalityValue, 2, 0);
                break;
            }
            case (1 << 0):
            {
                const struct TrainerMonNoItemCustomMoves *partyData = gTrainers[trainerNum].party.NoItemCustomMoves;

                for (j = 0; gSpeciesNames[partyData[i].species][j] != 0xFF; j++)
                    nameHash += gSpeciesNames[partyData[i].species][j];

                personalityValue += nameHash << 8;
                fixedIV = partyData[i].iv * 31 / 255;
                CreateMon(&party[i], partyData[i].species, partyData[i].lvl, fixedIV, 1, personalityValue, 2, 0);

                for (j = 0; j < 4; j++)
                {
                    SetMonData(&party[i], 13 + j, &partyData[i].moves[j]);
                    SetMonData(&party[i], 17 + j, &gBattleMoves[partyData[i].moves[j]].pp);
                }
                break;
            }
            case (1 << 1):
            {
                const struct TrainerMonItemDefaultMoves *partyData = gTrainers[trainerNum].party.ItemDefaultMoves;

                for (j = 0; gSpeciesNames[partyData[i].species][j] != 0xFF; j++)
                    nameHash += gSpeciesNames[partyData[i].species][j];

                personalityValue += nameHash << 8;
                fixedIV = partyData[i].iv * 31 / 255;
                CreateMon(&party[i], partyData[i].species, partyData[i].lvl, fixedIV, 1, personalityValue, 2, 0);

                SetMonData(&party[i], 12, &partyData[i].heldItem);
                break;
            }
            case (1 << 0) | (1 << 1):
            {
                const struct TrainerMonItemCustomMoves *partyData = gTrainers[trainerNum].party.ItemCustomMoves;

                for (j = 0; gSpeciesNames[partyData[i].species][j] != 0xFF; j++)
                    nameHash += gSpeciesNames[partyData[i].species][j];

                personalityValue += nameHash << 8;
                fixedIV = partyData[i].iv * 31 / 255;
                CreateMon(&party[i], partyData[i].species, partyData[i].lvl, fixedIV, 1, personalityValue, 2, 0);
                SetMonData(&party[i], 12, &partyData[i].heldItem);

                for (j = 0; j < 4; j++)
                {
                    SetMonData(&party[i], 13 + j, &partyData[i].moves[j]);
                    SetMonData(&party[i], 17 + j, &gBattleMoves[partyData[i].moves[j]].pp);
                }
                break;
            }
            }
        }

        gBattleTypeFlags |= gTrainers[trainerNum].doubleBattle;
    }

    return gTrainers[trainerNum].partySize;
}


static void HBlankCB_Battle(void)
{
    if ((*(vu16 *)(0x4000000 + 0x6)) < 160 && (*(vu16 *)(0x4000000 + 0x6)) >= 111)
        (*(vu16 *)(0x4000000 + 0x8)) = (0) | ((0) << 2) | ((24) << 8) | 0x0000 | 0x8000;
}

void VBlankCB_Battle(void)
{

    Random();

    SetGpuReg(0x10, gBattle_BG0_X);
    SetGpuReg(0x12, gBattle_BG0_Y);
    SetGpuReg(0x14, gBattle_BG1_X);
    SetGpuReg(0x16, gBattle_BG1_Y);
    SetGpuReg(0x18, gBattle_BG2_X);
    SetGpuReg(0x1a, gBattle_BG2_Y);
    SetGpuReg(0x1c, gBattle_BG3_X);
    SetGpuReg(0x1e, gBattle_BG3_Y);
    SetGpuReg(0x40, gBattle_WIN0H);
    SetGpuReg(0x44, gBattle_WIN0V);
    SetGpuReg(0x42, gBattle_WIN1H);
    SetGpuReg(0x46, gBattle_WIN1V);
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    ScanlineEffect_InitHBlankDmaTransfer();
}

void SpriteCB_VsLetterDummy(struct Sprite *sprite)
{

}

static void SpriteCB_VsLetter(struct Sprite *sprite)
{
    if (sprite->data[0] != 0)
        sprite->x = sprite->data[1] + ((sprite->data[2] & 0xFF00) >> 8);
    else
        sprite->x = sprite->data[1] - ((sprite->data[2] & 0xFF00) >> 8);

    sprite->data[2] += 0x180;

    if (sprite->affineAnimEnded)
    {
        FreeSpriteTilesByTag(10000);
        FreeSpritePaletteByTag(10000);
        FreeSpriteOamMatrix(sprite);
        DestroySprite(sprite);
    }
}

void SpriteCB_VsLetterInit(struct Sprite *sprite)
{
    StartSpriteAffineAnim(sprite, 1);
    sprite->callback = SpriteCB_VsLetter;
    PlaySE(97);
}

static void BufferPartyVsScreenHealth_AtEnd(u8 taskId)
{
    struct Pokemon *party1 = ((void *)0);
    struct Pokemon *party2 = ((void *)0);
    u8 multiplayerId = gBattleStruct->multiplayerId;
    u32 flags;
    s32 i;

    if (gBattleTypeFlags & (1 << 6))
    {
        switch (gLinkPlayers[multiplayerId].id)
        {
        case 0:
        case 2:
            party1 = gPlayerParty;
            party2 = gEnemyParty;
            break;
        case 1:
        case 3:
            party1 = gEnemyParty;
            party2 = gPlayerParty;
            break;
        }
    }
    else
    {
        party1 = gPlayerParty;
        party2 = gEnemyParty;
    }

    flags = 0;
    for ((i) = 0; (i) < 6; (i)++) { u16 species = GetMonData(&(party1)[(i)], 65); u16 hp = GetMonData(&(party1)[(i)], 57); u32 status = GetMonData(&(party1)[(i)], 55); if (species == 0) continue; if (species != 413 && hp != 0 && status == 0) (flags) |= 1 << (i) * 2; if (species == 0) continue; if (hp != 0 && (species == 413 || status != 0)) (flags) |= 2 << (i) * 2; if (species == 0) continue; if (species != 413 && hp == 0) (flags) |= 3 << (i) * 2; };
    gTasks[taskId].data[3] = flags;

    flags = 0;
    for ((i) = 0; (i) < 6; (i)++) { u16 species = GetMonData(&(party2)[(i)], 65); u16 hp = GetMonData(&(party2)[(i)], 57); u32 status = GetMonData(&(party2)[(i)], 55); if (species == 0) continue; if (species != 413 && hp != 0 && status == 0) (flags) |= 1 << (i) * 2; if (species == 0) continue; if (hp != 0 && (species == 413 || status != 0)) (flags) |= 2 << (i) * 2; if (species == 0) continue; if (species != 413 && hp == 0) (flags) |= 3 << (i) * 2; };
    gTasks[taskId].data[4] = flags;
}

void CB2_InitEndLinkBattle(void)
{
    s32 i;
    u8 taskId;

    SetHBlankCallback(((void *)0));
    SetVBlankCallback(((void *)0));
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, (void *)0x6000000, 0x04000000 | 0x01000000 | ((0x18000)/(32/8) & 0x1FFFFF)); };
    SetGpuReg(0x4c, 0);
    SetGpuReg(0x40, (((0) << 8) | (0xF0)));
    SetGpuReg(0x44, (((0x50) << 8) | (0x51)));
    SetGpuReg(0x48, 0);
    SetGpuReg(0x4a, 0);
    gBattle_WIN0H = (((0) << 8) | (0xF0));
    gBattle_WIN0V = (((0x50) << 8) | (0x51));
    ScanlineEffect_Clear();
    for (i = 0; i < 80; i++)
    {
        gScanlineEffectRegBuffers[0][i] = 0xF0;
        gScanlineEffectRegBuffers[1][i] = 0xF0;
    }

    for (; i < 160; i++)
    {
        gScanlineEffectRegBuffers[0][i] = 0xFF10;
        gScanlineEffectRegBuffers[1][i] = 0xFF10;
    }
    ResetPaletteFade();
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gBattle_BG1_X = 0;
    gBattle_BG1_Y = 0;
    gBattle_BG2_X = 0;
    gBattle_BG2_Y = 0;
    gBattle_BG3_X = 0;
    gBattle_BG3_Y = 0;
    InitBattleBgsVideo();
    LoadCompressedPalette(gBattleInterface_Textbox_Pal, (0x000 + ((0) * 16)), 2 * ((16) * sizeof(u16)));
    LoadBattleMenuWindowGfx();
    ResetSpriteData();
    ResetTasks();
    DrawBattleEntryBackground();
    SetGpuReg(0x4a, (1 << 0) | (1 << 1) | (1 << 2) | (1 << 4) | (1 << 5));
    FreeAllSpritePalettes();
    gReservedSpritePaletteCount = 4;
    SetVBlankCallback(VBlankCB_Battle);
    taskId = CreateTask(InitLinkBattleVsScreen, 0);
    gTasks[taskId].data[1] = 270;
    gTasks[taskId].data[2] = 90;
    gTasks[taskId].data[5] = 1;
    BufferPartyVsScreenHealth_AtEnd(taskId);
    SetMainCallback2(CB2_EndLinkBattle);
    gBattleCommunication[0] = 0;
}

static void CB2_EndLinkBattle(void)
{
    EndLinkBattleInSteps();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
    RunTasks();
}

static void EndLinkBattleInSteps(void)
{
    s32 i;

    switch (gBattleCommunication[0])
    {
    case 0:
        ShowBg(0);
        ShowBg(1);
        ShowBg(2);
        gBattleCommunication[1] = 0xFF;
        gBattleCommunication[0]++;
        break;
    case 1:
        if (--gBattleCommunication[1] == 0)
        {
            BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 0x10, ((0) | ((0) << 5) | ((0) << 10)));
            gBattleCommunication[0]++;
        }
        break;
    case 2:
        if (!gPaletteFade.active)
        {
            SetMainCallback2(gMain.savedCallback);
            TrySetQuestLogLinkBattleEvent();
            FreeMonSpritesGfx();
            FreeBattleSpritesData();
            FreeBattleResources();
        }
        break;
    }
}

u32 GetBattleBgTemplateData(u8 arrayId, u8 caseId)
{
    u32 ret = 0;

    switch (caseId)
    {
    case 0:
        ret = gBattleBgTemplates[arrayId].bg;
        break;
    case 1:
        ret = gBattleBgTemplates[arrayId].charBaseIndex;
        break;
    case 2:
        ret = gBattleBgTemplates[arrayId].mapBaseIndex;
        break;
    case 3:
        ret = gBattleBgTemplates[arrayId].screenSize;
        break;
    case 4:
        ret = gBattleBgTemplates[arrayId].paletteMode;
        break;
    case 5:
        ret = gBattleBgTemplates[arrayId].priority;
        break;
    case 6:
        ret = gBattleBgTemplates[arrayId].baseTile;
        break;
    }
    return ret;
}

static void TryCorrectShedinjaLanguage(struct Pokemon *mon)
{
    u8 nickname[10 + 1];
    u8 language = 1;

    if (GetMonData(mon, 11) == 303
     && GetMonData(mon, 3) != language)
    {
        GetMonData(mon, 2, nickname);
        if (StringCompareWithoutExtCtrlCodes(nickname, sText_ShedinjaJpnName) == 0)
            SetMonData(mon, 3, &language);
    }
}




void SpriteCB_EnemyMon(struct Sprite *sprite)
{
    sprite->callback = SpriteCB_MoveWildMonToRight;
    StartSpriteAnimIfDifferent(sprite, 0);
    BeginNormalPaletteFade(0x20000, 0, 10, 10, ((8) | ((8) << 5) | ((8) << 10)));
}

static void SpriteCB_MoveWildMonToRight(struct Sprite *sprite)
{
    if ((gIntroSlideFlags & 1) == 0)
    {
        sprite->x2 += 2;
        if (sprite->x2 == 0)
        {
            sprite->callback = SpriteCB_WildMonShowHealthbox;
            PlayCry_Normal(sprite->data[2], 25);
        }
    }
}

static void SpriteCB_WildMonShowHealthbox(struct Sprite *sprite)
{
    if (sprite->animEnded)
    {
        StartHealthboxSlideIn(sprite->data[0]);
        SetHealthboxSpriteVisible(gHealthboxSpriteIds[sprite->data[0]]);
        sprite->callback = SpriteCallbackDummy_2;
        StartSpriteAnimIfDifferent(sprite, 0);
        BeginNormalPaletteFade(0x20000, 0, 10, 0, ((8) | ((8) << 5) | ((8) << 10)));
    }
}

void SpriteCallbackDummy_2(struct Sprite *sprite)
{
}





static void SpriteCB_InitFlicker(struct Sprite *sprite)
{
    sprite->data[3] = 6;
    sprite->data[4] = 1;
    sprite->callback = SpriteCB_Flicker;
}

static void SpriteCB_Flicker(struct Sprite *sprite)
{
    sprite->data[4]--;
    if (sprite->data[4] == 0)
    {
        sprite->data[4] = 8;
        sprite->invisible ^= 1;
        sprite->data[3]--;
        if (sprite->data[3] == 0)
        {
            sprite->invisible = 0;
            sprite->callback = SpriteCallbackDummy_2;
            sFlickerArray[0] = 0;
        }
    }
}




void SpriteCB_FaintOpponentMon(struct Sprite *sprite)
{
    u8 battler = sprite->data[0];
    u16 species;
    u8 yOffset;

    if (gBattleSpritesDataPtr->battlerData[battler].transformSpecies != 0)
        species = gBattleSpritesDataPtr->battlerData[battler].transformSpecies;
    else
        species = sprite->data[2];

    GetMonData(&gEnemyParty[gBattlerPartyIndexes[battler]], 0);

    if (species == 201)
    {
        u32 personalityValue = GetMonData(&gEnemyParty[gBattlerPartyIndexes[battler]], 0);
        u16 unownForm = (( (((personalityValue) & 0x03000000) >> 18) | (((personalityValue) & 0x00030000) >> 12) | (((personalityValue) & 0x00000300) >> 6) | (((personalityValue) & 0x00000003) >> 0) ) % 28);
        u16 unownSpecies;

        if (unownForm == 0)
            unownSpecies = 201;
        else
            unownSpecies = 413 + unownForm;

        yOffset = gMonFrontPicCoords[unownSpecies].y_offset;
    }
    else if (species == 385)
    {
        yOffset = gCastformFrontSpriteCoords[gBattleMonForms[battler]].y_offset;
    }
    else if (species > 413)
    {
        yOffset = gMonFrontPicCoords[0].y_offset;
    }
    else
    {
        yOffset = gMonFrontPicCoords[species].y_offset;
    }

    sprite->data[3] = 8 - yOffset / 8;
    sprite->data[4] = 1;
    sprite->callback = SpriteCB_AnimFaintOpponent;
}

static void SpriteCB_AnimFaintOpponent(struct Sprite *sprite)
{
    s32 i;

    if (--sprite->data[4] == 0)
    {
        sprite->data[4] = 2;
        sprite->y2 += 8;
        if (--sprite->data[3] < 0)
        {
            FreeSpriteOamMatrix(sprite);
            DestroySprite(sprite);
        }
        else
        {
            u8 *dst = (u8 *)gMonSpritesGfxPtr->sprites[GetBattlerPosition(sprite->data[0])] + (gBattleMonForms[sprite->data[0]] << 11) + (sprite->data[3] << 8);

            for (i = 0; i < 0x100; i++)
                *(dst++) = 0;
            StartSpriteAnim(sprite, gBattleMonForms[sprite->data[0]]);
        }
    }
}


void SpriteCB_ShowAsMoveTarget(struct Sprite *sprite)
{
    sprite->data[3] = 8;
    sprite->data[4] = sprite->invisible;
    sprite->callback = SpriteCB_BlinkVisible;
}

static void SpriteCB_BlinkVisible(struct Sprite *sprite)
{
    if (--sprite->data[3] == 0)
    {
        sprite->invisible ^= 1;
        sprite->data[3] = 8;
    }
}

void SpriteCB_HideAsMoveTarget(struct Sprite *sprite)
{
    sprite->invisible = sprite->data[4];
    sprite->data[4] = 0;
    sprite->callback = SpriteCallbackDummy_2;
}

void SpriteCB_AllyMon(struct Sprite *sprite)
{
    sprite->callback = oac_poke_ally_;
}

static void oac_poke_ally_(struct Sprite *sprite)
{
    if (!(gIntroSlideFlags & 1))
    {
        sprite->x2 -= 2;
        if (sprite->x2 == 0)
        {
            sprite->callback = SpriteCB_Idle;
            sprite->data[1] = 0;
        }
    }
}

void SetIdleSpriteCallback(struct Sprite *sprite)
{
    sprite->callback = SpriteCB_Idle;
}

static void SpriteCB_Idle(struct Sprite *sprite)
{
}




void SpriteCB_FaintSlideAnim(struct Sprite *sprite)
{
    if (!(gIntroSlideFlags & 1))
    {
        sprite->x2 += sprite->data[1];
        sprite->y2 += sprite->data[2];
    }
}
# 2087 "src/battle_main.c"
void DoBounceEffect(u8 battler, u8 which, s8 delta, s8 amplitude)
{
    u8 invisibleSpriteId;
    u8 bouncerSpriteId;

    switch (which)
    {
    case 0x1:
    default:
        if (gBattleSpritesDataPtr->healthBoxesData[battler].healthboxIsBouncing)
            return;
        break;
    case 0x0:
        if (gBattleSpritesDataPtr->healthBoxesData[battler].battlerIsBouncing)
            return;
        break;
    }

    invisibleSpriteId = CreateInvisibleSpriteWithCallback(SpriteCB_BounceEffect);
    if (which == 0x1)
    {
        bouncerSpriteId = gHealthboxSpriteIds[battler];
        gBattleSpritesDataPtr->healthBoxesData[battler].healthboxBounceSpriteId = invisibleSpriteId;
        gBattleSpritesDataPtr->healthBoxesData[battler].healthboxIsBouncing = 1;
        gSprites[invisibleSpriteId].data[0] = 128;
    }
    else
    {
        bouncerSpriteId = gBattlerSpriteIds[battler];
        gBattleSpritesDataPtr->healthBoxesData[battler].battlerBounceSpriteId = invisibleSpriteId;
        gBattleSpritesDataPtr->healthBoxesData[battler].battlerIsBouncing = 1;
        gSprites[invisibleSpriteId].data[0] = 192;
    }
    gSprites[invisibleSpriteId].data[1] = delta;
    gSprites[invisibleSpriteId].data[2] = amplitude;
    gSprites[invisibleSpriteId].data[3] = bouncerSpriteId;
    gSprites[invisibleSpriteId].data[4] = which;
    gSprites[bouncerSpriteId].x2 = 0;
    gSprites[bouncerSpriteId].y2 = 0;
}

void EndBounceEffect(u8 battler, u8 which)
{
    u8 bouncerSpriteId;

    if (which == 0x1)
    {
        if (!gBattleSpritesDataPtr->healthBoxesData[battler].healthboxIsBouncing)
            return;

        bouncerSpriteId = gSprites[gBattleSpritesDataPtr->healthBoxesData[battler].healthboxBounceSpriteId].data[3];
        DestroySprite(&gSprites[gBattleSpritesDataPtr->healthBoxesData[battler].healthboxBounceSpriteId]);
        gBattleSpritesDataPtr->healthBoxesData[battler].healthboxIsBouncing = 0;
    }
    else
    {
        if (!gBattleSpritesDataPtr->healthBoxesData[battler].battlerIsBouncing)
            return;

        bouncerSpriteId = gSprites[gBattleSpritesDataPtr->healthBoxesData[battler].battlerBounceSpriteId].data[3];
        DestroySprite(&gSprites[gBattleSpritesDataPtr->healthBoxesData[battler].battlerBounceSpriteId]);
        gBattleSpritesDataPtr->healthBoxesData[battler].battlerIsBouncing = 0;
    }

    gSprites[bouncerSpriteId].x2 = 0;
    gSprites[bouncerSpriteId].y2 = 0;
}

static void SpriteCB_BounceEffect(struct Sprite *sprite)
{
    u8 bouncerSpriteId = sprite->data[3];
    s32 index;

    if (sprite->data[4] == 0x1)
        index = sprite->data[0];
    else
        index = sprite->data[0];
    gSprites[bouncerSpriteId].y2 = Sin(index, sprite->data[2]) + sprite->data[2];
    sprite->data[0] = (sprite->data[0] + sprite->data[1]) & 0xFF;
}

void SpriteCB_PlayerThrowInit(struct Sprite *sprite)
{
    StartSpriteAnim(sprite, 1);
    sprite->callback = SpriteCB_PlayerThrowUpdate;
}

void UpdatePlayerPosInThrowAnim(struct Sprite *sprite)
{
    if (sprite->animDelayCounter == 0)
        sprite->centerToCornerVecX = sPlayerThrowXTranslation[sprite->animCmdIndex];
}

static void SpriteCB_PlayerThrowUpdate(struct Sprite *sprite)
{
    UpdatePlayerPosInThrowAnim(sprite);
    if (sprite->animEnded)
        sprite->callback = SpriteCB_Idle;
}

void BeginBattleIntroDummy(void)
{

}

void BeginBattleIntro(void)
{
    BattleStartClearSetData();
    gBattleCommunication[1] = 0;
    gBattleMainFunc = BattleIntroGetMonsData;
}

static void BattleMainCB1(void)
{
    gBattleMainFunc();

    for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
        gBattlerControllerFuncs[gActiveBattler]();
}

static void BattleStartClearSetData(void)
{
    s32 i;
    u32 j;
    u8 *dataPtr;

    TurnValuesCleanUp(0);
    SpecialStatusesClear();

    for (i = 0; i < 4; i++)
    {
        gStatuses3[i] = 0;

        dataPtr = (u8 *)&gDisableStructs[i];
        for (j = 0; j < sizeof(struct DisableStruct); j++)
            dataPtr[j] = 0;

        gDisableStructs[i].isFirstTurn = 2;
        sUnusedBattlersArray[i] = 0;
        gLastMoves[i] = 0;
        gLastLandedMoves[i] = 0;
        gLastHitByType[i] = 0;
        gLastResultingMoves[i] = 0;
        gLastHitBy[i] = 0xFF;
        gLockedMoves[i] = 0;
        gLastPrintedMoves[i] = 0;
        gBattleResources->flags->flags[i] = 0;
    }

    for (i = 0; i < 2; i++)
    {
        gSideStatuses[i] = 0;

        dataPtr = (u8 *)&gSideTimers[i];
        for (j = 0; j < sizeof(struct SideTimer); j++)
            dataPtr[j] = 0;
    }

    gBattlerAttacker = 0;
    gBattlerTarget = 0;
    gBattleWeather = 0;

    dataPtr = (u8 *)&gWishFutureKnock;
    for (i = 0; i < sizeof(struct WishFutureKnock); i++)
        dataPtr[i] = 0;

    gHitMarker = 0;

    if (!(gBattleTypeFlags & ((1 << 1) | (1 << 16))) && gSaveBlock2Ptr->optionsBattleSceneOff)
        gHitMarker |= (1 << 7);

    gBattleScripting.battleStyle = gSaveBlock2Ptr->optionsBattleStyle;

    gMultiHitCounter = 0;
    gBattleOutcome = 0;
    gBattleControllerExecFlags = 0;
    gPaydayMoney = 0;
    gBattleResources->battleScriptsStack->size = 0;
    gBattleResources->battleCallbackStack->size = 0;

    for (i = 0; i < 8; i++)
        gBattleCommunication[i] = 0;

    gPauseCounterBattle = 0;
    gBattleMoveDamage = 0;
    gIntroSlideFlags = 0;
    gBattleScripting.animTurn = 0;
    gBattleScripting.animTargetsHit = 0;
    gLeveledUpInBattle = 0;
    gAbsentBattlerFlags = 0;
    gBattleStruct->runTries = 0;
    gBattleStruct->safariRockThrowCounter = 0;
    gBattleStruct->safariBaitThrowCounter = 0;
    *(&gBattleStruct->safariCatchFactor) = gSpeciesInfo[GetMonData(&gEnemyParty[0], 11)].catchRate * 100 / 1275;
    *(&gBattleStruct->safariEscapeFactor) = gSpeciesInfo[GetMonData(&gEnemyParty[0], 11)].safariZoneFleeRate * 100 / 1275;
    if (gBattleStruct->safariEscapeFactor <= 1)
        gBattleStruct->safariEscapeFactor = 2;
    gBattleStruct->wildVictorySong = 0;
    gBattleStruct->moneyMultiplier = 1;

    for (i = 0; i < 8; i++)
    {
        *((u8 *)gBattleStruct->lastTakenMove + i) = 0;
        *((u8 *)gBattleStruct->usedHeldItems + i) = 0;
        *((u8 *)gBattleStruct->choicedMove + i) = 0;
        *((u8 *)gBattleStruct->changedItems + i) = 0;
        *(i + 0 * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
        *(i + 1 * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
        *(i + 2 * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
        *(i + 3 * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    }
    *(gBattleStruct->AI_monToSwitchIntoId + 0) = 6;
    *(gBattleStruct->AI_monToSwitchIntoId + 1) = 6;
    *(&gBattleStruct->givenExpMons) = 0;
    for (i = 0; i < 11; i++)
        gBattleResults.catchAttempts[i] = 0;
    gBattleResults.battleTurnCounter = 0;
    gBattleResults.playerFaintCounter = 0;
    gBattleResults.opponentFaintCounter = 0;
    gBattleResults.playerSwitchesCounter = 0;
    gBattleResults.numHealingItemsUsed = 0;
    gBattleResults.numRevivesUsed = 0;
    gBattleResults.playerMonWasDamaged = 0;
    gBattleResults.usedMasterBall = 0;
    gBattleResults.lastOpponentSpecies = 0;
    gBattleResults.lastUsedMovePlayer = 0;
    gBattleResults.lastUsedMoveOpponent = 0;
    gBattleResults.playerMon1Species = 0;
    gBattleResults.playerMon2Species = 0;
    gBattleResults.caughtMonSpecies = 0;
    for (i = 0; i < 10; ++i)
    {
        gBattleResults.playerMon1Name[i] = 0;
        gBattleResults.playerMon2Name[i] = 0;
        gBattleResults.caughtMonNick[i] = 0;
    }
}

void SwitchInClearSetData(void)
{
    struct DisableStruct disableStructCopy = gDisableStructs[gActiveBattler];
    s32 i;
    u8 *ptr;

    if (gBattleMoves[gCurrentMove].effect != 127)
    {
        for (i = 0; i < (6 + 2); i++)
            gBattleMons[gActiveBattler].statStages[i] = 6;
        for (i = 0; i < gBattlersCount; i++)
        {
            if ((gBattleMons[i].status2 & (1 << 26)) && gDisableStructs[i].battlerPreventingEscape == gActiveBattler)
                gBattleMons[i].status2 &= ~(1 << 26);
            if ((gStatuses3[i] & (1 << 3 | 1 << 4)) && gDisableStructs[i].battlerWithSureHit == gActiveBattler)
            {
                gStatuses3[i] &= ~(1 << 3 | 1 << 4);
                gDisableStructs[i].battlerWithSureHit = 0;
            }
        }
    }
    if (gBattleMoves[gCurrentMove].effect == 127)
    {
        gBattleMons[gActiveBattler].status2 &= ((1 << 0 | 1 << 1 | 1 << 2) | (1 << 20) | (1 << 24) | (1 << 26) | (1 << 28));
        gStatuses3[gActiveBattler] &= ((1 << 0 | 1 << 1) | (1 << 2) | (1 << 3 | 1 << 4) | (1 << 5) | (1 << 10) | (1 << 16) | (1 << 17));
        for (i = 0; i < gBattlersCount; i++)
        {
            if (GetBattlerSide(gActiveBattler) != GetBattlerSide(i)
             && (gStatuses3[i] & (1 << 3 | 1 << 4)) != 0
             && (gDisableStructs[i].battlerWithSureHit == gActiveBattler))
            {
                gStatuses3[i] &= ~(1 << 3 | 1 << 4);
                gStatuses3[i] |= (((2) << 3) & (1 << 3 | 1 << 4));
            }
        }
    }
    else
    {
        gBattleMons[gActiveBattler].status2 = 0;
        gStatuses3[gActiveBattler] = 0;
    }

    for (i = 0; i < gBattlersCount; i++)
    {
        if (gBattleMons[i].status2 & (gBitTable[gActiveBattler] << 16))
            gBattleMons[i].status2 &= ~(gBitTable[gActiveBattler] << 16);
        if ((gBattleMons[i].status2 & (1 << 13 | 1 << 14 | 1 << 15)) && *(gBattleStruct->wrappedBy + i) == gActiveBattler)
            gBattleMons[i].status2 &= ~(1 << 13 | 1 << 14 | 1 << 15);
    }

    gActionSelectionCursor[gActiveBattler] = 0;
    gMoveSelectionCursor[gActiveBattler] = 0;

    ptr = (u8 *)&gDisableStructs[gActiveBattler];
    for (i = 0; i < sizeof(struct DisableStruct); i++)
        ptr[i] = 0;

    if (gBattleMoves[gCurrentMove].effect == 127)
    {
        gDisableStructs[gActiveBattler].substituteHP = disableStructCopy.substituteHP;
        gDisableStructs[gActiveBattler].battlerWithSureHit = disableStructCopy.battlerWithSureHit;
        gDisableStructs[gActiveBattler].perishSongTimer = disableStructCopy.perishSongTimer;
        gDisableStructs[gActiveBattler].perishSongTimerStartValue = disableStructCopy.perishSongTimerStartValue;
        gDisableStructs[gActiveBattler].battlerPreventingEscape = disableStructCopy.battlerPreventingEscape;
    }

    gMoveResultFlags = 0;
    gDisableStructs[gActiveBattler].isFirstTurn = 2;
    gLastMoves[gActiveBattler] = 0;
    gLastLandedMoves[gActiveBattler] = 0;
    gLastHitByType[gActiveBattler] = 0;
    gLastResultingMoves[gActiveBattler] = 0;
    gLastPrintedMoves[gActiveBattler] = 0;
    gLastHitBy[gActiveBattler] = 0xFF;

    *(gBattleStruct->lastTakenMove + gActiveBattler * 2 + 0) = 0;
    *(gBattleStruct->lastTakenMove + gActiveBattler * 2 + 1) = 0;
    *(0 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(0 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    *(1 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(1 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    *(2 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(2 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    *(3 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(3 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;

    for (i = 0; i < gBattlersCount; i++)
    {
        if (i != gActiveBattler)
        {
            *(gBattleStruct->lastTakenMove + i * 2 + 0) = 0;
            *(gBattleStruct->lastTakenMove + i * 2 + 1) = 0;
        }
        *(i * 8 + gActiveBattler * 2 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
        *(i * 8 + gActiveBattler * 2 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    }

    *((u8 *)(&gBattleStruct->choicedMove[gActiveBattler]) + 0) = 0;
    *((u8 *)(&gBattleStruct->choicedMove[gActiveBattler]) + 1) = 0;

    gBattleResources->flags->flags[gActiveBattler] = 0;
    gCurrentMove = 0;
}

void FaintClearSetData(void)
{
    s32 i;
    u8 *ptr;

    for (i = 0; i < (6 + 2); i++)
        gBattleMons[gActiveBattler].statStages[i] = 6;

    gBattleMons[gActiveBattler].status2 = 0;
    gStatuses3[gActiveBattler] = 0;

    for (i = 0; i < gBattlersCount; i++)
    {
        if ((gBattleMons[i].status2 & (1 << 26)) && gDisableStructs[i].battlerPreventingEscape == gActiveBattler)
            gBattleMons[i].status2 &= ~(1 << 26);
        if (gBattleMons[i].status2 & (gBitTable[gActiveBattler] << 16))
            gBattleMons[i].status2 &= ~(gBitTable[gActiveBattler] << 16);
        if ((gBattleMons[i].status2 & (1 << 13 | 1 << 14 | 1 << 15)) && *(gBattleStruct->wrappedBy + i) == gActiveBattler)
            gBattleMons[i].status2 &= ~(1 << 13 | 1 << 14 | 1 << 15);
    }

    gActionSelectionCursor[gActiveBattler] = 0;
    gMoveSelectionCursor[gActiveBattler] = 0;

    ptr = (u8 *)&gDisableStructs[gActiveBattler];
    for (i = 0; i < sizeof(struct DisableStruct); i++)
        ptr[i] = 0;

    gProtectStructs[gActiveBattler].protected = 0;
    gProtectStructs[gActiveBattler].endured = 0;
    gProtectStructs[gActiveBattler].noValidMoves = 0;
    gProtectStructs[gActiveBattler].helpingHand = 0;
    gProtectStructs[gActiveBattler].bounceMove = 0;
    gProtectStructs[gActiveBattler].stealMove = 0;
    gProtectStructs[gActiveBattler].flag0Unknown = 0;
    gProtectStructs[gActiveBattler].prlzImmobility = 0;
    gProtectStructs[gActiveBattler].confusionSelfDmg = 0;
    gProtectStructs[gActiveBattler].targetNotAffected = 0;
    gProtectStructs[gActiveBattler].chargingTurn = 0;
    gProtectStructs[gActiveBattler].fleeType = 0;
    gProtectStructs[gActiveBattler].usedImprisonedMove = 0;
    gProtectStructs[gActiveBattler].loveImmobility = 0;
    gProtectStructs[gActiveBattler].usedDisabledMove = 0;
    gProtectStructs[gActiveBattler].usedTauntedMove = 0;
    gProtectStructs[gActiveBattler].flag2Unknown = 0;
    gProtectStructs[gActiveBattler].flinchImmobility = 0;
    gProtectStructs[gActiveBattler].notFirstStrike = 0;

    gDisableStructs[gActiveBattler].isFirstTurn = 2;

    gLastMoves[gActiveBattler] = 0;
    gLastLandedMoves[gActiveBattler] = 0;
    gLastHitByType[gActiveBattler] = 0;
    gLastResultingMoves[gActiveBattler] = 0;
    gLastPrintedMoves[gActiveBattler] = 0;
    gLastHitBy[gActiveBattler] = 0xFF;

    *((u8 *)(&gBattleStruct->choicedMove[gActiveBattler]) + 0) = 0;
    *((u8 *)(&gBattleStruct->choicedMove[gActiveBattler]) + 1) = 0;

    *(gBattleStruct->lastTakenMove + gActiveBattler * 2 + 0) = 0;
    *(gBattleStruct->lastTakenMove + gActiveBattler * 2 + 1) = 0;
    *(0 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(0 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    *(1 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(1 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    *(2 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(2 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    *(3 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
    *(3 * 2 + gActiveBattler * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;

    for (i = 0; i < gBattlersCount; i++)
    {
        if (i != gActiveBattler)
        {
            *(gBattleStruct->lastTakenMove + i * 2 + 0) = 0;
            *(gBattleStruct->lastTakenMove + i * 2 + 1) = 0;
        }
        *(i * 8 + gActiveBattler * 2 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = 0;
        *(i * 8 + gActiveBattler * 2 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = 0;
    }
    gBattleResources->flags->flags[gActiveBattler] = 0;
    gBattleMons[gActiveBattler].type1 = gSpeciesInfo[gBattleMons[gActiveBattler].species].types[0];
    gBattleMons[gActiveBattler].type2 = gSpeciesInfo[gBattleMons[gActiveBattler].species].types[1];
}

static void BattleIntroGetMonsData(void)
{
    switch (gBattleCommunication[0])
    {
    case 0:
        gActiveBattler = gBattleCommunication[1];
        BtlController_EmitGetMonData(BUFFER_A, REQUEST_ALL_BATTLE, 0);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattleCommunication[0]++;
        break;
    case 1:
        if (gBattleControllerExecFlags == 0)
        {
            gBattleCommunication[1]++;
            if (gBattleCommunication[1] == gBattlersCount)
                gBattleMainFunc = BattleIntroPrepareBackgroundSlide;
            else
                gBattleCommunication[0] = 0;
        }
        break;
    }
}

static void BattleIntroPrepareBackgroundSlide(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerAtPosition(0);
        BtlController_EmitIntroSlide(BUFFER_A, gBattleTerrain);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattleMainFunc = BattleIntroDrawTrainersOrMonsSprites;
        gBattleCommunication[0] = 0;
        gBattleCommunication[1] = 0;
    }
}

static void BattleIntroDrawTrainersOrMonsSprites(void)
{
    u8 *ptr;
    s32 i;

    if (gBattleControllerExecFlags)
        return;

    for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
    {
        if ((gBattleTypeFlags & (1 << 7))
            && GetBattlerSide(gActiveBattler) == 0)
        {
            ptr = (u8 *)&gBattleMons[gActiveBattler];
            for (i = 0; i < sizeof(struct BattlePokemon); i++)
                ptr[i] = 0;
        }
        else
        {
            u16 *hpOnSwitchout;

            ptr = (u8 *)&gBattleMons[gActiveBattler];
            for (i = 0; i < sizeof(struct BattlePokemon); i++)
                ptr[i] = gBattleBufferB[gActiveBattler][4 + i];

            gBattleMons[gActiveBattler].type1 = gSpeciesInfo[gBattleMons[gActiveBattler].species].types[0];
            gBattleMons[gActiveBattler].type2 = gSpeciesInfo[gBattleMons[gActiveBattler].species].types[1];
            gBattleMons[gActiveBattler].ability = GetAbilityBySpecies(gBattleMons[gActiveBattler].species, gBattleMons[gActiveBattler].abilityNum);
            hpOnSwitchout = &gBattleStruct->hpOnSwitchout[GetBattlerSide(gActiveBattler)];
            *hpOnSwitchout = gBattleMons[gActiveBattler].hp;
            for (i = 0; i < (6 + 2); i++)
                gBattleMons[gActiveBattler].statStages[i] = 6;
            gBattleMons[gActiveBattler].status2 = 0;
        }

        if (GetBattlerPosition(gActiveBattler) == 0)
        {
            BtlController_EmitDrawTrainerPic(BUFFER_A);
            MarkBattlerForControllerExec(gActiveBattler);
        }

        if (gBattleTypeFlags & (1 << 3))
        {
            if (GetBattlerPosition(gActiveBattler) == 1)
            {
                BtlController_EmitDrawTrainerPic(BUFFER_A);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            if (GetBattlerSide(gActiveBattler) == 1
                && !(gBattleTypeFlags & ((1 << 11)
                                    | (1 << 16)
                                    | (1 << 1)
                                    | (1 << 15)
                                    | (1 << 9)
                                    | (1 << 13))))
            {
                HandleSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gActiveBattler].species), FLAG_SET_SEEN, gBattleMons[gActiveBattler].personality);
            }
        }
        else
        {
            if (GetBattlerSide(gActiveBattler) == 1)
            {
                if (gBattleTypeFlags & ((1 << 15) | (1 << 13)))
                {
                    if (!((gBattleTypeFlags) & (1 << 15) && !((gBattleTypeFlags) & (1 << 13))))
                        HandleSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gActiveBattler].species), FLAG_SET_SEEN, gBattleMons[gActiveBattler].personality);
                }
                else if (!(gBattleTypeFlags & ((1 << 11)
                                            | (1 << 16)
                                            | (1 << 1)
                                            | (1 << 15)
                                            | (1 << 9)
                                            | (1 << 13))))
                {
                    HandleSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gActiveBattler].species), FLAG_SET_SEEN, gBattleMons[gActiveBattler].personality);
                }
                BtlController_EmitLoadMonSprite(0);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
        if (gBattleTypeFlags & (1 << 6)
            && (GetBattlerPosition(gActiveBattler) == 2 || GetBattlerPosition(gActiveBattler) == 3))
        {
            BtlController_EmitDrawTrainerPic(BUFFER_A);
            MarkBattlerForControllerExec(gActiveBattler);
        }
    }
    gBattleMainFunc = BattleIntroDrawPartySummaryScreens;
}

static void BattleIntroDrawPartySummaryScreens(void)
{
    s32 i;
    struct HpAndStatus hpStatus[6];

    if (gBattleControllerExecFlags)
        return;

    if (gBattleTypeFlags & (1 << 3))
    {
        for (i = 0; i < 6; i++)
        {
            if (GetMonData(&gEnemyParty[i], 65) == 0
             || GetMonData(&gEnemyParty[i], 65) == 413)
            {
                hpStatus[i].hp = 0xFFFF;
                hpStatus[i].status = 0;
            }
            else
            {
                hpStatus[i].hp = GetMonData(&gEnemyParty[i], 57);
                hpStatus[i].status = GetMonData(&gEnemyParty[i], 55);
            }
        }
        gActiveBattler = GetBattlerAtPosition(1);
        BtlController_EmitDrawPartyStatusSummary(BUFFER_A, hpStatus, (1 << 7));
        MarkBattlerForControllerExec(gActiveBattler);

        for (i = 0; i < 6; i++)
        {
            if (GetMonData(&gPlayerParty[i], 65) == 0
             || GetMonData(&gPlayerParty[i], 65) == 413)
            {
                hpStatus[i].hp = 0xFFFF;
                hpStatus[i].status = 0;
            }
            else
            {
                hpStatus[i].hp = GetMonData(&gPlayerParty[i], 57);
                hpStatus[i].status = GetMonData(&gPlayerParty[i], 55);
            }
        }
        gActiveBattler = GetBattlerAtPosition(0);
        BtlController_EmitDrawPartyStatusSummary(BUFFER_A, hpStatus, (1 << 7));
        MarkBattlerForControllerExec(gActiveBattler);

        gBattleMainFunc = BattleIntroPrintTrainerWantsToBattle;
    }
    else
    {




        for (i = 0; i < 6; i++)
        {
            if (GetMonData(&gPlayerParty[i], 65) == 0
             || GetMonData(&gPlayerParty[i], 65) == 413)
            {
                hpStatus[i].hp = 0xFFFF;
                hpStatus[i].status = 0;
            }
            else
            {
                hpStatus[i].hp = GetMonData(&gPlayerParty[i], 57);
                hpStatus[i].status = GetMonData(&gPlayerParty[i], 55);
            }
        }

        gBattleMainFunc = BattleIntroPrintWildMonAttacked;
    }
}

static void BattleIntroPrintTrainerWantsToBattle(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerAtPosition(1);
        PrepareStringBattle(0, gActiveBattler);
        gBattleMainFunc = BattleIntroPrintOpponentSendsOut;
    }
}

static void BattleIntroPrintWildMonAttacked(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gBattleMainFunc = BattleIntroPrintPlayerSendsOut;
        PrepareStringBattle(0, 0);
        if (((gBattleTypeFlags) & (1 << 15) && (gBattleTypeFlags) & (1 << 13)))
        {
            gBattleScripting.battler = GetBattlerAtPosition(1);
            BattleScriptExecute(BattleScript_SilphScopeUnveiled);
        }
    }
}

static void BattleIntroPrintOpponentSendsOut(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        PrepareStringBattle(1, GetBattlerAtPosition(1));
        gBattleMainFunc = BattleIntroOpponentSendsOutMonAnimation;
    }
}

static void BattleIntroOpponentSendsOutMonAnimation(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
        {
            if (GetBattlerPosition(gActiveBattler) == 1)
            {
                BtlController_EmitIntroTrainerBallThrow(0);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            if (gBattleTypeFlags & (1 << 6) && GetBattlerPosition(gActiveBattler) == 3)
            {
                BtlController_EmitIntroTrainerBallThrow(0);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
        gBattleMainFunc = BattleIntroRecordMonsToDex;
    }
}

static void BattleIntroRecordMonsToDex(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            if (GetBattlerSide(gActiveBattler) == 1
             && !(gBattleTypeFlags & ((1 << 11)
                                   | (1 << 16)
                                   | (1 << 1)
                                   | (1 << 15)
                                   | (1 << 9)
                                   | (1 << 13))))
                HandleSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gActiveBattler].species), FLAG_SET_SEEN, gBattleMons[gActiveBattler].personality);
        gBattleMainFunc = BattleIntroPrintPlayerSendsOut;
    }
}


static void Unused_AutoProgressToIntro(void)
{
    if (gBattleControllerExecFlags == 0)
        gBattleMainFunc = BattleIntroPrintPlayerSendsOut;
}

static void BattleIntroPrintPlayerSendsOut(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        if (!(gBattleTypeFlags & (1 << 7)))
            PrepareStringBattle(1, GetBattlerAtPosition(0));
        gBattleMainFunc = BattleIntroPlayerSendsOutMonAnimation;
    }
}

static void BattleIntroPlayerSendsOutMonAnimation(void)
{
    u32 position;

    if (gBattleControllerExecFlags)
        return;

    for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
    {
        if (GetBattlerPosition(gActiveBattler) == 0)
        {
            BtlController_EmitIntroTrainerBallThrow(0);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        if (gBattleTypeFlags & (1 << 6) && GetBattlerPosition(gActiveBattler) == 2)
        {
            BtlController_EmitIntroTrainerBallThrow(0);
            MarkBattlerForControllerExec(gActiveBattler);
        }
    }
    gBattleStruct->switchInAbilitiesCounter = 0;
    gBattleStruct->switchInItemsCounter = 0;
    gBattleStruct->overworldWeatherDone = 0;

    gBattleMainFunc = TryDoEventsBeforeFirstTurn;
}


static void BattleIntroSwitchInPlayerMons(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
        {
            if (GetBattlerSide(gActiveBattler) == 0)
            {
                BtlController_EmitSwitchInAnim(BUFFER_A, gBattlerPartyIndexes[gActiveBattler], 0);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }

        gBattleStruct->switchInAbilitiesCounter = 0;
        gBattleStruct->switchInItemsCounter = 0;
        gBattleStruct->overworldWeatherDone = 0;

        gBattleMainFunc = TryDoEventsBeforeFirstTurn;
    }
}

static void TryDoEventsBeforeFirstTurn(void)
{
    s32 i, j;
    u8 effect = 0;

    if (gBattleControllerExecFlags)
        return;

    if (gBattleStruct->switchInAbilitiesCounter == 0)
    {
        for (i = 0; i < gBattlersCount; i++)
            gBattlerByTurnOrder[i] = i;
        for (i = 0; i < gBattlersCount - 1; i++)
            for (j = i + 1; j < gBattlersCount; j++)
                if (GetWhoStrikesFirst(gBattlerByTurnOrder[i], gBattlerByTurnOrder[j], 1) != 0)
                    SwapTurnOrder(i, j);
    }
    if (!gBattleStruct->overworldWeatherDone
        && AbilityBattleEffects(0, 0, 0, 255, 0) != 0)
    {
        gBattleStruct->overworldWeatherDone = 1;
        return;
    }

    while (gBattleStruct->switchInAbilitiesCounter < gBattlersCount)
    {
        if (AbilityBattleEffects(0, gBattlerByTurnOrder[gBattleStruct->switchInAbilitiesCounter], 0, 0, 0) != 0)
            effect++;
        ++gBattleStruct->switchInAbilitiesCounter;
        if (effect != 0)
            return;
    }
    if (AbilityBattleEffects(9, 0, 0, 0, 0) != 0)
        return;
    if (AbilityBattleEffects(11, 0, 0, 0, 0) != 0)
        return;

    while (gBattleStruct->switchInItemsCounter < gBattlersCount)
    {
        if (ItemBattleEffects(0, gBattlerByTurnOrder[gBattleStruct->switchInItemsCounter], 0))
            effect++;
        ++gBattleStruct->switchInItemsCounter;
        if (effect != 0)
            return;
    }
    for (i = 0; i < gBattlersCount; i++)
        ;
    for (i = 0; i < 4; i++)
    {
        *(gBattleStruct->monToSwitchIntoId + i) = 6;
        gChosenActionByBattler[i] = 0xFF;
        gChosenMoveByBattler[i] = 0;
    }
    TurnValuesCleanUp(0);
    SpecialStatusesClear();
    *(&gBattleStruct->absentBattlerFlags) = gAbsentBattlerFlags;
    gBattleMainFunc = HandleTurnActionSelectionState;
    ResetSentPokesToOpponentValue();
    for (i = 0; i < 8; i++)
        gBattleCommunication[i] = 0;
    for (i = 0; i < gBattlersCount; i++)
        gBattleMons[i].status2 &= ~((1 << 3));
    *(&gBattleStruct->turnEffectsTracker) = 0;
    *(&gBattleStruct->turnEffectsBattlerId) = 0;
    *(&gBattleStruct->wishPerishSongState) = 0;
    *(&gBattleStruct->wishPerishSongBattlerId) = 0;
    gBattleScripting.moveendState = 0;
    gBattleStruct->faintedActionsState = 0;
    gBattleStruct->turnCountersTracker = 0;
    gMoveResultFlags = 0;
    gRandomTurnNumber = Random();
}

static void HandleEndTurn_ContinueBattle(void)
{
    s32 i;

    if (gBattleControllerExecFlags == 0)
    {
        gBattleMainFunc = BattleTurnPassed;
        for (i = 0; i < 8; i++)
            gBattleCommunication[i] = 0;
        for (i = 0; i < gBattlersCount; i++)
        {
            gBattleMons[i].status2 &= ~((1 << 3));
            if ((gBattleMons[i].status1 & (1 << 0 | 1 << 1 | 1 << 2)) && (gBattleMons[i].status2 & (1 << 12)))
                CancelMultiTurnMoves(i);
        }
        gBattleStruct->turnEffectsTracker = 0;
        gBattleStruct->turnEffectsBattlerId = 0;
        gBattleStruct->wishPerishSongState = 0;
        gBattleStruct->wishPerishSongBattlerId = 0;
        gBattleStruct->turnCountersTracker = 0;
        gMoveResultFlags = 0;
    }
}

void BattleTurnPassed(void)
{
    s32 i;

    TurnValuesCleanUp(1);
    if (gBattleOutcome == 0)
    {
        if (DoFieldEndTurnEffects())
            return;
        if (DoBattlerEndTurnEffects())
            return;
    }
    if (HandleFaintedMonActions())
        return;
    gBattleStruct->faintedActionsState = 0;
    if (HandleWishPerishSongOnTurnEnd())
        return;
    TurnValuesCleanUp(0);
    gHitMarker &= ~((1 << 9));
    gHitMarker &= ~((1 << 19));
    gHitMarker &= ~((1 << 22));
    gHitMarker &= ~((1 << 20));
    gBattleScripting.animTurn = 0;
    gBattleScripting.animTargetsHit = 0;
    gBattleScripting.moveendState = 0;
    gBattleMoveDamage = 0;
    gMoveResultFlags = 0;
    for (i = 0; i < 5; i++)
        gBattleCommunication[i] = 0;
    if (gBattleOutcome != 0)
    {
        gCurrentActionFuncId = 12;
        gBattleMainFunc = RunTurnActionsFunctions;
        return;
    }
    if (gBattleResults.battleTurnCounter < 0xFF)
        ++gBattleResults.battleTurnCounter;
    for (i = 0; i < gBattlersCount; i++)
    {
        gChosenActionByBattler[i] = 0xFF;
        gChosenMoveByBattler[i] = 0;
    }
    for (i = 0; i < 4; i++)
        *(gBattleStruct->monToSwitchIntoId + i) = 6;
    *(&gBattleStruct->absentBattlerFlags) = gAbsentBattlerFlags;
    gBattleMainFunc = HandleTurnActionSelectionState;
    gRandomTurnNumber = Random();
}

u8 IsRunningFromBattleImpossible(void)
{
    u8 holdEffect;
    u8 side;
    s32 i;

    if (gBattleMons[gActiveBattler].item == 175)
        holdEffect = gEnigmaBerries[gActiveBattler].holdEffect;
    else
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gActiveBattler].item);
    gPotentialItemEffectBattler = gActiveBattler;
    if (holdEffect == 37
     || (gBattleTypeFlags & (1 << 1))
     || gBattleMons[gActiveBattler].ability == 50)
        return 0;
    side = GetBattlerSide(gActiveBattler);
    for (i = 0; i < gBattlersCount; i++)
    {
        if (side != GetBattlerSide(i)
         && gBattleMons[i].ability == 23)
        {
            gBattleScripting.battler = i;
            gLastUsedAbility = gBattleMons[i].ability;
            gBattleCommunication[5] = 2;
            return 2;
        }
        if (side != GetBattlerSide(i)
         && gBattleMons[gActiveBattler].ability != 26
         && !((gBattleMons[gActiveBattler].type1 == 2 || gBattleMons[gActiveBattler].type2 == 2))
         && gBattleMons[i].ability == 71)
        {
            gBattleScripting.battler = i;
            gLastUsedAbility = gBattleMons[i].ability;
            gBattleCommunication[5] = 2;
            return 2;
        }
    }
    i = AbilityBattleEffects(15, gActiveBattler, 42, 0, 0);
    if (i != 0 && ((gBattleMons[gActiveBattler].type1 == 8 || gBattleMons[gActiveBattler].type2 == 8)))
    {
        gBattleScripting.battler = i - 1;
        gLastUsedAbility = gBattleMons[i - 1].ability;
        gBattleCommunication[5] = 2;
        return 2;
    }
    if ((gBattleMons[gActiveBattler].status2 & ((1 << 26) | (1 << 13 | 1 << 14 | 1 << 15)))
     || (gStatuses3[gActiveBattler] & (1 << 10)))
    {
        gBattleCommunication[5] = 0;
        return 1;
    }
    if (gBattleTypeFlags & (1 << 4))
    {
        gBattleCommunication[5] = 1;
        return 1;
    }
    return 0;
}

void UpdatePartyOwnerOnSwitch_NonMulti(u8 battler)
{
    s32 i;
    u8 r4, r1;

    for (i = 0; i < 3; i++)
        gBattlePartyCurrentOrder[i] = *(battler * 3 + i + (u8 *)(gBattleStruct->battlerPartyOrders));
    r4 = GetPartyIdFromBattlePartyId(gBattlerPartyIndexes[battler]);
    r1 = GetPartyIdFromBattlePartyId(*(gBattleStruct->monToSwitchIntoId + battler));
    SwitchPartyMonSlots(r4, r1);
    if (gBattleTypeFlags & (1 << 0))
    {
        for (i = 0; i < 3; i++)
        {
            *(battler * 3 + i + (u8 *)(gBattleStruct->battlerPartyOrders)) = gBattlePartyCurrentOrder[i];
            *(((battler) ^ 2) * 3 + i + (u8 *)(gBattleStruct->battlerPartyOrders)) = gBattlePartyCurrentOrder[i];
        }
    }
    else
    {
        for (i = 0; i < 3; i++)
            *(battler * 3 + i + (u8 *)(gBattleStruct->battlerPartyOrders)) = gBattlePartyCurrentOrder[i];
    }
}

enum
{
    STATE_BEFORE_ACTION_CHOSEN,
    STATE_WAIT_ACTION_CHOSEN,
    STATE_WAIT_ACTION_CASE_CHOSEN,
    STATE_WAIT_ACTION_CONFIRMED_STANDBY,
    STATE_WAIT_ACTION_CONFIRMED,
    STATE_SELECTION_SCRIPT,
    STATE_WAIT_SET_BEFORE_ACTION,
};

static void HandleTurnActionSelectionState(void)
{
    s32 i;

    gBattleCommunication[4] = 0;
    for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
    {
        u8 position = GetBattlerPosition(gActiveBattler);

        switch (gBattleCommunication[gActiveBattler])
        {
        case STATE_BEFORE_ACTION_CHOSEN:
            *(gBattleStruct->monToSwitchIntoId + gActiveBattler) = 6;
            if (gBattleTypeFlags & (1 << 6)
             || (position & 2) == 0
             || gBattleStruct->absentBattlerFlags & gBitTable[GetBattlerAtPosition(((position) ^ 2))]
             || gBattleCommunication[GetBattlerAtPosition(((position) ^ 2))] == STATE_WAIT_ACTION_CONFIRMED)
            {
                if (gBattleStruct->absentBattlerFlags & gBitTable[gActiveBattler])
                {
                    gChosenActionByBattler[gActiveBattler] = 13;
                    if (!(gBattleTypeFlags & (1 << 6)))
                        gBattleCommunication[gActiveBattler] = STATE_WAIT_ACTION_CONFIRMED;
                    else
                        gBattleCommunication[gActiveBattler] = STATE_WAIT_ACTION_CONFIRMED_STANDBY;
                }
                else
                {
                    if (gBattleMons[gActiveBattler].status2 & (1 << 12)
                     || gBattleMons[gActiveBattler].status2 & (1 << 22))
                    {
                        gChosenActionByBattler[gActiveBattler] = 0;
                        gBattleCommunication[gActiveBattler] = STATE_WAIT_ACTION_CONFIRMED_STANDBY;
                    }
                    else
                    {
                        BtlController_EmitChooseAction(0, gChosenActionByBattler[0], gBattleBufferB[0][1] | (gBattleBufferB[0][2] << 8));
                        MarkBattlerForControllerExec(gActiveBattler);
                        gBattleCommunication[gActiveBattler]++;
                    }
                }
            }
            break;
        case STATE_WAIT_ACTION_CHOSEN:
            if (!(gBattleControllerExecFlags & ((gBitTable[gActiveBattler]) | (0xF0000000) | (gBitTable[gActiveBattler] << 4) | (gBitTable[gActiveBattler] << 8) | (gBitTable[gActiveBattler] << 0xC))))
            {
                gChosenActionByBattler[gActiveBattler] = gBattleBufferB[gActiveBattler][1];
                switch (gBattleBufferB[gActiveBattler][1])
                {
                case 0:
                    if (AreAllMovesUnusable())
                    {
                        gBattleCommunication[gActiveBattler] = STATE_SELECTION_SCRIPT;
                        *(gBattleStruct->selectionScriptFinished + gActiveBattler) = 0;
                        *(gBattleStruct->stateIdAfterSelScript + gActiveBattler) = STATE_WAIT_ACTION_CONFIRMED_STANDBY;
                        *(gBattleStruct->moveTarget + gActiveBattler) = gBattleBufferB[gActiveBattler][3];
                        return;
                    }
                    else if (gDisableStructs[gActiveBattler].encoredMove != 0)
                    {
                        gChosenMoveByBattler[gActiveBattler] = gDisableStructs[gActiveBattler].encoredMove;
                        *(gBattleStruct->chosenMovePositions + gActiveBattler) = gDisableStructs[gActiveBattler].encoredMovePos;
                        gBattleCommunication[gActiveBattler] = STATE_WAIT_ACTION_CONFIRMED_STANDBY;
                        return;
                    }
                    else
                    {
                        struct ChooseMoveStruct moveInfo;

                        moveInfo.species = gBattleMons[gActiveBattler].species;
                        moveInfo.monType1 = gBattleMons[gActiveBattler].type1;
                        moveInfo.monType2 = gBattleMons[gActiveBattler].type2;
                        for (i = 0; i < 4; i++)
                        {
                            moveInfo.moves[i] = gBattleMons[gActiveBattler].moves[i];
                            moveInfo.currentPp[i] = gBattleMons[gActiveBattler].pp[i];
                            moveInfo.maxPp[i] = CalculatePPWithBonus(gBattleMons[gActiveBattler].moves[i],
                                                                     gBattleMons[gActiveBattler].ppBonuses,
                                                                     i);
                        }
                        BtlController_EmitChooseMove(0, (gBattleTypeFlags & (1 << 0)) != 0, 0, &moveInfo);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    break;
                case 1:
                    if (gBattleTypeFlags & ((1 << 1) | (1 << 8) | (1 << 11)))
                    {
                        gSelectionBattleScripts[gActiveBattler] = BattleScript_ActionSelectionItemsCantBeUsed;
                        gBattleCommunication[gActiveBattler] = STATE_SELECTION_SCRIPT;
                        *(gBattleStruct->selectionScriptFinished + gActiveBattler) = 0;
                        *(gBattleStruct->stateIdAfterSelScript + gActiveBattler) = STATE_BEFORE_ACTION_CHOSEN;
                        return;
                    }
                    else
                    {
                        BtlController_EmitChooseItem(0, gBattleStruct->battlerPartyOrders[gActiveBattler]);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    break;
                case 2:
                    *(gBattleStruct->battlerPartyIndexes + gActiveBattler) = gBattlerPartyIndexes[gActiveBattler];
                    if (gBattleMons[gActiveBattler].status2 & ((1 << 13 | 1 << 14 | 1 << 15) | (1 << 26)) || gStatuses3[gActiveBattler] & (1 << 10))
                    {
                        BtlController_EmitChoosePokemon(BUFFER_A, 2, 6, 0, gBattleStruct->battlerPartyOrders[gActiveBattler]);
                    }
                    else if ((i = (AbilityBattleEffects(12, gActiveBattler, 23, 0, 0)))
                          || ((i = (AbilityBattleEffects(12, gActiveBattler, 71, 0, 0)))
                              && !((gBattleMons[gActiveBattler].type1 == 2 || gBattleMons[gActiveBattler].type2 == 2))
                              && gBattleMons[gActiveBattler].ability != 26)
                          || ((i = AbilityBattleEffects(15, gActiveBattler, 42, 0, 0))
                              && ((gBattleMons[gActiveBattler].type1 == 8 || gBattleMons[gActiveBattler].type2 == 8))))
                    {
                        BtlController_EmitChoosePokemon(BUFFER_A, ((i - 1) << 4) | 4, 6, gLastUsedAbility, gBattleStruct->battlerPartyOrders[gActiveBattler]);
                    }
                    else
                    {
                        if (gActiveBattler == 2 && gChosenActionByBattler[0] == 2)
                            BtlController_EmitChoosePokemon(BUFFER_A, 0, *(gBattleStruct->monToSwitchIntoId + 0), 0, gBattleStruct->battlerPartyOrders[gActiveBattler]);
                        else if (gActiveBattler == 3 && gChosenActionByBattler[1] == 2)
                            BtlController_EmitChoosePokemon(BUFFER_A, 0, *(gBattleStruct->monToSwitchIntoId + 1), 0, gBattleStruct->battlerPartyOrders[gActiveBattler]);
                        else
                            BtlController_EmitChoosePokemon(BUFFER_A, 0, 6, 0, gBattleStruct->battlerPartyOrders[gActiveBattler]);
                    }
                    MarkBattlerForControllerExec(gActiveBattler);
                    break;
                case 5:
                    if (IsPlayerPartyAndPokemonStorageFull())
                    {
                        gSelectionBattleScripts[gActiveBattler] = BattleScript_PrintFullBox;
                        gBattleCommunication[gActiveBattler] = STATE_SELECTION_SCRIPT;
                        *(gBattleStruct->selectionScriptFinished + gActiveBattler) = 0;
                        *(gBattleStruct->stateIdAfterSelScript + gActiveBattler) = STATE_BEFORE_ACTION_CHOSEN;
                        return;
                    }
                    break;
                case 12:
                    gBattleCommunication[gActiveBattler] = STATE_WAIT_SET_BEFORE_ACTION;
                    gBattleCommunication[GetBattlerAtPosition(((GetBattlerPosition(gActiveBattler)) ^ 2))] = STATE_BEFORE_ACTION_CHOSEN;
                    BtlController_EmitEndBounceEffect(0);
                    MarkBattlerForControllerExec(gActiveBattler);
                    return;
                }
                if (gBattleTypeFlags & (1 << 3)
                 && !(gBattleTypeFlags & (1 << 1))
                 && gBattleBufferB[gActiveBattler][1] == 3)
                {
                    BattleScriptExecute(BattleScript_PrintCantRunFromTrainer);
                    gBattleCommunication[gActiveBattler] = STATE_BEFORE_ACTION_CHOSEN;
                }
                else if (IsRunningFromBattleImpossible() != 0
                      && gBattleBufferB[gActiveBattler][1] == 3)
                {
                    gSelectionBattleScripts[gActiveBattler] = BattleScript_PrintCantEscapeFromBattle;
                    gBattleCommunication[gActiveBattler] = STATE_SELECTION_SCRIPT;
                    *(gBattleStruct->selectionScriptFinished + gActiveBattler) = 0;
                    *(gBattleStruct->stateIdAfterSelScript + gActiveBattler) = STATE_BEFORE_ACTION_CHOSEN;
                    return;
                }
                else
                {
                    gBattleCommunication[gActiveBattler]++;
                }
            }
            break;
        case STATE_WAIT_ACTION_CASE_CHOSEN:
            if (!(gBattleControllerExecFlags & ((gBitTable[gActiveBattler]) | (0xF0000000) | (gBitTable[gActiveBattler] << 4) | (gBitTable[gActiveBattler] << 8) | (gBitTable[gActiveBattler] << 0xC))))
            {
                switch (gChosenActionByBattler[gActiveBattler])
                {
                case 0:
                    switch (gBattleBufferB[gActiveBattler][1])
                    {
                    case 3 ... 9:
                        gChosenActionByBattler[gActiveBattler] = gBattleBufferB[gActiveBattler][1];
                        return;
                    default:
                        if ((gBattleBufferB[gActiveBattler][2] | (gBattleBufferB[gActiveBattler][3] << 8)) == 0xFFFF)
                        {
                            gBattleCommunication[gActiveBattler] = STATE_BEFORE_ACTION_CHOSEN;
                        }
                        else if (TrySetCantSelectMoveBattleScript())
                        {
                            gBattleCommunication[gActiveBattler] = STATE_SELECTION_SCRIPT;
                            *(gBattleStruct->selectionScriptFinished + gActiveBattler) = 0;
                            gBattleBufferB[gActiveBattler][1] = 0;
                            *(gBattleStruct->stateIdAfterSelScript + gActiveBattler) = STATE_WAIT_ACTION_CHOSEN;
                            return;
                        }
                        else
                        {
                            *(gBattleStruct->chosenMovePositions + gActiveBattler) = gBattleBufferB[gActiveBattler][2];
                            gChosenMoveByBattler[gActiveBattler] = gBattleMons[gActiveBattler].moves[*(gBattleStruct->chosenMovePositions + gActiveBattler)];
                            *(gBattleStruct->moveTarget + gActiveBattler) = gBattleBufferB[gActiveBattler][3];
                            gBattleCommunication[gActiveBattler]++;
                        }
                        break;
                    }
                    break;
                case 1:
                    if ((gBattleBufferB[gActiveBattler][1] | (gBattleBufferB[gActiveBattler][2] << 8)) == 0)
                    {
                        gBattleCommunication[gActiveBattler] = STATE_BEFORE_ACTION_CHOSEN;
                    }
                    else
                    {
                        gLastUsedItem = (gBattleBufferB[gActiveBattler][1] | (gBattleBufferB[gActiveBattler][2] << 8));
                        gBattleCommunication[gActiveBattler]++;
                    }
                    break;
                case 2:
                    if (gBattleBufferB[gActiveBattler][1] == 6)
                    {
                        gBattleCommunication[gActiveBattler] = STATE_BEFORE_ACTION_CHOSEN;
                    }
                    else
                    {
                        *(gBattleStruct->monToSwitchIntoId + gActiveBattler) = gBattleBufferB[gActiveBattler][1];
                        if (gBattleTypeFlags & (1 << 6))
                        {
                            *(gActiveBattler * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) &= 0xF;
                            *(gActiveBattler * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) |= (gBattleBufferB[gActiveBattler][2] & 0xF0);
                            *(gActiveBattler * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 1) = gBattleBufferB[gActiveBattler][3];
                            *((gActiveBattler ^ 2) * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) &= (0xF0);
                            *((gActiveBattler ^ 2) * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) |= (gBattleBufferB[gActiveBattler][2] & 0xF0) >> 4;
                            *((gActiveBattler ^ 2) * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 2) = gBattleBufferB[gActiveBattler][3];
                        }
                        gBattleCommunication[gActiveBattler]++;
                    }
                    break;
                case 3:
                    gHitMarker |= (1 << 15);
                    gBattleCommunication[gActiveBattler]++;
                    break;
                case 4:
                    gBattleCommunication[gActiveBattler]++;
                    break;
                case 5:
                    gBattleCommunication[gActiveBattler]++;
                    break;
                case 6:
                case 7:
                    gBattleCommunication[gActiveBattler]++;
                    break;
                case 8:
                    gHitMarker |= (1 << 15);
                    gBattleCommunication[gActiveBattler]++;
                    break;
                case 9:
                    gBattleCommunication[gActiveBattler]++;
                    break;
                }
            }
            break;
        case STATE_WAIT_ACTION_CONFIRMED_STANDBY:
            if (!(gBattleControllerExecFlags & ((gBitTable[gActiveBattler]) | (0xF0000000) | (gBitTable[gActiveBattler] << 4) | (gBitTable[gActiveBattler] << 8) | (gBitTable[gActiveBattler] << 0xC))))
            {
                if (((gBattleTypeFlags & ((1 << 6) | (1 << 0))) != (1 << 0))
                 || (position & 2) != 0
                 || (*(&gBattleStruct->absentBattlerFlags) & gBitTable[GetBattlerAtPosition(position ^ 2)]))
                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_STOP_BOUNCE);
                else
                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_STOP_BOUNCE_ONLY);
                MarkBattlerForControllerExec(gActiveBattler);
                gBattleCommunication[gActiveBattler]++;
            }
            break;
        case STATE_WAIT_ACTION_CONFIRMED:
            if (!(gBattleControllerExecFlags & ((gBitTable[gActiveBattler]) | (0xF0000000) | (gBitTable[gActiveBattler] << 4) | (gBitTable[gActiveBattler] << 8) | (gBitTable[gActiveBattler] << 0xC))))
                ++gBattleCommunication[4];
            break;
        case STATE_SELECTION_SCRIPT:
            if (*(gBattleStruct->selectionScriptFinished + gActiveBattler))
            {
                gBattleCommunication[gActiveBattler] = *(gBattleStruct->stateIdAfterSelScript + gActiveBattler);
            }
            else
            {
                gBattlerAttacker = gActiveBattler;
                gBattlescriptCurrInstr = gSelectionBattleScripts[gActiveBattler];
                if (!(gBattleControllerExecFlags & ((gBitTable[gActiveBattler]) | (0xF0000000) | (gBitTable[gActiveBattler] << 4) | (gBitTable[gActiveBattler] << 8) | (gBitTable[gActiveBattler] << 0xC))))
                    gBattleScriptingCommandsTable[gBattlescriptCurrInstr[0]]();
                gSelectionBattleScripts[gActiveBattler] = gBattlescriptCurrInstr;
            }
            break;
        case STATE_WAIT_SET_BEFORE_ACTION:
            if (!(gBattleControllerExecFlags & ((gBitTable[gActiveBattler]) | (0xF0000000) | (gBitTable[gActiveBattler] << 4) | (gBitTable[gActiveBattler] << 8) | (gBitTable[gActiveBattler] << 0xC))))
                gBattleCommunication[gActiveBattler] = STATE_BEFORE_ACTION_CHOSEN;
            break;
        }
    }

    if (gBattleCommunication[4] == gBattlersCount)
        gBattleMainFunc = SetActionsAndBattlersTurnOrder;
}

void SwapTurnOrder(u8 id1, u8 id2)
{
    u32 temp;

    { temp = gActionsByTurnOrder[id1]; gActionsByTurnOrder[id1] = gActionsByTurnOrder[id2]; gActionsByTurnOrder[id2] = temp; };
    { temp = gBattlerByTurnOrder[id1]; gBattlerByTurnOrder[id1] = gBattlerByTurnOrder[id2]; gBattlerByTurnOrder[id2] = temp; };
}

u8 GetWhoStrikesFirst(u8 battler1, u8 battler2, bool8 ignoreChosenMoves)
{
    u8 strikesFirst = 0;
    u8 speedMultiplierBattler1 = 0, speedMultiplierBattler2 = 0;
    u32 speedBattler1 = 0, speedBattler2 = 0;
    u8 holdEffect = 0;
    u8 holdEffectParam = 0;
    u16 moveBattler1 = 0, moveBattler2 = 0;

    if (((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))))
    {
        if ((gBattleMons[battler1].ability == 33 && gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2)))
            || (gBattleMons[battler1].ability == 34 && gBattleWeather & ((1 << 5) | (1 << 6))))
            speedMultiplierBattler1 = 2;
        else
            speedMultiplierBattler1 = 1;
        if ((gBattleMons[battler2].ability == 33 && gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2)))
            || (gBattleMons[battler2].ability == 34 && gBattleWeather & ((1 << 5) | (1 << 6))))
            speedMultiplierBattler2 = 2;
        else
            speedMultiplierBattler2 = 1;
    }
    else
    {
        speedMultiplierBattler1 = 1;
        speedMultiplierBattler2 = 1;
    }

    speedBattler1 = (gBattleMons[battler1].speed * speedMultiplierBattler1)
                * (gStatStageRatios[gBattleMons[battler1].statStages[3]][0])
                / (gStatStageRatios[gBattleMons[battler1].statStages[3]][1]);

    if (gBattleMons[battler1].item == 175)
    {
        holdEffect = gEnigmaBerries[battler1].holdEffect;
        holdEffectParam = gEnigmaBerries[battler1].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[battler1].item);
        holdEffectParam = ItemId_GetHoldEffectParam(gBattleMons[battler1].item);
    }

    if (!(gBattleTypeFlags & (1 << 1))
     && FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x22))
     && GetBattlerSide(battler1) == 0)
        speedBattler1 = (speedBattler1 * 110) / 100;
    if (holdEffect == 24)
        speedBattler1 /= 2;
    if (gBattleMons[battler1].status1 & (1 << 6))
        speedBattler1 /= 4;
    if (holdEffect == 26 && gRandomTurnNumber < (0xFFFF * holdEffectParam) / 100)
        speedBattler1 = (2147483647 * 2U + 1);

    speedBattler2 = (gBattleMons[battler2].speed * speedMultiplierBattler2)
                    * (gStatStageRatios[gBattleMons[battler2].statStages[3]][0])
                    / (gStatStageRatios[gBattleMons[battler2].statStages[3]][1]);
    if (gBattleMons[battler2].item == 175)
    {
        holdEffect = gEnigmaBerries[battler2].holdEffect;
        holdEffectParam = gEnigmaBerries[battler2].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[battler2].item);
        holdEffectParam = ItemId_GetHoldEffectParam(gBattleMons[battler2].item);
    }

    if (!(gBattleTypeFlags & (1 << 1))
     && FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x22))
     && GetBattlerSide(battler2) == 0)
        speedBattler2 = (speedBattler2 * 110) / 100;
    if (holdEffect == 24)
        speedBattler2 /= 2;
    if (gBattleMons[battler2].status1 & (1 << 6))
        speedBattler2 /= 4;
    if (holdEffect == 26 && gRandomTurnNumber < (0xFFFF * holdEffectParam) / 100)
        speedBattler2 = (2147483647 * 2U + 1);
    if (ignoreChosenMoves)
    {
        moveBattler1 = 0;
        moveBattler2 = 0;
    }
    else
    {
        if (gChosenActionByBattler[battler1] == 0)
        {
            if (gProtectStructs[battler1].noValidMoves)
                moveBattler1 = 165;
            else
                moveBattler1 = gBattleMons[battler1].moves[*(gBattleStruct->chosenMovePositions + battler1)];
        }
        else
            moveBattler1 = 0;
        if (gChosenActionByBattler[battler2] == 0)
        {
            if (gProtectStructs[battler2].noValidMoves)
                moveBattler2 = 165;
            else
                moveBattler2 = gBattleMons[battler2].moves[*(gBattleStruct->chosenMovePositions + battler2)];
        }
        else
            moveBattler2 = 0;
    }

    if (gBattleMoves[moveBattler1].priority != 0 || gBattleMoves[moveBattler2].priority != 0)
    {

        if (gBattleMoves[moveBattler1].priority == gBattleMoves[moveBattler2].priority)
        {
            if (speedBattler1 == speedBattler2 && Random() & 1)
                strikesFirst = 2;
            else if (speedBattler1 < speedBattler2)
                strikesFirst = 1;

        }
        else if (gBattleMoves[moveBattler1].priority < gBattleMoves[moveBattler2].priority)
            strikesFirst = 1;

    }

    else
    {
        if (speedBattler1 == speedBattler2 && Random() & 1)
            strikesFirst = 2;
        else if (speedBattler1 < speedBattler2)
            strikesFirst = 1;

    }
    return strikesFirst;
}

static void SetActionsAndBattlersTurnOrder(void)
{
    s32 turnOrderId = 0;
    s32 i, j;

    if (gBattleTypeFlags & (1 << 7))
    {
        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
        {
            gActionsByTurnOrder[turnOrderId] = gChosenActionByBattler[gActiveBattler];
            gBattlerByTurnOrder[turnOrderId] = gActiveBattler;
            turnOrderId++;
        }
    }
    else
    {
        if (gBattleTypeFlags & (1 << 1))
        {
            for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            {
                if (gChosenActionByBattler[gActiveBattler] == 3)
                {
                    turnOrderId = 5;
                    break;
                }
            }
        }
        else if (gChosenActionByBattler[0] == 3)
        {
            gActiveBattler = 0;
            turnOrderId = 5;
        }
        if (turnOrderId == 5)
        {
            gActionsByTurnOrder[0] = gChosenActionByBattler[gActiveBattler];
            gBattlerByTurnOrder[0] = gActiveBattler;
            turnOrderId = 1;
            for (i = 0; i < gBattlersCount; i++)
            {
                if (i != gActiveBattler)
                {
                    gActionsByTurnOrder[turnOrderId] = gChosenActionByBattler[i];
                    gBattlerByTurnOrder[turnOrderId] = i;
                    turnOrderId++;
                }
            }
            gBattleMainFunc = CheckFocusPunch_ClearVarsBeforeTurnStarts;
            gBattleStruct->focusPunchBattlerId = 0;
            return;
        }
        else
        {
            for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            {
                if (gChosenActionByBattler[gActiveBattler] == 1 || gChosenActionByBattler[gActiveBattler] == 2)
                {
                    gActionsByTurnOrder[turnOrderId] = gChosenActionByBattler[gActiveBattler];
                    gBattlerByTurnOrder[turnOrderId] = gActiveBattler;
                    turnOrderId++;
                }
            }
            for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            {
                if (gChosenActionByBattler[gActiveBattler] != 1 && gChosenActionByBattler[gActiveBattler] != 2)
                {
                    gActionsByTurnOrder[turnOrderId] = gChosenActionByBattler[gActiveBattler];
                    gBattlerByTurnOrder[turnOrderId] = gActiveBattler;
                    turnOrderId++;
                }
            }
            for (i = 0; i < gBattlersCount - 1; i++)
            {
                for (j = i + 1; j < gBattlersCount; j++)
                {
                    u8 battler1 = gBattlerByTurnOrder[i];
                    u8 battler2 = gBattlerByTurnOrder[j];

                    if (gActionsByTurnOrder[i] != 1
                     && gActionsByTurnOrder[j] != 1
                     && gActionsByTurnOrder[i] != 2
                     && gActionsByTurnOrder[j] != 2)
                        if (GetWhoStrikesFirst(battler1, battler2, 0))
                            SwapTurnOrder(i, j);
                }
            }
        }
    }
    gBattleMainFunc = CheckFocusPunch_ClearVarsBeforeTurnStarts;
    gBattleStruct->focusPunchBattlerId = 0;
}

static void TurnValuesCleanUp(bool8 var0)
{
    s32 i;
    u8 *dataPtr;

    for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
    {
        if (var0)
        {
            gProtectStructs[gActiveBattler].protected = 0;
            gProtectStructs[gActiveBattler].endured = 0;
        }
        else
        {
            dataPtr = (u8 *)(&gProtectStructs[gActiveBattler]);
            for (i = 0; i < sizeof(struct ProtectStruct); i++)
                dataPtr[i] = 0;
            if (gDisableStructs[gActiveBattler].isFirstTurn)
                --gDisableStructs[gActiveBattler].isFirstTurn;
            if (gDisableStructs[gActiveBattler].rechargeTimer)
            {
                --gDisableStructs[gActiveBattler].rechargeTimer;
                if (gDisableStructs[gActiveBattler].rechargeTimer == 0)
                    gBattleMons[gActiveBattler].status2 &= ~((1 << 22));
            }
        }

        if (gDisableStructs[gActiveBattler].substituteHP == 0)
            gBattleMons[gActiveBattler].status2 &= ~((1 << 24));
    }
    gSideTimers[0].followmeTimer = 0;
    gSideTimers[1].followmeTimer = 0;
}

static void SpecialStatusesClear(void)
{
    for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
    {
        s32 i;
        u8 *dataPtr = (u8 *)(&gSpecialStatuses[gActiveBattler]);

        for (i = 0; i < sizeof(struct SpecialStatus); i++)
            dataPtr[i] = 0;
    }
}

static void CheckFocusPunch_ClearVarsBeforeTurnStarts(void)
{
    if (!(gHitMarker & (1 << 15)))
    {
        while (gBattleStruct->focusPunchBattlerId < gBattlersCount)
        {
            gActiveBattler = gBattlerAttacker = gBattleStruct->focusPunchBattlerId;
            ++gBattleStruct->focusPunchBattlerId;
            if (gChosenMoveByBattler[gActiveBattler] == 264
             && !(gBattleMons[gActiveBattler].status1 & (1 << 0 | 1 << 1 | 1 << 2))
             && !(gDisableStructs[gBattlerAttacker].truantCounter)
             && !(gProtectStructs[gActiveBattler].noValidMoves))
            {
                BattleScriptExecute(BattleScript_FocusPunchSetUp);
                return;
            }
        }
    }
    TryClearRageStatuses();
    gCurrentTurnActionNumber = 0;
    {

        u8 zero;

        gCurrentActionFuncId = gActionsByTurnOrder[(zero = 0)];
    }
    gDynamicBasePower = 0;
    gBattleStruct->dynamicMoveType = 0;
    gBattleMainFunc = RunTurnActionsFunctions;
    gBattleCommunication[3] = 0;
    gBattleCommunication[4] = 0;
    gBattleScripting.multihitMoveEffect = 0;
    gBattleResources->battleScriptsStack->size = 0;
}

static void RunTurnActionsFunctions(void)
{
    if (gBattleOutcome != 0)
        gCurrentActionFuncId = 12;
    *(&gBattleStruct->savedTurnActionNumber) = gCurrentTurnActionNumber;
    sTurnActionsFuncsTable[gCurrentActionFuncId]();

    if (gCurrentTurnActionNumber >= gBattlersCount)
    {
        gHitMarker &= ~((1 << 20));
        gBattleMainFunc = sEndTurnFuncsTable[gBattleOutcome & 0x7F];
    }
    else
    {
        if (gBattleStruct->savedTurnActionNumber != gCurrentTurnActionNumber)
        {
            gHitMarker &= ~((1 << 9));
            gHitMarker &= ~((1 << 19));
        }
    }
}

static void HandleEndTurn_BattleWon(void)
{
    gCurrentActionFuncId = 0;
    if (gBattleTypeFlags & (1 << 1))
    {
        gBattleTextBuff1[0] = gBattleOutcome;
        gBattlerAttacker = GetBattlerAtPosition(0);
        gBattlescriptCurrInstr = BattleScript_LinkBattleWonOrLost;
        gBattleOutcome &= ~((1 << 7));
    }
    else if (gBattleTypeFlags & ((1 << 19) | (1 << 11) | (1 << 8)))
    {
        BattleStopLowHpSound();
        PlayBGM(310);
        gBattlescriptCurrInstr = BattleScript_BattleTowerTrainerBattleWon;
    }
    else if (gBattleTypeFlags & (1 << 3) && !(gBattleTypeFlags & (1 << 1)))
    {
        BattleStopLowHpSound();
        gBattlescriptCurrInstr = BattleScript_LocalTrainerBattleWon;
        switch (gTrainers[gTrainerBattleOpponent_A].trainerClass)
        {
        case 84:
        case 90:
            PlayBGM(312);
            break;
        case 83:
        case 85:
        case 86:
        case 87:
        case 88:
        default:
            PlayBGM(310);
            break;
        }
    }
    else
    {
        gBattlescriptCurrInstr = BattleScript_PayDayMoneyAndPickUpItems;
    }
    gBattleMainFunc = HandleEndTurn_FinishBattle;
}

static void HandleEndTurn_BattleLost(void)
{
    gCurrentActionFuncId = 0;
    if (gBattleTypeFlags & (1 << 1))
    {
        gBattleTextBuff1[0] = gBattleOutcome;
        gBattlerAttacker = GetBattlerAtPosition(0);
        gBattlescriptCurrInstr = BattleScript_LinkBattleWonOrLost;
        gBattleOutcome &= ~((1 << 7));
    }
    else
    {
        if (gBattleTypeFlags & (1 << 3) && GetTrainerBattleMode() == 9)
        {
            if (GetRivalBattleFlags() & 1)
                gBattleCommunication[5] = 1;
            else
                gBattleCommunication[5] = 2;
            gBattlerAttacker = GetBattlerAtPosition(1);
        }
        else
        {
            gBattleCommunication[5] = 0;
        }
        gBattlescriptCurrInstr = BattleScript_LocalBattleLost;
    }
    gBattleMainFunc = HandleEndTurn_FinishBattle;
}

static void HandleEndTurn_RanFromBattle(void)
{
    gCurrentActionFuncId = 0;
    switch (gProtectStructs[gBattlerAttacker].fleeType)
    {
    default:
        gBattlescriptCurrInstr = BattleScript_GotAwaySafely;
        break;
    case 1:
        gBattlescriptCurrInstr = BattleScript_SmokeBallEscape;
        break;
    case 2:
        gBattlescriptCurrInstr = BattleScript_RanAwayUsingMonAbility;
        break;
    }
    gBattleMainFunc = HandleEndTurn_FinishBattle;
}

static void HandleEndTurn_MonFled(void)
{
    gCurrentActionFuncId = 0;
    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 7; gBattleTextBuff1[2] = gBattlerAttacker; gBattleTextBuff1[3] = gBattlerPartyIndexes[gBattlerAttacker]; gBattleTextBuff1[4] = 0xFF; };
    gBattlescriptCurrInstr = BattleScript_WildMonFled;
    gBattleMainFunc = HandleEndTurn_FinishBattle;
}

static void HandleEndTurn_FinishBattle(void)
{
    if (gCurrentActionFuncId == 11 || gCurrentActionFuncId == 12)
    {
        if (!(gBattleTypeFlags & ((1 << 19) | (1 << 11) | (1 << 9) | (1 << 8) | (1 << 7) | (1 << 4) | (1 << 1))))
        {
            for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            {
                if (GetBattlerSide(gActiveBattler) == 0)
                {
                    if (gBattleResults.playerMon1Species == 0)
                    {
                        gBattleResults.playerMon1Species = gBattleMons[gActiveBattler].species;
                        StringCopy(gBattleResults.playerMon1Name, gBattleMons[gActiveBattler].nickname);
                    }
                    else
                    {
                        gBattleResults.playerMon2Species = gBattleMons[gActiveBattler].species;
                        StringCopy(gBattleResults.playerMon2Name, gBattleMons[gActiveBattler].nickname);
                    }
                }
            }
        }
        TrySetQuestLogBattleEvent();
        if (gBattleTypeFlags & (1 << 3))
            ClearRematchStateByTrainerId();
        BeginFastPaletteFade(3);
        FadeOutMapMusic(5);
        gBattleMainFunc = FreeResetData_ReturnToOvOrDoEvolutions;
        gCB2_AfterEvolution = BattleMainCB2;
    }
    else if (gBattleControllerExecFlags == 0)
    {
        gBattleScriptingCommandsTable[gBattlescriptCurrInstr[0]]();
    }
}

static void FreeResetData_ReturnToOvOrDoEvolutions(void)
{
    if (!gPaletteFade.active)
    {
        ResetSpriteData();
        if (gLeveledUpInBattle == 0 || gBattleOutcome != 1)
            gBattleMainFunc = ReturnFromBattleToOverworld;
        else
            gBattleMainFunc = TryEvolvePokemon;
        FreeAllWindowBuffers();
        if (!(gBattleTypeFlags & (1 << 1)))
        {
            FreeMonSpritesGfx();
            FreeBattleSpritesData();
            FreeBattleResources();
        }
    }
}

static void TryEvolvePokemon(void)
{
    s32 i;

    while (gLeveledUpInBattle != 0)
    {
        for (i = 0; i < 6; i++)
        {
            if (gLeveledUpInBattle & gBitTable[i])
            {
                u16 species;
                u8 levelUpBits = gLeveledUpInBattle;

                levelUpBits &= ~(gBitTable[i]);
                gLeveledUpInBattle = levelUpBits;

                species = GetEvolutionTargetSpecies(&gPlayerParty[i], 0, levelUpBits);
                if (species != 0)
                {
                    gBattleMainFunc = WaitForEvoSceneToFinish;
                    EvolutionScene(&gPlayerParty[i], species, 0x81, i);
                    return;
                }
            }
        }
    }
    gBattleMainFunc = ReturnFromBattleToOverworld;
}

static void WaitForEvoSceneToFinish(void)
{
    if (gMain.callback2 == BattleMainCB2)
        gBattleMainFunc = TryEvolvePokemon;
}

static void ReturnFromBattleToOverworld(void)
{
    if (!(gBattleTypeFlags & (1 << 1)))
    {
        RandomlyGivePartyPokerus(gPlayerParty);
        PartySpreadPokerus(gPlayerParty);
    }
    if (!(gBattleTypeFlags & (1 << 1)) || !gReceivedRemoteLinkPlayers)
    {
        gSpecialVar_Result = gBattleOutcome;
        gMain.inBattle = 0;
        gMain.callback1 = gPreBattleCallback1;
        if (gBattleTypeFlags & (1 << 10))
        {
            UpdateRoamerHPStatus(&gEnemyParty[0]);



            if ((gBattleOutcome & 1) || gBattleOutcome == 7)

                SetRoamerInactive();
        }
        m4aSongNumStop(83);
        SetMainCallback2(gMain.savedCallback);
    }
}

void RunBattleScriptCommands_PopCallbacksStack(void)
{
    if (gCurrentActionFuncId == 11 || gCurrentActionFuncId == 12)
    {
        if (gBattleResources->battleCallbackStack->size != 0)
            gBattleResources->battleCallbackStack->size--;
        gBattleMainFunc = gBattleResources->battleCallbackStack->function[gBattleResources->battleCallbackStack->size];
    }
    else
    {
        if (gBattleControllerExecFlags == 0)
            gBattleScriptingCommandsTable[gBattlescriptCurrInstr[0]]();
    }
}

void RunBattleScriptCommands(void)
{
    if (gBattleControllerExecFlags == 0)
        gBattleScriptingCommandsTable[gBattlescriptCurrInstr[0]]();
}

static void HandleAction_UseMove(void)
{
    u8 side;
    u8 var = 4;

    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    if (*(&gBattleStruct->absentBattlerFlags) & gBitTable[gBattlerAttacker])
    {
        gCurrentActionFuncId = 12;
        return;
    }
    gCritMultiplier = 1;
    gBattleScripting.dmgMultiplier = 1;
    gBattleStruct->atkCancellerTracker = 0;
    gMoveResultFlags = 0;
    gMultiHitCounter = 0;
    gBattleCommunication[6] = 0;
    gCurrMovePos = gChosenMovePos = *(gBattleStruct->chosenMovePositions + gBattlerAttacker);

    if (gProtectStructs[gBattlerAttacker].noValidMoves)
    {
        gProtectStructs[gBattlerAttacker].noValidMoves = 0;
        gCurrentMove = gChosenMove = 165;
        gHitMarker |= (1 << 11);
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(165, 0);
    }
    else if (gBattleMons[gBattlerAttacker].status2 & (1 << 12) || gBattleMons[gBattlerAttacker].status2 & (1 << 22))
    {
        gCurrentMove = gChosenMove = gLockedMoves[gBattlerAttacker];
    }

    else if (gDisableStructs[gBattlerAttacker].encoredMove != 0
          && gDisableStructs[gBattlerAttacker].encoredMove == gBattleMons[gBattlerAttacker].moves[gDisableStructs[gBattlerAttacker].encoredMovePos])
    {
        gCurrentMove = gChosenMove = gDisableStructs[gBattlerAttacker].encoredMove;
        gCurrMovePos = gChosenMovePos = gDisableStructs[gBattlerAttacker].encoredMovePos;
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(gCurrentMove, 0);
    }

    else if (gDisableStructs[gBattlerAttacker].encoredMove != 0
          && gDisableStructs[gBattlerAttacker].encoredMove != gBattleMons[gBattlerAttacker].moves[gDisableStructs[gBattlerAttacker].encoredMovePos])
    {
        gCurrMovePos = gChosenMovePos = gDisableStructs[gBattlerAttacker].encoredMovePos;
        gCurrentMove = gChosenMove = gBattleMons[gBattlerAttacker].moves[gCurrMovePos];
        gDisableStructs[gBattlerAttacker].encoredMove = 0;
        gDisableStructs[gBattlerAttacker].encoredMovePos = 0;
        gDisableStructs[gBattlerAttacker].encoreTimer = 0;
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(gCurrentMove, 0);
    }
    else if (gBattleMons[gBattlerAttacker].moves[gCurrMovePos] != gChosenMoveByBattler[gBattlerAttacker])
    {
        gCurrentMove = gChosenMove = gBattleMons[gBattlerAttacker].moves[gCurrMovePos];
        *(gBattleStruct->moveTarget + gBattlerAttacker) = GetMoveTarget(gCurrentMove, 0);
    }
    else
    {
        gCurrentMove = gChosenMove = gBattleMons[gBattlerAttacker].moves[gCurrMovePos];
    }
    if (GetBattlerSide(gBattlerAttacker) == 0)
        gBattleResults.lastUsedMovePlayer = gCurrentMove;
    else
        gBattleResults.lastUsedMoveOpponent = gCurrentMove;

    side = GetBattlerSide(gBattlerAttacker) ^ 1;
    if (gSideTimers[side].followmeTimer != 0
     && gBattleMoves[gCurrentMove].target == 0
     && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gSideTimers[side].followmeTarget)
     && gBattleMons[gSideTimers[side].followmeTarget].hp != 0)
    {
        gBattlerTarget = gSideTimers[side].followmeTarget;
    }
    else if ((gBattleTypeFlags & (1 << 0))
          && gSideTimers[side].followmeTimer == 0
          && (gBattleMoves[gCurrentMove].power != 0
             || gBattleMoves[gCurrentMove].target != (1 << 4))
          && gBattleMons[*(gBattleStruct->moveTarget + gBattlerAttacker)].ability != 31
          && gBattleMoves[gCurrentMove].type == 13)
    {
        side = GetBattlerSide(gBattlerAttacker);
        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            if (side != GetBattlerSide(gActiveBattler)
             && *(gBattleStruct->moveTarget + gBattlerAttacker) != gActiveBattler
             && gBattleMons[gActiveBattler].ability == 31
             && GetBattlerTurnOrderNum(gActiveBattler) < var)
                var = GetBattlerTurnOrderNum(gActiveBattler);
        if (var == 4)
        {
            if (gBattleMoves[gChosenMove].target & (1 << 2))
            {
                if (GetBattlerSide(gBattlerAttacker) == 0)
                {
                    if (Random() & 1)
                        gBattlerTarget = GetBattlerAtPosition(1);
                    else
                        gBattlerTarget = GetBattlerAtPosition(3);
                }
                else
                {
                    if (Random() & 1)
                        gBattlerTarget = GetBattlerAtPosition(0);
                    else
                        gBattlerTarget = GetBattlerAtPosition(2);
                }
            }
            else
            {
                gBattlerTarget = *(gBattleStruct->moveTarget + gBattlerAttacker);
            }
            if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
            {
                if (GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget))
                {
                    gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerTarget) ^ 2);
                }
                else
                {
                    gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 1);
                    if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
                        gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerTarget) ^ 2);
                }
            }
        }
        else
        {
            gActiveBattler = gBattlerByTurnOrder[var];
            RecordAbilityBattle(gActiveBattler, gBattleMons[gActiveBattler].ability);
            gSpecialStatuses[gActiveBattler].lightningRodRedirected = 1;
            gBattlerTarget = gActiveBattler;
        }
    }
    else if (gBattleTypeFlags & (1 << 0)
          && gBattleMoves[gChosenMove].target & (1 << 2))
    {
        if (GetBattlerSide(gBattlerAttacker) == 0)
        {
            if (Random() & 1)
                gBattlerTarget = GetBattlerAtPosition(1);
            else
                gBattlerTarget = GetBattlerAtPosition(3);
        }
        else
        {
            if (Random() & 1)
                gBattlerTarget = GetBattlerAtPosition(0);
            else
                gBattlerTarget = GetBattlerAtPosition(2);
        }
        if (gAbsentBattlerFlags & gBitTable[gBattlerTarget]
         && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget))
            gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerTarget) ^ 2);
    }
    else
    {
        gBattlerTarget = *(gBattleStruct->moveTarget + gBattlerAttacker);
        if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
        {
            if (GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget))
            {
                gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerTarget) ^ 2);
            }
            else
            {
                gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 1);
                if (gAbsentBattlerFlags & gBitTable[gBattlerTarget])
                    gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerTarget) ^ 2);
            }
        }
    }
    gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
    gCurrentActionFuncId = 10;
}

static void HandleAction_Switch(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gActionSelectionCursor[gBattlerAttacker] = 0;
    gMoveSelectionCursor[gBattlerAttacker] = 0;
    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 7; gBattleTextBuff1[2] = gBattlerAttacker; gBattleTextBuff1[3] = *(gBattleStruct->battlerPartyIndexes + gBattlerAttacker); gBattleTextBuff1[4] = 0xFF; };
    gBattleScripting.battler = gBattlerAttacker;
    gBattlescriptCurrInstr = BattleScript_ActionSwitch;
    gCurrentActionFuncId = 10;
    if (gBattleResults.playerSwitchesCounter < 255)
        ++gBattleResults.playerSwitchesCounter;
}

static void HandleAction_UseItem(void)
{
    gBattlerAttacker = gBattlerTarget = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    ClearFuryCutterDestinyBondGrudge(gBattlerAttacker);
    gLastUsedItem = gBattleBufferB[gBattlerAttacker][1] | (gBattleBufferB[gBattlerAttacker][2] << 8);
    if (gLastUsedItem <= 12)
    {
        gBattlescriptCurrInstr = gBattlescriptsForBallThrow[gLastUsedItem];
    }
    else if (gLastUsedItem == 80 || gLastUsedItem == 81)
    {
        gBattlescriptCurrInstr = gBattlescriptsForRunningByItem[0];
    }
    else if (gLastUsedItem == 350)
    {
        gBattlescriptCurrInstr = gBattlescriptsForRunningByItem[1];
    }
    else if (GetBattlerSide(gBattlerAttacker) == 0)
    {
        gBattlescriptCurrInstr = gBattlescriptsForUsingItem[0];
    }
    else
    {
        gBattleScripting.battler = gBattlerAttacker;
        switch (*(gBattleStruct->AI_itemType + (gBattlerAttacker >> 1)))
        {
        case AI_ITEM_FULL_RESTORE:
        case AI_ITEM_HEAL_HP:
            break;
        case AI_ITEM_CURE_CONDITION:
            gBattleCommunication[5] = 0;
            if (*(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) & 1)
            {
                if (*(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) & 0x3E)
                    gBattleCommunication[5] = 5;
            }
            else
            {
                while (!(*(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) & 1))
                {
                    *(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) >>= 1;
                    gBattleCommunication[5]++;
                }
            }
            break;
        case AI_ITEM_X_STAT:
            gBattleCommunication[5] = 4;
            if (*(gBattleStruct->AI_itemFlags + (gBattlerAttacker >> 1)) & 0x80)
            {
                gBattleCommunication[5] = 5;
            }
            else
            {
                { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 5; gBattleTextBuff1[2] = 1; gBattleTextBuff1[3] = 0xFF; };
                { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 0; gBattleTextBuff2[2] = 0xD2; gBattleTextBuff2[3] = (0xD2 & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; };
                while (!((*(gBattleStruct->AI_itemFlags + (gBattlerAttacker >> 1))) & 1))
                {
                    *(gBattleStruct->AI_itemFlags + gBattlerAttacker / 2) >>= 1;
                    ++gBattleTextBuff1[2];
                }
                gBattleScripting.animArg1 = gBattleTextBuff1[2] + 14;
                gBattleScripting.animArg2 = 0;
            }
            break;
        case AI_ITEM_GUARD_SPECS:
            if (gBattleTypeFlags & (1 << 0))
                gBattleCommunication[5] = 2;
            else
                gBattleCommunication[5] = 0;
            break;
        }

        gBattlescriptCurrInstr = gBattlescriptsForUsingItem[*(gBattleStruct->AI_itemType + gBattlerAttacker / 2)];
    }
    gCurrentActionFuncId = 10;
}

bool8 TryRunFromBattle(u8 battler)
{
    bool8 effect = 0;
    u8 holdEffect;
    u8 speedVar;

    if (gBattleMons[battler].item == 175)
        holdEffect = gEnigmaBerries[battler].holdEffect;
    else
        holdEffect = ItemId_GetHoldEffect(gBattleMons[battler].item);
    gPotentialItemEffectBattler = battler;
    if (holdEffect == 37)
    {
        gLastUsedItem = gBattleMons[battler].item;
        gProtectStructs[battler].fleeType = 1;
        effect++;
    }
    else if (gBattleMons[battler].ability == 50)
    {
        gLastUsedAbility = 50;
        gProtectStructs[battler].fleeType = 2;
        effect++;
    }
    else if (((gBattleTypeFlags) & (1 << 15) && !((gBattleTypeFlags) & (1 << 13))))
    {
        if (GetBattlerSide(battler) == 0)
            effect++;
    }
    else
    {
        if (!(gBattleTypeFlags & (1 << 0)))
        {
            if (gBattleMons[battler].speed < gBattleMons[((battler) ^ 1)].speed)
            {
                speedVar = (gBattleMons[battler].speed * 128) / (gBattleMons[((battler) ^ 1)].speed) + (gBattleStruct->runTries * 30);
                if (speedVar > (Random() & 0xFF))
                    effect++;
            }
            else
            {
                effect++;
            }
        }

        ++gBattleStruct->runTries;
    }
    if (effect != 0)
    {
        gCurrentTurnActionNumber = gBattlersCount;
        gBattleOutcome = 4;
    }
    return effect;
}

static void HandleAction_Run(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];

    if (gBattleTypeFlags & (1 << 1))
    {
        gCurrentTurnActionNumber = gBattlersCount;
        for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
        {
            if (GetBattlerSide(gActiveBattler) == 0)
            {
                if (gChosenActionByBattler[gActiveBattler] == 3)
                    gBattleOutcome |= 2;
            }
            else
            {
                if (gChosenActionByBattler[gActiveBattler] == 3)
                    gBattleOutcome |= 1;
            }
        }
        gBattleOutcome |= (1 << 7);
    }
    else
    {
        if (GetBattlerSide(gBattlerAttacker) == 0)
        {
            if (!TryRunFromBattle(gBattlerAttacker))
            {
                ClearFuryCutterDestinyBondGrudge(gBattlerAttacker);
                gBattleCommunication[5] = 3;
                gBattlescriptCurrInstr = BattleScript_PrintFailedToRunString;
                gCurrentActionFuncId = 10;
            }
        }
        else
        {
            if (gBattleMons[gBattlerAttacker].status2 & ((1 << 13 | 1 << 14 | 1 << 15) | (1 << 26)))
            {
                gBattleCommunication[5] = 4;
                gBattlescriptCurrInstr = BattleScript_PrintFailedToRunString;
                gCurrentActionFuncId = 10;
            }
            else
            {
                gCurrentTurnActionNumber = gBattlersCount;
                gBattleOutcome = 6;
            }
        }
    }
}

static void HandleAction_WatchesCarefully(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    if (gBattleStruct->safariRockThrowCounter != 0)
    {
        --gBattleStruct->safariRockThrowCounter;
        if (gBattleStruct->safariRockThrowCounter == 0)
        {
            *(&gBattleStruct->safariCatchFactor) = gSpeciesInfo[GetMonData(gEnemyParty, 11)].catchRate * 100 / 1275;
            gBattleCommunication[5] = 0;
        }
        else
        {
            gBattleCommunication[5] = 1;
        }
    }
    else
    {
        if (gBattleStruct->safariBaitThrowCounter != 0)
        {
            --gBattleStruct->safariBaitThrowCounter;
            if (gBattleStruct->safariBaitThrowCounter == 0)
                gBattleCommunication[5] = 0;
            else
                gBattleCommunication[5] = 2;
        }
        else
        {
            gBattleCommunication[5] = 0;
        }
    }
    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[0];
    gCurrentActionFuncId = 10;
}

static void HandleAction_SafariZoneBallThrow(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    --gNumSafariBalls;
    gLastUsedItem = 5;
    gBattlescriptCurrInstr = gBattlescriptsForBallThrow[5];
    gCurrentActionFuncId = 10;
}

static void HandleAction_ThrowBait(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gBattleStruct->safariBaitThrowCounter += Random() % 5 + 2;
    if (gBattleStruct->safariBaitThrowCounter > 6)
        gBattleStruct->safariBaitThrowCounter = 6;
    gBattleStruct->safariRockThrowCounter = 0;
    gBattleStruct->safariCatchFactor >>= 1;
    if (gBattleStruct->safariCatchFactor <= 2)
        gBattleStruct->safariCatchFactor = 3;
    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[2];
    gCurrentActionFuncId = 10;
}

static void HandleAction_ThrowRock(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    gBattleStruct->safariRockThrowCounter += Random() % 5 + 2;
    if (gBattleStruct->safariRockThrowCounter > 6)
        gBattleStruct->safariRockThrowCounter = 6;
    gBattleStruct->safariBaitThrowCounter = 0;
    gBattleStruct->safariCatchFactor <<= 1;
    if (gBattleStruct->safariCatchFactor > 20)
        gBattleStruct->safariCatchFactor = 20;
    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[1];
    gCurrentActionFuncId = 10;
}

static void HandleAction_SafariZoneRun(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    PlaySE(17);
    gCurrentTurnActionNumber = gBattlersCount;
    gBattleOutcome = 4;
}

static void HandleAction_OldManBallThrow(void)
{
    gBattlerAttacker = gBattlerByTurnOrder[gCurrentTurnActionNumber];
    gBattle_BG0_X = 0;
    gBattle_BG0_Y = 0;
    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 7; gBattleTextBuff1[2] = gBattlerAttacker; gBattleTextBuff1[3] = gBattlerPartyIndexes[gBattlerAttacker]; gBattleTextBuff1[4] = 0xFF; }
    gBattlescriptCurrInstr = gBattlescriptsForSafariActions[3];
    gCurrentActionFuncId = 10;
    gActionsByTurnOrder[1] = 12;
}

static void HandleAction_TryFinish(void)
{
    if (!HandleFaintedMonActions())
    {
        gBattleStruct->faintedActionsState = 0;
        gCurrentActionFuncId = 12;
    }
}

static void HandleAction_NothingIsFainted(void)
{
    ++gCurrentTurnActionNumber;
    gCurrentActionFuncId = gActionsByTurnOrder[gCurrentTurnActionNumber];
    gHitMarker &= ~((1 << 6) | (1 << 8) | (1 << 10)
                    | (1 << 11) | (1 << 13) | (1 << 16)
                    | (1 << 17) | (1 << 18) | (1 << 20)
                    | (1 << 25) | (1 << 4) | (1 << 14)
                    | (1 << 27) | (1 << 26));
}

static void HandleAction_ActionFinished(void)
{
    ++gCurrentTurnActionNumber;
    gCurrentActionFuncId = gActionsByTurnOrder[gCurrentTurnActionNumber];
    SpecialStatusesClear();
    gHitMarker &= ~((1 << 6) | (1 << 8) | (1 << 10)
                    | (1 << 11) | (1 << 13) | (1 << 16)
                    | (1 << 17) | (1 << 18) | (1 << 20)
                    | (1 << 25) | (1 << 4) | (1 << 14)
                    | (1 << 27) | (1 << 26));
    gCurrentMove = 0;
    gBattleMoveDamage = 0;
    gMoveResultFlags = 0;
    gBattleScripting.animTurn = 0;
    gBattleScripting.animTargetsHit = 0;
    gLastLandedMoves[gBattlerAttacker] = 0;
    gLastHitByType[gBattlerAttacker] = 0;
    gBattleStruct->dynamicMoveType = 0;
    gDynamicBasePower = 0;
    gBattleScripting.moveendState = 0;
    gBattleCommunication[3] = 0;
    gBattleCommunication[4] = 0;
    gBattleScripting.multihitMoveEffect = 0;
    gBattleResources->battleScriptsStack->size = 0;
}
