# 0 "src/tilesets.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/tilesets.c"
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
               u8 flags[((((((((0x502 + 1) + 768 - 1) + 1) + 0xFF) + 1)) / (8)) + ((((((((0x502 + 1) + 768 - 1) + 1) + 0xFF) + 1)) % (8)) ? 1 : 0))];
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
               u8 flags[((((((((0x502 + 1) + 768 - 1) + 1) + 0xFF) + 1)) / (8)) + ((((((((0x502 + 1) + 768 - 1) + 1) + 0xFF) + 1)) % (8)) ? 1 : 0))];
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
# 2 "src/tilesets.c" 2
# 1 "include/tilesets.h" 1



extern const u32 gTilesetTiles_General[];
extern const u16 gTilesetPalettes_General[][16];

extern const u32 gTilesetTiles_GenericBuilding1[];
extern const u16 gTilesetPalettes_GenericBuilding1[][16];

extern const u32 gTilesetTiles_DepartmentStore[];
extern const u16 gTilesetPalettes_DepartmentStore[][16];
# 3 "src/tilesets.c" 2
# 1 "include/tileset_anims.h" 1



void InitTilesetAnimations(void);
void InitSecondaryTilesetAnimation(void);
void UpdateTilesetAnimations(void);
void TransferTilesetAnimsBuffer(void);

void InitTilesetAnim_General(void);
void InitTilesetAnim_CeladonCity(void);
void InitTilesetAnim_VermilionGym(void);
void InitTilesetAnim_CeladonGym(void);
void InitTilesetAnim_SilphCo(void);
void InitTilesetAnim_MtEmber(void);
# 4 "src/tilesets.c" 2

# 1 "src/data/tilesets/graphics.h" 1
const u32 gTilesetTiles_PalletTown[] = INCBIN_U32("data/tilesets/secondary/pallet_town/tiles.4bpp.lz");

const u16 gTilesetPalettes_PalletTown[][16] =
{
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pallet_town/palettes/15.gbapal"),
};

const u32 gTilesetTiles_ViridianCity[] = INCBIN_U32("data/tilesets/secondary/viridian_city/tiles.4bpp.lz");

const u16 gTilesetPalettes_ViridianCity[][16] =
{
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_city/palettes/15.gbapal"),
};

const u32 gTilesetTiles_PewterCity[] = INCBIN_U32("data/tilesets/secondary/pewter_city/tiles.4bpp.lz");

const u16 gTilesetPalettes_PewterCity[][16] =
{
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_city/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CeruleanCity[] = INCBIN_U32("data/tilesets/secondary/cerulean_city/tiles.4bpp.lz");

const u16 gTilesetPalettes_CeruleanCity[][16] =
{
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_city/palettes/15.gbapal"),
};

const u32 gTilesetTiles_LavenderTown[] = INCBIN_U32("data/tilesets/secondary/lavender_town/tiles.4bpp.lz");

const u16 gTilesetPalettes_LavenderTown[][16] =
{
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lavender_town/palettes/15.gbapal"),
};

const u32 gTilesetTiles_VermilionCity[] = INCBIN_U32("data/tilesets/secondary/vermilion_city/tiles.4bpp.lz");

const u16 gTilesetPalettes_VermilionCity[][16] =
{
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_city/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CeladonCity[] = INCBIN_U32("data/tilesets/secondary/celadon_city/tiles.4bpp.lz");

const u16 gTilesetPalettes_CeladonCity[][16] =
{
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_city/palettes/15.gbapal"),
};

const u32 gTilesetTiles_FuchsiaCity[] = INCBIN_U32("data/tilesets/secondary/fuchsia_city/tiles.4bpp.lz");

const u16 gTilesetPalettes_FuchsiaCity[][16] =
{
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_city/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CinnabarIsland[] = INCBIN_U32("data/tilesets/secondary/cinnabar_island/tiles.4bpp.lz");

const u16 gTilesetPalettes_CinnabarIsland[][16] =
{
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_island/palettes/15.gbapal"),
};

const u32 gTilesetTiles_IndigoPlateau[] = INCBIN_U32("data/tilesets/secondary/indigo_plateau/tiles.4bpp.lz");

const u16 gTilesetPalettes_IndigoPlateau[][16] =
{
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/indigo_plateau/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SaffronCity[] = INCBIN_U32("data/tilesets/secondary/saffron_city/tiles.4bpp.lz");

const u16 gTilesetPalettes_SaffronCity[][16] =
{
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_city/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Building[] = INCBIN_U32("data/tilesets/primary/building/tiles.4bpp.lz");

const u16 gTilesetPalettes_Building[][16] =
{
 INCBIN_U16("data/tilesets/primary/building/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/primary/building/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Mart[] = INCBIN_U32("data/tilesets/secondary/mart/tiles.4bpp.lz");

const u16 gTilesetPalettes_Mart[][16] =
{
 INCBIN_U16("data/tilesets/secondary/mart/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mart/palettes/15.gbapal"),
};

const u32 gTilesetTiles_PokemonCenter[] = INCBIN_U32("data/tilesets/secondary/pokemon_center/tiles.4bpp.lz");

const u16 gTilesetPalettes_PokemonCenter[][16] =
{
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_center/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Cave[] = INCBIN_U32("data/tilesets/secondary/cave/tiles.4bpp.lz");

const u16 gTilesetPalettes_Cave[][16] =
{
 INCBIN_U16("data/tilesets/secondary/cave/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cave/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Dummy1[] = INCBIN_U32("data/tilesets/secondary/dummy_1/tiles.4bpp.lz");

const u16 gTilesetPalettes_Dummy1[][16] =
{
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_1/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Museum[] = INCBIN_U32("data/tilesets/secondary/museum/tiles.4bpp.lz");

const u16 gTilesetPalettes_Museum[][16] =
{
 INCBIN_U16("data/tilesets/secondary/museum/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/museum/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CableClub[] = INCBIN_U32("data/tilesets/secondary/cable_club/tiles.4bpp");

const u16 gTilesetPalettes_CableClub[][16] =
{
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cable_club/palettes/15.gbapal"),
};

const u32 gTilesetTiles_BikeShop[] = INCBIN_U32("data/tilesets/secondary/bike_shop/tiles.4bpp.lz");

const u16 gTilesetPalettes_BikeShop[][16] =
{
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/bike_shop/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Lab[] = INCBIN_U32("data/tilesets/secondary/lab/tiles.4bpp.lz");

const u16 gTilesetPalettes_Lab[][16] =
{
 INCBIN_U16("data/tilesets/secondary/lab/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/lab/palettes/15.gbapal"),
};

const u32 gTilesetTiles_HoennBuilding[] = INCBIN_U32("data/tilesets/secondary/hoenn_building/tiles.4bpp.lz");

const u16 gTilesetPalettes_HoennBuilding[][16] =
{
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hoenn_building/palettes/15.gbapal"),
};

const u32 gTilesetTiles_GameCorner[] = INCBIN_U32("data/tilesets/secondary/game_corner/tiles.4bpp.lz");

const u16 gTilesetPalettes_GameCorner[][16] =
{
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/game_corner/palettes/15.gbapal"),
};

const u32 gTilesetTiles_PewterGym[] = INCBIN_U32("data/tilesets/secondary/pewter_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_PewterGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pewter_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CeruleanGym[] = INCBIN_U32("data/tilesets/secondary/cerulean_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_CeruleanGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_VermilionGym[] = INCBIN_U32("data/tilesets/secondary/vermilion_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_VermilionGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/vermilion_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CeladonGym[] = INCBIN_U32("data/tilesets/secondary/celadon_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_CeladonGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/celadon_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_FuchsiaGym[] = INCBIN_U32("data/tilesets/secondary/fuchsia_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_FuchsiaGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fuchsia_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SaffronGym[] = INCBIN_U32("data/tilesets/secondary/saffron_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_SaffronGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/saffron_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CinnabarGym[] = INCBIN_U32("data/tilesets/secondary/cinnabar_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_CinnabarGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cinnabar_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_ViridianGym[] = INCBIN_U32("data/tilesets/secondary/viridian_gym/tiles.4bpp.lz");

const u16 gTilesetPalettes_ViridianGym[][16] =
{
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_gym/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SSAnne[] = INCBIN_U32("data/tilesets/secondary/ss_anne/tiles.4bpp.lz");

const u16 gTilesetPalettes_SSAnne[][16] =
{
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/ss_anne/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Dummy2[] = INCBIN_U32("data/tilesets/secondary/dummy_2/tiles.4bpp.lz");

const u16 gTilesetPalettes_Dummy2[][16] =
{
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_2/palettes/15.gbapal"),
};

const u32 gTilesetTiles_ViridianForest[] = INCBIN_U32("data/tilesets/secondary/viridian_forest/tiles.4bpp.lz");

const u16 gTilesetPalettes_ViridianForest[][16] =
{
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/viridian_forest/palettes/15.gbapal"),
};

const u32 gTilesetTiles_UnusedGatehouse1[] = INCBIN_U32("data/tilesets/secondary/unused_gatehouse_1/tiles.4bpp.lz");

const u16 gTilesetPalettes_UnusedGatehouse1[][16] =
{
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/palettes/15.gbapal"),
};

const u32 gTilesetTiles_RockTunnel[] = INCBIN_U32("data/tilesets/secondary/rock_tunnel/tiles.4bpp.lz");

const u16 gTilesetPalettes_RockTunnel[][16] =
{
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/rock_tunnel/palettes/15.gbapal"),
};

const u32 gTilesetTiles_DiglettsCave[] = INCBIN_U32("data/tilesets/secondary/digletts_cave/tiles.4bpp.lz");

const u16 gTilesetPalettes_DiglettsCave[][16] =
{
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/digletts_cave/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SeafoamIslands[] = INCBIN_U32("data/tilesets/secondary/seafoam_islands/tiles.4bpp.lz");

const u16 gTilesetPalettes_SeafoamIslands[][16] =
{
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/seafoam_islands/palettes/15.gbapal"),
};

const u32 gTilesetTiles_UnusedGatehouse2[] = INCBIN_U32("data/tilesets/secondary/unused_gatehouse_2/tiles.4bpp.lz");

const u16 gTilesetPalettes_UnusedGatehouse2[][16] =
{
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/palettes/15.gbapal"),
};

const u32 gTilesetTiles_CeruleanCave[] = INCBIN_U32("data/tilesets/secondary/cerulean_cave/tiles.4bpp.lz");

const u16 gTilesetPalettes_CeruleanCave[][16] =
{
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/cerulean_cave/palettes/15.gbapal"),
};

const u32 gTilesetTiles_GenericBuilding2[] = INCBIN_U32("data/tilesets/secondary/generic_building_2/tiles.4bpp.lz");

const u16 gTilesetPalettes_GenericBuilding2[][16] =
{
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/generic_building_2/palettes/15.gbapal"),
};

const u32 gTilesetTiles_PowerPlant[] = INCBIN_U32("data/tilesets/secondary/power_plant/tiles.4bpp.lz");

const u16 gTilesetPalettes_PowerPlant[][16] =
{
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/power_plant/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SeaCottage[] = INCBIN_U32("data/tilesets/secondary/sea_cottage/tiles.4bpp.lz");

const u16 gTilesetPalettes_SeaCottage[][16] =
{
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sea_cottage/palettes/15.gbapal"),
};


const u32 gTilesetTiles_Condominiums[] = INCBIN_U32("data/tilesets/secondary/condominiums/tiles.4bpp.lz");


const u16 gTilesetPalettes_Condominiums[][16] =
{
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/condominiums/palettes/15.gbapal"),
};

const u32 gTilesetTiles_UndergroundPath[] = INCBIN_U32("data/tilesets/secondary/underground_path/tiles.4bpp.lz");

const u16 gTilesetPalettes_UndergroundPath[][16] =
{
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/underground_path/palettes/15.gbapal"),
};

const u32 gTilesetTiles_PokemonTower[] = INCBIN_U32("data/tilesets/secondary/pokemon_tower/tiles.4bpp.lz");

const u16 gTilesetPalettes_PokemonTower[][16] =
{
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_tower/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SafariZoneBuilding[] = INCBIN_U32("data/tilesets/secondary/safari_zone_building/tiles.4bpp.lz");

const u16 gTilesetPalettes_SafariZoneBuilding[][16] =
{
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/safari_zone_building/palettes/15.gbapal"),
};

const u32 gTilesetTiles_PokemonMansion[] = INCBIN_U32("data/tilesets/secondary/pokemon_mansion/tiles.4bpp.lz");

const u16 gTilesetPalettes_PokemonMansion[][16] =
{
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_mansion/palettes/15.gbapal"),
};

const u32 gTilesetTiles_RestaurantHotel[] = INCBIN_U32("data/tilesets/secondary/restaurant_hotel/tiles.4bpp.lz");

const u16 gTilesetPalettes_RestaurantHotel[][16] =
{
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/restaurant_hotel/palettes/15.gbapal"),
};

const u32 gTilesetTiles_School[] = INCBIN_U32("data/tilesets/secondary/school/tiles.4bpp.lz");

const u16 gTilesetPalettes_School[][16] =
{
 INCBIN_U16("data/tilesets/secondary/school/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/school/palettes/15.gbapal"),
};

const u32 gTilesetTiles_FanClubDaycare[] = INCBIN_U32("data/tilesets/secondary/fan_club_daycare/tiles.4bpp.lz");

const u16 gTilesetPalettes_FanClubDaycare[][16] =
{
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/fan_club_daycare/palettes/15.gbapal"),
};

const u32 gTilesetTiles_BurgledHouse[] = INCBIN_U32("data/tilesets/secondary/burgled_house/tiles.4bpp.lz");

const u16 gTilesetPalettes_BurgledHouse[][16] =
{
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/burgled_house/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Dummy3[] = INCBIN_U32("data/tilesets/secondary/dummy_3/tiles.4bpp.lz");

const u16 gTilesetPalettes_Dummy3[][16] =
{
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_3/palettes/15.gbapal"),
};

const u32 gTilesetTiles_Dummy4[] = INCBIN_U32("data/tilesets/secondary/dummy_4/tiles.4bpp.lz");

const u16 gTilesetPalettes_Dummy4[][16] =
{
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/dummy_4/palettes/15.gbapal"),
};

const u32 gTilesetTiles_MtEmber[] = INCBIN_U32("data/tilesets/secondary/mt_ember/tiles.4bpp.lz");

const u16 gTilesetPalettes_MtEmber[][16] =
{
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/mt_ember/palettes/15.gbapal"),
};

const u32 gTilesetTiles_BerryForest[] = INCBIN_U32("data/tilesets/secondary/berry_forest/tiles.4bpp.lz");

const u16 gTilesetPalettes_BerryForest[][16] =
{
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/berry_forest/palettes/15.gbapal"),
};

const u32 gTilesetTiles_NavelRock[] = INCBIN_U32("data/tilesets/secondary/navel_rock/tiles.4bpp.lz");

const u16 gTilesetPalettes_NavelRock[][16] =
{
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/navel_rock/palettes/15.gbapal"),
};

const u32 gTilesetTiles_TanobyRuins[] = INCBIN_U32("data/tilesets/secondary/tanoby_ruins/tiles.4bpp.lz");

const u16 gTilesetPalettes_TanobyRuins[][16] =
{
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/tanoby_ruins/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SeviiIslands123[] = INCBIN_U32("data/tilesets/secondary/sevii_islands_123/tiles.4bpp.lz");

const u16 gTilesetPalettes_SeviiIslands123[][16] =
{
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_123/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SeviiIslands45[] = INCBIN_U32("data/tilesets/secondary/sevii_islands_45/tiles.4bpp.lz");

const u16 gTilesetPalettes_SeviiIslands45[][16] =
{
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_45/palettes/15.gbapal"),
};

const u32 gTilesetTiles_SeviiIslands67[] = INCBIN_U32("data/tilesets/secondary/sevii_islands_67/tiles.4bpp.lz");

const u16 gTilesetPalettes_SeviiIslands67[][16] =
{
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/sevii_islands_67/palettes/15.gbapal"),
};

const u32 gTilesetTiles_TrainerTower[] = INCBIN_U32("data/tilesets/secondary/trainer_tower/tiles.4bpp.lz");

const u16 gTilesetPalettes_TrainerTower[][16] =
{
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/trainer_tower/palettes/15.gbapal"),
};

const u32 gTilesetTiles_IslandHarbor[] = INCBIN_U32("data/tilesets/secondary/island_harbor/tiles.4bpp.lz");

const u16 gTilesetPalettes_IslandHarbor[][16] =
{
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/island_harbor/palettes/15.gbapal"),
};

const u32 gTilesetTiles_PokemonLeague[] = INCBIN_U32("data/tilesets/secondary/pokemon_league/tiles.4bpp.lz");

const u16 gTilesetPalettes_PokemonLeague[][16] =
{
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/pokemon_league/palettes/15.gbapal"),
};

const u32 gTilesetTiles_HallOfFame[] = INCBIN_U32("data/tilesets/secondary/hall_of_fame/tiles.4bpp.lz");

const u16 gTilesetPalettes_HallOfFame[][16] =
{
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/00.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/01.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/02.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/03.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/04.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/05.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/06.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/07.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/08.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/09.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/10.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/11.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/12.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/13.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/14.gbapal"),
 INCBIN_U16("data/tilesets/secondary/hall_of_fame/palettes/15.gbapal"),
};
# 6 "src/tilesets.c" 2
# 1 "src/data/tilesets/metatiles.h" 1
const u16 gMetatiles_General[] = INCBIN_U16("data/tilesets/primary/general/metatiles.bin");
const u32 gMetatileAttributes_General[] = INCBIN_U32("data/tilesets/primary/general/metatile_attributes.bin");

const u16 gMetatiles_PalletTown[] = INCBIN_U16("data/tilesets/secondary/pallet_town/metatiles.bin");
const u32 gMetatileAttributes_PalletTown[] = INCBIN_U32("data/tilesets/secondary/pallet_town/metatile_attributes.bin");

const u16 gMetatiles_ViridianCity[] = INCBIN_U16("data/tilesets/secondary/viridian_city/metatiles.bin");
const u32 gMetatileAttributes_ViridianCity[] = INCBIN_U32("data/tilesets/secondary/viridian_city/metatile_attributes.bin");

const u16 gMetatiles_PewterCity[] = INCBIN_U16("data/tilesets/secondary/pewter_city/metatiles.bin");
const u32 gMetatileAttributes_PewterCity[] = INCBIN_U32("data/tilesets/secondary/pewter_city/metatile_attributes.bin");

const u16 gMetatiles_CeruleanCity[] = INCBIN_U16("data/tilesets/secondary/cerulean_city/metatiles.bin");
const u32 gMetatileAttributes_CeruleanCity[] = INCBIN_U32("data/tilesets/secondary/cerulean_city/metatile_attributes.bin");

const u16 gMetatiles_LavenderTown[] = INCBIN_U16("data/tilesets/secondary/lavender_town/metatiles.bin");
const u32 gMetatileAttributes_LavenderTown[] = INCBIN_U32("data/tilesets/secondary/lavender_town/metatile_attributes.bin");

const u16 gMetatiles_VermilionCity[] = INCBIN_U16("data/tilesets/secondary/vermilion_city/metatiles.bin");
const u32 gMetatileAttributes_VermilionCity[] = INCBIN_U32("data/tilesets/secondary/vermilion_city/metatile_attributes.bin");

const u16 gMetatiles_CeladonCity[] = INCBIN_U16("data/tilesets/secondary/celadon_city/metatiles.bin");
const u32 gMetatileAttributes_CeladonCity[] = INCBIN_U32("data/tilesets/secondary/celadon_city/metatile_attributes.bin");

const u16 gMetatiles_FuchsiaCity[] = INCBIN_U16("data/tilesets/secondary/fuchsia_city/metatiles.bin");
const u32 gMetatileAttributes_FuchsiaCity[] = INCBIN_U32("data/tilesets/secondary/fuchsia_city/metatile_attributes.bin");

const u16 gMetatiles_CinnabarIsland[] = INCBIN_U16("data/tilesets/secondary/cinnabar_island/metatiles.bin");
const u32 gMetatileAttributes_CinnabarIsland[] = INCBIN_U32("data/tilesets/secondary/cinnabar_island/metatile_attributes.bin");

const u16 gMetatiles_IndigoPlateau[] = INCBIN_U16("data/tilesets/secondary/indigo_plateau/metatiles.bin");
const u32 gMetatileAttributes_IndigoPlateau[] = INCBIN_U32("data/tilesets/secondary/indigo_plateau/metatile_attributes.bin");

const u16 gMetatiles_SaffronCity[] = INCBIN_U16("data/tilesets/secondary/saffron_city/metatiles.bin");
const u32 gMetatileAttributes_SaffronCity[] = INCBIN_U32("data/tilesets/secondary/saffron_city/metatile_attributes.bin");

const u16 gMetatiles_PewterGym[] = INCBIN_U16("data/tilesets/secondary/pewter_gym/metatiles.bin");
const u32 gMetatileAttributes_PewterGym[] = INCBIN_U32("data/tilesets/secondary/pewter_gym/metatile_attributes.bin");

const u16 gMetatiles_CeruleanGym[] = INCBIN_U16("data/tilesets/secondary/cerulean_gym/metatiles.bin");
const u32 gMetatileAttributes_CeruleanGym[] = INCBIN_U32("data/tilesets/secondary/cerulean_gym/metatile_attributes.bin");

const u16 gMetatiles_VermilionGym[] = INCBIN_U16("data/tilesets/secondary/vermilion_gym/metatiles.bin");
const u32 gMetatileAttributes_VermilionGym[] = INCBIN_U32("data/tilesets/secondary/vermilion_gym/metatile_attributes.bin");

const u16 gMetatiles_CeladonGym[] = INCBIN_U16("data/tilesets/secondary/celadon_gym/metatiles.bin");
const u32 gMetatileAttributes_CeladonGym[] = INCBIN_U32("data/tilesets/secondary/celadon_gym/metatile_attributes.bin");

const u16 gMetatiles_FuchsiaGym[] = INCBIN_U16("data/tilesets/secondary/fuchsia_gym/metatiles.bin");
const u32 gMetatileAttributes_FuchsiaGym[] = INCBIN_U32("data/tilesets/secondary/fuchsia_gym/metatile_attributes.bin");

const u16 gMetatiles_SaffronGym[] = INCBIN_U16("data/tilesets/secondary/saffron_gym/metatiles.bin");
const u32 gMetatileAttributes_SaffronGym[] = INCBIN_U32("data/tilesets/secondary/saffron_gym/metatile_attributes.bin");

const u16 gMetatiles_CinnabarGym[] = INCBIN_U16("data/tilesets/secondary/cinnabar_gym/metatiles.bin");
const u32 gMetatileAttributes_CinnabarGym[] = INCBIN_U32("data/tilesets/secondary/cinnabar_gym/metatile_attributes.bin");

const u16 gMetatiles_ViridianGym[] = INCBIN_U16("data/tilesets/secondary/viridian_gym/metatiles.bin");
const u32 gMetatileAttributes_ViridianGym[] = INCBIN_U32("data/tilesets/secondary/viridian_gym/metatile_attributes.bin");

const u16 gMetatiles_Building[] = INCBIN_U16("data/tilesets/primary/building/metatiles.bin");
const u32 gMetatileAttributes_Building[] = INCBIN_U32("data/tilesets/primary/building/metatile_attributes.bin");

const u16 gMetatiles_Dummy1[] = INCBIN_U16("data/tilesets/secondary/dummy_1/metatiles.bin");
const u32 gMetatileAttributes_Dummy1[] = INCBIN_U32("data/tilesets/secondary/dummy_1/metatile_attributes.bin");

const u16 gMetatiles_HoennBuilding[] = INCBIN_U16("data/tilesets/secondary/hoenn_building/metatiles.bin");
const u32 gMetatileAttributes_HoennBuilding[] = INCBIN_U32("data/tilesets/secondary/hoenn_building/metatile_attributes.bin");

const u16 gMetatiles_BikeShop[] = INCBIN_U16("data/tilesets/secondary/bike_shop/metatiles.bin");
const u32 gMetatileAttributes_BikeShop[] = INCBIN_U32("data/tilesets/secondary/bike_shop/metatile_attributes.bin");

const u16 gMetatiles_Mart[] = INCBIN_U16("data/tilesets/secondary/mart/metatiles.bin");
const u32 gMetatileAttributes_Mart[] = INCBIN_U32("data/tilesets/secondary/mart/metatile_attributes.bin");

const u16 gMetatiles_PokemonCenter[] = INCBIN_U16("data/tilesets/secondary/pokemon_center/metatiles.bin");
const u32 gMetatileAttributes_PokemonCenter[] = INCBIN_U32("data/tilesets/secondary/pokemon_center/metatile_attributes.bin");

const u16 gMetatiles_GenericBuilding1[] = INCBIN_U16("data/tilesets/secondary/generic_building_1/metatiles.bin");
const u32 gMetatileAttributes_GenericBuilding1[] = INCBIN_U32("data/tilesets/secondary/generic_building_1/metatile_attributes.bin");

const u16 gMetatiles_Cave[] = INCBIN_U16("data/tilesets/secondary/cave/metatiles.bin");
const u32 gMetatileAttributes_Cave[] = INCBIN_U32("data/tilesets/secondary/cave/metatile_attributes.bin");

const u16 gMetatiles_GameCorner[] = INCBIN_U16("data/tilesets/secondary/game_corner/metatiles.bin");
const u32 gMetatileAttributes_GameCorner[] = INCBIN_U32("data/tilesets/secondary/game_corner/metatile_attributes.bin");

const u16 gMetatiles_Lab[] = INCBIN_U16("data/tilesets/secondary/lab/metatiles.bin");
const u32 gMetatileAttributes_Lab[] = INCBIN_U32("data/tilesets/secondary/lab/metatile_attributes.bin");

const u16 gMetatiles_SSAnne[] = INCBIN_U16("data/tilesets/secondary/ss_anne/metatiles.bin");
const u32 gMetatileAttributes_SSAnne[] = INCBIN_U32("data/tilesets/secondary/ss_anne/metatile_attributes.bin");

const u16 gMetatiles_Dummy2[] = INCBIN_U16("data/tilesets/secondary/dummy_2/metatiles.bin");
const u32 gMetatileAttributes_Dummy2[] = INCBIN_U32("data/tilesets/secondary/dummy_2/metatile_attributes.bin");

const u16 gMetatiles_ViridianForest[] = INCBIN_U16("data/tilesets/secondary/viridian_forest/metatiles.bin");
const u32 gMetatileAttributes_ViridianForest[] = INCBIN_U32("data/tilesets/secondary/viridian_forest/metatile_attributes.bin");

const u16 gMetatiles_UnusedGatehouse1[] = INCBIN_U16("data/tilesets/secondary/unused_gatehouse_1/metatiles.bin");
const u32 gMetatileAttributes_UnusedGatehouse1[] = INCBIN_U32("data/tilesets/secondary/unused_gatehouse_1/metatile_attributes.bin");

const u16 gMetatiles_RockTunnel[] = INCBIN_U16("data/tilesets/secondary/rock_tunnel/metatiles.bin");
const u32 gMetatileAttributes_RockTunnel[] = INCBIN_U32("data/tilesets/secondary/rock_tunnel/metatile_attributes.bin");

const u16 gMetatiles_DiglettsCave[] = INCBIN_U16("data/tilesets/secondary/digletts_cave/metatiles.bin");
const u32 gMetatileAttributes_DiglettsCave[] = INCBIN_U32("data/tilesets/secondary/digletts_cave/metatile_attributes.bin");

const u16 gMetatiles_SeafoamIslands[] = INCBIN_U16("data/tilesets/secondary/seafoam_islands/metatiles.bin");
const u32 gMetatileAttributes_SeafoamIslands[] = INCBIN_U32("data/tilesets/secondary/seafoam_islands/metatile_attributes.bin");

const u16 gMetatiles_UnusedGatehouse2[] = INCBIN_U16("data/tilesets/secondary/unused_gatehouse_2/metatiles.bin");
const u32 gMetatileAttributes_UnusedGatehouse2[] = INCBIN_U32("data/tilesets/secondary/unused_gatehouse_2/metatile_attributes.bin");

const u16 gMetatiles_CeruleanCave[] = INCBIN_U16("data/tilesets/secondary/cerulean_cave/metatiles.bin");
const u32 gMetatileAttributes_CeruleanCave[] = INCBIN_U32("data/tilesets/secondary/cerulean_cave/metatile_attributes.bin");

const u16 gMetatiles_DepartmentStore[] = INCBIN_U16("data/tilesets/secondary/department_store/metatiles.bin");
const u32 gMetatileAttributes_DepartmentStore[] = INCBIN_U32("data/tilesets/secondary/department_store/metatile_attributes.bin");

const u16 gMetatiles_GenericBuilding2[] = INCBIN_U16("data/tilesets/secondary/generic_building_2/metatiles.bin");
const u32 gMetatileAttributes_GenericBuilding2[] = INCBIN_U32("data/tilesets/secondary/generic_building_2/metatile_attributes.bin");

const u16 gMetatiles_PowerPlant[] = INCBIN_U16("data/tilesets/secondary/power_plant/metatiles.bin");
const u32 gMetatileAttributes_PowerPlant[] = INCBIN_U32("data/tilesets/secondary/power_plant/metatile_attributes.bin");

const u16 gMetatiles_SeaCottage[] = INCBIN_U16("data/tilesets/secondary/sea_cottage/metatiles.bin");
const u32 gMetatileAttributes_SeaCottage[] = INCBIN_U32("data/tilesets/secondary/sea_cottage/metatile_attributes.bin");

const u16 gMetatiles_SilphCo[] = INCBIN_U16("data/tilesets/secondary/silph_co/metatiles.bin");
const u32 gMetatileAttributes_SilphCo[] = INCBIN_U32("data/tilesets/secondary/silph_co/metatile_attributes.bin");

const u16 gMetatiles_UndergroundPath[] = INCBIN_U16("data/tilesets/secondary/underground_path/metatiles.bin");
const u32 gMetatileAttributes_UndergroundPath[] = INCBIN_U32("data/tilesets/secondary/underground_path/metatile_attributes.bin");

const u16 gMetatiles_PokemonTower[] = INCBIN_U16("data/tilesets/secondary/pokemon_tower/metatiles.bin");
const u32 gMetatileAttributes_PokemonTower[] = INCBIN_U32("data/tilesets/secondary/pokemon_tower/metatile_attributes.bin");

const u16 gMetatiles_SafariZoneBuilding[] = INCBIN_U16("data/tilesets/secondary/safari_zone_building/metatiles.bin");
const u32 gMetatileAttributes_SafariZoneBuilding[] = INCBIN_U32("data/tilesets/secondary/safari_zone_building/metatile_attributes.bin");

const u16 gMetatiles_PokemonMansion[] = INCBIN_U16("data/tilesets/secondary/pokemon_mansion/metatiles.bin");
const u32 gMetatileAttributes_PokemonMansion[] = INCBIN_U32("data/tilesets/secondary/pokemon_mansion/metatile_attributes.bin");

const u16 gMetatiles_Museum[] = INCBIN_U16("data/tilesets/secondary/museum/metatiles.bin");
const u32 gMetatileAttributes_Museum[] = INCBIN_U32("data/tilesets/secondary/museum/metatile_attributes.bin");

const u16 gMetatiles_CableClub[] = INCBIN_U16("data/tilesets/secondary/cable_club/metatiles.bin");
const u32 gMetatileAttributes_CableClub[] = INCBIN_U32("data/tilesets/secondary/cable_club/metatile_attributes.bin");

const u16 gMetatiles_RestaurantHotel[] = INCBIN_U16("data/tilesets/secondary/restaurant_hotel/metatiles.bin");
const u32 gMetatileAttributes_RestaurantHotel[] = INCBIN_U32("data/tilesets/secondary/restaurant_hotel/metatile_attributes.bin");

const u16 gMetatiles_School[] = INCBIN_U16("data/tilesets/secondary/school/metatiles.bin");
const u32 gMetatileAttributes_School[] = INCBIN_U32("data/tilesets/secondary/school/metatile_attributes.bin");

const u16 gMetatiles_FanClubDaycare[] = INCBIN_U16("data/tilesets/secondary/fan_club_daycare/metatiles.bin");
const u32 gMetatileAttributes_FanClubDaycare[] = INCBIN_U32("data/tilesets/secondary/fan_club_daycare/metatile_attributes.bin");

const u16 gMetatiles_Condominiums[] = INCBIN_U16("data/tilesets/secondary/condominiums/metatiles.bin");
const u32 gMetatileAttributes_Condominiums[] = INCBIN_U32("data/tilesets/secondary/condominiums/metatile_attributes.bin");

const u16 gMetatiles_BurgledHouse[] = INCBIN_U16("data/tilesets/secondary/burgled_house/metatiles.bin");
const u32 gMetatileAttributes_BurgledHouse[] = INCBIN_U32("data/tilesets/secondary/burgled_house/metatile_attributes.bin");

const u16 gMetatiles_Dummy3[] = INCBIN_U16("data/tilesets/secondary/dummy_3/metatiles.bin");
const u32 gMetatileAttributes_Dummy3[] = INCBIN_U32("data/tilesets/secondary/dummy_3/metatile_attributes.bin");

const u16 gMetatiles_Dummy4[] = INCBIN_U16("data/tilesets/secondary/dummy_4/metatiles.bin");
const u32 gMetatileAttributes_Dummy4[] = INCBIN_U32("data/tilesets/secondary/dummy_4/metatile_attributes.bin");

const u16 gMetatiles_MtEmber[] = INCBIN_U16("data/tilesets/secondary/mt_ember/metatiles.bin");
const u32 gMetatileAttributes_MtEmber[] = INCBIN_U32("data/tilesets/secondary/mt_ember/metatile_attributes.bin");

const u16 gMetatiles_BerryForest[] = INCBIN_U16("data/tilesets/secondary/berry_forest/metatiles.bin");
const u32 gMetatileAttributes_BerryForest[] = INCBIN_U32("data/tilesets/secondary/berry_forest/metatile_attributes.bin");

const u16 gMetatiles_NavelRock[] = INCBIN_U16("data/tilesets/secondary/navel_rock/metatiles.bin");
const u32 gMetatileAttributes_NavelRock[] = INCBIN_U32("data/tilesets/secondary/navel_rock/metatile_attributes.bin");

const u16 gMetatiles_TanobyRuins[] = INCBIN_U16("data/tilesets/secondary/tanoby_ruins/metatiles.bin");
const u32 gMetatileAttributes_TanobyRuins[] = INCBIN_U32("data/tilesets/secondary/tanoby_ruins/metatile_attributes.bin");

const u16 gMetatiles_SeviiIslands123[] = INCBIN_U16("data/tilesets/secondary/sevii_islands_123/metatiles.bin");
const u32 gMetatileAttributes_SeviiIslands123[] = INCBIN_U32("data/tilesets/secondary/sevii_islands_123/metatile_attributes.bin");

const u16 gMetatiles_SeviiIslands45[] = INCBIN_U16("data/tilesets/secondary/sevii_islands_45/metatiles.bin");
const u32 gMetatileAttributes_SeviiIslands45[] = INCBIN_U32("data/tilesets/secondary/sevii_islands_45/metatile_attributes.bin");

const u16 gMetatiles_SeviiIslands67[] = INCBIN_U16("data/tilesets/secondary/sevii_islands_67/metatiles.bin");
const u32 gMetatileAttributes_SeviiIslands67[] = INCBIN_U32("data/tilesets/secondary/sevii_islands_67/metatile_attributes.bin");

const u16 gMetatiles_TrainerTower[] = INCBIN_U16("data/tilesets/secondary/trainer_tower/metatiles.bin");
const u32 gMetatileAttributes_TrainerTower[] = INCBIN_U32("data/tilesets/secondary/trainer_tower/metatile_attributes.bin");

const u16 gMetatiles_IslandHarbor[] = INCBIN_U16("data/tilesets/secondary/island_harbor/metatiles.bin");
const u32 gMetatileAttributes_IslandHarbor[] = INCBIN_U32("data/tilesets/secondary/island_harbor/metatile_attributes.bin");

const u16 gMetatiles_PokemonLeague[] = INCBIN_U16("data/tilesets/secondary/pokemon_league/metatiles.bin");
const u32 gMetatileAttributes_PokemonLeague[] = INCBIN_U32("data/tilesets/secondary/pokemon_league/metatile_attributes.bin");

const u16 gMetatiles_HallOfFame[] = INCBIN_U16("data/tilesets/secondary/hall_of_fame/metatiles.bin");
const u32 gMetatileAttributes_HallOfFame[] = INCBIN_U32("data/tilesets/secondary/hall_of_fame/metatile_attributes.bin");
# 7 "src/tilesets.c" 2
# 1 "src/data/tilesets/headers.h" 1
const struct Tileset gTileset_General =
{
    .isCompressed = 1,
    .isSecondary = 0,
    .tiles = gTilesetTiles_General,
    .palettes = gTilesetPalettes_General,
    .metatiles = gMetatiles_General,
    .metatileAttributes = gMetatileAttributes_General,
    .callback = InitTilesetAnim_General,
};

const struct Tileset gTileset_PalletTown =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PalletTown,
    .palettes = gTilesetPalettes_PalletTown,
    .metatiles = gMetatiles_PalletTown,
    .metatileAttributes = gMetatileAttributes_PalletTown,
    .callback = ((void *)0),
};

const struct Tileset gTileset_ViridianCity =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_ViridianCity,
    .palettes = gTilesetPalettes_ViridianCity,
    .metatiles = gMetatiles_ViridianCity,
    .metatileAttributes = gMetatileAttributes_ViridianCity,
    .callback = ((void *)0),
};

const struct Tileset gTileset_PewterCity =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PewterCity,
    .palettes = gTilesetPalettes_PewterCity,
    .metatiles = gMetatiles_PewterCity,
    .metatileAttributes = gMetatileAttributes_PewterCity,
    .callback = ((void *)0),
};

const struct Tileset gTileset_CeruleanCity =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CeruleanCity,
    .palettes = gTilesetPalettes_CeruleanCity,
    .metatiles = gMetatiles_CeruleanCity,
    .metatileAttributes = gMetatileAttributes_CeruleanCity,
    .callback = ((void *)0),
};

const struct Tileset gTileset_LavenderTown =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_LavenderTown,
    .palettes = gTilesetPalettes_LavenderTown,
    .metatiles = gMetatiles_LavenderTown,
    .metatileAttributes = gMetatileAttributes_LavenderTown,
    .callback = ((void *)0),
};

const struct Tileset gTileset_VermilionCity =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_VermilionCity,
    .palettes = gTilesetPalettes_VermilionCity,
    .metatiles = gMetatiles_VermilionCity,
    .metatileAttributes = gMetatileAttributes_VermilionCity,
    .callback = ((void *)0),
};

const struct Tileset gTileset_CeladonCity =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CeladonCity,
    .palettes = gTilesetPalettes_CeladonCity,
    .metatiles = gMetatiles_CeladonCity,
    .metatileAttributes = gMetatileAttributes_CeladonCity,
    .callback = InitTilesetAnim_CeladonCity,
};

const struct Tileset gTileset_FuchsiaCity =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_FuchsiaCity,
    .palettes = gTilesetPalettes_FuchsiaCity,
    .metatiles = gMetatiles_FuchsiaCity,
    .metatileAttributes = gMetatileAttributes_FuchsiaCity,
    .callback = ((void *)0),
};

const struct Tileset gTileset_CinnabarIsland =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CinnabarIsland,
    .palettes = gTilesetPalettes_CinnabarIsland,
    .metatiles = gMetatiles_CinnabarIsland,
    .metatileAttributes = gMetatileAttributes_CinnabarIsland,
    .callback = ((void *)0),
};

const struct Tileset gTileset_IndigoPlateau =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_IndigoPlateau,
    .palettes = gTilesetPalettes_IndigoPlateau,
    .metatiles = gMetatiles_IndigoPlateau,
    .metatileAttributes = gMetatileAttributes_IndigoPlateau,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SaffronCity =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SaffronCity,
    .palettes = gTilesetPalettes_SaffronCity,
    .metatiles = gMetatiles_SaffronCity,
    .metatileAttributes = gMetatileAttributes_SaffronCity,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Building =
{
    .isCompressed = 1,
    .isSecondary = 0,
    .tiles = gTilesetTiles_Building,
    .palettes = gTilesetPalettes_Building,
    .metatiles = gMetatiles_Building,
    .metatileAttributes = gMetatileAttributes_Building,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Mart =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Mart,
    .palettes = gTilesetPalettes_Mart,
    .metatiles = gMetatiles_Mart,
    .metatileAttributes = gMetatileAttributes_Mart,
    .callback = ((void *)0),
};

const struct Tileset gTileset_PokemonCenter =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PokemonCenter,
    .palettes = gTilesetPalettes_PokemonCenter,
    .metatiles = gMetatiles_PokemonCenter,
    .metatileAttributes = gMetatileAttributes_PokemonCenter,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Cave =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Cave,
    .palettes = gTilesetPalettes_Cave,
    .metatiles = gMetatiles_Cave,
    .metatileAttributes = gMetatileAttributes_Cave,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Dummy1 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Dummy1,
    .palettes = gTilesetPalettes_Dummy1,
    .metatiles = gMetatiles_Dummy1,
    .metatileAttributes = gMetatileAttributes_Dummy1,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Museum =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Museum,
    .palettes = gTilesetPalettes_Museum,
    .metatiles = gMetatiles_Museum,
    .metatileAttributes = gMetatileAttributes_Museum,
    .callback = ((void *)0),
};

const struct Tileset gTileset_CableClub =
{
    .isCompressed = 0,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CableClub,
    .palettes = gTilesetPalettes_CableClub,
    .metatiles = gMetatiles_CableClub,
    .metatileAttributes = gMetatileAttributes_CableClub,
    .callback = ((void *)0),
};

const struct Tileset gTileset_BikeShop =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_BikeShop,
    .palettes = gTilesetPalettes_BikeShop,
    .metatiles = gMetatiles_BikeShop,
    .metatileAttributes = gMetatileAttributes_BikeShop,
    .callback = ((void *)0),
};

const struct Tileset gTileset_GenericBuilding1 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_GenericBuilding1,
    .palettes = gTilesetPalettes_GenericBuilding1,
    .metatiles = gMetatiles_GenericBuilding1,
    .metatileAttributes = gMetatileAttributes_GenericBuilding1,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Lab =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Lab,
    .palettes = gTilesetPalettes_Lab,
    .metatiles = gMetatiles_Lab,
    .metatileAttributes = gMetatileAttributes_Lab,
    .callback = ((void *)0),
};

const struct Tileset gTileset_FuchsiaGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_FuchsiaGym,
    .palettes = gTilesetPalettes_FuchsiaGym,
    .metatiles = gMetatiles_FuchsiaGym,
    .metatileAttributes = gMetatileAttributes_FuchsiaGym,
    .callback = ((void *)0),
};

const struct Tileset gTileset_ViridianGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_ViridianGym,
    .palettes = gTilesetPalettes_ViridianGym,
    .metatiles = gMetatiles_ViridianGym,
    .metatileAttributes = gMetatileAttributes_ViridianGym,
    .callback = ((void *)0),
};

const struct Tileset gTileset_HoennBuilding =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_HoennBuilding,
    .palettes = gTilesetPalettes_HoennBuilding,
    .metatiles = gMetatiles_HoennBuilding,
    .metatileAttributes = gMetatileAttributes_HoennBuilding,
    .callback = ((void *)0),
};

const struct Tileset gTileset_GameCorner =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_GameCorner,
    .palettes = gTilesetPalettes_GameCorner,
    .metatiles = gMetatiles_GameCorner,
    .metatileAttributes = gMetatileAttributes_GameCorner,
    .callback = ((void *)0),
};

const struct Tileset gTileset_PewterGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PewterGym,
    .palettes = gTilesetPalettes_PewterGym,
    .metatiles = gMetatiles_PewterGym,
    .metatileAttributes = gMetatileAttributes_PewterGym,
    .callback = ((void *)0),
};

const struct Tileset gTileset_CeruleanGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CeruleanGym,
    .palettes = gTilesetPalettes_CeruleanGym,
    .metatiles = gMetatiles_CeruleanGym,
    .metatileAttributes = gMetatileAttributes_CeruleanGym,
    .callback = ((void *)0),
};

const struct Tileset gTileset_VermilionGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_VermilionGym,
    .palettes = gTilesetPalettes_VermilionGym,
    .metatiles = gMetatiles_VermilionGym,
    .metatileAttributes = gMetatileAttributes_VermilionGym,
    .callback = InitTilesetAnim_VermilionGym,
};

const struct Tileset gTileset_CeladonGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CeladonGym,
    .palettes = gTilesetPalettes_CeladonGym,
    .metatiles = gMetatiles_CeladonGym,
    .metatileAttributes = gMetatileAttributes_CeladonGym,
    .callback = InitTilesetAnim_CeladonGym,
};

const struct Tileset gTileset_SaffronGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SaffronGym,
    .palettes = gTilesetPalettes_SaffronGym,
    .metatiles = gMetatiles_SaffronGym,
    .metatileAttributes = gMetatileAttributes_SaffronGym,
    .callback = ((void *)0),
};

const struct Tileset gTileset_CinnabarGym =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CinnabarGym,
    .palettes = gTilesetPalettes_CinnabarGym,
    .metatiles = gMetatiles_CinnabarGym,
    .metatileAttributes = gMetatileAttributes_CinnabarGym,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SSAnne =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SSAnne,
    .palettes = gTilesetPalettes_SSAnne,
    .metatiles = gMetatiles_SSAnne,
    .metatileAttributes = gMetatileAttributes_SSAnne,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Dummy2 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Dummy2,
    .palettes = gTilesetPalettes_Dummy2,
    .metatiles = gMetatiles_Dummy2,
    .metatileAttributes = gMetatileAttributes_Dummy2,
    .callback = ((void *)0),
};

const struct Tileset gTileset_ViridianForest =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_ViridianForest,
    .palettes = gTilesetPalettes_ViridianForest,
    .metatiles = gMetatiles_ViridianForest,
    .metatileAttributes = gMetatileAttributes_ViridianForest,
    .callback = ((void *)0),
};

const struct Tileset gTileset_UnusedGatehouse1 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_UnusedGatehouse1,
    .palettes = gTilesetPalettes_UnusedGatehouse1,
    .metatiles = gMetatiles_UnusedGatehouse1,
    .metatileAttributes = gMetatileAttributes_UnusedGatehouse1,
    .callback = ((void *)0),
};

const struct Tileset gTileset_RockTunnel =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_RockTunnel,
    .palettes = gTilesetPalettes_RockTunnel,
    .metatiles = gMetatiles_RockTunnel,
    .metatileAttributes = gMetatileAttributes_RockTunnel,
    .callback = ((void *)0),
};

const struct Tileset gTileset_DiglettsCave =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_DiglettsCave,
    .palettes = gTilesetPalettes_DiglettsCave,
    .metatiles = gMetatiles_DiglettsCave,
    .metatileAttributes = gMetatileAttributes_DiglettsCave,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SeafoamIslands =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SeafoamIslands,
    .palettes = gTilesetPalettes_SeafoamIslands,
    .metatiles = gMetatiles_SeafoamIslands,
    .metatileAttributes = gMetatileAttributes_SeafoamIslands,
    .callback = ((void *)0),
};

const struct Tileset gTileset_UnusedGatehouse2 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_UnusedGatehouse2,
    .palettes = gTilesetPalettes_UnusedGatehouse2,
    .metatiles = gMetatiles_UnusedGatehouse2,
    .metatileAttributes = gMetatileAttributes_UnusedGatehouse2,
    .callback = ((void *)0),
};

const struct Tileset gTileset_CeruleanCave =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_CeruleanCave,
    .palettes = gTilesetPalettes_CeruleanCave,
    .metatiles = gMetatiles_CeruleanCave,
    .metatileAttributes = gMetatileAttributes_CeruleanCave,
    .callback = ((void *)0),
};

const struct Tileset gTileset_DepartmentStore =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_DepartmentStore,
    .palettes = gTilesetPalettes_DepartmentStore,
    .metatiles = gMetatiles_DepartmentStore,
    .metatileAttributes = gMetatileAttributes_DepartmentStore,
    .callback = ((void *)0),
};

const struct Tileset gTileset_GenericBuilding2 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_GenericBuilding2,
    .palettes = gTilesetPalettes_GenericBuilding2,
    .metatiles = gMetatiles_GenericBuilding2,
    .metatileAttributes = gMetatileAttributes_GenericBuilding2,
    .callback = ((void *)0),
};

const struct Tileset gTileset_PowerPlant =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PowerPlant,
    .palettes = gTilesetPalettes_PowerPlant,
    .metatiles = gMetatiles_PowerPlant,
    .metatileAttributes = gMetatileAttributes_PowerPlant,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SeaCottage =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SeaCottage,
    .palettes = gTilesetPalettes_SeaCottage,
    .metatiles = gMetatiles_SeaCottage,
    .metatileAttributes = gMetatileAttributes_SeaCottage,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SilphCo =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Condominiums,
    .palettes = gTilesetPalettes_Condominiums,
    .metatiles = gMetatiles_SilphCo,
    .metatileAttributes = gMetatileAttributes_SilphCo,
    .callback = InitTilesetAnim_SilphCo,
};

const struct Tileset gTileset_UndergroundPath =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_UndergroundPath,
    .palettes = gTilesetPalettes_UndergroundPath,
    .metatiles = gMetatiles_UndergroundPath,
    .metatileAttributes = gMetatileAttributes_UndergroundPath,
    .callback = ((void *)0),
};

const struct Tileset gTileset_PokemonTower =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PokemonTower,
    .palettes = gTilesetPalettes_PokemonTower,
    .metatiles = gMetatiles_PokemonTower,
    .metatileAttributes = gMetatileAttributes_PokemonTower,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SafariZoneBuilding =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SafariZoneBuilding,
    .palettes = gTilesetPalettes_SafariZoneBuilding,
    .metatiles = gMetatiles_SafariZoneBuilding,
    .metatileAttributes = gMetatileAttributes_SafariZoneBuilding,
    .callback = ((void *)0),
};

const struct Tileset gTileset_PokemonMansion =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PokemonMansion,
    .palettes = gTilesetPalettes_PokemonMansion,
    .metatiles = gMetatiles_PokemonMansion,
    .metatileAttributes = gMetatileAttributes_PokemonMansion,
    .callback = ((void *)0),
};

const struct Tileset gTileset_RestaurantHotel =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_RestaurantHotel,
    .palettes = gTilesetPalettes_RestaurantHotel,
    .metatiles = gMetatiles_RestaurantHotel,
    .metatileAttributes = gMetatileAttributes_RestaurantHotel,
    .callback = ((void *)0),
};

const struct Tileset gTileset_School =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_School,
    .palettes = gTilesetPalettes_School,
    .metatiles = gMetatiles_School,
    .metatileAttributes = gMetatileAttributes_School,
    .callback = ((void *)0),
};

const struct Tileset gTileset_FanClubDaycare =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_FanClubDaycare,
    .palettes = gTilesetPalettes_FanClubDaycare,
    .metatiles = gMetatiles_FanClubDaycare,
    .metatileAttributes = gMetatileAttributes_FanClubDaycare,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Condominiums =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Condominiums,
    .palettes = gTilesetPalettes_Condominiums,
    .metatiles = gMetatiles_Condominiums,
    .metatileAttributes = gMetatileAttributes_Condominiums,
    .callback = ((void *)0),
};

const struct Tileset gTileset_BurgledHouse =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_BurgledHouse,
    .palettes = gTilesetPalettes_BurgledHouse,
    .metatiles = gMetatiles_BurgledHouse,
    .metatileAttributes = gMetatileAttributes_BurgledHouse,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Dummy3 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Dummy3,
    .palettes = gTilesetPalettes_Dummy3,
    .metatiles = gMetatiles_Dummy3,
    .metatileAttributes = gMetatileAttributes_Dummy3,
    .callback = ((void *)0),
};

const struct Tileset gTileset_Dummy4 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_Dummy4,
    .palettes = gTilesetPalettes_Dummy4,
    .metatiles = gMetatiles_Dummy4,
    .metatileAttributes = gMetatileAttributes_Dummy4,
    .callback = ((void *)0),
};

const struct Tileset gTileset_MtEmber =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_MtEmber,
    .palettes = gTilesetPalettes_MtEmber,
    .metatiles = gMetatiles_MtEmber,
    .metatileAttributes = gMetatileAttributes_MtEmber,
    .callback = InitTilesetAnim_MtEmber,
};

const struct Tileset gTileset_BerryForest =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_BerryForest,
    .palettes = gTilesetPalettes_BerryForest,
    .metatiles = gMetatiles_BerryForest,
    .metatileAttributes = gMetatileAttributes_BerryForest,
    .callback = ((void *)0),
};

const struct Tileset gTileset_NavelRock =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_NavelRock,
    .palettes = gTilesetPalettes_NavelRock,
    .metatiles = gMetatiles_NavelRock,
    .metatileAttributes = gMetatileAttributes_NavelRock,
    .callback = ((void *)0),
};

const struct Tileset gTileset_TanobyRuins =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_TanobyRuins,
    .palettes = gTilesetPalettes_TanobyRuins,
    .metatiles = gMetatiles_TanobyRuins,
    .metatileAttributes = gMetatileAttributes_TanobyRuins,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SeviiIslands123 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SeviiIslands123,
    .palettes = gTilesetPalettes_SeviiIslands123,
    .metatiles = gMetatiles_SeviiIslands123,
    .metatileAttributes = gMetatileAttributes_SeviiIslands123,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SeviiIslands45 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SeviiIslands45,
    .palettes = gTilesetPalettes_SeviiIslands45,
    .metatiles = gMetatiles_SeviiIslands45,
    .metatileAttributes = gMetatileAttributes_SeviiIslands45,
    .callback = ((void *)0),
};

const struct Tileset gTileset_SeviiIslands67 =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_SeviiIslands67,
    .palettes = gTilesetPalettes_SeviiIslands67,
    .metatiles = gMetatiles_SeviiIslands67,
    .metatileAttributes = gMetatileAttributes_SeviiIslands67,
    .callback = ((void *)0),
};

const struct Tileset gTileset_TrainerTower =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_TrainerTower,
    .palettes = gTilesetPalettes_TrainerTower,
    .metatiles = gMetatiles_TrainerTower,
    .metatileAttributes = gMetatileAttributes_TrainerTower,
    .callback = ((void *)0),
};

const struct Tileset gTileset_IslandHarbor =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_IslandHarbor,
    .palettes = gTilesetPalettes_IslandHarbor,
    .metatiles = gMetatiles_IslandHarbor,
    .metatileAttributes = gMetatileAttributes_IslandHarbor,
    .callback = ((void *)0),
};

const struct Tileset gTileset_PokemonLeague =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_PokemonLeague,
    .palettes = gTilesetPalettes_PokemonLeague,
    .metatiles = gMetatiles_PokemonLeague,
    .metatileAttributes = gMetatileAttributes_PokemonLeague,
    .callback = ((void *)0),
};

const struct Tileset gTileset_HallOfFame =
{
    .isCompressed = 1,
    .isSecondary = 1,
    .tiles = gTilesetTiles_HallOfFame,
    .palettes = gTilesetPalettes_HallOfFame,
    .metatiles = gMetatiles_HallOfFame,
    .metatileAttributes = gMetatileAttributes_HallOfFame,
    .callback = ((void *)0),
};
# 8 "src/tilesets.c" 2
