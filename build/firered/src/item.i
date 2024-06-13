# 0 "src/item.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/item.c"
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
# 2 "src/item.c" 2
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
# 3 "src/item.c" 2
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
# 4 "src/item.c" 2
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
# 5 "src/item.c" 2
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
# 6 "src/item.c" 2
# 1 "include/item_use.h" 1





void Task_ItemUse_CloseMessageBoxAndReturnToField_VsSeeker(u8);
void ItemUse_SetQuestLogEvent(u8, struct Pokemon *, u16, u16);

void FieldUseFunc_Mail(u8 taskId);
void FieldUseFunc_Bike(u8 taskId);
void FieldUseFunc_Rod(u8 taskId);
void FieldUseFunc_CoinCase(u8 taskId);
void FieldUseFunc_PowderJar(u8 taskId);
void FieldUseFunc_PokeFlute(u8 taskId);
void FieldUseFunc_Medicine(u8 taskId);
void FieldUseFunc_Ether(u8 taskId);
void FieldUseFunc_PpUp(u8 taskId);
void FieldUseFunc_RareCandy(u8 taskId);
void FieldUseFunc_EvoItem(u8 taskId);
void FieldUseFunc_SacredAsh(u8 taskId);
void FieldUseFunc_TmCase(u8 taskId);
void FieldUseFunc_BerryPouch(u8 taskId);
void BattleUseFunc_BerryPouch(u8 taskId);
void FieldUseFunc_TeachyTv(u8 taskId);
void FieldUseFunc_Repel(u8 taskId);
void FieldUseFunc_BlackWhiteFlute(u8 taskId);
void FieldUseFunc_TownMap(u8 taskId);
void FieldUseFunc_FameChecker(u8 taskId);
void FieldUseFunc_VsSeeker(u8 taskId);
void BattleUseFunc_PokeBallEtc(u8 taskId);
void BattleUseFunc_PokeFlute(u8 taskId);
void BattleUseFunc_StatBooster(u8 taskId);
void BattleUseFunc_Medicine(u8 taskId);
void BattleUseFunc_Ether(u8 taskId);
void BattleUseFunc_PokeDoll(u8 taskId);
void FieldUseFunc_OakStopsYou(u8 taskId);
void ItemUseOutOfBattle_EscapeRope(u8 taskId);
void ItemUseOutOfBattle_EnigmaBerry(u8 taskId);
void ItemUseInBattle_EnigmaBerry(u8 taskId);
void ItemUseOutOfBattle_Itemfinder(u8 taskId);
void Task_UseDigEscapeRopeOnField(u8 taskId);
u8 CanUseEscapeRopeOnCurrMap(void);
u8 CheckIfItemIsTMHMOrEvolutionStone(u16 itemId);
# 7 "src/item.c" 2
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
# 8 "src/item.c" 2
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
# 1 "include/constants/battle.h" 1
# 9 "include/quest_log.h" 2
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
# 9 "src/item.c" 2
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
# 10 "src/item.c" 2
# 1 "include/constants/hold_effects.h" 1
# 11 "src/item.c" 2
# 1 "include/constants/items.h" 1
# 12 "src/item.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 1 "include/constants/map_types.h" 1
# 6 "include/constants/maps.h" 2
# 13 "src/item.c" 2

__attribute__((section("ewram_data"))) struct BagPocket gBagPockets[5] = {};

void SortAndCompactBagPocket(struct BagPocket * pocket);


# 1 "src/data/items.h" 1




const u8 gItemDescription_ITEM_MASTER_BALL[] = _("The best BALL with the ultimate\nperformance. It will catch any wild\nPOKéMON without fail.");const u8 gItemDescription_ITEM_ULTRA_BALL[] = _("A very high-grade BALL that offers\na higher POKéMON catch rate than\na GREAT BALL.");const u8 gItemDescription_ITEM_GREAT_BALL[] = _("A good, quality BALL that offers\na higher POKéMON catch rate than\na standard POKé BALL.");const u8 gItemDescription_ITEM_POKE_BALL[] = _("A BALL thrown to catch a wild\nPOKéMON. It is designed in a\ncapsule style.");const u8 gItemDescription_ITEM_SAFARI_BALL[] = _("A special BALL that is used only in\nthe SAFARI ZONE. It is finished in\na camouflage pattern.");const u8 gItemDescription_ITEM_NET_BALL[] = _("A somewhat different BALL that\nworks especially well on WATER- and\nBUG-type POKéMON.");const u8 gItemDescription_ITEM_DIVE_BALL[] = _("A somewhat different BALL that\nworks especially well on POKéMON\ndeep in the sea.");const u8 gItemDescription_ITEM_NEST_BALL[] = _("A somewhat different BALL that\nworks especially well on weaker\nPOKéMON.");const u8 gItemDescription_ITEM_REPEAT_BALL[] = _("A somewhat different BALL that\nworks especially well on POKéMON\ncaught before.");const u8 gItemDescription_ITEM_TIMER_BALL[] = _("A somewhat different BALL that\nbecomes progressively better the\nmore turns there are in a battle.");const u8 gItemDescription_ITEM_LUXURY_BALL[] = _("A comfortable BALL that makes a\ncaptured wild POKéMON quickly grow\nfriendly.");const u8 gItemDescription_ITEM_PREMIER_BALL[] = _("A rare BALL that has been\nspecially made to commemorate an\nevent of some sort.");const u8 gItemDescription_ITEM_POTION[] = _("A spray-type wound medicine.\nIt restores the HP of one POKéMON\nby 20 points.");const u8 gItemDescription_ITEM_ANTIDOTE[] = _("A spray-type medicine.\nIt heals one POKéMON from a\npoisoning.");const u8 gItemDescription_ITEM_BURN_HEAL[] = _("A spray-type medicine.\nIt heals one POKéMON of a burn.");const u8 gItemDescription_ITEM_ICE_HEAL[] = _("A spray-type medicine.\nIt defrosts a frozen POKéMON.");const u8 gItemDescription_ITEM_AWAKENING[] = _("A spray-type medicine.\nIt awakens a sleeping POKéMON.");const u8 gItemDescription_ITEM_PARALYZE_HEAL[] = _("A spray-type medicine.\nIt heals one POKéMON from\nparalysis.");const u8 gItemDescription_ITEM_FULL_RESTORE[] = _("A medicine that fully restores the\nHP and heals any status problems\nof one POKéMON.");const u8 gItemDescription_ITEM_MAX_POTION[] = _("A spray-type wound medicine.\nIt fully restores the HP of one\nPOKéMON.");const u8 gItemDescription_ITEM_HYPER_POTION[] = _("A spray-type wound medicine.\nIt restores the HP of one POKéMON\nby 200 points.");const u8 gItemDescription_ITEM_SUPER_POTION[] = _("A spray-type wound medicine.\nIt restores the HP of one POKéMON\nby 50 points.");const u8 gItemDescription_ITEM_FULL_HEAL[] = _("A spray-type medicine.\nIt heals all the status problems of\none POKéMON.");const u8 gItemDescription_ITEM_REVIVE[] = _("A medicine that revives a fainted\nPOKéMON, restoring HP by half the\nmaximum amount.");const u8 gItemDescription_ITEM_MAX_REVIVE[] = _("A medicine that revives a fainted\nPOKéMON, restoring HP fully.");const u8 gItemDescription_ITEM_FRESH_WATER[] = _("Water with a high mineral content.\nIt restores the HP of one POKéMON\nby 50 points.");const u8 gItemDescription_ITEM_SODA_POP[] = _("A fizzy soda drink.\nIt restores the HP of one POKéMON\nby 60 points.");const u8 gItemDescription_ITEM_LEMONADE[] = _("A very sweet drink.\nIt restores the HP of one POKéMON\nby 80 points.");const u8 gItemDescription_ITEM_MOOMOO_MILK[] = _("Highly nutritious milk.\nIt restores the HP of one POKéMON\nby 100 points.");const u8 gItemDescription_ITEM_ENERGY_POWDER[] = _("A very bitter medicine powder.\nIt restores the HP of one POKéMON\nby 50 points.");const u8 gItemDescription_ITEM_ENERGY_ROOT[] = _("A very bitter root.\nIt restores the HP of one POKéMON\nby 200 points.");const u8 gItemDescription_ITEM_HEAL_POWDER[] = _("A very bitter medicine powder.\nIt heals all the status problems of\none POKéMON.");const u8 gItemDescription_ITEM_REVIVAL_HERB[] = _("A very bitter medicinal herb.\nIt revives a fainted POKéMON,\nrestoring HP fully.");const u8 gItemDescription_ITEM_ETHER[] = _("Restores a selected move's PP by\n10 points for one POKéMON.");const u8 gItemDescription_ITEM_MAX_ETHER[] = _("Fully restores a selected move's PP\nfor one POKéMON.");const u8 gItemDescription_ITEM_ELIXIR[] = _("Restores the PP of all moves for\none POKéMON by 10 points each.");const u8 gItemDescription_ITEM_MAX_ELIXIR[] = _("Fully restores the PP of all moves\nfor one POKéMON.");const u8 gItemDescription_ITEM_LAVA_COOKIE[] = _("LAVARIDGE TOWN's local specialty.\nIt heals all the status problems of\none POKéMON.");const u8 gItemDescription_ITEM_BLUE_FLUTE[] = _("A blue glass flute that awakens\na sleeping POKéMON.");const u8 gItemDescription_ITEM_YELLOW_FLUTE[] = _("A yellow glass flute that snaps one\nPOKéMON out of confusion.");const u8 gItemDescription_ITEM_RED_FLUTE[] = _("A red glass flute that snaps one\nPOKéMON out of infatuation.");const u8 gItemDescription_ITEM_BLACK_FLUTE[] = _("A black glass flute.\nWhen blown, it makes wild POKéMON\nless likely to appear.");const u8 gItemDescription_ITEM_WHITE_FLUTE[] = _("A white glass flute.\nWhen blown, it makes wild POKéMON\nmore likely to appear.");const u8 gItemDescription_ITEM_BERRY_JUICE[] = _("A 100% pure juice.\nIt restores the HP of one POKéMON\nby 20 points.");const u8 gItemDescription_ITEM_SACRED_ASH[] = _("Revives all fainted POKéMON,\nrestoring HP fully.");const u8 gItemDescription_ITEM_SHOAL_SALT[] = _("Pure salt obtained from deep inside\nthe SHOAL CAVE. It is extremely\nsalty.");const u8 gItemDescription_ITEM_SHOAL_SHELL[] = _("A pretty seashell found deep inside\nthe SHOAL CAVE. It is striped in\nblue and white.");const u8 gItemDescription_ITEM_RED_SHARD[] = _("A small red shard.\nIt appears to be from some sort of\na tool made long ago.");const u8 gItemDescription_ITEM_BLUE_SHARD[] = _("A small blue shard.\nIt appears to be from some sort of\na tool made long ago.");const u8 gItemDescription_ITEM_YELLOW_SHARD[] = _("A small yellow shard.\nIt appears to be from some sort of\na tool made long ago.");const u8 gItemDescription_ITEM_GREEN_SHARD[] = _("A small green shard.\nIt appears to be from some sort of\na tool made long ago.");const u8 gItemDescription_ITEM_HP_UP[] = _("A nutritious drink for POKéMON.\nIt raises the base HP of one\nPOKéMON.");const u8 gItemDescription_ITEM_PROTEIN[] = _("A nutritious drink for POKéMON.\nIt raises the base ATTACK stat of\none POKéMON.");const u8 gItemDescription_ITEM_IRON[] = _("A nutritious drink for POKéMON.\nIt raises the base DEFENSE stat of\none POKéMON.");const u8 gItemDescription_ITEM_CARBOS[] = _("A nutritious drink for POKéMON.\nIt raises the base SPEED stat of\none POKéMON.");const u8 gItemDescription_ITEM_CALCIUM[] = _("A nutritious drink for POKéMON.\nIt raises the base SP. ATK stat\nof one POKéMON.");const u8 gItemDescription_ITEM_RARE_CANDY[] = _("A candy that is packed with energy.\nIt raises the level of a POKéMON\nby one.");const u8 gItemDescription_ITEM_PP_UP[] = _("Slightly raises the maximum PP of\na selected move for one POKéMON.");const u8 gItemDescription_ITEM_ZINC[] = _("A nutritious drink for POKéMON.\nIt raises the base SP. DEF stat\nof one POKéMON.");const u8 gItemDescription_ITEM_PP_MAX[] = _("Raises the PP of a selected move\nto its maximum level for one\nPOKéMON.");const u8 gItemDescription_ITEM_GUARD_SPEC[] = _("An item that prevents stat reduction\namong party POKéMON for five turns\nafter use.");const u8 gItemDescription_ITEM_DIRE_HIT[] = _("Raises the critical-hit ratio of\nPOKéMON in battle. Wears off if the\nPOKéMON is withdrawn.");const u8 gItemDescription_ITEM_X_ATTACK[] = _("Raises the ATTACK stat of POKéMON\nin battle. Wears off if the POKéMON\nis withdrawn.");const u8 gItemDescription_ITEM_X_DEFEND[] = _("Raises the DEFENSE stat of POKéMON\nin battle. Wears off if the POKéMON\nis withdrawn.");const u8 gItemDescription_ITEM_X_SPEED[] = _("Raises the SPEED stat of POKéMON\nin battle. Wears off if the POKéMON\nis withdrawn.");const u8 gItemDescription_ITEM_X_ACCURACY[] = _("Raises the accuracy stat of\nPOKéMON in battle. Wears off if the\nPOKéMON is withdrawn.");const u8 gItemDescription_ITEM_X_SPECIAL[] = _("Raises the SP. ATK stat of\nPOKéMON in battle. Wears off if the\nPOKéMON is withdrawn.");const u8 gItemDescription_ITEM_POKE_DOLL[] = _("An attractive doll.\nUse it to flee from any battle with\na wild POKéMON.");const u8 gItemDescription_ITEM_FLUFFY_TAIL[] = _("An attractive item.\nUse it to flee from any battle with\na wild POKéMON.");const u8 gItemDescription_ITEM_SUPER_REPEL[] = _("Prevents weak wild POKéMON from\nappearing for 200 steps.");const u8 gItemDescription_ITEM_MAX_REPEL[] = _("Prevents weak wild POKéMON from\nappearing for 250 steps.");const u8 gItemDescription_ITEM_ESCAPE_ROPE[] = _("A long, durable rope.\nUse it to escape instantly from a\ncave or a dungeon.");const u8 gItemDescription_ITEM_REPEL[] = _("Prevents weak wild POKéMON from\nappearing for 100 steps.");const u8 gItemDescription_ITEM_SUN_STONE[] = _("A peculiar stone that makes certain\nspecies of POKéMON evolve.\nIt is as red as the sun.");const u8 gItemDescription_ITEM_MOON_STONE[] = _("A peculiar stone that makes certain\nspecies of POKéMON evolve.\nIt is as black as the night sky.");const u8 gItemDescription_ITEM_FIRE_STONE[] = _("A peculiar stone that makes certain\nspecies of POKéMON evolve.\nIt is colored orange.");const u8 gItemDescription_ITEM_THUNDER_STONE[] = _("A peculiar stone that makes certain\nspecies of POKéMON evolve.\nIt has a thunderbolt pattern.");const u8 gItemDescription_ITEM_WATER_STONE[] = _("A peculiar stone that makes certain\nspecies of POKéMON evolve.\nIt is a clear light blue.");const u8 gItemDescription_ITEM_LEAF_STONE[] = _("A peculiar stone that makes certain\nspecies of POKéMON evolve.\nIt has a leaf pattern.");const u8 gItemDescription_ITEM_TINY_MUSHROOM[] = _("A small and rare mushroom.\nIt is quite popular among certain\npeople.");const u8 gItemDescription_ITEM_BIG_MUSHROOM[] = _("A large and rare mushroom.\nIt is very popular among certain\npeople.");const u8 gItemDescription_ITEM_PEARL[] = _("A relatively small pearl that\nsparkles in a pretty silver color.\nIt can be sold cheaply.");const u8 gItemDescription_ITEM_BIG_PEARL[] = _("A quite-large pearl that sparkles\nin a pretty silver color.\nIt can be sold at a high price.");const u8 gItemDescription_ITEM_STARDUST[] = _("A pretty red sand with a loose,\nsilky feel.\nIt can be sold at a high price.");const u8 gItemDescription_ITEM_STAR_PIECE[] = _("A shard of a pretty gem that\nsparkles in a red color.\nIt can be sold at a high price.");const u8 gItemDescription_ITEM_NUGGET[] = _("A nugget of pure gold that gives\noff a lustrous gleam.\nIt can be sold at a high price.");const u8 gItemDescription_ITEM_HEART_SCALE[] = _("A pretty, heart-shaped scale that\nis extremely rare. It glows faintly\nin the colors of a rainbow.");const u8 gItemDescription_ITEM_ORANGE_MAIL[] = _("A piece of MAIL featuring a cute\nZIGZAGOON print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_HARBOR_MAIL[] = _("A piece of MAIL featuring a cute\nWINGULL print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_GLITTER_MAIL[] = _("A piece of MAIL featuring a cute\nPIKACHU print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_MECH_MAIL[] = _("A piece of MAIL featuring a cute\nMAGNEMITE print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_WOOD_MAIL[] = _("A piece of MAIL featuring a cute\nSLAKOTH print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_WAVE_MAIL[] = _("A piece of MAIL featuring a cute\nWAILMER print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_BEAD_MAIL[] = _("A piece of MAIL to be held by a\nPOKéMON. It will bear the print of\nthe POKéMON holding it.");const u8 gItemDescription_ITEM_SHADOW_MAIL[] = _("A piece of MAIL featuring a cute\nDUSKULL print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_TROPIC_MAIL[] = _("A piece of MAIL featuring a cute\nBELLOSSOM print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_DREAM_MAIL[] = _("A piece of MAIL to be held by a\nPOKéMON. It will bear the print of\nthe POKéMON holding it.");const u8 gItemDescription_ITEM_FAB_MAIL[] = _("A piece of MAIL featuring a\ngorgeous, extravagant print.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_RETRO_MAIL[] = _("A piece of MAIL featuring a print\nof three cute POKéMON.\nIt is to be held by a POKéMON.");const u8 gItemDescription_ITEM_CHERI_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to heal paralysis.");const u8 gItemDescription_ITEM_CHESTO_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to wake up.");const u8 gItemDescription_ITEM_PECHA_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to cure poison.");const u8 gItemDescription_ITEM_RAWST_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to heal a burn.");const u8 gItemDescription_ITEM_ASPEAR_BERRY[] = _("When held by a POKéMON, it will be\nused in battle for defrosting.");const u8 gItemDescription_ITEM_LEPPA_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to restore 10 PP.");const u8 gItemDescription_ITEM_ORAN_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to restore 10 HP.");const u8 gItemDescription_ITEM_PERSIM_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to lift confusion.");const u8 gItemDescription_ITEM_LUM_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to heal any problem.");const u8 gItemDescription_ITEM_SITRUS_BERRY[] = _("When held by a POKéMON, it will be\nused in battle to restore 30 HP.");const u8 gItemDescription_ITEM_FIGY_BERRY[] = _("A hold item that restores HP but\nmay cause confusion when used.");const u8 gItemDescription_ITEM_WIKI_BERRY[] = _("A hold item that restores HP but\nmay cause confusion when used.");const u8 gItemDescription_ITEM_MAGO_BERRY[] = _("A hold item that restores HP but\nmay cause confusion when used.");const u8 gItemDescription_ITEM_AGUAV_BERRY[] = _("A hold item that restores HP but\nmay cause confusion when used.");const u8 gItemDescription_ITEM_IAPAPA_BERRY[] = _("A hold item that restores HP but\nmay cause confusion when used.");const u8 gItemDescription_ITEM_RAZZ_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_BLUK_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_NANAB_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_WEPEAR_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_PINAP_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_POMEG_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_KELPSY_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_QUALOT_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_HONDEW_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_GREPA_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_TAMATO_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_CORNN_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_MAGOST_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_RABUTA_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_NOMEL_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_SPELON_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_PAMTRE_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_WATMEL_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_DURIN_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_BELUE_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_LIECHI_BERRY[] = _("When held by a POKéMON, it raises\nthe ATTACK stat in a pinch.");const u8 gItemDescription_ITEM_GANLON_BERRY[] = _("When held by a POKéMON, it raises\nthe DEFENSE stat in a pinch.");const u8 gItemDescription_ITEM_SALAC_BERRY[] = _("When held by a POKéMON, it raises\nthe SPEED stat in a pinch.");const u8 gItemDescription_ITEM_PETAYA_BERRY[] = _("When held by a POKéMON, it raises\nthe SP. ATK stat in a pinch.");const u8 gItemDescription_ITEM_APICOT_BERRY[] = _("When held by a POKéMON, it raises\nthe SP. DEF stat in a pinch.");const u8 gItemDescription_ITEM_LANSAT_BERRY[] = _("When held by a POKéMON, it raises\nthe critical-hit ratio in a pinch.");const u8 gItemDescription_ITEM_STARF_BERRY[] = _("When held by a POKéMON, it sharply\nraises one stat in a pinch.");const u8 gItemDescription_ITEM_ENIGMA_BERRY[] = _("Can be ground up into a powder as\nan ingredient for medicine.");const u8 gItemDescription_ITEM_BRIGHT_POWDER[] = _("An item to be held by a POKéMON.\nIt casts a tricky glare that lowers\nthe opponent's accuracy.");const u8 gItemDescription_ITEM_WHITE_HERB[] = _("An item to be held by a POKéMON.\nIt restores any lowered stat in\nbattle. It can be used only once.");const u8 gItemDescription_ITEM_MACHO_BRACE[] = _("An item to be held by a POKéMON.\nIt promotes strong growth but\nlowers SPEED while it is held.");const u8 gItemDescription_ITEM_EXP_SHARE[] = _("An item to be held by a POKéMON.\nThe holder gets a share of EXP.\npoints without having to battle.");const u8 gItemDescription_ITEM_QUICK_CLAW[] = _("An item to be held by a POKéMON.\nA light and sharp claw. The holder\nmay be able to strike first.");const u8 gItemDescription_ITEM_SOOTHE_BELL[] = _("An item to be held by a POKéMON.\nA bell with a comforting chime that\nmakes the holder calm and friendly.");const u8 gItemDescription_ITEM_MENTAL_HERB[] = _("An item to be held by a POKéMON.\nIt snaps the holder out of\ninfatuation. It can be used once.");const u8 gItemDescription_ITEM_CHOICE_BAND[] = _("An item to be held by a POKéMON.\nIt powers up one move, which\nbecomes the only usable one.");const u8 gItemDescription_ITEM_KINGS_ROCK[] = _("An item to be held by a POKéMON.\nIt may cause the foe to flinch\nupon taking damage.");const u8 gItemDescription_ITEM_SILVER_POWDER[] = _("An item to be held by a POKéMON.\nA shiny silver powder that boosts\nthe power of BUG-type moves.");const u8 gItemDescription_ITEM_AMULET_COIN[] = _("An item to be held by a POKéMON.\nIt doubles the battle money if the\nholding POKéMON takes part.");const u8 gItemDescription_ITEM_CLEANSE_TAG[] = _("An item to be held by a POKéMON.\nIt repels wild POKéMON if the\nholder is first in the party.");const u8 gItemDescription_ITEM_SOUL_DEW[] = _("An orb to be held by a LATIOS or\nLATIAS. It raises the SP. ATK\nand SP. DEF stats.");const u8 gItemDescription_ITEM_DEEP_SEA_TOOTH[] = _("An item to be held by a POKéMON.\nA fang that gleams a sharp silver.\nIt raises the SP. ATK stat.");const u8 gItemDescription_ITEM_DEEP_SEA_SCALE[] = _("An item to be held by a POKéMON.\nA scale that shines a faint pink.\nIt raises the SP. DEF stat.");const u8 gItemDescription_ITEM_SMOKE_BALL[] = _("An item to be held by a POKéMON.\nThe holding POKéMON can flee from\nany wild POKéMON for sure.");const u8 gItemDescription_ITEM_EVERSTONE[] = _("An item to be held by a POKéMON.\nThe holding POKéMON is prevented\nfrom evolving.");const u8 gItemDescription_ITEM_FOCUS_BAND[] = _("An item to be held by a POKéMON.\nThe holding POKéMON may endure an\nattack, leaving just 1 HP.");const u8 gItemDescription_ITEM_LUCKY_EGG[] = _("An item to be held by a POKéMON.\nAn egg filled with happiness that\nearns extra EXP. points in battle.");const u8 gItemDescription_ITEM_SCOPE_LENS[] = _("An item to be held by a POKéMON.\nA lens that boosts the critical-hit\nratio of the holding POKéMON.");const u8 gItemDescription_ITEM_METAL_COAT[] = _("An item to be held by a POKéMON.\nA special metallic film that boosts\nthe power of STEEL-type moves.");const u8 gItemDescription_ITEM_LEFTOVERS[] = _("An item to be held by a POKéMON.\nThe holding POKéMON gradually\nregains HP during battle.");const u8 gItemDescription_ITEM_DRAGON_SCALE[] = _("A thick and tough scale.\nA DRAGON-type POKéMON may be\nholding it.");const u8 gItemDescription_ITEM_LIGHT_BALL[] = _("An orb to be held by a PIKACHU\nthat raises the SP. ATK stat.\nTouching it may cause a shock.");const u8 gItemDescription_ITEM_SOFT_SAND[] = _("An item to be held by a POKéMON.\nA loose, silky sand that boosts the\npower of GROUND-type moves.");const u8 gItemDescription_ITEM_HARD_STONE[] = _("An item to be held by a POKéMON.\nAn unbreakable stone that boosts\nthe power of ROCK-type moves.");const u8 gItemDescription_ITEM_MIRACLE_SEED[] = _("An item to be held by a POKéMON.\nA seed imbued with life that boosts\nthe power of GRASS-type moves.");const u8 gItemDescription_ITEM_BLACK_GLASSES[] = _("An item to be held by a POKéMON.\nA shady-looking pair of glasses\nthat boosts DARK-type moves.");const u8 gItemDescription_ITEM_BLACK_BELT[] = _("An item to be held by a POKéMON.\nA belt that boosts determination\nand FIGHTING-type moves.");const u8 gItemDescription_ITEM_MAGNET[] = _("An item to be held by a POKéMON.\nA powerful magnet that boosts the\npower of ELECTRIC-type moves.");const u8 gItemDescription_ITEM_MYSTIC_WATER[] = _("An item to be held by a POKéMON.\nA teardrop-shaped gem that boosts\nthe power of WATER-type moves.");const u8 gItemDescription_ITEM_SHARP_BEAK[] = _("An item to be held by a POKéMON.\nA long, sharp beak that boosts the\npower of FLYING-type moves.");const u8 gItemDescription_ITEM_POISON_BARB[] = _("An item to be held by a POKéMON.\nA small, poisonous barb that boosts\nthe power of POISON-type moves.");const u8 gItemDescription_ITEM_NEVER_MELT_ICE[] = _("An item to be held by a POKéMON.\nA piece of ice that repels heat\nand boosts ICE-type moves.");const u8 gItemDescription_ITEM_SPELL_TAG[] = _("An item to be held by a POKéMON.\nA sinister, eerie tag that boosts\nGHOST-type moves.");const u8 gItemDescription_ITEM_TWISTED_SPOON[] = _("An item to be held by a POKéMON.\nA spoon imbued with telekinetic\npower boosts PSYCHIC-type moves.");const u8 gItemDescription_ITEM_CHARCOAL[] = _("An item to be held by a POKéMON.\nA combustible fuel that boosts the\npower of FIRE-type moves.");const u8 gItemDescription_ITEM_DRAGON_FANG[] = _("An item to be held by a POKéMON.\nA hard and sharp fang that boosts\nthe power of DRAGON-type moves.");const u8 gItemDescription_ITEM_SILK_SCARF[] = _("An item to be held by a POKéMON.\nA sumptuous scarf that boosts the\npower of NORMAL-type moves.");const u8 gItemDescription_ITEM_UP_GRADE[] = _("A transparent device filled with all\nsorts of data.\nIt is made by SILPH CO.");const u8 gItemDescription_ITEM_SHELL_BELL[] = _("An item to be held by a POKéMON.\nThe holding POKéMON regains some\nHP upon striking the foe.");const u8 gItemDescription_ITEM_SEA_INCENSE[] = _("An item to be held by a POKéMON.\nIt slightly boosts the power of\nWATER-type moves.");const u8 gItemDescription_ITEM_LAX_INCENSE[] = _("An item to be held by a POKéMON.\nIts tricky aroma slightly reduces\nthe foe's accuracy.");const u8 gItemDescription_ITEM_LUCKY_PUNCH[] = _("A glove to be held by a CHANSEY.\nIt raises CHANSEY's critical-hit\nratio.");const u8 gItemDescription_ITEM_METAL_POWDER[] = _("A fine, hard powder to be held by\na DITTO.\nIt raises DITTO's DEFENSE stat.");const u8 gItemDescription_ITEM_THICK_CLUB[] = _("A hard bone of some sort to be\nheld by a CUBONE or MAROWAK.\nIt raises the ATTACK stat.");const u8 gItemDescription_ITEM_STICK[] = _("A stick of leek to be held by a\nFARFETCH'D. It raises FARFETCH'D's\ncritical-hit ratio.");const u8 gItemDescription_ITEM_RED_SCARF[] = _("An item to be held by a POKéMON.\nIt boosts the holding POKéMON's\nCOOL condition in CONTESTS.");const u8 gItemDescription_ITEM_BLUE_SCARF[] = _("An item to be held by a POKéMON.\nIt boosts the holding POKéMON's\nBEAUTY condition in CONTESTS.");const u8 gItemDescription_ITEM_PINK_SCARF[] = _("An item to be held by a POKéMON.\nIt boosts the holding POKéMON's\nCUTE condition in CONTESTS.");const u8 gItemDescription_ITEM_GREEN_SCARF[] = _("An item to be held by a POKéMON.\nIt boosts the holding POKéMON's\nSMART condition in CONTESTS.");const u8 gItemDescription_ITEM_YELLOW_SCARF[] = _("An item to be held by a POKéMON.\nIt boosts the holding POKéMON's\nTOUGH condition in CONTESTS.");const u8 gItemDescription_ITEM_MACH_BIKE[] = _("A folding bicycle that is at least\ntwice as fast as walking.");const u8 gItemDescription_ITEM_COIN_CASE[] = _("A case for holding COINS obtained\nat the GAME CORNER.\nIt holds up to 9,999 COINS.");const u8 gItemDescription_ITEM_ITEMFINDER[] = _("A device used for finding items.\nIf there is a hidden item nearby\nwhen it is used, it emits a signal.");const u8 gItemDescription_ITEM_OLD_ROD[] = _("An old and beat-up fishing rod.\nUse it by any body of water to \nfish for wild POKéMON.");const u8 gItemDescription_ITEM_GOOD_ROD[] = _("A new, good-quality fishing rod.\nUse it by any body of water to \nfish for wild POKéMON.");const u8 gItemDescription_ITEM_SUPER_ROD[] = _("An awesome, high-tech fishing rod.\nUse it by any body of water to fish\nfor wild POKéMON.");const u8 gItemDescription_ITEM_SS_TICKET[] = _("The ticket required for sailing on\nthe ferry S.S. ANNE.\nIt has a drawing of a ship on it.");const u8 gItemDescription_ITEM_CONTEST_PASS[] = _("The pass required for entering\nPOKéMON CONTESTS. It has a\ndrawing of an award ribbon on it.");const u8 gItemDescription_ITEM_WAILMER_PAIL[] = _("A nifty watering pail.\nUse it to promote strong growth in\nBERRIES planted in soft soil.");const u8 gItemDescription_ITEM_DEVON_GOODS[] = _("A package that contains mechanical\nparts of some sort made by the\nDEVON CORPORATION.");const u8 gItemDescription_ITEM_SOOT_SACK[] = _("A sack used to collect volcanic\nash automatically during walks\nover deep ash.");const u8 gItemDescription_ITEM_BASEMENT_KEY[] = _("The key to NEW MAUVILLE, which\nwas constructed beneath MAUVILLE\nCITY.");const u8 gItemDescription_ITEM_ACRO_BIKE[] = _("A folding bicycle that is capable\nof stunts like jumps and wheelies.");const u8 gItemDescription_ITEM_POKEBLOCK_CASE[] = _("A case for holding {POKEBLOCK}S made\nwith a BERRY BLENDER. It releases\none {POKEBLOCK} when shaken.");const u8 gItemDescription_ITEM_LETTER[] = _("An extremely important letter to\nSTEVEN from the PRESIDENT of the\nDEVON CORPORATION.");const u8 gItemDescription_ITEM_EON_TICKET[] = _("The ticket required for sailing on a\nferry to a distant southern island.\nIt features a drawing of an island.");const u8 gItemDescription_ITEM_RED_ORB[] = _("An orb that glows red.\nIt is said to contain an incredible\npower from ancient times.");const u8 gItemDescription_ITEM_BLUE_ORB[] = _("An orb that glows blue.\nIt is said to contain an incredible\npower from ancient times.");const u8 gItemDescription_ITEM_SCANNER[] = _("A device used to search for\nlife-forms in water.\nIt looks too difficult to use.");const u8 gItemDescription_ITEM_GO_GOGGLES[] = _("A pair of protective goggles.\nThey enable a TRAINER to travel\nthrough even desert sandstorms.");const u8 gItemDescription_ITEM_METEORITE[] = _("A meteorite that fell from space\nonto MT. MOON long ago.\nIt is very lumpy and hard.");const u8 gItemDescription_ITEM_ROOM_1_KEY[] = _("A key that opens the door to Room\n1 inside the ABANDONED SHIP.\nIt is old and looks easily broken.");const u8 gItemDescription_ITEM_ROOM_2_KEY[] = _("A key that opens the door to Room\n2 inside the ABANDONED SHIP.\nIt is old and looks easily broken.");const u8 gItemDescription_ITEM_ROOM_4_KEY[] = _("A key that opens the door to Room\n4 inside the ABANDONED SHIP.\nIt is old and looks easily broken.");const u8 gItemDescription_ITEM_ROOM_6_KEY[] = _("A key that opens the door to Room\n6 inside the ABANDONED SHIP.\nIt is old and looks easily broken.");const u8 gItemDescription_ITEM_STORAGE_KEY[] = _("A key that opens the storage hold\ninside the ABANDONED SHIP.\nIt is old and looks easily broken.");const u8 gItemDescription_ITEM_ROOT_FOSSIL[] = _("A fossil of an ancient, seafloor-\ndwelling POKéMON. It appears to be\npart of a plant root.");const u8 gItemDescription_ITEM_CLAW_FOSSIL[] = _("A fossil of an ancient, seafloor-\ndwelling POKéMON. It appears to be\npart of a claw.");const u8 gItemDescription_ITEM_DEVON_SCOPE[] = _("A scope that signals the presence\nof any unseeable POKéMON.\nIt is made by the DEVON CORP.");extern const u8 gMoveDescription_FocusPunch[];
const u8 gItemDescription_ITEM_TM01[] = _("An extremely powerful attack.\nHowever, if the user is hit before\nusing the move, they will flinch.");extern const u8 gMoveDescription_DragonClaw[];
const u8 gItemDescription_ITEM_TM02[] = _("Sharp, huge claws hook and slash\nthe foe quickly and with great\npower.");extern const u8 gMoveDescription_WaterPulse[];
const u8 gItemDescription_ITEM_TM03[] = _("The foe is hit with a pulsing blast\nof water. It may also confuse the\ntarget.");extern const u8 gMoveDescription_CalmMind[];
const u8 gItemDescription_ITEM_TM04[] = _("The user calms its spirit and\nfocuses its mind to raise its\nSP. ATK and SP. DEF stats.");extern const u8 gMoveDescription_Roar[];
const u8 gItemDescription_ITEM_TM05[] = _("A savage roar that causes the foe\nto switch out of battle. In the\nwild, ROAR ends the battle.");extern const u8 gMoveDescription_Toxic[];
const u8 gItemDescription_ITEM_TM06[] = _("A move that leaves the foe badly\npoisoned. Its poison damage worsens\nevery turn.");extern const u8 gMoveDescription_Hail[];
const u8 gItemDescription_ITEM_TM07[] = _("Summons a hailstorm that lasts for\nfive turns. The hailstorm damages\nall types except the ICE type.");extern const u8 gMoveDescription_BulkUp[];
const u8 gItemDescription_ITEM_TM08[] = _("The user tightens all its muscles\nand bulks up, boosting both its\nATTACK and DEFENSE stats.");extern const u8 gMoveDescription_BulletSeed[];
const u8 gItemDescription_ITEM_TM09[] = _("The user shoots seeds at the foe\nin rapid succession. Two to five\nseeds are shot at once.");extern const u8 gMoveDescription_HiddenPower[];
const u8 gItemDescription_ITEM_TM10[] = _("A variable move that changes type\nand power depending on the POKéMON\nusing it.");extern const u8 gMoveDescription_SunnyDay[];
const u8 gItemDescription_ITEM_TM11[] = _("The weather is turned sunny for\nfive turns. Over that time, FIRE-\ntype moves are powered up.");extern const u8 gMoveDescription_Taunt[];
const u8 gItemDescription_ITEM_TM12[] = _("A taunted foe may become enraged.\nIt will then only be able to use\nattack moves.");extern const u8 gMoveDescription_IceBeam[];
const u8 gItemDescription_ITEM_TM13[] = _("An icy-cold beam is shot at the\nfoe. It may leave the target\nfrozen.");extern const u8 gMoveDescription_Blizzard[];
const u8 gItemDescription_ITEM_TM14[] = _("A vicious snow-and-wind attack that\nstrikes all foes in battle. It may\ncause freezing.");extern const u8 gMoveDescription_HyperBeam[];
const u8 gItemDescription_ITEM_TM15[] = _("A harsh attack that inflicts severe\ndamage on the foe. However, the\nuser must rest the next turn.");extern const u8 gMoveDescription_LightScreen[];
const u8 gItemDescription_ITEM_TM16[] = _("A wall of light is created over\nfive turns. It reduces damage from\nSP. ATK attacks.");extern const u8 gMoveDescription_Protect[];
const u8 gItemDescription_ITEM_TM17[] = _("The user is completely protected\nfrom attack in the turn it is used.\nIt may fail if used in succession.");extern const u8 gMoveDescription_RainDance[];
const u8 gItemDescription_ITEM_TM18[] = _("A heavy rain is summoned for five\nturns. Over that time, WATER-type\nmoves are powered up.");extern const u8 gMoveDescription_GigaDrain[];
const u8 gItemDescription_ITEM_TM19[] = _("The user strikes the foe with\ntentacles or roots, stealing the\ntarget's HP and healing itself.");extern const u8 gMoveDescription_Safeguard[];
const u8 gItemDescription_ITEM_TM20[] = _("Protects the party with a shield\nagainst all status problems over\nfive turns.");extern const u8 gMoveDescription_Frustration[];
const u8 gItemDescription_ITEM_TM21[] = _("This attack move grows more\npowerful the more the POKéMON\ndislikes its TRAINER.");extern const u8 gMoveDescription_SolarBeam[];
const u8 gItemDescription_ITEM_TM22[] = _("A 2-turn attack that uses the first\nturn for absorbing sunlight, then\nblasting the foe in the next turn.");extern const u8 gMoveDescription_IronTail[];
const u8 gItemDescription_ITEM_TM23[] = _("The foe is slammed with a sturdy\ntail of steel. It may lower the\ntarget's DEFENSE stat.");extern const u8 gMoveDescription_Thunderbolt[];
const u8 gItemDescription_ITEM_TM24[] = _("A massive jolt of electricity is\nlaunched at the foe. It may cause\nparalysis.");extern const u8 gMoveDescription_Thunder[];
const u8 gItemDescription_ITEM_TM25[] = _("Strikes the foe with a huge\nthunderbolt. It may cause\nparalysis.");extern const u8 gMoveDescription_Earthquake[];
const u8 gItemDescription_ITEM_TM26[] = _("Causes an earthquake that strikes\nall POKéMON in battle, excluding\nthe user.");extern const u8 gMoveDescription_Return[];
const u8 gItemDescription_ITEM_TM27[] = _("This attack move grows more\npowerful the more the POKéMON\nlikes its TRAINER.");extern const u8 gMoveDescription_Dig[];
const u8 gItemDescription_ITEM_TM28[] = _("A 2-turn attack in which the user\ndigs underground, then strikes.\nIt can be used to exit dungeons.");extern const u8 gMoveDescription_Psychic[];
const u8 gItemDescription_ITEM_TM29[] = _("A powerful blast of telekinetic\nenergy strikes the foe. It may\nlower the target's SP. DEF stat.");extern const u8 gMoveDescription_ShadowBall[];
const u8 gItemDescription_ITEM_TM30[] = _("The foe is attacked with a shadowy\nlump. It may lower the target's\nSP. DEF stat.");extern const u8 gMoveDescription_BrickBreak[];
const u8 gItemDescription_ITEM_TM31[] = _("Strikes the foe with a rock-hard\nfist, etc. It shatters barriers such\nas REFLECT and LIGHT SCREEN.");extern const u8 gMoveDescription_DoubleTeam[];
const u8 gItemDescription_ITEM_TM32[] = _("The user begins moving so quickly\nthat it creates illusory copies to\nraise its evasiveness.");extern const u8 gMoveDescription_Reflect[];
const u8 gItemDescription_ITEM_TM33[] = _("A tough barrier is put up over five\nturns. It reduces damage from\nphysical attacks over that time.");extern const u8 gMoveDescription_ShockWave[];
const u8 gItemDescription_ITEM_TM34[] = _("A rapid jolt of electricity strikes\nthe foe. This attack is impossible\nto evade.");extern const u8 gMoveDescription_Flamethrower[];
const u8 gItemDescription_ITEM_TM35[] = _("The foe is roasted with a heavy\nblast of fire. It may leave the\ntarget with a burn.");extern const u8 gMoveDescription_SludgeBomb[];
const u8 gItemDescription_ITEM_TM36[] = _("Toxic sludge is hurled at the foe\nwith great force. It may also\npoison the target.");extern const u8 gMoveDescription_Sandstorm[];
const u8 gItemDescription_ITEM_TM37[] = _("Summons a sandstorm that lasts for\nfive turns. It damages all types\nexcept ROCK, GROUND, and STEEL.");extern const u8 gMoveDescription_FireBlast[];
const u8 gItemDescription_ITEM_TM38[] = _("The foe is incinerated with an\nintense flame. It may leave the\ntarget with a burn.");extern const u8 gMoveDescription_RockTomb[];
const u8 gItemDescription_ITEM_TM39[] = _("Boulders are hurled at the foe.\nIt also lowers the target's SPEED\nstat if it hits.");extern const u8 gMoveDescription_AerialAce[];
const u8 gItemDescription_ITEM_TM40[] = _("An extremely fast attack against\none target. It is impossible to\nevade.");extern const u8 gMoveDescription_Torment[];
const u8 gItemDescription_ITEM_TM41[] = _("If enraged by this move, the target\nbecomes incapable of using the same\nmove twice in a row.");extern const u8 gMoveDescription_Facade[];
const u8 gItemDescription_ITEM_TM42[] = _("An attack move that becomes very\npowerful if the user is poisoned,\nburned, or paralyzed.");extern const u8 gMoveDescription_SecretPower[];
const u8 gItemDescription_ITEM_TM43[] = _("An attack move that may have an\nadditional effect depending on the\nbattle terrain.");extern const u8 gMoveDescription_Rest[];
const u8 gItemDescription_ITEM_TM44[] = _("A move that makes the user fall\nasleep over two turns to restore HP\nand heal any status problems.");extern const u8 gMoveDescription_Attract[];
const u8 gItemDescription_ITEM_TM45[] = _("The foe, if it is the opposite\ngender as the user, becomes\ninfatuated and may not attack.");extern const u8 gMoveDescription_Thief[];
const u8 gItemDescription_ITEM_TM46[] = _("An attack that gives the user an\nopportunity to steal the foe's hold\nitem.");extern const u8 gMoveDescription_SteelWing[];
const u8 gItemDescription_ITEM_TM47[] = _("The foe is struck with steel-hard\nwings. It may also raise the user's\nDEFENSE stat.");extern const u8 gMoveDescription_SkillSwap[];
const u8 gItemDescription_ITEM_TM48[] = _("A special power is transmitted to\nthe foe, causing it to switch\nabilities with the user.");extern const u8 gMoveDescription_Snatch[];
const u8 gItemDescription_ITEM_TM49[] = _("A move that steals the effects of\nany status-changing or healing move\nthat the foe tries to use.");extern const u8 gMoveDescription_Overheat[];
const u8 gItemDescription_ITEM_TM50[] = _("A maximum-power attack of great\nferocity, but one that also sharply\nreduces the user's SP. ATK stat.");extern const u8 gMoveDescription_Cut[];
const u8 gItemDescription_ITEM_HM01[] = _("Attacks the foe with sharp blades\nor claws. It can also cut down thin\ntrees and grass outside of battle.");extern const u8 gMoveDescription_Fly[];
const u8 gItemDescription_ITEM_HM02[] = _("The user flies up on the first turn,\nthen attacks next turn. It can be\nused to fly to any known town.");extern const u8 gMoveDescription_Surf[];
const u8 gItemDescription_ITEM_HM03[] = _("Creates a huge wave, then crashes\nit down on the foe. It can be used\nfor traveling on water.");extern const u8 gMoveDescription_Strength[];
const u8 gItemDescription_ITEM_HM04[] = _("The user builds enormous power,\nthen slams the foe. It can be used\nfor moving large, round boulders.");extern const u8 gMoveDescription_Flash[];
const u8 gItemDescription_ITEM_HM05[] = _("Looses a powerful blast of light\nthat reduces the foe's accuracy.\nIt also lights up dark caves.");extern const u8 gMoveDescription_RockSmash[];
const u8 gItemDescription_ITEM_HM06[] = _("Hits the foe with a rock-crushingly\ntough attack. It can smash cracked\nboulders.");extern const u8 gMoveDescription_Waterfall[];
const u8 gItemDescription_ITEM_HM07[] = _("A powerful charge attack. It can\nbe used for climbing a torrential\nwaterfall.");extern const u8 gMoveDescription_Dive[];
const u8 gItemDescription_ITEM_HM08[] = _("A 2-turn attack in which the user\ndives underwater on the first turn,\nthen strikes in the next turn.");const u8 gItemDescription_ITEM_OAKS_PARCEL[] = _("A parcel to be delivered to PROF.\nOAK from VIRIDIAN CITY's POKéMON\nMART.");const u8 gItemDescription_ITEM_POKE_FLUTE[] = _("A flute that is said to instantly\nawaken any POKéMON. It has a\nlovely tone.");const u8 gItemDescription_ITEM_SECRET_KEY[] = _("The key to CINNABAR ISLAND GYM's\nfront door. It is colored red and\ndecorated.");const u8 gItemDescription_ITEM_BIKE_VOUCHER[] = _("Take this voucher to the BIKE SHOP\nin CERULEAN CITY and exchange it\nfor a bicycle.");const u8 gItemDescription_ITEM_GOLD_TEETH[] = _("A set of false teeth lost by the\nSAFARI ZONE'S WARDEN. It makes his\nsmile sparkle.");const u8 gItemDescription_ITEM_OLD_AMBER[] = _("A piece of amber that contains\nthe genes of an ancient POKéMON.\nIt is clear with a reddish tint.");const u8 gItemDescription_ITEM_CARD_KEY[] = _("A card-type key that unlocks doors\nin SILPH CO.'s HEAD OFFICE in\nSAFFRON CITY.");const u8 gItemDescription_ITEM_LIFT_KEY[] = _("A key that operates the elevator\nin TEAM ROCKET's HIDEOUT.\nIt bears the TEAM ROCKET logo.");const u8 gItemDescription_ITEM_HELIX_FOSSIL[] = _("A fossil of an ancient, seafloor-\ndwelling POKéMON. It appears to be\npart of a seashell.");const u8 gItemDescription_ITEM_DOME_FOSSIL[] = _("A fossil of an ancient, seafloor-\ndwelling POKéMON. It appears to be\npart of a shell.");const u8 gItemDescription_ITEM_SILPH_SCOPE[] = _("A scope that makes unseeable\nPOKéMON visible.\nIt is made by SILPH CO.");const u8 gItemDescription_ITEM_BICYCLE[] = _("A folding bicycle that allows\nfaster movement than the RUNNING\nSHOES.");const u8 gItemDescription_ITEM_TOWN_MAP[] = _("A very convenient map that can be\nviewed anytime. It even shows your \npresent location.");const u8 gItemDescription_ITEM_VS_SEEKER[] = _("A device that indicates TRAINERS\nwho want to battle. The battery\ncharges while traveling.");const u8 gItemDescription_ITEM_FAME_CHECKER[] = _("A device that enables you to\nrecall what you've heard and seen\nabout famous people.");const u8 gItemDescription_ITEM_TM_CASE[] = _("A case that holds TMs and HMs.\nIt is attached to the BAG's\ncompartment for important items.");const u8 gItemDescription_ITEM_BERRY_POUCH[] = _("A pouch for carrying BERRIES.\nIt is attached to the BAG's\ncompartment for important items.");const u8 gItemDescription_ITEM_TEACHY_TV[] = _("A television set that is tuned to\na program with useful tips for\nnovice TRAINERS.");const u8 gItemDescription_ITEM_TRI_PASS[] = _("A pass for ferries between ONE,\nTWO, and THREE ISLAND.\nIt has a drawing of three islands.");const u8 gItemDescription_ITEM_RAINBOW_PASS[] = _("A pass for ferries between\nVERMILION and the SEVII ISLANDS.\nIt features a drawing of a rainbow.");const u8 gItemDescription_ITEM_TEA[] = _("An aromatic tea prepared by an old\nlady. It will slake even the worst\nthirst.");const u8 gItemDescription_ITEM_MYSTIC_TICKET[] = _("A ticket required to board the ship\nto NAVEL ROCK.\nIt glows with a mystic light.");const u8 gItemDescription_ITEM_AURORA_TICKET[] = _("A ticket required to board the ship\nto BIRTH ISLAND.\nIt glows beautifully.");const u8 gItemDescription_ITEM_POWDER_JAR[] = _("A jar for storing BERRY POWDER\nmade using a BERRY CRUSHER.");const u8 gItemDescription_ITEM_RUBY[] = _("An exquisitely beautiful gem that\nhas a red glow.\nIt symbolizes passion.");const u8 gItemDescription_ITEM_SAPPHIRE[] = _("An exquisitely beautiful gem that\nhas a blue glow.\nIt symbolizes honesty.");const u8 gItemDescription_ITEM_NONE[] = _("?????");

const struct Item gItems[] = {
    {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MASTER BALL"),
        .itemId = 1,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MASTER_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 0,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 0
    }, {
        .name = _("ULTRA BALL"),
        .itemId = 2,
        .price = 1200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ULTRA_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 1,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 1
    }, {
        .name = _("GREAT BALL"),
        .itemId = 3,
        .price = 600,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GREAT_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 2,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 2
    }, {
        .name = _("POKé BALL"),
        .itemId = 4,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_POKE_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 3,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 3
    }, {
        .name = _("SAFARI BALL"),
        .itemId = 5,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SAFARI_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 4,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 4
    }, {
        .name = _("NET BALL"),
        .itemId = 6,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NET_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 5,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 5
    }, {
        .name = _("DIVE BALL"),
        .itemId = 7,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DIVE_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 6,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 6
    }, {
        .name = _("NEST BALL"),
        .itemId = 8,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NEST_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 7,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 7
    }, {
        .name = _("REPEAT BALL"),
        .itemId = 9,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_REPEAT_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 8,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 8
    }, {
        .name = _("TIMER BALL"),
        .itemId = 10,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TIMER_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 9,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 9
    }, {
        .name = _("LUXURY BALL"),
        .itemId = 11,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LUXURY_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 10,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 10
    }, {
        .name = _("PREMIER BALL"),
        .itemId = 12,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PREMIER_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 3,
        .type = 11,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeBallEtc,
        .secondaryId = 11
    }, {
        .name = _("POTION"),
        .itemId = 13,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 20,
        .description = gItemDescription_ITEM_POTION,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("ANTIDOTE"),
        .itemId = 14,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ANTIDOTE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("BURN HEAL"),
        .itemId = 15,
        .price = 250,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BURN_HEAL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("ICE HEAL"),
        .itemId = 16,
        .price = 250,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ICE_HEAL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("AWAKENING"),
        .itemId = 17,
        .price = 250,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_AWAKENING,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("PARLYZ HEAL"),
        .itemId = 18,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PARALYZE_HEAL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("FULL RESTORE"),
        .itemId = 19,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 255,
        .description = gItemDescription_ITEM_FULL_RESTORE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("MAX POTION"),
        .itemId = 20,
        .price = 2500,
        .holdEffect = 0,
        .holdEffectParam = 255,
        .description = gItemDescription_ITEM_MAX_POTION,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("HYPER POTION"),
        .itemId = 21,
        .price = 1200,
        .holdEffect = 0,
        .holdEffectParam = 200,
        .description = gItemDescription_ITEM_HYPER_POTION,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("SUPER POTION"),
        .itemId = 22,
        .price = 700,
        .holdEffect = 0,
        .holdEffectParam = 50,
        .description = gItemDescription_ITEM_SUPER_POTION,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("FULL HEAL"),
        .itemId = 23,
        .price = 600,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_FULL_HEAL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("REVIVE"),
        .itemId = 24,
        .price = 1500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_REVIVE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("MAX REVIVE"),
        .itemId = 25,
        .price = 4000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MAX_REVIVE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("FRESH WATER"),
        .itemId = 26,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 50,
        .description = gItemDescription_ITEM_FRESH_WATER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("SODA POP"),
        .itemId = 27,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 60,
        .description = gItemDescription_ITEM_SODA_POP,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("LEMONADE"),
        .itemId = 28,
        .price = 350,
        .holdEffect = 0,
        .holdEffectParam = 80,
        .description = gItemDescription_ITEM_LEMONADE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("MOOMOO MILK"),
        .itemId = 29,
        .price = 500,
        .holdEffect = 0,
        .holdEffectParam = 100,
        .description = gItemDescription_ITEM_MOOMOO_MILK,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("ENERGYPOWDER"),
        .itemId = 30,
        .price = 500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ENERGY_POWDER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("ENERGY ROOT"),
        .itemId = 31,
        .price = 800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ENERGY_ROOT,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("HEAL POWDER"),
        .itemId = 32,
        .price = 450,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_HEAL_POWDER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("REVIVAL HERB"),
        .itemId = 33,
        .price = 2800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_REVIVAL_HERB,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("ETHER"),
        .itemId = 34,
        .price = 1200,
        .holdEffect = 0,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_ETHER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Ether,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Ether,
        .secondaryId = 0
    }, {
        .name = _("MAX ETHER"),
        .itemId = 35,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 255,
        .description = gItemDescription_ITEM_MAX_ETHER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Ether,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Ether,
        .secondaryId = 0
    }, {
        .name = _("ELIXIR"),
        .itemId = 36,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_ELIXIR,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Ether,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Ether,
        .secondaryId = 0
    }, {
        .name = _("MAX ELIXIR"),
        .itemId = 37,
        .price = 4500,
        .holdEffect = 0,
        .holdEffectParam = 255,
        .description = gItemDescription_ITEM_MAX_ELIXIR,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Ether,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Ether,
        .secondaryId = 0
    }, {
        .name = _("LAVA COOKIE"),
        .itemId = 38,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LAVA_COOKIE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("BLUE FLUTE"),
        .itemId = 39,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BLUE_FLUTE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("YELLOW FLUTE"),
        .itemId = 40,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_YELLOW_FLUTE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("RED FLUTE"),
        .itemId = 41,
        .price = 300,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RED_FLUTE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("BLACK FLUTE"),
        .itemId = 42,
        .price = 400,
        .holdEffect = 0,
        .holdEffectParam = 50,
        .description = gItemDescription_ITEM_BLACK_FLUTE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_BlackWhiteFlute,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("WHITE FLUTE"),
        .itemId = 43,
        .price = 500,
        .holdEffect = 0,
        .holdEffectParam = 150,
        .description = gItemDescription_ITEM_WHITE_FLUTE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_BlackWhiteFlute,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BERRY JUICE"),
        .itemId = 44,
        .price = 100,
        .holdEffect = 1,
        .holdEffectParam = 20,
        .description = gItemDescription_ITEM_BERRY_JUICE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("SACRED ASH"),
        .itemId = 45,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SACRED_ASH,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_SacredAsh,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SHOAL SALT"),
        .itemId = 46,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SHOAL_SALT,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SHOAL SHELL"),
        .itemId = 47,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SHOAL_SHELL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RED SHARD"),
        .itemId = 48,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RED_SHARD,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BLUE SHARD"),
        .itemId = 49,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BLUE_SHARD,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("YELLOW SHARD"),
        .itemId = 50,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_YELLOW_SHARD,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GREEN SHARD"),
        .itemId = 51,
        .price = 200,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GREEN_SHARD,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HP UP"),
        .itemId = 63,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_HP_UP,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PROTEIN"),
        .itemId = 64,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PROTEIN,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("IRON"),
        .itemId = 65,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_IRON,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CARBOS"),
        .itemId = 66,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CARBOS,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CALCIUM"),
        .itemId = 67,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CALCIUM,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RARE CANDY"),
        .itemId = 68,
        .price = 4800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RARE_CANDY,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_RareCandy,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PP UP"),
        .itemId = 69,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PP_UP,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_PpUp,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("ZINC"),
        .itemId = 70,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ZINC,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PP MAX"),
        .itemId = 71,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PP_MAX,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_PpUp,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GUARD SPEC."),
        .itemId = 73,
        .price = 700,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GUARD_SPEC,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_StatBooster,
        .secondaryId = 0
    }, {
        .name = _("DIRE HIT"),
        .itemId = 74,
        .price = 650,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DIRE_HIT,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_StatBooster,
        .secondaryId = 0
    }, {
        .name = _("X ATTACK"),
        .itemId = 75,
        .price = 500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_X_ATTACK,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_StatBooster,
        .secondaryId = 0
    }, {
        .name = _("X DEFEND"),
        .itemId = 76,
        .price = 550,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_X_DEFEND,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_StatBooster,
        .secondaryId = 0
    }, {
        .name = _("X SPEED"),
        .itemId = 77,
        .price = 350,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_X_SPEED,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_StatBooster,
        .secondaryId = 0
    }, {
        .name = _("X ACCURACY"),
        .itemId = 78,
        .price = 950,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_X_ACCURACY,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_StatBooster,
        .secondaryId = 0
    }, {
        .name = _("X SPECIAL"),
        .itemId = 79,
        .price = 350,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_X_SPECIAL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_StatBooster,
        .secondaryId = 0
    }, {
        .name = _("POKé DOLL"),
        .itemId = 80,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_POKE_DOLL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeDoll,
        .secondaryId = 0
    }, {
        .name = _("FLUFFY TAIL"),
        .itemId = 81,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_FLUFFY_TAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeDoll,
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SUPER REPEL"),
        .itemId = 83,
        .price = 500,
        .holdEffect = 0,
        .holdEffectParam = 200,
        .description = gItemDescription_ITEM_SUPER_REPEL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_Repel,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MAX REPEL"),
        .itemId = 84,
        .price = 700,
        .holdEffect = 0,
        .holdEffectParam = 250,
        .description = gItemDescription_ITEM_MAX_REPEL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_Repel,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("ESCAPE ROPE"),
        .itemId = 85,
        .price = 550,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ESCAPE_ROPE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = ItemUseOutOfBattle_EscapeRope,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("REPEL"),
        .itemId = 86,
        .price = 350,
        .holdEffect = 0,
        .holdEffectParam = 100,
        .description = gItemDescription_ITEM_REPEL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_Repel,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SUN STONE"),
        .itemId = 93,
        .price = 2100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SUN_STONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_EvoItem,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MOON STONE"),
        .itemId = 94,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MOON_STONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_EvoItem,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("FIRE STONE"),
        .itemId = 95,
        .price = 2100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_FIRE_STONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_EvoItem,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("THUNDERSTONE"),
        .itemId = 96,
        .price = 2100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_THUNDER_STONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_EvoItem,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("WATER STONE"),
        .itemId = 97,
        .price = 2100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_WATER_STONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_EvoItem,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LEAF STONE"),
        .itemId = 98,
        .price = 2100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LEAF_STONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_EvoItem,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TINYMUSHROOM"),
        .itemId = 103,
        .price = 500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TINY_MUSHROOM,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BIG MUSHROOM"),
        .itemId = 104,
        .price = 5000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BIG_MUSHROOM,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PEARL"),
        .itemId = 106,
        .price = 1400,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PEARL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BIG PEARL"),
        .itemId = 107,
        .price = 7500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BIG_PEARL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("STARDUST"),
        .itemId = 108,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_STARDUST,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("STAR PIECE"),
        .itemId = 109,
        .price = 9800,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_STAR_PIECE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("NUGGET"),
        .itemId = 110,
        .price = 10000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NUGGET,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HEART SCALE"),
        .itemId = 111,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_HEART_SCALE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("ORANGE MAIL"),
        .itemId = 121,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ORANGE_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HARBOR MAIL"),
        .itemId = 122,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_HARBOR_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 1
    }, {
        .name = _("GLITTER MAIL"),
        .itemId = 123,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GLITTER_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 2
    }, {
        .name = _("MECH MAIL"),
        .itemId = 124,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MECH_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 3
    }, {
        .name = _("WOOD MAIL"),
        .itemId = 125,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_WOOD_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 4
    }, {
        .name = _("WAVE MAIL"),
        .itemId = 126,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_WAVE_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 5
    }, {
        .name = _("BEAD MAIL"),
        .itemId = 127,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BEAD_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 6
    }, {
        .name = _("SHADOW MAIL"),
        .itemId = 128,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SHADOW_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 7
    }, {
        .name = _("TROPIC MAIL"),
        .itemId = 129,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TROPIC_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 8
    }, {
        .name = _("DREAM MAIL"),
        .itemId = 130,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DREAM_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 9
    }, {
        .name = _("FAB MAIL"),
        .itemId = 131,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_FAB_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 10
    }, {
        .name = _("RETRO MAIL"),
        .itemId = 132,
        .price = 50,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RETRO_MAIL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_MAIL,
        .fieldUseFunc = FieldUseFunc_Mail,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 11
    }, {
        .name = _("CHERI BERRY"),
        .itemId = 133,
        .price = 20,
        .holdEffect = 2,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CHERI_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("CHESTO BERRY"),
        .itemId = 134,
        .price = 20,
        .holdEffect = 3,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CHESTO_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("PECHA BERRY"),
        .itemId = 135,
        .price = 20,
        .holdEffect = 4,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PECHA_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("RAWST BERRY"),
        .itemId = 136,
        .price = 20,
        .holdEffect = 5,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RAWST_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("ASPEAR BERRY"),
        .itemId = 137,
        .price = 20,
        .holdEffect = 6,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ASPEAR_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("LEPPA BERRY"),
        .itemId = 138,
        .price = 20,
        .holdEffect = 7,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_LEPPA_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Ether,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Ether,
        .secondaryId = 0
    }, {
        .name = _("ORAN BERRY"),
        .itemId = 139,
        .price = 20,
        .holdEffect = 1,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_ORAN_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("PERSIM BERRY"),
        .itemId = 140,
        .price = 20,
        .holdEffect = 8,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PERSIM_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("LUM BERRY"),
        .itemId = 141,
        .price = 20,
        .holdEffect = 9,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LUM_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("SITRUS BERRY"),
        .itemId = 142,
        .price = 20,
        .holdEffect = 1,
        .holdEffectParam = 30,
        .description = gItemDescription_ITEM_SITRUS_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = FieldUseFunc_Medicine,
        .battleUsage = 1,
        .battleUseFunc = BattleUseFunc_Medicine,
        .secondaryId = 0
    }, {
        .name = _("FIGY BERRY"),
        .itemId = 143,
        .price = 20,
        .holdEffect = 10,
        .holdEffectParam = 8,
        .description = gItemDescription_ITEM_FIGY_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("WIKI BERRY"),
        .itemId = 144,
        .price = 20,
        .holdEffect = 11,
        .holdEffectParam = 8,
        .description = gItemDescription_ITEM_WIKI_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MAGO BERRY"),
        .itemId = 145,
        .price = 20,
        .holdEffect = 12,
        .holdEffectParam = 8,
        .description = gItemDescription_ITEM_MAGO_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("AGUAV BERRY"),
        .itemId = 146,
        .price = 20,
        .holdEffect = 13,
        .holdEffectParam = 8,
        .description = gItemDescription_ITEM_AGUAV_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("IAPAPA BERRY"),
        .itemId = 147,
        .price = 20,
        .holdEffect = 14,
        .holdEffectParam = 8,
        .description = gItemDescription_ITEM_IAPAPA_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RAZZ BERRY"),
        .itemId = 148,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RAZZ_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BLUK BERRY"),
        .itemId = 149,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BLUK_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("NANAB BERRY"),
        .itemId = 150,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NANAB_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("WEPEAR BERRY"),
        .itemId = 151,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_WEPEAR_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PINAP BERRY"),
        .itemId = 152,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PINAP_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("POMEG BERRY"),
        .itemId = 153,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_POMEG_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("KELPSY BERRY"),
        .itemId = 154,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_KELPSY_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("QUALOT BERRY"),
        .itemId = 155,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_QUALOT_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HONDEW BERRY"),
        .itemId = 156,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_HONDEW_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GREPA BERRY"),
        .itemId = 157,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GREPA_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TAMATO BERRY"),
        .itemId = 158,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TAMATO_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CORNN BERRY"),
        .itemId = 159,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CORNN_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MAGOST BERRY"),
        .itemId = 160,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MAGOST_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RABUTA BERRY"),
        .itemId = 161,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RABUTA_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("NOMEL BERRY"),
        .itemId = 162,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NOMEL_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SPELON BERRY"),
        .itemId = 163,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SPELON_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PAMTRE BERRY"),
        .itemId = 164,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PAMTRE_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("WATMEL BERRY"),
        .itemId = 165,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_WATMEL_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DURIN BERRY"),
        .itemId = 166,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DURIN_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BELUE BERRY"),
        .itemId = 167,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BELUE_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LIECHI BERRY"),
        .itemId = 168,
        .price = 20,
        .holdEffect = 15,
        .holdEffectParam = 4,
        .description = gItemDescription_ITEM_LIECHI_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GANLON BERRY"),
        .itemId = 169,
        .price = 20,
        .holdEffect = 16,
        .holdEffectParam = 4,
        .description = gItemDescription_ITEM_GANLON_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SALAC BERRY"),
        .itemId = 170,
        .price = 20,
        .holdEffect = 17,
        .holdEffectParam = 4,
        .description = gItemDescription_ITEM_SALAC_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PETAYA BERRY"),
        .itemId = 171,
        .price = 20,
        .holdEffect = 18,
        .holdEffectParam = 4,
        .description = gItemDescription_ITEM_PETAYA_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("APICOT BERRY"),
        .itemId = 172,
        .price = 20,
        .holdEffect = 19,
        .holdEffectParam = 4,
        .description = gItemDescription_ITEM_APICOT_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LANSAT BERRY"),
        .itemId = 173,
        .price = 20,
        .holdEffect = 20,
        .holdEffectParam = 4,
        .description = gItemDescription_ITEM_LANSAT_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("STARF BERRY"),
        .itemId = 174,
        .price = 20,
        .holdEffect = 21,
        .holdEffectParam = 4,
        .description = gItemDescription_ITEM_STARF_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("ENIGMA BERRY"),
        .itemId = 175,
        .price = 20,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ENIGMA_BERRY,
        .importance = 0,
        .registrability = 0,
        .pocket = 5,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = ItemUseOutOfBattle_EnigmaBerry,
        .battleUsage = 1,
        .battleUseFunc = ItemUseInBattle_EnigmaBerry,
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BRIGHTPOWDER"),
        .itemId = 179,
        .price = 10,
        .holdEffect = 22,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_BRIGHT_POWDER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("WHITE HERB"),
        .itemId = 180,
        .price = 100,
        .holdEffect = 23,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_WHITE_HERB,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MACHO BRACE"),
        .itemId = 181,
        .price = 3000,
        .holdEffect = 24,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MACHO_BRACE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("EXP. SHARE"),
        .itemId = 182,
        .price = 3000,
        .holdEffect = 25,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_EXP_SHARE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("QUICK CLAW"),
        .itemId = 183,
        .price = 100,
        .holdEffect = 26,
        .holdEffectParam = 20,
        .description = gItemDescription_ITEM_QUICK_CLAW,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SOOTHE BELL"),
        .itemId = 184,
        .price = 100,
        .holdEffect = 27,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SOOTHE_BELL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MENTAL HERB"),
        .itemId = 185,
        .price = 100,
        .holdEffect = 28,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MENTAL_HERB,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CHOICE BAND"),
        .itemId = 186,
        .price = 100,
        .holdEffect = 29,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CHOICE_BAND,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("KING'S ROCK"),
        .itemId = 187,
        .price = 100,
        .holdEffect = 30,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_KINGS_ROCK,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SILVERPOWDER"),
        .itemId = 188,
        .price = 100,
        .holdEffect = 31,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_SILVER_POWDER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("AMULET COIN"),
        .itemId = 189,
        .price = 100,
        .holdEffect = 32,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_AMULET_COIN,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CLEANSE TAG"),
        .itemId = 190,
        .price = 200,
        .holdEffect = 33,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CLEANSE_TAG,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SOUL DEW"),
        .itemId = 191,
        .price = 200,
        .holdEffect = 34,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SOUL_DEW,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DEEPSEATOOTH"),
        .itemId = 192,
        .price = 200,
        .holdEffect = 35,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DEEP_SEA_TOOTH,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DEEPSEASCALE"),
        .itemId = 193,
        .price = 200,
        .holdEffect = 36,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DEEP_SEA_SCALE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SMOKE BALL"),
        .itemId = 194,
        .price = 200,
        .holdEffect = 37,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SMOKE_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("EVERSTONE"),
        .itemId = 195,
        .price = 200,
        .holdEffect = 38,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_EVERSTONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("FOCUS BAND"),
        .itemId = 196,
        .price = 200,
        .holdEffect = 39,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_FOCUS_BAND,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LUCKY EGG"),
        .itemId = 197,
        .price = 200,
        .holdEffect = 40,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LUCKY_EGG,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SCOPE LENS"),
        .itemId = 198,
        .price = 200,
        .holdEffect = 41,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SCOPE_LENS,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("METAL COAT"),
        .itemId = 199,
        .price = 100,
        .holdEffect = 42,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_METAL_COAT,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LEFTOVERS"),
        .itemId = 200,
        .price = 200,
        .holdEffect = 43,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_LEFTOVERS,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DRAGON SCALE"),
        .itemId = 201,
        .price = 2100,
        .holdEffect = 44,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_DRAGON_SCALE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LIGHT BALL"),
        .itemId = 202,
        .price = 100,
        .holdEffect = 45,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LIGHT_BALL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SOFT SAND"),
        .itemId = 203,
        .price = 100,
        .holdEffect = 46,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_SOFT_SAND,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HARD STONE"),
        .itemId = 204,
        .price = 100,
        .holdEffect = 47,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_HARD_STONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MIRACLE SEED"),
        .itemId = 205,
        .price = 100,
        .holdEffect = 48,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_MIRACLE_SEED,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BLACKGLASSES"),
        .itemId = 206,
        .price = 100,
        .holdEffect = 49,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_BLACK_GLASSES,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BLACK BELT"),
        .itemId = 207,
        .price = 100,
        .holdEffect = 50,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_BLACK_BELT,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MAGNET"),
        .itemId = 208,
        .price = 100,
        .holdEffect = 51,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_MAGNET,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MYSTIC WATER"),
        .itemId = 209,
        .price = 100,
        .holdEffect = 52,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_MYSTIC_WATER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SHARP BEAK"),
        .itemId = 210,
        .price = 100,
        .holdEffect = 53,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_SHARP_BEAK,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("POISON BARB"),
        .itemId = 211,
        .price = 100,
        .holdEffect = 54,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_POISON_BARB,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("NEVERMELTICE"),
        .itemId = 212,
        .price = 100,
        .holdEffect = 55,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_NEVER_MELT_ICE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SPELL TAG"),
        .itemId = 213,
        .price = 100,
        .holdEffect = 56,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_SPELL_TAG,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TWISTEDSPOON"),
        .itemId = 214,
        .price = 100,
        .holdEffect = 57,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_TWISTED_SPOON,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CHARCOAL"),
        .itemId = 215,
        .price = 9800,
        .holdEffect = 58,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_CHARCOAL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DRAGON FANG"),
        .itemId = 216,
        .price = 100,
        .holdEffect = 59,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_DRAGON_FANG,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SILK SCARF"),
        .itemId = 217,
        .price = 100,
        .holdEffect = 60,
        .holdEffectParam = 10,
        .description = gItemDescription_ITEM_SILK_SCARF,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("UP-GRADE"),
        .itemId = 218,
        .price = 2100,
        .holdEffect = 61,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_UP_GRADE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SHELL BELL"),
        .itemId = 219,
        .price = 200,
        .holdEffect = 62,
        .holdEffectParam = 8,
        .description = gItemDescription_ITEM_SHELL_BELL,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SEA INCENSE"),
        .itemId = 220,
        .price = 9600,
        .holdEffect = 52,
        .holdEffectParam = 5,
        .description = gItemDescription_ITEM_SEA_INCENSE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LAX INCENSE"),
        .itemId = 221,
        .price = 9600,
        .holdEffect = 22,
        .holdEffectParam = 5,
        .description = gItemDescription_ITEM_LAX_INCENSE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LUCKY PUNCH"),
        .itemId = 222,
        .price = 10,
        .holdEffect = 63,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LUCKY_PUNCH,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("METAL POWDER"),
        .itemId = 223,
        .price = 10,
        .holdEffect = 64,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_METAL_POWDER,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("THICK CLUB"),
        .itemId = 224,
        .price = 500,
        .holdEffect = 65,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_THICK_CLUB,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("STICK"),
        .itemId = 225,
        .price = 200,
        .holdEffect = 66,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_STICK,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RED SCARF"),
        .itemId = 254,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RED_SCARF,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BLUE SCARF"),
        .itemId = 255,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BLUE_SCARF,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("PINK SCARF"),
        .itemId = 256,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_PINK_SCARF,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GREEN SCARF"),
        .itemId = 257,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GREEN_SCARF,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("YELLOW SCARF"),
        .itemId = 258,
        .price = 100,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_YELLOW_SCARF,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MACH BIKE"),
        .itemId = 259,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MACH_BIKE,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_Bike,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("COIN CASE"),
        .itemId = 260,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_COIN_CASE,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_CoinCase,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("ITEMFINDER"),
        .itemId = 261,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ITEMFINDER,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = ItemUseOutOfBattle_Itemfinder,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("OLD ROD"),
        .itemId = 262,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_OLD_ROD,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_Rod,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GOOD ROD"),
        .itemId = 263,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GOOD_ROD,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_Rod,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 1
    }, {
        .name = _("SUPER ROD"),
        .itemId = 264,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SUPER_ROD,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_Rod,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 2
    }, {
        .name = _("S.S. TICKET"),
        .itemId = 265,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SS_TICKET,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CONTEST PASS"),
        .itemId = 266,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CONTEST_PASS,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("WAILMER PAIL"),
        .itemId = 268,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_WAILMER_PAIL,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DEVON GOODS"),
        .itemId = 269,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DEVON_GOODS,
        .importance = 2,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SOOT SACK"),
        .itemId = 270,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SOOT_SACK,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BASEMENT KEY"),
        .itemId = 271,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BASEMENT_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("ACRO BIKE"),
        .itemId = 272,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ACRO_BIKE,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_Bike,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 1
    }, {
        .name = _("{POKEBLOCK} CASE"),
        .itemId = 273,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_POKEBLOCK_CASE,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LETTER"),
        .itemId = 274,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LETTER,
        .importance = 2,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("EON TICKET"),
        .itemId = 275,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_EON_TICKET,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 1
    }, {
        .name = _("RED ORB"),
        .itemId = 276,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RED_ORB,
        .importance = 2,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BLUE ORB"),
        .itemId = 277,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BLUE_ORB,
        .importance = 2,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SCANNER"),
        .itemId = 278,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SCANNER,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GO-GOGGLES"),
        .itemId = 279,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GO_GOGGLES,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("METEORITE"),
        .itemId = 280,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_METEORITE,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RM. 1 KEY"),
        .itemId = 281,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ROOM_1_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RM. 2 KEY"),
        .itemId = 282,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ROOM_2_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RM. 4 KEY"),
        .itemId = 283,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ROOM_4_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RM. 6 KEY"),
        .itemId = 284,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ROOM_6_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("STORAGE KEY"),
        .itemId = 285,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_STORAGE_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("ROOT FOSSIL"),
        .itemId = 286,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_ROOT_FOSSIL,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CLAW FOSSIL"),
        .itemId = 287,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CLAW_FOSSIL,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DEVON SCOPE"),
        .itemId = 288,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DEVON_SCOPE,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM01"),
        .itemId = 289,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_FocusPunch,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM02"),
        .itemId = 290,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_DragonClaw,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM03"),
        .itemId = 291,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_WaterPulse,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM04"),
        .itemId = 292,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_CalmMind,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM05"),
        .itemId = 293,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Roar,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM06"),
        .itemId = 294,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Toxic,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM07"),
        .itemId = 295,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Hail,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM08"),
        .itemId = 296,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_BulkUp,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM09"),
        .itemId = 297,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_BulletSeed,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM10"),
        .itemId = 298,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_HiddenPower,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM11"),
        .itemId = 299,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_SunnyDay,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM12"),
        .itemId = 300,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Taunt,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM13"),
        .itemId = 301,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_IceBeam,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM14"),
        .itemId = 302,
        .price = 5500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Blizzard,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM15"),
        .itemId = 303,
        .price = 7500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_HyperBeam,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM16"),
        .itemId = 304,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_LightScreen,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM17"),
        .itemId = 305,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Protect,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM18"),
        .itemId = 306,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_RainDance,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM19"),
        .itemId = 307,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_GigaDrain,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM20"),
        .itemId = 308,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Safeguard,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM21"),
        .itemId = 309,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Frustration,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM22"),
        .itemId = 310,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_SolarBeam,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM23"),
        .itemId = 311,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_IronTail,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM24"),
        .itemId = 312,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Thunderbolt,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM25"),
        .itemId = 313,
        .price = 5500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Thunder,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM26"),
        .itemId = 314,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Earthquake,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM27"),
        .itemId = 315,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Return,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM28"),
        .itemId = 316,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Dig,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM29"),
        .itemId = 317,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Psychic,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM30"),
        .itemId = 318,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_ShadowBall,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM31"),
        .itemId = 319,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_BrickBreak,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM32"),
        .itemId = 320,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_DoubleTeam,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM33"),
        .itemId = 321,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Reflect,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM34"),
        .itemId = 322,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_ShockWave,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM35"),
        .itemId = 323,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Flamethrower,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM36"),
        .itemId = 324,
        .price = 1000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_SludgeBomb,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM37"),
        .itemId = 325,
        .price = 2000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Sandstorm,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM38"),
        .itemId = 326,
        .price = 5500,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_FireBlast,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM39"),
        .itemId = 327,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_RockTomb,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM40"),
        .itemId = 328,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_AerialAce,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM41"),
        .itemId = 329,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Torment,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM42"),
        .itemId = 330,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Facade,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM43"),
        .itemId = 331,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_SecretPower,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM44"),
        .itemId = 332,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Rest,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM45"),
        .itemId = 333,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Attract,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM46"),
        .itemId = 334,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Thief,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM47"),
        .itemId = 335,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_SteelWing,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM48"),
        .itemId = 336,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_SkillSwap,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM49"),
        .itemId = 337,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Snatch,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM50"),
        .itemId = 338,
        .price = 3000,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Overheat,
        .importance = 0,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM01"),
        .itemId = 339,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Cut,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM02"),
        .itemId = 340,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Fly,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM03"),
        .itemId = 341,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Surf,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM04"),
        .itemId = 342,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Strength,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM05"),
        .itemId = 343,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Flash,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM06"),
        .itemId = 344,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_RockSmash,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM07"),
        .itemId = 345,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Waterfall,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HM08"),
        .itemId = 346,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gMoveDescription_Dive,
        .importance = 1,
        .registrability = 0,
        .pocket = 4,
        .type = ITEM_TYPE_PARTY_MENU,
        .fieldUseFunc = ((void *)0),
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("????????"),
        .itemId = 0,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_NONE,
        .importance = 0,
        .registrability = 0,
        .pocket = 1,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("OAK'S PARCEL"),
        .itemId = 349,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_OAKS_PARCEL,
        .importance = 2,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("POKé FLUTE"),
        .itemId = 350,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_POKE_FLUTE,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_PokeFlute,
        .battleUsage = 2,
        .battleUseFunc = BattleUseFunc_PokeFlute,
        .secondaryId = 0
    }, {
        .name = _("SECRET KEY"),
        .itemId = 351,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SECRET_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BIKE VOUCHER"),
        .itemId = 352,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BIKE_VOUCHER,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("GOLD TEETH"),
        .itemId = 353,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_GOLD_TEETH,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("OLD AMBER"),
        .itemId = 354,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_OLD_AMBER,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("CARD KEY"),
        .itemId = 355,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_CARD_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("LIFT KEY"),
        .itemId = 356,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_LIFT_KEY,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("HELIX FOSSIL"),
        .itemId = 357,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_HELIX_FOSSIL,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("DOME FOSSIL"),
        .itemId = 358,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_DOME_FOSSIL,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SILPH SCOPE"),
        .itemId = 359,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SILPH_SCOPE,
        .importance = 1,
        .registrability = 0,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BICYCLE"),
        .itemId = 360,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BICYCLE,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_Bike,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TOWN MAP"),
        .itemId = 361,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TOWN_MAP,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_TownMap,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("VS SEEKER"),
        .itemId = 362,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_VS_SEEKER,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_VsSeeker,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("FAME CHECKER"),
        .itemId = 363,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_FAME_CHECKER,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_FameChecker,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TM CASE"),
        .itemId = 364,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TM_CASE,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_TmCase,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("BERRY POUCH"),
        .itemId = 365,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_BERRY_POUCH,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_BerryPouch,
        .battleUsage = 3,
        .battleUseFunc = BattleUseFunc_BerryPouch,
        .secondaryId = 0
    }, {
        .name = _("TEACHY TV"),
        .itemId = 366,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TEACHY_TV,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_FIELD,
        .fieldUseFunc = FieldUseFunc_TeachyTv,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TRI-PASS"),
        .itemId = 367,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TRI_PASS,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RAINBOW PASS"),
        .itemId = 368,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RAINBOW_PASS,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("TEA"),
        .itemId = 369,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_TEA,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("MYSTICTICKET"),
        .itemId = 370,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_MYSTIC_TICKET,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("AURORATICKET"),
        .itemId = 371,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_AURORA_TICKET,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("POWDER JAR"),
        .itemId = 372,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_POWDER_JAR,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_PowderJar,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("RUBY"),
        .itemId = 373,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_RUBY,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, {
        .name = _("SAPPHIRE"),
        .itemId = 374,
        .price = 0,
        .holdEffect = 0,
        .holdEffectParam = 0,
        .description = gItemDescription_ITEM_SAPPHIRE,
        .importance = 1,
        .registrability = 1,
        .pocket = 2,
        .type = ITEM_TYPE_BAG_MENU,
        .fieldUseFunc = FieldUseFunc_OakStopsYou,
        .battleUsage = 0,
        .battleUseFunc = ((void *)0),
        .secondaryId = 0
    }, };
# 20 "src/item.c" 2

u16 GetBagItemQuantity(u16 * ptr)
{
    return gSaveBlock2Ptr->encryptionKey ^ *ptr;
}

void SetBagItemQuantity(u16 * ptr, u16 value)
{
    *ptr = value ^ gSaveBlock2Ptr->encryptionKey;
}

u16 GetPcItemQuantity(u16 * ptr)
{
    return 0 ^ *ptr;
}

void SetPcItemQuantity(u16 * ptr, u16 value)
{
    *ptr = value ^ 0;
}

void ApplyNewEncryptionKeyToBagItems(u32 key)
{
    u32 i, j;

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < gBagPockets[i].capacity; j++)
        {
            ApplyNewEncryptionKeyToHword(&gBagPockets[i].itemSlots[j].quantity, key);
        }
    }
}

void ApplyNewEncryptionKeyToBagItems_(u32 key)
{
    ApplyNewEncryptionKeyToBagItems(key);
}

void SetBagPocketsPointers(void)
{
    gBagPockets[1 - 1].itemSlots = gSaveBlock1Ptr->bagPocket_Items;
    gBagPockets[1 - 1].capacity = 42;
    gBagPockets[2 - 1].itemSlots = gSaveBlock1Ptr->bagPocket_KeyItems;
    gBagPockets[2 - 1].capacity = 30;
    gBagPockets[3 - 1].itemSlots = gSaveBlock1Ptr->bagPocket_PokeBalls;
    gBagPockets[3 - 1].capacity = 13;
    gBagPockets[4 - 1].itemSlots = gSaveBlock1Ptr->bagPocket_TMHM;
    gBagPockets[4 - 1].capacity = 58;
    gBagPockets[5 - 1].itemSlots = gSaveBlock1Ptr->bagPocket_Berries;
    gBagPockets[5 - 1].capacity = 43;
}

void CopyItemName(u16 itemId, u8 * dest)
{
    if (itemId == 175)
    {
        StringCopy(dest, GetBerryInfo((((175 - 133) + 1)))->name);
        StringAppend(dest, gText_Berry);
    }
    else
    {
        StringCopy(dest, ItemId_GetName(itemId));
    }
}

s8 BagPocketGetFirstEmptySlot(u8 pocketId)
{
    u16 i;

    for (i = 0; i < gBagPockets[pocketId].capacity; i++)
    {
        if (gBagPockets[pocketId].itemSlots[i].itemId == 0)
            return i;
    }

    return -1;
}

bool8 IsPocketNotEmpty(u8 pocketId)
{
    u8 i;

    for (i = 0; i < gBagPockets[pocketId - 1].capacity; i++)
    {
        if (gBagPockets[pocketId - 1].itemSlots[i].itemId != 0)
            return 1;
    }

    return 0;
}

bool8 CheckBagHasItem(u16 itemId, u16 count)
{
    u8 i;
    u8 pocket;

    if (ItemId_GetPocket(itemId) == 0)
        return 0;

    pocket = ItemId_GetPocket(itemId) - 1;

    for (i = 0; i < gBagPockets[pocket].capacity; i++)
    {
        if (gBagPockets[pocket].itemSlots[i].itemId == itemId)
        {
            u16 quantity;

            quantity = GetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity);
            if (quantity >= count)
                return 1;




            else
                return 0;
        }
    }
    return 0;
}

bool8 HasAtLeastOneBerry(void)
{
    u8 itemId;
    bool8 exists;

    exists = CheckBagHasItem(365, 1);
    if (!exists)
    {
        gSpecialVar_Result = 0;
        return 0;
    }
    for (itemId = 133; itemId <= 175; itemId++)
    {
        exists = CheckBagHasItem(itemId, 1);
        if (exists)
        {
            gSpecialVar_Result = 1;
            return 1;
        }
    }

    gSpecialVar_Result = 0;
    return 0;
}

bool8 CheckBagHasSpace(u16 itemId, u16 count)
{
    u8 i;
    u8 pocket;

    if (ItemId_GetPocket(itemId) == 0)
        return 0;

    pocket = ItemId_GetPocket(itemId) - 1;

    for (i = 0; i < gBagPockets[pocket].capacity; i++)
    {
        if (gBagPockets[pocket].itemSlots[i].itemId == itemId)
        {
            u16 quantity;

            quantity = GetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity);
            if (quantity + count <= 999)
                return 1;




            else
                return 0;
        }
    }

    if (BagPocketGetFirstEmptySlot(pocket) != -1)
        return 1;

    return 0;
}

bool8 AddBagItem(u16 itemId, u16 count)
{
    u8 i;
    u8 pocket;
    s8 idx;

    if (ItemId_GetPocket(itemId) == 0)
        return 0;

    pocket = ItemId_GetPocket(itemId) - 1;
    for (i = 0; i < gBagPockets[pocket].capacity; i++)
    {
        if (gBagPockets[pocket].itemSlots[i].itemId == itemId)
        {
            u16 quantity;

            quantity = GetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity);
            if (quantity + count <= 999)
            {
                quantity += count;
                SetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity, quantity);
                return 1;
            }




            else
                return 0;
        }
    }

    if (pocket == 4 - 1 && !CheckBagHasItem(364, 1))
    {
        idx = BagPocketGetFirstEmptySlot(2 - 1);
        if (idx == -1)
            return 0;
        gBagPockets[2 - 1].itemSlots[idx].itemId = 364;
        SetBagItemQuantity(&gBagPockets[2 - 1].itemSlots[idx].quantity, 1);
    }

    if (pocket == 5 - 1 && !CheckBagHasItem(365, 1))
    {
        idx = BagPocketGetFirstEmptySlot(2 - 1);
        if (idx == -1)
            return 0;
        gBagPockets[2 - 1].itemSlots[idx].itemId = 365;
        SetBagItemQuantity(&gBagPockets[2 - 1].itemSlots[idx].quantity, 1);
        FlagSet(((((0x500 + 1) + 768 - 1) + 1) + 0x47));
    }

    if (itemId == 365)
        FlagSet(((((0x500 + 1) + 768 - 1) + 1) + 0x47));

    idx = BagPocketGetFirstEmptySlot(pocket);
    if (idx == -1)
        return 0;

    gBagPockets[pocket].itemSlots[idx].itemId = itemId;
    SetBagItemQuantity(&gBagPockets[pocket].itemSlots[idx].quantity, count);
    return 1;
}

bool8 RemoveBagItem(u16 itemId, u16 count)
{
    u8 i;
    u8 pocket;

    if (ItemId_GetPocket(itemId) == 0)
        return 0;

    if (itemId == 0)
        return 0;

    pocket = ItemId_GetPocket(itemId) - 1;

    for (i = 0; i < gBagPockets[pocket].capacity; i++)
    {
        if (gBagPockets[pocket].itemSlots[i].itemId == itemId)
        {
            u16 quantity;

            quantity = GetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity);
            if (quantity >= count)
            {
                quantity -= count;
                SetBagItemQuantity(&gBagPockets[pocket].itemSlots[i].quantity, quantity);
                if (quantity == 0)
                    gBagPockets[pocket].itemSlots[i].itemId = 0;
                return 1;
            }




            else
                return 0;
        }
    }
    return 0;
}

u8 GetPocketByItemId(u16 itemId)
{
    return ItemId_GetPocket(itemId);
}

void ClearItemSlots(struct ItemSlot * slots, u8 capacity)
{
    u16 i;

    for (i = 0; i < capacity; i++)
    {
        slots[i].itemId = 0;
        SetBagItemQuantity(&slots[i].quantity, 0);
    }
}

void ClearPCItemSlots(void)
{
    u16 i;

    for (i = 0; i < 30; i++)
    {
        gSaveBlock1Ptr->pcItems[i].itemId = 0;
        SetPcItemQuantity(&gSaveBlock1Ptr->pcItems[i].quantity, 0);
    }
}

void ClearBag(void)
{
    u16 i;

    for (i = 0; i < 5; i++)
    {
        ClearItemSlots(gBagPockets[i].itemSlots, gBagPockets[i].capacity);
    }
}

s8 PCItemsGetFirstEmptySlot(void)
{
    s8 i;

    for (i = 0; i < 30; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId == 0)
            return i;
    }

    return -1;
}

u8 CountItemsInPC(void)
{
    u8 count = 0;
    u8 i;

    for (i = 0; i < 30; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId != 0)
            count++;
    }

    return count;
}

bool8 CheckPCHasItem(u16 itemId, u16 count)
{
    u8 i;
    u16 quantity;

    for (i = 0; i < 30; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId == itemId)
        {
            quantity = GetPcItemQuantity(&gSaveBlock1Ptr->pcItems[i].quantity);
            if (quantity >= count)
                return 1;
        }
    }

    return 0;
}

bool8 AddPCItem(u16 itemId, u16 count)
{
    u8 i;
    u16 quantity;
    s8 idx;

    for (i = 0; i < 30; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId == itemId)
        {
            quantity = GetPcItemQuantity(&gSaveBlock1Ptr->pcItems[i].quantity);
            if (quantity + count <= 999)
            {
                quantity += count;
                SetPcItemQuantity(&gSaveBlock1Ptr->pcItems[i].quantity, quantity);
                return 1;
            }
            else
                return 0;
        }
    }

    idx = PCItemsGetFirstEmptySlot();
    if (idx == -1)
        return 0;

    gSaveBlock1Ptr->pcItems[idx].itemId = itemId;
    SetPcItemQuantity(&gSaveBlock1Ptr->pcItems[idx].quantity, count);
    return 1;
}

void RemovePCItem(u16 itemId, u16 count)
{
    u32 i;
    u16 quantity;

    if (itemId == 0)
        return;

    for (i = 0; i < 30; i++)
    {
        if (gSaveBlock1Ptr->pcItems[i].itemId == itemId)
            break;
    }

    if (i != 30)
    {
        quantity = GetPcItemQuantity(&gSaveBlock1Ptr->pcItems[i].quantity) - count;
        SetPcItemQuantity(&gSaveBlock1Ptr->pcItems[i].quantity, quantity);
        if (quantity == 0)
            gSaveBlock1Ptr->pcItems[i].itemId = 0;
    }
}

void ItemPcCompaction(void)
{
    u16 i, j;
    struct ItemSlot tmp;

    for (i = 0; i < 30 - 1; i++)
    {
        for (j = i + 1; j < 30; j++)
        {
            if (gSaveBlock1Ptr->pcItems[i].itemId == 0)
            {
                tmp = gSaveBlock1Ptr->pcItems[i];
                gSaveBlock1Ptr->pcItems[i] = gSaveBlock1Ptr->pcItems[j];
                gSaveBlock1Ptr->pcItems[j] = tmp;
            }
        }
    }
}

void RegisteredItemHandleBikeSwap(void)
{
    switch (gSaveBlock1Ptr->registeredItem)
    {
    case 259:
        gSaveBlock1Ptr->registeredItem = 272;
        break;
    case 272:
        gSaveBlock1Ptr->registeredItem = 259;
        break;
    }
}

void SwapItemSlots(struct ItemSlot * a, struct ItemSlot * b)
{
    struct ItemSlot c;
    c = *a;
    *a = *b;
    *b = c;
}

void BagPocketCompaction(struct ItemSlot * slots, u8 capacity)
{
    u16 i, j;

    for (i = 0; i < capacity - 1; i++)
    {
        for (j = i + 1; j < capacity; j++)
        {
            if (GetBagItemQuantity(&slots[i].quantity) == 0)
            {
                SwapItemSlots(&slots[i], &slots[j]);
            }
        }
    }
}

void SortPocketAndPlaceHMsFirst(struct BagPocket * pocket)
{
    u16 i;
    u16 j = 0;
    u16 k;
    struct ItemSlot * buff;

    SortAndCompactBagPocket(pocket);

    for (i = 0; i < pocket->capacity; i++)
    {
        if (pocket->itemSlots[i].itemId == 0 && GetBagItemQuantity(&pocket->itemSlots[i].quantity) == 0)
            return;
        if (pocket->itemSlots[i].itemId >= 339 && GetBagItemQuantity(&pocket->itemSlots[i].quantity) != 0)
        {
            for (j = i + 1; j < pocket->capacity; j++)
            {
                if (pocket->itemSlots[j].itemId == 0 && GetBagItemQuantity(&pocket->itemSlots[j].quantity) == 0)
                    break;
            }
            break;
        }
    }

    for (k = 0; k < pocket->capacity; k++)
        pocket->itemSlots[k].quantity = GetBagItemQuantity(&pocket->itemSlots[k].quantity);
    buff = AllocZeroed(pocket->capacity * sizeof(struct ItemSlot));
    CpuSet(pocket->itemSlots + i, buff, 0x00000000 | (((j - i) * sizeof(struct ItemSlot))/(16/8) & 0x1FFFFF));
    CpuSet(pocket->itemSlots, buff + (j - i), 0x00000000 | ((i * sizeof(struct ItemSlot))/(16/8) & 0x1FFFFF));
    CpuSet(buff, pocket->itemSlots, 0x00000000 | ((pocket->capacity * sizeof(struct ItemSlot))/(16/8) & 0x1FFFFF));
    for (k = 0; k < pocket->capacity; k++)
        SetBagItemQuantity(&pocket->itemSlots[k].quantity, pocket->itemSlots[k].quantity);
    Free(buff);
}

void SortAndCompactBagPocket(struct BagPocket * pocket)
{
    u16 i, j;

    for (i = 0; i < pocket->capacity; i++)
    {
        for (j = i + 1; j < pocket->capacity; j++)
        {
            if (GetBagItemQuantity(&pocket->itemSlots[i].quantity) == 0 || (GetBagItemQuantity(&pocket->itemSlots[j].quantity) != 0 && pocket->itemSlots[i].itemId > pocket->itemSlots[j].itemId))
                SwapItemSlots(&pocket->itemSlots[i], &pocket->itemSlots[j]);
        }
    }
}

u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 slotId)
{
    return gBagPockets[pocketId - 1].itemSlots[slotId].itemId;
}

u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 slotId)
{
    return GetBagItemQuantity(&gBagPockets[pocketId - 1].itemSlots[slotId].quantity);
}

u16 BagGetQuantityByItemId(u16 itemId)
{
    u16 i;
    struct BagPocket * pocket = &gBagPockets[ItemId_GetPocket(itemId) - 1];

    for (i = 0; i < pocket->capacity; i++)
    {
        if (pocket->itemSlots[i].itemId == itemId)
            return GetBagItemQuantity(&pocket->itemSlots[i].quantity);
    }

    return 0;
}

void TrySetObtainedItemQuestLogEvent(u16 itemId)
{

    if (itemId == 349
     || itemId == 350
     || itemId == 351
     || itemId == 352
     || itemId == 353
     || itemId == 354
     || itemId == 355
     || itemId == 356
     || itemId == 357
     || itemId == 358
     || itemId == 359
     || itemId == 360
     || itemId == 361
     || itemId == 362
     || itemId == 366
     || itemId == 368
     || itemId == 369
     || itemId == 372
     || itemId == 373
     || itemId == 374)
    {
        if (itemId != 361 || (gSaveBlock1Ptr->location.mapGroup == ((2 | (4 << 8)) >> 8) && gSaveBlock1Ptr->location.mapNum == ((2 | (4 << 8)) & 0xFF)))
        {
            struct QuestLogEvent_StoryItem * data = Alloc(sizeof(*data));
            data->itemId = itemId;
            data->mapSec = gMapHeader.regionMapSectionId;
            SetQuestLogEvent(40, (const u16 *)data);
            Free(data);
        }
    }
}

u16 SanitizeItemId(u16 itemId)
{
    if (itemId >= 375)
        return 0;
    return itemId;
}

const u8 * ItemId_GetName(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].name;
}


u16 ItemId_GetId(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].itemId;
}

u16 ItemId_GetPrice(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].price;
}

u8 ItemId_GetHoldEffect(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].holdEffect;
}

u8 ItemId_GetHoldEffectParam(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].holdEffectParam;
}

const u8 * ItemId_GetDescription(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].description;
}

u8 ItemId_GetImportance(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].importance;
}


u8 ItemId_GetRegistrability(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].registrability;
}

u8 ItemId_GetPocket(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].pocket;
}

u8 ItemId_GetType(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].type;
}

ItemUseFunc ItemId_GetFieldFunc(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].fieldUseFunc;
}

bool8 ItemId_GetBattleUsage(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].battleUsage;
}

ItemUseFunc ItemId_GetBattleFunc(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].battleUseFunc;
}

u8 ItemId_GetSecondaryId(u16 itemId)
{
    return gItems[SanitizeItemId(itemId)].secondaryId;
}
