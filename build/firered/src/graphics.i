# 0 "src/graphics.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/graphics.c"
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
# 2 "src/graphics.c" 2

const u32 gBattleInterface_Textbox_Gfx[] = INCBIN_U32("graphics/battle_interface/textbox.4bpp.lz");
const u32 gBattleInterface_Textbox_Pal[] = INCBIN_U32("graphics/battle_interface/textbox.gbapal.lz");
const u32 gBattleInterface_Textbox_Tilemap[] = INCBIN_U32("graphics/battle_interface/textbox.bin.lz");

const u32 gMonFrontPic_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/front.4bpp.lz");
const u32 gMonBackPic_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/back.4bpp.lz");
const u32 gMonPalette_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/normal.gbapal.lz");
const u32 gMonShinyPalette_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/shiny.gbapal.lz");


const u32 gUnusedGfx_OldCharmap[] = INCBIN_U32("graphics/unused/old_charmap.4bpp.lz");
const u32 gUnusedTimemap_OldCharmap[] = INCBIN_U32("graphics/unused/old_charmap.bin.lz");
const u32 gUnusedPal_OldCharmap[] = INCBIN_U32("graphics/unused/old_charmap.gbapal.lz");

const u32 gSmokescreenImpactTiles[] = INCBIN_U32("graphics/battle_anims/sprites/smokescreen_impact.4bpp.lz");
const u32 gSmokescreenImpactPalette[] = INCBIN_U32("graphics/battle_anims/sprites/smokescreen_impact.gbapal.lz");

# 1 "src/data/graphics/interface_pokeballs.h" 1
const u32 gBallGfx_Poke[] = INCBIN_U32("graphics/interface/ball/poke.4bpp.lz");
const u32 gBallPal_Poke[] = INCBIN_U32("graphics/interface/ball/poke.gbapal.lz");

const u32 gBallGfx_Great[] = INCBIN_U32("graphics/interface/ball/great.4bpp.lz");
const u32 gBallPal_Great[] = INCBIN_U32("graphics/interface/ball/great.gbapal.lz");

const u32 gBallGfx_Safari[] = INCBIN_U32("graphics/interface/ball/safari.4bpp.lz");
const u32 gBallPal_Safari[] = INCBIN_U32("graphics/interface/ball/safari.gbapal.lz");

const u32 gBallGfx_Ultra[] = INCBIN_U32("graphics/interface/ball/ultra.4bpp.lz");
const u32 gBallPal_Ultra[] = INCBIN_U32("graphics/interface/ball/ultra.gbapal.lz");

const u32 gBallGfx_Master[] = INCBIN_U32("graphics/interface/ball/master.4bpp.lz");
const u32 gBallPal_Master[] = INCBIN_U32("graphics/interface/ball/master.gbapal.lz");

const u32 gBallGfx_Net[] = INCBIN_U32("graphics/interface/ball/net.4bpp.lz");
const u32 gBallPal_Net[] = INCBIN_U32("graphics/interface/ball/net.gbapal.lz");

const u32 gBallGfx_Dive[] = INCBIN_U32("graphics/interface/ball/dive.4bpp.lz");
const u32 gBallPal_Dive[] = INCBIN_U32("graphics/interface/ball/dive.gbapal.lz");

const u32 gBallGfx_Nest[] = INCBIN_U32("graphics/interface/ball/nest.4bpp.lz");
const u32 gBallPal_Nest[] = INCBIN_U32("graphics/interface/ball/nest.gbapal.lz");

const u32 gBallGfx_Repeat[] = INCBIN_U32("graphics/interface/ball/repeat.4bpp.lz");
const u32 gBallPal_Repeat[] = INCBIN_U32("graphics/interface/ball/repeat.gbapal.lz");

const u32 gBallGfx_Timer[] = INCBIN_U32("graphics/interface/ball/timer.4bpp.lz");
const u32 gBallPal_Timer[] = INCBIN_U32("graphics/interface/ball/timer.gbapal.lz");

const u32 gBallGfx_Luxury[] = INCBIN_U32("graphics/interface/ball/luxury.4bpp.lz");
const u32 gBallPal_Luxury[] = INCBIN_U32("graphics/interface/ball/luxury.gbapal.lz");

const u32 gBallGfx_Premier[] = INCBIN_U32("graphics/interface/ball/premier.4bpp.lz");
const u32 gBallPal_Premier[] = INCBIN_U32("graphics/interface/ball/premier.gbapal.lz");

const u32 gOpenPokeballGfx[] = INCBIN_U32("graphics/interface/ball_open.4bpp.lz");
# 21 "src/graphics.c" 2

const u32 gBlankGfxCompressed[] = INCBIN_U32("graphics/interface/blank.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Bubble[] = INCBIN_U32("graphics/battle_anims/sprites/bubble.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Bone[] = INCBIN_U32("graphics/battle_anims/sprites/bone.4bpp.lz");
const u32 gBattleAnimSpriteGfx_AirWave[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Orb[] = INCBIN_U32("graphics/battle_anims/sprites/orb.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Sword[] = INCBIN_U32("graphics/battle_anims/sprites/sword.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Seed[] = INCBIN_U32("graphics/battle_anims/sprites/seed.4bpp.lz");

const u32 gBattleAnimSpritePal_RainDrops[] = INCBIN_U32("graphics/battle_anims/sprites/rain_drops.gbapal.lz");
const u32 gBattleAnimSpritePal_Bone[] = INCBIN_U32("graphics/battle_anims/sprites/bone.gbapal.lz");
const u32 gBattleAnimSpritePal_AirWave[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave.gbapal.lz");
const u32 gBattleAnimSpritePal_Orb[] = INCBIN_U32("graphics/battle_anims/sprites/orb.gbapal.lz");
const u32 gBattleAnimSpritePal_Sword[] = INCBIN_U32("graphics/battle_anims/sprites/sword.gbapal.lz");
const u32 gBattleAnimSpritePal_Seed[] = INCBIN_U32("graphics/battle_anims/sprites/seed.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Needle[] = INCBIN_U32("graphics/battle_anims/sprites/needle.4bpp.lz");
const u32 gBattleAnimSpritePal_Needle[] = INCBIN_U32("graphics/battle_anims/sprites/needle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion6[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_6.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion6[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_6.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkOrb[] = INCBIN_U32("graphics/battle_anims/sprites/pink_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkOrb[] = INCBIN_U32("graphics/battle_anims/sprites/pink_orb.gbapal.lz");

const u32 gBattleAnimSpritePal_IceCube[] = INCBIN_U32("graphics/battle_anims/sprites/ice_cube.gbapal.lz");
const u32 gBattleAnimSpriteGfx_IceCube[] = INCBIN_U32("graphics/battle_anims/sprites/ice_cube.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Gust[] = INCBIN_U32("graphics/battle_anims/sprites/gust.4bpp.lz");
const u32 gBattleAnimSpritePal_Gust[] = INCBIN_U32("graphics/battle_anims/sprites/gust.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spark2[] = INCBIN_U32("graphics/battle_anims/sprites/spark_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Spark2[] = INCBIN_U32("graphics/battle_anims/sprites/spark_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Orange[] = INCBIN_U32("graphics/battle_anims/sprites/orange.4bpp.lz");
const u32 gBattleAnimSpritePal_Orange[] = INCBIN_U32("graphics/battle_anims/sprites/orange.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spikes[] = INCBIN_U32("graphics/battle_anims/sprites/spikes.4bpp.lz");
const u32 gBattleAnimSpritePal_Spikes[] = INCBIN_U32("graphics/battle_anims/sprites/spikes.gbapal.lz");

const u32 gBattleAnimSpriteGfx_YellowBall[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowBall[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TiedBag[] = INCBIN_U32("graphics/battle_anims/sprites/tied_bag.4bpp.lz");
const u32 gBattleAnimSpritePal_TiedBag[] = INCBIN_U32("graphics/battle_anims/sprites/tied_bag.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlackSmoke[] = INCBIN_U32("graphics/battle_anims/sprites/black_smoke.4bpp.lz");
const u32 gBattleAnimSpritePal_BlackSmoke[] = INCBIN_U32("graphics/battle_anims/sprites/black_smoke.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlackBall[] = INCBIN_U32("graphics/battle_anims/sprites/black_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_BlackBall[] = INCBIN_U32("graphics/battle_anims/sprites/black_ball.gbapal.lz");

const u32 gBattleAnimSpritePal_Glass[] = INCBIN_U32("graphics/battle_anims/sprites/glass.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Glass[] = INCBIN_U32("graphics/battle_anims/sprites/glass.4bpp.lz");

const u32 gBattleAnimSpriteGfx_HornHit[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit.4bpp.lz");
const u32 gBattleAnimSpritePal_HornHit[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueShards[] = INCBIN_U32("graphics/battle_anims/sprites/blue_shards.gbapal.lz");
const u32 gBattleAnimSpriteGfx_BlueShards[] = INCBIN_U32("graphics/battle_anims/sprites/blue_shards.4bpp.lz");

const u32 gUnused_BattleSpritePalette_023[] = INCBIN_U32("graphics/unused/battle_anim_023.gbapal.lz");

const u32 gUnusedGfx_MusicNotes[] = INCBIN_U32("graphics/unused/music_notes.4bpp.lz");

const u32 gBattleAnimSpritePal_Hit[] = INCBIN_U32("graphics/battle_anims/sprites/hit.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Hit[] = INCBIN_U32("graphics/battle_anims/sprites/hit.4bpp.lz");

const u32 gBattleAnimSpritePal_Hit2[] = INCBIN_U32("graphics/battle_anims/sprites/hit_2.gbapal.lz");

const u32 gBattleAnimSpritePal_WavingHand[] = INCBIN_U32("graphics/battle_anims/sprites/waving_hand.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WavingHand[] = INCBIN_U32("graphics/battle_anims/sprites/waving_hand.4bpp.lz");

const u32 gBattleAnimSpriteGfx_ClosingEye[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye.4bpp.lz");
const u32 gBattleAnimSpritePal_ClosingEye[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlueStar[] = INCBIN_U32("graphics/battle_anims/sprites/blue_star.4bpp.lz");
const u32 gBattleAnimSpritePal_BlueStar[] = INCBIN_U32("graphics/battle_anims/sprites/blue_star.gbapal.lz");

const u32 gBattleAnimSpritePal_BubbleBurst[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst.gbapal.lz");
const u32 gBattleAnimSpriteGfx_BubbleBurst[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst.4bpp.lz");

const u32 gBattleAnimSpriteGfx_HitDuplicate[] = INCBIN_U32("graphics/battle_anims/sprites/hit_duplicate.4bpp.lz");
const u32 gBattleAnimSpritePal_HitDuplicate[] = INCBIN_U32("graphics/battle_anims/sprites/hit_duplicate.gbapal.lz");

const u32 gBattleAnimSpritePal_Leer[] = INCBIN_U32("graphics/battle_anims/sprites/leer.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Leer[] = INCBIN_U32("graphics/battle_anims/sprites/leer.4bpp.lz");

const u32 gBattleAnimSpritePal_BlueBurst[] = INCBIN_U32("graphics/battle_anims/sprites/blue_burst.gbapal.lz");
const u32 gBattleAnimSpriteGfx_BlueBurst[] = INCBIN_U32("graphics/battle_anims/sprites/blue_burst.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SmallEmber[] = INCBIN_U32("graphics/battle_anims/sprites/small_ember.4bpp.lz");
const u32 gBattleAnimSpritePal_SmallEmber[] = INCBIN_U32("graphics/battle_anims/sprites/small_ember.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GraySmoke[] = INCBIN_U32("graphics/battle_anims/sprites/gray_smoke.4bpp.lz");
const u32 gBattleAnimSpritePal_GraySmoke[] = INCBIN_U32("graphics/battle_anims/sprites/gray_smoke.gbapal.lz");

const u32 gBattleAnimSpritePal_Fire[] = INCBIN_U32("graphics/battle_anims/sprites/fire.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Fire[] = INCBIN_U32("graphics/battle_anims/sprites/fire.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SpinningFire[] = INCBIN_U32("graphics/battle_anims/sprites/spinning_fire.4bpp.lz");
const u32 gBattleAnimSpriteGfx_FirePlume[] = INCBIN_U32("graphics/battle_anims/sprites/fire_plume.4bpp.lz");

const u32 gBattleAnimSpritePal_Lightning2[] = INCBIN_U32("graphics/battle_anims/sprites/lightning_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Lightning2[] = INCBIN_U32("graphics/battle_anims/sprites/lightning_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Lightning[] = INCBIN_U32("graphics/battle_anims/sprites/lightning.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SpinningBall[] = INCBIN_U32("graphics/battle_anims/unused/spinning_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_SpinningBall[] = INCBIN_U32("graphics/battle_anims/unused/spinning_ball.gbapal.lz");
const u32 gBattleAnimSpritePal_SpinningBall2[] = INCBIN_U32("graphics/battle_anims/unused/spinning_ball_2.gbapal.lz");


const u32 gOldBattleInterfaceGfx[] = INCBIN_U32("graphics/unused/obi1.4bpp.lz");
const u32 gOldBattleInterfacePal_1_2_3[] = INCBIN_U32("graphics/unused/obi_palpak1.gbapal.lz");
const u32 gOldBattleInterfacePal4[] = INCBIN_U32("graphics/unused/old_pal4.gbapal.lz");
const u32 gOldBattleInterfacePal_5_6_7[] = INCBIN_U32("graphics/unused/obi_palpak3.gbapal.lz");
const u32 gOldBattleInterfaceGfx2[] = INCBIN_U32("graphics/unused/obi2.4bpp.lz");
const u32 gOldBattleInterfaceTilemap[] = INCBIN_U32("graphics/unused/old_battle_interface_tilemap.bin.lz");

const u32 gBattleAnimSpritePal_ClawSlash2[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash_2.gbapal.lz");
const u32 gBattleAnimSpritePal_ClawSlash[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ClawSlash2[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_ClawSlash[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Scratch3[] = INCBIN_U32("graphics/battle_anims/sprites/scratch_3.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Scratch2[] = INCBIN_U32("graphics/battle_anims/sprites/scratch_2.4bpp.lz");

const u32 gUnusedHpBar_Gfx[] = INCBIN_U32("graphics/interface/hpbar_unused.4bpp.lz");

const u32 gBattleAnimSpriteGfx_BubbleBurst2[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst_2.4bpp.lz");

const u32 gBattleAnimSpritePal_BubbleBurst2[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_IceChunk[] = INCBIN_U32("graphics/battle_anims/sprites/ice_chunk.4bpp.lz");
const u32 gBattleAnimSpritePal_IceChunk[] = INCBIN_U32("graphics/battle_anims/sprites/ice_chunk.gbapal.lz");

const u32 gBattleAnimSpritePal_Glass2[] = INCBIN_U32("graphics/battle_anims/sprites/glass_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Glass2[] = INCBIN_U32("graphics/battle_anims/sprites/glass_2.4bpp.lz");

const u32 gBattleAnimSpritePal_PinkHeart2[] = INCBIN_U32("graphics/battle_anims/sprites/pink_heart_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_PinkHeart2[] = INCBIN_U32("graphics/battle_anims/sprites/pink_heart_2.4bpp.lz");

const u32 gInterfaceGfx_UnusedWindow[] = INCBIN_U32("graphics/battle_interface/unused_window.4bpp.lz");
const u32 gInterfacePal_UnusedWindow[] = INCBIN_U32("graphics/battle_interface/unused_window.gbapal.lz");

const u32 gInterfaceGfx_HPNumbers[] = INCBIN_U32("graphics/interface/hp_numbers.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SapDrip[] = INCBIN_U32("graphics/battle_anims/sprites/sap_drip.4bpp.lz");
const u32 gBattleAnimSpritePal_SapDrip[] = INCBIN_U32("graphics/battle_anims/sprites/sap_drip.gbapal.lz");

const u32 gBattleAnimSpritePal_SapDrip2[] = INCBIN_U32("graphics/battle_anims/sprites/sap_drip_2.gbapal.lz");

const u32 gUnusedGfx_Window2[] = INCBIN_U32("graphics/battle_interface/unused_window2.4bpp.lz");
const u32 gUnusedGfx_Window2Bar[] = INCBIN_U32("graphics/battle_interface/unused_window2bar.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Sparkle1[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_1.4bpp.lz");
const u32 gBattleAnimSpritePal_Sparkle1[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_1.gbapal.lz");

const u32 gBattleAnimSpritePal_Sparkle2[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_2.gbapal.lz");
const u32 gBattleAnimSpritePal_HumanoidFoot[] = INCBIN_U32("graphics/battle_anims/sprites/humanoid_foot.gbapal.lz");

const u32 gBattleAnimSpriteGfx_HumanoidFoot[] = INCBIN_U32("graphics/battle_anims/sprites/humanoid_foot.4bpp.lz");
const u32 gBattleAnimSpriteGfx_MonsterFoot[] = INCBIN_U32("graphics/battle_anims/sprites/monster_foot.4bpp.lz");
const u32 gBattleAnimSpriteGfx_HumanoidHand[] = INCBIN_U32("graphics/battle_anims/sprites/humanoid_hand.4bpp.lz");

const u32 gUnusedGfx_LineSketch[] = INCBIN_U32("graphics/unused/line_sketch.4bpp.lz");
const u32 gUnusedPal_LineSketch[] = INCBIN_U32("graphics/unused/line_sketch.gbapal.lz");

const u32 gBattleAnimSpriteGfx_YellowUnk[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowUnk[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SlamHit[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit.4bpp.lz");
const u32 gBattleAnimSpritePal_SlamHit[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RedFist[] = INCBIN_U32("graphics/battle_anims/sprites/red_fist.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Ring[] = INCBIN_U32("graphics/battle_anims/sprites/ring.4bpp.lz");
const u32 gBattleAnimSpritePal_Ring[] = INCBIN_U32("graphics/battle_anims/sprites/ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Rocks[] = INCBIN_U32("graphics/battle_anims/sprites/rocks.4bpp.lz");
const u32 gBattleAnimSpritePal_Rocks[] = INCBIN_U32("graphics/battle_anims/sprites/rocks.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Z[] = INCBIN_U32("graphics/battle_anims/sprites/z.4bpp.lz");
const u32 gBattleAnimSpritePal_Z[] = INCBIN_U32("graphics/battle_anims/sprites/z.gbapal.lz");

const u32 gBattleAnimSpriteGfx_YellowUnk2[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk_2.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowUnk2[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_AirSlash[] = INCBIN_U32("graphics/battle_anims/sprites/air_slash.4bpp.lz");
const u32 gBattleAnimSpritePal_AirSlash[] = INCBIN_U32("graphics/battle_anims/sprites/air_slash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SpinningGreenOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/spinning_green_orbs.4bpp.lz");
const u32 gBattleAnimSpritePal_SpinningGreenOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/spinning_green_orbs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Leaf[] = INCBIN_U32("graphics/battle_anims/sprites/leaf.4bpp.lz");
const u32 gBattleAnimSpritePal_Leaf[] = INCBIN_U32("graphics/battle_anims/sprites/leaf.gbapal.lz");

const u32 gUnusedGfx_Metronome[] = INCBIN_U32("graphics/unused/metronome_hand_small.4bpp.lz");

const u32 gBattleAnimSpritePal_Clapping[] = INCBIN_U32("graphics/battle_anims/sprites/clapping.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PoisonPowder[] = INCBIN_U32("graphics/battle_anims/sprites/poison_powder.4bpp.lz");
const u32 gBattleAnimSpritePal_PoisonPowder[] = INCBIN_U32("graphics/battle_anims/sprites/poison_powder.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BrownTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/brown_triangle.4bpp.lz");
const u32 gBattleAnimSpritePal_BrownTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/brown_triangle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sparkle3[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_3.4bpp.lz");
const u32 gBattleAnimSpritePal_Sparkle3[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_3.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sparkle4[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_4.4bpp.lz");

const u32 gBattleAnimSpriteGfx_MusicNotes[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes.4bpp.lz");
const u32 gBattleAnimSpritePal_MusicNotes[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Duck[] = INCBIN_U32("graphics/battle_anims/sprites/duck.4bpp.lz");
const u32 gBattleAnimSpritePal_Duck[] = INCBIN_U32("graphics/battle_anims/sprites/duck.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Alert[] = INCBIN_U32("graphics/battle_anims/sprites/alert.4bpp.lz");
const u32 gBattleAnimSpritePal_Alert[] = INCBIN_U32("graphics/battle_anims/sprites/alert.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Shock4[] = INCBIN_U32("graphics/battle_anims/sprites/shock_4.4bpp.lz");
const u32 gBattleAnimSpritePal_Shock4[] = INCBIN_U32("graphics/battle_anims/sprites/shock_4.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Shock[] = INCBIN_U32("graphics/battle_anims/sprites/shock.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Bell2[] = INCBIN_U32("graphics/battle_anims/sprites/bell_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Bell2[] = INCBIN_U32("graphics/battle_anims/sprites/bell_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkGlove[] = INCBIN_U32("graphics/battle_anims/sprites/pink_glove.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkGlove[] = INCBIN_U32("graphics/battle_anims/sprites/pink_glove.gbapal.lz");

const u16 gBattleAnimUnused_Unknown1[] = INCBIN_U16("graphics/battle_anims/unused/unknown_1.bin");
const u16 gBattleAnimUnused_Unknown2[] = INCBIN_U16("graphics/battle_anims/unused/unknown_2.bin");
const u16 gBattleAnimUnused_Unknown3[] = INCBIN_U16("graphics/battle_anims/unused/unknown_3.bin");

const u32 gBattleAnimUnusedGfx_LineSketch2[] = INCBIN_U32("graphics/battle_anims/unused/line_sketch_2.8bpp.lz");
const u16 gBattleAnimUnusedPal_LineSketch2[] = INCBIN_U16("graphics/battle_anims/unused/line_sketch_2.gbapal.lz");
const u32 gBattleAnimUnusedTilemap_LineSketch2[] = INCBIN_U32("graphics/battle_anims/unused/line_sketch_2.bin.lz");

const u32 gBattleAnimSpriteGfx_BlueLines[] = INCBIN_U32("graphics/battle_anims/sprites/blue_lines.4bpp.lz");
const u32 gBattleAnimSpritePal_BlueLines[] = INCBIN_U32("graphics/battle_anims/sprites/blue_lines.gbapal.lz");

const u32 gBattleAnimSpritePal_Impact3[] = INCBIN_U32("graphics/battle_anims/sprites/impact_3.gbapal.lz");
const u32 gBattleAnimSpritePal_Impact2[] = INCBIN_U32("graphics/battle_anims/sprites/impact_2.gbapal.lz");
const u32 gBattleAnimSpritePal_Reticle[] = INCBIN_U32("graphics/battle_anims/sprites/reticle.gbapal.lz");
const u32 gBattleAnimSpritePal_Breath[] = INCBIN_U32("graphics/battle_anims/sprites/breath.gbapal.lz");
const u32 gBattleAnimSpritePal_Snowball[] = INCBIN_U32("graphics/battle_anims/sprites/snowball.gbapal.lz");
const u32 gBattleAnimSpritePal_Vine[] = INCBIN_U32("graphics/battle_anims/sprites/vine.gbapal.lz");
const u32 gBattleAnimSpritePal_Sword2[] = INCBIN_U32("graphics/battle_anims/sprites/sword_2.gbapal.lz");
const u32 gBattleAnimSpritePal_RedTube[] = INCBIN_U32("graphics/battle_anims/sprites/red_tube.gbapal.lz");
const u32 gBattleAnimSpritePal_Amnesia[] = INCBIN_U32("graphics/battle_anims/sprites/amnesia.gbapal.lz");
const u32 gBattleAnimSpritePal_String2[] = INCBIN_U32("graphics/battle_anims/sprites/string_2.gbapal.lz");

const u32 gBattleAnimUnused_Unknown4[] = INCBIN_U32("graphics/battle_anims/unused/unknown_4.bin.lz");

const u32 gBattleAnimSpritePal_Pencil2[] = INCBIN_U32("graphics/battle_anims/sprites/pencil_2.gbapal.lz");
const u32 gBattleAnimSpritePal_Petal[] = INCBIN_U32("graphics/battle_anims/sprites/petal.gbapal.lz");
const u32 gBattleAnimSpritePal_BentSpoon[] = INCBIN_U32("graphics/battle_anims/sprites/bent_spoon.gbapal.lz");
const u32 gBattleAnimSpritePal_Coin[] = INCBIN_U32("graphics/battle_anims/sprites/coin.gbapal.lz");
const u32 gBattleAnimSpritePal_CrackedEgg[] = INCBIN_U32("graphics/battle_anims/sprites/cracked_egg.gbapal.lz");
const u32 gBattleAnimSpritePal_FreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/fresh_egg.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Impact3[] = INCBIN_U32("graphics/battle_anims/sprites/impact_3.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Impact2[] = INCBIN_U32("graphics/battle_anims/sprites/impact_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Reticle[] = INCBIN_U32("graphics/battle_anims/sprites/reticle.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Breath[] = INCBIN_U32("graphics/battle_anims/sprites/breath.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Snowball[] = INCBIN_U32("graphics/battle_anims/sprites/snowball.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Vine[] = INCBIN_U32("graphics/battle_anims/sprites/vine.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Sword2[] = INCBIN_U32("graphics/battle_anims/sprites/sword_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Clapping[] = INCBIN_U32("graphics/battle_anims/sprites/clapping.4bpp.lz");
const u32 gBattleAnimSpriteGfx_RedTube[] = INCBIN_U32("graphics/battle_anims/sprites/red_tube.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Amnesia[] = INCBIN_U32("graphics/battle_anims/sprites/amnesia.4bpp.lz");
const u32 gBattleAnimSpriteGfx_String2[] = INCBIN_U32("graphics/battle_anims/sprites/string_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Pencil2[] = INCBIN_U32("graphics/battle_anims/sprites/pencil_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Petal[] = INCBIN_U32("graphics/battle_anims/sprites/petal.4bpp.lz");
const u32 gBattleAnimSpriteGfx_BentSpoon[] = INCBIN_U32("graphics/battle_anims/sprites/bent_spoon.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Web[] = INCBIN_U32("graphics/battle_anims/sprites/web.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Coin[] = INCBIN_U32("graphics/battle_anims/sprites/coin.4bpp.lz");
const u32 gBattleAnimSpriteGfx_CrackedEgg[] = INCBIN_U32("graphics/battle_anims/sprites/cracked_egg.4bpp.lz");
const u32 gBattleAnimSpriteGfx_HatchedEgg[] = INCBIN_U32("graphics/battle_anims/sprites/hatched_egg.4bpp.lz");
const u32 gBattleAnimSpriteGfx_FreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/fresh_egg.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Fangs[] = INCBIN_U32("graphics/battle_anims/sprites/fangs.4bpp.lz");
const u32 gBattleAnimSpritePal_Fangs[] = INCBIN_U32("graphics/battle_anims/sprites/fangs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion2[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion2[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion3[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_3.4bpp.lz");

const u32 gBattleAnimSpriteGfx_WaterDroplet[] = INCBIN_U32("graphics/battle_anims/sprites/water_droplet.4bpp.lz");
const u32 gBattleAnimSpritePal_WaterDroplet[] = INCBIN_U32("graphics/battle_anims/sprites/water_droplet.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WaterDroplet2[] = INCBIN_U32("graphics/battle_anims/sprites/water_droplet_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Seed2[] = INCBIN_U32("graphics/battle_anims/sprites/seed_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Seed2[] = INCBIN_U32("graphics/battle_anims/sprites/seed_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sprout[] = INCBIN_U32("graphics/battle_anims/sprites/sprout.4bpp.lz");

const u32 gBattleAnimSpriteGfx_RedWand[] = INCBIN_U32("graphics/battle_anims/sprites/red_wand.4bpp.lz");
const u32 gBattleAnimSpritePal_RedWand[] = INCBIN_U32("graphics/battle_anims/sprites/red_wand.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleGreenUnk[] = INCBIN_U32("graphics/battle_anims/sprites/purple_green_unk.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleGreenUnk[] = INCBIN_U32("graphics/battle_anims/sprites/purple_green_unk.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WaterColumn[] = INCBIN_U32("graphics/battle_anims/sprites/water_column.4bpp.lz");
const u32 gBattleAnimSpritePal_WaterColumn[] = INCBIN_U32("graphics/battle_anims/sprites/water_column.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MudUnk[] = INCBIN_U32("graphics/battle_anims/sprites/mud_unk.4bpp.lz");
const u32 gBattleAnimSpritePal_MudUnk[] = INCBIN_U32("graphics/battle_anims/sprites/mud_unk.gbapal.lz");

const u32 gUnusedTilemap_BlueFrame[] = INCBIN_U32("graphics/unused/blue_frame.bin.lz");
const u32 gUnusedTilemap_RedYellowGreenFrame[] = INCBIN_U32("graphics/unused/redyellowgreen_frame.bin.lz");
const u32 gUnusedGfx_ColorFrames[] = INCBIN_U32("graphics/unused/color_frames.4bpp.lz");
const u32 gUnusedPal_ColorFrames[] = INCBIN_U32("graphics/unused/color_frames.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RainDrops[] = INCBIN_U32("graphics/battle_anims/sprites/rain_drops.4bpp.lz");

const u32 gUnusedGfx8bpp_WaterSplash [] = INCBIN_U32("graphics/unused/water_splash.8bpp.lz");
const u32 gUnusedTilemap_WaterSplash[] = INCBIN_U32("graphics/unused/water_splash.bin.lz");
const u32 gUnusedPalette_WaterSplash[] = INCBIN_U32("graphics/unused/water_splash.gbapal.lz");

const u32 gUnusedGfx_BasicFrame[] = INCBIN_U32("graphics/unused/basic_frame.4bpp.lz");
const u32 gUnusedPal_BasicFrame[] = INCBIN_U32("graphics/unused/basic_frame.gbapal.lz");
const u32 gUnusedTilemap_BasicFrame[] = INCBIN_U32("graphics/unused/basic_frame.bin.lz");

const u16 gBattleInterface_Healthbox_Pal[] = INCBIN_U16("graphics/battle_interface/healthbox.gbapal");
const u16 gBattleInterface_Healthbar_Pal[] = INCBIN_U16("graphics/battle_interface/healthbar.gbapal");
const u8 gBattleInterface_Gfx[] = INCBIN_U8("graphics/battle_interface/healthbox_elements.4bpp");

const u32 gBattleInterfaceGfx_UnusedWindow3[] = INCBIN_U32("graphics/battle_interface/unused_window3.4bpp.lz");
const u32 gBattleInterfaceGfx_UnusedWindow4[] = INCBIN_U32("graphics/battle_interface/unused_window4.4bpp.lz");

const u32 gBattleAnimSpriteGfx_FurySwipes[] = INCBIN_U32("graphics/battle_anims/sprites/fury_swipes.4bpp.lz");
const u32 gBattleAnimSpritePal_FurySwipes[] = INCBIN_U32("graphics/battle_anims/sprites/fury_swipes.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Vine2[] = INCBIN_U32("graphics/battle_anims/sprites/vine_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Vine2[] = INCBIN_U32("graphics/battle_anims/sprites/vine_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Teeth[] = INCBIN_U32("graphics/battle_anims/sprites/teeth.4bpp.lz");
const u32 gBattleAnimSpritePal_Teeth[] = INCBIN_U32("graphics/battle_anims/sprites/teeth.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Bone2[] = INCBIN_U32("graphics/battle_anims/sprites/bone_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Bone2[] = INCBIN_U32("graphics/battle_anims/sprites/bone_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WhiteBag[] = INCBIN_U32("graphics/battle_anims/sprites/white_bag.4bpp.lz");
const u32 gBattleAnimSpritePal_WhiteBag[] = INCBIN_U32("graphics/battle_anims/sprites/white_bag.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Unknown[] = INCBIN_U32("graphics/battle_anims/sprites/unknown.4bpp.lz");
const u32 gBattleAnimSpritePal_Unknown[] = INCBIN_U32("graphics/battle_anims/sprites/unknown.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleCoral[] = INCBIN_U32("graphics/battle_anims/sprites/purple_coral.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleCoral[] = INCBIN_U32("graphics/battle_anims/sprites/purple_coral.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleDroplet[] = INCBIN_U32("graphics/battle_anims/sprites/purple_droplet.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Shock2[] = INCBIN_U32("graphics/battle_anims/sprites/shock_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Shock2[] = INCBIN_U32("graphics/battle_anims/sprites/shock_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ClosingEye2[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye_2.4bpp.lz");
const u32 gBattleAnimSpritePal_ClosingEye2[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MetalBall[] = INCBIN_U32("graphics/battle_anims/sprites/metal_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_MetalBall[] = INCBIN_U32("graphics/battle_anims/sprites/metal_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MonsterDoll[] = INCBIN_U32("graphics/battle_anims/sprites/monster_doll.4bpp.lz");
const u32 gBattleAnimSpritePal_MonsterDoll[] = INCBIN_U32("graphics/battle_anims/sprites/monster_doll.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Whirlwind[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind.4bpp.lz");
const u32 gBattleAnimSpritePal_Whirlwind[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Whirlwind2[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Explosion4[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_4.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion4[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_4.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion5[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_5.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Tongue[] = INCBIN_U32("graphics/battle_anims/sprites/tongue.4bpp.lz");
const u32 gBattleAnimSpritePal_Tongue[] = INCBIN_U32("graphics/battle_anims/sprites/tongue.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Smoke[] = INCBIN_U32("graphics/battle_anims/sprites/smoke.4bpp.lz");
const u32 gBattleAnimSpritePal_Smoke[] = INCBIN_U32("graphics/battle_anims/sprites/smoke.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Smoke2[] = INCBIN_U32("graphics/battle_anims/sprites/smoke_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_BlueFlames[] = INCBIN_U32("graphics/battle_anims/sprites/blue_flames.4bpp.lz");
const u32 gBattleAnimSpritePal_BlueFlames[] = INCBIN_U32("graphics/battle_anims/sprites/blue_flames.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlueFlames2[] = INCBIN_U32("graphics/battle_anims/sprites/blue_flames_2.4bpp.lz");



const u32 gJpContest_Gfx1[] = INCBIN_U32("graphics/contest/japanese/composite_1.4bpp.lz");
const u32 gJpContest_Pal[] = INCBIN_U32("graphics/contest/japanese/palette.gbapal.lz");
const u32 gJpContest_Bg_Tilemap[] = INCBIN_U32("graphics/contest/japanese/bg.bin.lz");
const u32 gJpContest_Windows_Tilemap[] = INCBIN_U32("graphics/contest/japanese/windows.bin.lz");
const u32 gJpContest_Numbers_Gfx[] = INCBIN_U32("graphics/contest/japanese/numbers.4bpp.lz");
const u32 gJpContest_Numbers_Pal[] = INCBIN_U32("graphics/contest/japanese/numbers.gbapal.lz");
const u32 gJpContest_Gfx2[] = INCBIN_U32("graphics/contest/japanese/composite_2.4bpp.lz");

const u32 gContest_Interface_Pal[] = INCBIN_U32("graphics/contest/interface.gbapal.lz");
const u32 gContest_Audience_Tilemap[] = INCBIN_U32("graphics/contest/audience.bin.lz");
const u32 gContest_Interface_Tilemap[] = INCBIN_U32("graphics/contest/interface.bin.lz");

const u32 gJpContest_Interface_Tilemap[] = INCBIN_U32("graphics/contest/japanese/interface.bin.lz");
const u32 gJpContest_Audience_Tilemap[] = INCBIN_U32("graphics/contest/japanese/audience.bin.lz");

const u32 gContest_Curtain_Tilemap[] = INCBIN_U32("graphics/contest/curtain.bin.lz");
const u32 gContest_Interface_Gfx[] = INCBIN_U32("graphics/contest/interface.4bpp.lz");
const u32 gContest_Audience_Gfx[] = INCBIN_U32("graphics/contest/audience.4bpp.lz");
const u32 gContest_Faces_Gfx[] = INCBIN_U32("graphics/contest/faces.4bpp.lz");
const u32 gContest_JudgeSymbols_Gfx[] = INCBIN_U32("graphics/contest/judge_symbols.4bpp.lz");
const u32 gContest_JudgeSymbols_Pal[] = INCBIN_U32("graphics/contest/judge_symbols.gbapal.lz");
const u8 gContest_SliderHeart_Gfx[] = INCBIN_U8("graphics/contest/slider_heart.4bpp");

const u32 gJpContest_Voltage_Gfx[] = INCBIN_U32("graphics/contest/japanese/voltage.4bpp.lz");
const u32 gJpContest_Voltage_Pal[] = INCBIN_U32("graphics/contest/japanese/voltage.gbapal.lz");

const u32 gJpContestResults_Gfx[] = INCBIN_U32("graphics/contest/japanese/results.4bpp.lz");

const u32 gContestResults_WinnerBanner_Tilemap[] = INCBIN_U32("graphics/contest/results_winner_banner.bin.lz");
const u32 gContestResults_Interface_Tilemap[] = INCBIN_U32("graphics/contest/results_interface.bin.lz");
const u32 gContestResults_Bg_Tilemap[] = INCBIN_U32("graphics/contest/results_bg.bin.lz");
const u32 gContestResults_Pal[] = INCBIN_U32("graphics/contest/results.gbapal.lz");


const u32 gBattleAnimSpriteGfx_Impact[] = INCBIN_U32("graphics/battle_anims/sprites/impact.4bpp.lz");
const u32 gBattleAnimSpritePal_Impact[] = INCBIN_U32("graphics/battle_anims/sprites/impact.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Particles[] = INCBIN_U32("graphics/battle_anims/sprites/particles.4bpp.lz");

const u32 gBattleAnimSpriteGfx_CircleImpact[] = INCBIN_U32("graphics/battle_anims/sprites/circle_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_CircleImpact[] = INCBIN_U32("graphics/battle_anims/sprites/circle_impact.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Scratch[] = INCBIN_U32("graphics/battle_anims/sprites/scratch.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SharpTeeth[] = INCBIN_U32("graphics/battle_anims/sprites/sharp_teeth.4bpp.lz");
const u32 gBattleAnimSpritePal_SharpTeeth[] = INCBIN_U32("graphics/battle_anims/sprites/sharp_teeth.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Clamp[] = INCBIN_U32("graphics/battle_anims/sprites/clamp.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Cut[] = INCBIN_U32("graphics/battle_anims/sprites/cut.4bpp.lz");

const u32 gBattleAnimSpriteGfx_RainbowRings[] = INCBIN_U32("graphics/battle_anims/sprites/rainbow_rings.4bpp.lz");
const u32 gBattleAnimSpritePal_RainbowRings[] = INCBIN_U32("graphics/battle_anims/sprites/rainbow_rings.gbapal.lz");

const u32 gBattleAnimSpriteGfx_IceCrystals[] = INCBIN_U32("graphics/battle_anims/sprites/ice_crystals.4bpp.lz");
const u32 gBattleAnimSpritePal_IceCrystals[] = INCBIN_U32("graphics/battle_anims/sprites/ice_crystals.gbapal.lz");

const u32 gBattleAnimSpriteGfx_IceSpikes[] = INCBIN_U32("graphics/battle_anims/sprites/ice_spikes.4bpp.lz");

const u32 gUnusedGfx_OldBeatUp[] = INCBIN_U32("graphics/unused/old_beatup.4bpp.lz");
const u32 gUnusedPal_OldBeatUp[] = INCBIN_U32("graphics/unused/old_beatup.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Orbs[] = INCBIN_U32("graphics/battle_anims/sprites/orbs.4bpp.lz");
const u32 gBattleAnimSpritePal_Orbs[] = INCBIN_U32("graphics/battle_anims/sprites/orbs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WaterOrb[] = INCBIN_U32("graphics/battle_anims/sprites/water_orb.4bpp.lz");

const u32 gBattleAnimSpriteGfx_WaterImpact[] = INCBIN_U32("graphics/battle_anims/sprites/water_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_WaterImpact[] = INCBIN_U32("graphics/battle_anims/sprites/water_impact.gbapal.lz");

const u32 gBattleAnimSpritePal_BrownOrb[] = INCBIN_U32("graphics/battle_anims/sprites/brown_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MudSand[] = INCBIN_U32("graphics/battle_anims/sprites/mud_sand.4bpp.lz");
const u32 gBattleAnimSpritePal_MudSand[] = INCBIN_U32("graphics/battle_anims/sprites/mud_sand.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PoisonBubble[] = INCBIN_U32("graphics/battle_anims/sprites/poison_bubble.4bpp.lz");
const u32 gBattleAnimSpritePal_PoisonBubble[] = INCBIN_U32("graphics/battle_anims/sprites/poison_bubble.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ToxicBubble[] = INCBIN_U32("graphics/battle_anims/sprites/toxic_bubble.4bpp.lz");

const u32 gBattleAnimSpriteGfx_HornHit2[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit_2.4bpp.lz");
const u32 gBattleAnimSpritePal_HornHit2[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_AirWave2[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave_2.4bpp.lz");
const u32 gBattleAnimSpritePal_AirWave2[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SmallBubbles[] = INCBIN_U32("graphics/battle_anims/sprites/small_bubbles.4bpp.lz");
const u32 gBattleAnimSpritePal_SmallBubbles[] = INCBIN_U32("graphics/battle_anims/sprites/small_bubbles.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RoundShadow[] = INCBIN_U32("graphics/battle_anims/sprites/round_shadow.4bpp.lz");
const u32 gBattleAnimSpritePal_RoundShadow[] = INCBIN_U32("graphics/battle_anims/sprites/round_shadow.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sunlight[] = INCBIN_U32("graphics/battle_anims/sprites/sunlight.4bpp.lz");
const u32 gBattleAnimSpritePal_Sunlight[] = INCBIN_U32("graphics/battle_anims/sprites/sunlight.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spore[] = INCBIN_U32("graphics/battle_anims/sprites/spore.4bpp.lz");

const u32 gBattleAnimSpritePal_Spore[] = INCBIN_U32("graphics/battle_anims/sprites/spore.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Flower[] = INCBIN_U32("graphics/battle_anims/sprites/flower.4bpp.lz");
const u32 gBattleAnimSpritePal_Flower[] = INCBIN_U32("graphics/battle_anims/sprites/flower.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RazorLeaf[] = INCBIN_U32("graphics/battle_anims/sprites/razor_leaf.4bpp.lz");
const u32 gBattleAnimSpritePal_RazorLeaf[] = INCBIN_U32("graphics/battle_anims/sprites/razor_leaf.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MistCloud[] = INCBIN_U32("graphics/battle_anims/sprites/mist_cloud.4bpp.lz");
const u32 gBattleAnimSpritePal_MistCloud[] = INCBIN_U32("graphics/battle_anims/sprites/mist_cloud.gbapal.lz");

const u32 gBattleAnimUnusedGfx_Lights[] = INCBIN_U32("graphics/battle_anims/unused/lights.4bpp.lz");
const u32 gBattleAnimUnusedPal_Lights[] = INCBIN_U32("graphics/battle_anims/unused/lights.gbapal.lz");
const u32 gBattleAnimUnusedTilemap_Lights[] = INCBIN_U32("graphics/battle_anims/unused/lights.bin.lz");

const u32 gBattleAnimSpriteGfx_WhirlwindLines[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind_lines.4bpp.lz");
const u32 gBattleAnimSpritePal_WhirlwindLines[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind_lines.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GoldRing[] = INCBIN_U32("graphics/battle_anims/sprites/gold_ring.4bpp.lz");
const u32 gBattleAnimSpritePal_GoldRing[] = INCBIN_U32("graphics/battle_anims/sprites/gold_ring.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueRing2[] = INCBIN_U32("graphics/battle_anims/sprites/blue_ring_2.gbapal.lz");
const u32 gBattleAnimSpritePal_PurpleRing[] = INCBIN_U32("graphics/battle_anims/sprites/purple_ring.gbapal.lz");
const u32 gBattleAnimSpritePal_BlueRing[] = INCBIN_U32("graphics/battle_anims/sprites/blue_ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GreenLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/green_light_wall.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/green_light_wall.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/blue_light_wall.gbapal.lz");
const u32 gBattleAnimSpritePal_RedLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/red_light_wall.gbapal.lz");
const u32 gBattleAnimSpritePal_GrayLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/gray_light_wall.gbapal.lz");
const u32 gBattleAnimSpritePal_OrangeLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/orange_light_wall.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlackBall2[] = INCBIN_U32("graphics/battle_anims/sprites/black_ball_2.4bpp.lz");
const u32 gBattleAnimSpritePal_BlackBall2[] = INCBIN_U32("graphics/battle_anims/sprites/black_ball_2.gbapal.lz");

const u32 gBattleAnimSpritePal_PurpleGasCloud[] = INCBIN_U32("graphics/battle_anims/sprites/purple_gas_cloud.gbapal.lz");

const u32 gContestJudgeGfx[] = INCBIN_U32("graphics/contest/judge.4bpp.lz");
const u32 gContestJudgePal[] = INCBIN_U32("graphics/contest/judge.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spark[] = INCBIN_U32("graphics/battle_anims/sprites/spark.4bpp.lz");
const u32 gBattleAnimSpritePal_Spark[] = INCBIN_U32("graphics/battle_anims/sprites/spark.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SparkH[] = INCBIN_U32("graphics/battle_anims/sprites/spark_h.4bpp.lz");

const u32 gBattleAnimBgImage_Dark[] = INCBIN_U32("graphics/battle_anims/backgrounds/dark.4bpp.lz");
const u32 gBattleAnimBgPalette_Dark[] = INCBIN_U32("graphics/battle_anims/backgrounds/dark.gbapal.lz");
const u32 gBattleAnimBgTilemap_Dark[] = INCBIN_U32("graphics/battle_anims/backgrounds/dark.bin.lz");

const u32 gMetalShineGfx[] = INCBIN_U32("graphics/battle_anims/masks/metal_shine.4bpp.lz");
const u32 gMetalShinePalette[] = INCBIN_U32("graphics/battle_anims/masks/metal_shine.gbapal.lz");
const u32 gMetalShineTilemap[] = INCBIN_U32("graphics/battle_anims/masks/metal_shine.bin.lz");

const u32 gUnusedGfx_Goosuto[] = INCBIN_U32("graphics/unused/goosuto.4bpp.lz");
const u32 gUnusedPal_Goosuto[] = INCBIN_U32("graphics/unused/goosuto.gbapal.lz");
const u32 gUnusedTilemap_Goosuto[] = INCBIN_U32("graphics/unused/goosuto.bin.lz");

const u32 gBattleAnimSpriteGfx_YellowStar[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_star.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowStar[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_star.gbapal.lz");

const u32 gBattleAnimSpriteGfx_LargeFreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/large_fresh_egg.4bpp.lz");
const u32 gBattleAnimSpritePal_LargeFreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/large_fresh_egg.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ShadowBall[] = INCBIN_U32("graphics/battle_anims/sprites/shadow_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_ShadowBall[] = INCBIN_U32("graphics/battle_anims/sprites/shadow_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Lick[] = INCBIN_U32("graphics/battle_anims/sprites/lick.4bpp.lz");
const u32 gBattleAnimSpritePal_Lick[] = INCBIN_U32("graphics/battle_anims/sprites/lick.gbapal.lz");

const u32 gBattleAnimSpriteGfx_VoidLines[] = INCBIN_U32("graphics/battle_anims/sprites/void_lines.4bpp.lz");
const u32 gBattleAnimSpritePal_VoidLines[] = INCBIN_U32("graphics/battle_anims/sprites/void_lines.gbapal.lz");

const u32 gBattleAnimSpritePal_String[] = INCBIN_U32("graphics/battle_anims/sprites/string.gbapal.lz");
const u32 gBattleAnimSpriteGfx_String[] = INCBIN_U32("graphics/battle_anims/sprites/string.4bpp.lz");

const u32 gBattleAnimSpriteGfx_WebThread[] = INCBIN_U32("graphics/battle_anims/sprites/web_thread.4bpp.lz");
const u32 gBattleAnimSpriteGfx_SpiderWeb[] = INCBIN_U32("graphics/battle_anims/sprites/spider_web.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Lightbulb[] = INCBIN_U32("graphics/battle_anims/sprites/lightbulb.4bpp.lz");
const u32 gBattleAnimSpritePal_Lightbulb[] = INCBIN_U32("graphics/battle_anims/sprites/lightbulb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Slash[] = INCBIN_U32("graphics/battle_anims/sprites/slash.4bpp.lz");
const u32 gBattleAnimSpritePal_Slash[] = INCBIN_U32("graphics/battle_anims/sprites/slash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_FocusEnergy[] = INCBIN_U32("graphics/battle_anims/sprites/focus_energy.4bpp.lz");
const u32 gBattleAnimSpritePal_FocusEnergy[] = INCBIN_U32("graphics/battle_anims/sprites/focus_energy.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SphereToCube[] = INCBIN_U32("graphics/battle_anims/sprites/sphere_to_cube.4bpp.lz");
const u32 gBattleAnimSpritePal_SphereToCube[] = INCBIN_U32("graphics/battle_anims/sprites/sphere_to_cube.gbapal.lz");

const u32 gBattleAnimBgImage_Psychic[] = INCBIN_U32("graphics/battle_anims/backgrounds/psychic.4bpp.lz");
const u32 gBattleAnimBgPalette_Psychic[] = INCBIN_U32("graphics/battle_anims/backgrounds/psychic.gbapal.lz");
const u32 gBattleAnimBgTilemap_Psychic[] = INCBIN_U32("graphics/battle_anims/backgrounds/psychic.bin.lz");

const u32 gBattleAnimSpriteGfx_Eye[] = INCBIN_U32("graphics/battle_anims/sprites/eye.4bpp.lz");
const u32 gBattleAnimSpritePal_Eye[] = INCBIN_U32("graphics/battle_anims/sprites/eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Tendrils[] = INCBIN_U32("graphics/battle_anims/sprites/tendrils.4bpp.lz");
const u32 gBattleAnimSpritePal_Tendrils[] = INCBIN_U32("graphics/battle_anims/sprites/tendrils.gbapal.lz");

const u32 gHealthboxSinglesPlayerGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_singles_player.4bpp.lz");
const u32 gHealthboxSinglesOpponentGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_singles_opponent.4bpp.lz");
const u32 gHealthboxDoublesPlayerGfx[] = INCBIN_U32( "graphics/battle_interface/healthbox_doubles_player.4bpp.lz");
const u32 gHealthboxDoublesOpponentGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_doubles_opponent.4bpp.lz");
const u32 gHealthboxSafariGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_safari.4bpp.lz");

const u32 gUnusedGfx_Shadow[] = INCBIN_U32("graphics/unused/shadow.4bpp.lz");
const u32 gUnusedPal_Shadow[] = INCBIN_U32("graphics/unused/shadow.gbapal.lz");

const u32 gBattleAnimSpriteGfx_LockOn[] = INCBIN_U32("graphics/battle_anims/sprites/lock_on.4bpp.lz");
const u32 gBattleAnimSpritePal_LockOn[] = INCBIN_U32("graphics/battle_anims/sprites/lock_on.gbapal.lz");

const u32 gBattleAnimSpriteGfx_OpeningEye[] = INCBIN_U32("graphics/battle_anims/sprites/opening_eye.4bpp.lz");
const u32 gBattleAnimSpritePal_OpeningEye[] = INCBIN_U32("graphics/battle_anims/sprites/opening_eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RoundWhiteHalo[] = INCBIN_U32("graphics/battle_anims/sprites/round_white_halo.4bpp.lz");
const u32 gBattleAnimSpritePal_RoundWhiteHalo[] = INCBIN_U32("graphics/battle_anims/sprites/round_white_halo.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TealAlert[] = INCBIN_U32("graphics/battle_anims/sprites/teal_alert.4bpp.lz");
const u32 gBattleAnimSpritePal_TealAlert[] = INCBIN_U32("graphics/battle_anims/sprites/teal_alert.gbapal.lz");

const u32 gBattleAnimSpriteGfx_FangAttack[] = INCBIN_U32("graphics/battle_anims/sprites/fang_attack.4bpp.lz");
const u32 gBattleAnimSpritePal_FangAttack[] = INCBIN_U32("graphics/battle_anims/sprites/fang_attack.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleHandOutline[] = INCBIN_U32("graphics/battle_anims/sprites/purple_hand_outline.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleHandOutline[] = INCBIN_U32("graphics/battle_anims/sprites/purple_hand_outline.gbapal.lz");

const u32 gFile_graphics_battle_anims_masks_curse_sheet[] = INCBIN_U32("graphics/battle_anims/masks/curse.4bpp.lz");
const u32 gFile_graphics_battle_anims_masks_curse_tilemap[] = INCBIN_U32("graphics/battle_anims/masks/curse.bin.lz");

const u32 gBattleAnimSpriteGfx_Pencil[] = INCBIN_U32("graphics/battle_anims/sprites/pencil.4bpp.lz");
const u32 gBattleAnimSpritePal_Pencil[] = INCBIN_U32("graphics/battle_anims/sprites/pencil.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spiral[] = INCBIN_U32("graphics/battle_anims/sprites/spiral.4bpp.lz");
const u32 gBattleAnimSpritePal_Spiral[] = INCBIN_U32("graphics/battle_anims/sprites/spiral.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Moon[] = INCBIN_U32("graphics/battle_anims/sprites/moon.4bpp.lz");
const u32 gBattleAnimSpritePal_Moon[] = INCBIN_U32("graphics/battle_anims/sprites/moon.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GreenSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/green_sparkle.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/green_sparkle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SnoreZ[] = INCBIN_U32("graphics/battle_anims/sprites/snore_z.4bpp.lz");
const u32 gBattleAnimSpritePal_SnoreZ[] = INCBIN_U32("graphics/battle_anims/sprites/snore_z.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion[] = INCBIN_U32("graphics/battle_anims/sprites/explosion.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion[] = INCBIN_U32("graphics/battle_anims/sprites/explosion.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Nail[] = INCBIN_U32("graphics/battle_anims/sprites/nail.4bpp.lz");
const u32 gBattleAnimSpritePal_Nail[] = INCBIN_U32("graphics/battle_anims/sprites/nail.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GhostlySpirit[] = INCBIN_U32("graphics/battle_anims/sprites/ghostly_spirit.4bpp.lz");
const u32 gBattleAnimSpritePal_GhostlySpirit[] = INCBIN_U32("graphics/battle_anims/sprites/ghostly_spirit.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WarmRock[] = INCBIN_U32("graphics/battle_anims/sprites/warm_rock.4bpp.lz");
const u32 gBattleAnimSpritePal_WarmRock[] = INCBIN_U32("graphics/battle_anims/sprites/warm_rock.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PunchImpact[] = INCBIN_U32("graphics/battle_anims/sprites/punch_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_PunchImpact[] = INCBIN_U32("graphics/battle_anims/sprites/punch_impact.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BreakingEgg[] = INCBIN_U32("graphics/battle_anims/sprites/breaking_egg.4bpp.lz");
const u32 gBattleAnimSpritePal_BreakingEgg[] = INCBIN_U32("graphics/battle_anims/sprites/breaking_egg.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ThinRing[] = INCBIN_U32("graphics/battle_anims/sprites/thin_ring.4bpp.lz");
const u32 gBattleAnimSpritePal_ThinRing[] = INCBIN_U32("graphics/battle_anims/sprites/thin_ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MusicNotes2[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes_2.4bpp.lz");
const u32 gBattleAnimSpritePal_MusicNotes2[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Bell[] = INCBIN_U32("graphics/battle_anims/sprites/bell.4bpp.lz");
const u32 gBattleAnimSpritePal_Bell[] = INCBIN_U32("graphics/battle_anims/sprites/bell.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SpeedDust[] = INCBIN_U32("graphics/battle_anims/sprites/speed_dust.4bpp.lz");
const u32 gBattleAnimSpritePal_SpeedDust[] = INCBIN_U32("graphics/battle_anims/sprites/speed_dust.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TornMetal[] = INCBIN_U32("graphics/battle_anims/sprites/torn_metal.4bpp.lz");

const u32 gBattleAnimSpriteGfx_ThoughtBubble[] = INCBIN_U32("graphics/battle_anims/sprites/thought_bubble.4bpp.lz");
const u32 gBattleAnimSpritePal_ThoughtBubble[] = INCBIN_U32("graphics/battle_anims/sprites/thought_bubble.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Finger[] = INCBIN_U32("graphics/battle_anims/sprites/finger.4bpp.lz");
const u32 gBattleAnimSpritePal_Finger[] = INCBIN_U32("graphics/battle_anims/sprites/finger.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MagentaHeart[] = INCBIN_U32("graphics/battle_anims/sprites/magenta_heart.4bpp.lz");

const u32 gBattleAnimSpritePal_PinkHeart[] = INCBIN_U32("graphics/battle_anims/sprites/pink_heart.gbapal.lz");
const u32 gBattleAnimSpritePal_MagentaHeart[] = INCBIN_U32("graphics/battle_anims/sprites/magenta_heart.gbapal.lz");
const u32 gBattleAnimSpritePal_RedHeart[] = INCBIN_U32("graphics/battle_anims/sprites/red_heart.gbapal.lz");

const u32 gBattleAnimBg_AttractGfx[] = INCBIN_U32("graphics/battle_anims/backgrounds/attract.4bpp.lz");
const u32 gBattleAnimBg_AttractPal[] = INCBIN_U32("graphics/battle_anims/backgrounds/attract.gbapal.lz");
const u32 gBattleAnimBg_AttractTilemap[] = INCBIN_U32("graphics/battle_anims/backgrounds/attract.bin.lz");

const u32 gBattleAnimSpriteGfx_RedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/red_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_RedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/red_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_CircleOfLight[] = INCBIN_U32("graphics/battle_anims/sprites/circle_of_light.4bpp.lz");
const u32 gBattleAnimSpriteGfx_ElectricOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/electric_orbs.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Electricity[] = INCBIN_U32("graphics/battle_anims/sprites/electricity.4bpp.lz");

const u32 gBattleAnimSpritePal_ElectricOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/electric_orbs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Finger2[] = INCBIN_U32("graphics/battle_anims/sprites/finger_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_MovementWaves[] = INCBIN_U32("graphics/battle_anims/sprites/movement_waves.4bpp.lz");
const u32 gBattleAnimSpritePal_MovementWaves[] = INCBIN_U32("graphics/battle_anims/sprites/movement_waves.gbapal.lz");

const u32 gBattleAnim_ScaryFacePal[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face.gbapal.lz");
const u32 gBattleAnim_ScaryFaceGfx[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face.4bpp.lz");

const u32 gBattleAnimSpritePal_EyeSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/eye_sparkle.gbapal.lz");
const u32 gBattleAnimSpriteGfx_EyeSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/eye_sparkle.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Anger[] = INCBIN_U32("graphics/battle_anims/sprites/anger.4bpp.lz");
const u32 gBattleAnimSpritePal_Anger[] = INCBIN_U32("graphics/battle_anims/sprites/anger.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Conversion[] = INCBIN_U32("graphics/battle_anims/sprites/conversion.4bpp.lz");
const u32 gBattleAnimSpritePal_Conversion[] = INCBIN_U32("graphics/battle_anims/sprites/conversion.gbapal.lz");

const u32 gBattleAnimSpritePal_Angel[] = INCBIN_U32("graphics/battle_anims/sprites/angel.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Angel[] = INCBIN_U32("graphics/battle_anims/sprites/angel.4bpp.lz");

const u32 gBattleAnimSpritePal_Devil[] = INCBIN_U32("graphics/battle_anims/sprites/devil.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Devil[] = INCBIN_U32("graphics/battle_anims/sprites/devil.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Swipe[] = INCBIN_U32("graphics/battle_anims/sprites/swipe.4bpp.lz");
const u32 gBattleAnimSpritePal_Swipe[] = INCBIN_U32("graphics/battle_anims/sprites/swipe.gbapal.lz");

const u32 gBattleAnimSpritePal_Roots[] = INCBIN_U32("graphics/battle_anims/sprites/roots.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Roots[] = INCBIN_U32("graphics/battle_anims/sprites/roots.4bpp.lz");

const u32 gBattleAnimSpritePal_ItemBag[] = INCBIN_U32("graphics/battle_anims/sprites/item_bag.gbapal.lz");
const u32 gBattleAnimSpriteGfx_ItemBag[] = INCBIN_U32("graphics/battle_anims/sprites/item_bag.4bpp.lz");

const u32 gBattleAnimSpritePal_TriAttackTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/tri_attack_triangle.gbapal.lz");
const u32 gBattleAnimSpriteGfx_TriAttackTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/tri_attack_triangle.4bpp.lz");

const u32 gBattleAnimSpritePal_LetterZ[] = INCBIN_U32("graphics/battle_anims/sprites/letter_z.gbapal.lz");
const u32 gBattleAnimSpriteGfx_LetterZ[] = INCBIN_U32("graphics/battle_anims/sprites/letter_z.4bpp.lz");

const u32 gBattleAnimBgPalette_Impact[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact.gbapal.lz");
const u32 gBattleAnimBgImage_Impact[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact.4bpp.lz");
const u32 gBattleAnimBgTilemap_ImpactOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact_opponent.bin.lz");

const u32 gBattleAnimBgTilemap_ImpactPlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact_player.bin.lz");
const u32 gBattleAnimBgTilemap_ImpactContests[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact_contests.bin.lz");

const u32 gBattleAnimSpriteGfx_JaggedMusicNote[] = INCBIN_U32("graphics/battle_anims/sprites/jagged_music_note.4bpp.lz");
const u32 gBattleAnimSpritePal_JaggedMusicNote[] = INCBIN_U32("graphics/battle_anims/sprites/jagged_music_note.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spotlight[] = INCBIN_U32("graphics/battle_anims/sprites/spotlight.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Pokeball[] = INCBIN_U32("graphics/battle_anims/sprites/pokeball.4bpp.lz");
const u32 gBattleAnimSpritePal_Pokeball[] = INCBIN_U32("graphics/battle_anims/sprites/pokeball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RapidSpin[] = INCBIN_U32("graphics/battle_anims/sprites/rapid_spin.4bpp.lz");
const u32 gBattleAnimSpritePal_RapidSpin[] = INCBIN_U32("graphics/battle_anims/sprites/rapid_spin.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MilkBottle[] = INCBIN_U32("graphics/battle_anims/sprites/milk_bottle.4bpp.lz");
const u32 gBattleAnimSpritePal_MilkBottle[] = INCBIN_U32("graphics/battle_anims/sprites/milk_bottle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WispFire[] = INCBIN_U32("graphics/battle_anims/sprites/wisp_fire.4bpp.lz");

const u32 gBattleAnimSpritePal_WispOrb[] = INCBIN_U32("graphics/battle_anims/sprites/wisp_orb.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WispOrb[] = INCBIN_U32("graphics/battle_anims/sprites/wisp_orb.4bpp.lz");

const u32 gBattleAnimSpriteGfx_GoldStars[] = INCBIN_U32("graphics/battle_anims/sprites/gold_stars.4bpp.lz");
const u32 gBattleAnimSpritePal_GoldStars[] = INCBIN_U32("graphics/battle_anims/sprites/gold_stars.gbapal.lz");

const u32 gBattleAnimSpriteGfx_EclipsingOrb[] = INCBIN_U32("graphics/battle_anims/sprites/eclipsing_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_EclipsingOrb[] = INCBIN_U32("graphics/battle_anims/sprites/eclipsing_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkPetal[] = INCBIN_U32("graphics/battle_anims/sprites/pink_petal.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkPetal[] = INCBIN_U32("graphics/battle_anims/sprites/pink_petal.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GrayOrb[] = INCBIN_U32("graphics/battle_anims/sprites/gray_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_GrayOrb[] = INCBIN_U32("graphics/battle_anims/sprites/gray_orb.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueOrb[] = INCBIN_U32("graphics/battle_anims/sprites/blue_orb.gbapal.lz");
const u32 gBattleAnimSpritePal_RedOrb2[] = INCBIN_U32("graphics/battle_anims/sprites/red_orb_2.gbapal.lz");

const u32 gBattleAnimBgImage_Drill[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill.4bpp.lz");
const u32 gBattleAnimBgPalette_Drill[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill.gbapal.lz");

const u32 gBattleAnimBgPalette_Sky[] = INCBIN_U32("graphics/battle_anims/backgrounds/sky.gbapal.lz");

const u32 gBattleAnimBgTilemap_Drill[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill.bin.lz");
const u32 gBattleAnimBgTilemap_DrillContests[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill_contests.bin.lz");

const u32 gBattleAnimBgImage_Aurora[] = INCBIN_U32("graphics/battle_anims/backgrounds/aurora.4bpp.lz");
const u32 gBattleAnimBgPalette_Aurora[] = INCBIN_U32("graphics/battle_anims/backgrounds/aurora.gbapal.lz");
const u32 gBattleAnimBgTilemap_Aurora[] = INCBIN_U32("graphics/battle_anims/backgrounds/aurora.bin.lz");

const u32 gBattleAnimBgTilemap_HighspeedOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed_opponent.bin.lz");
const u32 gBattleAnimBgPalette_Highspeed[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed.gbapal.lz");

const u32 gBattleAnimBgPalette_Bug[] = INCBIN_U32("graphics/battle_anims/backgrounds/bug.gbapal.lz");

const u32 gBattleAnimBgImage_Highspeed[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed.4bpp.lz");
const u32 gBattleAnimBgTilemap_HighspeedPlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed_player.bin.lz");

const u32 gBattleAnim_MorningSunGfx[] = INCBIN_U32("graphics/battle_anims/masks/light_beam.4bpp.lz");
const u32 gBattleAnim_MorningSunPal[] = INCBIN_U32("graphics/battle_anims/masks/light_beam.gbapal.lz");
const u32 gBattleAnim_MorningSunTilemap[] = INCBIN_U32("graphics/battle_anims/masks/light_beam.bin.lz");

const u32 gBattleAnimBgTilemap_GuillotineOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine_opponent.bin.lz");
const u32 gBattleAnimBgTilemap_GuillotinePlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine_player.bin.lz");
const u32 gBattleAnimBgTilemap_GuillotineContests[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine_contests.bin.lz");

const u32 gBattleAnimBgImage_Guillotine[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine.4bpp.lz");
const u32 gBattleAnimBgPalette_Guillotine[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine.gbapal.lz");

const u32 gBattleAnimBgImage_Thunder[] = INCBIN_U32("graphics/battle_anims/backgrounds/thunder.4bpp.lz");
const u32 gBattleAnimBgPalette_Thunder[] = INCBIN_U32("graphics/battle_anims/backgrounds/thunder.gbapal.lz");
const u32 gBattleAnimBgTilemap_Thunder[] = INCBIN_U32("graphics/battle_anims/backgrounds/thunder.bin.lz");

const u32 gBattleAnimSpriteGfx_PainSplit[] = INCBIN_U32("graphics/battle_anims/sprites/pain_split.4bpp.lz");
const u32 gBattleAnimSpritePal_PainSplit[] = INCBIN_U32("graphics/battle_anims/sprites/pain_split.gbapal.lz");

const u32 gBattleAnimSpriteGfx_HandsAndFeet[] = INCBIN_U32("graphics/battle_anims/sprites/hands_and_feet.4bpp.lz");
const u32 gBattleAnimSpritePal_HandsAndFeet[] = INCBIN_U32("graphics/battle_anims/sprites/hands_and_feet.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Confetti[] = INCBIN_U32("graphics/battle_anims/sprites/confetti.4bpp.lz");
const u32 gBattleAnimSpritePal_Confetti[] = INCBIN_U32("graphics/battle_anims/sprites/confetti.gbapal.lz");

const u32 gSubstituteDollPal[] = INCBIN_U32("graphics/battle_anims/sprites/substitute.gbapal.lz");
const u32 gSubstituteDollGfx[] = INCBIN_U32("graphics/battle_anims/sprites/substitute.4bpp.lz");
const u32 gSubstituteDollTilemap[] = INCBIN_U32("graphics/battle_anims/sprites/substitute.bin.lz");

const u32 gBattleAnimSpriteGfx_GreenStar[] = INCBIN_U32("graphics/battle_anims/sprites/green_star.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenStar[] = INCBIN_U32("graphics/battle_anims/sprites/green_star.gbapal.lz");

const u32 gFile_graphics_misc_confetti_sheet[] = INCBIN_U32("graphics/misc/confetti.4bpp.lz");
const u32 gFile_graphics_misc_confetti_palette[] = INCBIN_U32("graphics/misc/confetti.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkCloud[] = INCBIN_U32("graphics/battle_anims/sprites/pink_cloud.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkCloud[] = INCBIN_U32("graphics/battle_anims/sprites/pink_cloud.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SweatDrop[] = INCBIN_U32("graphics/battle_anims/sprites/sweat_drop.4bpp.lz");
const u32 gBattleAnimSpritePal_SweatDrop[] = INCBIN_U32("graphics/battle_anims/sprites/sweat_drop.gbapal.lz");

const u32 gBattleStatMask_Gfx[] = INCBIN_U32("graphics/battle_anims/masks/stat.4bpp.lz");
const u32 gBattleStatMask1_Tilemap[] = INCBIN_U32("graphics/battle_anims/masks/stat_tilemap_1.bin.lz");
const u32 gBattleStatMask2_Tilemap[] = INCBIN_U32("graphics/battle_anims/masks/stat_tilemap_2.bin.lz");

const u32 gBattleStatMask1_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat1.gbapal.lz");
const u32 gBattleStatMask2_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat2.gbapal.lz");
const u32 gBattleStatMask3_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat3.gbapal.lz");
const u32 gBattleStatMask4_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat4.gbapal.lz");
const u32 gBattleStatMask5_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat5.gbapal.lz");
const u32 gBattleStatMask6_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat6.gbapal.lz");
const u32 gBattleStatMask7_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat7.gbapal.lz");
const u32 gBattleStatMask8_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat8.gbapal.lz");

const u32 gCureBubblesGfx[] = INCBIN_U32("graphics/battle_anims/masks/cure_bubbles.4bpp.lz");
const u32 gCureBubblesPal[] = INCBIN_U32("graphics/battle_anims/masks/cure_bubbles.gbapal.lz");
const u32 gCureBubblesTilemap[] = INCBIN_U32("graphics/battle_anims/masks/cure_bubbles.bin.lz");

const u32 gBattleAnimSpritePal_PurpleScratch[] = INCBIN_U32("graphics/battle_anims/sprites/purple_scratch.gbapal.lz");
const u32 gBattleAnimSpriteGfx_PurpleScratch[] = INCBIN_U32("graphics/battle_anims/sprites/purple_scratch.4bpp.lz");

const u32 gBattleAnimSpriteGfx_PurpleSwipe[] = INCBIN_U32("graphics/battle_anims/sprites/purple_swipe.4bpp.lz");

const u32 gBattleAnimSpriteGfx_GuardRing[] = INCBIN_U32("graphics/battle_anims/sprites/guard_ring.4bpp.lz");
const u32 gBattleAnimSpritePal_GuardRing[] = INCBIN_U32("graphics/battle_anims/sprites/guard_ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TagHand[] = INCBIN_U32("graphics/battle_anims/sprites/tag_hand.4bpp.lz");

const u32 gBattleAnimSpriteGfx_NoiseLine[] = INCBIN_U32("graphics/battle_anims/sprites/noise_line.4bpp.lz");

const u32 gUnusedLevelupAnimationGfx[] = INCBIN_U32("graphics/battle_anims/masks/unused_level_up.4bpp.lz");
const u32 gUnusedLevelupAnimationTilemap[] = INCBIN_U32("graphics/battle_anims/masks/unused_level_up.bin.lz");

const u32 gBattleAnimSpriteGfx_SmallRedEye[] = INCBIN_U32("graphics/battle_anims/sprites/small_red_eye.4bpp.lz");
const u32 gBattleAnimSpritePal_SmallRedEye[] = INCBIN_U32("graphics/battle_anims/sprites/small_red_eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_HollowOrb[] = INCBIN_U32("graphics/battle_anims/sprites/hollow_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_HollowOrb[] = INCBIN_U32("graphics/battle_anims/sprites/hollow_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_XSign[] = INCBIN_U32("graphics/battle_anims/sprites/x_sign.4bpp.lz");

const u32 gBattleAnimSpriteGfx_BluegreenOrb[] = INCBIN_U32("graphics/battle_anims/sprites/bluegreen_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_BluegreenOrb[] = INCBIN_U32("graphics/battle_anims/sprites/bluegreen_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PawPrint[] = INCBIN_U32("graphics/battle_anims/sprites/paw_print.4bpp.lz");
const u32 gBattleAnimSpritePal_PawPrint[] = INCBIN_U32("graphics/battle_anims/sprites/paw_print.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleFlame[] = INCBIN_U32("graphics/battle_anims/sprites/purple_flame.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleFlame[] = INCBIN_U32("graphics/battle_anims/sprites/purple_flame.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RedBall[] = INCBIN_U32("graphics/battle_anims/sprites/red_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_RedBall[] = INCBIN_U32("graphics/battle_anims/sprites/red_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SmellingsaltEffect[] = INCBIN_U32("graphics/battle_anims/sprites/smellingsalt_effect.4bpp.lz");
const u32 gBattleAnimSpritePal_SmellingsaltEffect[] = INCBIN_U32("graphics/battle_anims/sprites/smellingsalt_effect.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MagnifyingGlass[] = INCBIN_U32("graphics/battle_anims/sprites/magnifying_glass.4bpp.lz");
const u32 gBattleAnimSpritePal_MagnifyingGlass[] = INCBIN_U32("graphics/battle_anims/sprites/magnifying_glass.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Meteor[] = INCBIN_U32("graphics/battle_anims/sprites/meteor.4bpp.lz");
const u32 gBattleAnimSpritePal_Meteor[] = INCBIN_U32("graphics/battle_anims/sprites/meteor.gbapal.lz");

const u32 gBattleAnimSpriteGfx_FlatRock[] = INCBIN_U32("graphics/battle_anims/sprites/flat_rock.4bpp.lz");
const u32 gBattleAnimSpritePal_FlatRock[] = INCBIN_U32("graphics/battle_anims/sprites/flat_rock.gbapal.lz");

const u16 gPPTextPalette[] = INCBIN_U16("graphics/interface/text_pp.gbapal");

# 1 "src/data/graphics/pokemon.h" 1
const u32 gMonFrontPic_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/front.4bpp.lz");
const u32 gMonPalette_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/normal.gbapal.lz");
const u32 gMonBackPic_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/back.4bpp.lz");
const u32 gMonShinyPalette_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/shiny.gbapal.lz");
const u8 gMonIcon_Bulbasaur[] = INCBIN_U8("graphics/pokemon/bulbasaur/icon.4bpp");
const u8 gMonFootprint_Bulbasaur[] = INCBIN_U8("graphics/pokemon/bulbasaur/footprint.1bpp");

const u32 gMonFrontPic_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/front.4bpp.lz");
const u32 gMonPalette_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/normal.gbapal.lz");
const u32 gMonBackPic_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/back.4bpp.lz");
const u32 gMonShinyPalette_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/shiny.gbapal.lz");
const u8 gMonIcon_Ivysaur[] = INCBIN_U8("graphics/pokemon/ivysaur/icon.4bpp");
const u8 gMonFootprint_Ivysaur[] = INCBIN_U8("graphics/pokemon/ivysaur/footprint.1bpp");

const u32 gMonFrontPic_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/front.4bpp.lz");
const u32 gMonPalette_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/normal.gbapal.lz");
const u32 gMonBackPic_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/back.4bpp.lz");
const u32 gMonShinyPalette_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/shiny.gbapal.lz");
const u8 gMonIcon_Venusaur[] = INCBIN_U8("graphics/pokemon/venusaur/icon.4bpp");
const u8 gMonFootprint_Venusaur[] = INCBIN_U8("graphics/pokemon/venusaur/footprint.1bpp");

const u32 gMonFrontPic_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/front.4bpp.lz");
const u32 gMonPalette_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/normal.gbapal.lz");
const u32 gMonBackPic_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/back.4bpp.lz");
const u32 gMonShinyPalette_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/shiny.gbapal.lz");
const u8 gMonIcon_Charmander[] = INCBIN_U8("graphics/pokemon/charmander/icon.4bpp");
const u8 gMonFootprint_Charmander[] = INCBIN_U8("graphics/pokemon/charmander/footprint.1bpp");

const u32 gMonFrontPic_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/front.4bpp.lz");
const u32 gMonPalette_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/normal.gbapal.lz");
const u32 gMonBackPic_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/back.4bpp.lz");
const u32 gMonShinyPalette_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/shiny.gbapal.lz");
const u8 gMonIcon_Charmeleon[] = INCBIN_U8("graphics/pokemon/charmeleon/icon.4bpp");
const u8 gMonFootprint_Charmeleon[] = INCBIN_U8("graphics/pokemon/charmeleon/footprint.1bpp");

const u32 gMonFrontPic_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/front.4bpp.lz");
const u32 gMonPalette_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/normal.gbapal.lz");
const u32 gMonBackPic_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/back.4bpp.lz");
const u32 gMonShinyPalette_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/shiny.gbapal.lz");
const u8 gMonIcon_Charizard[] = INCBIN_U8("graphics/pokemon/charizard/icon.4bpp");
const u8 gMonFootprint_Charizard[] = INCBIN_U8("graphics/pokemon/charizard/footprint.1bpp");

const u32 gMonFrontPic_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/front.4bpp.lz");
const u32 gMonPalette_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/normal.gbapal.lz");
const u32 gMonBackPic_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/back.4bpp.lz");
const u32 gMonShinyPalette_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/shiny.gbapal.lz");
const u8 gMonIcon_Squirtle[] = INCBIN_U8("graphics/pokemon/squirtle/icon.4bpp");
const u8 gMonFootprint_Squirtle[] = INCBIN_U8("graphics/pokemon/squirtle/footprint.1bpp");

const u32 gMonFrontPic_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/front.4bpp.lz");
const u32 gMonPalette_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/normal.gbapal.lz");
const u32 gMonBackPic_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/back.4bpp.lz");
const u32 gMonShinyPalette_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/shiny.gbapal.lz");
const u8 gMonIcon_Wartortle[] = INCBIN_U8("graphics/pokemon/wartortle/icon.4bpp");
const u8 gMonFootprint_Wartortle[] = INCBIN_U8("graphics/pokemon/wartortle/footprint.1bpp");

const u32 gMonFrontPic_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/front.4bpp.lz");
const u32 gMonPalette_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/normal.gbapal.lz");
const u32 gMonBackPic_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/back.4bpp.lz");
const u32 gMonShinyPalette_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/shiny.gbapal.lz");
const u8 gMonIcon_Blastoise[] = INCBIN_U8("graphics/pokemon/blastoise/icon.4bpp");
const u8 gMonFootprint_Blastoise[] = INCBIN_U8("graphics/pokemon/blastoise/footprint.1bpp");

const u32 gMonFrontPic_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/front.4bpp.lz");
const u32 gMonPalette_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/normal.gbapal.lz");
const u32 gMonBackPic_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/back.4bpp.lz");
const u32 gMonShinyPalette_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/shiny.gbapal.lz");
const u8 gMonIcon_Caterpie[] = INCBIN_U8("graphics/pokemon/caterpie/icon.4bpp");
const u8 gMonFootprint_Caterpie[] = INCBIN_U8("graphics/pokemon/caterpie/footprint.1bpp");

const u32 gMonFrontPic_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/front.4bpp.lz");
const u32 gMonPalette_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/normal.gbapal.lz");
const u32 gMonBackPic_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/back.4bpp.lz");
const u32 gMonShinyPalette_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/shiny.gbapal.lz");
const u8 gMonIcon_Metapod[] = INCBIN_U8( "graphics/pokemon/metapod/icon.4bpp");
const u8 gMonFootprint_Metapod[] = INCBIN_U8("graphics/pokemon/metapod/footprint.1bpp");

const u32 gMonFrontPic_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/front.4bpp.lz");
const u32 gMonPalette_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/normal.gbapal.lz");
const u32 gMonBackPic_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/back.4bpp.lz");
const u32 gMonShinyPalette_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/shiny.gbapal.lz");
const u8 gMonIcon_Butterfree[] = INCBIN_U8("graphics/pokemon/butterfree/icon.4bpp");
const u8 gMonFootprint_Butterfree[] = INCBIN_U8("graphics/pokemon/butterfree/footprint.1bpp");

const u32 gMonFrontPic_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/front.4bpp.lz");
const u32 gMonPalette_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/normal.gbapal.lz");
const u32 gMonBackPic_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/back.4bpp.lz");
const u32 gMonShinyPalette_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/shiny.gbapal.lz");
const u8 gMonIcon_Weedle[] = INCBIN_U8("graphics/pokemon/weedle/icon.4bpp");
const u8 gMonFootprint_Weedle[] = INCBIN_U8("graphics/pokemon/weedle/footprint.1bpp");

const u32 gMonFrontPic_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/front.4bpp.lz");
const u32 gMonPalette_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/normal.gbapal.lz");
const u32 gMonBackPic_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/back.4bpp.lz");
const u32 gMonShinyPalette_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/shiny.gbapal.lz");
const u8 gMonIcon_Kakuna[] = INCBIN_U8("graphics/pokemon/kakuna/icon.4bpp");
const u8 gMonFootprint_Kakuna[] = INCBIN_U8("graphics/pokemon/kakuna/footprint.1bpp");

const u32 gMonFrontPic_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/front.4bpp.lz");
const u32 gMonPalette_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/normal.gbapal.lz");
const u32 gMonBackPic_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/back.4bpp.lz");
const u32 gMonShinyPalette_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/shiny.gbapal.lz");
const u8 gMonIcon_Beedrill[] = INCBIN_U8("graphics/pokemon/beedrill/icon.4bpp");
const u8 gMonFootprint_Beedrill[] = INCBIN_U8("graphics/pokemon/beedrill/footprint.1bpp");

const u32 gMonFrontPic_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/front.4bpp.lz");
const u32 gMonPalette_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/normal.gbapal.lz");
const u32 gMonBackPic_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/back.4bpp.lz");
const u32 gMonShinyPalette_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/shiny.gbapal.lz");
const u8 gMonIcon_Pidgey[] = INCBIN_U8("graphics/pokemon/pidgey/icon.4bpp");
const u8 gMonFootprint_Pidgey[] = INCBIN_U8("graphics/pokemon/pidgey/footprint.1bpp");

const u32 gMonFrontPic_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/front.4bpp.lz");
const u32 gMonPalette_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/normal.gbapal.lz");
const u32 gMonBackPic_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/back.4bpp.lz");
const u32 gMonShinyPalette_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/shiny.gbapal.lz");
const u8 gMonIcon_Pidgeotto[] = INCBIN_U8("graphics/pokemon/pidgeotto/icon.4bpp");
const u8 gMonFootprint_Pidgeotto[] = INCBIN_U8("graphics/pokemon/pidgeotto/footprint.1bpp");

const u32 gMonFrontPic_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/front.4bpp.lz");
const u32 gMonPalette_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/normal.gbapal.lz");
const u32 gMonBackPic_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/back.4bpp.lz");
const u32 gMonShinyPalette_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/shiny.gbapal.lz");
const u8 gMonIcon_Pidgeot[] = INCBIN_U8("graphics/pokemon/pidgeot/icon.4bpp");
const u8 gMonFootprint_Pidgeot[] = INCBIN_U8("graphics/pokemon/pidgeot/footprint.1bpp");

const u32 gMonFrontPic_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/front.4bpp.lz");
const u32 gMonPalette_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/normal.gbapal.lz");
const u32 gMonBackPic_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/back.4bpp.lz");
const u32 gMonShinyPalette_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/shiny.gbapal.lz");
const u8 gMonIcon_Rattata[] = INCBIN_U8("graphics/pokemon/rattata/icon.4bpp");
const u8 gMonFootprint_Rattata[] = INCBIN_U8("graphics/pokemon/rattata/footprint.1bpp");

const u32 gMonFrontPic_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/front.4bpp.lz");
const u32 gMonPalette_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/normal.gbapal.lz");
const u32 gMonBackPic_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/back.4bpp.lz");
const u32 gMonShinyPalette_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/shiny.gbapal.lz");
const u8 gMonIcon_Raticate[] = INCBIN_U8("graphics/pokemon/raticate/icon.4bpp");
const u8 gMonFootprint_Raticate[] = INCBIN_U8("graphics/pokemon/raticate/footprint.1bpp");

const u32 gMonFrontPic_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/front.4bpp.lz");
const u32 gMonPalette_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/normal.gbapal.lz");
const u32 gMonBackPic_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/back.4bpp.lz");
const u32 gMonShinyPalette_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/shiny.gbapal.lz");
const u8 gMonIcon_Spearow[] = INCBIN_U8("graphics/pokemon/spearow/icon.4bpp");
const u8 gMonFootprint_Spearow[] = INCBIN_U8("graphics/pokemon/spearow/footprint.1bpp");

const u32 gMonFrontPic_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/front.4bpp.lz");
const u32 gMonPalette_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/normal.gbapal.lz");
const u32 gMonBackPic_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/back.4bpp.lz");
const u32 gMonShinyPalette_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/shiny.gbapal.lz");
const u8 gMonIcon_Fearow[] = INCBIN_U8("graphics/pokemon/fearow/icon.4bpp");
const u8 gMonFootprint_Fearow[] = INCBIN_U8("graphics/pokemon/fearow/footprint.1bpp");

const u32 gMonFrontPic_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/front.4bpp.lz");
const u32 gMonPalette_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/normal.gbapal.lz");
const u32 gMonBackPic_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/back.4bpp.lz");
const u32 gMonShinyPalette_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/shiny.gbapal.lz");
const u8 gMonIcon_Ekans[] = INCBIN_U8("graphics/pokemon/ekans/icon.4bpp");
const u8 gMonFootprint_Ekans[] = INCBIN_U8("graphics/pokemon/ekans/footprint.1bpp");

const u32 gMonFrontPic_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/front.4bpp.lz");
const u32 gMonPalette_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/normal.gbapal.lz");
const u32 gMonBackPic_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/back.4bpp.lz");
const u32 gMonShinyPalette_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/shiny.gbapal.lz");
const u8 gMonIcon_Arbok[] = INCBIN_U8("graphics/pokemon/arbok/icon.4bpp");
const u8 gMonFootprint_Arbok[] = INCBIN_U8("graphics/pokemon/arbok/footprint.1bpp");

const u32 gMonFrontPic_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/front.4bpp.lz");
const u32 gMonPalette_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/normal.gbapal.lz");
const u32 gMonBackPic_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/back.4bpp.lz");
const u32 gMonShinyPalette_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/shiny.gbapal.lz");
const u8 gMonIcon_Pikachu[] = INCBIN_U8("graphics/pokemon/pikachu/icon.4bpp");
const u8 gMonFootprint_Pikachu[] = INCBIN_U8("graphics/pokemon/pikachu/footprint.1bpp");

const u32 gMonFrontPic_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/front.4bpp.lz");
const u32 gMonPalette_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/normal.gbapal.lz");
const u32 gMonBackPic_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/back.4bpp.lz");
const u32 gMonShinyPalette_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/shiny.gbapal.lz");
const u8 gMonIcon_Raichu[] = INCBIN_U8("graphics/pokemon/raichu/icon.4bpp");
const u8 gMonFootprint_Raichu[] = INCBIN_U8("graphics/pokemon/raichu/footprint.1bpp");

const u32 gMonFrontPic_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/front.4bpp.lz");
const u32 gMonPalette_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/normal.gbapal.lz");
const u32 gMonBackPic_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/back.4bpp.lz");
const u32 gMonShinyPalette_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/shiny.gbapal.lz");
const u8 gMonIcon_Sandshrew[] = INCBIN_U8("graphics/pokemon/sandshrew/icon.4bpp");
const u8 gMonFootprint_Sandshrew[] = INCBIN_U8("graphics/pokemon/sandshrew/footprint.1bpp");

const u32 gMonFrontPic_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/front.4bpp.lz");
const u32 gMonPalette_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/normal.gbapal.lz");
const u32 gMonBackPic_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/back.4bpp.lz");
const u32 gMonShinyPalette_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/shiny.gbapal.lz");
const u8 gMonIcon_Sandslash[] = INCBIN_U8("graphics/pokemon/sandslash/icon.4bpp");
const u8 gMonFootprint_Sandslash[] = INCBIN_U8("graphics/pokemon/sandslash/footprint.1bpp");

const u32 gMonFrontPic_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/front.4bpp.lz");
const u32 gMonPalette_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/normal.gbapal.lz");
const u32 gMonBackPic_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/back.4bpp.lz");
const u32 gMonShinyPalette_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/shiny.gbapal.lz");
const u8 gMonIcon_NidoranF[] = INCBIN_U8("graphics/pokemon/nidoran_f/icon.4bpp");
const u8 gMonFootprint_NidoranF[] = INCBIN_U8("graphics/pokemon/nidoran_f/footprint.1bpp");

const u32 gMonFrontPic_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/front.4bpp.lz");
const u32 gMonPalette_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/normal.gbapal.lz");
const u32 gMonBackPic_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/back.4bpp.lz");
const u32 gMonShinyPalette_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/shiny.gbapal.lz");
const u8 gMonIcon_Nidorina[] = INCBIN_U8("graphics/pokemon/nidorina/icon.4bpp");
const u8 gMonFootprint_Nidorina[] = INCBIN_U8("graphics/pokemon/nidorina/footprint.1bpp");

const u32 gMonFrontPic_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/front.4bpp.lz");
const u32 gMonPalette_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/normal.gbapal.lz");
const u32 gMonBackPic_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/back.4bpp.lz");
const u32 gMonShinyPalette_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/shiny.gbapal.lz");
const u8 gMonIcon_Nidoqueen[] = INCBIN_U8("graphics/pokemon/nidoqueen/icon.4bpp");
const u8 gMonFootprint_Nidoqueen[] = INCBIN_U8("graphics/pokemon/nidoqueen/footprint.1bpp");

const u32 gMonFrontPic_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/front.4bpp.lz");
const u32 gMonPalette_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/normal.gbapal.lz");
const u32 gMonBackPic_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/back.4bpp.lz");
const u32 gMonShinyPalette_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/shiny.gbapal.lz");
const u8 gMonIcon_NidoranM[] = INCBIN_U8("graphics/pokemon/nidoran_m/icon.4bpp");
const u8 gMonFootprint_NidoranM[] = INCBIN_U8("graphics/pokemon/nidoran_m/footprint.1bpp");

const u32 gMonFrontPic_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/front.4bpp.lz");
const u32 gMonPalette_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/normal.gbapal.lz");
const u32 gMonBackPic_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/back.4bpp.lz");
const u32 gMonShinyPalette_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/shiny.gbapal.lz");
const u8 gMonIcon_Nidorino[] = INCBIN_U8("graphics/pokemon/nidorino/icon.4bpp");
const u8 gMonFootprint_Nidorino[] = INCBIN_U8("graphics/pokemon/nidorino/footprint.1bpp");

const u32 gMonFrontPic_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/front.4bpp.lz");
const u32 gMonPalette_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/normal.gbapal.lz");
const u32 gMonBackPic_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/back.4bpp.lz");
const u32 gMonShinyPalette_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/shiny.gbapal.lz");
const u8 gMonIcon_Nidoking[] = INCBIN_U8("graphics/pokemon/nidoking/icon.4bpp");
const u8 gMonFootprint_Nidoking[] = INCBIN_U8("graphics/pokemon/nidoking/footprint.1bpp");

const u32 gMonFrontPic_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/front.4bpp.lz");
const u32 gMonPalette_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/normal.gbapal.lz");
const u32 gMonBackPic_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/back.4bpp.lz");
const u32 gMonShinyPalette_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/shiny.gbapal.lz");
const u8 gMonIcon_Clefairy[] = INCBIN_U8("graphics/pokemon/clefairy/icon.4bpp");
const u8 gMonFootprint_Clefairy[] = INCBIN_U8("graphics/pokemon/clefairy/footprint.1bpp");

const u32 gMonFrontPic_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/front.4bpp.lz");
const u32 gMonPalette_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/normal.gbapal.lz");
const u32 gMonBackPic_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/back.4bpp.lz");
const u32 gMonShinyPalette_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/shiny.gbapal.lz");
const u8 gMonIcon_Clefable[] = INCBIN_U8("graphics/pokemon/clefable/icon.4bpp");
const u8 gMonFootprint_Clefable[] = INCBIN_U8("graphics/pokemon/clefable/footprint.1bpp");

const u32 gMonFrontPic_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/front.4bpp.lz");
const u32 gMonPalette_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/normal.gbapal.lz");
const u32 gMonBackPic_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/back.4bpp.lz");
const u32 gMonShinyPalette_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/shiny.gbapal.lz");
const u8 gMonIcon_Vulpix[] = INCBIN_U8("graphics/pokemon/vulpix/icon.4bpp");
const u8 gMonFootprint_Vulpix[] = INCBIN_U8("graphics/pokemon/vulpix/footprint.1bpp");

const u32 gMonFrontPic_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/front.4bpp.lz");
const u32 gMonPalette_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/normal.gbapal.lz");
const u32 gMonBackPic_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/back.4bpp.lz");
const u32 gMonShinyPalette_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/shiny.gbapal.lz");
const u8 gMonIcon_Ninetales[] = INCBIN_U8("graphics/pokemon/ninetales/icon.4bpp");
const u8 gMonFootprint_Ninetales[] = INCBIN_U8("graphics/pokemon/ninetales/footprint.1bpp");

const u32 gMonFrontPic_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/front.4bpp.lz");
const u32 gMonPalette_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/normal.gbapal.lz");
const u32 gMonBackPic_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/back.4bpp.lz");
const u32 gMonShinyPalette_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/shiny.gbapal.lz");
const u8 gMonIcon_Jigglypuff[] = INCBIN_U8("graphics/pokemon/jigglypuff/icon.4bpp");
const u8 gMonFootprint_Jigglypuff[] = INCBIN_U8("graphics/pokemon/jigglypuff/footprint.1bpp");

const u32 gMonFrontPic_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/front.4bpp.lz");
const u32 gMonPalette_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/normal.gbapal.lz");
const u32 gMonBackPic_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/back.4bpp.lz");
const u32 gMonShinyPalette_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/shiny.gbapal.lz");
const u8 gMonIcon_Wigglytuff[] = INCBIN_U8("graphics/pokemon/wigglytuff/icon.4bpp");
const u8 gMonFootprint_Wigglytuff[] = INCBIN_U8("graphics/pokemon/wigglytuff/footprint.1bpp");

const u32 gMonFrontPic_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/front.4bpp.lz");
const u32 gMonPalette_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/normal.gbapal.lz");
const u32 gMonBackPic_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/back.4bpp.lz");
const u32 gMonShinyPalette_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/shiny.gbapal.lz");
const u8 gMonIcon_Zubat[] = INCBIN_U8("graphics/pokemon/zubat/icon.4bpp");
const u8 gMonFootprint_Zubat[] = INCBIN_U8("graphics/pokemon/zubat/footprint.1bpp");

const u32 gMonFrontPic_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/front.4bpp.lz");
const u32 gMonPalette_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/normal.gbapal.lz");
const u32 gMonBackPic_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/back.4bpp.lz");
const u32 gMonShinyPalette_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/shiny.gbapal.lz");
const u8 gMonIcon_Golbat[] = INCBIN_U8("graphics/pokemon/golbat/icon.4bpp");
const u8 gMonFootprint_Golbat[] = INCBIN_U8("graphics/pokemon/golbat/footprint.1bpp");

const u32 gMonFrontPic_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/front.4bpp.lz");
const u32 gMonPalette_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/normal.gbapal.lz");
const u32 gMonBackPic_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/back.4bpp.lz");
const u32 gMonShinyPalette_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/shiny.gbapal.lz");
const u8 gMonIcon_Oddish[] = INCBIN_U8("graphics/pokemon/oddish/icon.4bpp");
const u8 gMonFootprint_Oddish[] = INCBIN_U8("graphics/pokemon/oddish/footprint.1bpp");

const u32 gMonFrontPic_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/front.4bpp.lz");
const u32 gMonPalette_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/normal.gbapal.lz");
const u32 gMonBackPic_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/back.4bpp.lz");
const u32 gMonShinyPalette_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/shiny.gbapal.lz");
const u8 gMonIcon_Gloom[] = INCBIN_U8("graphics/pokemon/gloom/icon.4bpp");
const u8 gMonFootprint_Gloom[] = INCBIN_U8("graphics/pokemon/gloom/footprint.1bpp");

const u32 gMonFrontPic_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/front.4bpp.lz");
const u32 gMonPalette_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/normal.gbapal.lz");
const u32 gMonBackPic_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/back.4bpp.lz");
const u32 gMonShinyPalette_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/shiny.gbapal.lz");
const u8 gMonIcon_Vileplume[] = INCBIN_U8("graphics/pokemon/vileplume/icon.4bpp");
const u8 gMonFootprint_Vileplume[] = INCBIN_U8("graphics/pokemon/vileplume/footprint.1bpp");

const u32 gMonFrontPic_Paras[] = INCBIN_U32("graphics/pokemon/paras/front.4bpp.lz");
const u32 gMonPalette_Paras[] = INCBIN_U32("graphics/pokemon/paras/normal.gbapal.lz");
const u32 gMonBackPic_Paras[] = INCBIN_U32("graphics/pokemon/paras/back.4bpp.lz");
const u32 gMonShinyPalette_Paras[] = INCBIN_U32("graphics/pokemon/paras/shiny.gbapal.lz");
const u8 gMonIcon_Paras[] = INCBIN_U8("graphics/pokemon/paras/icon.4bpp");
const u8 gMonFootprint_Paras[] = INCBIN_U8("graphics/pokemon/paras/footprint.1bpp");

const u32 gMonFrontPic_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/front.4bpp.lz");
const u32 gMonPalette_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/normal.gbapal.lz");
const u32 gMonBackPic_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/back.4bpp.lz");
const u32 gMonShinyPalette_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/shiny.gbapal.lz");
const u8 gMonIcon_Parasect[] = INCBIN_U8("graphics/pokemon/parasect/icon.4bpp");
const u8 gMonFootprint_Parasect[] = INCBIN_U8("graphics/pokemon/parasect/footprint.1bpp");

const u32 gMonFrontPic_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/front.4bpp.lz");
const u32 gMonPalette_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/normal.gbapal.lz");
const u32 gMonBackPic_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/back.4bpp.lz");
const u32 gMonShinyPalette_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/shiny.gbapal.lz");
const u8 gMonIcon_Venonat[] = INCBIN_U8("graphics/pokemon/venonat/icon.4bpp");
const u8 gMonFootprint_Venonat[] = INCBIN_U8("graphics/pokemon/venonat/footprint.1bpp");

const u32 gMonFrontPic_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/front.4bpp.lz");
const u32 gMonPalette_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/normal.gbapal.lz");
const u32 gMonBackPic_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/back.4bpp.lz");
const u32 gMonShinyPalette_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/shiny.gbapal.lz");
const u8 gMonIcon_Venomoth[] = INCBIN_U8("graphics/pokemon/venomoth/icon.4bpp");
const u8 gMonFootprint_Venomoth[] = INCBIN_U8("graphics/pokemon/venomoth/footprint.1bpp");

const u32 gMonFrontPic_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/front.4bpp.lz");
const u32 gMonPalette_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/normal.gbapal.lz");
const u32 gMonBackPic_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/back.4bpp.lz");
const u32 gMonShinyPalette_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/shiny.gbapal.lz");
const u8 gMonIcon_Diglett[] = INCBIN_U8("graphics/pokemon/diglett/icon.4bpp");
const u8 gMonFootprint_Diglett[] = INCBIN_U8("graphics/pokemon/diglett/footprint.1bpp");

const u32 gMonFrontPic_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/front.4bpp.lz");
const u32 gMonPalette_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/normal.gbapal.lz");
const u32 gMonBackPic_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/back.4bpp.lz");
const u32 gMonShinyPalette_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/shiny.gbapal.lz");
const u8 gMonIcon_Dugtrio[] = INCBIN_U8("graphics/pokemon/dugtrio/icon.4bpp");
const u8 gMonFootprint_Dugtrio[] = INCBIN_U8("graphics/pokemon/dugtrio/footprint.1bpp");

const u32 gMonFrontPic_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/front.4bpp.lz");
const u32 gMonPalette_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/normal.gbapal.lz");
const u32 gMonBackPic_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/back.4bpp.lz");
const u32 gMonShinyPalette_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/shiny.gbapal.lz");
const u8 gMonIcon_Meowth[] = INCBIN_U8("graphics/pokemon/meowth/icon.4bpp");
const u8 gMonFootprint_Meowth[] = INCBIN_U8("graphics/pokemon/meowth/footprint.1bpp");

const u32 gMonFrontPic_Persian[] = INCBIN_U32("graphics/pokemon/persian/front.4bpp.lz");
const u32 gMonPalette_Persian[] = INCBIN_U32("graphics/pokemon/persian/normal.gbapal.lz");
const u32 gMonBackPic_Persian[] = INCBIN_U32("graphics/pokemon/persian/back.4bpp.lz");
const u32 gMonShinyPalette_Persian[] = INCBIN_U32("graphics/pokemon/persian/shiny.gbapal.lz");
const u8 gMonIcon_Persian[] = INCBIN_U8("graphics/pokemon/persian/icon.4bpp");
const u8 gMonFootprint_Persian[] = INCBIN_U8("graphics/pokemon/persian/footprint.1bpp");

const u32 gMonFrontPic_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/front.4bpp.lz");
const u32 gMonPalette_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/normal.gbapal.lz");
const u32 gMonBackPic_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/back.4bpp.lz");
const u32 gMonShinyPalette_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/shiny.gbapal.lz");
const u8 gMonIcon_Psyduck[] = INCBIN_U8("graphics/pokemon/psyduck/icon.4bpp");
const u8 gMonFootprint_Psyduck[] = INCBIN_U8("graphics/pokemon/psyduck/footprint.1bpp");

const u32 gMonFrontPic_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/front.4bpp.lz");
const u32 gMonPalette_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/normal.gbapal.lz");
const u32 gMonBackPic_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/back.4bpp.lz");
const u32 gMonShinyPalette_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/shiny.gbapal.lz");
const u8 gMonIcon_Golduck[] = INCBIN_U8("graphics/pokemon/golduck/icon.4bpp");
const u8 gMonFootprint_Golduck[] = INCBIN_U8("graphics/pokemon/golduck/footprint.1bpp");

const u32 gMonFrontPic_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/front.4bpp.lz");
const u32 gMonPalette_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/normal.gbapal.lz");
const u32 gMonBackPic_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/back.4bpp.lz");
const u32 gMonShinyPalette_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/shiny.gbapal.lz");
const u8 gMonIcon_Mankey[] = INCBIN_U8("graphics/pokemon/mankey/icon.4bpp");
const u8 gMonFootprint_Mankey[] = INCBIN_U8("graphics/pokemon/mankey/footprint.1bpp");

const u32 gMonFrontPic_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/front.4bpp.lz");
const u32 gMonPalette_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/normal.gbapal.lz");
const u32 gMonBackPic_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/back.4bpp.lz");
const u32 gMonShinyPalette_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/shiny.gbapal.lz");
const u8 gMonIcon_Primeape[] = INCBIN_U8("graphics/pokemon/primeape/icon.4bpp");
const u8 gMonFootprint_Primeape[] = INCBIN_U8("graphics/pokemon/primeape/footprint.1bpp");

const u32 gMonFrontPic_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/front.4bpp.lz");
const u32 gMonPalette_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/normal.gbapal.lz");
const u32 gMonBackPic_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/back.4bpp.lz");
const u32 gMonShinyPalette_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/shiny.gbapal.lz");
const u8 gMonIcon_Growlithe[] = INCBIN_U8("graphics/pokemon/growlithe/icon.4bpp");
const u8 gMonFootprint_Growlithe[] = INCBIN_U8("graphics/pokemon/growlithe/footprint.1bpp");

const u32 gMonFrontPic_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/front.4bpp.lz");
const u32 gMonPalette_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/normal.gbapal.lz");
const u32 gMonBackPic_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/back.4bpp.lz");
const u32 gMonShinyPalette_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/shiny.gbapal.lz");
const u8 gMonIcon_Arcanine[] = INCBIN_U8("graphics/pokemon/arcanine/icon.4bpp");
const u8 gMonFootprint_Arcanine[] = INCBIN_U8("graphics/pokemon/arcanine/footprint.1bpp");

const u32 gMonFrontPic_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/front.4bpp.lz");
const u32 gMonPalette_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/normal.gbapal.lz");
const u32 gMonBackPic_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/back.4bpp.lz");
const u32 gMonShinyPalette_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/shiny.gbapal.lz");
const u8 gMonIcon_Poliwag[] = INCBIN_U8("graphics/pokemon/poliwag/icon.4bpp");
const u8 gMonFootprint_Poliwag[] = INCBIN_U8("graphics/pokemon/poliwag/footprint.1bpp");

const u32 gMonFrontPic_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/front.4bpp.lz");
const u32 gMonPalette_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/normal.gbapal.lz");
const u32 gMonBackPic_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/back.4bpp.lz");
const u32 gMonShinyPalette_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/shiny.gbapal.lz");
const u8 gMonIcon_Poliwhirl[] = INCBIN_U8("graphics/pokemon/poliwhirl/icon.4bpp");
const u8 gMonFootprint_Poliwhirl[] = INCBIN_U8("graphics/pokemon/poliwhirl/footprint.1bpp");

const u32 gMonFrontPic_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/front.4bpp.lz");
const u32 gMonPalette_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/normal.gbapal.lz");
const u32 gMonBackPic_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/back.4bpp.lz");
const u32 gMonShinyPalette_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/shiny.gbapal.lz");
const u8 gMonIcon_Poliwrath[] = INCBIN_U8("graphics/pokemon/poliwrath/icon.4bpp");
const u8 gMonFootprint_Poliwrath[] = INCBIN_U8("graphics/pokemon/poliwrath/footprint.1bpp");

const u32 gMonFrontPic_Abra[] = INCBIN_U32("graphics/pokemon/abra/front.4bpp.lz");
const u32 gMonPalette_Abra[] = INCBIN_U32("graphics/pokemon/abra/normal.gbapal.lz");
const u32 gMonBackPic_Abra[] = INCBIN_U32("graphics/pokemon/abra/back.4bpp.lz");
const u32 gMonShinyPalette_Abra[] = INCBIN_U32("graphics/pokemon/abra/shiny.gbapal.lz");
const u8 gMonIcon_Abra[] = INCBIN_U8("graphics/pokemon/abra/icon.4bpp");
const u8 gMonFootprint_Abra[] = INCBIN_U8("graphics/pokemon/abra/footprint.1bpp");

const u32 gMonFrontPic_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/front.4bpp.lz");
const u32 gMonPalette_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/normal.gbapal.lz");
const u32 gMonBackPic_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/back.4bpp.lz");
const u32 gMonShinyPalette_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/shiny.gbapal.lz");
const u8 gMonIcon_Kadabra[] = INCBIN_U8("graphics/pokemon/kadabra/icon.4bpp");
const u8 gMonFootprint_Kadabra[] = INCBIN_U8("graphics/pokemon/kadabra/footprint.1bpp");

const u32 gMonFrontPic_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/front.4bpp.lz");
const u32 gMonPalette_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/normal.gbapal.lz");
const u32 gMonBackPic_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/back.4bpp.lz");
const u32 gMonShinyPalette_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/shiny.gbapal.lz");
const u8 gMonIcon_Alakazam[] = INCBIN_U8("graphics/pokemon/alakazam/icon.4bpp");
const u8 gMonFootprint_Alakazam[] = INCBIN_U8("graphics/pokemon/alakazam/footprint.1bpp");

const u32 gMonFrontPic_Machop[] = INCBIN_U32("graphics/pokemon/machop/front.4bpp.lz");
const u32 gMonPalette_Machop[] = INCBIN_U32("graphics/pokemon/machop/normal.gbapal.lz");
const u32 gMonBackPic_Machop[] = INCBIN_U32("graphics/pokemon/machop/back.4bpp.lz");
const u32 gMonShinyPalette_Machop[] = INCBIN_U32("graphics/pokemon/machop/shiny.gbapal.lz");
const u8 gMonIcon_Machop[] = INCBIN_U8("graphics/pokemon/machop/icon.4bpp");
const u8 gMonFootprint_Machop[] = INCBIN_U8("graphics/pokemon/machop/footprint.1bpp");

const u32 gMonFrontPic_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/front.4bpp.lz");
const u32 gMonPalette_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/normal.gbapal.lz");
const u32 gMonBackPic_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/back.4bpp.lz");
const u32 gMonShinyPalette_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/shiny.gbapal.lz");
const u8 gMonIcon_Machoke[] = INCBIN_U8("graphics/pokemon/machoke/icon.4bpp");
const u8 gMonFootprint_Machoke[] = INCBIN_U8("graphics/pokemon/machoke/footprint.1bpp");

const u32 gMonFrontPic_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/front.4bpp.lz");
const u32 gMonPalette_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/normal.gbapal.lz");
const u32 gMonBackPic_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/back.4bpp.lz");
const u32 gMonShinyPalette_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/shiny.gbapal.lz");
const u8 gMonIcon_Machamp[] = INCBIN_U8("graphics/pokemon/machamp/icon.4bpp");
const u8 gMonFootprint_Machamp[] = INCBIN_U8("graphics/pokemon/machamp/footprint.1bpp");

const u32 gMonFrontPic_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/front.4bpp.lz");
const u32 gMonPalette_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/normal.gbapal.lz");
const u32 gMonBackPic_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/back.4bpp.lz");
const u32 gMonShinyPalette_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/shiny.gbapal.lz");
const u8 gMonIcon_Bellsprout[] = INCBIN_U8("graphics/pokemon/bellsprout/icon.4bpp");
const u8 gMonFootprint_Bellsprout[] = INCBIN_U8("graphics/pokemon/bellsprout/footprint.1bpp");

const u32 gMonFrontPic_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/front.4bpp.lz");
const u32 gMonPalette_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/normal.gbapal.lz");
const u32 gMonBackPic_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/back.4bpp.lz");
const u32 gMonShinyPalette_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/shiny.gbapal.lz");
const u8 gMonIcon_Weepinbell[] = INCBIN_U8("graphics/pokemon/weepinbell/icon.4bpp");
const u8 gMonFootprint_Weepinbell[] = INCBIN_U8("graphics/pokemon/weepinbell/footprint.1bpp");

const u32 gMonFrontPic_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/front.4bpp.lz");
const u32 gMonPalette_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/normal.gbapal.lz");
const u32 gMonBackPic_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/back.4bpp.lz");
const u32 gMonShinyPalette_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/shiny.gbapal.lz");
const u8 gMonIcon_Victreebel[] = INCBIN_U8("graphics/pokemon/victreebel/icon.4bpp");
const u8 gMonFootprint_Victreebel[] = INCBIN_U8("graphics/pokemon/victreebel/footprint.1bpp");

const u32 gMonFrontPic_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/front.4bpp.lz");
const u32 gMonPalette_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/normal.gbapal.lz");
const u32 gMonBackPic_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/back.4bpp.lz");
const u32 gMonShinyPalette_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/shiny.gbapal.lz");
const u8 gMonIcon_Tentacool[] = INCBIN_U8("graphics/pokemon/tentacool/icon.4bpp");
const u8 gMonFootprint_Tentacool[] = INCBIN_U8("graphics/pokemon/tentacool/footprint.1bpp");

const u32 gMonFrontPic_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/front.4bpp.lz");
const u32 gMonPalette_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/normal.gbapal.lz");
const u32 gMonBackPic_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/back.4bpp.lz");
const u32 gMonShinyPalette_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/shiny.gbapal.lz");
const u8 gMonIcon_Tentacruel[] = INCBIN_U8("graphics/pokemon/tentacruel/icon.4bpp");
const u8 gMonFootprint_Tentacruel[] = INCBIN_U8("graphics/pokemon/tentacruel/footprint.1bpp");

const u32 gMonFrontPic_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/front.4bpp.lz");
const u32 gMonPalette_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/normal.gbapal.lz");
const u32 gMonBackPic_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/back.4bpp.lz");
const u32 gMonShinyPalette_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/shiny.gbapal.lz");
const u8 gMonIcon_Geodude[] = INCBIN_U8("graphics/pokemon/geodude/icon.4bpp");
const u8 gMonFootprint_Geodude[] = INCBIN_U8("graphics/pokemon/geodude/footprint.1bpp");

const u32 gMonFrontPic_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/front.4bpp.lz");
const u32 gMonPalette_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/normal.gbapal.lz");
const u32 gMonBackPic_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/back.4bpp.lz");
const u32 gMonShinyPalette_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/shiny.gbapal.lz");
const u8 gMonIcon_Graveler[] = INCBIN_U8("graphics/pokemon/graveler/icon.4bpp");
const u8 gMonFootprint_Graveler[] = INCBIN_U8("graphics/pokemon/graveler/footprint.1bpp");

const u32 gMonFrontPic_Golem[] = INCBIN_U32("graphics/pokemon/golem/front.4bpp.lz");
const u32 gMonPalette_Golem[] = INCBIN_U32("graphics/pokemon/golem/normal.gbapal.lz");
const u32 gMonBackPic_Golem[] = INCBIN_U32("graphics/pokemon/golem/back.4bpp.lz");
const u32 gMonShinyPalette_Golem[] = INCBIN_U32("graphics/pokemon/golem/shiny.gbapal.lz");
const u8 gMonIcon_Golem[] = INCBIN_U8("graphics/pokemon/golem/icon.4bpp");
const u8 gMonFootprint_Golem[] = INCBIN_U8("graphics/pokemon/golem/footprint.1bpp");

const u32 gMonFrontPic_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/front.4bpp.lz");
const u32 gMonPalette_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/normal.gbapal.lz");
const u32 gMonBackPic_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/back.4bpp.lz");
const u32 gMonShinyPalette_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/shiny.gbapal.lz");
const u8 gMonIcon_Ponyta[] = INCBIN_U8("graphics/pokemon/ponyta/icon.4bpp");
const u8 gMonFootprint_Ponyta[] = INCBIN_U8("graphics/pokemon/ponyta/footprint.1bpp");

const u32 gMonFrontPic_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/front.4bpp.lz");
const u32 gMonPalette_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/normal.gbapal.lz");
const u32 gMonBackPic_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/back.4bpp.lz");
const u32 gMonShinyPalette_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/shiny.gbapal.lz");
const u8 gMonIcon_Rapidash[] = INCBIN_U8("graphics/pokemon/rapidash/icon.4bpp");
const u8 gMonFootprint_Rapidash[] = INCBIN_U8("graphics/pokemon/rapidash/footprint.1bpp");

const u32 gMonFrontPic_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/front.4bpp.lz");
const u32 gMonPalette_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/normal.gbapal.lz");
const u32 gMonBackPic_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/back.4bpp.lz");
const u32 gMonShinyPalette_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/shiny.gbapal.lz");
const u8 gMonIcon_Slowpoke[] = INCBIN_U8("graphics/pokemon/slowpoke/icon.4bpp");
const u8 gMonFootprint_Slowpoke[] = INCBIN_U8("graphics/pokemon/slowpoke/footprint.1bpp");

const u32 gMonFrontPic_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/front.4bpp.lz");
const u32 gMonPalette_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/normal.gbapal.lz");
const u32 gMonBackPic_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/back.4bpp.lz");
const u32 gMonShinyPalette_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/shiny.gbapal.lz");
const u8 gMonIcon_Slowbro[] = INCBIN_U8("graphics/pokemon/slowbro/icon.4bpp");
const u8 gMonFootprint_Slowbro[] = INCBIN_U8("graphics/pokemon/slowbro/footprint.1bpp");

const u32 gMonFrontPic_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/front.4bpp.lz");
const u32 gMonPalette_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/normal.gbapal.lz");
const u32 gMonBackPic_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/back.4bpp.lz");
const u32 gMonShinyPalette_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/shiny.gbapal.lz");
const u8 gMonIcon_Magnemite[] = INCBIN_U8("graphics/pokemon/magnemite/icon.4bpp");
const u8 gMonFootprint_Magnemite[] = INCBIN_U8("graphics/pokemon/magnemite/footprint.1bpp");

const u32 gMonFrontPic_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/front.4bpp.lz");
const u32 gMonPalette_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/normal.gbapal.lz");
const u32 gMonBackPic_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/back.4bpp.lz");
const u32 gMonShinyPalette_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/shiny.gbapal.lz");
const u8 gMonIcon_Magneton[] = INCBIN_U8("graphics/pokemon/magneton/icon.4bpp");
const u8 gMonFootprint_Magneton[] = INCBIN_U8("graphics/pokemon/magneton/footprint.1bpp");

const u32 gMonFrontPic_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/front.4bpp.lz");
const u32 gMonPalette_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/normal.gbapal.lz");
const u32 gMonBackPic_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/back.4bpp.lz");
const u32 gMonShinyPalette_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/shiny.gbapal.lz");
const u8 gMonIcon_Farfetchd[] = INCBIN_U8("graphics/pokemon/farfetchd/icon.4bpp");
const u8 gMonFootprint_Farfetchd[] = INCBIN_U8("graphics/pokemon/farfetchd/footprint.1bpp");

const u32 gMonFrontPic_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/front.4bpp.lz");
const u32 gMonPalette_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/normal.gbapal.lz");
const u32 gMonBackPic_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/back.4bpp.lz");
const u32 gMonShinyPalette_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/shiny.gbapal.lz");
const u8 gMonIcon_Doduo[] = INCBIN_U8("graphics/pokemon/doduo/icon.4bpp");
const u8 gMonFootprint_Doduo[] = INCBIN_U8("graphics/pokemon/doduo/footprint.1bpp");

const u32 gMonFrontPic_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/front.4bpp.lz");
const u32 gMonPalette_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/normal.gbapal.lz");
const u32 gMonBackPic_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/back.4bpp.lz");
const u32 gMonShinyPalette_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/shiny.gbapal.lz");
const u8 gMonIcon_Dodrio[] = INCBIN_U8("graphics/pokemon/dodrio/icon.4bpp");
const u8 gMonFootprint_Dodrio[] = INCBIN_U8("graphics/pokemon/dodrio/footprint.1bpp");

const u32 gMonFrontPic_Seel[] = INCBIN_U32("graphics/pokemon/seel/front.4bpp.lz");
const u32 gMonPalette_Seel[] = INCBIN_U32("graphics/pokemon/seel/normal.gbapal.lz");
const u32 gMonBackPic_Seel[] = INCBIN_U32("graphics/pokemon/seel/back.4bpp.lz");
const u32 gMonShinyPalette_Seel[] = INCBIN_U32("graphics/pokemon/seel/shiny.gbapal.lz");
const u8 gMonIcon_Seel[] = INCBIN_U8("graphics/pokemon/seel/icon.4bpp");
const u8 gMonFootprint_Seel[] = INCBIN_U8("graphics/pokemon/seel/footprint.1bpp");

const u32 gMonFrontPic_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/front.4bpp.lz");
const u32 gMonPalette_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/normal.gbapal.lz");
const u32 gMonBackPic_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/back.4bpp.lz");
const u32 gMonShinyPalette_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/shiny.gbapal.lz");
const u8 gMonIcon_Dewgong[] = INCBIN_U8("graphics/pokemon/dewgong/icon.4bpp");
const u8 gMonFootprint_Dewgong[] = INCBIN_U8("graphics/pokemon/dewgong/footprint.1bpp");

const u32 gMonFrontPic_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/front.4bpp.lz");
const u32 gMonPalette_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/normal.gbapal.lz");
const u32 gMonBackPic_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/back.4bpp.lz");
const u32 gMonShinyPalette_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/shiny.gbapal.lz");
const u8 gMonIcon_Grimer[] = INCBIN_U8("graphics/pokemon/grimer/icon.4bpp");
const u8 gMonFootprint_Grimer[] = INCBIN_U8("graphics/pokemon/grimer/footprint.1bpp");

const u32 gMonFrontPic_Muk[] = INCBIN_U32("graphics/pokemon/muk/front.4bpp.lz");
const u32 gMonPalette_Muk[] = INCBIN_U32("graphics/pokemon/muk/normal.gbapal.lz");
const u32 gMonBackPic_Muk[] = INCBIN_U32("graphics/pokemon/muk/back.4bpp.lz");
const u32 gMonShinyPalette_Muk[] = INCBIN_U32("graphics/pokemon/muk/shiny.gbapal.lz");
const u8 gMonIcon_Muk[] = INCBIN_U8("graphics/pokemon/muk/icon.4bpp");
const u8 gMonFootprint_Muk[] = INCBIN_U8("graphics/pokemon/muk/footprint.1bpp");

const u32 gMonFrontPic_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/front.4bpp.lz");
const u32 gMonPalette_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/normal.gbapal.lz");
const u32 gMonBackPic_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/back.4bpp.lz");
const u32 gMonShinyPalette_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/shiny.gbapal.lz");
const u8 gMonIcon_Shellder[] = INCBIN_U8("graphics/pokemon/shellder/icon.4bpp");
const u8 gMonFootprint_Shellder[] = INCBIN_U8("graphics/pokemon/shellder/footprint.1bpp");

const u32 gMonFrontPic_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/front.4bpp.lz");
const u32 gMonPalette_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/normal.gbapal.lz");
const u32 gMonBackPic_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/back.4bpp.lz");
const u32 gMonShinyPalette_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/shiny.gbapal.lz");
const u8 gMonIcon_Cloyster[] = INCBIN_U8("graphics/pokemon/cloyster/icon.4bpp");
const u8 gMonFootprint_Cloyster[] = INCBIN_U8("graphics/pokemon/cloyster/footprint.1bpp");

const u32 gMonFrontPic_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/front.4bpp.lz");
const u32 gMonPalette_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/normal.gbapal.lz");
const u32 gMonBackPic_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/back.4bpp.lz");
const u32 gMonShinyPalette_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/shiny.gbapal.lz");
const u8 gMonIcon_Gastly[] = INCBIN_U8("graphics/pokemon/gastly/icon.4bpp");
const u8 gMonFootprint_Gastly[] = INCBIN_U8("graphics/pokemon/gastly/footprint.1bpp");

const u32 gMonFrontPic_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/front.4bpp.lz");
const u32 gMonPalette_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/normal.gbapal.lz");
const u32 gMonBackPic_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/back.4bpp.lz");
const u32 gMonShinyPalette_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/shiny.gbapal.lz");
const u8 gMonIcon_Haunter[] = INCBIN_U8("graphics/pokemon/haunter/icon.4bpp");
const u8 gMonFootprint_Haunter[] = INCBIN_U8("graphics/pokemon/haunter/footprint.1bpp");

const u32 gMonFrontPic_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/front.4bpp.lz");
const u32 gMonPalette_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/normal.gbapal.lz");
const u32 gMonBackPic_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/back.4bpp.lz");
const u32 gMonShinyPalette_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/shiny.gbapal.lz");
const u8 gMonIcon_Gengar[] = INCBIN_U8("graphics/pokemon/gengar/icon.4bpp");
const u8 gMonFootprint_Gengar[] = INCBIN_U8("graphics/pokemon/gengar/footprint.1bpp");

const u32 gMonFrontPic_Onix[] = INCBIN_U32("graphics/pokemon/onix/front.4bpp.lz");
const u32 gMonPalette_Onix[] = INCBIN_U32("graphics/pokemon/onix/normal.gbapal.lz");
const u32 gMonBackPic_Onix[] = INCBIN_U32("graphics/pokemon/onix/back.4bpp.lz");
const u32 gMonShinyPalette_Onix[] = INCBIN_U32("graphics/pokemon/onix/shiny.gbapal.lz");
const u8 gMonIcon_Onix[] = INCBIN_U8("graphics/pokemon/onix/icon.4bpp");
const u8 gMonFootprint_Onix[] = INCBIN_U8("graphics/pokemon/onix/footprint.1bpp");

const u32 gMonFrontPic_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/front.4bpp.lz");
const u32 gMonPalette_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/normal.gbapal.lz");
const u32 gMonBackPic_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/back.4bpp.lz");
const u32 gMonShinyPalette_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/shiny.gbapal.lz");
const u8 gMonIcon_Drowzee[] = INCBIN_U8("graphics/pokemon/drowzee/icon.4bpp");
const u8 gMonFootprint_Drowzee[] = INCBIN_U8("graphics/pokemon/drowzee/footprint.1bpp");

const u32 gMonFrontPic_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/front.4bpp.lz");
const u32 gMonPalette_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/normal.gbapal.lz");
const u32 gMonBackPic_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/back.4bpp.lz");
const u32 gMonShinyPalette_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/shiny.gbapal.lz");
const u8 gMonIcon_Hypno[] = INCBIN_U8("graphics/pokemon/hypno/icon.4bpp");
const u8 gMonFootprint_Hypno[] = INCBIN_U8("graphics/pokemon/hypno/footprint.1bpp");

const u32 gMonFrontPic_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/front.4bpp.lz");
const u32 gMonPalette_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/normal.gbapal.lz");
const u32 gMonBackPic_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/back.4bpp.lz");
const u32 gMonShinyPalette_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/shiny.gbapal.lz");
const u8 gMonIcon_Krabby[] = INCBIN_U8("graphics/pokemon/krabby/icon.4bpp");
const u8 gMonFootprint_Krabby[] = INCBIN_U8("graphics/pokemon/krabby/footprint.1bpp");

const u32 gMonFrontPic_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/front.4bpp.lz");
const u32 gMonPalette_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/normal.gbapal.lz");
const u32 gMonBackPic_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/back.4bpp.lz");
const u32 gMonShinyPalette_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/shiny.gbapal.lz");
const u8 gMonIcon_Kingler[] = INCBIN_U8("graphics/pokemon/kingler/icon.4bpp");
const u8 gMonFootprint_Kingler[] = INCBIN_U8("graphics/pokemon/kingler/footprint.1bpp");

const u32 gMonFrontPic_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/front.4bpp.lz");
const u32 gMonPalette_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/normal.gbapal.lz");
const u32 gMonBackPic_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/back.4bpp.lz");
const u32 gMonShinyPalette_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/shiny.gbapal.lz");
const u8 gMonIcon_Voltorb[] = INCBIN_U8("graphics/pokemon/voltorb/icon.4bpp");
const u8 gMonFootprint_Voltorb[] = INCBIN_U8("graphics/pokemon/voltorb/footprint.1bpp");

const u32 gMonFrontPic_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/front.4bpp.lz");
const u32 gMonPalette_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/normal.gbapal.lz");
const u32 gMonBackPic_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/back.4bpp.lz");
const u32 gMonShinyPalette_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/shiny.gbapal.lz");
const u8 gMonIcon_Electrode[] = INCBIN_U8("graphics/pokemon/electrode/icon.4bpp");
const u8 gMonFootprint_Electrode[] = INCBIN_U8("graphics/pokemon/electrode/footprint.1bpp");

const u32 gMonFrontPic_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/front.4bpp.lz");
const u32 gMonPalette_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/normal.gbapal.lz");
const u32 gMonBackPic_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/back.4bpp.lz");
const u32 gMonShinyPalette_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/shiny.gbapal.lz");
const u8 gMonIcon_Exeggcute[] = INCBIN_U8("graphics/pokemon/exeggcute/icon.4bpp");
const u8 gMonFootprint_Exeggcute[] = INCBIN_U8("graphics/pokemon/exeggcute/footprint.1bpp");

const u32 gMonFrontPic_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/front.4bpp.lz");
const u32 gMonPalette_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/normal.gbapal.lz");
const u32 gMonBackPic_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/back.4bpp.lz");
const u32 gMonShinyPalette_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/shiny.gbapal.lz");
const u8 gMonIcon_Exeggutor[] = INCBIN_U8("graphics/pokemon/exeggutor/icon.4bpp");
const u8 gMonFootprint_Exeggutor[] = INCBIN_U8("graphics/pokemon/exeggutor/footprint.1bpp");

const u32 gMonFrontPic_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/front.4bpp.lz");
const u32 gMonPalette_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/normal.gbapal.lz");
const u32 gMonBackPic_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/back.4bpp.lz");
const u32 gMonShinyPalette_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/shiny.gbapal.lz");
const u8 gMonIcon_Cubone[] = INCBIN_U8("graphics/pokemon/cubone/icon.4bpp");
const u8 gMonFootprint_Cubone[] = INCBIN_U8("graphics/pokemon/cubone/footprint.1bpp");

const u32 gMonFrontPic_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/front.4bpp.lz");
const u32 gMonPalette_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/normal.gbapal.lz");
const u32 gMonBackPic_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/back.4bpp.lz");
const u32 gMonShinyPalette_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/shiny.gbapal.lz");
const u8 gMonIcon_Marowak[] = INCBIN_U8("graphics/pokemon/marowak/icon.4bpp");
const u8 gMonFootprint_Marowak[] = INCBIN_U8("graphics/pokemon/marowak/footprint.1bpp");

const u32 gMonFrontPic_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/front.4bpp.lz");
const u32 gMonPalette_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/normal.gbapal.lz");
const u32 gMonBackPic_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/back.4bpp.lz");
const u32 gMonShinyPalette_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/shiny.gbapal.lz");
const u8 gMonIcon_Hitmonlee[] = INCBIN_U8("graphics/pokemon/hitmonlee/icon.4bpp");
const u8 gMonFootprint_Hitmonlee[] = INCBIN_U8("graphics/pokemon/hitmonlee/footprint.1bpp");

const u32 gMonFrontPic_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/front.4bpp.lz");
const u32 gMonPalette_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/normal.gbapal.lz");
const u32 gMonBackPic_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/back.4bpp.lz");
const u32 gMonShinyPalette_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/shiny.gbapal.lz");
const u8 gMonIcon_Hitmonchan[] = INCBIN_U8("graphics/pokemon/hitmonchan/icon.4bpp");
const u8 gMonFootprint_Hitmonchan[] = INCBIN_U8("graphics/pokemon/hitmonchan/footprint.1bpp");

const u32 gMonFrontPic_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/front.4bpp.lz");
const u32 gMonPalette_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/normal.gbapal.lz");
const u32 gMonBackPic_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/back.4bpp.lz");
const u32 gMonShinyPalette_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/shiny.gbapal.lz");
const u8 gMonIcon_Lickitung[] = INCBIN_U8("graphics/pokemon/lickitung/icon.4bpp");
const u8 gMonFootprint_Lickitung[] = INCBIN_U8("graphics/pokemon/lickitung/footprint.1bpp");

const u32 gMonFrontPic_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/front.4bpp.lz");
const u32 gMonPalette_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/normal.gbapal.lz");
const u32 gMonBackPic_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/back.4bpp.lz");
const u32 gMonShinyPalette_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/shiny.gbapal.lz");
const u8 gMonIcon_Koffing[] = INCBIN_U8("graphics/pokemon/koffing/icon.4bpp");
const u8 gMonFootprint_Koffing[] = INCBIN_U8("graphics/pokemon/koffing/footprint.1bpp");

const u32 gMonFrontPic_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/front.4bpp.lz");
const u32 gMonPalette_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/normal.gbapal.lz");
const u32 gMonBackPic_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/back.4bpp.lz");
const u32 gMonShinyPalette_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/shiny.gbapal.lz");
const u8 gMonIcon_Weezing[] = INCBIN_U8("graphics/pokemon/weezing/icon.4bpp");
const u8 gMonFootprint_Weezing[] = INCBIN_U8("graphics/pokemon/weezing/footprint.1bpp");

const u32 gMonFrontPic_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/front.4bpp.lz");
const u32 gMonPalette_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/normal.gbapal.lz");
const u32 gMonBackPic_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/back.4bpp.lz");
const u32 gMonShinyPalette_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/shiny.gbapal.lz");
const u8 gMonIcon_Rhyhorn[] = INCBIN_U8("graphics/pokemon/rhyhorn/icon.4bpp");
const u8 gMonFootprint_Rhyhorn[] = INCBIN_U8("graphics/pokemon/rhyhorn/footprint.1bpp");

const u32 gMonFrontPic_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/front.4bpp.lz");
const u32 gMonPalette_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/normal.gbapal.lz");
const u32 gMonBackPic_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/back.4bpp.lz");
const u32 gMonShinyPalette_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/shiny.gbapal.lz");
const u8 gMonIcon_Rhydon[] = INCBIN_U8("graphics/pokemon/rhydon/icon.4bpp");
const u8 gMonFootprint_Rhydon[] = INCBIN_U8("graphics/pokemon/rhydon/footprint.1bpp");

const u32 gMonFrontPic_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/front.4bpp.lz");
const u32 gMonPalette_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/normal.gbapal.lz");
const u32 gMonBackPic_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/back.4bpp.lz");
const u32 gMonShinyPalette_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/shiny.gbapal.lz");
const u8 gMonIcon_Chansey[] = INCBIN_U8("graphics/pokemon/chansey/icon.4bpp");
const u8 gMonFootprint_Chansey[] = INCBIN_U8("graphics/pokemon/chansey/footprint.1bpp");

const u32 gMonFrontPic_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/front.4bpp.lz");
const u32 gMonPalette_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/normal.gbapal.lz");
const u32 gMonBackPic_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/back.4bpp.lz");
const u32 gMonShinyPalette_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/shiny.gbapal.lz");
const u8 gMonIcon_Tangela[] = INCBIN_U8("graphics/pokemon/tangela/icon.4bpp");
const u8 gMonFootprint_Tangela[] = INCBIN_U8("graphics/pokemon/tangela/footprint.1bpp");

const u32 gMonFrontPic_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/front.4bpp.lz");
const u32 gMonPalette_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/normal.gbapal.lz");
const u32 gMonBackPic_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/back.4bpp.lz");
const u32 gMonShinyPalette_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/shiny.gbapal.lz");
const u8 gMonIcon_Kangaskhan[] = INCBIN_U8("graphics/pokemon/kangaskhan/icon.4bpp");
const u8 gMonFootprint_Kangaskhan[] = INCBIN_U8("graphics/pokemon/kangaskhan/footprint.1bpp");

const u32 gMonFrontPic_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/front.4bpp.lz");
const u32 gMonPalette_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/normal.gbapal.lz");
const u32 gMonBackPic_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/back.4bpp.lz");
const u32 gMonShinyPalette_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/shiny.gbapal.lz");
const u8 gMonIcon_Horsea[] = INCBIN_U8("graphics/pokemon/horsea/icon.4bpp");
const u8 gMonFootprint_Horsea[] = INCBIN_U8("graphics/pokemon/horsea/footprint.1bpp");

const u32 gMonFrontPic_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/front.4bpp.lz");
const u32 gMonPalette_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/normal.gbapal.lz");
const u32 gMonBackPic_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/back.4bpp.lz");
const u32 gMonShinyPalette_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/shiny.gbapal.lz");
const u8 gMonIcon_Seadra[] = INCBIN_U8("graphics/pokemon/seadra/icon.4bpp");
const u8 gMonFootprint_Seadra[] = INCBIN_U8("graphics/pokemon/seadra/footprint.1bpp");

const u32 gMonFrontPic_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/front.4bpp.lz");
const u32 gMonPalette_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/normal.gbapal.lz");
const u32 gMonBackPic_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/back.4bpp.lz");
const u32 gMonShinyPalette_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/shiny.gbapal.lz");
const u8 gMonIcon_Goldeen[] = INCBIN_U8("graphics/pokemon/goldeen/icon.4bpp");
const u8 gMonFootprint_Goldeen[] = INCBIN_U8("graphics/pokemon/goldeen/footprint.1bpp");

const u32 gMonFrontPic_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/front.4bpp.lz");
const u32 gMonPalette_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/normal.gbapal.lz");
const u32 gMonBackPic_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/back.4bpp.lz");
const u32 gMonShinyPalette_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/shiny.gbapal.lz");
const u8 gMonIcon_Seaking[] = INCBIN_U8("graphics/pokemon/seaking/icon.4bpp");
const u8 gMonFootprint_Seaking[] = INCBIN_U8("graphics/pokemon/seaking/footprint.1bpp");

const u32 gMonFrontPic_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/front.4bpp.lz");
const u32 gMonPalette_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/normal.gbapal.lz");
const u32 gMonBackPic_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/back.4bpp.lz");
const u32 gMonShinyPalette_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/shiny.gbapal.lz");
const u8 gMonIcon_Staryu[] = INCBIN_U8("graphics/pokemon/staryu/icon.4bpp");
const u8 gMonFootprint_Staryu[] = INCBIN_U8("graphics/pokemon/staryu/footprint.1bpp");

const u32 gMonFrontPic_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/front.4bpp.lz");
const u32 gMonPalette_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/normal.gbapal.lz");
const u32 gMonBackPic_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/back.4bpp.lz");
const u32 gMonShinyPalette_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/shiny.gbapal.lz");
const u8 gMonIcon_Starmie[] = INCBIN_U8("graphics/pokemon/starmie/icon.4bpp");
const u8 gMonFootprint_Starmie[] = INCBIN_U8("graphics/pokemon/starmie/footprint.1bpp");

const u32 gMonFrontPic_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/front.4bpp.lz");
const u32 gMonPalette_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/normal.gbapal.lz");
const u32 gMonBackPic_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/back.4bpp.lz");
const u32 gMonShinyPalette_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/shiny.gbapal.lz");
const u8 gMonIcon_Mrmime[] = INCBIN_U8("graphics/pokemon/mr_mime/icon.4bpp");
const u8 gMonFootprint_Mrmime[] = INCBIN_U8("graphics/pokemon/mr_mime/footprint.1bpp");

const u32 gMonFrontPic_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/front.4bpp.lz");
const u32 gMonPalette_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/normal.gbapal.lz");
const u32 gMonBackPic_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/back.4bpp.lz");
const u32 gMonShinyPalette_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/shiny.gbapal.lz");
const u8 gMonIcon_Scyther[] = INCBIN_U8("graphics/pokemon/scyther/icon.4bpp");
const u8 gMonFootprint_Scyther[] = INCBIN_U8("graphics/pokemon/scyther/footprint.1bpp");

const u32 gMonFrontPic_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/front.4bpp.lz");
const u32 gMonPalette_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/normal.gbapal.lz");
const u32 gMonBackPic_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/back.4bpp.lz");
const u32 gMonShinyPalette_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/shiny.gbapal.lz");
const u8 gMonIcon_Jynx[] = INCBIN_U8("graphics/pokemon/jynx/icon.4bpp");
const u8 gMonFootprint_Jynx[] = INCBIN_U8("graphics/pokemon/jynx/footprint.1bpp");

const u32 gMonFrontPic_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/front.4bpp.lz");
const u32 gMonPalette_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/normal.gbapal.lz");
const u32 gMonBackPic_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/back.4bpp.lz");
const u32 gMonShinyPalette_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/shiny.gbapal.lz");
const u8 gMonIcon_Electabuzz[] = INCBIN_U8("graphics/pokemon/electabuzz/icon.4bpp");
const u8 gMonFootprint_Electabuzz[] = INCBIN_U8("graphics/pokemon/electabuzz/footprint.1bpp");

const u32 gMonFrontPic_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/front.4bpp.lz");
const u32 gMonPalette_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/normal.gbapal.lz");
const u32 gMonBackPic_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/back.4bpp.lz");
const u32 gMonShinyPalette_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/shiny.gbapal.lz");
const u8 gMonIcon_Magmar[] = INCBIN_U8("graphics/pokemon/magmar/icon.4bpp");
const u8 gMonFootprint_Magmar[] = INCBIN_U8("graphics/pokemon/magmar/footprint.1bpp");

const u32 gMonFrontPic_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/front.4bpp.lz");
const u32 gMonPalette_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/normal.gbapal.lz");
const u32 gMonBackPic_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/back.4bpp.lz");
const u32 gMonShinyPalette_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/shiny.gbapal.lz");
const u8 gMonIcon_Pinsir[] = INCBIN_U8("graphics/pokemon/pinsir/icon.4bpp");
const u8 gMonFootprint_Pinsir[] = INCBIN_U8("graphics/pokemon/pinsir/footprint.1bpp");

const u32 gMonFrontPic_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/front.4bpp.lz");
const u32 gMonPalette_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/normal.gbapal.lz");
const u32 gMonBackPic_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/back.4bpp.lz");
const u32 gMonShinyPalette_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/shiny.gbapal.lz");
const u8 gMonIcon_Tauros[] = INCBIN_U8("graphics/pokemon/tauros/icon.4bpp");
const u8 gMonFootprint_Tauros[] = INCBIN_U8("graphics/pokemon/tauros/footprint.1bpp");

const u32 gMonFrontPic_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/front.4bpp.lz");
const u32 gMonPalette_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/normal.gbapal.lz");
const u32 gMonBackPic_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/back.4bpp.lz");
const u32 gMonShinyPalette_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/shiny.gbapal.lz");
const u8 gMonIcon_Magikarp[] = INCBIN_U8("graphics/pokemon/magikarp/icon.4bpp");
const u8 gMonFootprint_Magikarp[] = INCBIN_U8("graphics/pokemon/magikarp/footprint.1bpp");

const u32 gMonFrontPic_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/front.4bpp.lz");
const u32 gMonPalette_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/normal.gbapal.lz");
const u32 gMonBackPic_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/back.4bpp.lz");
const u32 gMonShinyPalette_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/shiny.gbapal.lz");
const u8 gMonIcon_Gyarados[] = INCBIN_U8("graphics/pokemon/gyarados/icon.4bpp");
const u8 gMonFootprint_Gyarados[] = INCBIN_U8("graphics/pokemon/gyarados/footprint.1bpp");

const u32 gMonFrontPic_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/front.4bpp.lz");
const u32 gMonPalette_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/normal.gbapal.lz");
const u32 gMonBackPic_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/back.4bpp.lz");
const u32 gMonShinyPalette_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/shiny.gbapal.lz");
const u8 gMonIcon_Lapras[] = INCBIN_U8("graphics/pokemon/lapras/icon.4bpp");
const u8 gMonFootprint_Lapras[] = INCBIN_U8("graphics/pokemon/lapras/footprint.1bpp");

const u32 gMonFrontPic_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/front.4bpp.lz");
const u32 gMonPalette_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/normal.gbapal.lz");
const u32 gMonBackPic_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/back.4bpp.lz");
const u32 gMonShinyPalette_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/shiny.gbapal.lz");
const u8 gMonIcon_Ditto[] = INCBIN_U8("graphics/pokemon/ditto/icon.4bpp");
const u8 gMonFootprint_Ditto[] = INCBIN_U8("graphics/pokemon/ditto/footprint.1bpp");

const u32 gMonFrontPic_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/front.4bpp.lz");
const u32 gMonPalette_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/normal.gbapal.lz");
const u32 gMonBackPic_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/back.4bpp.lz");
const u32 gMonShinyPalette_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/shiny.gbapal.lz");
const u8 gMonIcon_Eevee[] = INCBIN_U8("graphics/pokemon/eevee/icon.4bpp");
const u8 gMonFootprint_Eevee[] = INCBIN_U8("graphics/pokemon/eevee/footprint.1bpp");

const u32 gMonFrontPic_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/front.4bpp.lz");
const u32 gMonPalette_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/normal.gbapal.lz");
const u32 gMonBackPic_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/back.4bpp.lz");
const u32 gMonShinyPalette_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/shiny.gbapal.lz");
const u8 gMonIcon_Vaporeon[] = INCBIN_U8("graphics/pokemon/vaporeon/icon.4bpp");
const u8 gMonFootprint_Vaporeon[] = INCBIN_U8("graphics/pokemon/vaporeon/footprint.1bpp");

const u32 gMonFrontPic_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/front.4bpp.lz");
const u32 gMonPalette_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/normal.gbapal.lz");
const u32 gMonBackPic_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/back.4bpp.lz");
const u32 gMonShinyPalette_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/shiny.gbapal.lz");
const u8 gMonIcon_Jolteon[] = INCBIN_U8("graphics/pokemon/jolteon/icon.4bpp");
const u8 gMonFootprint_Jolteon[] = INCBIN_U8("graphics/pokemon/jolteon/footprint.1bpp");

const u32 gMonFrontPic_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/front.4bpp.lz");
const u32 gMonPalette_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/normal.gbapal.lz");
const u32 gMonBackPic_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/back.4bpp.lz");
const u32 gMonShinyPalette_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/shiny.gbapal.lz");
const u8 gMonIcon_Flareon[] = INCBIN_U8("graphics/pokemon/flareon/icon.4bpp");
const u8 gMonFootprint_Flareon[] = INCBIN_U8("graphics/pokemon/flareon/footprint.1bpp");

const u32 gMonFrontPic_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/front.4bpp.lz");
const u32 gMonPalette_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/normal.gbapal.lz");
const u32 gMonBackPic_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/back.4bpp.lz");
const u32 gMonShinyPalette_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/shiny.gbapal.lz");
const u8 gMonIcon_Porygon[] = INCBIN_U8("graphics/pokemon/porygon/icon.4bpp");
const u8 gMonFootprint_Porygon[] = INCBIN_U8("graphics/pokemon/porygon/footprint.1bpp");

const u32 gMonFrontPic_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/front.4bpp.lz");
const u32 gMonPalette_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/normal.gbapal.lz");
const u32 gMonBackPic_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/back.4bpp.lz");
const u32 gMonShinyPalette_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/shiny.gbapal.lz");
const u8 gMonIcon_Omanyte[] = INCBIN_U8("graphics/pokemon/omanyte/icon.4bpp");
const u8 gMonFootprint_Omanyte[] = INCBIN_U8("graphics/pokemon/omanyte/footprint.1bpp");

const u32 gMonFrontPic_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/front.4bpp.lz");
const u32 gMonPalette_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/normal.gbapal.lz");
const u32 gMonBackPic_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/back.4bpp.lz");
const u32 gMonShinyPalette_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/shiny.gbapal.lz");
const u8 gMonIcon_Omastar[] = INCBIN_U8("graphics/pokemon/omastar/icon.4bpp");
const u8 gMonFootprint_Omastar[] = INCBIN_U8("graphics/pokemon/omastar/footprint.1bpp");

const u32 gMonFrontPic_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/front.4bpp.lz");
const u32 gMonPalette_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/normal.gbapal.lz");
const u32 gMonBackPic_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/back.4bpp.lz");
const u32 gMonShinyPalette_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/shiny.gbapal.lz");
const u8 gMonIcon_Kabuto[] = INCBIN_U8("graphics/pokemon/kabuto/icon.4bpp");
const u8 gMonFootprint_Kabuto[] = INCBIN_U8("graphics/pokemon/kabuto/footprint.1bpp");

const u32 gMonFrontPic_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/front.4bpp.lz");
const u32 gMonPalette_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/normal.gbapal.lz");
const u32 gMonBackPic_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/back.4bpp.lz");
const u32 gMonShinyPalette_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/shiny.gbapal.lz");
const u8 gMonIcon_Kabutops[] = INCBIN_U8("graphics/pokemon/kabutops/icon.4bpp");
const u8 gMonFootprint_Kabutops[] = INCBIN_U8("graphics/pokemon/kabutops/footprint.1bpp");

const u32 gMonFrontPic_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/front.4bpp.lz");
const u32 gMonPalette_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/normal.gbapal.lz");
const u32 gMonBackPic_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/back.4bpp.lz");
const u32 gMonShinyPalette_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/shiny.gbapal.lz");
const u8 gMonIcon_Aerodactyl[] = INCBIN_U8("graphics/pokemon/aerodactyl/icon.4bpp");
const u8 gMonFootprint_Aerodactyl[] = INCBIN_U8("graphics/pokemon/aerodactyl/footprint.1bpp");

const u32 gMonFrontPic_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/front.4bpp.lz");
const u32 gMonPalette_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/normal.gbapal.lz");
const u32 gMonBackPic_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/back.4bpp.lz");
const u32 gMonShinyPalette_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/shiny.gbapal.lz");
const u8 gMonIcon_Snorlax[] = INCBIN_U8("graphics/pokemon/snorlax/icon.4bpp");
const u8 gMonFootprint_Snorlax[] = INCBIN_U8("graphics/pokemon/snorlax/footprint.1bpp");

const u32 gMonFrontPic_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/front.4bpp.lz");
const u32 gMonPalette_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/normal.gbapal.lz");
const u32 gMonBackPic_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/back.4bpp.lz");
const u32 gMonShinyPalette_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/shiny.gbapal.lz");
const u8 gMonIcon_Articuno[] = INCBIN_U8("graphics/pokemon/articuno/icon.4bpp");
const u8 gMonFootprint_Articuno[] = INCBIN_U8("graphics/pokemon/articuno/footprint.1bpp");

const u32 gMonFrontPic_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/front.4bpp.lz");
const u32 gMonPalette_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/normal.gbapal.lz");
const u32 gMonBackPic_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/back.4bpp.lz");
const u32 gMonShinyPalette_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/shiny.gbapal.lz");
const u8 gMonIcon_Zapdos[] = INCBIN_U8("graphics/pokemon/zapdos/icon.4bpp");
const u8 gMonFootprint_Zapdos[] = INCBIN_U8("graphics/pokemon/zapdos/footprint.1bpp");

const u32 gMonFrontPic_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/front.4bpp.lz");
const u32 gMonPalette_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/normal.gbapal.lz");
const u32 gMonBackPic_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/back.4bpp.lz");
const u32 gMonShinyPalette_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/shiny.gbapal.lz");
const u8 gMonIcon_Moltres[] = INCBIN_U8("graphics/pokemon/moltres/icon.4bpp");
const u8 gMonFootprint_Moltres[] = INCBIN_U8("graphics/pokemon/moltres/footprint.1bpp");

const u32 gMonFrontPic_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/front.4bpp.lz");
const u32 gMonPalette_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/normal.gbapal.lz");
const u32 gMonBackPic_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/back.4bpp.lz");
const u32 gMonShinyPalette_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/shiny.gbapal.lz");
const u8 gMonIcon_Dratini[] = INCBIN_U8("graphics/pokemon/dratini/icon.4bpp");
const u8 gMonFootprint_Dratini[] = INCBIN_U8("graphics/pokemon/dratini/footprint.1bpp");

const u32 gMonFrontPic_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/front.4bpp.lz");
const u32 gMonPalette_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/normal.gbapal.lz");
const u32 gMonBackPic_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/back.4bpp.lz");
const u32 gMonShinyPalette_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/shiny.gbapal.lz");
const u8 gMonIcon_Dragonair[] = INCBIN_U8("graphics/pokemon/dragonair/icon.4bpp");
const u8 gMonFootprint_Dragonair[] = INCBIN_U8("graphics/pokemon/dragonair/footprint.1bpp");

const u32 gMonFrontPic_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/front.4bpp.lz");
const u32 gMonPalette_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/normal.gbapal.lz");
const u32 gMonBackPic_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/back.4bpp.lz");
const u32 gMonShinyPalette_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/shiny.gbapal.lz");
const u8 gMonIcon_Dragonite[] = INCBIN_U8("graphics/pokemon/dragonite/icon.4bpp");
const u8 gMonFootprint_Dragonite[] = INCBIN_U8("graphics/pokemon/dragonite/footprint.1bpp");

const u32 gMonFrontPic_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/front.4bpp.lz");
const u32 gMonPalette_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/normal.gbapal.lz");
const u32 gMonBackPic_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/back.4bpp.lz");
const u32 gMonShinyPalette_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/shiny.gbapal.lz");
const u8 gMonIcon_Mewtwo[] = INCBIN_U8("graphics/pokemon/mewtwo/icon.4bpp");
const u8 gMonFootprint_Mewtwo[] = INCBIN_U8("graphics/pokemon/mewtwo/footprint.1bpp");

const u32 gMonFrontPic_Mew[] = INCBIN_U32("graphics/pokemon/mew/front.4bpp.lz");
const u32 gMonPalette_Mew[] = INCBIN_U32("graphics/pokemon/mew/normal.gbapal.lz");
const u32 gMonBackPic_Mew[] = INCBIN_U32("graphics/pokemon/mew/back.4bpp.lz");
const u32 gMonShinyPalette_Mew[] = INCBIN_U32("graphics/pokemon/mew/shiny.gbapal.lz");
const u8 gMonIcon_Mew[] = INCBIN_U8("graphics/pokemon/mew/icon.4bpp");
const u8 gMonFootprint_Mew[] = INCBIN_U8("graphics/pokemon/mew/footprint.1bpp");

const u32 gMonFrontPic_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/front.4bpp.lz");
const u32 gMonPalette_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/normal.gbapal.lz");
const u32 gMonBackPic_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/back.4bpp.lz");
const u32 gMonShinyPalette_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/shiny.gbapal.lz");
const u8 gMonIcon_Chikorita[] = INCBIN_U8("graphics/pokemon/chikorita/icon.4bpp");
const u8 gMonFootprint_Chikorita[] = INCBIN_U8("graphics/pokemon/chikorita/footprint.1bpp");

const u32 gMonFrontPic_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/front.4bpp.lz");
const u32 gMonPalette_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/normal.gbapal.lz");
const u32 gMonBackPic_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/back.4bpp.lz");
const u32 gMonShinyPalette_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/shiny.gbapal.lz");
const u8 gMonIcon_Bayleef[] = INCBIN_U8("graphics/pokemon/bayleef/icon.4bpp");
const u8 gMonFootprint_Bayleef[] = INCBIN_U8("graphics/pokemon/bayleef/footprint.1bpp");

const u32 gMonFrontPic_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/front.4bpp.lz");
const u32 gMonPalette_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/normal.gbapal.lz");
const u32 gMonBackPic_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/back.4bpp.lz");
const u32 gMonShinyPalette_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/shiny.gbapal.lz");
const u8 gMonIcon_Meganium[] = INCBIN_U8("graphics/pokemon/meganium/icon.4bpp");
const u8 gMonFootprint_Meganium[] = INCBIN_U8("graphics/pokemon/meganium/footprint.1bpp");

const u32 gMonFrontPic_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/front.4bpp.lz");
const u32 gMonPalette_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/normal.gbapal.lz");
const u32 gMonBackPic_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/back.4bpp.lz");
const u32 gMonShinyPalette_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/shiny.gbapal.lz");
const u8 gMonIcon_Cyndaquil[] = INCBIN_U8("graphics/pokemon/cyndaquil/icon.4bpp");
const u8 gMonFootprint_Cyndaquil[] = INCBIN_U8("graphics/pokemon/cyndaquil/footprint.1bpp");

const u32 gMonFrontPic_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/front.4bpp.lz");
const u32 gMonPalette_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/normal.gbapal.lz");
const u32 gMonBackPic_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/back.4bpp.lz");
const u32 gMonShinyPalette_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/shiny.gbapal.lz");
const u8 gMonIcon_Quilava[] = INCBIN_U8("graphics/pokemon/quilava/icon.4bpp");
const u8 gMonFootprint_Quilava[] = INCBIN_U8("graphics/pokemon/quilava/footprint.1bpp");

const u32 gMonFrontPic_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/front.4bpp.lz");
const u32 gMonPalette_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/normal.gbapal.lz");
const u32 gMonBackPic_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/back.4bpp.lz");
const u32 gMonShinyPalette_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/shiny.gbapal.lz");
const u8 gMonIcon_Typhlosion[] = INCBIN_U8("graphics/pokemon/typhlosion/icon.4bpp");
const u8 gMonFootprint_Typhlosion[] = INCBIN_U8("graphics/pokemon/typhlosion/footprint.1bpp");

const u32 gMonFrontPic_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/front.4bpp.lz");
const u32 gMonPalette_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/normal.gbapal.lz");
const u32 gMonBackPic_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/back.4bpp.lz");
const u32 gMonShinyPalette_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/shiny.gbapal.lz");
const u8 gMonIcon_Totodile[] = INCBIN_U8("graphics/pokemon/totodile/icon.4bpp");
const u8 gMonFootprint_Totodile[] = INCBIN_U8("graphics/pokemon/totodile/footprint.1bpp");

const u32 gMonFrontPic_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/front.4bpp.lz");
const u32 gMonPalette_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/normal.gbapal.lz");
const u32 gMonBackPic_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/back.4bpp.lz");
const u32 gMonShinyPalette_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/shiny.gbapal.lz");
const u8 gMonIcon_Croconaw[] = INCBIN_U8("graphics/pokemon/croconaw/icon.4bpp");
const u8 gMonFootprint_Croconaw[] = INCBIN_U8("graphics/pokemon/croconaw/footprint.1bpp");

const u32 gMonFrontPic_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/front.4bpp.lz");
const u32 gMonPalette_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/normal.gbapal.lz");
const u32 gMonBackPic_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/back.4bpp.lz");
const u32 gMonShinyPalette_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/shiny.gbapal.lz");
const u8 gMonIcon_Feraligatr[] = INCBIN_U8("graphics/pokemon/feraligatr/icon.4bpp");
const u8 gMonFootprint_Feraligatr[] = INCBIN_U8("graphics/pokemon/feraligatr/footprint.1bpp");

const u32 gMonFrontPic_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/front.4bpp.lz");
const u32 gMonPalette_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/normal.gbapal.lz");
const u32 gMonBackPic_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/back.4bpp.lz");
const u32 gMonShinyPalette_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/shiny.gbapal.lz");
const u8 gMonIcon_Sentret[] = INCBIN_U8("graphics/pokemon/sentret/icon.4bpp");
const u8 gMonFootprint_Sentret[] = INCBIN_U8("graphics/pokemon/sentret/footprint.1bpp");

const u32 gMonFrontPic_Furret[] = INCBIN_U32("graphics/pokemon/furret/front.4bpp.lz");
const u32 gMonPalette_Furret[] = INCBIN_U32("graphics/pokemon/furret/normal.gbapal.lz");
const u32 gMonBackPic_Furret[] = INCBIN_U32("graphics/pokemon/furret/back.4bpp.lz");
const u32 gMonShinyPalette_Furret[] = INCBIN_U32("graphics/pokemon/furret/shiny.gbapal.lz");
const u8 gMonIcon_Furret[] = INCBIN_U8("graphics/pokemon/furret/icon.4bpp");
const u8 gMonFootprint_Furret[] = INCBIN_U8("graphics/pokemon/furret/footprint.1bpp");

const u32 gMonFrontPic_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/front.4bpp.lz");
const u32 gMonPalette_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/normal.gbapal.lz");
const u32 gMonBackPic_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/back.4bpp.lz");
const u32 gMonShinyPalette_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/shiny.gbapal.lz");
const u8 gMonIcon_Hoothoot[] = INCBIN_U8("graphics/pokemon/hoothoot/icon.4bpp");
const u8 gMonFootprint_Hoothoot[] = INCBIN_U8("graphics/pokemon/hoothoot/footprint.1bpp");

const u32 gMonFrontPic_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/front.4bpp.lz");
const u32 gMonPalette_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/normal.gbapal.lz");
const u32 gMonBackPic_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/back.4bpp.lz");
const u32 gMonShinyPalette_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/shiny.gbapal.lz");
const u8 gMonIcon_Noctowl[] = INCBIN_U8("graphics/pokemon/noctowl/icon.4bpp");
const u8 gMonFootprint_Noctowl[] = INCBIN_U8("graphics/pokemon/noctowl/footprint.1bpp");

const u32 gMonFrontPic_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/front.4bpp.lz");
const u32 gMonPalette_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/normal.gbapal.lz");
const u32 gMonBackPic_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/back.4bpp.lz");
const u32 gMonShinyPalette_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/shiny.gbapal.lz");
const u8 gMonIcon_Ledyba[] = INCBIN_U8("graphics/pokemon/ledyba/icon.4bpp");
const u8 gMonFootprint_Ledyba[] = INCBIN_U8("graphics/pokemon/ledyba/footprint.1bpp");

const u32 gMonFrontPic_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/front.4bpp.lz");
const u32 gMonPalette_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/normal.gbapal.lz");
const u32 gMonBackPic_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/back.4bpp.lz");
const u32 gMonShinyPalette_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/shiny.gbapal.lz");
const u8 gMonIcon_Ledian[] = INCBIN_U8("graphics/pokemon/ledian/icon.4bpp");
const u8 gMonFootprint_Ledian[] = INCBIN_U8("graphics/pokemon/ledian/footprint.1bpp");

const u32 gMonFrontPic_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/front.4bpp.lz");
const u32 gMonPalette_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/normal.gbapal.lz");
const u32 gMonBackPic_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/back.4bpp.lz");
const u32 gMonShinyPalette_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/shiny.gbapal.lz");
const u8 gMonIcon_Spinarak[] = INCBIN_U8("graphics/pokemon/spinarak/icon.4bpp");
const u8 gMonFootprint_Spinarak[] = INCBIN_U8("graphics/pokemon/spinarak/footprint.1bpp");

const u32 gMonFrontPic_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/front.4bpp.lz");
const u32 gMonPalette_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/normal.gbapal.lz");
const u32 gMonBackPic_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/back.4bpp.lz");
const u32 gMonShinyPalette_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/shiny.gbapal.lz");
const u8 gMonIcon_Ariados[] = INCBIN_U8("graphics/pokemon/ariados/icon.4bpp");
const u8 gMonFootprint_Ariados[] = INCBIN_U8("graphics/pokemon/ariados/footprint.1bpp");

const u32 gMonFrontPic_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/front.4bpp.lz");
const u32 gMonPalette_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/normal.gbapal.lz");
const u32 gMonBackPic_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/back.4bpp.lz");
const u32 gMonShinyPalette_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/shiny.gbapal.lz");
const u8 gMonIcon_Crobat[] = INCBIN_U8("graphics/pokemon/crobat/icon.4bpp");
const u8 gMonFootprint_Crobat[] = INCBIN_U8("graphics/pokemon/crobat/footprint.1bpp");

const u32 gMonFrontPic_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/front.4bpp.lz");
const u32 gMonPalette_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/normal.gbapal.lz");
const u32 gMonBackPic_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/back.4bpp.lz");
const u32 gMonShinyPalette_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/shiny.gbapal.lz");
const u8 gMonIcon_Chinchou[] = INCBIN_U8("graphics/pokemon/chinchou/icon.4bpp");
const u8 gMonFootprint_Chinchou[] = INCBIN_U8("graphics/pokemon/chinchou/footprint.1bpp");

const u32 gMonFrontPic_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/front.4bpp.lz");
const u32 gMonPalette_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/normal.gbapal.lz");
const u32 gMonBackPic_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/back.4bpp.lz");
const u32 gMonShinyPalette_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/shiny.gbapal.lz");
const u8 gMonIcon_Lanturn[] = INCBIN_U8("graphics/pokemon/lanturn/icon.4bpp");
const u8 gMonFootprint_Lanturn[] = INCBIN_U8("graphics/pokemon/lanturn/footprint.1bpp");

const u32 gMonFrontPic_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/front.4bpp.lz");
const u32 gMonPalette_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/normal.gbapal.lz");
const u32 gMonBackPic_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/back.4bpp.lz");
const u32 gMonShinyPalette_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/shiny.gbapal.lz");
const u8 gMonIcon_Pichu[] = INCBIN_U8("graphics/pokemon/pichu/icon.4bpp");
const u8 gMonFootprint_Pichu[] = INCBIN_U8("graphics/pokemon/pichu/footprint.1bpp");

const u32 gMonFrontPic_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/front.4bpp.lz");
const u32 gMonPalette_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/normal.gbapal.lz");
const u32 gMonBackPic_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/back.4bpp.lz");
const u32 gMonShinyPalette_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/shiny.gbapal.lz");
const u8 gMonIcon_Cleffa[] = INCBIN_U8("graphics/pokemon/cleffa/icon.4bpp");
const u8 gMonFootprint_Cleffa[] = INCBIN_U8("graphics/pokemon/cleffa/footprint.1bpp");

const u32 gMonFrontPic_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/front.4bpp.lz");
const u32 gMonPalette_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/normal.gbapal.lz");
const u32 gMonBackPic_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/back.4bpp.lz");
const u32 gMonShinyPalette_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/shiny.gbapal.lz");
const u8 gMonIcon_Igglybuff[] = INCBIN_U8("graphics/pokemon/igglybuff/icon.4bpp");
const u8 gMonFootprint_Igglybuff[] = INCBIN_U8("graphics/pokemon/igglybuff/footprint.1bpp");

const u32 gMonFrontPic_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/front.4bpp.lz");
const u32 gMonPalette_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/normal.gbapal.lz");
const u32 gMonBackPic_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/back.4bpp.lz");
const u32 gMonShinyPalette_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/shiny.gbapal.lz");
const u8 gMonIcon_Togepi[] = INCBIN_U8("graphics/pokemon/togepi/icon.4bpp");
const u8 gMonFootprint_Togepi[] = INCBIN_U8("graphics/pokemon/togepi/footprint.1bpp");

const u32 gMonFrontPic_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/front.4bpp.lz");
const u32 gMonPalette_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/normal.gbapal.lz");
const u32 gMonBackPic_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/back.4bpp.lz");
const u32 gMonShinyPalette_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/shiny.gbapal.lz");
const u8 gMonIcon_Togetic[] = INCBIN_U8("graphics/pokemon/togetic/icon.4bpp");
const u8 gMonFootprint_Togetic[] = INCBIN_U8("graphics/pokemon/togetic/footprint.1bpp");

const u32 gMonFrontPic_Natu[] = INCBIN_U32("graphics/pokemon/natu/front.4bpp.lz");
const u32 gMonPalette_Natu[] = INCBIN_U32("graphics/pokemon/natu/normal.gbapal.lz");
const u32 gMonBackPic_Natu[] = INCBIN_U32("graphics/pokemon/natu/back.4bpp.lz");
const u32 gMonShinyPalette_Natu[] = INCBIN_U32("graphics/pokemon/natu/shiny.gbapal.lz");
const u8 gMonIcon_Natu[] = INCBIN_U8("graphics/pokemon/natu/icon.4bpp");
const u8 gMonFootprint_Natu[] = INCBIN_U8("graphics/pokemon/natu/footprint.1bpp");

const u32 gMonFrontPic_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/front.4bpp.lz");
const u32 gMonPalette_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/normal.gbapal.lz");
const u32 gMonBackPic_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/back.4bpp.lz");
const u32 gMonShinyPalette_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/shiny.gbapal.lz");
const u8 gMonIcon_Xatu[] = INCBIN_U8("graphics/pokemon/xatu/icon.4bpp");
const u8 gMonFootprint_Xatu[] = INCBIN_U8("graphics/pokemon/xatu/footprint.1bpp");

const u32 gMonFrontPic_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/front.4bpp.lz");
const u32 gMonPalette_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/normal.gbapal.lz");
const u32 gMonBackPic_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/back.4bpp.lz");
const u32 gMonShinyPalette_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/shiny.gbapal.lz");
const u8 gMonIcon_Mareep[] = INCBIN_U8("graphics/pokemon/mareep/icon.4bpp");
const u8 gMonFootprint_Mareep[] = INCBIN_U8("graphics/pokemon/mareep/footprint.1bpp");

const u32 gMonFrontPic_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/front.4bpp.lz");
const u32 gMonPalette_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/normal.gbapal.lz");
const u32 gMonBackPic_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/back.4bpp.lz");
const u32 gMonShinyPalette_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/shiny.gbapal.lz");
const u8 gMonIcon_Flaaffy[] = INCBIN_U8("graphics/pokemon/flaaffy/icon.4bpp");
const u8 gMonFootprint_Flaaffy[] = INCBIN_U8("graphics/pokemon/flaaffy/footprint.1bpp");

const u32 gMonFrontPic_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/front.4bpp.lz");
const u32 gMonPalette_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/normal.gbapal.lz");
const u32 gMonBackPic_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/back.4bpp.lz");
const u32 gMonShinyPalette_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/shiny.gbapal.lz");
const u8 gMonIcon_Ampharos[] = INCBIN_U8("graphics/pokemon/ampharos/icon.4bpp");
const u8 gMonFootprint_Ampharos[] = INCBIN_U8("graphics/pokemon/ampharos/footprint.1bpp");

const u32 gMonFrontPic_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/front.4bpp.lz");
const u32 gMonPalette_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/normal.gbapal.lz");
const u32 gMonBackPic_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/back.4bpp.lz");
const u32 gMonShinyPalette_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/shiny.gbapal.lz");
const u8 gMonIcon_Bellossom[] = INCBIN_U8("graphics/pokemon/bellossom/icon.4bpp");
const u8 gMonFootprint_Bellossom[] = INCBIN_U8("graphics/pokemon/bellossom/footprint.1bpp");

const u32 gMonFrontPic_Marill[] = INCBIN_U32("graphics/pokemon/marill/front.4bpp.lz");
const u32 gMonPalette_Marill[] = INCBIN_U32("graphics/pokemon/marill/normal.gbapal.lz");
const u32 gMonBackPic_Marill[] = INCBIN_U32("graphics/pokemon/marill/back.4bpp.lz");
const u32 gMonShinyPalette_Marill[] = INCBIN_U32("graphics/pokemon/marill/shiny.gbapal.lz");
const u8 gMonIcon_Marill[] = INCBIN_U8("graphics/pokemon/marill/icon.4bpp");
const u8 gMonFootprint_Marill[] = INCBIN_U8("graphics/pokemon/marill/footprint.1bpp");

const u32 gMonFrontPic_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/front.4bpp.lz");
const u32 gMonPalette_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/normal.gbapal.lz");
const u32 gMonBackPic_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/back.4bpp.lz");
const u32 gMonShinyPalette_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/shiny.gbapal.lz");
const u8 gMonIcon_Azumarill[] = INCBIN_U8("graphics/pokemon/azumarill/icon.4bpp");
const u8 gMonFootprint_Azumarill[] = INCBIN_U8("graphics/pokemon/azumarill/footprint.1bpp");

const u32 gMonFrontPic_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/front.4bpp.lz");
const u32 gMonPalette_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/normal.gbapal.lz");
const u32 gMonBackPic_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/back.4bpp.lz");
const u32 gMonShinyPalette_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/shiny.gbapal.lz");
const u8 gMonIcon_Sudowoodo[] = INCBIN_U8("graphics/pokemon/sudowoodo/icon.4bpp");
const u8 gMonFootprint_Sudowoodo[] = INCBIN_U8("graphics/pokemon/sudowoodo/footprint.1bpp");

const u32 gMonFrontPic_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/front.4bpp.lz");
const u32 gMonPalette_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/normal.gbapal.lz");
const u32 gMonBackPic_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/back.4bpp.lz");
const u32 gMonShinyPalette_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/shiny.gbapal.lz");
const u8 gMonIcon_Politoed[] = INCBIN_U8("graphics/pokemon/politoed/icon.4bpp");
const u8 gMonFootprint_Politoed[] = INCBIN_U8("graphics/pokemon/politoed/footprint.1bpp");

const u32 gMonFrontPic_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/front.4bpp.lz");
const u32 gMonPalette_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/normal.gbapal.lz");
const u32 gMonBackPic_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/back.4bpp.lz");
const u32 gMonShinyPalette_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/shiny.gbapal.lz");
const u8 gMonIcon_Hoppip[] = INCBIN_U8("graphics/pokemon/hoppip/icon.4bpp");
const u8 gMonFootprint_Hoppip[] = INCBIN_U8("graphics/pokemon/hoppip/footprint.1bpp");

const u32 gMonFrontPic_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/front.4bpp.lz");
const u32 gMonPalette_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/normal.gbapal.lz");
const u32 gMonBackPic_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/back.4bpp.lz");
const u32 gMonShinyPalette_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/shiny.gbapal.lz");
const u8 gMonIcon_Skiploom[] = INCBIN_U8("graphics/pokemon/skiploom/icon.4bpp");
const u8 gMonFootprint_Skiploom[] = INCBIN_U8("graphics/pokemon/skiploom/footprint.1bpp");

const u32 gMonFrontPic_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/front.4bpp.lz");
const u32 gMonPalette_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/normal.gbapal.lz");
const u32 gMonBackPic_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/back.4bpp.lz");
const u32 gMonShinyPalette_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/shiny.gbapal.lz");
const u8 gMonIcon_Jumpluff[] = INCBIN_U8("graphics/pokemon/jumpluff/icon.4bpp");
const u8 gMonFootprint_Jumpluff[] = INCBIN_U8("graphics/pokemon/jumpluff/footprint.1bpp");

const u32 gMonFrontPic_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/front.4bpp.lz");
const u32 gMonPalette_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/normal.gbapal.lz");
const u32 gMonBackPic_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/back.4bpp.lz");
const u32 gMonShinyPalette_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/shiny.gbapal.lz");
const u8 gMonIcon_Aipom[] = INCBIN_U8("graphics/pokemon/aipom/icon.4bpp");
const u8 gMonFootprint_Aipom[] = INCBIN_U8("graphics/pokemon/aipom/footprint.1bpp");

const u32 gMonFrontPic_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/front.4bpp.lz");
const u32 gMonPalette_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/normal.gbapal.lz");
const u32 gMonBackPic_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/back.4bpp.lz");
const u32 gMonShinyPalette_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/shiny.gbapal.lz");
const u8 gMonIcon_Sunkern[] = INCBIN_U8("graphics/pokemon/sunkern/icon.4bpp");
const u8 gMonFootprint_Sunkern[] = INCBIN_U8("graphics/pokemon/sunkern/footprint.1bpp");

const u32 gMonFrontPic_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/front.4bpp.lz");
const u32 gMonPalette_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/normal.gbapal.lz");
const u32 gMonBackPic_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/back.4bpp.lz");
const u32 gMonShinyPalette_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/shiny.gbapal.lz");
const u8 gMonIcon_Sunflora[] = INCBIN_U8("graphics/pokemon/sunflora/icon.4bpp");
const u8 gMonFootprint_Sunflora[] = INCBIN_U8("graphics/pokemon/sunflora/footprint.1bpp");

const u32 gMonFrontPic_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/front.4bpp.lz");
const u32 gMonPalette_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/normal.gbapal.lz");
const u32 gMonBackPic_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/back.4bpp.lz");
const u32 gMonShinyPalette_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/shiny.gbapal.lz");
const u8 gMonIcon_Yanma[] = INCBIN_U8("graphics/pokemon/yanma/icon.4bpp");
const u8 gMonFootprint_Yanma[] = INCBIN_U8("graphics/pokemon/yanma/footprint.1bpp");

const u32 gMonFrontPic_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/front.4bpp.lz");
const u32 gMonPalette_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/normal.gbapal.lz");
const u32 gMonBackPic_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/back.4bpp.lz");
const u32 gMonShinyPalette_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/shiny.gbapal.lz");
const u8 gMonIcon_Wooper[] = INCBIN_U8("graphics/pokemon/wooper/icon.4bpp");
const u8 gMonFootprint_Wooper[] = INCBIN_U8("graphics/pokemon/wooper/footprint.1bpp");

const u32 gMonFrontPic_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/front.4bpp.lz");
const u32 gMonPalette_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/normal.gbapal.lz");
const u32 gMonBackPic_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/back.4bpp.lz");
const u32 gMonShinyPalette_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/shiny.gbapal.lz");
const u8 gMonIcon_Quagsire[] = INCBIN_U8("graphics/pokemon/quagsire/icon.4bpp");
const u8 gMonFootprint_Quagsire[] = INCBIN_U8("graphics/pokemon/quagsire/footprint.1bpp");

const u32 gMonFrontPic_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/front.4bpp.lz");
const u32 gMonPalette_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/normal.gbapal.lz");
const u32 gMonBackPic_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/back.4bpp.lz");
const u32 gMonShinyPalette_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/shiny.gbapal.lz");
const u8 gMonIcon_Espeon[] = INCBIN_U8("graphics/pokemon/espeon/icon.4bpp");
const u8 gMonFootprint_Espeon[] = INCBIN_U8("graphics/pokemon/espeon/footprint.1bpp");

const u32 gMonFrontPic_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/front.4bpp.lz");
const u32 gMonPalette_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/normal.gbapal.lz");
const u32 gMonBackPic_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/back.4bpp.lz");
const u32 gMonShinyPalette_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/shiny.gbapal.lz");
const u8 gMonIcon_Umbreon[] = INCBIN_U8("graphics/pokemon/umbreon/icon.4bpp");
const u8 gMonFootprint_Umbreon[] = INCBIN_U8("graphics/pokemon/umbreon/footprint.1bpp");

const u32 gMonFrontPic_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/front.4bpp.lz");
const u32 gMonPalette_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/normal.gbapal.lz");
const u32 gMonBackPic_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/back.4bpp.lz");
const u32 gMonShinyPalette_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/shiny.gbapal.lz");
const u8 gMonIcon_Murkrow[] = INCBIN_U8("graphics/pokemon/murkrow/icon.4bpp");
const u8 gMonFootprint_Murkrow[] = INCBIN_U8("graphics/pokemon/murkrow/footprint.1bpp");

const u32 gMonFrontPic_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/front.4bpp.lz");
const u32 gMonPalette_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/normal.gbapal.lz");
const u32 gMonBackPic_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/back.4bpp.lz");
const u32 gMonShinyPalette_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/shiny.gbapal.lz");
const u8 gMonIcon_Slowking[] = INCBIN_U8("graphics/pokemon/slowking/icon.4bpp");
const u8 gMonFootprint_Slowking[] = INCBIN_U8("graphics/pokemon/slowking/footprint.1bpp");

const u32 gMonFrontPic_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/front.4bpp.lz");
const u32 gMonPalette_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/normal.gbapal.lz");
const u32 gMonBackPic_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/back.4bpp.lz");
const u32 gMonShinyPalette_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/shiny.gbapal.lz");
const u8 gMonIcon_Misdreavus[] = INCBIN_U8("graphics/pokemon/misdreavus/icon.4bpp");
const u8 gMonFootprint_Misdreavus[] = INCBIN_U8("graphics/pokemon/misdreavus/footprint.1bpp");

const u32 gMonFrontPic_UnownA[] = INCBIN_U32("graphics/pokemon/unown/a/front.4bpp.lz");
const u32 gMonPalette_Unown[] = INCBIN_U32("graphics/pokemon/unown/normal.gbapal.lz");
const u32 gMonBackPic_UnownA[] = INCBIN_U32("graphics/pokemon/unown/a/back.4bpp.lz");
const u32 gMonShinyPalette_Unown[] = INCBIN_U32("graphics/pokemon/unown/shiny.gbapal.lz");
const u8 gMonIcon_UnownA[] = INCBIN_U8("graphics/pokemon/unown/a/icon.4bpp");
const u8 gMonFootprint_Unown[] = INCBIN_U8("graphics/pokemon/unown/footprint.1bpp");

const u32 gMonFrontPic_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/front.4bpp.lz");
const u32 gMonPalette_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/normal.gbapal.lz");
const u32 gMonBackPic_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/back.4bpp.lz");
const u32 gMonShinyPalette_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/shiny.gbapal.lz");
const u8 gMonIcon_Wobbuffet[] = INCBIN_U8("graphics/pokemon/wobbuffet/icon.4bpp");
const u8 gMonFootprint_Wobbuffet[] = INCBIN_U8("graphics/pokemon/wobbuffet/footprint.1bpp");

const u32 gMonFrontPic_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/front.4bpp.lz");
const u32 gMonPalette_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/normal.gbapal.lz");
const u32 gMonBackPic_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/back.4bpp.lz");
const u32 gMonShinyPalette_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/shiny.gbapal.lz");
const u8 gMonIcon_Girafarig[] = INCBIN_U8("graphics/pokemon/girafarig/icon.4bpp");
const u8 gMonFootprint_Girafarig[] = INCBIN_U8("graphics/pokemon/girafarig/footprint.1bpp");

const u32 gMonFrontPic_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/front.4bpp.lz");
const u32 gMonPalette_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/normal.gbapal.lz");
const u32 gMonBackPic_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/back.4bpp.lz");
const u32 gMonShinyPalette_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/shiny.gbapal.lz");
const u8 gMonIcon_Pineco[] = INCBIN_U8("graphics/pokemon/pineco/icon.4bpp");
const u8 gMonFootprint_Pineco[] = INCBIN_U8("graphics/pokemon/pineco/footprint.1bpp");

const u32 gMonFrontPic_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/front.4bpp.lz");
const u32 gMonPalette_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/normal.gbapal.lz");
const u32 gMonBackPic_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/back.4bpp.lz");
const u32 gMonShinyPalette_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/shiny.gbapal.lz");
const u8 gMonIcon_Forretress[] = INCBIN_U8("graphics/pokemon/forretress/icon.4bpp");
const u8 gMonFootprint_Forretress[] = INCBIN_U8("graphics/pokemon/forretress/footprint.1bpp");

const u32 gMonFrontPic_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/front.4bpp.lz");
const u32 gMonPalette_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/normal.gbapal.lz");
const u32 gMonBackPic_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/back.4bpp.lz");
const u32 gMonShinyPalette_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/shiny.gbapal.lz");
const u8 gMonIcon_Dunsparce[] = INCBIN_U8("graphics/pokemon/dunsparce/icon.4bpp");
const u8 gMonFootprint_Dunsparce[] = INCBIN_U8("graphics/pokemon/dunsparce/footprint.1bpp");

const u32 gMonFrontPic_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/front.4bpp.lz");
const u32 gMonPalette_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/normal.gbapal.lz");
const u32 gMonBackPic_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/back.4bpp.lz");
const u32 gMonShinyPalette_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/shiny.gbapal.lz");
const u8 gMonIcon_Gligar[] = INCBIN_U8("graphics/pokemon/gligar/icon.4bpp");
const u8 gMonFootprint_Gligar[] = INCBIN_U8("graphics/pokemon/gligar/footprint.1bpp");

const u32 gMonFrontPic_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/front.4bpp.lz");
const u32 gMonPalette_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/normal.gbapal.lz");
const u32 gMonBackPic_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/back.4bpp.lz");
const u32 gMonShinyPalette_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/shiny.gbapal.lz");
const u8 gMonIcon_Steelix[] = INCBIN_U8("graphics/pokemon/steelix/icon.4bpp");
const u8 gMonFootprint_Steelix[] = INCBIN_U8("graphics/pokemon/steelix/footprint.1bpp");

const u32 gMonFrontPic_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/front.4bpp.lz");
const u32 gMonPalette_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/normal.gbapal.lz");
const u32 gMonBackPic_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/back.4bpp.lz");
const u32 gMonShinyPalette_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/shiny.gbapal.lz");
const u8 gMonIcon_Snubbull[] = INCBIN_U8("graphics/pokemon/snubbull/icon.4bpp");
const u8 gMonFootprint_Snubbull[] = INCBIN_U8("graphics/pokemon/snubbull/footprint.1bpp");

const u32 gMonFrontPic_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/front.4bpp.lz");
const u32 gMonPalette_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/normal.gbapal.lz");
const u32 gMonBackPic_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/back.4bpp.lz");
const u32 gMonShinyPalette_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/shiny.gbapal.lz");
const u8 gMonIcon_Granbull[] = INCBIN_U8("graphics/pokemon/granbull/icon.4bpp");
const u8 gMonFootprint_Granbull[] = INCBIN_U8("graphics/pokemon/granbull/footprint.1bpp");

const u32 gMonFrontPic_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/front.4bpp.lz");
const u32 gMonPalette_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/normal.gbapal.lz");
const u32 gMonBackPic_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/back.4bpp.lz");
const u32 gMonShinyPalette_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/shiny.gbapal.lz");
const u8 gMonIcon_Qwilfish[] = INCBIN_U8("graphics/pokemon/qwilfish/icon.4bpp");
const u8 gMonFootprint_Qwilfish[] = INCBIN_U8("graphics/pokemon/qwilfish/footprint.1bpp");

const u32 gMonFrontPic_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/front.4bpp.lz");
const u32 gMonPalette_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/normal.gbapal.lz");
const u32 gMonBackPic_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/back.4bpp.lz");
const u32 gMonShinyPalette_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/shiny.gbapal.lz");
const u8 gMonIcon_Scizor[] = INCBIN_U8("graphics/pokemon/scizor/icon.4bpp");
const u8 gMonFootprint_Scizor[] = INCBIN_U8("graphics/pokemon/scizor/footprint.1bpp");

const u32 gMonFrontPic_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/front.4bpp.lz");
const u32 gMonPalette_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/normal.gbapal.lz");
const u32 gMonBackPic_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/back.4bpp.lz");
const u32 gMonShinyPalette_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/shiny.gbapal.lz");
const u8 gMonIcon_Shuckle[] = INCBIN_U8("graphics/pokemon/shuckle/icon.4bpp");
const u8 gMonFootprint_Shuckle[] = INCBIN_U8("graphics/pokemon/shuckle/footprint.1bpp");

const u32 gMonFrontPic_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/front.4bpp.lz");
const u32 gMonPalette_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/normal.gbapal.lz");
const u32 gMonBackPic_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/back.4bpp.lz");
const u32 gMonShinyPalette_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/shiny.gbapal.lz");
const u8 gMonIcon_Heracross[] = INCBIN_U8("graphics/pokemon/heracross/icon.4bpp");
const u8 gUnknown_heracross_icon[] = INCBIN_U8("graphics/pokemon/heracross/unk_icon.4bpp");
const u8 gMonFootprint_Heracross[] = INCBIN_U8("graphics/pokemon/heracross/footprint.1bpp");

const u32 gMonFrontPic_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/front.4bpp.lz");
const u32 gMonPalette_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/normal.gbapal.lz");
const u32 gMonBackPic_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/back.4bpp.lz");
const u32 gMonShinyPalette_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/shiny.gbapal.lz");
const u8 gMonIcon_Sneasel[] = INCBIN_U8("graphics/pokemon/sneasel/icon.4bpp");
const u8 gMonFootprint_Sneasel[] = INCBIN_U8("graphics/pokemon/sneasel/footprint.1bpp");

const u32 gMonFrontPic_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/front.4bpp.lz");
const u32 gMonPalette_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/normal.gbapal.lz");
const u32 gMonBackPic_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/back.4bpp.lz");
const u32 gMonShinyPalette_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/shiny.gbapal.lz");
const u8 gMonIcon_Teddiursa[] = INCBIN_U8("graphics/pokemon/teddiursa/icon.4bpp");
const u8 gMonFootprint_Teddiursa[] = INCBIN_U8("graphics/pokemon/teddiursa/footprint.1bpp");

const u32 gMonFrontPic_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/front.4bpp.lz");
const u32 gMonPalette_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/normal.gbapal.lz");
const u32 gMonBackPic_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/back.4bpp.lz");
const u32 gMonShinyPalette_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/shiny.gbapal.lz");
const u8 gMonIcon_Ursaring[] = INCBIN_U8("graphics/pokemon/ursaring/icon.4bpp");
const u8 gMonFootprint_Ursaring[] = INCBIN_U8("graphics/pokemon/ursaring/footprint.1bpp");

const u32 gMonFrontPic_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/front.4bpp.lz");
const u32 gMonPalette_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/normal.gbapal.lz");
const u32 gMonBackPic_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/back.4bpp.lz");
const u32 gMonShinyPalette_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/shiny.gbapal.lz");
const u8 gMonIcon_Slugma[] = INCBIN_U8("graphics/pokemon/slugma/icon.4bpp");
const u8 gMonFootprint_Slugma[] = INCBIN_U8("graphics/pokemon/slugma/footprint.1bpp");

const u32 gMonFrontPic_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/front.4bpp.lz");
const u32 gMonPalette_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/normal.gbapal.lz");
const u32 gMonBackPic_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/back.4bpp.lz");
const u32 gMonShinyPalette_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/shiny.gbapal.lz");
const u8 gMonIcon_Magcargo[] = INCBIN_U8("graphics/pokemon/magcargo/icon.4bpp");
const u8 gMonFootprint_Magcargo[] = INCBIN_U8("graphics/pokemon/magcargo/footprint.1bpp");

const u32 gMonFrontPic_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/front.4bpp.lz");
const u32 gMonPalette_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/normal.gbapal.lz");
const u32 gMonBackPic_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/back.4bpp.lz");
const u32 gMonShinyPalette_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/shiny.gbapal.lz");
const u8 gMonIcon_Swinub[] = INCBIN_U8("graphics/pokemon/swinub/icon.4bpp");
const u8 gMonFootprint_Swinub[] = INCBIN_U8("graphics/pokemon/swinub/footprint.1bpp");

const u32 gMonFrontPic_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/front.4bpp.lz");
const u32 gMonPalette_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/normal.gbapal.lz");
const u32 gMonBackPic_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/back.4bpp.lz");
const u32 gMonShinyPalette_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/shiny.gbapal.lz");
const u8 gMonIcon_Piloswine[] = INCBIN_U8("graphics/pokemon/piloswine/icon.4bpp");
const u8 gMonFootprint_Piloswine[] = INCBIN_U8("graphics/pokemon/piloswine/footprint.1bpp");

const u32 gMonFrontPic_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/front.4bpp.lz");
const u32 gMonPalette_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/normal.gbapal.lz");
const u32 gMonBackPic_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/back.4bpp.lz");
const u32 gMonShinyPalette_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/shiny.gbapal.lz");
const u8 gMonIcon_Corsola[] = INCBIN_U8("graphics/pokemon/corsola/icon.4bpp");
const u8 gMonFootprint_Corsola[] = INCBIN_U8("graphics/pokemon/corsola/footprint.1bpp");

const u32 gMonFrontPic_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/front.4bpp.lz");
const u32 gMonPalette_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/normal.gbapal.lz");
const u32 gMonBackPic_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/back.4bpp.lz");
const u32 gMonShinyPalette_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/shiny.gbapal.lz");
const u8 gMonIcon_Remoraid[] = INCBIN_U8("graphics/pokemon/remoraid/icon.4bpp");
const u8 gMonFootprint_Remoraid[] = INCBIN_U8("graphics/pokemon/remoraid/footprint.1bpp");

const u32 gMonFrontPic_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/front.4bpp.lz");
const u32 gMonPalette_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/normal.gbapal.lz");
const u32 gMonBackPic_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/back.4bpp.lz");
const u32 gMonShinyPalette_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/shiny.gbapal.lz");
const u8 gMonIcon_Octillery[] = INCBIN_U8("graphics/pokemon/octillery/icon.4bpp");
const u8 gMonFootprint_Octillery[] = INCBIN_U8("graphics/pokemon/octillery/footprint.1bpp");

const u32 gMonFrontPic_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/front.4bpp.lz");
const u32 gMonPalette_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/normal.gbapal.lz");
const u32 gMonBackPic_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/back.4bpp.lz");
const u32 gMonShinyPalette_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/shiny.gbapal.lz");
const u8 gMonIcon_Delibird[] = INCBIN_U8("graphics/pokemon/delibird/icon.4bpp");
const u8 gMonFootprint_Delibird[] = INCBIN_U8("graphics/pokemon/delibird/footprint.1bpp");

const u32 gMonFrontPic_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/front.4bpp.lz");
const u32 gMonPalette_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/normal.gbapal.lz");
const u32 gMonBackPic_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/back.4bpp.lz");
const u32 gMonShinyPalette_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/shiny.gbapal.lz");
const u8 gMonIcon_Mantine[] = INCBIN_U8("graphics/pokemon/mantine/icon.4bpp");
const u8 gMonFootprint_Mantine[] = INCBIN_U8("graphics/pokemon/mantine/footprint.1bpp");

const u32 gMonFrontPic_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/front.4bpp.lz");
const u32 gMonPalette_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/normal.gbapal.lz");
const u32 gMonBackPic_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/back.4bpp.lz");
const u32 gMonShinyPalette_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/shiny.gbapal.lz");
const u8 gMonIcon_Skarmory[] = INCBIN_U8("graphics/pokemon/skarmory/icon.4bpp");
const u8 gMonFootprint_Skarmory[] = INCBIN_U8("graphics/pokemon/skarmory/footprint.1bpp");

const u32 gMonFrontPic_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/front.4bpp.lz");
const u32 gMonPalette_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/normal.gbapal.lz");
const u32 gMonBackPic_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/back.4bpp.lz");
const u32 gMonShinyPalette_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/shiny.gbapal.lz");
const u8 gMonIcon_Houndour[] = INCBIN_U8("graphics/pokemon/houndour/icon.4bpp");
const u8 gMonFootprint_Houndour[] = INCBIN_U8("graphics/pokemon/houndour/footprint.1bpp");

const u32 gMonFrontPic_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/front.4bpp.lz");
const u32 gMonPalette_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/normal.gbapal.lz");
const u32 gMonBackPic_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/back.4bpp.lz");
const u32 gMonShinyPalette_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/shiny.gbapal.lz");
const u8 gMonIcon_Houndoom[] = INCBIN_U8("graphics/pokemon/houndoom/icon.4bpp");
const u8 gMonFootprint_Houndoom[] = INCBIN_U8("graphics/pokemon/houndoom/footprint.1bpp");

const u32 gMonFrontPic_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/front.4bpp.lz");
const u32 gMonPalette_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/normal.gbapal.lz");
const u32 gMonBackPic_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/back.4bpp.lz");
const u32 gMonShinyPalette_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/shiny.gbapal.lz");
const u8 gMonIcon_Kingdra[] = INCBIN_U8("graphics/pokemon/kingdra/icon.4bpp");
const u8 gMonFootprint_Kingdra[] = INCBIN_U8("graphics/pokemon/kingdra/footprint.1bpp");

const u32 gMonFrontPic_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/front.4bpp.lz");
const u32 gMonPalette_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/normal.gbapal.lz");
const u32 gMonBackPic_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/back.4bpp.lz");
const u32 gMonShinyPalette_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/shiny.gbapal.lz");
const u8 gMonIcon_Phanpy[] = INCBIN_U8("graphics/pokemon/phanpy/icon.4bpp");
const u8 gMonFootprint_Phanpy[] = INCBIN_U8("graphics/pokemon/phanpy/footprint.1bpp");

const u32 gMonFrontPic_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/front.4bpp.lz");
const u32 gMonPalette_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/normal.gbapal.lz");
const u32 gMonBackPic_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/back.4bpp.lz");
const u32 gMonShinyPalette_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/shiny.gbapal.lz");
const u8 gMonIcon_Donphan[] = INCBIN_U8("graphics/pokemon/donphan/icon.4bpp");
const u8 gMonFootprint_Donphan[] = INCBIN_U8("graphics/pokemon/donphan/footprint.1bpp");

const u32 gMonFrontPic_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/front.4bpp.lz");
const u32 gMonPalette_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/normal.gbapal.lz");
const u32 gMonBackPic_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/back.4bpp.lz");
const u32 gMonShinyPalette_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/shiny.gbapal.lz");
const u8 gMonIcon_Porygon2[] = INCBIN_U8("graphics/pokemon/porygon2/icon.4bpp");
const u8 gMonFootprint_Porygon2[] = INCBIN_U8("graphics/pokemon/porygon2/footprint.1bpp");

const u32 gMonFrontPic_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/front.4bpp.lz");
const u32 gMonPalette_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/normal.gbapal.lz");
const u32 gMonBackPic_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/back.4bpp.lz");
const u32 gMonShinyPalette_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/shiny.gbapal.lz");
const u8 gMonIcon_Stantler[] = INCBIN_U8("graphics/pokemon/stantler/icon.4bpp");
const u8 gMonFootprint_Stantler[] = INCBIN_U8("graphics/pokemon/stantler/footprint.1bpp");

const u32 gMonFrontPic_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/front.4bpp.lz");
const u32 gMonPalette_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/normal.gbapal.lz");
const u32 gMonBackPic_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/back.4bpp.lz");
const u32 gMonShinyPalette_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/shiny.gbapal.lz");
const u8 gMonIcon_Smeargle[] = INCBIN_U8("graphics/pokemon/smeargle/icon.4bpp");
const u8 gMonFootprint_Smeargle[] = INCBIN_U8("graphics/pokemon/smeargle/footprint.1bpp");

const u32 gMonFrontPic_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/front.4bpp.lz");
const u32 gMonPalette_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/normal.gbapal.lz");
const u32 gMonBackPic_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/back.4bpp.lz");
const u32 gMonShinyPalette_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/shiny.gbapal.lz");
const u8 gMonIcon_Tyrogue[] = INCBIN_U8("graphics/pokemon/tyrogue/icon.4bpp");
const u8 gMonFootprint_Tyrogue[] = INCBIN_U8("graphics/pokemon/tyrogue/footprint.1bpp");

const u32 gMonFrontPic_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/front.4bpp.lz");
const u32 gMonPalette_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/normal.gbapal.lz");
const u32 gMonBackPic_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/back.4bpp.lz");
const u32 gMonShinyPalette_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/shiny.gbapal.lz");
const u8 gMonIcon_Hitmontop[] = INCBIN_U8("graphics/pokemon/hitmontop/icon.4bpp");


const u32 gUnusedGarbage[] = INCBIN_U32("graphics/pokemon/hitmontop/unused_garbage.bin");

const u8 gMonFootprint_Hitmontop[] = INCBIN_U8("graphics/pokemon/hitmontop/footprint.1bpp");

const u32 gMonFrontPic_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/front.4bpp.lz");
const u32 gMonPalette_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/normal.gbapal.lz");
const u32 gMonBackPic_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/back.4bpp.lz");
const u32 gMonShinyPalette_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/shiny.gbapal.lz");
const u8 gMonIcon_Smoochum[] = INCBIN_U8("graphics/pokemon/smoochum/icon.4bpp");
const u8 gMonFootprint_Smoochum[] = INCBIN_U8("graphics/pokemon/smoochum/footprint.1bpp");

const u32 gMonFrontPic_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/front.4bpp.lz");
const u32 gMonPalette_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/normal.gbapal.lz");
const u32 gMonBackPic_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/back.4bpp.lz");
const u32 gMonShinyPalette_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/shiny.gbapal.lz");
const u8 gMonIcon_Elekid[] = INCBIN_U8("graphics/pokemon/elekid/icon.4bpp");
const u8 gMonFootprint_Elekid[] = INCBIN_U8("graphics/pokemon/elekid/footprint.1bpp");

const u32 gMonFrontPic_Magby[] = INCBIN_U32("graphics/pokemon/magby/front.4bpp.lz");
const u32 gMonPalette_Magby[] = INCBIN_U32("graphics/pokemon/magby/normal.gbapal.lz");
const u32 gMonBackPic_Magby[] = INCBIN_U32("graphics/pokemon/magby/back.4bpp.lz");
const u32 gMonShinyPalette_Magby[] = INCBIN_U32("graphics/pokemon/magby/shiny.gbapal.lz");
const u8 gMonIcon_Magby[] = INCBIN_U8("graphics/pokemon/magby/icon.4bpp");
const u8 gMonFootprint_Magby[] = INCBIN_U8("graphics/pokemon/magby/footprint.1bpp");

const u32 gMonFrontPic_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/front.4bpp.lz");
const u32 gMonPalette_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/normal.gbapal.lz");
const u32 gMonBackPic_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/back.4bpp.lz");
const u32 gMonShinyPalette_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/shiny.gbapal.lz");
const u8 gMonIcon_Miltank[] = INCBIN_U8("graphics/pokemon/miltank/icon.4bpp");
const u8 gMonFootprint_Miltank[] = INCBIN_U8("graphics/pokemon/miltank/footprint.1bpp");

const u32 gMonFrontPic_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/front.4bpp.lz");
const u32 gMonPalette_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/normal.gbapal.lz");
const u32 gMonBackPic_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/back.4bpp.lz");
const u32 gMonShinyPalette_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/shiny.gbapal.lz");
const u8 gMonIcon_Blissey[] = INCBIN_U8("graphics/pokemon/blissey/icon.4bpp");
const u8 gMonFootprint_Blissey[] = INCBIN_U8("graphics/pokemon/blissey/footprint.1bpp");

const u32 gMonFrontPic_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/front.4bpp.lz");
const u32 gMonPalette_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/normal.gbapal.lz");
const u32 gMonBackPic_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/back.4bpp.lz");
const u32 gMonShinyPalette_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/shiny.gbapal.lz");
const u8 gMonIcon_Raikou[] = INCBIN_U8("graphics/pokemon/raikou/icon.4bpp");
const u8 gMonFootprint_Raikou[] = INCBIN_U8("graphics/pokemon/raikou/footprint.1bpp");

const u32 gMonFrontPic_Entei[] = INCBIN_U32("graphics/pokemon/entei/front.4bpp.lz");
const u32 gMonPalette_Entei[] = INCBIN_U32("graphics/pokemon/entei/normal.gbapal.lz");
const u32 gMonBackPic_Entei[] = INCBIN_U32("graphics/pokemon/entei/back.4bpp.lz");
const u32 gMonShinyPalette_Entei[] = INCBIN_U32("graphics/pokemon/entei/shiny.gbapal.lz");
const u8 gMonIcon_Entei[] = INCBIN_U8("graphics/pokemon/entei/icon.4bpp");
const u8 gMonFootprint_Entei[] = INCBIN_U8("graphics/pokemon/entei/footprint.1bpp");

const u32 gMonFrontPic_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/front.4bpp.lz");
const u32 gMonPalette_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/normal.gbapal.lz");
const u32 gMonBackPic_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/back.4bpp.lz");
const u32 gMonShinyPalette_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/shiny.gbapal.lz");
const u8 gMonIcon_Suicune[] = INCBIN_U8("graphics/pokemon/suicune/icon.4bpp");
const u8 gMonFootprint_Suicune[] = INCBIN_U8("graphics/pokemon/suicune/footprint.1bpp");

const u32 gMonFrontPic_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/front.4bpp.lz");
const u32 gMonPalette_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/normal.gbapal.lz");
const u32 gMonBackPic_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/back.4bpp.lz");
const u32 gMonShinyPalette_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/shiny.gbapal.lz");
const u8 gMonIcon_Larvitar[] = INCBIN_U8("graphics/pokemon/larvitar/icon.4bpp");
const u8 gMonFootprint_Larvitar[] = INCBIN_U8("graphics/pokemon/larvitar/footprint.1bpp");

const u32 gMonFrontPic_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/front.4bpp.lz");
const u32 gMonPalette_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/normal.gbapal.lz");
const u32 gMonBackPic_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/back.4bpp.lz");
const u32 gMonShinyPalette_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/shiny.gbapal.lz");
const u8 gMonIcon_Pupitar[] = INCBIN_U8("graphics/pokemon/pupitar/icon.4bpp");
const u8 gMonFootprint_Pupitar[] = INCBIN_U8("graphics/pokemon/pupitar/footprint.1bpp");

const u32 gMonFrontPic_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/front.4bpp.lz");
const u32 gMonPalette_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/normal.gbapal.lz");
const u32 gMonBackPic_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/back.4bpp.lz");
const u32 gMonShinyPalette_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/shiny.gbapal.lz");
const u8 gMonIcon_Tyranitar[] = INCBIN_U8("graphics/pokemon/tyranitar/icon.4bpp");
const u8 gMonFootprint_Tyranitar[] = INCBIN_U8("graphics/pokemon/tyranitar/footprint.1bpp");

const u32 gMonFrontPic_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/front.4bpp.lz");
const u32 gMonPalette_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/normal.gbapal.lz");
const u32 gMonBackPic_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/back.4bpp.lz");
const u32 gMonShinyPalette_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/shiny.gbapal.lz");
const u8 gMonIcon_Lugia[] = INCBIN_U8("graphics/pokemon/lugia/icon.4bpp");
const u8 gMonFootprint_Lugia[] = INCBIN_U8("graphics/pokemon/lugia/footprint.1bpp");

const u32 gMonFrontPic_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/front.4bpp.lz");
const u32 gMonPalette_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/normal.gbapal.lz");
const u32 gMonBackPic_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/back.4bpp.lz");
const u32 gMonShinyPalette_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/shiny.gbapal.lz");
const u8 gMonIcon_HoOh[] = INCBIN_U8("graphics/pokemon/ho_oh/icon.4bpp");
const u8 gMonFootprint_HoOh[] = INCBIN_U8("graphics/pokemon/ho_oh/footprint.1bpp");

const u32 gMonFrontPic_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/front.4bpp.lz");
const u32 gMonPalette_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/normal.gbapal.lz");
const u32 gMonBackPic_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/back.4bpp.lz");
const u32 gMonShinyPalette_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/shiny.gbapal.lz");
const u8 gMonIcon_Celebi[] = INCBIN_U8("graphics/pokemon/celebi/icon.4bpp");
const u8 gMonFootprint_Celebi[] = INCBIN_U8("graphics/pokemon/celebi/footprint.1bpp");

const u32 gMonFrontPic_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/front.4bpp.lz");
const u32 gMonPalette_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/normal.gbapal.lz");
const u32 gMonBackPic_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/back.4bpp.lz");
const u32 gMonShinyPalette_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/shiny.gbapal.lz");

const u32 gMonFrontPic_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/front.4bpp.lz");
const u32 gMonPalette_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/normal.gbapal.lz");
const u32 gMonBackPic_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/back.4bpp.lz");
const u32 gMonShinyPalette_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/shiny.gbapal.lz");
const u8 gMonIcon_Treecko[] = INCBIN_U8("graphics/pokemon/treecko/icon.4bpp");
const u8 gMonFootprint_Treecko[] = INCBIN_U8("graphics/pokemon/treecko/footprint.1bpp");

const u32 gMonFrontPic_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/front.4bpp.lz");
const u32 gMonPalette_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/normal.gbapal.lz");
const u32 gMonBackPic_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/back.4bpp.lz");
const u32 gMonShinyPalette_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/shiny.gbapal.lz");
const u8 gMonIcon_Grovyle[] = INCBIN_U8("graphics/pokemon/grovyle/icon.4bpp");
const u8 gMonFootprint_Grovyle[] = INCBIN_U8("graphics/pokemon/grovyle/footprint.1bpp");

const u32 gMonFrontPic_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/front.4bpp.lz");
const u32 gMonPalette_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/normal.gbapal.lz");
const u32 gMonBackPic_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/back.4bpp.lz");
const u32 gMonShinyPalette_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/shiny.gbapal.lz");
const u8 gMonIcon_Sceptile[] = INCBIN_U8("graphics/pokemon/sceptile/icon.4bpp");
const u8 gMonFootprint_Sceptile[] = INCBIN_U8("graphics/pokemon/sceptile/footprint.1bpp");

const u32 gMonFrontPic_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/front.4bpp.lz");
const u32 gMonPalette_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/normal.gbapal.lz");
const u32 gMonBackPic_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/back.4bpp.lz");
const u32 gMonShinyPalette_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/shiny.gbapal.lz");
const u8 gMonIcon_Torchic[] = INCBIN_U8("graphics/pokemon/torchic/icon.4bpp");
const u8 gMonFootprint_Torchic[] = INCBIN_U8("graphics/pokemon/torchic/footprint.1bpp");

const u32 gMonFrontPic_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/front.4bpp.lz");
const u32 gMonPalette_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/normal.gbapal.lz");
const u32 gMonBackPic_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/back.4bpp.lz");
const u32 gMonShinyPalette_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/shiny.gbapal.lz");
const u8 gMonIcon_Combusken[] = INCBIN_U8("graphics/pokemon/combusken/icon.4bpp");
const u8 gMonFootprint_Combusken[] = INCBIN_U8("graphics/pokemon/combusken/footprint.1bpp");

const u32 gMonFrontPic_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/front.4bpp.lz");
const u32 gMonPalette_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/normal.gbapal.lz");
const u32 gMonBackPic_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/back.4bpp.lz");
const u32 gMonShinyPalette_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/shiny.gbapal.lz");
const u8 gMonIcon_Blaziken[] = INCBIN_U8("graphics/pokemon/blaziken/icon.4bpp");
const u8 gMonFootprint_Blaziken[] = INCBIN_U8("graphics/pokemon/blaziken/footprint.1bpp");

const u32 gMonFrontPic_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/front.4bpp.lz");
const u32 gMonPalette_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/normal.gbapal.lz");
const u32 gMonBackPic_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/back.4bpp.lz");
const u32 gMonShinyPalette_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/shiny.gbapal.lz");
const u8 gMonIcon_Mudkip[] = INCBIN_U8("graphics/pokemon/mudkip/icon.4bpp");
const u8 gMonFootprint_Mudkip[] = INCBIN_U8("graphics/pokemon/mudkip/footprint.1bpp");

const u32 gMonFrontPic_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/front.4bpp.lz");
const u32 gMonPalette_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/normal.gbapal.lz");
const u32 gMonBackPic_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/back.4bpp.lz");
const u32 gMonShinyPalette_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/shiny.gbapal.lz");
const u8 gMonIcon_Marshtomp[] = INCBIN_U8("graphics/pokemon/marshtomp/icon.4bpp");
const u8 gMonFootprint_Marshtomp[] = INCBIN_U8("graphics/pokemon/marshtomp/footprint.1bpp");

const u32 gMonFrontPic_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/front.4bpp.lz");
const u32 gMonPalette_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/normal.gbapal.lz");
const u32 gMonBackPic_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/back.4bpp.lz");
const u32 gMonShinyPalette_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/shiny.gbapal.lz");
const u8 gMonIcon_Swampert[] = INCBIN_U8("graphics/pokemon/swampert/icon.4bpp");
const u8 gMonFootprint_Swampert[] = INCBIN_U8("graphics/pokemon/swampert/footprint.1bpp");

const u32 gMonFrontPic_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/front.4bpp.lz");
const u32 gMonPalette_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/normal.gbapal.lz");
const u32 gMonBackPic_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/back.4bpp.lz");
const u32 gMonShinyPalette_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/shiny.gbapal.lz");
const u8 gMonIcon_Poochyena[] = INCBIN_U8("graphics/pokemon/poochyena/icon.4bpp");
const u8 gMonFootprint_Poochyena[] = INCBIN_U8("graphics/pokemon/poochyena/footprint.1bpp");

const u32 gMonFrontPic_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/front.4bpp.lz");
const u32 gMonPalette_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/normal.gbapal.lz");
const u32 gMonBackPic_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/back.4bpp.lz");
const u32 gMonShinyPalette_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/shiny.gbapal.lz");
const u8 gMonIcon_Mightyena[] = INCBIN_U8("graphics/pokemon/mightyena/icon.4bpp");
const u8 gMonFootprint_Mightyena[] = INCBIN_U8("graphics/pokemon/mightyena/footprint.1bpp");

const u32 gMonFrontPic_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/front.4bpp.lz");
const u32 gMonPalette_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/normal.gbapal.lz");
const u32 gMonBackPic_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/back.4bpp.lz");
const u32 gMonShinyPalette_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/shiny.gbapal.lz");
const u8 gMonIcon_Zigzagoon[] = INCBIN_U8("graphics/pokemon/zigzagoon/icon.4bpp");
const u8 gMonFootprint_Zigzagoon[] = INCBIN_U8("graphics/pokemon/zigzagoon/footprint.1bpp");

const u32 gMonFrontPic_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/front.4bpp.lz");
const u32 gMonPalette_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/normal.gbapal.lz");
const u32 gMonBackPic_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/back.4bpp.lz");
const u32 gMonShinyPalette_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/shiny.gbapal.lz");
const u8 gMonIcon_Linoone[] = INCBIN_U8("graphics/pokemon/linoone/icon.4bpp");
const u8 gMonFootprint_Linoone[] = INCBIN_U8("graphics/pokemon/linoone/footprint.1bpp");

const u32 gMonFrontPic_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/front.4bpp.lz");
const u32 gMonPalette_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/normal.gbapal.lz");
const u32 gMonBackPic_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/back.4bpp.lz");
const u32 gMonShinyPalette_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/shiny.gbapal.lz");
const u8 gMonIcon_Wurmple[] = INCBIN_U8("graphics/pokemon/wurmple/icon.4bpp");
const u8 gMonFootprint_Wurmple[] = INCBIN_U8("graphics/pokemon/wurmple/footprint.1bpp");

const u32 gMonFrontPic_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/front.4bpp.lz");
const u32 gMonPalette_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/normal.gbapal.lz");
const u32 gMonBackPic_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/back.4bpp.lz");
const u32 gMonShinyPalette_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/shiny.gbapal.lz");
const u8 gMonIcon_Silcoon[] = INCBIN_U8("graphics/pokemon/silcoon/icon.4bpp");
const u8 gMonFootprint_Silcoon[] = INCBIN_U8("graphics/pokemon/silcoon/footprint.1bpp");

const u32 gMonFrontPic_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/front.4bpp.lz");
const u32 gMonPalette_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/normal.gbapal.lz");
const u32 gMonBackPic_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/back.4bpp.lz");
const u32 gMonShinyPalette_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/shiny.gbapal.lz");
const u8 gMonIcon_Beautifly[] = INCBIN_U8("graphics/pokemon/beautifly/icon.4bpp");
const u8 gMonFootprint_Beautifly[] = INCBIN_U8("graphics/pokemon/beautifly/footprint.1bpp");

const u32 gMonFrontPic_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/front.4bpp.lz");
const u32 gMonPalette_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/normal.gbapal.lz");
const u32 gMonBackPic_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/back.4bpp.lz");
const u32 gMonShinyPalette_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/shiny.gbapal.lz");
const u8 gMonIcon_Cascoon[] = INCBIN_U8("graphics/pokemon/cascoon/icon.4bpp");
const u8 gMonFootprint_Cascoon[] = INCBIN_U8("graphics/pokemon/cascoon/footprint.1bpp");

const u32 gMonFrontPic_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/front.4bpp.lz");
const u32 gMonPalette_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/normal.gbapal.lz");
const u32 gMonBackPic_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/back.4bpp.lz");
const u32 gMonShinyPalette_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/shiny.gbapal.lz");
const u8 gMonIcon_Dustox[] = INCBIN_U8("graphics/pokemon/dustox/icon.4bpp");
const u8 gMonFootprint_Dustox[] = INCBIN_U8("graphics/pokemon/dustox/footprint.1bpp");

const u32 gMonFrontPic_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/front.4bpp.lz");
const u32 gMonPalette_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/normal.gbapal.lz");
const u32 gMonBackPic_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/back.4bpp.lz");
const u32 gMonShinyPalette_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/shiny.gbapal.lz");
const u8 gMonIcon_Lotad[] = INCBIN_U8("graphics/pokemon/lotad/icon.4bpp");
const u8 gMonFootprint_Lotad[] = INCBIN_U8("graphics/pokemon/lotad/footprint.1bpp");

const u32 gMonFrontPic_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/front.4bpp.lz");
const u32 gMonPalette_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/normal.gbapal.lz");
const u32 gMonBackPic_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/back.4bpp.lz");
const u32 gMonShinyPalette_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/shiny.gbapal.lz");
const u8 gMonIcon_Lombre[] = INCBIN_U8("graphics/pokemon/lombre/icon.4bpp");
const u8 gMonFootprint_Lombre[] = INCBIN_U8("graphics/pokemon/lombre/footprint.1bpp");

const u32 gMonFrontPic_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/front.4bpp.lz");
const u32 gMonPalette_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/normal.gbapal.lz");
const u32 gMonBackPic_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/back.4bpp.lz");
const u32 gMonShinyPalette_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/shiny.gbapal.lz");
const u8 gMonIcon_Ludicolo[] = INCBIN_U8("graphics/pokemon/ludicolo/icon.4bpp");
const u8 gMonFootprint_Ludicolo[] = INCBIN_U8("graphics/pokemon/ludicolo/footprint.1bpp");

const u32 gMonFrontPic_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/front.4bpp.lz");
const u32 gMonPalette_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/normal.gbapal.lz");
const u32 gMonBackPic_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/back.4bpp.lz");
const u32 gMonShinyPalette_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/shiny.gbapal.lz");
const u8 gMonIcon_Seedot[] = INCBIN_U8("graphics/pokemon/seedot/icon.4bpp");
const u8 gMonFootprint_Seedot[] = INCBIN_U8("graphics/pokemon/seedot/footprint.1bpp");

const u32 gMonFrontPic_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/front.4bpp.lz");
const u32 gMonPalette_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/normal.gbapal.lz");
const u32 gMonBackPic_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/back.4bpp.lz");
const u32 gMonShinyPalette_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/shiny.gbapal.lz");
const u8 gMonIcon_Nuzleaf[] = INCBIN_U8("graphics/pokemon/nuzleaf/icon.4bpp");
const u8 gMonFootprint_Nuzleaf[] = INCBIN_U8("graphics/pokemon/nuzleaf/footprint.1bpp");

const u32 gMonFrontPic_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/front.4bpp.lz");
const u32 gMonPalette_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/normal.gbapal.lz");
const u32 gMonBackPic_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/back.4bpp.lz");
const u32 gMonShinyPalette_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/shiny.gbapal.lz");
const u8 gMonIcon_Shiftry[] = INCBIN_U8("graphics/pokemon/shiftry/icon.4bpp");
const u8 gMonFootprint_Shiftry[] = INCBIN_U8("graphics/pokemon/shiftry/footprint.1bpp");

const u32 gMonFrontPic_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/front.4bpp.lz");
const u32 gMonPalette_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/normal.gbapal.lz");
const u32 gMonBackPic_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/back.4bpp.lz");
const u32 gMonShinyPalette_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/shiny.gbapal.lz");
const u8 gMonIcon_Nincada[] = INCBIN_U8("graphics/pokemon/nincada/icon.4bpp");
const u8 gMonFootprint_Nincada[] = INCBIN_U8("graphics/pokemon/nincada/footprint.1bpp");

const u32 gMonFrontPic_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/front.4bpp.lz");
const u32 gMonPalette_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/normal.gbapal.lz");
const u32 gMonBackPic_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/back.4bpp.lz");
const u32 gMonShinyPalette_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/shiny.gbapal.lz");
const u8 gMonIcon_Ninjask[] = INCBIN_U8("graphics/pokemon/ninjask/icon.4bpp");
const u8 gMonFootprint_Ninjask[] = INCBIN_U8("graphics/pokemon/ninjask/footprint.1bpp");

const u32 gMonFrontPic_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/front.4bpp.lz");
const u32 gMonPalette_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/normal.gbapal.lz");
const u32 gMonBackPic_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/back.4bpp.lz");
const u32 gMonShinyPalette_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/shiny.gbapal.lz");
const u8 gMonIcon_Shedinja[] = INCBIN_U8("graphics/pokemon/shedinja/icon.4bpp");
const u8 gMonFootprint_Shedinja[] = INCBIN_U8("graphics/pokemon/shedinja/footprint.1bpp");

const u32 gMonFrontPic_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/front.4bpp.lz");
const u32 gMonPalette_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/normal.gbapal.lz");
const u32 gMonBackPic_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/back.4bpp.lz");
const u32 gMonShinyPalette_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/shiny.gbapal.lz");
const u8 gMonIcon_Taillow[] = INCBIN_U8("graphics/pokemon/taillow/icon.4bpp");
const u8 gMonFootprint_Taillow[] = INCBIN_U8("graphics/pokemon/taillow/footprint.1bpp");

const u32 gMonFrontPic_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/front.4bpp.lz");
const u32 gMonPalette_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/normal.gbapal.lz");
const u32 gMonBackPic_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/back.4bpp.lz");
const u32 gMonShinyPalette_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/shiny.gbapal.lz");
const u8 gMonIcon_Swellow[] = INCBIN_U8("graphics/pokemon/swellow/icon.4bpp");
const u8 gMonFootprint_Swellow[] = INCBIN_U8("graphics/pokemon/swellow/footprint.1bpp");

const u32 gMonFrontPic_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/front.4bpp.lz");
const u32 gMonPalette_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/normal.gbapal.lz");
const u32 gMonBackPic_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/back.4bpp.lz");
const u32 gMonShinyPalette_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/shiny.gbapal.lz");
const u8 gMonIcon_Shroomish[] = INCBIN_U8("graphics/pokemon/shroomish/icon.4bpp");
const u8 gMonFootprint_Shroomish[] = INCBIN_U8("graphics/pokemon/shroomish/footprint.1bpp");

const u32 gMonFrontPic_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/front.4bpp.lz");
const u32 gMonPalette_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/normal.gbapal.lz");
const u32 gMonBackPic_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/back.4bpp.lz");
const u32 gMonShinyPalette_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/shiny.gbapal.lz");
const u8 gMonIcon_Breloom[] = INCBIN_U8("graphics/pokemon/breloom/icon.4bpp");
const u8 gMonFootprint_Breloom[] = INCBIN_U8("graphics/pokemon/breloom/footprint.1bpp");

const u32 gMonFrontPic_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/front.4bpp.lz");
const u32 gMonPalette_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/normal.gbapal.lz");
const u32 gMonBackPic_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/back.4bpp.lz");
const u32 gMonShinyPalette_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/shiny.gbapal.lz");
const u8 gMonIcon_Spinda[] = INCBIN_U8("graphics/pokemon/spinda/icon.4bpp");
const u8 gMonFootprint_Spinda[] = INCBIN_U8("graphics/pokemon/spinda/footprint.1bpp");

const u32 gMonFrontPic_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/front.4bpp.lz");
const u32 gMonPalette_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/normal.gbapal.lz");
const u32 gMonBackPic_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/back.4bpp.lz");
const u32 gMonShinyPalette_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/shiny.gbapal.lz");
const u8 gMonIcon_Wingull[] = INCBIN_U8("graphics/pokemon/wingull/icon.4bpp");
const u8 gMonFootprint_Wingull[] = INCBIN_U8("graphics/pokemon/wingull/footprint.1bpp");

const u32 gMonFrontPic_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/front.4bpp.lz");
const u32 gMonPalette_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/normal.gbapal.lz");
const u32 gMonBackPic_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/back.4bpp.lz");
const u32 gMonShinyPalette_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/shiny.gbapal.lz");
const u8 gMonIcon_Pelipper[] = INCBIN_U8("graphics/pokemon/pelipper/icon.4bpp");
const u8 gMonFootprint_Pelipper[] = INCBIN_U8("graphics/pokemon/pelipper/footprint.1bpp");

const u32 gMonFrontPic_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/front.4bpp.lz");
const u32 gMonPalette_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/normal.gbapal.lz");
const u32 gMonBackPic_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/back.4bpp.lz");
const u32 gMonShinyPalette_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/shiny.gbapal.lz");
const u8 gMonIcon_Surskit[] = INCBIN_U8("graphics/pokemon/surskit/icon.4bpp");
const u8 gMonFootprint_Surskit[] = INCBIN_U8("graphics/pokemon/surskit/footprint.1bpp");

const u32 gMonFrontPic_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/front.4bpp.lz");
const u32 gMonPalette_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/normal.gbapal.lz");
const u32 gMonBackPic_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/back.4bpp.lz");
const u32 gMonShinyPalette_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/shiny.gbapal.lz");
const u8 gMonIcon_Masquerain[] = INCBIN_U8("graphics/pokemon/masquerain/icon.4bpp");
const u8 gMonFootprint_Masquerain[] = INCBIN_U8("graphics/pokemon/masquerain/footprint.1bpp");

const u32 gMonFrontPic_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/front.4bpp.lz");
const u32 gMonPalette_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/normal.gbapal.lz");
const u32 gMonBackPic_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/back.4bpp.lz");
const u32 gMonShinyPalette_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/shiny.gbapal.lz");
const u8 gMonIcon_Wailmer[] = INCBIN_U8("graphics/pokemon/wailmer/icon.4bpp");
const u8 gMonFootprint_Wailmer[] = INCBIN_U8("graphics/pokemon/wailmer/footprint.1bpp");

const u32 gMonFrontPic_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/front.4bpp.lz");
const u32 gMonPalette_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/normal.gbapal.lz");
const u32 gMonBackPic_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/back.4bpp.lz");
const u32 gMonShinyPalette_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/shiny.gbapal.lz");
const u8 gMonIcon_Wailord[] = INCBIN_U8("graphics/pokemon/wailord/icon.4bpp");
const u8 gMonFootprint_Wailord[] = INCBIN_U8("graphics/pokemon/wailord/footprint.1bpp");

const u32 gMonFrontPic_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/front.4bpp.lz");
const u32 gMonPalette_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/normal.gbapal.lz");
const u32 gMonBackPic_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/back.4bpp.lz");
const u32 gMonShinyPalette_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/shiny.gbapal.lz");
const u8 gMonIcon_Skitty[] = INCBIN_U8("graphics/pokemon/skitty/icon.4bpp");
const u8 gMonFootprint_Skitty[] = INCBIN_U8("graphics/pokemon/skitty/footprint.1bpp");

const u32 gMonFrontPic_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/front.4bpp.lz");
const u32 gMonPalette_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/normal.gbapal.lz");
const u32 gMonBackPic_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/back.4bpp.lz");
const u32 gMonShinyPalette_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/shiny.gbapal.lz");
const u8 gMonIcon_Delcatty[] = INCBIN_U8("graphics/pokemon/delcatty/icon.4bpp");
const u8 gMonFootprint_Delcatty[] = INCBIN_U8("graphics/pokemon/delcatty/footprint.1bpp");

const u32 gMonFrontPic_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/front.4bpp.lz");
const u32 gMonPalette_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/normal.gbapal.lz");
const u32 gMonBackPic_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/back.4bpp.lz");
const u32 gMonShinyPalette_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/shiny.gbapal.lz");
const u8 gMonIcon_Kecleon[] = INCBIN_U8("graphics/pokemon/kecleon/icon.4bpp");
const u8 gMonFootprint_Kecleon[] = INCBIN_U8("graphics/pokemon/kecleon/footprint.1bpp");

const u32 gMonFrontPic_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/front.4bpp.lz");
const u32 gMonPalette_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/normal.gbapal.lz");
const u32 gMonBackPic_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/back.4bpp.lz");
const u32 gMonShinyPalette_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/shiny.gbapal.lz");
const u8 gMonIcon_Baltoy[] = INCBIN_U8("graphics/pokemon/baltoy/icon.4bpp");
const u8 gMonFootprint_Baltoy[] = INCBIN_U8("graphics/pokemon/baltoy/footprint.1bpp");

const u32 gMonFrontPic_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/front.4bpp.lz");
const u32 gMonPalette_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/normal.gbapal.lz");
const u32 gMonBackPic_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/back.4bpp.lz");
const u32 gMonShinyPalette_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/shiny.gbapal.lz");
const u8 gMonIcon_Claydol[] = INCBIN_U8("graphics/pokemon/claydol/icon.4bpp");
const u8 gMonFootprint_Claydol[] = INCBIN_U8("graphics/pokemon/claydol/footprint.1bpp");

const u32 gMonFrontPic_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/front.4bpp.lz");
const u32 gMonPalette_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/normal.gbapal.lz");
const u32 gMonBackPic_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/back.4bpp.lz");
const u32 gMonShinyPalette_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/shiny.gbapal.lz");
const u8 gMonIcon_Nosepass[] = INCBIN_U8("graphics/pokemon/nosepass/icon.4bpp");
const u8 gMonFootprint_Nosepass[] = INCBIN_U8("graphics/pokemon/nosepass/footprint.1bpp");

const u32 gMonFrontPic_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/front.4bpp.lz");
const u32 gMonPalette_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/normal.gbapal.lz");
const u32 gMonBackPic_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/back.4bpp.lz");
const u32 gMonShinyPalette_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/shiny.gbapal.lz");
const u8 gMonIcon_Torkoal[] = INCBIN_U8("graphics/pokemon/torkoal/icon.4bpp");
const u8 gMonFootprint_Torkoal[] = INCBIN_U8("graphics/pokemon/torkoal/footprint.1bpp");

const u32 gMonFrontPic_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/front.4bpp.lz");
const u32 gMonPalette_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/normal.gbapal.lz");
const u32 gMonBackPic_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/back.4bpp.lz");
const u32 gMonShinyPalette_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/shiny.gbapal.lz");
const u8 gMonIcon_Sableye[] = INCBIN_U8("graphics/pokemon/sableye/icon.4bpp");
const u8 gMonFootprint_Sableye[] = INCBIN_U8("graphics/pokemon/sableye/footprint.1bpp");

const u32 gMonFrontPic_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/front.4bpp.lz");
const u32 gMonPalette_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/normal.gbapal.lz");
const u32 gMonBackPic_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/back.4bpp.lz");
const u32 gMonShinyPalette_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/shiny.gbapal.lz");
const u8 gMonIcon_Barboach[] = INCBIN_U8("graphics/pokemon/barboach/icon.4bpp");
const u8 gMonFootprint_Barboach[] = INCBIN_U8("graphics/pokemon/barboach/footprint.1bpp");

const u32 gMonFrontPic_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/front.4bpp.lz");
const u32 gMonPalette_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/normal.gbapal.lz");
const u32 gMonBackPic_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/back.4bpp.lz");
const u32 gMonShinyPalette_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/shiny.gbapal.lz");
const u8 gMonIcon_Whiscash[] = INCBIN_U8("graphics/pokemon/whiscash/icon.4bpp");
const u8 gMonFootprint_Whiscash[] = INCBIN_U8("graphics/pokemon/whiscash/footprint.1bpp");

const u32 gMonFrontPic_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/front.4bpp.lz");
const u32 gMonPalette_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/normal.gbapal.lz");
const u32 gMonBackPic_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/back.4bpp.lz");
const u32 gMonShinyPalette_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/shiny.gbapal.lz");
const u8 gMonIcon_Luvdisc[] = INCBIN_U8("graphics/pokemon/luvdisc/icon.4bpp");
const u8 gMonFootprint_Luvdisc[] = INCBIN_U8("graphics/pokemon/luvdisc/footprint.1bpp");

const u32 gMonFrontPic_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/front.4bpp.lz");
const u32 gMonPalette_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/normal.gbapal.lz");
const u32 gMonBackPic_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/back.4bpp.lz");
const u32 gMonShinyPalette_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/shiny.gbapal.lz");
const u8 gMonIcon_Corphish[] = INCBIN_U8("graphics/pokemon/corphish/icon.4bpp");
const u8 gMonFootprint_Corphish[] = INCBIN_U8("graphics/pokemon/corphish/footprint.1bpp");

const u32 gMonFrontPic_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/front.4bpp.lz");
const u32 gMonPalette_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/normal.gbapal.lz");
const u32 gMonBackPic_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/back.4bpp.lz");
const u32 gMonShinyPalette_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/shiny.gbapal.lz");
const u8 gMonIcon_Crawdaunt[] = INCBIN_U8("graphics/pokemon/crawdaunt/icon.4bpp");
const u8 gMonFootprint_Crawdaunt[] = INCBIN_U8("graphics/pokemon/crawdaunt/footprint.1bpp");

const u32 gMonFrontPic_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/front.4bpp.lz");
const u32 gMonPalette_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/normal.gbapal.lz");
const u32 gMonBackPic_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/back.4bpp.lz");
const u32 gMonShinyPalette_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/shiny.gbapal.lz");
const u8 gMonIcon_Feebas[] = INCBIN_U8("graphics/pokemon/feebas/icon.4bpp");
const u8 gMonFootprint_Feebas[] = INCBIN_U8("graphics/pokemon/feebas/footprint.1bpp");

const u32 gMonFrontPic_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/front.4bpp.lz");
const u32 gMonPalette_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/normal.gbapal.lz");
const u32 gMonBackPic_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/back.4bpp.lz");
const u32 gMonShinyPalette_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/shiny.gbapal.lz");
const u8 gMonIcon_Milotic[] = INCBIN_U8("graphics/pokemon/milotic/icon.4bpp");
const u8 gMonFootprint_Milotic[] = INCBIN_U8("graphics/pokemon/milotic/footprint.1bpp");

const u32 gMonFrontPic_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/front.4bpp.lz");
const u32 gMonPalette_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/normal.gbapal.lz");
const u32 gMonBackPic_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/back.4bpp.lz");
const u32 gMonShinyPalette_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/shiny.gbapal.lz");
const u8 gMonIcon_Carvanha[] = INCBIN_U8("graphics/pokemon/carvanha/icon.4bpp");
const u8 gMonFootprint_Carvanha[] = INCBIN_U8("graphics/pokemon/carvanha/footprint.1bpp");

const u32 gMonFrontPic_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/front.4bpp.lz");
const u32 gMonPalette_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/normal.gbapal.lz");
const u32 gMonBackPic_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/back.4bpp.lz");
const u32 gMonShinyPalette_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/shiny.gbapal.lz");
const u8 gMonIcon_Sharpedo[] = INCBIN_U8("graphics/pokemon/sharpedo/icon.4bpp");
const u8 gMonFootprint_Sharpedo[] = INCBIN_U8("graphics/pokemon/sharpedo/footprint.1bpp");

const u32 gMonFrontPic_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/front.4bpp.lz");
const u32 gMonPalette_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/normal.gbapal.lz");
const u32 gMonBackPic_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/back.4bpp.lz");
const u32 gMonShinyPalette_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/shiny.gbapal.lz");
const u8 gMonIcon_Trapinch[] = INCBIN_U8("graphics/pokemon/trapinch/icon.4bpp");
const u8 gMonFootprint_Trapinch[] = INCBIN_U8("graphics/pokemon/trapinch/footprint.1bpp");

const u32 gMonFrontPic_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/front.4bpp.lz");
const u32 gMonPalette_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/normal.gbapal.lz");
const u32 gMonBackPic_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/back.4bpp.lz");
const u32 gMonShinyPalette_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/shiny.gbapal.lz");
const u8 gMonIcon_Vibrava[] = INCBIN_U8("graphics/pokemon/vibrava/icon.4bpp");
const u8 gMonFootprint_Vibrava[] = INCBIN_U8("graphics/pokemon/vibrava/footprint.1bpp");

const u32 gMonFrontPic_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/front.4bpp.lz");
const u32 gMonPalette_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/normal.gbapal.lz");
const u32 gMonBackPic_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/back.4bpp.lz");
const u32 gMonShinyPalette_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/shiny.gbapal.lz");
const u8 gMonIcon_Flygon[] = INCBIN_U8("graphics/pokemon/flygon/icon.4bpp");
const u8 gMonFootprint_Flygon[] = INCBIN_U8("graphics/pokemon/flygon/footprint.1bpp");

const u32 gMonFrontPic_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/front.4bpp.lz");
const u32 gMonPalette_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/normal.gbapal.lz");
const u32 gMonBackPic_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/back.4bpp.lz");
const u32 gMonShinyPalette_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/shiny.gbapal.lz");
const u8 gMonIcon_Makuhita[] = INCBIN_U8("graphics/pokemon/makuhita/icon.4bpp");
const u8 gMonFootprint_Makuhita[] = INCBIN_U8("graphics/pokemon/makuhita/footprint.1bpp");

const u32 gMonFrontPic_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/front.4bpp.lz");
const u32 gMonPalette_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/normal.gbapal.lz");
const u32 gMonBackPic_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/back.4bpp.lz");
const u32 gMonShinyPalette_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/shiny.gbapal.lz");
const u8 gMonIcon_Hariyama[] = INCBIN_U8("graphics/pokemon/hariyama/icon.4bpp");
const u8 gMonFootprint_Hariyama[] = INCBIN_U8("graphics/pokemon/hariyama/footprint.1bpp");

const u32 gMonFrontPic_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/front.4bpp.lz");
const u32 gMonPalette_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/normal.gbapal.lz");
const u32 gMonBackPic_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/back.4bpp.lz");
const u32 gMonShinyPalette_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/shiny.gbapal.lz");
const u8 gMonIcon_Electrike[] = INCBIN_U8("graphics/pokemon/electrike/icon.4bpp");
const u8 gMonFootprint_Electrike[] = INCBIN_U8("graphics/pokemon/electrike/footprint.1bpp");

const u32 gMonFrontPic_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/front.4bpp.lz");
const u32 gMonPalette_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/normal.gbapal.lz");
const u32 gMonBackPic_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/back.4bpp.lz");
const u32 gMonShinyPalette_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/shiny.gbapal.lz");
const u8 gMonIcon_Manectric[] = INCBIN_U8("graphics/pokemon/manectric/icon.4bpp");
const u8 gMonFootprint_Manectric[] = INCBIN_U8("graphics/pokemon/manectric/footprint.1bpp");

const u32 gMonFrontPic_Numel[] = INCBIN_U32("graphics/pokemon/numel/front.4bpp.lz");
const u32 gMonPalette_Numel[] = INCBIN_U32("graphics/pokemon/numel/normal.gbapal.lz");
const u32 gMonBackPic_Numel[] = INCBIN_U32("graphics/pokemon/numel/back.4bpp.lz");
const u32 gMonShinyPalette_Numel[] = INCBIN_U32("graphics/pokemon/numel/shiny.gbapal.lz");
const u8 gMonIcon_Numel[] = INCBIN_U8("graphics/pokemon/numel/icon.4bpp");
const u8 gMonFootprint_Numel[] = INCBIN_U8("graphics/pokemon/numel/footprint.1bpp");

const u32 gMonFrontPic_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/front.4bpp.lz");
const u32 gMonPalette_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/normal.gbapal.lz");
const u32 gMonBackPic_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/back.4bpp.lz");
const u32 gMonShinyPalette_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/shiny.gbapal.lz");
const u8 gMonIcon_Camerupt[] = INCBIN_U8("graphics/pokemon/camerupt/icon.4bpp");
const u8 gMonFootprint_Camerupt[] = INCBIN_U8("graphics/pokemon/camerupt/footprint.1bpp");

const u32 gMonFrontPic_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/front.4bpp.lz");
const u32 gMonPalette_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/normal.gbapal.lz");
const u32 gMonBackPic_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/back.4bpp.lz");
const u32 gMonShinyPalette_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/shiny.gbapal.lz");
const u8 gMonIcon_Spheal[] = INCBIN_U8("graphics/pokemon/spheal/icon.4bpp");
const u8 gMonFootprint_Spheal[] = INCBIN_U8("graphics/pokemon/spheal/footprint.1bpp");

const u32 gMonFrontPic_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/front.4bpp.lz");
const u32 gMonPalette_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/normal.gbapal.lz");
const u32 gMonBackPic_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/back.4bpp.lz");
const u32 gMonShinyPalette_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/shiny.gbapal.lz");
const u8 gMonIcon_Sealeo[] = INCBIN_U8("graphics/pokemon/sealeo/icon.4bpp");
const u8 gMonFootprint_Sealeo[] = INCBIN_U8("graphics/pokemon/sealeo/footprint.1bpp");

const u32 gMonFrontPic_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/front.4bpp.lz");
const u32 gMonPalette_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/normal.gbapal.lz");
const u32 gMonBackPic_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/back.4bpp.lz");
const u32 gMonShinyPalette_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/shiny.gbapal.lz");
const u8 gMonIcon_Walrein[] = INCBIN_U8("graphics/pokemon/walrein/icon.4bpp");
const u8 gMonFootprint_Walrein[] = INCBIN_U8("graphics/pokemon/walrein/footprint.1bpp");

const u32 gMonFrontPic_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/front.4bpp.lz");
const u32 gMonPalette_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/normal.gbapal.lz");
const u32 gMonBackPic_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/back.4bpp.lz");
const u32 gMonShinyPalette_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/shiny.gbapal.lz");
const u8 gMonIcon_Cacnea[] = INCBIN_U8("graphics/pokemon/cacnea/icon.4bpp");
const u8 gMonFootprint_Cacnea[] = INCBIN_U8("graphics/pokemon/cacnea/footprint.1bpp");

const u32 gMonFrontPic_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/front.4bpp.lz");
const u32 gMonPalette_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/normal.gbapal.lz");
const u32 gMonBackPic_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/back.4bpp.lz");
const u32 gMonShinyPalette_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/shiny.gbapal.lz");
const u8 gMonIcon_Cacturne[] = INCBIN_U8("graphics/pokemon/cacturne/icon.4bpp");
const u8 gMonFootprint_Cacturne[] = INCBIN_U8("graphics/pokemon/cacturne/footprint.1bpp");

const u32 gMonFrontPic_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/front.4bpp.lz");
const u32 gMonPalette_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/normal.gbapal.lz");
const u32 gMonBackPic_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/back.4bpp.lz");
const u32 gMonShinyPalette_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/shiny.gbapal.lz");
const u8 gMonIcon_Snorunt[] = INCBIN_U8("graphics/pokemon/snorunt/icon.4bpp");
const u8 gMonFootprint_Snorunt[] = INCBIN_U8("graphics/pokemon/snorunt/footprint.1bpp");

const u32 gMonFrontPic_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/front.4bpp.lz");
const u32 gMonPalette_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/normal.gbapal.lz");
const u32 gMonBackPic_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/back.4bpp.lz");
const u32 gMonShinyPalette_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/shiny.gbapal.lz");
const u8 gMonIcon_Glalie[] = INCBIN_U8("graphics/pokemon/glalie/icon.4bpp");
const u8 gMonFootprint_Glalie[] = INCBIN_U8("graphics/pokemon/glalie/footprint.1bpp");

const u32 gMonFrontPic_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/front.4bpp.lz");
const u32 gMonPalette_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/normal.gbapal.lz");
const u32 gMonBackPic_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/back.4bpp.lz");
const u32 gMonShinyPalette_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/shiny.gbapal.lz");
const u8 gMonIcon_Lunatone[] = INCBIN_U8("graphics/pokemon/lunatone/icon.4bpp");
const u8 gMonFootprint_Lunatone[] = INCBIN_U8("graphics/pokemon/lunatone/footprint.1bpp");

const u32 gMonFrontPic_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/front.4bpp.lz");
const u32 gMonPalette_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/normal.gbapal.lz");
const u32 gMonBackPic_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/back.4bpp.lz");
const u32 gMonShinyPalette_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/shiny.gbapal.lz");
const u8 gMonIcon_Solrock[] = INCBIN_U8("graphics/pokemon/solrock/icon.4bpp");
const u8 gMonFootprint_Solrock[] = INCBIN_U8("graphics/pokemon/solrock/footprint.1bpp");

const u32 gMonFrontPic_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/front.4bpp.lz");
const u32 gMonPalette_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/normal.gbapal.lz");
const u32 gMonBackPic_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/back.4bpp.lz");
const u32 gMonShinyPalette_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/shiny.gbapal.lz");
const u8 gMonIcon_Azurill[] = INCBIN_U8("graphics/pokemon/azurill/icon.4bpp");
const u8 gMonFootprint_Azurill[] = INCBIN_U8("graphics/pokemon/azurill/footprint.1bpp");

const u32 gMonFrontPic_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/front.4bpp.lz");
const u32 gMonPalette_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/normal.gbapal.lz");
const u32 gMonBackPic_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/back.4bpp.lz");
const u32 gMonShinyPalette_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/shiny.gbapal.lz");
const u8 gMonIcon_Spoink[] = INCBIN_U8("graphics/pokemon/spoink/icon.4bpp");
const u8 gMonFootprint_Spoink[] = INCBIN_U8("graphics/pokemon/spoink/footprint.1bpp");

const u32 gMonFrontPic_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/front.4bpp.lz");
const u32 gMonPalette_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/normal.gbapal.lz");
const u32 gMonBackPic_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/back.4bpp.lz");
const u32 gMonShinyPalette_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/shiny.gbapal.lz");
const u8 gMonIcon_Grumpig[] = INCBIN_U8("graphics/pokemon/grumpig/icon.4bpp");
const u8 gMonFootprint_Grumpig[] = INCBIN_U8("graphics/pokemon/grumpig/footprint.1bpp");

const u32 gMonFrontPic_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/front.4bpp.lz");
const u32 gMonPalette_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/normal.gbapal.lz");
const u32 gMonBackPic_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/back.4bpp.lz");
const u32 gMonShinyPalette_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/shiny.gbapal.lz");
const u8 gMonIcon_Plusle[] = INCBIN_U8("graphics/pokemon/plusle/icon.4bpp");
const u8 gMonFootprint_Plusle[] = INCBIN_U8("graphics/pokemon/plusle/footprint.1bpp");

const u32 gMonFrontPic_Minun[] = INCBIN_U32("graphics/pokemon/minun/front.4bpp.lz");
const u32 gMonPalette_Minun[] = INCBIN_U32("graphics/pokemon/minun/normal.gbapal.lz");
const u32 gMonBackPic_Minun[] = INCBIN_U32("graphics/pokemon/minun/back.4bpp.lz");
const u32 gMonShinyPalette_Minun[] = INCBIN_U32("graphics/pokemon/minun/shiny.gbapal.lz");
const u8 gMonIcon_Minun[] = INCBIN_U8("graphics/pokemon/minun/icon.4bpp");
const u8 gMonFootprint_Minun[] = INCBIN_U8("graphics/pokemon/minun/footprint.1bpp");

const u32 gMonFrontPic_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/front.4bpp.lz");
const u32 gMonPalette_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/normal.gbapal.lz");
const u32 gMonBackPic_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/back.4bpp.lz");
const u32 gMonShinyPalette_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/shiny.gbapal.lz");
const u8 gMonIcon_Mawile[] = INCBIN_U8("graphics/pokemon/mawile/icon.4bpp");
const u8 gMonFootprint_Mawile[] = INCBIN_U8("graphics/pokemon/mawile/footprint.1bpp");

const u32 gMonFrontPic_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/front.4bpp.lz");
const u32 gMonPalette_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/normal.gbapal.lz");
const u32 gMonBackPic_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/back.4bpp.lz");
const u32 gMonShinyPalette_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/shiny.gbapal.lz");
const u8 gMonIcon_Meditite[] = INCBIN_U8("graphics/pokemon/meditite/icon.4bpp");
const u8 gMonFootprint_Meditite[] = INCBIN_U8("graphics/pokemon/meditite/footprint.1bpp");

const u32 gMonFrontPic_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/front.4bpp.lz");
const u32 gMonPalette_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/normal.gbapal.lz");
const u32 gMonBackPic_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/back.4bpp.lz");
const u32 gMonShinyPalette_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/shiny.gbapal.lz");
const u8 gMonIcon_Medicham[] = INCBIN_U8("graphics/pokemon/medicham/icon.4bpp");
const u8 gMonFootprint_Medicham[] = INCBIN_U8("graphics/pokemon/medicham/footprint.1bpp");

const u32 gMonFrontPic_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/front.4bpp.lz");
const u32 gMonPalette_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/normal.gbapal.lz");
const u32 gMonBackPic_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/back.4bpp.lz");
const u32 gMonShinyPalette_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/shiny.gbapal.lz");
const u8 gMonIcon_Swablu[] = INCBIN_U8("graphics/pokemon/swablu/icon.4bpp");
const u8 gMonFootprint_Swablu[] = INCBIN_U8("graphics/pokemon/swablu/footprint.1bpp");

const u32 gMonFrontPic_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/front.4bpp.lz");
const u32 gMonPalette_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/normal.gbapal.lz");
const u32 gMonBackPic_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/back.4bpp.lz");
const u32 gMonShinyPalette_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/shiny.gbapal.lz");
const u8 gMonIcon_Altaria[] = INCBIN_U8("graphics/pokemon/altaria/icon.4bpp");
const u8 gMonFootprint_Altaria[] = INCBIN_U8("graphics/pokemon/altaria/footprint.1bpp");

const u32 gMonFrontPic_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/front.4bpp.lz");
const u32 gMonPalette_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/normal.gbapal.lz");
const u32 gMonBackPic_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/back.4bpp.lz");
const u32 gMonShinyPalette_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/shiny.gbapal.lz");
const u8 gMonIcon_Wynaut[] = INCBIN_U8("graphics/pokemon/wynaut/icon.4bpp");
const u8 gMonFootprint_Wynaut[] = INCBIN_U8("graphics/pokemon/wynaut/footprint.1bpp");

const u32 gMonFrontPic_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/front.4bpp.lz");
const u32 gMonPalette_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/normal.gbapal.lz");
const u32 gMonBackPic_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/back.4bpp.lz");
const u32 gMonShinyPalette_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/shiny.gbapal.lz");
const u8 gMonIcon_Duskull[] = INCBIN_U8("graphics/pokemon/duskull/icon.4bpp");
const u8 gMonFootprint_Duskull[] = INCBIN_U8("graphics/pokemon/duskull/footprint.1bpp");

const u32 gMonFrontPic_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/front.4bpp.lz");
const u32 gMonPalette_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/normal.gbapal.lz");
const u32 gMonBackPic_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/back.4bpp.lz");
const u32 gMonShinyPalette_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/shiny.gbapal.lz");
const u8 gMonIcon_Dusclops[] = INCBIN_U8("graphics/pokemon/dusclops/icon.4bpp");
const u8 gMonFootprint_Dusclops[] = INCBIN_U8("graphics/pokemon/dusclops/footprint.1bpp");

const u32 gMonFrontPic_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/front.4bpp.lz");
const u32 gMonPalette_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/normal.gbapal.lz");
const u32 gMonBackPic_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/back.4bpp.lz");
const u32 gMonShinyPalette_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/shiny.gbapal.lz");
const u8 gMonIcon_Roselia[] = INCBIN_U8("graphics/pokemon/roselia/icon.4bpp");
const u8 gMonFootprint_Roselia[] = INCBIN_U8("graphics/pokemon/roselia/footprint.1bpp");

const u32 gMonFrontPic_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/front.4bpp.lz");
const u32 gMonPalette_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/normal.gbapal.lz");
const u32 gMonBackPic_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/back.4bpp.lz");
const u32 gMonShinyPalette_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/shiny.gbapal.lz");
const u8 gMonIcon_Slakoth[] = INCBIN_U8("graphics/pokemon/slakoth/icon.4bpp");
const u8 gMonFootprint_Slakoth[] = INCBIN_U8("graphics/pokemon/slakoth/footprint.1bpp");

const u32 gMonFrontPic_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/front.4bpp.lz");
const u32 gMonPalette_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/normal.gbapal.lz");
const u32 gMonBackPic_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/back.4bpp.lz");
const u32 gMonShinyPalette_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/shiny.gbapal.lz");
const u8 gMonIcon_Vigoroth[] = INCBIN_U8("graphics/pokemon/vigoroth/icon.4bpp");
const u8 gMonFootprint_Vigoroth[] = INCBIN_U8("graphics/pokemon/vigoroth/footprint.1bpp");

const u32 gMonFrontPic_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/front.4bpp.lz");
const u32 gMonPalette_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/normal.gbapal.lz");
const u32 gMonBackPic_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/back.4bpp.lz");
const u32 gMonShinyPalette_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/shiny.gbapal.lz");
const u8 gMonIcon_Slaking[] = INCBIN_U8("graphics/pokemon/slaking/icon.4bpp");
const u8 gMonFootprint_Slaking[] = INCBIN_U8("graphics/pokemon/slaking/footprint.1bpp");

const u32 gMonFrontPic_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/front.4bpp.lz");
const u32 gMonPalette_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/normal.gbapal.lz");
const u32 gMonBackPic_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/back.4bpp.lz");
const u32 gMonShinyPalette_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/shiny.gbapal.lz");
const u8 gMonIcon_Gulpin[] = INCBIN_U8("graphics/pokemon/gulpin/icon.4bpp");
const u8 gMonFootprint_Gulpin[] = INCBIN_U8("graphics/pokemon/gulpin/footprint.1bpp");

const u32 gMonFrontPic_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/front.4bpp.lz");
const u32 gMonPalette_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/normal.gbapal.lz");
const u32 gMonBackPic_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/back.4bpp.lz");
const u32 gMonShinyPalette_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/shiny.gbapal.lz");
const u8 gMonIcon_Swalot[] = INCBIN_U8("graphics/pokemon/swalot/icon.4bpp");
const u8 gMonFootprint_Swalot[] = INCBIN_U8("graphics/pokemon/swalot/footprint.1bpp");

const u32 gMonFrontPic_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/front.4bpp.lz");
const u32 gMonPalette_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/normal.gbapal.lz");
const u32 gMonBackPic_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/back.4bpp.lz");
const u32 gMonShinyPalette_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/shiny.gbapal.lz");
const u8 gMonIcon_Tropius[] = INCBIN_U8("graphics/pokemon/tropius/icon.4bpp");
const u8 gMonFootprint_Tropius[] = INCBIN_U8("graphics/pokemon/tropius/footprint.1bpp");

const u32 gMonFrontPic_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/front.4bpp.lz");
const u32 gMonPalette_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/normal.gbapal.lz");
const u32 gMonBackPic_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/back.4bpp.lz");
const u32 gMonShinyPalette_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/shiny.gbapal.lz");
const u8 gMonIcon_Whismur[] = INCBIN_U8("graphics/pokemon/whismur/icon.4bpp");
const u8 gMonFootprint_Whismur[] = INCBIN_U8("graphics/pokemon/whismur/footprint.1bpp");

const u32 gMonFrontPic_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/front.4bpp.lz");
const u32 gMonPalette_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/normal.gbapal.lz");
const u32 gMonBackPic_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/back.4bpp.lz");
const u32 gMonShinyPalette_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/shiny.gbapal.lz");
const u8 gMonIcon_Loudred[] = INCBIN_U8("graphics/pokemon/loudred/icon.4bpp");
const u8 gMonFootprint_Loudred[] = INCBIN_U8("graphics/pokemon/loudred/footprint.1bpp");

const u32 gMonFrontPic_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/front.4bpp.lz");
const u32 gMonPalette_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/normal.gbapal.lz");
const u32 gMonBackPic_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/back.4bpp.lz");
const u32 gMonShinyPalette_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/shiny.gbapal.lz");
const u8 gMonIcon_Exploud[] = INCBIN_U8("graphics/pokemon/exploud/icon.4bpp");
const u8 gMonFootprint_Exploud[] = INCBIN_U8("graphics/pokemon/exploud/footprint.1bpp");

const u32 gMonFrontPic_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/front.4bpp.lz");
const u32 gMonPalette_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/normal.gbapal.lz");
const u32 gMonBackPic_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/back.4bpp.lz");
const u32 gMonShinyPalette_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/shiny.gbapal.lz");
const u8 gMonIcon_Clamperl[] = INCBIN_U8("graphics/pokemon/clamperl/icon.4bpp");
const u8 gMonFootprint_Clamperl[] = INCBIN_U8("graphics/pokemon/clamperl/footprint.1bpp");

const u32 gMonFrontPic_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/front.4bpp.lz");
const u32 gMonPalette_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/normal.gbapal.lz");
const u32 gMonBackPic_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/back.4bpp.lz");
const u32 gMonShinyPalette_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/shiny.gbapal.lz");
const u8 gMonIcon_Huntail[] = INCBIN_U8("graphics/pokemon/huntail/icon.4bpp");
const u8 gMonFootprint_Huntail[] = INCBIN_U8("graphics/pokemon/huntail/footprint.1bpp");

const u32 gMonFrontPic_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/front.4bpp.lz");
const u32 gMonPalette_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/normal.gbapal.lz");
const u32 gMonBackPic_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/back.4bpp.lz");
const u32 gMonShinyPalette_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/shiny.gbapal.lz");
const u8 gMonIcon_Gorebyss[] = INCBIN_U8("graphics/pokemon/gorebyss/icon.4bpp");
const u8 gMonFootprint_Gorebyss[] = INCBIN_U8("graphics/pokemon/gorebyss/footprint.1bpp");

const u32 gMonFrontPic_Absol[] = INCBIN_U32("graphics/pokemon/absol/front.4bpp.lz");
const u32 gMonPalette_Absol[] = INCBIN_U32("graphics/pokemon/absol/normal.gbapal.lz");
const u32 gMonBackPic_Absol[] = INCBIN_U32("graphics/pokemon/absol/back.4bpp.lz");
const u32 gMonShinyPalette_Absol[] = INCBIN_U32("graphics/pokemon/absol/shiny.gbapal.lz");
const u8 gMonIcon_Absol[] = INCBIN_U8("graphics/pokemon/absol/icon.4bpp");
const u8 gMonFootprint_Absol[] = INCBIN_U8("graphics/pokemon/absol/footprint.1bpp");

const u32 gMonFrontPic_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/front.4bpp.lz");
const u32 gMonPalette_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/normal.gbapal.lz");
const u32 gMonBackPic_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/back.4bpp.lz");
const u32 gMonShinyPalette_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/shiny.gbapal.lz");
const u8 gMonIcon_Shuppet[] = INCBIN_U8("graphics/pokemon/shuppet/icon.4bpp");
const u8 gMonFootprint_Shuppet[] = INCBIN_U8("graphics/pokemon/shuppet/footprint.1bpp");

const u32 gMonFrontPic_Banette[] = INCBIN_U32("graphics/pokemon/banette/front.4bpp.lz");
const u32 gMonPalette_Banette[] = INCBIN_U32("graphics/pokemon/banette/normal.gbapal.lz");
const u32 gMonBackPic_Banette[] = INCBIN_U32("graphics/pokemon/banette/back.4bpp.lz");
const u32 gMonShinyPalette_Banette[] = INCBIN_U32("graphics/pokemon/banette/shiny.gbapal.lz");
const u8 gMonIcon_Banette[] = INCBIN_U8("graphics/pokemon/banette/icon.4bpp");
const u8 gMonFootprint_Banette[] = INCBIN_U8("graphics/pokemon/banette/footprint.1bpp");

const u32 gMonFrontPic_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/front.4bpp.lz");
const u32 gMonPalette_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/normal.gbapal.lz");
const u32 gMonBackPic_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/back.4bpp.lz");
const u32 gMonShinyPalette_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/shiny.gbapal.lz");
const u8 gMonIcon_Seviper[] = INCBIN_U8("graphics/pokemon/seviper/icon.4bpp");
const u8 gMonFootprint_Seviper[] = INCBIN_U8("graphics/pokemon/seviper/footprint.1bpp");

const u32 gMonFrontPic_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/front.4bpp.lz");
const u32 gMonPalette_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/normal.gbapal.lz");
const u32 gMonBackPic_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/back.4bpp.lz");
const u32 gMonShinyPalette_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/shiny.gbapal.lz");
const u8 gMonIcon_Zangoose[] = INCBIN_U8("graphics/pokemon/zangoose/icon.4bpp");
const u8 gMonFootprint_Zangoose[] = INCBIN_U8("graphics/pokemon/zangoose/footprint.1bpp");

const u32 gMonFrontPic_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/front.4bpp.lz");
const u32 gMonPalette_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/normal.gbapal.lz");
const u32 gMonBackPic_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/back.4bpp.lz");
const u32 gMonShinyPalette_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/shiny.gbapal.lz");
const u8 gMonIcon_Relicanth[] = INCBIN_U8("graphics/pokemon/relicanth/icon.4bpp");
const u8 gMonFootprint_Relicanth[] = INCBIN_U8("graphics/pokemon/relicanth/footprint.1bpp");

const u32 gMonFrontPic_Aron[] = INCBIN_U32("graphics/pokemon/aron/front.4bpp.lz");
const u32 gMonPalette_Aron[] = INCBIN_U32("graphics/pokemon/aron/normal.gbapal.lz");
const u32 gMonBackPic_Aron[] = INCBIN_U32("graphics/pokemon/aron/back.4bpp.lz");
const u32 gMonShinyPalette_Aron[] = INCBIN_U32("graphics/pokemon/aron/shiny.gbapal.lz");
const u8 gMonIcon_Aron[] = INCBIN_U8("graphics/pokemon/aron/icon.4bpp");
const u8 gMonFootprint_Aron[] = INCBIN_U8("graphics/pokemon/aron/footprint.1bpp");

const u32 gMonFrontPic_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/front.4bpp.lz");
const u32 gMonPalette_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/normal.gbapal.lz");
const u32 gMonBackPic_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/back.4bpp.lz");
const u32 gMonShinyPalette_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/shiny.gbapal.lz");
const u8 gMonIcon_Lairon[] = INCBIN_U8("graphics/pokemon/lairon/icon.4bpp");
const u8 gMonFootprint_Lairon[] = INCBIN_U8("graphics/pokemon/lairon/footprint.1bpp");

const u32 gMonFrontPic_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/front.4bpp.lz");
const u32 gMonPalette_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/normal.gbapal.lz");
const u32 gMonBackPic_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/back.4bpp.lz");
const u32 gMonShinyPalette_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/shiny.gbapal.lz");
const u8 gMonIcon_Aggron[] = INCBIN_U8("graphics/pokemon/aggron/icon.4bpp");
const u8 gMonFootprint_Aggron[] = INCBIN_U8("graphics/pokemon/aggron/footprint.1bpp");

const u32 gMonFrontPic_Castform[] = INCBIN_U32("graphics/pokemon/castform/front.4bpp.lz");
const u32 gMonPalette_Castform[] = INCBIN_U32("graphics/pokemon/castform/normal.gbapal.lz");
const u32 gMonBackPic_Castform[] = INCBIN_U32("graphics/pokemon/castform/back.4bpp.lz");
const u32 gMonShinyPalette_Castform[] = INCBIN_U32("graphics/pokemon/castform/shiny.gbapal.lz");
const u8 gMonIcon_Castform[] = INCBIN_U8("graphics/pokemon/castform/icon.4bpp");
const u8 gMonFootprint_Castform[] = INCBIN_U8("graphics/pokemon/castform/footprint.1bpp");

const u32 gMonFrontPic_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/front.4bpp.lz");
const u32 gMonPalette_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/normal.gbapal.lz");
const u32 gMonBackPic_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/back.4bpp.lz");
const u32 gMonShinyPalette_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/shiny.gbapal.lz");
const u8 gMonIcon_Volbeat[] = INCBIN_U8("graphics/pokemon/volbeat/icon.4bpp");
const u8 gMonFootprint_Volbeat[] = INCBIN_U8("graphics/pokemon/volbeat/footprint.1bpp");

const u32 gMonFrontPic_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/front.4bpp.lz");
const u32 gMonPalette_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/normal.gbapal.lz");
const u32 gMonBackPic_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/back.4bpp.lz");
const u32 gMonShinyPalette_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/shiny.gbapal.lz");
const u8 gMonIcon_Illumise[] = INCBIN_U8("graphics/pokemon/illumise/icon.4bpp");
const u8 gMonFootprint_Illumise[] = INCBIN_U8("graphics/pokemon/illumise/footprint.1bpp");

const u32 gMonFrontPic_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/front.4bpp.lz");
const u32 gMonPalette_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/normal.gbapal.lz");
const u32 gMonBackPic_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/back.4bpp.lz");
const u32 gMonShinyPalette_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/shiny.gbapal.lz");
const u8 gMonIcon_Lileep[] = INCBIN_U8("graphics/pokemon/lileep/icon.4bpp");
const u8 gMonFootprint_Lileep[] = INCBIN_U8("graphics/pokemon/lileep/footprint.1bpp");

const u32 gMonFrontPic_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/front.4bpp.lz");
const u32 gMonPalette_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/normal.gbapal.lz");
const u32 gMonBackPic_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/back.4bpp.lz");
const u32 gMonShinyPalette_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/shiny.gbapal.lz");
const u8 gMonIcon_Cradily[] = INCBIN_U8("graphics/pokemon/cradily/icon.4bpp");
const u8 gMonFootprint_Cradily[] = INCBIN_U8("graphics/pokemon/cradily/footprint.1bpp");

const u32 gMonFrontPic_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/front.4bpp.lz");
const u32 gMonPalette_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/normal.gbapal.lz");
const u32 gMonBackPic_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/back.4bpp.lz");
const u32 gMonShinyPalette_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/shiny.gbapal.lz");
const u8 gMonIcon_Anorith[] = INCBIN_U8("graphics/pokemon/anorith/icon.4bpp");
const u8 gMonFootprint_Anorith[] = INCBIN_U8("graphics/pokemon/anorith/footprint.1bpp");

const u32 gMonFrontPic_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/front.4bpp.lz");
const u32 gMonPalette_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/normal.gbapal.lz");
const u32 gMonBackPic_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/back.4bpp.lz");
const u32 gMonShinyPalette_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/shiny.gbapal.lz");
const u8 gMonIcon_Armaldo[] = INCBIN_U8("graphics/pokemon/armaldo/icon.4bpp");
const u8 gMonFootprint_Armaldo[] = INCBIN_U8("graphics/pokemon/armaldo/footprint.1bpp");

const u32 gMonFrontPic_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/front.4bpp.lz");
const u32 gMonPalette_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/normal.gbapal.lz");
const u32 gMonBackPic_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/back.4bpp.lz");
const u32 gMonShinyPalette_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/shiny.gbapal.lz");
const u8 gMonIcon_Ralts[] = INCBIN_U8("graphics/pokemon/ralts/icon.4bpp");
const u8 gMonFootprint_Ralts[] = INCBIN_U8("graphics/pokemon/ralts/footprint.1bpp");

const u32 gMonFrontPic_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/front.4bpp.lz");
const u32 gMonPalette_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/normal.gbapal.lz");
const u32 gMonBackPic_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/back.4bpp.lz");
const u32 gMonShinyPalette_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/shiny.gbapal.lz");
const u8 gMonIcon_Kirlia[] = INCBIN_U8("graphics/pokemon/kirlia/icon.4bpp");
const u8 gMonFootprint_Kirlia[] = INCBIN_U8("graphics/pokemon/kirlia/footprint.1bpp");

const u32 gMonFrontPic_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/front.4bpp.lz");
const u32 gMonPalette_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/normal.gbapal.lz");
const u32 gMonBackPic_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/back.4bpp.lz");
const u32 gMonShinyPalette_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/shiny.gbapal.lz");
const u8 gMonIcon_Gardevoir[] = INCBIN_U8("graphics/pokemon/gardevoir/icon.4bpp");
const u8 gMonFootprint_Gardevoir[] = INCBIN_U8("graphics/pokemon/gardevoir/footprint.1bpp");

const u32 gMonFrontPic_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/front.4bpp.lz");
const u32 gMonPalette_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/normal.gbapal.lz");
const u32 gMonBackPic_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/back.4bpp.lz");
const u32 gMonShinyPalette_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/shiny.gbapal.lz");
const u8 gMonIcon_Bagon[] = INCBIN_U8("graphics/pokemon/bagon/icon.4bpp");
const u8 gMonFootprint_Bagon[] = INCBIN_U8("graphics/pokemon/bagon/footprint.1bpp");

const u32 gMonFrontPic_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/front.4bpp.lz");
const u32 gMonPalette_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/normal.gbapal.lz");
const u32 gMonBackPic_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/back.4bpp.lz");
const u32 gMonShinyPalette_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/shiny.gbapal.lz");
const u8 gMonIcon_Shelgon[] = INCBIN_U8("graphics/pokemon/shelgon/icon.4bpp");
const u8 gMonFootprint_Shelgon[] = INCBIN_U8("graphics/pokemon/shelgon/footprint.1bpp");

const u32 gMonFrontPic_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/front.4bpp.lz");
const u32 gMonPalette_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/normal.gbapal.lz");
const u32 gMonBackPic_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/back.4bpp.lz");
const u32 gMonShinyPalette_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/shiny.gbapal.lz");
const u8 gMonIcon_Salamence[] = INCBIN_U8("graphics/pokemon/salamence/icon.4bpp");
const u8 gMonFootprint_Salamence[] = INCBIN_U8("graphics/pokemon/salamence/footprint.1bpp");

const u32 gMonFrontPic_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/front.4bpp.lz");
const u32 gMonPalette_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/normal.gbapal.lz");
const u32 gMonBackPic_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/back.4bpp.lz");
const u32 gMonShinyPalette_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/shiny.gbapal.lz");
const u8 gMonIcon_Beldum[] = INCBIN_U8("graphics/pokemon/beldum/icon.4bpp");
const u8 gMonFootprint_Beldum[] = INCBIN_U8("graphics/pokemon/beldum/footprint.1bpp");

const u32 gMonFrontPic_Metang[] = INCBIN_U32("graphics/pokemon/metang/front.4bpp.lz");
const u32 gMonPalette_Metang[] = INCBIN_U32("graphics/pokemon/metang/normal.gbapal.lz");
const u32 gMonBackPic_Metang[] = INCBIN_U32("graphics/pokemon/metang/back.4bpp.lz");
const u32 gMonShinyPalette_Metang[] = INCBIN_U32("graphics/pokemon/metang/shiny.gbapal.lz");
const u8 gMonIcon_Metang[] = INCBIN_U8("graphics/pokemon/metang/icon.4bpp");
const u8 gMonFootprint_Metang[] = INCBIN_U8("graphics/pokemon/metang/footprint.1bpp");

const u32 gMonFrontPic_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/front.4bpp.lz");
const u32 gMonPalette_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/normal.gbapal.lz");
const u32 gMonBackPic_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/back.4bpp.lz");
const u32 gMonShinyPalette_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/shiny.gbapal.lz");
const u8 gMonIcon_Metagross[] = INCBIN_U8("graphics/pokemon/metagross/icon.4bpp");
const u8 gMonFootprint_Metagross[] = INCBIN_U8("graphics/pokemon/metagross/footprint.1bpp");

const u32 gMonFrontPic_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/front.4bpp.lz");
const u32 gMonPalette_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/normal.gbapal.lz");
const u32 gMonBackPic_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/back.4bpp.lz");
const u32 gMonShinyPalette_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/shiny.gbapal.lz");
const u8 gMonIcon_Regirock[] = INCBIN_U8("graphics/pokemon/regirock/icon.4bpp");
const u8 gMonFootprint_Regirock[] = INCBIN_U8("graphics/pokemon/regirock/footprint.1bpp");

const u32 gMonFrontPic_Regice[] = INCBIN_U32("graphics/pokemon/regice/front.4bpp.lz");
const u32 gMonPalette_Regice[] = INCBIN_U32("graphics/pokemon/regice/normal.gbapal.lz");
const u32 gMonBackPic_Regice[] = INCBIN_U32("graphics/pokemon/regice/back.4bpp.lz");
const u32 gMonShinyPalette_Regice[] = INCBIN_U32("graphics/pokemon/regice/shiny.gbapal.lz");
const u8 gMonIcon_Regice[] = INCBIN_U8("graphics/pokemon/regice/icon.4bpp");
const u8 gMonFootprint_Regice[] = INCBIN_U8("graphics/pokemon/regice/footprint.1bpp");

const u32 gMonFrontPic_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/front.4bpp.lz");
const u32 gMonPalette_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/normal.gbapal.lz");
const u32 gMonBackPic_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/back.4bpp.lz");
const u32 gMonShinyPalette_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/shiny.gbapal.lz");
const u8 gMonIcon_Registeel[] = INCBIN_U8("graphics/pokemon/registeel/icon.4bpp");
const u8 gMonFootprint_Registeel[] = INCBIN_U8("graphics/pokemon/registeel/footprint.1bpp");

const u32 gMonFrontPic_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/front.4bpp.lz");
const u32 gMonPalette_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/normal.gbapal.lz");
const u32 gMonBackPic_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/back.4bpp.lz");
const u32 gMonShinyPalette_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/shiny.gbapal.lz");
const u8 gMonIcon_Kyogre[] = INCBIN_U8("graphics/pokemon/kyogre/icon.4bpp");
const u8 gMonFootprint_Kyogre[] = INCBIN_U8("graphics/pokemon/kyogre/footprint.1bpp");

const u32 gMonFrontPic_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/front.4bpp.lz");
const u32 gMonPalette_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/normal.gbapal.lz");
const u32 gMonBackPic_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/back.4bpp.lz");
const u32 gMonShinyPalette_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/shiny.gbapal.lz");
const u8 gMonIcon_Groudon[] = INCBIN_U8("graphics/pokemon/groudon/icon.4bpp");
const u8 gMonFootprint_Groudon[] = INCBIN_U8("graphics/pokemon/groudon/footprint.1bpp");

const u32 gMonFrontPic_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/front.4bpp.lz");
const u32 gMonPalette_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/normal.gbapal.lz");
const u32 gMonBackPic_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/back.4bpp.lz");
const u32 gMonShinyPalette_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/shiny.gbapal.lz");
const u8 gMonIcon_Rayquaza[] = INCBIN_U8("graphics/pokemon/rayquaza/icon.4bpp");
const u8 gMonFootprint_Rayquaza[] = INCBIN_U8("graphics/pokemon/rayquaza/footprint.1bpp");

const u32 gMonFrontPic_Latias[] = INCBIN_U32("graphics/pokemon/latias/front.4bpp.lz");
const u32 gMonPalette_Latias[] = INCBIN_U32("graphics/pokemon/latias/normal.gbapal.lz");
const u32 gMonBackPic_Latias[] = INCBIN_U32("graphics/pokemon/latias/back.4bpp.lz");
const u32 gMonShinyPalette_Latias[] = INCBIN_U32("graphics/pokemon/latias/shiny.gbapal.lz");
const u8 gMonIcon_Latias[] = INCBIN_U8("graphics/pokemon/latias/icon.4bpp");
const u8 gMonFootprint_Latias[] = INCBIN_U8("graphics/pokemon/latias/footprint.1bpp");

const u32 gMonFrontPic_Latios[] = INCBIN_U32("graphics/pokemon/latios/front.4bpp.lz");
const u32 gMonPalette_Latios[] = INCBIN_U32("graphics/pokemon/latios/normal.gbapal.lz");
const u32 gMonBackPic_Latios[] = INCBIN_U32("graphics/pokemon/latios/back.4bpp.lz");
const u32 gMonShinyPalette_Latios[] = INCBIN_U32("graphics/pokemon/latios/shiny.gbapal.lz");
const u8 gMonIcon_Latios[] = INCBIN_U8("graphics/pokemon/latios/icon.4bpp");
const u8 gMonFootprint_Latios[] = INCBIN_U8("graphics/pokemon/latios/footprint.1bpp");

const u32 gMonFrontPic_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/front.4bpp.lz");
const u32 gMonPalette_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/normal.gbapal.lz");
const u32 gMonBackPic_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/back.4bpp.lz");
const u32 gMonShinyPalette_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/shiny.gbapal.lz");
const u8 gMonIcon_Jirachi[] = INCBIN_U8("graphics/pokemon/jirachi/icon.4bpp");
const u8 gMonFootprint_Jirachi[] = INCBIN_U8("graphics/pokemon/jirachi/footprint.1bpp");


const u32 gMonFrontPic_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/front.4bpp.lz");
const u32 gMonPalette_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/normal.gbapal.lz");
const u32 gMonBackPic_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/back.4bpp.lz");
const u32 gMonShinyPalette_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/shiny.gbapal.lz");
const u8 gMonIcon_Deoxys[] = INCBIN_U8("graphics/pokemon/deoxys/icon.4bpp", "graphics/pokemon/deoxys/icon_attack.4bpp");
const u8 gMonFootprint_Deoxys[] = INCBIN_U8("graphics/pokemon/deoxys/footprint.1bpp");
# 2717 "src/data/graphics/pokemon.h"
const u32 gMonFrontPic_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/front.4bpp.lz");
const u32 gMonPalette_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/normal.gbapal.lz");
const u32 gMonBackPic_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/back.4bpp.lz");
const u32 gMonShinyPalette_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/shiny.gbapal.lz");
const u8 gMonIcon_Chimecho[] = INCBIN_U8("graphics/pokemon/chimecho/icon.4bpp");
const u8 gMonFootprint_Chimecho[] = INCBIN_U8("graphics/pokemon/chimecho/footprint.1bpp");

const u32 gMonFrontPic_Egg[] = INCBIN_U32("graphics/pokemon/egg/front.4bpp.lz");
const u32 gMonPalette_Egg[] = INCBIN_U32("graphics/pokemon/egg/normal.gbapal.lz");

const u32 gMonFrontPic_UnownB[] = INCBIN_U32("graphics/pokemon/unown/b/front.4bpp.lz");
const u32 gMonBackPic_UnownB[] = INCBIN_U32("graphics/pokemon/unown/b/back.4bpp.lz");
const u8 gMonIcon_UnownB[] = INCBIN_U8("graphics/pokemon/unown/b/icon.4bpp");

const u32 gMonFrontPic_UnownC[] = INCBIN_U32("graphics/pokemon/unown/c/front.4bpp.lz");
const u32 gMonBackPic_UnownC[] = INCBIN_U32("graphics/pokemon/unown/c/back.4bpp.lz");
const u8 gMonIcon_UnownC[] = INCBIN_U8("graphics/pokemon/unown/c/icon.4bpp");

const u32 gMonFrontPic_UnownD[] = INCBIN_U32("graphics/pokemon/unown/d/front.4bpp.lz");
const u32 gMonBackPic_UnownD[] = INCBIN_U32("graphics/pokemon/unown/d/back.4bpp.lz");
const u8 gMonIcon_UnownD[] = INCBIN_U8("graphics/pokemon/unown/d/icon.4bpp");

const u32 gMonFrontPic_UnownE[] = INCBIN_U32("graphics/pokemon/unown/e/front.4bpp.lz");
const u32 gMonBackPic_UnownE[] = INCBIN_U32("graphics/pokemon/unown/e/back.4bpp.lz");
const u8 gMonIcon_UnownE[] = INCBIN_U8("graphics/pokemon/unown/e/icon.4bpp");

const u32 gMonFrontPic_UnownF[] = INCBIN_U32("graphics/pokemon/unown/f/front.4bpp.lz");
const u32 gMonBackPic_UnownF[] = INCBIN_U32("graphics/pokemon/unown/f/back.4bpp.lz");
const u8 gMonIcon_UnownF[] = INCBIN_U8("graphics/pokemon/unown/f/icon.4bpp");

const u32 gMonFrontPic_UnownG[] = INCBIN_U32("graphics/pokemon/unown/g/front.4bpp.lz");
const u32 gMonBackPic_UnownG[] = INCBIN_U32("graphics/pokemon/unown/g/back.4bpp.lz");
const u8 gMonIcon_UnownG[] = INCBIN_U8("graphics/pokemon/unown/g/icon.4bpp");

const u32 gMonFrontPic_UnownH[] = INCBIN_U32("graphics/pokemon/unown/h/front.4bpp.lz");
const u32 gMonBackPic_UnownH[] = INCBIN_U32("graphics/pokemon/unown/h/back.4bpp.lz");
const u8 gMonIcon_UnownH[] = INCBIN_U8("graphics/pokemon/unown/h/icon.4bpp");

const u32 gMonFrontPic_UnownI[] = INCBIN_U32("graphics/pokemon/unown/i/front.4bpp.lz");
const u32 gMonBackPic_UnownI[] = INCBIN_U32("graphics/pokemon/unown/i/back.4bpp.lz");
const u8 gMonIcon_UnownI[] = INCBIN_U8("graphics/pokemon/unown/i/icon.4bpp");

const u32 gMonFrontPic_UnownJ[] = INCBIN_U32("graphics/pokemon/unown/j/front.4bpp.lz");
const u32 gMonBackPic_UnownJ[] = INCBIN_U32("graphics/pokemon/unown/j/back.4bpp.lz");
const u8 gMonIcon_UnownJ[] = INCBIN_U8("graphics/pokemon/unown/j/icon.4bpp");

const u32 gMonFrontPic_UnownK[] = INCBIN_U32("graphics/pokemon/unown/k/front.4bpp.lz");
const u32 gMonBackPic_UnownK[] = INCBIN_U32("graphics/pokemon/unown/k/back.4bpp.lz");
const u8 gMonIcon_UnownK[] = INCBIN_U8("graphics/pokemon/unown/k/icon.4bpp");

const u32 gMonFrontPic_UnownL[] = INCBIN_U32("graphics/pokemon/unown/l/front.4bpp.lz");
const u32 gMonBackPic_UnownL[] = INCBIN_U32("graphics/pokemon/unown/l/back.4bpp.lz");
const u8 gMonIcon_UnownL[] = INCBIN_U8("graphics/pokemon/unown/l/icon.4bpp");

const u32 gMonFrontPic_UnownM[] = INCBIN_U32("graphics/pokemon/unown/m/front.4bpp.lz");
const u32 gMonBackPic_UnownM[] = INCBIN_U32("graphics/pokemon/unown/m/back.4bpp.lz");
const u8 gMonIcon_UnownM[] = INCBIN_U8("graphics/pokemon/unown/m/icon.4bpp");

const u32 gMonFrontPic_UnownN[] = INCBIN_U32("graphics/pokemon/unown/n/front.4bpp.lz");
const u32 gMonBackPic_UnownN[] = INCBIN_U32("graphics/pokemon/unown/n/back.4bpp.lz");
const u8 gMonIcon_UnownN[] = INCBIN_U8("graphics/pokemon/unown/n/icon.4bpp");

const u32 gMonFrontPic_UnownO[] = INCBIN_U32("graphics/pokemon/unown/o/front.4bpp.lz");
const u32 gMonBackPic_UnownO[] = INCBIN_U32("graphics/pokemon/unown/o/back.4bpp.lz");
const u8 gMonIcon_UnownO[] = INCBIN_U8("graphics/pokemon/unown/o/icon.4bpp");

const u32 gMonFrontPic_UnownP[] = INCBIN_U32("graphics/pokemon/unown/p/front.4bpp.lz");
const u32 gMonBackPic_UnownP[] = INCBIN_U32("graphics/pokemon/unown/p/back.4bpp.lz");
const u8 gMonIcon_UnownP[] = INCBIN_U8("graphics/pokemon/unown/p/icon.4bpp");

const u32 gMonFrontPic_UnownQ[] = INCBIN_U32("graphics/pokemon/unown/q/front.4bpp.lz");
const u32 gMonBackPic_UnownQ[] = INCBIN_U32("graphics/pokemon/unown/q/back.4bpp.lz");
const u8 gMonIcon_UnownQ[] = INCBIN_U8("graphics/pokemon/unown/q/icon.4bpp");

const u32 gMonFrontPic_UnownR[] = INCBIN_U32("graphics/pokemon/unown/r/front.4bpp.lz");
const u32 gMonBackPic_UnownR[] = INCBIN_U32("graphics/pokemon/unown/r/back.4bpp.lz");
const u8 gMonIcon_UnownR[] = INCBIN_U8("graphics/pokemon/unown/r/icon.4bpp");

const u32 gMonFrontPic_UnownS[] = INCBIN_U32("graphics/pokemon/unown/s/front.4bpp.lz");
const u32 gMonBackPic_UnownS[] = INCBIN_U32("graphics/pokemon/unown/s/back.4bpp.lz");
const u8 gMonIcon_UnownS[] = INCBIN_U8("graphics/pokemon/unown/s/icon.4bpp");

const u32 gMonFrontPic_UnownT[] = INCBIN_U32("graphics/pokemon/unown/t/front.4bpp.lz");
const u32 gMonBackPic_UnownT[] = INCBIN_U32("graphics/pokemon/unown/t/back.4bpp.lz");
const u8 gMonIcon_UnownT[] = INCBIN_U8("graphics/pokemon/unown/t/icon.4bpp");

const u32 gMonFrontPic_UnownU[] = INCBIN_U32("graphics/pokemon/unown/u/front.4bpp.lz");
const u32 gMonBackPic_UnownU[] = INCBIN_U32("graphics/pokemon/unown/u/back.4bpp.lz");
const u8 gMonIcon_UnownU[] = INCBIN_U8("graphics/pokemon/unown/u/icon.4bpp");

const u32 gMonFrontPic_UnownV[] = INCBIN_U32("graphics/pokemon/unown/v/front.4bpp.lz");
const u32 gMonBackPic_UnownV[] = INCBIN_U32("graphics/pokemon/unown/v/back.4bpp.lz");
const u8 gMonIcon_UnownV[] = INCBIN_U8("graphics/pokemon/unown/v/icon.4bpp");

const u32 gMonFrontPic_UnownW[] = INCBIN_U32("graphics/pokemon/unown/w/front.4bpp.lz");
const u32 gMonBackPic_UnownW[] = INCBIN_U32("graphics/pokemon/unown/w/back.4bpp.lz");
const u8 gMonIcon_UnownW[] = INCBIN_U8("graphics/pokemon/unown/w/icon.4bpp");

const u32 gMonFrontPic_UnownX[] = INCBIN_U32("graphics/pokemon/unown/x/front.4bpp.lz");
const u32 gMonBackPic_UnownX[] = INCBIN_U32("graphics/pokemon/unown/x/back.4bpp.lz");
const u8 gMonIcon_UnownX[] = INCBIN_U8("graphics/pokemon/unown/x/icon.4bpp");

const u32 gMonFrontPic_UnownY[] = INCBIN_U32("graphics/pokemon/unown/y/front.4bpp.lz");
const u32 gMonBackPic_UnownY[] = INCBIN_U32("graphics/pokemon/unown/y/back.4bpp.lz");
const u8 gMonIcon_UnownY[] = INCBIN_U8("graphics/pokemon/unown/y/icon.4bpp");

const u32 gMonFrontPic_UnownZ[] = INCBIN_U32("graphics/pokemon/unown/z/front.4bpp.lz");
const u32 gMonBackPic_UnownZ[] = INCBIN_U32("graphics/pokemon/unown/z/back.4bpp.lz");
const u8 gMonIcon_UnownZ[] = INCBIN_U8("graphics/pokemon/unown/z/icon.4bpp");

const u32 gMonFrontPic_UnownExclamationMark[] = INCBIN_U32("graphics/pokemon/unown/exclamation_mark/front.4bpp.lz");
const u32 gMonBackPic_UnownExclamationMark[] = INCBIN_U32("graphics/pokemon/unown/exclamation_mark/back.4bpp.lz");
const u8 gMonIcon_UnownExclamationMark[] = INCBIN_U8("graphics/pokemon/unown/exclamation_mark/icon.4bpp");

const u32 gMonFrontPic_UnownQuestionMark[] = INCBIN_U32("graphics/pokemon/unown/question_mark/front.4bpp.lz");
const u32 gMonBackPic_UnownQuestionMark[] = INCBIN_U32("graphics/pokemon/unown/question_mark/back.4bpp.lz");
const u8 gMonIcon_UnownQuestionMark[] = INCBIN_U8("graphics/pokemon/unown/question_mark/icon.4bpp");

const u32 gMonFrontPic_Litten[] = INCBIN_U32("graphics/pokemon/litten/front.4bpp.lz");
const u32 gMonPalette_Litten[] = INCBIN_U32("graphics/pokemon/litten/normal.gbapal.lz");
const u32 gMonBackPic_Litten[] = INCBIN_U32("graphics/pokemon/litten/back.4bpp.lz");
const u32 gMonShinyPalette_Litten[] = INCBIN_U32("graphics/pokemon/litten/shiny.gbapal.lz");
const u8 gMonIcon_Litten[] = INCBIN_U8("graphics/pokemon/litten/icon.4bpp");
const u8 gMonFootprint_Litten[] = INCBIN_U8("graphics/pokemon/litten/footprint.1bpp");
# 924 "src/graphics.c" 2
# 1 "src/data/graphics/trainers.h" 1
const u32 gTrainerFrontPic_AquaLeaderArchie[] = INCBIN_U32("graphics/trainers/front_pics/aqua_leader_archie_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaLeaderArchie[] = INCBIN_U32("graphics/trainers/palettes/aqua_leader_archie.gbapal.lz");

const u32 gTrainerFrontPic_AquaGruntM[] = INCBIN_U32("graphics/trainers/front_pics/aqua_grunt_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaGruntM[] = INCBIN_U32("graphics/trainers/palettes/aqua_grunt_m.gbapal.lz");

const u32 gTrainerFrontPic_AquaGruntF[] = INCBIN_U32("graphics/trainers/front_pics/aqua_grunt_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaGruntF[] = INCBIN_U32("graphics/trainers/palettes/aqua_grunt_f.gbapal.lz");

const u32 gTrainerFrontPic_RSAromaLady[] = INCBIN_U32("graphics/trainers/front_pics/rs_aroma_lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSAromaLady[] = INCBIN_U32("graphics/trainers/palettes/rs_aroma_lady.gbapal.lz");

const u32 gTrainerFrontPic_RSRuinManiac[] = INCBIN_U32("graphics/trainers/front_pics/rs_ruin_maniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSRuinManiac[] = INCBIN_U32("graphics/trainers/palettes/rs_ruin_maniac.gbapal.lz");

const u32 gTrainerFrontPic_Interviewer[] = INCBIN_U32("graphics/trainers/front_pics/interviewer_front_pic.4bpp.lz");
const u32 gTrainerPalette_Interviewer[] = INCBIN_U32("graphics/trainers/palettes/interviewer.gbapal.lz");

const u32 gTrainerFrontPic_RSTuberF[] = INCBIN_U32("graphics/trainers/front_pics/rs_tuber_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSTuberF[] = INCBIN_U32("graphics/trainers/palettes/rs_tuber_f.gbapal.lz");

const u32 gTrainerFrontPic_TuberM[] = INCBIN_U32("graphics/trainers/front_pics/tuber_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_TuberM[] = INCBIN_U32("graphics/trainers/palettes/tuber_m.gbapal.lz");

const u32 gTrainerFrontPic_RSCooltrainerM[] = INCBIN_U32("graphics/trainers/front_pics/rs_cool_trainer_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSCooltrainerM[] = INCBIN_U32("graphics/trainers/palettes/rs_cool_trainer_m.gbapal.lz");

const u32 gTrainerFrontPic_RSCooltrainerF[] = INCBIN_U32("graphics/trainers/front_pics/rs_cool_trainer_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSCooltrainerF[] = INCBIN_U32("graphics/trainers/palettes/rs_cool_trainer_f.gbapal.lz");

const u32 gTrainerFrontPic_HexManiac[] = INCBIN_U32("graphics/trainers/front_pics/hex_maniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_HexManiac[] = INCBIN_U32("graphics/trainers/palettes/hex_maniac.gbapal.lz");

const u32 gTrainerFrontPic_RSLady[] = INCBIN_U32("graphics/trainers/front_pics/rs_lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSLady[] = INCBIN_U32("graphics/trainers/palettes/rs_lady.gbapal.lz");

const u32 gTrainerFrontPic_RSBeauty[] = INCBIN_U32("graphics/trainers/front_pics/rs_beauty_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSBeauty[] = INCBIN_U32("graphics/trainers/palettes/rs_beauty.gbapal.lz");

const u32 gTrainerFrontPic_RichBoy[] = INCBIN_U32("graphics/trainers/front_pics/rich_boy_front_pic.4bpp.lz");
const u32 gTrainerPalette_RichBoy[] = INCBIN_U32("graphics/trainers/palettes/rich_boy.gbapal.lz");

const u32 gTrainerFrontPic_RSPokeManiac[] = INCBIN_U32("graphics/trainers/front_pics/rs_pokemaniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPokeManiac[] = INCBIN_U32("graphics/trainers/palettes/rs_pokemaniac.gbapal.lz");

const u32 gTrainerFrontPic_RSSwimmerM[] = INCBIN_U32("graphics/trainers/front_pics/rs_swimmer_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSSwimmerM[] = INCBIN_U32("graphics/trainers/palettes/rs_swimmer_m.gbapal.lz");

const u32 gTrainerFrontPic_RSBlackBelt[] = INCBIN_U32("graphics/trainers/front_pics/rs_black_belt_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSBlackBelt[] = INCBIN_U32("graphics/trainers/palettes/rs_black_belt.gbapal.lz");

const u32 gTrainerFrontPic_Guitarist[] = INCBIN_U32("graphics/trainers/front_pics/guitarist_front_pic.4bpp.lz");
const u32 gTrainerPalette_Guitarist[] = INCBIN_U32("graphics/trainers/palettes/guitarist.gbapal.lz");

const u32 gTrainerFrontPic_Kindler[] = INCBIN_U32("graphics/trainers/front_pics/kindler_front_pic.4bpp.lz");
const u32 gTrainerPalette_Kindler[] = INCBIN_U32("graphics/trainers/palettes/kindler.gbapal.lz");

const u32 gTrainerFrontPic_RSCamper[] = INCBIN_U32("graphics/trainers/front_pics/rs_camper_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSCamper[] = INCBIN_U32("graphics/trainers/palettes/rs_camper.gbapal.lz");

const u32 gTrainerFrontPic_BugManiac[] = INCBIN_U32("graphics/trainers/front_pics/bug_maniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_BugManiac[] = INCBIN_U32("graphics/trainers/palettes/bug_maniac.gbapal.lz");

const u32 gTrainerFrontPic_RSPsychicM[] = INCBIN_U32("graphics/trainers/front_pics/rs_psychic_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPsychicM[] = INCBIN_U32("graphics/trainers/palettes/rs_psychic_m.gbapal.lz");

const u32 gTrainerFrontPic_RSPsychicF[] = INCBIN_U32("graphics/trainers/front_pics/rs_psychic_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPsychicF[] = INCBIN_U32("graphics/trainers/palettes/rs_psychic_f.gbapal.lz");

const u32 gTrainerFrontPic_RSGentleman[] = INCBIN_U32("graphics/trainers/front_pics/rs_gentleman_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSGentleman[] = INCBIN_U32("graphics/trainers/palettes/rs_gentleman.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourSidney[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_sidney_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourSidney[] = INCBIN_U32("graphics/trainers/palettes/elite_four_sidney.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourPhoebe[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_phoebe_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourPhoebe[] = INCBIN_U32("graphics/trainers/palettes/elite_four_phoebe.gbapal.lz");

const u32 gTrainerFrontPic_LeaderRoxanne[] = INCBIN_U32("graphics/trainers/front_pics/leader_roxanne_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderRoxanne[] = INCBIN_U32("graphics/trainers/palettes/leader_roxanne.gbapal.lz");

const u32 gTrainerFrontPic_LeaderBrawly[] = INCBIN_U32("graphics/trainers/front_pics/leader_brawly_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderBrawly[] = INCBIN_U32("graphics/trainers/palettes/leader_brawly.gbapal.lz");

const u32 gTrainerFrontPic_LeaderTateAndLiza[] = INCBIN_U32("graphics/trainers/front_pics/leader_tate_and_liza_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderTateAndLiza[] = INCBIN_U32("graphics/trainers/palettes/leader_tate_and_liza.gbapal.lz");

const u32 gTrainerFrontPic_SchoolKidM[] = INCBIN_U32("graphics/trainers/front_pics/school_kid_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_SchoolKidM[] = INCBIN_U32("graphics/trainers/palettes/school_kid_m.gbapal.lz");

const u32 gTrainerFrontPic_SchoolKidF[] = INCBIN_U32("graphics/trainers/front_pics/school_kid_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_SchoolKidF[] = INCBIN_U32("graphics/trainers/palettes/school_kid_f.gbapal.lz");

const u32 gTrainerFrontPic_SrAndJr[] = INCBIN_U32("graphics/trainers/front_pics/sr_and_jr_front_pic.4bpp.lz");
const u32 gTrainerPalette_SrAndJr[] = INCBIN_U32("graphics/trainers/palettes/sr_and_jr.gbapal.lz");

const u32 gTrainerFrontPic_PokefanM[] = INCBIN_U32("graphics/trainers/front_pics/pokefan_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokefanM[] = INCBIN_U32("graphics/trainers/palettes/pokefan_m.gbapal.lz");

const u32 gTrainerFrontPic_PokefanF[] = INCBIN_U32("graphics/trainers/front_pics/pokefan_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokefanF[] = INCBIN_U32("graphics/trainers/palettes/pokefan_f.gbapal.lz");

const u32 gTrainerFrontPic_ExpertM[] = INCBIN_U32("graphics/trainers/front_pics/expert_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_ExpertM[] = INCBIN_U32("graphics/trainers/palettes/expert_m.gbapal.lz");

const u32 gTrainerFrontPic_ExpertF[] = INCBIN_U32("graphics/trainers/front_pics/expert_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_ExpertF[] = INCBIN_U32("graphics/trainers/palettes/expert_f.gbapal.lz");

const u32 gTrainerFrontPic_RSYoungster[] = INCBIN_U32("graphics/trainers/front_pics/rs_youngster_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSYoungster[] = INCBIN_U32("graphics/trainers/palettes/rs_youngster.gbapal.lz");

const u32 gTrainerFrontPic_ChampionSteven[] = INCBIN_U32("graphics/trainers/front_pics/champion_steven_front_pic.4bpp.lz");
const u32 gTrainerPalette_ChampionSteven[] = INCBIN_U32("graphics/trainers/palettes/champion_steven.gbapal.lz");

const u32 gTrainerFrontPic_RSFisherman[] = INCBIN_U32("graphics/trainers/front_pics/rs_fisherman_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSFisherman[] = INCBIN_U32("graphics/trainers/palettes/rs_fisherman.gbapal.lz");

const u32 gTrainerFrontPic_CyclingTriathleteM[] = INCBIN_U32("graphics/trainers/front_pics/cycling_triathlete_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_CyclingTriathleteM[] = INCBIN_U32("graphics/trainers/palettes/cycling_triathlete_m.gbapal.lz");

const u32 gTrainerFrontPic_CyclingTriathleteF[] = INCBIN_U32("graphics/trainers/front_pics/cycling_triathlete_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_CyclingTriathleteF[] = INCBIN_U32("graphics/trainers/palettes/cycling_triathlete_f.gbapal.lz");

const u32 gTrainerFrontPic_RunningTriathleteM[] = INCBIN_U32("graphics/trainers/front_pics/running_triathlete_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RunningTriathleteM[] = INCBIN_U32("graphics/trainers/palettes/running_triathlete_m.gbapal.lz");

const u32 gTrainerFrontPic_RunningTriathleteF[] = INCBIN_U32("graphics/trainers/front_pics/running_triathlete_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RunningTriathleteF[] = INCBIN_U32("graphics/trainers/palettes/running_triathlete_f.gbapal.lz");

const u32 gTrainerFrontPic_SwimmingTriathleteM[] = INCBIN_U32("graphics/trainers/front_pics/swimming_triathlete_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmingTriathleteM[] = INCBIN_U32("graphics/trainers/palettes/swimming_triathlete_m.gbapal.lz");

const u32 gTrainerFrontPic_SwimmingTriathleteF[] = INCBIN_U32("graphics/trainers/front_pics/swimming_triathlete_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmingTriathleteF[] = INCBIN_U32("graphics/trainers/palettes/swimming_triathlete_f.gbapal.lz");

const u32 gTrainerFrontPic_DragonTamer[] = INCBIN_U32("graphics/trainers/front_pics/dragon_tamer_front_pic.4bpp.lz");
const u32 gTrainerPalette_DragonTamer[] = INCBIN_U32("graphics/trainers/palettes/dragon_tamer.gbapal.lz");

const u32 gTrainerFrontPic_RSBirdKeeper[] = INCBIN_U32("graphics/trainers/front_pics/rs_bird_keeper_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSBirdKeeper[] = INCBIN_U32("graphics/trainers/palettes/rs_bird_keeper.gbapal.lz");

const u32 gTrainerFrontPic_NinjaBoy[] = INCBIN_U32("graphics/trainers/front_pics/ninja_boy_front_pic.4bpp.lz");
const u32 gTrainerPalette_NinjaBoy[] = INCBIN_U32("graphics/trainers/palettes/ninja_boy.gbapal.lz");

const u32 gTrainerFrontPic_BattleGirl[] = INCBIN_U32("graphics/trainers/front_pics/battle_girl_front_pic.4bpp.lz");
const u32 gTrainerPalette_BattleGirl[] = INCBIN_U32("graphics/trainers/palettes/battle_girl.gbapal.lz");

const u32 gTrainerFrontPic_ParasolLady[] = INCBIN_U32("graphics/trainers/front_pics/parasol_lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_ParasolLady[] = INCBIN_U32("graphics/trainers/palettes/parasol_lady.gbapal.lz");

const u32 gTrainerFrontPic_RSSwimmerF[] = INCBIN_U32("graphics/trainers/front_pics/rs_swimmer_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSSwimmerF[] = INCBIN_U32("graphics/trainers/palettes/rs_swimmer_f.gbapal.lz");

const u32 gTrainerFrontPic_RSPicnicker[] = INCBIN_U32("graphics/trainers/front_pics/rs_picnicker_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPicnicker[] = INCBIN_U32("graphics/trainers/palettes/rs_picnicker.gbapal.lz");

const u32 gTrainerFrontPic_RSTwins[] = INCBIN_U32("graphics/trainers/front_pics/rs_twins_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSTwins[] = INCBIN_U32("graphics/trainers/palettes/rs_twins.gbapal.lz");

const u32 gTrainerFrontPic_RSSailor[] = INCBIN_U32("graphics/trainers/front_pics/rs_sailor_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSSailor[] = INCBIN_U32("graphics/trainers/palettes/rs_sailor.gbapal.lz");

const u32 gTrainerFrontPic_Collector[] = INCBIN_U32("graphics/trainers/front_pics/collector_front_pic.4bpp.lz");
const u32 gTrainerPalette_Collector[] = INCBIN_U32("graphics/trainers/palettes/collector.gbapal.lz");

const u32 gTrainerFrontPic_Wally[] = INCBIN_U32("graphics/trainers/front_pics/wally_front_pic.4bpp.lz");
const u32 gTrainerPalette_Wally[] = INCBIN_U32("graphics/trainers/palettes/wally.gbapal.lz");

const u32 gTrainerFrontPic_RSBrendan1[] = INCBIN_U32("graphics/trainers/front_pics/ruby_sapphire_brendan_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSBrendan1[] = INCBIN_U32("graphics/trainers/palettes/ruby_sapphire_brendan.gbapal.lz");

const u32 gTrainerFrontPic_RSMay1[] = INCBIN_U32("graphics/trainers/front_pics/ruby_sapphire_may_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSMay1[] = INCBIN_U32("graphics/trainers/palettes/ruby_sapphire_may.gbapal.lz");

const u32 gTrainerFrontPic_RSPokemonBreederM[] = INCBIN_U32("graphics/trainers/front_pics/rs_pokemon_breeder_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPokemonBreederM[] = INCBIN_U32("graphics/trainers/palettes/rs_pokemon_breeder_m.gbapal.lz");

const u32 gTrainerFrontPic_RSPokemonBreederF[] = INCBIN_U32("graphics/trainers/front_pics/rs_pokemon_breeder_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPokemonBreederF[] = INCBIN_U32("graphics/trainers/palettes/rs_pokemon_breeder_f.gbapal.lz");

const u32 gTrainerFrontPic_RSPokemonRangerM[] = INCBIN_U32("graphics/trainers/front_pics/rs_pokemon_ranger_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPokemonRangerM[] = INCBIN_U32("graphics/trainers/palettes/rs_pokemon_ranger_m.gbapal.lz");

const u32 gTrainerFrontPic_RSPokemonRangerF[] = INCBIN_U32("graphics/trainers/front_pics/rs_pokemon_ranger_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSPokemonRangerF[] = INCBIN_U32("graphics/trainers/palettes/rs_pokemon_ranger_f.gbapal.lz");

const u32 gTrainerFrontPic_MagmaLeaderMaxie[] = INCBIN_U32("graphics/trainers/front_pics/magma_leader_maxie_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaLeaderMaxie[] = INCBIN_U32("graphics/trainers/palettes/magma_leader_maxie.gbapal.lz");

const u32 gTrainerFrontPic_MagmaGruntM[] = INCBIN_U32("graphics/trainers/front_pics/magma_grunt_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaGruntM[] = INCBIN_U32("graphics/trainers/palettes/magma_grunt_m.gbapal.lz");

const u32 gTrainerFrontPic_MagmaGruntF[] = INCBIN_U32("graphics/trainers/front_pics/magma_grunt_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaGruntF[] = INCBIN_U32("graphics/trainers/palettes/magma_grunt_f.gbapal.lz");

const u32 gTrainerFrontPic_RSLass[] = INCBIN_U32("graphics/trainers/front_pics/rs_lass_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSLass[] = INCBIN_U32("graphics/trainers/palettes/rs_lass.gbapal.lz");

const u32 gTrainerFrontPic_RSBugCatcher[] = INCBIN_U32("graphics/trainers/front_pics/rs_bug_catcher_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSBugCatcher[] = INCBIN_U32("graphics/trainers/palettes/rs_bug_catcher.gbapal.lz");

const u32 gTrainerFrontPic_RSHiker[] = INCBIN_U32("graphics/trainers/front_pics/rs_hiker_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSHiker[] = INCBIN_U32("graphics/trainers/palettes/rs_hiker.gbapal.lz");

const u32 gTrainerFrontPic_RSYoungCouple[] = INCBIN_U32("graphics/trainers/front_pics/rs_young_couple_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSYoungCouple[] = INCBIN_U32("graphics/trainers/palettes/rs_young_couple.gbapal.lz");

const u32 gTrainerFrontPic_OldCouple[] = INCBIN_U32("graphics/trainers/front_pics/old_couple_front_pic.4bpp.lz");
const u32 gTrainerPalette_OldCouple[] = INCBIN_U32("graphics/trainers/palettes/old_couple.gbapal.lz");

const u32 gTrainerFrontPic_RSSisAndBro[] = INCBIN_U32("graphics/trainers/front_pics/rs_sis_and_bro_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSSisAndBro[] = INCBIN_U32("graphics/trainers/palettes/rs_sis_and_bro.gbapal.lz");

const u32 gTrainerFrontPic_AquaAdminM[] = INCBIN_U32("graphics/trainers/front_pics/aqua_admin_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaAdminM[] = INCBIN_U32("graphics/trainers/palettes/aqua_admin_m.gbapal.lz");

const u32 gTrainerFrontPic_AquaAdminF[] = INCBIN_U32("graphics/trainers/front_pics/aqua_admin_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaAdminF[] = INCBIN_U32("graphics/trainers/palettes/aqua_admin_f.gbapal.lz");

const u32 gTrainerFrontPic_MagmaAdminM[] = INCBIN_U32("graphics/trainers/front_pics/magma_admin_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaAdminM[] = INCBIN_U32("graphics/trainers/palettes/magma_admin_m.gbapal.lz");

const u32 gTrainerFrontPic_MagmaAdminF[] = INCBIN_U32("graphics/trainers/front_pics/magma_admin_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaAdminF[] = INCBIN_U32("graphics/trainers/palettes/magma_admin_f.gbapal.lz");

const u32 gTrainerFrontPic_LeaderWattson[] = INCBIN_U32("graphics/trainers/front_pics/leader_wattson_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderWattson[] = INCBIN_U32("graphics/trainers/palettes/leader_wattson.gbapal.lz");

const u32 gTrainerFrontPic_LeaderFlannery[] = INCBIN_U32("graphics/trainers/front_pics/leader_flannery_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderFlannery[] = INCBIN_U32("graphics/trainers/palettes/leader_flannery.gbapal.lz");

const u32 gTrainerFrontPic_LeaderNorman[] = INCBIN_U32("graphics/trainers/front_pics/leader_norman_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderNorman[] = INCBIN_U32("graphics/trainers/palettes/leader_norman.gbapal.lz");

const u32 gTrainerFrontPic_LeaderWinona[] = INCBIN_U32("graphics/trainers/front_pics/leader_winona_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderWinona[] = INCBIN_U32("graphics/trainers/palettes/leader_winona.gbapal.lz");

const u32 gTrainerFrontPic_LeaderWallace[] = INCBIN_U32("graphics/trainers/front_pics/leader_wallace_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderWallace[] = INCBIN_U32("graphics/trainers/palettes/leader_wallace.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourGlacia[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_glacia_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourGlacia[] = INCBIN_U32("graphics/trainers/palettes/elite_four_glacia.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourDrake[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_drake_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourDrake[] = INCBIN_U32("graphics/trainers/palettes/elite_four_drake.gbapal.lz");

const u32 gTrainerFrontPic_Youngster[] = INCBIN_U32("graphics/trainers/front_pics/youngster_front_pic.4bpp.lz");
const u32 gTrainerPalette_Youngster[] = INCBIN_U32("graphics/trainers/palettes/youngster.gbapal.lz");

const u32 gTrainerFrontPic_BugCatcher[] = INCBIN_U32("graphics/trainers/front_pics/bug_catcher_front_pic.4bpp.lz");
const u32 gTrainerPalette_BugCatcher[] = INCBIN_U32("graphics/trainers/palettes/bug_catcher.gbapal.lz");

const u32 gTrainerFrontPic_Lass[] = INCBIN_U32("graphics/trainers/front_pics/lass_front_pic.4bpp.lz");
const u32 gTrainerPalette_Lass[] = INCBIN_U32("graphics/trainers/palettes/lass.gbapal.lz");

const u32 gTrainerFrontPic_Sailor[] = INCBIN_U32("graphics/trainers/front_pics/sailor_front_pic.4bpp.lz");
const u32 gTrainerPalette_Sailor[] = INCBIN_U32("graphics/trainers/palettes/sailor.gbapal.lz");

const u32 gTrainerFrontPic_Camper[] = INCBIN_U32("graphics/trainers/front_pics/camper_front_pic.4bpp.lz");
const u32 gTrainerPalette_Camper[] = INCBIN_U32("graphics/trainers/palettes/camper.gbapal.lz");

const u32 gTrainerFrontPic_Picnicker[] = INCBIN_U32("graphics/trainers/front_pics/picnicker_front_pic.4bpp.lz");
const u32 gTrainerPalette_Picnicker[] = INCBIN_U32("graphics/trainers/palettes/picnicker.gbapal.lz");

const u32 gTrainerFrontPic_PokeManiac[] = INCBIN_U32("graphics/trainers/front_pics/pokemaniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokeManiac[] = INCBIN_U32("graphics/trainers/palettes/pokemaniac.gbapal.lz");

const u32 gTrainerFrontPic_SuperNerd[] = INCBIN_U32("graphics/trainers/front_pics/super_nerd_front_pic.4bpp.lz");
const u32 gTrainerPalette_SuperNerd[] = INCBIN_U32("graphics/trainers/palettes/super_nerd.gbapal.lz");

const u32 gTrainerFrontPic_Hiker[] = INCBIN_U32("graphics/trainers/front_pics/hiker_front_pic.4bpp.lz");
const u32 gTrainerPalette_Hiker[] = INCBIN_U32("graphics/trainers/palettes/hiker.gbapal.lz");

const u32 gTrainerFrontPic_Biker[] = INCBIN_U32("graphics/trainers/front_pics/biker_front_pic.4bpp.lz");
const u32 gTrainerPalette_Biker[] = INCBIN_U32("graphics/trainers/palettes/biker.gbapal.lz");

const u32 gTrainerFrontPic_Burglar[] = INCBIN_U32("graphics/trainers/front_pics/burglar_front_pic.4bpp.lz");
const u32 gTrainerPalette_Burglar[] = INCBIN_U32("graphics/trainers/palettes/burglar.gbapal.lz");

const u32 gTrainerFrontPic_Engineer[] = INCBIN_U32("graphics/trainers/front_pics/engineer_front_pic.4bpp.lz");
const u32 gTrainerPalette_Engineer[] = INCBIN_U32("graphics/trainers/palettes/engineer.gbapal.lz");

const u32 gTrainerFrontPic_Fisherman[] = INCBIN_U32("graphics/trainers/front_pics/fisherman_front_pic.4bpp.lz");
const u32 gTrainerPalette_Fisherman[] = INCBIN_U32("graphics/trainers/palettes/fisherman.gbapal.lz");

const u32 gTrainerFrontPic_SwimmerM[] = INCBIN_U32("graphics/trainers/front_pics/swimmer_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmerM[] = INCBIN_U32("graphics/trainers/palettes/swimmer_m.gbapal.lz");

const u32 gTrainerFrontPic_CueBall[] = INCBIN_U32("graphics/trainers/front_pics/cue_ball_front_pic.4bpp.lz");
const u32 gTrainerPalette_CueBall[] = INCBIN_U32("graphics/trainers/palettes/cue_ball.gbapal.lz");

const u32 gTrainerFrontPic_Gamer[] = INCBIN_U32("graphics/trainers/front_pics/gamer_front_pic.4bpp.lz");
const u32 gTrainerPalette_Gamer[] = INCBIN_U32("graphics/trainers/palettes/gamer.gbapal.lz");

const u32 gTrainerFrontPic_Beauty[] = INCBIN_U32("graphics/trainers/front_pics/beauty_front_pic.4bpp.lz");
const u32 gTrainerPalette_Beauty[] = INCBIN_U32("graphics/trainers/palettes/beauty.gbapal.lz");

const u32 gTrainerFrontPic_SwimmerF[] = INCBIN_U32("graphics/trainers/front_pics/swimmer_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmerF[] = INCBIN_U32("graphics/trainers/palettes/swimmer_f.gbapal.lz");

const u32 gTrainerFrontPic_PsychicM[] = INCBIN_U32("graphics/trainers/front_pics/psychic_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_PsychicM[] = INCBIN_U32("graphics/trainers/palettes/psychic_m.gbapal.lz");

const u32 gTrainerFrontPic_Rocker[] = INCBIN_U32("graphics/trainers/front_pics/rocker_front_pic.4bpp.lz");
const u32 gTrainerPalette_Rocker[] = INCBIN_U32("graphics/trainers/palettes/rocker.gbapal.lz");

const u32 gTrainerFrontPic_Juggler[] = INCBIN_U32("graphics/trainers/front_pics/juggler_front_pic.4bpp.lz");
const u32 gTrainerPalette_Juggler[] = INCBIN_U32("graphics/trainers/palettes/juggler.gbapal.lz");

const u32 gTrainerFrontPic_Tamer[] = INCBIN_U32("graphics/trainers/front_pics/tamer_front_pic.4bpp.lz");
const u32 gTrainerPalette_Tamer[] = INCBIN_U32("graphics/trainers/palettes/tamer.gbapal.lz");

const u32 gTrainerFrontPic_BirdKeeper[] = INCBIN_U32("graphics/trainers/front_pics/bird_keeper_front_pic.4bpp.lz");
const u32 gTrainerPalette_BirdKeeper[] = INCBIN_U32("graphics/trainers/palettes/bird_keeper.gbapal.lz");

const u32 gTrainerFrontPic_BlackBelt[] = INCBIN_U32("graphics/trainers/front_pics/black_belt_front_pic.4bpp.lz");
const u32 gTrainerPalette_BlackBelt[] = INCBIN_U32("graphics/trainers/palettes/black_belt.gbapal.lz");

const u32 gTrainerFrontPic_RivalEarly[] = INCBIN_U32("graphics/trainers/front_pics/rival_early_front_pic.4bpp.lz");
const u32 gTrainerPalette_RivalEarly[] = INCBIN_U32("graphics/trainers/palettes/rival_early.gbapal.lz");

const u32 gTrainerFrontPic_Scientist[] = INCBIN_U32("graphics/trainers/front_pics/scientist_front_pic.4bpp.lz");
const u32 gTrainerPalette_Scientist[] = INCBIN_U32("graphics/trainers/palettes/scientist.gbapal.lz");

const u32 gTrainerFrontPic_LeaderGiovanni[] = INCBIN_U32("graphics/trainers/front_pics/leader_giovanni_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderGiovanni[] = INCBIN_U32("graphics/trainers/palettes/leader_giovanni.gbapal.lz");

const u32 gTrainerFrontPic_RocketGruntM[] = INCBIN_U32("graphics/trainers/front_pics/rocket_grunt_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RocketGruntM[] = INCBIN_U32("graphics/trainers/palettes/rocket_grunt_m.gbapal.lz");

const u32 gTrainerFrontPic_CooltrainerM[] = INCBIN_U32("graphics/trainers/front_pics/cool_trainer_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_CooltrainerM[] = INCBIN_U32("graphics/trainers/palettes/cool_trainer_m.gbapal.lz");

const u32 gTrainerFrontPic_CooltrainerF[] = INCBIN_U32("graphics/trainers/front_pics/cool_trainer_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_CooltrainerF[] = INCBIN_U32("graphics/trainers/palettes/cool_trainer_f.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourLorelei[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_lorelei_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourLorelei[] = INCBIN_U32("graphics/trainers/palettes/elite_four_lorelei.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourBruno[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_bruno_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourBruno[] = INCBIN_U32("graphics/trainers/palettes/elite_four_bruno.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourAgatha[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_agatha_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourAgatha[] = INCBIN_U32("graphics/trainers/palettes/elite_four_agatha.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourLance[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_lance_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourLance[] = INCBIN_U32("graphics/trainers/palettes/elite_four_lance.gbapal.lz");

const u32 gTrainerFrontPic_LeaderBrock[] = INCBIN_U32("graphics/trainers/front_pics/leader_brock_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderBrock[] = INCBIN_U32("graphics/trainers/palettes/leader_brock.gbapal.lz");

const u32 gTrainerFrontPic_LeaderMisty[] = INCBIN_U32("graphics/trainers/front_pics/leader_misty_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderMisty[] = INCBIN_U32("graphics/trainers/palettes/leader_misty.gbapal.lz");

const u32 gTrainerFrontPic_LeaderLtSurge[] = INCBIN_U32("graphics/trainers/front_pics/leader_lt_surge_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderLtSurge[] = INCBIN_U32("graphics/trainers/palettes/leader_lt_surge.gbapal.lz");

const u32 gTrainerFrontPic_LeaderErika[] = INCBIN_U32("graphics/trainers/front_pics/leader_erika_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderErika[] = INCBIN_U32("graphics/trainers/palettes/leader_erika.gbapal.lz");

const u32 gTrainerFrontPic_LeaderKoga[] = INCBIN_U32("graphics/trainers/front_pics/leader_koga_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderKoga[] = INCBIN_U32("graphics/trainers/palettes/leader_koga.gbapal.lz");

const u32 gTrainerFrontPic_LeaderBlaine[] = INCBIN_U32("graphics/trainers/front_pics/leader_blaine_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderBlaine[] = INCBIN_U32("graphics/trainers/palettes/leader_blaine.gbapal.lz");

const u32 gTrainerFrontPic_LeaderSabrina[] = INCBIN_U32("graphics/trainers/front_pics/leader_sabrina_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderSabrina[] = INCBIN_U32("graphics/trainers/palettes/leader_sabrina.gbapal.lz");

const u32 gTrainerFrontPic_Gentleman[] = INCBIN_U32("graphics/trainers/front_pics/gentleman_front_pic.4bpp.lz");
const u32 gTrainerPalette_Gentleman[] = INCBIN_U32("graphics/trainers/palettes/gentleman.gbapal.lz");

const u32 gTrainerFrontPic_RivalLate[] = INCBIN_U32("graphics/trainers/front_pics/rival_late_front_pic.4bpp.lz");
const u32 gTrainerPalette_RivalLate[] = INCBIN_U32("graphics/trainers/palettes/rival_late.gbapal.lz");

const u32 gTrainerFrontPic_ChampionRival[] = INCBIN_U32("graphics/trainers/front_pics/champion_rival_front_pic.4bpp.lz");
const u32 gTrainerPalette_ChampionRival[] = INCBIN_U32("graphics/trainers/palettes/champion_rival.gbapal.lz");

const u32 gTrainerFrontPic_Channeler[] = INCBIN_U32("graphics/trainers/front_pics/channeler_front_pic.4bpp.lz");
const u32 gTrainerPalette_Channeler[] = INCBIN_U32("graphics/trainers/palettes/channeler.gbapal.lz");

const u32 gTrainerFrontPic_Twins[] = INCBIN_U32("graphics/trainers/front_pics/twins_front_pic.4bpp.lz");
const u32 gTrainerPalette_Twins[] = INCBIN_U32("graphics/trainers/palettes/twins.gbapal.lz");

const u32 gTrainerFrontPic_CoolCouple[] = INCBIN_U32("graphics/trainers/front_pics/cool_couple_front_pic.4bpp.lz");
const u32 gTrainerPalette_CoolCouple[] = INCBIN_U32("graphics/trainers/palettes/cool_couple.gbapal.lz");

const u32 gTrainerFrontPic_YoungCouple[] = INCBIN_U32("graphics/trainers/front_pics/young_couple_front_pic.4bpp.lz");
const u32 gTrainerPalette_YoungCouple[] = INCBIN_U32("graphics/trainers/palettes/young_couple.gbapal.lz");

const u32 gTrainerFrontPic_CrushKin[] = INCBIN_U32("graphics/trainers/front_pics/crush_kin_front_pic.4bpp.lz");
const u32 gTrainerPalette_CrushKin[] = INCBIN_U32("graphics/trainers/palettes/crush_kin.gbapal.lz");

const u32 gTrainerFrontPic_SisAndBro[] = INCBIN_U32("graphics/trainers/front_pics/sis_and_bro_front_pic.4bpp.lz");
const u32 gTrainerPalette_SisAndBro[] = INCBIN_U32("graphics/trainers/palettes/sis_and_bro.gbapal.lz");

const u32 gTrainerFrontPic_ProfessorOak[] = INCBIN_U32("graphics/trainers/front_pics/professor_oak_front_pic.4bpp.lz");
const u32 gTrainerPalette_ProfessorOak[] = INCBIN_U32("graphics/trainers/palettes/professor_oak.gbapal.lz");

const u32 gTrainerFrontPic_RSBrendan2[] = INCBIN_U32("graphics/trainers/front_pics/ruby_sapphire_brendan_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSBrendan2[] = INCBIN_U32("graphics/trainers/palettes/ruby_sapphire_brendan.gbapal.lz");

const u32 gTrainerFrontPic_RSMay2[] = INCBIN_U32("graphics/trainers/front_pics/ruby_sapphire_may_front_pic.4bpp.lz");
const u32 gTrainerPalette_RSMay2[] = INCBIN_U32("graphics/trainers/palettes/ruby_sapphire_may.gbapal.lz");

const u32 gTrainerFrontPic_Red[] = INCBIN_U32("graphics/trainers/front_pics/red_front_pic.4bpp.lz");
const u32 gTrainerPalette_Red[] = INCBIN_U32("graphics/trainers/palettes/red.gbapal.lz");

const u32 gTrainerFrontPic_Leaf[] = INCBIN_U32("graphics/trainers/front_pics/leaf_front_pic.4bpp.lz");
const u32 gTrainerPalette_Leaf[] = INCBIN_U32("graphics/trainers/palettes/leaf.gbapal.lz");

const u32 gTrainerFrontPic_RocketGruntF[] = INCBIN_U32("graphics/trainers/front_pics/rocket_grunt_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RocketGruntF[] = INCBIN_U32("graphics/trainers/palettes/rocket_grunt_f.gbapal.lz");

const u32 gTrainerFrontPic_PsychicF[] = INCBIN_U32("graphics/trainers/front_pics/psychic_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_PsychicF[] = INCBIN_U32("graphics/trainers/palettes/psychic_f.gbapal.lz");

const u32 gTrainerFrontPic_CrushGirl[] = INCBIN_U32("graphics/trainers/front_pics/crush_girl_front_pic.4bpp.lz");
const u32 gTrainerPalette_CrushGirl[] = INCBIN_U32("graphics/trainers/palettes/crush_girl.gbapal.lz");

const u32 gTrainerFrontPic_TuberF[] = INCBIN_U32("graphics/trainers/front_pics/tuber_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_TuberF[] = INCBIN_U32("graphics/trainers/palettes/tuber_f.gbapal.lz");

const u32 gTrainerFrontPic_PokemonBreeder[] = INCBIN_U32("graphics/trainers/front_pics/pokemon_breeder_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokemonBreeder[] = INCBIN_U32("graphics/trainers/palettes/pokemon_breeder.gbapal.lz");

const u32 gTrainerFrontPic_PokemonRangerM[] = INCBIN_U32("graphics/trainers/front_pics/pokemon_ranger_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokemonRangerM[] = INCBIN_U32("graphics/trainers/palettes/pokemon_ranger_m.gbapal.lz");

const u32 gTrainerFrontPic_PokemonRangerF[] = INCBIN_U32("graphics/trainers/front_pics/pokemon_ranger_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokemonRangerF[] = INCBIN_U32("graphics/trainers/palettes/pokemon_ranger_f.gbapal.lz");

const u32 gTrainerFrontPic_AromaLady[] = INCBIN_U32("graphics/trainers/front_pics/aroma_lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_AromaLady[] = INCBIN_U32("graphics/trainers/palettes/aroma_lady.gbapal.lz");

const u32 gTrainerFrontPic_RuinManiac[] = INCBIN_U32("graphics/trainers/front_pics/ruin_maniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_RuinManiac[] = INCBIN_U32("graphics/trainers/palettes/ruin_maniac.gbapal.lz");

const u32 gTrainerFrontPic_Lady[] = INCBIN_U32("graphics/trainers/front_pics/lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_Lady[] = INCBIN_U32("graphics/trainers/palettes/lady.gbapal.lz");

const u32 gTrainerFrontPic_Painter[] = INCBIN_U32("graphics/trainers/front_pics/painter_front_pic.4bpp.lz");
const u32 gTrainerPalette_Painter[] = INCBIN_U32("graphics/trainers/palettes/painter.gbapal.lz");

const u8 gTrainerBackPic_Red[] = INCBIN_U8("graphics/trainers/back_pics/red_back_pic.4bpp");
const u8 gTrainerBackPic_Leaf[] = INCBIN_U8("graphics/trainers/back_pics/leaf_back_pic.4bpp");
const u8 gTrainerBackPic_Pokedude[] = INCBIN_U8("graphics/trainers/back_pics/pokedude_back_pic.4bpp");
const u8 gTrainerBackPic_OldMan[] = INCBIN_U8("graphics/trainers/back_pics/old_man_back_pic.4bpp");

const u8 gTrainerBackPic_RSBrendan[] = INCBIN_U8("graphics/trainers/back_pics/ruby_sapphire_brendan_back_pic.4bpp");
const u8 gTrainerBackPic_RSMay[] = INCBIN_U8("graphics/trainers/back_pics/ruby_sapphire_may_back_pic.4bpp");

const u32 gTrainerPalette_RedBackPic[] = INCBIN_U32("graphics/trainers/palettes/red_back_pic.gbapal.lz");
const u32 gTrainerPalette_LeafBackPic[] = INCBIN_U32("graphics/trainers/palettes/leaf_back_pic.gbapal.lz");
const u32 gTrainerPalette_PokedudeBackPic[] = INCBIN_U32("graphics/trainers/palettes/pokedude_back_pic.gbapal.lz");
const u32 gTrainerPalette_OldManBackPic[] = INCBIN_U32("graphics/trainers/palettes/old_man_back_pic.gbapal.lz");
# 925 "src/graphics.c" 2

const u8 gMonIcon_QuestionMark[] = INCBIN_U8("graphics/pokemon/question_mark/icon.4bpp");
const u8 gMonFootprint_QuestionMark[] = INCBIN_U8("graphics/pokemon/question_mark/footprint.1bpp");

const u32 gFile_graphics_battle_transitions_vs_frame_sheet[] = INCBIN_U32("graphics/battle_transitions/vs_frame.4bpp.lz");
const u32 gFile_graphics_battle_transitions_vs_frame_tilemap[] = INCBIN_U32("graphics/battle_transitions/vs_frame.bin.lz");
const u32 gFile_graphics_battle_transitions_vs_frame_palette[] = INCBIN_U32("graphics/battle_transitions/vs_frame.gbapal.lz");

const u32 gVsLettersGfx[] = INCBIN_U32("graphics/battle_transitions/vs.4bpp.lz");

# 1 "src/data/graphics/battle_terrain_unused.h" 1



const u32 gUnusedBattleTerrain_Plain_Palette[] = INCBIN_U32("graphics/battle_terrain/unused/plain.gbapal.lz");

const u32 gUnusedBattleTerrain_Building_Tiles_Sheet[] = INCBIN_U32("graphics/battle_terrain/unused/building/tiles.4bpp.lz");

const u32 gUnusedBattleTerrain_Stadium_Battle_Frontier_Palette[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/battle_frontier.gbapal.lz");

const u32 gUnusedBattleTerrain_Building_Map_Tilemap[] = INCBIN_U32("graphics/battle_terrain/unused/building/map.bin.lz");

const u32 gUnusedBattleTerrain_Stadium_Tiles_Sheet[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/tiles.4bpp.lz");
const u32 gUnusedBattleTerrain_Stadium_Map_Tilemap[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/map.bin.lz");

const u32 gUnusedBattleTerrain_Building_Palette[] = INCBIN_U32("graphics/battle_terrain/unused/building/palette.gbapal.lz");

const u32 gUnusedBattleTerrain_Kyogre_Palette[] = INCBIN_U32("graphics/battle_terrain/unused/kyogre.gbapal.lz");
const u32 gUnusedBattleTerrain_Groudon_Palette[] = INCBIN_U32("graphics/battle_terrain/unused/groudon.gbapal.lz");

const u32 gUnusedBattleTerrain_Building_Palette2[] = INCBIN_U32("graphics/battle_terrain/unused/building/palette2.gbapal.lz");
const u32 gUnusedBattleTerrain_Building_Palette3[] = INCBIN_U32("graphics/battle_terrain/unused/building/palette3.gbapal.lz");

const u32 gUnusedBattleTerrain_Stadium_Palette1[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/palette1.gbapal.lz");
const u32 gUnusedBattleTerrain_Stadium_Palette2[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/palette2.gbapal.lz");
const u32 gUnusedBattleTerrain_Stadium_Palette3[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/palette3.gbapal.lz");
const u32 gUnusedBattleTerrain_Stadium_Palette4[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/palette4.gbapal.lz");
const u32 gUnusedBattleTerrain_Stadium_Palette5[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/palette5.gbapal.lz");
const u32 gUnusedBattleTerrain_Stadium_Palette6[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/palette6.gbapal.lz");
const u32 gUnusedBattleTerrain_Stadium_Palette7[] = INCBIN_U32("graphics/battle_terrain/unused/stadium/palette7.gbapal.lz");

const u32 gUnusedBattleTerrain_Building_Anim_Tiles_Sheet[] = INCBIN_U32("graphics/battle_terrain/unused/building/anim_tiles.4bpp.lz");
const u32 gUnusedBattleTerrain_Building_Anim_Map_Tilemap[] = INCBIN_U32("graphics/battle_terrain/unused/building/anim_map.bin.lz");
# 936 "src/graphics.c" 2

const u32 gBattleAnimSpriteGfx_FlyingDirt[] = INCBIN_U32("graphics/battle_anims/sprites/flying_dirt.4bpp.lz");

const u32 gFile_graphics_battle_anims_backgrounds_sandstorm_brew_tilemap[] = INCBIN_U32("graphics/battle_anims/backgrounds/sandstorm_brew.bin.lz");
const u32 gFile_graphics_battle_anims_backgrounds_sandstorm_brew_sheet[] = INCBIN_U32("graphics/battle_anims/backgrounds/sandstorm_brew.4bpp.lz");

const u32 gBattleAnimSpritePal_FlyingDirt[] = INCBIN_U32("graphics/battle_anims/sprites/flying_dirt.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MetalSoundWaves[] = INCBIN_U32("graphics/battle_anims/sprites/metal_sound_waves.4bpp.lz");
const u32 gBattleAnimSpritePal_MetalSoundWaves[] = INCBIN_U32("graphics/battle_anims/sprites/metal_sound_waves.gbapal.lz");

const u32 gBattleAnimBgImage_Ice[] = INCBIN_U32("graphics/battle_anims/backgrounds/ice.4bpp.lz");
const u32 gBattleAnimBgPalette_Ice[] = INCBIN_U32("graphics/battle_anims/backgrounds/ice.gbapal.lz");
const u32 gBattleAnimBgTilemap_Ice[] = INCBIN_U32("graphics/battle_anims/backgrounds/ice.bin.lz");

const u32 gBattleAnimSpriteGfx_IcicleSpear[] = INCBIN_U32("graphics/battle_anims/sprites/icicle_spear.4bpp.lz");
const u32 gBattleAnimSpritePal_IcicleSpear[] = INCBIN_U32("graphics/battle_anims/sprites/icicle_spear.gbapal.lz");

const u32 gContestNextTurnGfx[] = INCBIN_U32("graphics/contest/next_turn.4bpp.lz");
const u8 gContestNextTurnNumbersGfx[] = INCBIN_U8("graphics/contest/next_turn_numbers.4bpp");
const u8 gContestNextTurnRandomGfx[] = INCBIN_U8("graphics/contest/next_turn_random.4bpp");

const u32 gBattleAnimSpriteGfx_GlowyRedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_red_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_GlowyRedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_red_orb.gbapal.lz");
const u32 gBattleAnimSpritePal_GlowyGreenOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_green_orb.gbapal.lz");
const u32 gBattleAnimSpritePal_SleepPowder[] = INCBIN_U32("graphics/battle_anims/sprites/sleep_powder.gbapal.lz");
const u32 gBattleAnimSpritePal_StunSpore[] = INCBIN_U32("graphics/battle_anims/sprites/stun_spore.gbapal.lz");

const u32 gContestApplauseGfx[] = INCBIN_U32("graphics/contest/applause.4bpp.lz");
const u8 gContestApplauseMeterGfx[] = INCBIN_U8("graphics/contest/applause_meter.4bpp");

const u16 gContestNextTurnPal[] = INCBIN_U16("graphics/contest/next_turn.gbapal");

const u32 gBattleAnimSpriteGfx_Splash[] = INCBIN_U32("graphics/battle_anims/sprites/splash.4bpp.lz");
const u32 gBattleAnimSpritePal_Splash[] = INCBIN_U32("graphics/battle_anims/sprites/splash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SweatBead[] = INCBIN_U32("graphics/battle_anims/sprites/sweat_bead.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SafariBait[] = INCBIN_U32("graphics/battle_anims/sprites/safari_bait.4bpp.lz");
const u32 gBattleAnimSpritePal_SafariBait[] = INCBIN_U32("graphics/battle_anims/sprites/safari_bait.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Gem1[] = INCBIN_U32("graphics/battle_anims/sprites/gem_1.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Gem2[] = INCBIN_U32("graphics/battle_anims/sprites/gem_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Gem3[] = INCBIN_U32("graphics/battle_anims/sprites/gem_3.4bpp.lz");

const u32 gBattleAnimSpritePal_Gem1[] = INCBIN_U32("graphics/battle_anims/sprites/gem_1.gbapal.lz");

const u32 gBattleAnimBgImage_InAir[] = INCBIN_U32("graphics/battle_anims/backgrounds/in_air.4bpp.lz");
const u32 gBattleAnimBgPalette_InAir[] = INCBIN_U32("graphics/battle_anims/backgrounds/in_air.gbapal.lz");
const u32 gBattleAnimBgTilemap_InAir[] = INCBIN_U32("graphics/battle_anims/backgrounds/in_air.bin.lz");

const u32 gBattleAnimSpriteGfx_Protect[] = INCBIN_U32("graphics/battle_anims/sprites/protect.4bpp.lz");
const u32 gBattleAnimSpritePal_Protect[] = INCBIN_U32("graphics/battle_anims/sprites/protect.gbapal.lz");

const u32 gBattleAnimBgPalette_MuddyWater[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_muddy.gbapal.lz");

const u32 gEnemyMonShadow_Gfx[] = INCBIN_U32("graphics/battle_interface/enemy_mon_shadow.4bpp.lz");

const u32 gBattleInterface_PartySummaryBar_Gfx[] = INCBIN_U32("graphics/battle_interface/party_summary_bar.4bpp.lz");

const u8 gMonIcon_Egg[] = INCBIN_U8("graphics/pokemon/egg/icon.4bpp");

const u32 gBattleAnimBgImage_Ghost[] = INCBIN_U32("graphics/battle_anims/backgrounds/ghost.4bpp.lz");
const u32 gBattleAnimBgPalette_Ghost[] = INCBIN_U32("graphics/battle_anims/backgrounds/ghost.gbapal.lz");
const u32 gBattleAnimBgTilemap_Ghost[] = INCBIN_U32("graphics/battle_anims/backgrounds/ghost.bin.lz");

const u32 gBattleAnimSpritePal_WhipHit[] = INCBIN_U32("graphics/battle_anims/sprites/whip_hit.gbapal.lz");

const u32 gBattleAnimBgPalette_SolarBeam[] = INCBIN_U32("graphics/battle_anims/backgrounds/solarbeam.gbapal.lz");
const u32 gBattleAnimBgTilemap_SolarBeam[] = INCBIN_U32("graphics/battle_anims/backgrounds/solarbeam.bin.lz");

const u32 gFile_graphics_berry_blender_center_sheet[] = INCBIN_U32("graphics/berry_blender/center.8bpp.lz");

const u32 gFile_graphics_berry_blender_outer_sheet[] = INCBIN_U32("graphics/berry_blender/outer.4bpp.lz");
const u32 gFile_graphics_berry_blender_outer_map_tilemap[] = INCBIN_U32("graphics/berry_blender/outer_map.bin.lz");

const u32 gBattleAnimBgPalette_Cosmic[] = INCBIN_U32("graphics/battle_anims/backgrounds/cosmic.gbapal.lz");
const u32 gBattleAnimBgImage_Cosmic[] = INCBIN_U32("graphics/battle_anims/backgrounds/cosmic.4bpp.lz");
const u32 gBattleAnimBgTilemap_Cosmic[] = INCBIN_U32("graphics/battle_anims/backgrounds/cosmic.bin.lz");

const u32 gBattleAnimSpritePal_SlamHit2[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_SlamHit2[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit_2.4bpp.lz");

const u32 gBattleAnimFogTilemap[] = INCBIN_U32("graphics/battle_anims/backgrounds/fog.bin.lz");

const u32 gBattleAnimSpritePal_WeatherBall[] = INCBIN_U32("graphics/battle_anims/sprites/weather_ball.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WeatherBall[] = INCBIN_U32("graphics/battle_anims/sprites/weather_ball.4bpp.lz");

const u32 gBattleAnimBgTilemap_ScaryFacePlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face_player.bin.lz");
const u32 gBattleAnimBgTilemap_ScaryFaceOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face_opponent.bin.lz");
const u32 gBattleAnimBgTilemap_ScaryFaceContest[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face_contest.bin.lz");

const u32 gBattleAnimSpriteGfx_Hail[] = INCBIN_U32("graphics/battle_anims/sprites/hail.4bpp.lz");
const u32 gBattleAnimSpritePal_Hail[] = INCBIN_U32("graphics/battle_anims/sprites/hail.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GreenSpike[] = INCBIN_U32("graphics/battle_anims/sprites/green_spike.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenSpike[] = INCBIN_U32("graphics/battle_anims/sprites/green_spike.gbapal.lz");
const u32 gBattleAnimSpritePal_WhiteCircleOfLight[] = INCBIN_U32("graphics/battle_anims/sprites/white_circle_of_light.gbapal.lz");
const u32 gBattleAnimSpritePal_GlowyBlueOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_blue_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Recycle[] = INCBIN_U32("graphics/battle_anims/sprites/recycle.4bpp.lz");
const u32 gBattleAnimSpritePal_Recycle[] = INCBIN_U32("graphics/battle_anims/sprites/recycle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RedParticles[] = INCBIN_U32("graphics/battle_anims/sprites/red_particles.4bpp.lz");
const u32 gBattleAnimSpritePal_RedParticles[] = INCBIN_U32("graphics/battle_anims/sprites/red_particles.gbapal.lz");

const u32 gBattleAnimSpriteGfx_DirtMound[] = INCBIN_U32("graphics/battle_anims/sprites/dirt_mound.4bpp.lz");
const u32 gBattleAnimSpritePal_DirtMound[] = INCBIN_U32("graphics/battle_anims/sprites/dirt_mound.gbapal.lz");

const u32 gBattleAnimBgImage_Fissure[] = INCBIN_U32("graphics/battle_anims/backgrounds/fissure.4bpp.lz");
const u32 gBattleAnimBgPalette_Fissure[] = INCBIN_U32("graphics/battle_anims/backgrounds/fissure.gbapal.lz");
const u32 gBattleAnimBgTilemap_Fissure[] = INCBIN_U32("graphics/battle_anims/backgrounds/fissure.bin.lz");

const u32 gBattleAnimSpriteGfx_Bird[] = INCBIN_U32("graphics/battle_anims/sprites/bird.4bpp.lz");
const u32 gBattleAnimSpritePal_Bird[] = INCBIN_U32("graphics/battle_anims/sprites/bird.gbapal.lz");

const u32 gBattleAnimSpriteGfx_CrossImpact[] = INCBIN_U32("graphics/battle_anims/sprites/cross_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_CrossImpact[] = INCBIN_U32("graphics/battle_anims/sprites/cross_impact.gbapal.lz");

const u32 gBattleAnimBgImage_Surf[] = INCBIN_U32("graphics/battle_anims/backgrounds/water.4bpp.lz");
const u32 gBattleAnimBgPalette_Surf[] = INCBIN_U32("graphics/battle_anims/backgrounds/water.gbapal.lz");

const u32 gBattleAnimBgTilemap_SurfOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_opponent.bin.lz");
const u32 gBattleAnimBgTilemap_SurfPlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_player.bin.lz");
const u32 gBattleAnimBgTilemap_SurfContest[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_contest.bin.lz");

const u32 gBattleAnimSpritePal_Slash2[] = INCBIN_U32("graphics/battle_anims/sprites/slash_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WhiteShadow[] = INCBIN_U32("graphics/battle_anims/sprites/white_shadow.4bpp.lz");
const u32 gBattleAnimSpritePal_WhiteShadow[] = INCBIN_U32("graphics/battle_anims/sprites/white_shadow.gbapal.lz");

const u32 gPartyMenuBg_Gfx[] = INCBIN_U32("graphics/party_menu/bg.4bpp.lz");
const u32 gPartyMenuBg_Pal[] = INCBIN_U32("graphics/party_menu/bg.gbapal.lz");
const u32 gPartyMenuBg_Tilemap[] = INCBIN_U32("graphics/party_menu/bg.bin.lz");

const u32 gPartyMenuPokeball_Gfx[] = INCBIN_U32("graphics/party_menu/pokeball.4bpp.lz");
const u32 gPartyMenuPokeballSmall_Gfx[] = INCBIN_U32("graphics/party_menu/pokeball_small.4bpp.lz");
const u32 gPartyMenuPokeball_Pal[] = INCBIN_U32("graphics/party_menu/pokeball.gbapal.lz");

const u32 gStatusGfx_Icons[] = INCBIN_U32("graphics/interface/status_icons.4bpp.lz");
const u32 gStatusPal_Icons[] = INCBIN_U32("graphics/interface/status_icons.gbapal.lz");

const u32 gBagBg_Gfx[] = INCBIN_U32("graphics/item_menu/bg.4bpp.lz");
const u32 gBagBg_Tilemap[] = INCBIN_U32("graphics/item_menu/bg.bin.lz");
const u32 gBagBg_ItemPC_Tilemap[] = INCBIN_U32("graphics/item_menu/bg_item_pc.bin.lz");
const u32 gBagBgPalette[] = INCBIN_U32("graphics/item_menu/bg.gbapal.lz");
const u32 gBagBgPalette_FemaleOverride[] = INCBIN_U32("graphics/item_menu/bg_female.gbapal.lz");

const u32 gBagMale_Gfx[] = INCBIN_U32("graphics/interface/bag_male.4bpp.lz");
const u32 gBagFemale_Gfx[] = INCBIN_U32("graphics/interface/bag_female.4bpp.lz");
const u32 gBag_Pal[] = INCBIN_U32("graphics/interface/bag.gbapal.lz");

const u32 gSwapLine_Gfx[] = INCBIN_U32("graphics/interface/bag_swap.4bpp.lz");
const u32 gSwapLine_Pal[] = INCBIN_U32("graphics/interface/bag_swap.gbapal.lz");

const u32 gTMCase_Gfx[] = INCBIN_U32("graphics/tm_case/tm_case.4bpp.lz");
const u32 gTMCaseMenu_Tilemap[] = INCBIN_U32("graphics/tm_case/menu.bin.lz");
const u32 gTMCase_Tilemap[] = INCBIN_U32("graphics/tm_case/tm_case.bin.lz");
const u32 gTMCaseMenu_Male_Pal[] = INCBIN_U32("graphics/tm_case/menu_male.gbapal.lz");
const u32 gTMCaseMenu_Female_Pal[] = INCBIN_U32("graphics/tm_case/menu_female.gbapal.lz");
const u32 gTMCaseDisc_Gfx[] = INCBIN_U32("graphics/tm_case/disc.4bpp.lz");
const u32 gTMCaseDiscTypes1_Pal[] = INCBIN_U32("graphics/tm_case/disc_types_1.gbapal.lz");
const u32 gTMCaseDiscTypes2_Pal[] = INCBIN_U32("graphics/tm_case/disc_types_2.gbapal.lz");

const u8 gItemPcTiles[] = INCBIN_U8("graphics/item_pc/bg.4bpp.lz");
const u32 gItemPcBgPals[] = INCBIN_U32("graphics/item_pc/bg.gbapal.lz");
const u8 gItemPcTilemap[] = INCBIN_U8("graphics/item_pc/bg.bin.lz");

const u32 gBerryPouchSpriteTiles[] = INCBIN_U32("graphics/berry_pouch/berry_pouch.4bpp.lz");
const u8 gBerryPouchBgGfx[] = INCBIN_U8("graphics/berry_pouch/background.4bpp.lz");
const u32 gBerryPouchBgPals[] = INCBIN_U32("graphics/berry_pouch/background.gbapal.lz");
const u32 gBerryPouchBgPal0FemaleOverride[] = INCBIN_U32("graphics/berry_pouch/background_female.gbapal.lz");
const u32 gBerryPouchSpritePalette[] = INCBIN_U32("graphics/berry_pouch/berry_pouch.gbapal.lz");
const u8 gBerryPouchBg1Tilemap[] = INCBIN_U8("graphics/berry_pouch/background.bin.lz");

const u32 gBuyMenuFrame_Gfx[] = INCBIN_U32("graphics/shop_menu/shop_menu.4bpp.lz");
const u32 gBuyMenuFrame_Tilemap[] = INCBIN_U32("graphics/shop_menu/shop_tilemap.bin.lz");
const u32 gBuyMenuFrame_TmHmTilemap[] = INCBIN_U32("graphics/shop_menu/shop_tm_hm_tilemap.bin.lz");
const u32 gBuyMenuFrame_Pal[] = INCBIN_U32("graphics/shop_menu/shop_menu.gbapal.lz");

const u8 gTeachyTv_Border_Gfx[] = INCBIN_U8("graphics/teachy_tv/border.4bpp.lz");
const u8 gTeachyTv_Gfx[] = INCBIN_U8("graphics/teachy_tv/tiles.4bpp.lz");
const u8 gTeachyTvScreen_Tilemap[] = INCBIN_U8("graphics/teachy_tv/screen.bin.lz");
const u8 gTeachyTvTitle_Tilemap[] = INCBIN_U8("graphics/teachy_tv/title.bin.lz");
const u32 gTeachyTv_Pal[] = INCBIN_U32("graphics/teachy_tv/tiles.gbapal.lz");

const u32 gUnusedGrayPalette[] = INCBIN_U32("graphics/unused/gray_palette.gbapal.lz");

# 1 "src/data/graphics/items.h" 1
const u32 gItemIcon_QuestionMark[] = INCBIN_U32("graphics/items/icons/question_mark.4bpp.lz");
const u32 gItemIconPalette_QuestionMark[] = INCBIN_U32("graphics/items/icon_palettes/question_mark.gbapal.lz");

const u32 gItemIcon_ReturnToFieldArrow[] = INCBIN_U32("graphics/items/icons/return_to_field_arrow.4bpp.lz");
const u32 gItemIconPalette_ReturnToFieldArrow[] = INCBIN_U32("graphics/items/icon_palettes/return_to_field_arrow.gbapal.lz");



const u32 gItemIcon_MasterBall[] = INCBIN_U32("graphics/items/icons/master_ball.4bpp.lz");
const u32 gItemIconPalette_MasterBall[] = INCBIN_U32("graphics/items/icon_palettes/master_ball.gbapal.lz");

const u32 gItemIcon_UltraBall[] = INCBIN_U32("graphics/items/icons/ultra_ball.4bpp.lz");
const u32 gItemIconPalette_UltraBall[] = INCBIN_U32("graphics/items/icon_palettes/ultra_ball.gbapal.lz");

const u32 gItemIcon_GreatBall[] = INCBIN_U32("graphics/items/icons/great_ball.4bpp.lz");
const u32 gItemIconPalette_GreatBall[] = INCBIN_U32("graphics/items/icon_palettes/great_ball.gbapal.lz");

const u32 gItemIcon_PokeBall[] = INCBIN_U32("graphics/items/icons/poke_ball.4bpp.lz");
const u32 gItemIconPalette_PokeBall[] = INCBIN_U32("graphics/items/icon_palettes/poke_ball.gbapal.lz");

const u32 gItemIcon_SafariBall[] = INCBIN_U32("graphics/items/icons/safari_ball.4bpp.lz");
const u32 gItemIconPalette_SafariBall[] = INCBIN_U32("graphics/items/icon_palettes/safari_ball.gbapal.lz");

const u32 gItemIcon_NetBall[] = INCBIN_U32("graphics/items/icons/net_ball.4bpp.lz");
const u32 gItemIconPalette_NetBall[] = INCBIN_U32("graphics/items/icon_palettes/net_ball.gbapal.lz");

const u32 gItemIcon_DiveBall[] = INCBIN_U32("graphics/items/icons/dive_ball.4bpp.lz");
const u32 gItemIconPalette_DiveBall[] = INCBIN_U32("graphics/items/icon_palettes/dive_ball.gbapal.lz");

const u32 gItemIcon_NestBall[] = INCBIN_U32("graphics/items/icons/nest_ball.4bpp.lz");
const u32 gItemIconPalette_NestBall[] = INCBIN_U32("graphics/items/icon_palettes/nest_ball.gbapal.lz");

const u32 gItemIcon_RepeatBall[] = INCBIN_U32("graphics/items/icons/repeat_ball.4bpp.lz");
const u32 gItemIconPalette_RepeatBall[] = INCBIN_U32("graphics/items/icon_palettes/repeat_ball.gbapal.lz");

const u32 gItemIcon_TimerBall[] = INCBIN_U32("graphics/items/icons/timer_ball.4bpp.lz");

const u32 gItemIcon_LuxuryBall[] = INCBIN_U32("graphics/items/icons/luxury_ball.4bpp.lz");
const u32 gItemIconPalette_LuxuryBall[] = INCBIN_U32("graphics/items/icon_palettes/luxury_ball.gbapal.lz");

const u32 gItemIcon_PremierBall[] = INCBIN_U32("graphics/items/icons/premier_ball.4bpp.lz");



const u32 gItemIcon_Potion[] = INCBIN_U32("graphics/items/icons/potion.4bpp.lz");
const u32 gItemIconPalette_Potion[] = INCBIN_U32("graphics/items/icon_palettes/potion.gbapal.lz");

const u32 gItemIcon_Antidote[] = INCBIN_U32("graphics/items/icons/antidote.4bpp.lz");
const u32 gItemIconPalette_Antidote[] = INCBIN_U32("graphics/items/icon_palettes/antidote.gbapal.lz");

const u32 gItemIconPalette_BurnHeal[] = INCBIN_U32("graphics/items/icon_palettes/burn_heal.gbapal.lz");
const u32 gItemIconPalette_IceHeal[] = INCBIN_U32("graphics/items/icon_palettes/ice_heal.gbapal.lz");
const u32 gItemIcon_StatusHeal[] = INCBIN_U32("graphics/items/icons/status_heal.4bpp.lz");
const u32 gItemIconPalette_Awakening[] = INCBIN_U32("graphics/items/icon_palettes/awakening.gbapal.lz");
const u32 gItemIconPalette_ParalyzeHeal[] = INCBIN_U32("graphics/items/icon_palettes/paralyze_heal.gbapal.lz");

const u32 gItemIcon_LargePotion[] = INCBIN_U32("graphics/items/icons/large_potion.4bpp.lz");
const u32 gItemIconPalette_FullRestore[] = INCBIN_U32("graphics/items/icon_palettes/full_restore.gbapal.lz");
const u32 gItemIconPalette_MaxPotion[] = INCBIN_U32("graphics/items/icon_palettes/max_potion.gbapal.lz");

const u32 gItemIconPalette_HyperPotion[] = INCBIN_U32("graphics/items/icon_palettes/hyper_potion.gbapal.lz");

const u32 gItemIconPalette_SuperPotion[] = INCBIN_U32("graphics/items/icon_palettes/super_potion.gbapal.lz");

const u32 gItemIcon_FullHeal[] = INCBIN_U32("graphics/items/icons/full_heal.4bpp.lz");
const u32 gItemIconPalette_FullHeal[] = INCBIN_U32("graphics/items/icon_palettes/full_heal.gbapal.lz");

const u32 gItemIcon_Revive[] = INCBIN_U32("graphics/items/icons/revive.4bpp.lz");

const u32 gItemIcon_MaxRevive[] = INCBIN_U32("graphics/items/icons/max_revive.4bpp.lz");

const u32 gItemIconPalette_Revive[] = INCBIN_U32("graphics/items/icon_palettes/revive.gbapal.lz");

const u32 gItemIcon_FreshWater[] = INCBIN_U32("graphics/items/icons/fresh_water.4bpp.lz");
const u32 gItemIconPalette_FreshWater[] = INCBIN_U32("graphics/items/icon_palettes/fresh_water.gbapal.lz");

const u32 gItemIcon_SodaPop[] = INCBIN_U32("graphics/items/icons/soda_pop.4bpp.lz");
const u32 gItemIconPalette_SodaPop[] = INCBIN_U32("graphics/items/icon_palettes/soda_pop.gbapal.lz");

const u32 gItemIcon_Lemonade[] = INCBIN_U32("graphics/items/icons/lemonade.4bpp.lz");
const u32 gItemIconPalette_Lemonade[] = INCBIN_U32("graphics/items/icon_palettes/lemonade.gbapal.lz");

const u32 gItemIcon_MoomooMilk[] = INCBIN_U32("graphics/items/icons/moomoo_milk.4bpp.lz");
const u32 gItemIconPalette_MoomooMilk[] = INCBIN_U32("graphics/items/icon_palettes/moomoo_milk.gbapal.lz");

const u32 gItemIcon_Powder[] = INCBIN_U32("graphics/items/icons/powder.4bpp.lz");
const u32 gItemIconPalette_EnergyPowder[] = INCBIN_U32("graphics/items/icon_palettes/energy_powder.gbapal.lz");

const u32 gItemIcon_EnergyRoot[] = INCBIN_U32("graphics/items/icons/energy_root.4bpp.lz");
const u32 gItemIconPalette_EnergyRoot[] = INCBIN_U32("graphics/items/icon_palettes/energy_root.gbapal.lz");

const u32 gItemIconPalette_HealPowder[] = INCBIN_U32("graphics/items/icon_palettes/heal_powder.gbapal.lz");

const u32 gItemIcon_RevivalHerb[] = INCBIN_U32("graphics/items/icons/revival_herb.4bpp.lz");
const u32 gItemIconPalette_RevivalHerb[] = INCBIN_U32("graphics/items/icon_palettes/revival_herb.gbapal.lz");

const u32 gItemIcon_Ether[] = INCBIN_U32("graphics/items/icons/ether.4bpp.lz");
const u32 gItemIconPalette_Ether[] = INCBIN_U32("graphics/items/icon_palettes/ether.gbapal.lz");
const u32 gItemIconPalette_MaxEther[] = INCBIN_U32("graphics/items/icon_palettes/max_ether.gbapal.lz");
const u32 gItemIconPalette_Elixir[] = INCBIN_U32("graphics/items/icon_palettes/elixir.gbapal.lz");
const u32 gItemIconPalette_MaxElixir[] = INCBIN_U32("graphics/items/icon_palettes/max_elixir.gbapal.lz");

const u32 gItemIcon_LavaCookie[] = INCBIN_U32("graphics/items/icons/lava_cookie.4bpp.lz");
const u32 gItemIconPalette_LavaCookieAndLetter[] = INCBIN_U32("graphics/items/icon_palettes/lava_cookie_and_letter.gbapal.lz");

const u32 gItemIcon_Flute[] = INCBIN_U32("graphics/items/icons/flute.4bpp.lz");
const u32 gItemIconPalette_BlueFlute[] = INCBIN_U32("graphics/items/icon_palettes/blue_flute.gbapal.lz");
const u32 gItemIconPalette_YellowFlute[] = INCBIN_U32("graphics/items/icon_palettes/yellow_flute.gbapal.lz");
const u32 gItemIconPalette_RedFlute[] = INCBIN_U32("graphics/items/icon_palettes/red_flute.gbapal.lz");
const u32 gItemIconPalette_BlackFlute[] = INCBIN_U32("graphics/items/icon_palettes/black_flute.gbapal.lz");
const u32 gItemIconPalette_WhiteFlute[] = INCBIN_U32("graphics/items/icon_palettes/white_flute.gbapal.lz");

const u32 gItemIcon_BerryJuice[] = INCBIN_U32("graphics/items/icons/berry_juice.4bpp.lz");
const u32 gItemIconPalette_BerryJuice[] = INCBIN_U32("graphics/items/icon_palettes/berry_juice.gbapal.lz");

const u32 gItemIcon_SacredAsh[] = INCBIN_U32("graphics/items/icons/sacred_ash.4bpp.lz");
const u32 gItemIconPalette_SacredAsh[] = INCBIN_U32("graphics/items/icon_palettes/sacred_ash.gbapal.lz");



const u32 gItemIconPalette_ShoalSalt[] = INCBIN_U32("graphics/items/icon_palettes/shoal_salt.gbapal.lz");

const u32 gItemIcon_ShoalShell[] = INCBIN_U32("graphics/items/icons/shoal_shell.4bpp.lz");
const u32 gItemIconPalette_Shell[] = INCBIN_U32("graphics/items/icon_palettes/shell.gbapal.lz");

const u32 gItemIcon_Shard[] = INCBIN_U32("graphics/items/icons/shard.4bpp.lz");
const u32 gItemIconPalette_RedShard[] = INCBIN_U32("graphics/items/icon_palettes/red_shard.gbapal.lz");
const u32 gItemIconPalette_BlueShard[] = INCBIN_U32("graphics/items/icon_palettes/blue_shard.gbapal.lz");
const u32 gItemIconPalette_YellowShard[] = INCBIN_U32("graphics/items/icon_palettes/yellow_shard.gbapal.lz");
const u32 gItemIconPalette_GreenShard[] = INCBIN_U32("graphics/items/icon_palettes/green_shard.gbapal.lz");



const u32 gItemIcon_HPUp[] = INCBIN_U32("graphics/items/icons/hp_up.4bpp.lz");
const u32 gItemIconPalette_HPUp[] = INCBIN_U32("graphics/items/icon_palettes/hp_up.gbapal.lz");

const u32 gItemIcon_Vitamin[] = INCBIN_U32("graphics/items/icons/vitamin.4bpp.lz");
const u32 gItemIconPalette_Protein[] = INCBIN_U32("graphics/items/icon_palettes/protein.gbapal.lz");
const u32 gItemIconPalette_Iron[] = INCBIN_U32("graphics/items/icon_palettes/iron.gbapal.lz");
const u32 gItemIconPalette_Carbos[] = INCBIN_U32("graphics/items/icon_palettes/carbos.gbapal.lz");
const u32 gItemIconPalette_Calcium[] = INCBIN_U32("graphics/items/icon_palettes/calcium.gbapal.lz");

const u32 gItemIcon_RareCandy[] = INCBIN_U32("graphics/items/icons/rare_candy.4bpp.lz");
const u32 gItemIconPalette_RareCandy[] = INCBIN_U32("graphics/items/icon_palettes/rare_candy.gbapal.lz");

const u32 gItemIcon_PPUp[] = INCBIN_U32("graphics/items/icons/pp_up.4bpp.lz");
const u32 gItemIconPalette_PPUp[] = INCBIN_U32("graphics/items/icon_palettes/pp_up.gbapal.lz");

const u32 gItemIconPalette_Zinc[] = INCBIN_U32("graphics/items/icon_palettes/zinc.gbapal.lz");

const u32 gItemIcon_PPMax[] = INCBIN_U32("graphics/items/icons/pp_max.4bpp.lz");
const u32 gItemIconPalette_PPMax[] = INCBIN_U32("graphics/items/icon_palettes/pp_max.gbapal.lz");



const u32 gItemIconPalette_GuardSpec[] = INCBIN_U32("graphics/items/icon_palettes/guard_spec.gbapal.lz");
const u32 gItemIconPalette_DireHit[] = INCBIN_U32("graphics/items/icon_palettes/dire_hit.gbapal.lz");
const u32 gItemIconPalette_XAttack[] = INCBIN_U32("graphics/items/icon_palettes/x_attack.gbapal.lz");
const u32 gItemIcon_BattleStatItem[] = INCBIN_U32("graphics/items/icons/battle_stat_item.4bpp.lz");
const u32 gItemIconPalette_XDefend[] = INCBIN_U32("graphics/items/icon_palettes/x_defend.gbapal.lz");
const u32 gItemIconPalette_XSpeed[] = INCBIN_U32("graphics/items/icon_palettes/x_speed.gbapal.lz");
const u32 gItemIconPalette_XAccuracy[] = INCBIN_U32("graphics/items/icon_palettes/x_accuracy.gbapal.lz");
const u32 gItemIconPalette_XSpecial[] = INCBIN_U32("graphics/items/icon_palettes/x_special.gbapal.lz");

const u32 gItemIcon_PokeDoll[] = INCBIN_U32("graphics/items/icons/poke_doll.4bpp.lz");
const u32 gItemIconPalette_PokeDoll[] = INCBIN_U32("graphics/items/icon_palettes/poke_doll.gbapal.lz");

const u32 gItemIcon_FluffyTail[] = INCBIN_U32("graphics/items/icons/fluffy_tail.4bpp.lz");
const u32 gItemIconPalette_FluffyTail[] = INCBIN_U32("graphics/items/icon_palettes/fluffy_tail.gbapal.lz");



const u32 gItemIcon_Repel[] = INCBIN_U32("graphics/items/icons/repel.4bpp.lz");
const u32 gItemIconPalette_SuperRepel[] = INCBIN_U32("graphics/items/icon_palettes/super_repel.gbapal.lz");
const u32 gItemIconPalette_MaxRepel[] = INCBIN_U32("graphics/items/icon_palettes/max_repel.gbapal.lz");

const u32 gItemIcon_EscapeRope[] = INCBIN_U32("graphics/items/icons/escape_rope.4bpp.lz");

const u32 gItemIconPalette_EscapeRope[] = INCBIN_U32("graphics/items/icon_palettes/escape_rope.gbapal.lz");

const u32 gItemIconPalette_Repel[] = INCBIN_U32("graphics/items/icon_palettes/repel.gbapal.lz");



const u32 gItemIcon_SunStone[] = INCBIN_U32("graphics/items/icons/sun_stone.4bpp.lz");
const u32 gItemIconPalette_SunStone[] = INCBIN_U32("graphics/items/icon_palettes/sun_stone.gbapal.lz");

const u32 gItemIcon_MoonStone[] = INCBIN_U32("graphics/items/icons/moon_stone.4bpp.lz");
const u32 gItemIconPalette_MoonStone[] = INCBIN_U32("graphics/items/icon_palettes/moon_stone.gbapal.lz");

const u32 gItemIcon_FireStone[] = INCBIN_U32("graphics/items/icons/fire_stone.4bpp.lz");
const u32 gItemIconPalette_FireStone[] = INCBIN_U32("graphics/items/icon_palettes/fire_stone.gbapal.lz");

const u32 gItemIcon_ThunderStone[] = INCBIN_U32("graphics/items/icons/thunder_stone.4bpp.lz");
const u32 gItemIconPalette_ThunderStone[] = INCBIN_U32("graphics/items/icon_palettes/thunder_stone.gbapal.lz");

const u32 gItemIcon_WaterStone[] = INCBIN_U32("graphics/items/icons/water_stone.4bpp.lz");
const u32 gItemIconPalette_WaterStone[] = INCBIN_U32("graphics/items/icon_palettes/water_stone.gbapal.lz");

const u32 gItemIcon_LeafStone[] = INCBIN_U32("graphics/items/icons/leaf_stone.4bpp.lz");
const u32 gItemIconPalette_LeafStone[] = INCBIN_U32("graphics/items/icon_palettes/leaf_stone.gbapal.lz");



const u32 gItemIcon_TinyMushroom[] = INCBIN_U32("graphics/items/icons/tiny_mushroom.4bpp.lz");
const u32 gItemIcon_BigMushroom[] = INCBIN_U32("graphics/items/icons/big_mushroom.4bpp.lz");
const u32 gItemIconPalette_Mushroom[] = INCBIN_U32("graphics/items/icon_palettes/mushroom.gbapal.lz");

const u32 gItemIcon_Pearl[] = INCBIN_U32("graphics/items/icons/pearl.4bpp.lz");
const u32 gItemIconPalette_Pearl[] = INCBIN_U32("graphics/items/icon_palettes/pearl.gbapal.lz");
const u32 gItemIcon_BigPearl[] = INCBIN_U32("graphics/items/icons/big_pearl.4bpp.lz");

const u32 gItemIcon_Stardust[] = INCBIN_U32("graphics/items/icons/stardust.4bpp.lz");
const u32 gItemIconPalette_Star[] = INCBIN_U32("graphics/items/icon_palettes/star.gbapal.lz");
const u32 gItemIcon_StarPiece[] = INCBIN_U32("graphics/items/icons/star_piece.4bpp.lz");

const u32 gItemIcon_Nugget[] = INCBIN_U32("graphics/items/icons/nugget.4bpp.lz");
const u32 gItemIconPalette_Nugget[] = INCBIN_U32("graphics/items/icon_palettes/nugget.gbapal.lz");

const u32 gItemIcon_HeartScale[] = INCBIN_U32("graphics/items/icons/heart_scale.4bpp.lz");
const u32 gItemIconPalette_HeartScale[] = INCBIN_U32("graphics/items/icon_palettes/heart_scale.gbapal.lz");



const u32 gItemIcon_OrangeMail[] = INCBIN_U32("graphics/items/icons/orange_mail.4bpp.lz");
const u32 gItemIconPalette_OrangeMail[] = INCBIN_U32("graphics/items/icon_palettes/orange_mail.gbapal.lz");

const u32 gItemIcon_HarborMail[] = INCBIN_U32("graphics/items/icons/harbor_mail.4bpp.lz");
const u32 gItemIconPalette_HarborMail[] = INCBIN_U32("graphics/items/icon_palettes/harbor_mail.gbapal.lz");

const u32 gItemIcon_GlitterMail[] = INCBIN_U32("graphics/items/icons/glitter_mail.4bpp.lz");
const u32 gItemIconPalette_GlitterMail[] = INCBIN_U32("graphics/items/icon_palettes/glitter_mail.gbapal.lz");

const u32 gItemIcon_MechMail[] = INCBIN_U32("graphics/items/icons/mech_mail.4bpp.lz");
const u32 gItemIconPalette_MechMail[] = INCBIN_U32("graphics/items/icon_palettes/mech_mail.gbapal.lz");

const u32 gItemIcon_WoodMail[] = INCBIN_U32("graphics/items/icons/wood_mail.4bpp.lz");
const u32 gItemIconPalette_WoodMail[] = INCBIN_U32("graphics/items/icon_palettes/wood_mail.gbapal.lz");

const u32 gItemIcon_WaveMail[] = INCBIN_U32("graphics/items/icons/wave_mail.4bpp.lz");
const u32 gItemIconPalette_WaveMail[] = INCBIN_U32("graphics/items/icon_palettes/wave_mail.gbapal.lz");

const u32 gItemIcon_BeadMail[] = INCBIN_U32("graphics/items/icons/bead_mail.4bpp.lz");
const u32 gItemIconPalette_BeadMail[] = INCBIN_U32("graphics/items/icon_palettes/bead_mail.gbapal.lz");

const u32 gItemIcon_ShadowMail[] = INCBIN_U32("graphics/items/icons/shadow_mail.4bpp.lz");
const u32 gItemIconPalette_ShadowMail[] = INCBIN_U32("graphics/items/icon_palettes/shadow_mail.gbapal.lz");

const u32 gItemIcon_TropicMail[] = INCBIN_U32("graphics/items/icons/tropic_mail.4bpp.lz");
const u32 gItemIconPalette_TropicMail[] = INCBIN_U32("graphics/items/icon_palettes/tropic_mail.gbapal.lz");

const u32 gItemIcon_DreamMail[] = INCBIN_U32("graphics/items/icons/dream_mail.4bpp.lz");
const u32 gItemIconPalette_DreamMail[] = INCBIN_U32("graphics/items/icon_palettes/dream_mail.gbapal.lz");

const u32 gItemIcon_FabMail[] = INCBIN_U32("graphics/items/icons/fab_mail.4bpp.lz");
const u32 gItemIconPalette_FabMail[] = INCBIN_U32("graphics/items/icon_palettes/fab_mail.gbapal.lz");

const u32 gItemIcon_RetroMail[] = INCBIN_U32("graphics/items/icons/retro_mail.4bpp.lz");
const u32 gItemIconPalette_RetroMail[] = INCBIN_U32("graphics/items/icon_palettes/retro_mail.gbapal.lz");



const u32 gItemIcon_CheriBerry[] = INCBIN_U32("graphics/items/icons/cheri_berry.4bpp.lz");
const u32 gItemIconPalette_CheriBerry[] = INCBIN_U32("graphics/items/icon_palettes/cheri_berry.gbapal.lz");

const u32 gItemIcon_ChestoBerry[] = INCBIN_U32("graphics/items/icons/chesto_berry.4bpp.lz");
const u32 gItemIconPalette_ChestoBerry[] = INCBIN_U32("graphics/items/icon_palettes/chesto_berry.gbapal.lz");

const u32 gItemIcon_PechaBerry[] = INCBIN_U32("graphics/items/icons/pecha_berry.4bpp.lz");
const u32 gItemIconPalette_PechaBerry[] = INCBIN_U32("graphics/items/icon_palettes/pecha_berry.gbapal.lz");

const u32 gItemIcon_RawstBerry[] = INCBIN_U32("graphics/items/icons/rawst_berry.4bpp.lz");
const u32 gItemIconPalette_RawstBerry[] = INCBIN_U32("graphics/items/icon_palettes/rawst_berry.gbapal.lz");

const u32 gItemIcon_AspearBerry[] = INCBIN_U32("graphics/items/icons/aspear_berry.4bpp.lz");
const u32 gItemIconPalette_AspearBerry[] = INCBIN_U32("graphics/items/icon_palettes/aspear_berry.gbapal.lz");

const u32 gItemIcon_LeppaBerry[] = INCBIN_U32("graphics/items/icons/leppa_berry.4bpp.lz");
const u32 gItemIconPalette_LeppaBerry[] = INCBIN_U32("graphics/items/icon_palettes/leppa_berry.gbapal.lz");

const u32 gItemIcon_OranBerry[] = INCBIN_U32("graphics/items/icons/oran_berry.4bpp.lz");
const u32 gItemIconPalette_OranBerry[] = INCBIN_U32("graphics/items/icon_palettes/oran_berry.gbapal.lz");

const u32 gItemIcon_PersimBerry[] = INCBIN_U32("graphics/items/icons/persim_berry.4bpp.lz");
const u32 gItemIconPalette_PersimBerry[] = INCBIN_U32("graphics/items/icon_palettes/persim_berry.gbapal.lz");

const u32 gItemIcon_LumBerry[] = INCBIN_U32("graphics/items/icons/lum_berry.4bpp.lz");
const u32 gItemIconPalette_LumBerry[] = INCBIN_U32("graphics/items/icon_palettes/lum_berry.gbapal.lz");

const u32 gItemIcon_SitrusBerry[] = INCBIN_U32("graphics/items/icons/sitrus_berry.4bpp.lz");
const u32 gItemIconPalette_SitrusBerry[] = INCBIN_U32("graphics/items/icon_palettes/sitrus_berry.gbapal.lz");

const u32 gItemIcon_FigyBerry[] = INCBIN_U32("graphics/items/icons/figy_berry.4bpp.lz");
const u32 gItemIconPalette_FigyBerry[] = INCBIN_U32("graphics/items/icon_palettes/figy_berry.gbapal.lz");

const u32 gItemIcon_WikiBerry[] = INCBIN_U32("graphics/items/icons/wiki_berry.4bpp.lz");
const u32 gItemIconPalette_WikiBerry[] = INCBIN_U32("graphics/items/icon_palettes/wiki_berry.gbapal.lz");

const u32 gItemIcon_MagoBerry[] = INCBIN_U32("graphics/items/icons/mago_berry.4bpp.lz");
const u32 gItemIconPalette_MagoBerry[] = INCBIN_U32("graphics/items/icon_palettes/mago_berry.gbapal.lz");

const u32 gItemIcon_AguavBerry[] = INCBIN_U32("graphics/items/icons/aguav_berry.4bpp.lz");
const u32 gItemIconPalette_AguavBerry[] = INCBIN_U32("graphics/items/icon_palettes/aguav_berry.gbapal.lz");

const u32 gItemIcon_IapapaBerry[] = INCBIN_U32("graphics/items/icons/iapapa_berry.4bpp.lz");
const u32 gItemIconPalette_IapapaBerry[] = INCBIN_U32("graphics/items/icon_palettes/iapapa_berry.gbapal.lz");

const u32 gItemIcon_RazzBerry[] = INCBIN_U32("graphics/items/icons/razz_berry.4bpp.lz");
const u32 gItemIconPalette_RazzBerry[] = INCBIN_U32("graphics/items/icon_palettes/razz_berry.gbapal.lz");

const u32 gItemIcon_BlukBerry[] = INCBIN_U32("graphics/items/icons/bluk_berry.4bpp.lz");
const u32 gItemIconPalette_BlukBerry[] = INCBIN_U32("graphics/items/icon_palettes/bluk_berry.gbapal.lz");

const u32 gItemIcon_NanabBerry[] = INCBIN_U32("graphics/items/icons/nanab_berry.4bpp.lz");
const u32 gItemIconPalette_NanabBerry[] = INCBIN_U32("graphics/items/icon_palettes/nanab_berry.gbapal.lz");

const u32 gItemIcon_WepearBerry[] = INCBIN_U32("graphics/items/icons/wepear_berry.4bpp.lz");
const u32 gItemIconPalette_WepearBerry[] = INCBIN_U32("graphics/items/icon_palettes/wepear_berry.gbapal.lz");

const u32 gItemIcon_PinapBerry[] = INCBIN_U32("graphics/items/icons/pinap_berry.4bpp.lz");
const u32 gItemIconPalette_PinapBerry[] = INCBIN_U32("graphics/items/icon_palettes/pinap_berry.gbapal.lz");

const u32 gItemIcon_PomegBerry[] = INCBIN_U32("graphics/items/icons/pomeg_berry.4bpp.lz");
const u32 gItemIconPalette_PomegBerry[] = INCBIN_U32("graphics/items/icon_palettes/pomeg_berry.gbapal.lz");

const u32 gItemIcon_KelpsyBerry[] = INCBIN_U32("graphics/items/icons/kelpsy_berry.4bpp.lz");
const u32 gItemIconPalette_KelpsyBerry[] = INCBIN_U32("graphics/items/icon_palettes/kelpsy_berry.gbapal.lz");

const u32 gItemIcon_QualotBerry[] = INCBIN_U32("graphics/items/icons/qualot_berry.4bpp.lz");
const u32 gItemIconPalette_QualotBerry[] = INCBIN_U32("graphics/items/icon_palettes/qualot_berry.gbapal.lz");

const u32 gItemIcon_HondewBerry[] = INCBIN_U32("graphics/items/icons/hondew_berry.4bpp.lz");
const u32 gItemIconPalette_HondewBerry[] = INCBIN_U32("graphics/items/icon_palettes/hondew_berry.gbapal.lz");

const u32 gItemIcon_GrepaBerry[] = INCBIN_U32("graphics/items/icons/grepa_berry.4bpp.lz");
const u32 gItemIconPalette_GrepaBerry[] = INCBIN_U32("graphics/items/icon_palettes/grepa_berry.gbapal.lz");

const u32 gItemIcon_TamatoBerry[] = INCBIN_U32("graphics/items/icons/tamato_berry.4bpp.lz");
const u32 gItemIconPalette_TamatoBerry[] = INCBIN_U32("graphics/items/icon_palettes/tamato_berry.gbapal.lz");

const u32 gItemIcon_CornnBerry[] = INCBIN_U32("graphics/items/icons/cornn_berry.4bpp.lz");
const u32 gItemIconPalette_CornnBerry[] = INCBIN_U32("graphics/items/icon_palettes/cornn_berry.gbapal.lz");

const u32 gItemIcon_MagostBerry[] = INCBIN_U32("graphics/items/icons/magost_berry.4bpp.lz");
const u32 gItemIconPalette_MagostBerry[] = INCBIN_U32("graphics/items/icon_palettes/magost_berry.gbapal.lz");

const u32 gItemIcon_RabutaBerry[] = INCBIN_U32("graphics/items/icons/rabuta_berry.4bpp.lz");
const u32 gItemIconPalette_RabutaBerry[] = INCBIN_U32("graphics/items/icon_palettes/rabuta_berry.gbapal.lz");

const u32 gItemIcon_NomelBerry[] = INCBIN_U32("graphics/items/icons/nomel_berry.4bpp.lz");
const u32 gItemIconPalette_NomelBerry[] = INCBIN_U32("graphics/items/icon_palettes/nomel_berry.gbapal.lz");

const u32 gItemIcon_SpelonBerry[] = INCBIN_U32("graphics/items/icons/spelon_berry.4bpp.lz");
const u32 gItemIconPalette_SpelonBerry[] = INCBIN_U32("graphics/items/icon_palettes/spelon_berry.gbapal.lz");

const u32 gItemIcon_PamtreBerry[] = INCBIN_U32("graphics/items/icons/pamtre_berry.4bpp.lz");
const u32 gItemIconPalette_PamtreBerry[] = INCBIN_U32("graphics/items/icon_palettes/pamtre_berry.gbapal.lz");

const u32 gItemIcon_WatmelBerry[] = INCBIN_U32("graphics/items/icons/watmel_berry.4bpp.lz");
const u32 gItemIconPalette_WatmelBerry[] = INCBIN_U32("graphics/items/icon_palettes/watmel_berry.gbapal.lz");

const u32 gItemIcon_DurinBerry[] = INCBIN_U32("graphics/items/icons/durin_berry.4bpp.lz");
const u32 gItemIconPalette_DurinBerry[] = INCBIN_U32("graphics/items/icon_palettes/durin_berry.gbapal.lz");

const u32 gItemIcon_BelueBerry[] = INCBIN_U32("graphics/items/icons/belue_berry.4bpp.lz");
const u32 gItemIconPalette_BelueBerry[] = INCBIN_U32("graphics/items/icon_palettes/belue_berry.gbapal.lz");

const u32 gItemIcon_LiechiBerry[] = INCBIN_U32("graphics/items/icons/liechi_berry.4bpp.lz");
const u32 gItemIconPalette_LiechiBerry[] = INCBIN_U32("graphics/items/icon_palettes/liechi_berry.gbapal.lz");

const u32 gItemIcon_GanlonBerry[] = INCBIN_U32("graphics/items/icons/ganlon_berry.4bpp.lz");
const u32 gItemIconPalette_GanlonBerry[] = INCBIN_U32("graphics/items/icon_palettes/ganlon_berry.gbapal.lz");

const u32 gItemIcon_SalacBerry[] = INCBIN_U32("graphics/items/icons/salac_berry.4bpp.lz");
const u32 gItemIconPalette_SalacBerry[] = INCBIN_U32("graphics/items/icon_palettes/salac_berry.gbapal.lz");

const u32 gItemIcon_PetayaBerry[] = INCBIN_U32("graphics/items/icons/petaya_berry.4bpp.lz");
const u32 gItemIconPalette_PetayaBerry[] = INCBIN_U32("graphics/items/icon_palettes/petaya_berry.gbapal.lz");

const u32 gItemIcon_ApicotBerry[] = INCBIN_U32("graphics/items/icons/apicot_berry.4bpp.lz");
const u32 gItemIconPalette_ApicotBerry[] = INCBIN_U32("graphics/items/icon_palettes/apicot_berry.gbapal.lz");

const u32 gItemIcon_LansatBerry[] = INCBIN_U32("graphics/items/icons/lansat_berry.4bpp.lz");
const u32 gItemIconPalette_LansatBerry[] = INCBIN_U32("graphics/items/icon_palettes/lansat_berry.gbapal.lz");

const u32 gItemIcon_StarfBerry[] = INCBIN_U32("graphics/items/icons/starf_berry.4bpp.lz");
const u32 gItemIconPalette_StarfBerry[] = INCBIN_U32("graphics/items/icon_palettes/starf_berry.gbapal.lz");

const u32 gItemIcon_EnigmaBerry[] = INCBIN_U32("graphics/items/icons/enigma_berry.4bpp.lz");
const u32 gItemIconPalette_EnigmaBerry[] = INCBIN_U32("graphics/items/icon_palettes/enigma_berry.gbapal.lz");



const u32 gItemIcon_BrightPowder[] = INCBIN_U32("graphics/items/icons/bright_powder.4bpp.lz");
const u32 gItemIconPalette_BrightPowder[] = INCBIN_U32("graphics/items/icon_palettes/bright_powder.gbapal.lz");

const u32 gItemIcon_InBattleHerb[] = INCBIN_U32("graphics/items/icons/in_battle_herb.4bpp.lz");
const u32 gItemIconPalette_WhiteHerb[] = INCBIN_U32("graphics/items/icon_palettes/white_herb.gbapal.lz");

const u32 gItemIcon_MachoBrace[] = INCBIN_U32("graphics/items/icons/macho_brace.4bpp.lz");
const u32 gItemIconPalette_MachoBrace[] = INCBIN_U32("graphics/items/icon_palettes/macho_brace.gbapal.lz");

const u32 gItemIcon_ExpShare[] = INCBIN_U32("graphics/items/icons/exp_share.4bpp.lz");
const u32 gItemIconPalette_ExpShare[] = INCBIN_U32("graphics/items/icon_palettes/exp_share.gbapal.lz");

const u32 gItemIcon_QuickClaw[] = INCBIN_U32("graphics/items/icons/quick_claw.4bpp.lz");
const u32 gItemIconPalette_QuickClaw[] = INCBIN_U32("graphics/items/icon_palettes/quick_claw.gbapal.lz");

const u32 gItemIcon_SootheBell[] = INCBIN_U32("graphics/items/icons/soothe_bell.4bpp.lz");
const u32 gItemIconPalette_SootheBell[] = INCBIN_U32("graphics/items/icon_palettes/soothe_bell.gbapal.lz");

const u32 gItemIconPalette_MentalHerb[] = INCBIN_U32("graphics/items/icon_palettes/mental_herb.gbapal.lz");

const u32 gItemIcon_ChoiceBand[] = INCBIN_U32("graphics/items/icons/choice_band.4bpp.lz");
const u32 gItemIconPalette_ChoiceBand[] = INCBIN_U32("graphics/items/icon_palettes/choice_band.gbapal.lz");

const u32 gItemIcon_KingsRock[] = INCBIN_U32("graphics/items/icons/kings_rock.4bpp.lz");
const u32 gItemIconPalette_KingsRock[] = INCBIN_U32("graphics/items/icon_palettes/kings_rock.gbapal.lz");

const u32 gItemIcon_SilverPowder[] = INCBIN_U32("graphics/items/icons/silver_powder.4bpp.lz");
const u32 gItemIconPalette_SilverPowder[] = INCBIN_U32("graphics/items/icon_palettes/silver_powder.gbapal.lz");

const u32 gItemIcon_AmuletCoin[] = INCBIN_U32("graphics/items/icons/amulet_coin.4bpp.lz");
const u32 gItemIconPalette_AmuletCoin[] = INCBIN_U32("graphics/items/icon_palettes/amulet_coin.gbapal.lz");

const u32 gItemIcon_CleanseTag[] = INCBIN_U32("graphics/items/icons/cleanse_tag.4bpp.lz");
const u32 gItemIconPalette_CleanseTag[] = INCBIN_U32("graphics/items/icon_palettes/cleanse_tag.gbapal.lz");

const u32 gItemIcon_SoulDew[] = INCBIN_U32("graphics/items/icons/soul_dew.4bpp.lz");
const u32 gItemIconPalette_SoulDew[] = INCBIN_U32("graphics/items/icon_palettes/soul_dew.gbapal.lz");

const u32 gItemIcon_DeepSeaTooth[] = INCBIN_U32("graphics/items/icons/deep_sea_tooth.4bpp.lz");
const u32 gItemIconPalette_DeepSeaTooth[] = INCBIN_U32("graphics/items/icon_palettes/deep_sea_tooth.gbapal.lz");

const u32 gItemIcon_DeepSeaScale[] = INCBIN_U32("graphics/items/icons/deep_sea_scale.4bpp.lz");
const u32 gItemIconPalette_DeepSeaScale[] = INCBIN_U32("graphics/items/icon_palettes/deep_sea_scale.gbapal.lz");

const u32 gItemIcon_SmokeBall[] = INCBIN_U32("graphics/items/icons/smoke_ball.4bpp.lz");
const u32 gItemIconPalette_SmokeBall[] = INCBIN_U32("graphics/items/icon_palettes/smoke_ball.gbapal.lz");

const u32 gItemIcon_Everstone[] = INCBIN_U32("graphics/items/icons/everstone.4bpp.lz");
const u32 gItemIconPalette_Everstone[] = INCBIN_U32("graphics/items/icon_palettes/everstone.gbapal.lz");

const u32 gItemIcon_FocusBand[] = INCBIN_U32("graphics/items/icons/focus_band.4bpp.lz");
const u32 gItemIconPalette_FocusBand[] = INCBIN_U32("graphics/items/icon_palettes/focus_band.gbapal.lz");

const u32 gItemIcon_LuckyEgg[] = INCBIN_U32("graphics/items/icons/lucky_egg.4bpp.lz");
const u32 gItemIconPalette_LuckyEgg[] = INCBIN_U32("graphics/items/icon_palettes/lucky_egg.gbapal.lz");

const u32 gItemIcon_ScopeLens[] = INCBIN_U32("graphics/items/icons/scope_lens.4bpp.lz");
const u32 gItemIconPalette_ScopeLens[] = INCBIN_U32("graphics/items/icon_palettes/scope_lens.gbapal.lz");

const u32 gItemIcon_MetalCoat[] = INCBIN_U32("graphics/items/icons/metal_coat.4bpp.lz");
const u32 gItemIconPalette_MetalCoat[] = INCBIN_U32("graphics/items/icon_palettes/metal_coat.gbapal.lz");

const u32 gItemIcon_Leftovers[] = INCBIN_U32("graphics/items/icons/leftovers.4bpp.lz");
const u32 gItemIconPalette_Leftovers[] = INCBIN_U32("graphics/items/icon_palettes/leftovers.gbapal.lz");

const u32 gItemIcon_DragonScale[] = INCBIN_U32("graphics/items/icons/dragon_scale.4bpp.lz");
const u32 gItemIconPalette_DragonScale[] = INCBIN_U32("graphics/items/icon_palettes/dragon_scale.gbapal.lz");

const u32 gItemIcon_LightBall[] = INCBIN_U32("graphics/items/icons/light_ball.4bpp.lz");
const u32 gItemIconPalette_LightBall[] = INCBIN_U32("graphics/items/icon_palettes/light_ball.gbapal.lz");

const u32 gItemIcon_SoftSand[] = INCBIN_U32("graphics/items/icons/soft_sand.4bpp.lz");
const u32 gItemIconPalette_SoftSand[] = INCBIN_U32("graphics/items/icon_palettes/soft_sand.gbapal.lz");

const u32 gItemIcon_HardStone[] = INCBIN_U32("graphics/items/icons/hard_stone.4bpp.lz");
const u32 gItemIconPalette_HardStone[] = INCBIN_U32("graphics/items/icon_palettes/hard_stone.gbapal.lz");

const u32 gItemIcon_MiracleSeed[] = INCBIN_U32("graphics/items/icons/miracle_seed.4bpp.lz");
const u32 gItemIconPalette_MiracleSeed[] = INCBIN_U32("graphics/items/icon_palettes/miracle_seed.gbapal.lz");

const u32 gItemIcon_BlackGlasses[] = INCBIN_U32("graphics/items/icons/black_glasses.4bpp.lz");
const u32 gItemIconPalette_BlackTypeEnhancingItem[] = INCBIN_U32("graphics/items/icon_palettes/black_type_enhancing_item.gbapal.lz");

const u32 gItemIcon_BlackBelt[] = INCBIN_U32("graphics/items/icons/black_belt.4bpp.lz");

const u32 gItemIcon_Magnet[] = INCBIN_U32("graphics/items/icons/magnet.4bpp.lz");
const u32 gItemIconPalette_Magnet[] = INCBIN_U32("graphics/items/icon_palettes/magnet.gbapal.lz");

const u32 gItemIcon_MysticWater[] = INCBIN_U32("graphics/items/icons/mystic_water.4bpp.lz");
const u32 gItemIconPalette_MysticWater[] = INCBIN_U32("graphics/items/icon_palettes/mystic_water.gbapal.lz");

const u32 gItemIcon_SharpBeak[] = INCBIN_U32("graphics/items/icons/sharp_beak.4bpp.lz");
const u32 gItemIconPalette_SharpBeak[] = INCBIN_U32("graphics/items/icon_palettes/sharp_beak.gbapal.lz");

const u32 gItemIcon_PoisonBarb[] = INCBIN_U32("graphics/items/icons/poison_barb.4bpp.lz");
const u32 gItemIconPalette_PoisonBarb[] = INCBIN_U32("graphics/items/icon_palettes/poison_barb.gbapal.lz");

const u32 gItemIcon_NeverMeltIce[] = INCBIN_U32("graphics/items/icons/never_melt_ice.4bpp.lz");
const u32 gItemIconPalette_NeverMeltIce[] = INCBIN_U32("graphics/items/icon_palettes/never_melt_ice.gbapal.lz");

const u32 gItemIcon_SpellTag[] = INCBIN_U32("graphics/items/icons/spell_tag.4bpp.lz");
const u32 gItemIconPalette_SpellTag[] = INCBIN_U32("graphics/items/icon_palettes/spell_tag.gbapal.lz");

const u32 gItemIcon_TwistedSpoon[] = INCBIN_U32("graphics/items/icons/twisted_spoon.4bpp.lz");
const u32 gItemIconPalette_TwistedSpoon[] = INCBIN_U32("graphics/items/icon_palettes/twisted_spoon.gbapal.lz");

const u32 gItemIcon_Charcoal[] = INCBIN_U32("graphics/items/icons/charcoal.4bpp.lz");
const u32 gItemIconPalette_Charcoal[] = INCBIN_U32("graphics/items/icon_palettes/charcoal.gbapal.lz");

const u32 gItemIcon_DragonFang[] = INCBIN_U32("graphics/items/icons/dragon_fang.4bpp.lz");
const u32 gItemIconPalette_DragonFang[] = INCBIN_U32("graphics/items/icon_palettes/dragon_fang.gbapal.lz");

const u32 gItemIcon_SilkScarf[] = INCBIN_U32("graphics/items/icons/silk_scarf.4bpp.lz");
const u32 gItemIconPalette_SilkScarf[] = INCBIN_U32("graphics/items/icon_palettes/silk_scarf.gbapal.lz");

const u32 gItemIcon_UpGrade[] = INCBIN_U32("graphics/items/icons/up_grade.4bpp.lz");
const u32 gItemIconPalette_UpGrade[] = INCBIN_U32("graphics/items/icon_palettes/up_grade.gbapal.lz");

const u32 gItemIcon_ShellBell[] = INCBIN_U32("graphics/items/icons/shell_bell.4bpp.lz");

const u32 gItemIcon_SeaIncense[] = INCBIN_U32("graphics/items/icons/sea_incense.4bpp.lz");
const u32 gItemIconPalette_SeaIncense[] = INCBIN_U32("graphics/items/icon_palettes/sea_incense.gbapal.lz");

const u32 gItemIcon_LaxIncense[] = INCBIN_U32("graphics/items/icons/lax_incense.4bpp.lz");
const u32 gItemIconPalette_LaxIncense[] = INCBIN_U32("graphics/items/icon_palettes/lax_incense.gbapal.lz");

const u32 gItemIcon_LuckyPunch[] = INCBIN_U32("graphics/items/icons/lucky_punch.4bpp.lz");
const u32 gItemIconPalette_LuckyPunch[] = INCBIN_U32("graphics/items/icon_palettes/lucky_punch.gbapal.lz");

const u32 gItemIcon_MetalPowder[] = INCBIN_U32("graphics/items/icons/metal_powder.4bpp.lz");
const u32 gItemIconPalette_MetalPowder[] = INCBIN_U32("graphics/items/icon_palettes/metal_powder.gbapal.lz");

const u32 gItemIcon_ThickClub[] = INCBIN_U32("graphics/items/icons/thick_club.4bpp.lz");
const u32 gItemIconPalette_ThickClub[] = INCBIN_U32("graphics/items/icon_palettes/thick_club.gbapal.lz");

const u32 gItemIcon_Stick[] = INCBIN_U32("graphics/items/icons/stick.4bpp.lz");
const u32 gItemIconPalette_Stick[] = INCBIN_U32("graphics/items/icon_palettes/stick.gbapal.lz");

const u32 gItemIcon_Scarf[] = INCBIN_U32("graphics/items/icons/scarf.4bpp.lz");
const u32 gItemIconPalette_RedScarf[] = INCBIN_U32("graphics/items/icon_palettes/red_scarf.gbapal.lz");
const u32 gItemIconPalette_BlueScarf[] = INCBIN_U32("graphics/items/icon_palettes/blue_scarf.gbapal.lz");
const u32 gItemIconPalette_PinkScarf[] = INCBIN_U32("graphics/items/icon_palettes/pink_scarf.gbapal.lz");
const u32 gItemIconPalette_GreenScarf[] = INCBIN_U32("graphics/items/icon_palettes/green_scarf.gbapal.lz");
const u32 gItemIconPalette_YellowScarf[] = INCBIN_U32("graphics/items/icon_palettes/yellow_scarf.gbapal.lz");



const u32 gItemIcon_MachBike[] = INCBIN_U32("graphics/items/icons/mach_bike.4bpp.lz");
const u32 gItemIconPalette_MachBike[] = INCBIN_U32("graphics/items/icon_palettes/mach_bike.gbapal.lz");

const u32 gItemIcon_CoinCase[] = INCBIN_U32("graphics/items/icons/coin_case.4bpp.lz");
const u32 gItemIconPalette_CoinCase[] = INCBIN_U32("graphics/items/icon_palettes/coin_case.gbapal.lz");

const u32 gItemIcon_Itemfinder[] = INCBIN_U32("graphics/items/icons/itemfinder.4bpp.lz");
const u32 gItemIconPalette_Itemfinder[] = INCBIN_U32("graphics/items/icon_palettes/itemfinder.gbapal.lz");

const u32 gItemIcon_OldRod[] = INCBIN_U32("graphics/items/icons/old_rod.4bpp.lz");
const u32 gItemIconPalette_OldRod[] = INCBIN_U32("graphics/items/icon_palettes/old_rod.gbapal.lz");

const u32 gItemIcon_GoodRod[] = INCBIN_U32("graphics/items/icons/good_rod.4bpp.lz");
const u32 gItemIconPalette_GoodRod[] = INCBIN_U32("graphics/items/icon_palettes/good_rod.gbapal.lz");

const u32 gItemIcon_SuperRod[] = INCBIN_U32("graphics/items/icons/super_rod.4bpp.lz");
const u32 gItemIconPalette_SuperRod[] = INCBIN_U32("graphics/items/icon_palettes/super_rod.gbapal.lz");

const u32 gItemIcon_SSTicket[] = INCBIN_U32("graphics/items/icons/ss_ticket.4bpp.lz");
const u32 gItemIconPalette_SSTicket[] = INCBIN_U32("graphics/items/icon_palettes/ss_ticket.gbapal.lz");

const u32 gItemIcon_ContestPass[] = INCBIN_U32("graphics/items/icons/contest_pass.4bpp.lz");
const u32 gItemIconPalette_ContestPass[] = INCBIN_U32("graphics/items/icon_palettes/contest_pass.gbapal.lz");

const u32 gItemIcon_WailmerPail[] = INCBIN_U32("graphics/items/icons/wailmer_pail.4bpp.lz");
const u32 gItemIconPalette_WailmerPail[] = INCBIN_U32("graphics/items/icon_palettes/wailmer_pail.gbapal.lz");

const u32 gItemIcon_DevonGoods[] = INCBIN_U32("graphics/items/icons/devon_goods.4bpp.lz");
const u32 gItemIconPalette_DevonGoods[] = INCBIN_U32("graphics/items/icon_palettes/devon_goods.gbapal.lz");

const u32 gItemIcon_SootSack[] = INCBIN_U32("graphics/items/icons/soot_sack.4bpp.lz");
const u32 gItemIconPalette_SootSack[] = INCBIN_U32("graphics/items/icon_palettes/soot_sack.gbapal.lz");

const u32 gItemIcon_BasementKey[] = INCBIN_U32("graphics/items/icons/basement_key.4bpp.lz");
const u32 gItemIconPalette_OldKey[] = INCBIN_U32("graphics/items/icon_palettes/old_key.gbapal.lz");

const u32 gItemIcon_AcroBike[] = INCBIN_U32("graphics/items/icons/acro_bike.4bpp.lz");
const u32 gItemIconPalette_AcroBike[] = INCBIN_U32("graphics/items/icon_palettes/acro_bike.gbapal.lz");

const u32 gItemIcon_PokeblockCase[] = INCBIN_U32("graphics/items/icons/pokeblock_case.4bpp.lz");
const u32 gItemIconPalette_PokeblockCase[] = INCBIN_U32("graphics/items/icon_palettes/pokeblock_case.gbapal.lz");

const u32 gItemIcon_Letter[] = INCBIN_U32("graphics/items/icons/letter.4bpp.lz");
const u32 gItemIcon_EonTicket[] = INCBIN_U32("graphics/items/icons/eon_ticket.4bpp.lz");

const u32 gItemIconPalette_EonTicket[] = INCBIN_U32("graphics/items/icon_palettes/eon_ticket.gbapal.lz");

const u32 gItemIcon_Orb[] = INCBIN_U32("graphics/items/icons/orb.4bpp.lz");
const u32 gItemIconPalette_RedOrb[] = INCBIN_U32("graphics/items/icon_palettes/red_orb.gbapal.lz");
const u32 gItemIconPalette_BlueOrb[] = INCBIN_U32("graphics/items/icon_palettes/blue_orb.gbapal.lz");

const u32 gItemIcon_Scanner[] = INCBIN_U32("graphics/items/icons/scanner.4bpp.lz");
const u32 gItemIconPalette_Scanner[] = INCBIN_U32("graphics/items/icon_palettes/scanner.gbapal.lz");

const u32 gItemIcon_GoGoggles[] = INCBIN_U32("graphics/items/icons/go_goggles.4bpp.lz");
const u32 gItemIconPalette_GoGoggles[] = INCBIN_U32("graphics/items/icon_palettes/go_goggles.gbapal.lz");

const u32 gItemIcon_Meteorite[] = INCBIN_U32("graphics/items/icons/meteorite.4bpp.lz");
const u32 gItemIconPalette_Meteorite[] = INCBIN_U32("graphics/items/icon_palettes/meteorite.gbapal.lz");

const u32 gItemIcon_Room1Key[] = INCBIN_U32("graphics/items/icons/room1_key.4bpp.lz");

const u32 gItemIcon_Room2Key[] = INCBIN_U32("graphics/items/icons/room2_key.4bpp.lz");

const u32 gItemIcon_Room4Key[] = INCBIN_U32("graphics/items/icons/room4_key.4bpp.lz");

const u32 gItemIcon_Room6Key[] = INCBIN_U32("graphics/items/icons/room6_key.4bpp.lz");

const u32 gItemIcon_StorageKey[] = INCBIN_U32("graphics/items/icons/storage_key.4bpp.lz");

const u32 gItemIcon_RootFossil[] = INCBIN_U32("graphics/items/icons/root_fossil.4bpp.lz");
const u32 gItemIconPalette_HoennFossil[] = INCBIN_U32("graphics/items/icon_palettes/hoenn_fossil.gbapal.lz");
const u32 gItemIcon_ClawFossil[] = INCBIN_U32("graphics/items/icons/claw_fossil.4bpp.lz");

const u32 gItemIcon_DevonScope[] = INCBIN_U32("graphics/items/icons/devon_scope.4bpp.lz");
const u32 gItemIconPalette_DevonScope[] = INCBIN_U32("graphics/items/icon_palettes/devon_scope.gbapal.lz");



const u32 gItemIcon_TMHM[] = INCBIN_U32("graphics/items/icons/tm_hm.4bpp.lz");

const u32 gItemIconPalette_FightingTMHM[] = INCBIN_U32("graphics/items/icon_palettes/fighting_tm_hm.gbapal.lz");
const u32 gItemIconPalette_DragonTMHM[] = INCBIN_U32("graphics/items/icon_palettes/dragon_tm_hm.gbapal.lz");
const u32 gItemIconPalette_WaterTMHM[] = INCBIN_U32("graphics/items/icon_palettes/water_tm_hm.gbapal.lz");
const u32 gItemIconPalette_PsychicTMHM[] = INCBIN_U32("graphics/items/icon_palettes/psychic_tm_hm.gbapal.lz");
const u32 gItemIconPalette_NormalTMHM[] = INCBIN_U32("graphics/items/icon_palettes/normal_tm_hm.gbapal.lz");
const u32 gItemIconPalette_PoisonTMHM[] = INCBIN_U32("graphics/items/icon_palettes/poison_tm_hm.gbapal.lz");
const u32 gItemIconPalette_IceTMHM[] = INCBIN_U32("graphics/items/icon_palettes/ice_tm_hm.gbapal.lz");
const u32 gItemIconPalette_GrassTMHM[] = INCBIN_U32("graphics/items/icon_palettes/grass_tm_hm.gbapal.lz");
const u32 gItemIconPalette_FireTMHM[] = INCBIN_U32("graphics/items/icon_palettes/fire_tm_hm.gbapal.lz");
const u32 gItemIconPalette_DarkTMHM[] = INCBIN_U32("graphics/items/icon_palettes/dark_tm_hm.gbapal.lz");
const u32 gItemIconPalette_SteelTMHM[] = INCBIN_U32("graphics/items/icon_palettes/steel_tm_hm.gbapal.lz");
const u32 gItemIconPalette_ElectricTMHM[] = INCBIN_U32("graphics/items/icon_palettes/electric_tm_hm.gbapal.lz");
const u32 gItemIconPalette_GroundTMHM[] = INCBIN_U32("graphics/items/icon_palettes/ground_tm_hm.gbapal.lz");
const u32 gItemIconPalette_GhostTMHM[] = INCBIN_U32("graphics/items/icon_palettes/ghost_tm_hm.gbapal.lz");
const u32 gItemIconPalette_RockTMHM[] = INCBIN_U32("graphics/items/icon_palettes/rock_tm_hm.gbapal.lz");
const u32 gItemIconPalette_FlyingTMHM[] = INCBIN_U32("graphics/items/icon_palettes/flying_tm_hm.gbapal.lz");



const u32 gItemIcon_OaksParcel[] = INCBIN_U32("graphics/items/icons/oaks_parcel.4bpp.lz");
const u32 gItemIconPalette_OaksParcel[] = INCBIN_U32("graphics/items/icon_palettes/oaks_parcel.gbapal.lz");

const u32 gItemIcon_PokeFlute[] = INCBIN_U32("graphics/items/icons/poke_flute.4bpp.lz");
const u32 gItemIconPalette_PokeFlute[] = INCBIN_U32("graphics/items/icon_palettes/poke_flute.gbapal.lz");

const u32 gItemIcon_SecretKey[] = INCBIN_U32("graphics/items/icons/secret_key.4bpp.lz");
const u32 gItemIconPalette_SecretKey[] = INCBIN_U32("graphics/items/icon_palettes/secret_key.gbapal.lz");

const u32 gItemIcon_BikeVoucher[] = INCBIN_U32("graphics/items/icons/bike_voucher.4bpp.lz");
const u32 gItemIconPalette_BikeVoucher[] = INCBIN_U32("graphics/items/icon_palettes/bike_voucher.gbapal.lz");

const u32 gItemIcon_GoldTeeth[] = INCBIN_U32("graphics/items/icons/gold_teeth.4bpp.lz");
const u32 gItemIconPalette_GoldTeeth[] = INCBIN_U32("graphics/items/icon_palettes/gold_teeth.gbapal.lz");

const u32 gItemIcon_OldAmber[] = INCBIN_U32("graphics/items/icons/old_amber.4bpp.lz");
const u32 gItemIconPalette_OldAmber[] = INCBIN_U32("graphics/items/icon_palettes/old_amber.gbapal.lz");

const u32 gItemIcon_CardKey[] = INCBIN_U32("graphics/items/icons/card_key.4bpp.lz");
const u32 gItemIconPalette_CardKey[] = INCBIN_U32("graphics/items/icon_palettes/card_key.gbapal.lz");

const u32 gItemIcon_LiftKey[] = INCBIN_U32("graphics/items/icons/lift_key.4bpp.lz");
const u32 gItemIconPalette_Key[] = INCBIN_U32("graphics/items/icon_palettes/key.gbapal.lz");

const u32 gItemIcon_HelixFossil[] = INCBIN_U32("graphics/items/icons/helix_fossil.4bpp.lz");
const u32 gItemIconPalette_KantoFossil[] = INCBIN_U32("graphics/items/icon_palettes/kanto_fossil.gbapal.lz");
const u32 gItemIcon_DomeFossil[] = INCBIN_U32("graphics/items/icons/dome_fossil.4bpp.lz");

const u32 gItemIcon_SilphScope[] = INCBIN_U32("graphics/items/icons/silph_scope.4bpp.lz");
const u32 gItemIconPalette_SilphScope[] = INCBIN_U32("graphics/items/icon_palettes/silph_scope.gbapal.lz");

const u32 gItemIcon_Bicycle[] = INCBIN_U32("graphics/items/icons/bicycle.4bpp.lz");
const u32 gItemIconPalette_Bicycle[] = INCBIN_U32("graphics/items/icon_palettes/bicycle.gbapal.lz");

const u32 gItemIcon_TownMap[] = INCBIN_U32("graphics/items/icons/town_map.4bpp.lz");
const u32 gItemIconPalette_TownMap[] = INCBIN_U32("graphics/items/icon_palettes/town_map.gbapal.lz");

const u32 gItemIcon_VSSeeker[] = INCBIN_U32("graphics/items/icons/vs_seeker.4bpp.lz");
const u32 gItemIconPalette_VSSeeker[] = INCBIN_U32("graphics/items/icon_palettes/vs_seeker.gbapal.lz");

const u32 gItemIcon_FameChecker[] = INCBIN_U32("graphics/items/icons/fame_checker.4bpp.lz");
const u32 gItemIconPalette_FameChecker[] = INCBIN_U32("graphics/items/icon_palettes/fame_checker.gbapal.lz");

const u32 gItemIcon_TMCase[] = INCBIN_U32("graphics/items/icons/tm_case.4bpp.lz");
const u32 gItemIconPalette_TMCase[] = INCBIN_U32("graphics/items/icon_palettes/tm_case.gbapal.lz");

const u32 gItemIcon_BerryPouch[] = INCBIN_U32("graphics/items/icons/berry_pouch.4bpp.lz");
const u32 gItemIconPalette_BerryPouch[] = INCBIN_U32("graphics/items/icon_palettes/berry_pouch.gbapal.lz");

const u32 gItemIcon_TeachyTV[] = INCBIN_U32("graphics/items/icons/teachy_tv.4bpp.lz");
const u32 gItemIconPalette_TeachyTV[] = INCBIN_U32("graphics/items/icon_palettes/teachy_tv.gbapal.lz");

const u32 gItemIcon_TriPass[] = INCBIN_U32("graphics/items/icons/tri_pass.4bpp.lz");
const u32 gItemIconPalette_TriPass[] = INCBIN_U32("graphics/items/icon_palettes/tri_pass.gbapal.lz");

const u32 gItemIcon_RainbowPass[] = INCBIN_U32("graphics/items/icons/rainbow_pass.4bpp.lz");
const u32 gItemIconPalette_RainbowPass[] = INCBIN_U32("graphics/items/icon_palettes/rainbow_pass.gbapal.lz");

const u32 gItemIcon_Tea[] = INCBIN_U32("graphics/items/icons/tea.4bpp.lz");
const u32 gItemIconPalette_Tea[] = INCBIN_U32("graphics/items/icon_palettes/tea.gbapal.lz");

const u32 gItemIcon_MysticTicket[] = INCBIN_U32("graphics/items/icons/mystic_ticket.4bpp.lz");
const u32 gItemIconPalette_MysticTicket[] = INCBIN_U32("graphics/items/icon_palettes/mystic_ticket.gbapal.lz");

const u32 gItemIcon_AuroraTicket[] = INCBIN_U32("graphics/items/icons/aurora_ticket.4bpp.lz");
const u32 gItemIconPalette_AuroraTicket[] = INCBIN_U32("graphics/items/icon_palettes/aurora_ticket.gbapal.lz");

const u32 gItemIcon_PowderJar[] = INCBIN_U32("graphics/items/icons/powder_jar.4bpp.lz");
const u32 gItemIconPalette_PowderJar[] = INCBIN_U32("graphics/items/icon_palettes/powder_jar.gbapal.lz");

const u32 gItemIconPalette_Ruby[] = INCBIN_U32("graphics/items/icon_palettes/ruby.gbapal.lz");
const u32 gItemIcon_Gem[] = INCBIN_U32("graphics/items/icons/gem.4bpp.lz");
const u32 gItemIconPalette_Sapphire[] = INCBIN_U32("graphics/items/icon_palettes/sapphire.gbapal.lz");
# 1125 "src/graphics.c" 2

const u32 gBattleAnimSpritePal_Shock3[] = INCBIN_U32("graphics/battle_anims/sprites/shock_3.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Shock3[] = INCBIN_U32("graphics/battle_anims/sprites/shock_3.4bpp.lz");

const u32 gBattleAnimSpritePal_WhiteFeather[] = INCBIN_U32("graphics/battle_anims/sprites/white_feather.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WhiteFeather[] = INCBIN_U32("graphics/battle_anims/sprites/white_feather.4bpp.lz");

const u32 gBattleAnimSpritePal_Sparkle6[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_6.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Sparkle6[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_6.4bpp.lz");

const u32 gGhostPalette[] = INCBIN_U32("graphics/pokemon/ghost/front.gbapal.lz");
const u32 gGhostFrontPic[] = INCBIN_U32("graphics/pokemon/ghost/front.4bpp.lz");

# 1 "src/data/graphics/mail.h" 1
const u16 gFile_graphics_mail_orange_palette_pal[] = INCBIN_U16("graphics/mail/orange/palette.gbapal");
const u16 gFile_graphics_mail_harbor_palette_pal[] = INCBIN_U16("graphics/mail/harbor/palette.gbapal");
const u16 gFile_graphics_mail_glitter_palette_pal[] = INCBIN_U16("graphics/mail/glitter/palette.gbapal");
const u16 gFile_graphics_mail_mech_palette_pal[] = INCBIN_U16("graphics/mail/mech/palette.gbapal");
const u16 gFile_graphics_mail_wood_palette_pal[] = INCBIN_U16("graphics/mail/wood/palette.gbapal");
const u16 gFile_graphics_mail_wave_palette_pal[] = INCBIN_U16("graphics/mail/wave/palette.gbapal");
const u16 gFile_graphics_mail_bead_palette_pal[] = INCBIN_U16("graphics/mail/bead/palette.gbapal");
const u16 gFile_graphics_mail_shadow_palette_pal[] = INCBIN_U16("graphics/mail/shadow/palette.gbapal");
const u16 gFile_graphics_mail_tropic_palette_pal[] = INCBIN_U16("graphics/mail/tropic/palette.gbapal");
const u16 gFile_graphics_mail_dream_palette_pal[] = INCBIN_U16("graphics/mail/dream/palette.gbapal");
const u16 gFile_graphics_mail_fab_palette_pal[] = INCBIN_U16("graphics/mail/fab/palette.gbapal");
const u16 gFile_graphics_mail_retro_palette_pal[] = INCBIN_U16("graphics/mail/retro/palette.gbapal");

const u32 gFile_graphics_mail_orange_tiles_sheet[] = INCBIN_U32("graphics/mail/orange/tiles.4bpp.lz");
const u32 gFile_graphics_mail_harbor_tiles_sheet[] = INCBIN_U32("graphics/mail/harbor/tiles.4bpp.lz");
const u32 gFile_graphics_mail_glitter_tiles_sheet[] = INCBIN_U32("graphics/mail/glitter/tiles.4bpp.lz");
const u32 gFile_graphics_mail_mech_tiles_sheet[] = INCBIN_U32("graphics/mail/mech/tiles.4bpp.lz");
const u32 gFile_graphics_mail_wood_tiles_sheet[] = INCBIN_U32("graphics/mail/wood/tiles.4bpp.lz");
const u32 gFile_graphics_mail_wave_tiles_sheet[] = INCBIN_U32("graphics/mail/wave/tiles.4bpp.lz");
const u32 gFile_graphics_mail_bead_tiles_sheet[] = INCBIN_U32("graphics/mail/bead/tiles.4bpp.lz");
const u32 gFile_graphics_mail_shadow_tiles_sheet[] = INCBIN_U32("graphics/mail/shadow/tiles.4bpp.lz");
const u32 gFile_graphics_mail_tropic_tiles_sheet[] = INCBIN_U32("graphics/mail/tropic/tiles.4bpp.lz");
const u32 gFile_graphics_mail_dream_tiles_sheet[] = INCBIN_U32("graphics/mail/dream/tiles.4bpp.lz");
const u32 gFile_graphics_mail_fab_tiles_sheet[] = INCBIN_U32("graphics/mail/fab/tiles.4bpp.lz");
const u32 gFile_graphics_mail_retro_tiles_sheet[] = INCBIN_U32("graphics/mail/retro/tiles.4bpp.lz");

const u32 gFile_graphics_mail_orange_map_tilemap[] = INCBIN_U32("graphics/mail/orange/map.bin.lz");
const u32 gFile_graphics_mail_harbor_map_tilemap[] = INCBIN_U32("graphics/mail/harbor/map.bin.lz");
const u32 gFile_graphics_mail_glitter_map_tilemap[] = INCBIN_U32("graphics/mail/glitter/map.bin.lz");
const u32 gFile_graphics_mail_mech_map_tilemap[] = INCBIN_U32("graphics/mail/mech/map.bin.lz");
const u32 gFile_graphics_mail_wood_map_tilemap[] = INCBIN_U32("graphics/mail/wood/map.bin.lz");
const u32 gFile_graphics_mail_wave_map_tilemap[] = INCBIN_U32("graphics/mail/wave/map.bin.lz");
const u32 gFile_graphics_mail_bead_map_tilemap[] = INCBIN_U32("graphics/mail/bead/map.bin.lz");
const u32 gFile_graphics_mail_shadow_map_tilemap[] = INCBIN_U32("graphics/mail/shadow/map.bin.lz");
const u32 gFile_graphics_mail_tropic_map_tilemap[] = INCBIN_U32("graphics/mail/tropic/map.bin.lz");
const u32 gFile_graphics_mail_dream_map_tilemap[] = INCBIN_U32("graphics/mail/dream/map.bin.lz");
const u32 gFile_graphics_mail_fab_map_tilemap[] = INCBIN_U32("graphics/mail/fab/map.bin.lz");
const u32 gFile_graphics_mail_retro_map_tilemap[] = INCBIN_U32("graphics/mail/retro/map.bin.lz");
# 1139 "src/graphics.c" 2

const u16 gMenuInfoElements1_Pal[] = INCBIN_U16("graphics/interface/dex_caught_pokeball.gbapal");
const u16 gMenuInfoElements2_Pal[] = INCBIN_U16("graphics/interface/pokemon_types.gbapal");
const u8 gMenuInfoElements_Gfx[] = INCBIN_U8("graphics/interface/menu_info.4bpp");

const u16 gMoveRelearner_Pal[] = INCBIN_U16("graphics/interface/learn_move.gbapal");
const u32 gMoveRelearner_Gfx[] = INCBIN_U32("graphics/interface/learn_move.4bpp.lz");
const u32 gMoveRelearner_Tilemap[] = INCBIN_U32("graphics/interface/learn_move.bin.lz");

const u16 gNamingScreenKeyboard_Pal[] = INCBIN_U16("graphics/naming_screen/keyboard.gbapal");
const u16 gNamingScreenRival_Pal[] = INCBIN_U16("graphics/naming_screen/rival.gbapal");
const u16 gNamingScreenMenu_Pal[6][16] =
{
    INCBIN_U16("graphics/naming_screen/menu.gbapal"),
    INCBIN_U16("graphics/naming_screen/page_swap_upper.gbapal"),
    INCBIN_U16("graphics/naming_screen/page_swap_lower.gbapal"),
    INCBIN_U16("graphics/naming_screen/page_swap_others.gbapal"),
    INCBIN_U16("graphics/naming_screen/buttons.gbapal"),
    INCBIN_U16("graphics/naming_screen/cursor.gbapal"),
};

const u32 gNamingScreenMenu_Gfx[] = INCBIN_U32("graphics/naming_screen/menu.4bpp.lz");
const u32 gNamingScreenBackground_Tilemap[] = INCBIN_U32("graphics/naming_screen/background.bin.lz");
const u32 gNamingScreenKeyboardUpper_Tilemap[] = INCBIN_U32("graphics/naming_screen/keyboard_upper.bin.lz");
const u32 gNamingScreenKeyboardLower_Tilemap[] = INCBIN_U32("graphics/naming_screen/keyboard_lower.bin.lz");
const u32 gNamingScreenKeyboardSymbols_Tilemap[] = INCBIN_U32("graphics/naming_screen/keyboard_symbols.bin.lz");

const u32 gNamingScreenPageSwapFrame_Gfx[] = INCBIN_U32("graphics/naming_screen/page_swap_frame.4bpp");
const u32 gNamingScreenBackButton_Gfx[] = INCBIN_U32("graphics/naming_screen/back_button.4bpp");
const u32 gNamingScreenOKButton_Gfx[] = INCBIN_U32("graphics/naming_screen/ok_button.4bpp");
const u32 gNamingScreenPageSwapUpper_Gfx[] = INCBIN_U32("graphics/naming_screen/page_swap_upper.4bpp");
const u32 gNamingScreenPageSwapLower_Gfx[] = INCBIN_U32("graphics/naming_screen/page_swap_lower.4bpp");
const u32 gNamingScreenPageSwapOthers_Gfx[] = INCBIN_U32("graphics/naming_screen/page_swap_others.4bpp");
const u32 gNamingScreenCursor_Gfx[] = INCBIN_U32("graphics/naming_screen/cursor.4bpp");
const u32 gNamingScreenCursorSquished_Gfx[] = INCBIN_U32("graphics/naming_screen/cursor_squished.4bpp");
const u32 gNamingScreenCursorFilled_Gfx[] = INCBIN_U32("graphics/naming_screen/cursor_filled.4bpp");
const u32 gNamingScreenPageSwapButton_Gfx[] = INCBIN_U32("graphics/naming_screen/page_swap_button.4bpp");
const u32 gNamingScreenInputArrow_Gfx[] = INCBIN_U32("graphics/naming_screen/input_arrow.4bpp");
const u32 gNamingScreenUnderscore_Gfx[] = INCBIN_U32("graphics/naming_screen/underscore.4bpp");

const u8 gTMCaseHM_Gfx[] = INCBIN_U8("graphics/tm_case/hm.4bpp");

const u16 gKantoTrainerCardBlue_Pal[] = INCBIN_U16("graphics/trainer_card/blue.gbapal");
const u32 gKantoTrainerCard_Gfx[] = INCBIN_U32("graphics/trainer_card/tiles.4bpp.lz");
const u16 gHoennTrainerCardGreen_Pal[] = INCBIN_U16("graphics/trainer_card/rse/green.gbapal");
const u32 gHoennTrainerCard_Gfx[] = INCBIN_U32("graphics/trainer_card/rse/tiles.4bpp.lz");

const u16 gEasyChatWindow_Pal[] = INCBIN_U16("graphics/easy_chat/window.gbapal");
const u32 gEasyChatWindow_Gfx[] = INCBIN_U32("graphics/easy_chat/window.4bpp.lz");
const u32 gEasyChatWindow_Tilemap[] = INCBIN_U32("graphics/easy_chat/window.bin.lz");

const u16 gEasyChatButtonWindow_Pal[] = INCBIN_U16("graphics/easy_chat/button_window.gbapal");
const u32 gEasyChatButtonWindow_Gfx[] = INCBIN_U32("graphics/easy_chat/button_window.4bpp.lz");
const u32 gEasyChatMode_Gfx[] = INCBIN_U32("graphics/easy_chat/mode.4bpp.lz");

const u32 gSummaryScreen_Bg_Gfx[] = INCBIN_U32("graphics/summary_screen/bg.4bpp.lz");
const u32 gSummaryScreen_Bg_Pal[] = INCBIN_U32("graphics/summary_screen/bg.gbapal");
const u32 gSummaryScreen_ExpBar_Gfx[] = INCBIN_U32("graphics/summary_screen/exp_bar.4bpp.lz");
const u32 gSummaryScreen_HpBar_Gfx[] = INCBIN_U32("graphics/summary_screen/hp_bar.4bpp.lz");
const u16 gSummaryScreen_HpExpBar_Pal[] = INCBIN_U16("graphics/summary_screen/exp_bar.gbapal");
const u32 gSummaryScreen_PageInfo_Tilemap[] = INCBIN_U32("graphics/summary_screen/page_info.bin.lz");
const u32 gSummaryScreen_PageSkills_Tilemap[] = INCBIN_U32("graphics/summary_screen/page_skills.bin.lz");
const u32 gSummaryScreen_PageMoves_Tilemap[] = INCBIN_U32("graphics/summary_screen/page_moves.bin.lz");
const u32 gSummaryScreen_PageMovesInfo_Tilemap[] = INCBIN_U32("graphics/summary_screen/page_moves_info.bin.lz");
const u32 gSummaryScreen_PageEgg_Tilemap[] = INCBIN_U32("graphics/summary_screen/page_egg.bin.lz");

const u16 gUnusedRedPalette[] = INCBIN_U16("graphics/unused/red_palette.gbapal");

const u32 gEasyChatRectangleCursor_Gfx[] = INCBIN_U32("graphics/easy_chat/rectangle_cursor.4bpp.lz");
const u16 gSummaryScreen_StatusAilmentIcon_Pal[] = INCBIN_U16("graphics/summary_screen/status_ailment_icons.gbapal");
const u32 gSummaryScreen_StatusAilmentIcon_Gfx[] = INCBIN_U32("graphics/summary_screen/status_ailment_icons.4bpp.lz");

const u16 gDexScreen_TopMenuIconPals_AtoZ[] = INCBIN_U16("graphics/pokedex/cat_icon_abc.gbapal");
const u32 gDexScreen_TopMenuIconTiles_AtoZ[] = INCBIN_U32("graphics/pokedex/cat_icon_abc.4bpp.lz");

const u16 gPokeStoragePartyMenu_Pal[] = INCBIN_U16("graphics/pokemon_storage/party_menu.gbapal");
const u16 gPokeStorageInterface_Pal[] = INCBIN_U16("graphics/pokemon_storage/interface.gbapal");
const u16 gPokeStorageInterface_NoDisplayMon_Pal[] = INCBIN_U16("graphics/pokemon_storage/interface_no_display_mon.gbapal");
const u32 gPokeStorageMenu_Gfx[] = INCBIN_U32("graphics/pokemon_storage/menu.4bpp.lz");
const u32 gPokeStoragePartyMenu_Tilemap[] = INCBIN_U32("graphics/pokemon_storage/party_menu.bin.lz");
const u16 gMonMarkingsMenu_Pal[] = INCBIN_U16("graphics/misc/markings2.gbapal");
const u16 gMonMarkingsMenu_Gfx[] = INCBIN_U16("graphics/misc/markings2.4bpp");

const u16 gTradeMenu_Pal[] = INCBIN_U16("graphics/trade/menu.gbapal");
const u16 gTradeCursor_Pal[] = INCBIN_U16("graphics/trade/cursor.gbapal");
const u16 gTradeMenu_Gfx[] = INCBIN_U16("graphics/trade/menu.4bpp");
const u16 gTradeCursor_Gfx[] = INCBIN_U16("graphics/trade/cursor.4bpp");
const u16 gTradeUnused_Tilemap[] = INCBIN_U16("graphics/trade/unused.bin");
const u16 gTradeMenu_Tilemap[] = INCBIN_U16("graphics/trade/menu.bin");
const u16 gTradeMenuMonBox_Tilemap[] = INCBIN_U16("graphics/trade/menu_mon_box.bin");

const u16 gFameCheckerBgPals[][16] = INCBIN_U16("graphics/fame_checker/bg.gbapal");
const u16 gFameCheckerBgTiles[] = INCBIN_U16("graphics/fame_checker/bg.4bpp");
const u16 gFameCheckerBg3Tilemap[] = INCBIN_U16("graphics/fame_checker/tilemap3.bin");
const u16 gFameCheckerBg2Tilemap[] = INCBIN_U16("graphics/fame_checker/tilemap2.bin");

const u16 gUnionRoomChat_Bg_Pal[] = INCBIN_U16("graphics/union_room_chat/bg.gbapal");
const u32 gUnionRoomChat_Bg_Gfx[] = INCBIN_U32("graphics/union_room_chat/bg.4bpp.lz");
const u32 gUnionRoomChat_Bg_Tilemap[] = INCBIN_U32("graphics/union_room_chat/bg.bin.lz");
const u32 gUnionRoomChat_Icons_Gfx[] = INCBIN_U32("graphics/union_room_chat/icons.4bpp.lz");

const u16 gTilesetPalettes_General[][16] =
{
    INCBIN_U16("data/tilesets/primary/general/palettes/00.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/01.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/02.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/03.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/04.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/05.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/06.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/07.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/08.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/09.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/10.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/11.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/12.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/13.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/14.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/15.gbapal"),
};

const u32 gTilesetTiles_General[] = INCBIN_U32("data/tilesets/primary/general/tiles.4bpp.lz");

const u8 gBerryFixGameboy_Pal[] = INCBIN_U8("graphics/berry_fix/gba_small.gbapal");
const u8 gBerryFixGameboy_Gfx[] = INCBIN_U8("graphics/berry_fix/gba_small.4bpp.lz");
const u8 gBerryFixGameboy_Tilemap[] = INCBIN_U8("graphics/berry_fix/gba_small.bin.lz");
const u8 gBerryFixGameboyLogo_Pal[] = INCBIN_U8("graphics/berry_fix/logo.gbapal");
const u8 gBerryFixGameboyLogo_Gfx[] = INCBIN_U8("graphics/berry_fix/logo.4bpp.lz");
const u8 gBerryFixGameboyLogo_Tilemap[] = INCBIN_U8("graphics/berry_fix/logo.bin.lz");
const u8 gBerryFixGbaTransfer_Pal[] = INCBIN_U8("graphics/berry_fix/gba_transfer.gbapal");
const u8 gBerryFixGbaTransfer_Gfx[] = INCBIN_U8("graphics/berry_fix/gba_transfer.4bpp.lz");
const u8 gBerryFixGbaTransfer_Tilemap[] = INCBIN_U8("graphics/berry_fix/gba_transfer.bin.lz");
const u8 gBerryFixGbaTransferHighlight_Pal[] = INCBIN_U8("graphics/berry_fix/gba_transfer_highlight.gbapal");
const u8 gBerryFixGbaTransferHighlight_Gfx[] = INCBIN_U8("graphics/berry_fix/gba_transfer_highlight.4bpp.lz");
const u8 gBerryFixGbaTransferHighlight_Tilemap[] = INCBIN_U8("graphics/berry_fix/gba_transfer_highlight.bin.lz");
const u8 gBerryFixGbaTransferError_Pal[] = INCBIN_U8("graphics/berry_fix/gba_transfer_error.gbapal");
const u8 gBerryFixGbaTransferError_Gfx[] = INCBIN_U8("graphics/berry_fix/gba_transfer_error.4bpp.lz");
const u8 gBerryFixGbaTransferError_Tilemap[] = INCBIN_U8("graphics/berry_fix/gba_transfer_error.bin.lz");
const u8 gBerryFixWindow_Pal[] = INCBIN_U8("graphics/berry_fix/window.gbapal");
const u8 gBerryFixWindow_Gfx[] = INCBIN_U8("graphics/berry_fix/window.4bpp.lz");
const u8 gBerryFixWindow_Tilemap[] = INCBIN_U8("graphics/berry_fix/window.bin.lz");

const u16 gTilesetPalettes_GenericBuilding1[][16] =
{
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/00.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/01.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/02.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/03.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/04.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/05.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/06.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/07.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/08.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/09.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/10.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/11.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/12.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/13.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/14.gbapal"),
    INCBIN_U16("data/tilesets/secondary/generic_building_1/palettes/15.gbapal"),
};

const u32 gTilesetTiles_GenericBuilding1[] = INCBIN_U32("data/tilesets/secondary/generic_building_1/tiles.4bpp.lz");

const u16 gTilesetPalettes_DepartmentStore[][16] =
{
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/00.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/01.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/02.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/03.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/04.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/05.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/06.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/07.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/08.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/09.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/10.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/11.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/12.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/13.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/14.gbapal"),
    INCBIN_U16("data/tilesets/secondary/department_store/palettes/15.gbapal"),
};

const u32 gTilesetTiles_DepartmentStore[] = INCBIN_U32("data/tilesets/secondary/department_store/tiles.4bpp.lz");

const u16 gUnionRoomChat_Panel_Pal[] = INCBIN_U16("graphics/union_room_chat/panel.gbapal");
const u32 gUnionRoomChat_Panel_Gfx[] = INCBIN_U32("graphics/union_room_chat/panel.4bpp.lz");
const u32 gUnionRoomChat_Panel_Tilemap[] = INCBIN_U32("graphics/union_room_chat/panel.bin.lz");

const u16 gCreditsMonPokeball_Pals[][16] =
{
    INCBIN_U16("graphics/credits/pokeball_charizard.gbapal"),
    INCBIN_U16("graphics/credits/pokeball_venusaur.gbapal"),
    INCBIN_U16("graphics/credits/pokeball_blastoise.gbapal"),
    INCBIN_U16("graphics/credits/pokeball_pikachu.gbapal"),
};

const u32 gCreditsMonPokeball_Tiles[] = INCBIN_U32("graphics/credits/pokeball.4bpp.lz");
const u32 gCreditsMonPokeball_Tilemap[] = INCBIN_U32("graphics/credits/pokeball.bin.lz");


const u16 gGraphics_TitleScreen_GameTitleLogoPals[] = INCBIN_U16("graphics/title_screen/firered/game_title_logo.gbapal");
const u8 gGraphics_TitleScreen_GameTitleLogoTiles[] = INCBIN_U8("graphics/title_screen/firered/game_title_logo.8bpp.lz");
const u8 gGraphics_TitleScreen_GameTitleLogoMap[] = INCBIN_U8("graphics/title_screen/firered/game_title_logo.bin.lz");
const u16 gGraphics_TitleScreen_BoxArtMonPals[] = INCBIN_U16("graphics/title_screen/firered/box_art_mon.gbapal");
const u8 gGraphics_TitleScreen_BoxArtMonTiles[] = INCBIN_U8("graphics/title_screen/firered/box_art_mon.4bpp.lz");
const u8 gGraphics_TitleScreen_BoxArtMonMap[] = INCBIN_U8("graphics/title_screen/firered/box_art_mon.bin.lz");
const u16 gGraphics_TitleScreen_BackgroundPals[] = INCBIN_U16("graphics/title_screen/firered/background.gbapal");
const u8 gGraphics_TitleScreen_CopyrightPressStartTiles[] = INCBIN_U8("graphics/title_screen/copyright_press_start.4bpp.lz");
const u8 gGraphics_TitleScreen_CopyrightPressStartMap[] = INCBIN_U8("graphics/title_screen/copyright_press_start.bin.lz");
const u16 gTitleScreen_Slash_Pal[] = INCBIN_U16("graphics/title_screen/firered/slash.gbapal");
# 1366 "src/graphics.c"
const u32 gTitleScreen_BlankSprite_Tiles[] = INCBIN_U32("graphics/title_screen/blank_sprite.4bpp.lz");

const u16 gCreditsCopyright_Pal[] = INCBIN_U16("graphics/credits/copyright.gbapal");
const u8 gCreditsCopyright_Tiles[] = INCBIN_U8("graphics/credits/copyright.4bpp.lz");
const u8 gCreditsCopyright_Tilemap[] = INCBIN_U8("graphics/credits/copyright.bin.lz");

const u32 gTradeGba_Pal[] = INCBIN_U32("graphics/trade/gba.gbapal");
const u32 gTradeGba2_Pal[] = INCBIN_U32("graphics/trade/gba_pal2.gbapal");
const u32 gTradeGba_Gfx[] = INCBIN_U32("graphics/trade/gba.4bpp");

const u16 sEmptyPal[16] = {0};

const u16 gBerryCrush_Crusher_Pal[] = INCBIN_U16("graphics/berry_crush/crusher.gbapal");
const u32 gBerryCrush_Crusher_Gfx[] = INCBIN_U32("graphics/berry_crush/crusher.4bpp.lz");
const u32 gBerryCrush_TextWindows_Tilemap[] = INCBIN_U32("graphics/berry_crush/text_windows.bin.lz");
