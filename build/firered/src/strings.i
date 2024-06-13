# 0 "src/strings.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/strings.c"
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
# 2 "src/strings.c" 2
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
# 3 "src/strings.c" 2

const u8 gExpandedPlaceholder_Empty[] = _("");
const u8 gExpandedPlaceholder_Kun[] = _("");
const u8 gExpandedPlaceholder_Chan[] = _("");
const u8 gExpandedPlaceholder_Sapphire[] = _("SAPPHIRE");
const u8 gExpandedPlaceholder_Ruby[] = _("RUBY");
const u8 gExpandedPlaceholder_Aqua[] = _("AQUA");
const u8 gExpandedPlaceholder_Magma[] = _("MAGMA");
const u8 gExpandedPlaceholder_Archie[] = _("ARCHIE");
const u8 gExpandedPlaceholder_Maxie[] = _("MAXIE");
const u8 gExpandedPlaceholder_Kyogre[] = _("KYOGRE");
const u8 gExpandedPlaceholder_Groudon[] = _("GROUDON");
const u8 gExpandedPlaceholder_Red[] = _("RED");
const u8 gExpandedPlaceholder_Green[] = _("GREEN");
const u8 gText_EggNickname[] = _("EGG");
const u8 gText_MenuPokemon[] = _("POKéMON");
const u8 gText_NewGame[] = _("NEW GAME");
const u8 gText_Continue[] = _("CONTINUE");
const u8 gTextJP_Options[] = _("せっていを かえる");
const u8 gUnusedText_MysteryGift[] = _("MYSTERY GIFT");
const u8 gText_MysteryGift[] = _("MYSTERY GIFT");
const u8 gText_WirelessNotConnected[] = _("The Wireless Adapter is not\nconnected.");
const u8 gText_MysteryGiftCantUse[] = _("MYSTERY GIFT can't be used while\nthe Wireless Adapter is attached.");
const u8 gText_UpdatingSaveExternalData[] = _("がいぶデ-タにより レポ-トを こうしんします\nしばらく おまちください");
const u8 gText_SaveFileUpdated[] = _("レポ-トが こうしんされました!");
const u8 gText_SaveFileUpdatedSwapBackup[] = _("レポ-トが こうしんされました!\pこれいじょう\nレポ-トが かききれないので\lバックアップカ-トリッジを\lこうかんしてください!\pくわしくは\nにんてんどう サ-ビスセンタ- まで\lおといあわせ ください");
const u8 gText_FailedUpdateSwapBackup[] = _("レポ-トの こうしんは\nしっぱいしました!\pバックアップカ-トリッジを\nこうかんしてください!\pくわしくは\nにんてんどう サ-ビスセンタ- まで\lおといあわせ ください");
const u8 gText_SaveFileCorrupted[] = _("The save file is corrupted.\pThe previous save file will be\nloaded.");
const u8 gText_SaveFileHasBeenDeleted[] = _("The save file has been\ndeleted...");
const u8 gText_1MSubCircuitBoardNotInstalled[] = _("The 1M sub-circuit board is\nnot installed.");
const u8 gTextJP_InternalBatteryHasRunDry[] = _("でんちぎれの ために\nとけいが うごかなくなりました\pとけいに かんけいする できごとは おきませんが\nゲ-ムを つづけて あそぶことは できます");
const u8 gText_PlayerUnused[] = _("しゅじんこう");
const u8 gText_PokedexUnused[] = _("ポケモンずかん");
const u8 gText_MainMenuTime[] = _("TIME");
const u8 gText_BadgesUnused[] = _("もっているバッジ");
const u8 gText_AButton[] = _("Aボタン");
const u8 gText_BButton[] = _("Bボタン");
const u8 gText_RButton[] = _("Rボタン");
const u8 gText_LButton[] = _("Lボタン");
const u8 gText_Start[] = _("スタ-トボタン");
const u8 gText_Select[] = _("セレクトボタン");
const u8 gText_ControlPad[] = _("じゅうじボタン");
const u8 gText_LButtonRButton[] = _("Lボタン Rボタン");
const u8 gText_Controls[] = _("CONTROLS");
__attribute__((aligned(4))) const u8 gText_PickOk[] = _("{DPAD_UPDOWN}えらぶ {A_BUTTON}けってい");
__attribute__((aligned(4))) const u8 gText_ABUTTONNext[] = _("{A_BUTTON}NEXT");
__attribute__((aligned(4))) const u8 gText_ABUTTONNext_BBUTTONBack[] = _("{A_BUTTON}NEXT {B_BUTTON}BACK");
__attribute__((aligned(4))) const u8 gText_UPDOWNPick_ABUTTONNext_BBUTTONBack[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}NEXT {B_BUTTON}CANCEL");
__attribute__((aligned(4))) const u8 gText_UPDOWNPick_ABUTTONBBUTTONCancel[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}{B_BUTTON}CANCEL");
__attribute__((aligned(4))) const u8 gText_ABUTTONExit[] = _("{A_BUTTON}EXIT");
const u8 gText_Boy[] = _("BOY");
const u8 gText_Girl[] = _("GIRL");
const u8 gText_PokedexTableOfContents[] = _("POKéDEX   TABLE OF CONTENTS");
const u8 gText_PickOK[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK");
const u8 gText_Seen[] = _("Seen:");
const u8 gText_Owned[] = _("Owned:");
const u8 gText_Kanto[] = _("KANTO");
const u8 gText_National[] = _("NATIONAL");
const u8 gText_PokemonHabitats[] = _("{COLOR DYNAMIC_COLOR6}{SHADOW DYNAMIC_COLOR5}POKéMON HABITATS");
const u8 gText_DexCategory_GrasslandPkmn[] = _("Grassland POKéMON");
const u8 gText_DexCategory_ForestPkmn[] = _("Forest POKéMON");
const u8 gText_DexCategory_WatersEdgePkmn[] = _("Water's-edge POKéMON");
const u8 gText_DexCategory_SeaPkmn[] = _("Sea POKéMON");
const u8 gText_DexCategory_CavePkmn[] = _("Cave POKéMON");
const u8 gText_DexCategory_MountainPkmn[] = _("Mountain POKéMON");
const u8 gText_DexCategory_RoughTerrainPkmn[] = _("Rough-terrain POKéMON");
const u8 gText_DexCategory_UrbanPkmn[] = _("Urban POKéMON");
const u8 gText_DexCategory_RarePkmn[] = _("Rare POKéMON");
const u8 gText_Search[] = _("{COLOR DYNAMIC_COLOR6}{SHADOW DYNAMIC_COLOR5}SEARCH");
const u8 gText_NumericalMode[] = _("NUMERICAL MODE");
const u8 gText_AToZMode[] = _("A TO Z MODE");
const u8 gText_PokedexOther[] = _("{COLOR DYNAMIC_COLOR6}{SHADOW DYNAMIC_COLOR5}OTHER");
const u8 gTextJP_HowToUsePokedex[] = _("ずかんの つかいかた");
const u8 gText_ClosePokedex[] = _("CLOSE POKéDEX");
const u8 gText_TypeMode[] = _("TYPE MODE");
const u8 gText_LightestMode[] = _("LIGHTEST MODE");
const u8 gText_SmallestMode[] = _("SMALLEST MODE");
const u8 gText_PokemonList[] = _("{COLOR DYNAMIC_COLOR6}{SHADOW DYNAMIC_COLOR5}POKéMON LIST");
const u8 gText_NumericalModeKanto[] = _("NUMERICAL MODE: KANTO");
const u8 gText_NumericalModeNational[] = _("NUMERICAL MODE: NATIONAL");
const u8 gText_PokemonListNoColor[] = _("POKéMON LIST");
const u8 gText_SearchNoColor[] = _("SEARCH");
const u8 gText_PickOKExit[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK {B_BUTTON}CANCEL");
const u8 gText_5Dashes[] = _("-----");
const u8 gText_PickFlipPageCheckCancel[] = _("{DPAD_LEFTRIGHT}PICK{PLUS}FLIP PAGE {A_BUTTON}CHECK {B_BUTTON}CANCEL");
const u8 gText_PokedexPokemon[] = _(" POKéMON");
const u8 gText_HT[] = _("HT");
const u8 gText_WT[] = _("WT");
const u8 gText_PokedexQuotationMark[] = _("”");
const u8 gText_Lbs[] = _("lbs.");
const u8 gTextJP_PokemonData[] = _("ポケモンデ-タ");
const u8 gText_Cry[] = _("{START_BUTTON}CRY");
const u8 gText_NextDataCancel[] = _("{A_BUTTON}NEXT DATA {B_BUTTON}CANCEL");
const u8 gText_Next[] = _("{A_BUTTON}NEXT");
const u8 gText_CancelPreviousData[] = _("{A_BUTTON}CANCEL {B_BUTTON}PREVIOUS DATA");
const u8 gText_Area[] = _("AREA");
const u8 gText_Size[] = _("SIZE");
const u8 gText_AreaUnknown[] = _("AREA UNKNOWN");
const u8 gText_PokedexNo[] = _("{NO}");
const u8 gText_Page[] = _("PAGE");
__attribute__((aligned(4))) const u8 gText_WelcomeToHOF[] = _("Welcome to the HALL OF FAME!");
__attribute__((aligned(4))) const u8 gText_HOFDexRating[] = _("みつけた ポケモン {STR_VAR_1}!\nつかまえた ポケモン {STR_VAR_2}!\pオダマキはかせの\nポケモンずかん ひょうか!\pオダマキ“どれどれ\p");
__attribute__((aligned(4))) const u8 gText_HOFDexSaving[] = _("ここまでの レポ-トを かきしるしています!\nでんげんを きらないでください");
__attribute__((aligned(4))) const u8 gText_HOFCorrupted[] = _("The HALL OF FAME data is\ncorrupted.");
const u8 gText_HOFNumber[] = _("HALL OF FAME No. {STR_VAR_1}");
const u8 gText_LeagueChamp[] = _("LEAGUE CHAMPION!\nCONGRATULATIONS!");
__attribute__((aligned(4))) const u8 gText_Number[] = _("No. ");
__attribute__((aligned(4))) const u8 gText_Level[] = _("Lv. ");
__attribute__((aligned(4))) const u8 gText_Name[] = _("NAME");
__attribute__((aligned(4))) const u8 gText_IDNumber[] = _("IDNo.");
const u8 gText_BirchInTrouble[] = _("{HIGHLIGHT DYNAMIC_COLOR6}{COLOR WHITE}オダマキはかせが ピンチだ!\nポケモンを だして たすけてあげよう!");
const u8 gText_ConfirmStarterChoice[] = _("{HIGHLIGHT DYNAMIC_COLOR6}{COLOR WHITE}このポケモンにしますか?");
const u8 gText_Pokemon4[] = _("ポケモン");
const u8 gText_SaveError_PleaseExchangeBackupMemory[] = _("Save error.\pPlease exchange the\nbackup memory.");
const u8 gSaveStatName_Player[] = _("PLAYER");
const u8 gSaveStatName_Badges[] = _("BADGES");
const u8 gSaveStatName_Pokedex[] = _("POKéDEX");
const u8 gSaveStatName_Time[] = _("TIME");
const u8 gText_FlyToWhere[] = _("どこへ とびますか?");
const u8 gOtherText_Use[] = _("USE");
const u8 gOtherText_Toss[] = _("TOSS");
const u8 gOtherText_Register[] = _("REGISTER");
const u8 gOtherText_Give[] = _("GIVE");
const u8 gMenuText_Confirm[] = _("けってい");
const u8 gOtherText_Walk[] = _("WALK");
const u8 gFameCheckerText_Cancel[] = _("CANCEL");
const u8 gOtherText_Exit[] = _("EXIT");
const u8 gString_Dummy[] = _("");
const u8 gText_Cancel7[] = _("キャンセル");
const u8 gText_Item[] = _("ITEM");
const u8 gText_Mail[] = _("MAIL");
const u8 gText_Take[] = _("TAKE");
const u8 gText_Store[] = _("STORE");
const u8 gOtherText_Check[] = _("CHECK");
const u8 gText_PokeSum_Item_None[] = _("NONE");
const u8 gOtherText_Open[] = _("OPEN");
const u8 gOtherText_Deselect[] = _("DESELECT");
const u8 gText_PokeSum_DexNoUnknown[] = _("???");
const u8 gText_FiveMarks[] = _("?????");
const u8 gText_Slash[] = _("/");
const u8 gText_PokeSum_OneHyphen[] = _("-");
const u8 gText_PokeSum_TwoHyphens[] = _("--");
const u8 gText_ThreeHyphens[] = _("---");
const u8 gText_SevenHyphens[] = _("-------");
const u8 gText_MaleSymbol[] = _("♂");
const u8 gText_FemaleSymbol[] = _("♀");
const u8 gText_Lv[] = _("{LV_2}");
const u8 gText_NumberClear01[] = _("{NO}{CLEAR 0x01}");
const u8 gText_Plus[] = _("{PLUS}");
const u8 gText_Escape3[] = _("{ESCAPE 0x03}");
const u8 gText_IDNumber2[] = _("{ID}{NO}");
const u8 gText_PokeSum_PP[] = _("{PP}");
const u8 gText_SelectorArrow2[] = _("▶");
const u8 gText_YesNo[] = _("YES\nNO");
const u8 gText_GoBackToThePreviousMenu[] = _("Go back to the\nprevious menu.");
const u8 gText_WhatWouldYouLikeToDo[] = _("What would you like to do?");
const u8 gText_MenuPokedex[] = _("POKéDEX");
const u8 gText_MenuBag[] = _("BAG");
const u8 gText_MenuPokenav[] = _("ポケナビ");
const u8 gText_MenuPlayer[] = _("{PLAYER}");
const u8 gText_MenuSave[] = _("SAVE");
const u8 gText_MenuOption[] = _("OPTION");
const u8 gText_MenuExit[] = _("EXIT");
const u8 gText_MenuRetire[] = _("RETIRE");
const u8 gText_MenuSafariStats[] = _("{STR_VAR_1}/{STR_VAR_2}\nBALLS  {STR_VAR_3}");
const u8 gText_TimesStrVar1[] = _("×{STR_VAR_1}");
const u8 gText_Berry[] = _(" BERRY");
const u8 gText_Coins[] = _("{STR_VAR_1} COINS");
const u8 gText_Items2[] = _("ITEMS");
const u8 gText_PokeBalls2[] = _("POKé BALLS");
const u8 gText_KeyItems2[] = _("KEY ITEMS");
const u8 gText_DepositItem[] = _("DEPOSIT ITEM");
const u8 gText_CloseBag[] = _("CLOSE BAG");
const u8 gText_Var1IsSelected[] = _("{STR_VAR_1} is\nselected.");
const u8 gText_CantWriteMailHere[] = _("You can't write\nMAIL here.");
const u8 gText_ThereIsNoPokemon[] = _("There is no\nPOKéMON.");
const u8 gOtherText_WhereShouldTheStrVar1BePlaced[] = _("Where should the {STR_VAR_1}\nbe placed?");
const u8 gText_ItemCantBeHeld[] = _("The {STR_VAR_1} can't be held.");
const u8 gText_TheStrVar1CantBeHeldHere[] = _("The {STR_VAR_1} can't be held\nhere.");
const u8 gText_DepositHowManyStrVars1[] = _("Deposit how many\n{STR_VAR_1}(s)?");
const u8 gText_DepositedStrVar2StrVar1s[] = _("Deposited {STR_VAR_2}\n{STR_VAR_1}(s).");
const u8 gText_NoRoomToStoreItems[] = _("There's no room to\nstore items.");
const u8 gText_TossOutHowManyStrVar1s[] = _("Toss out how many\n{STR_VAR_1}(s)?");
const u8 gText_ThrewAwayStrVar2StrVar1s[] = _("Threw away {STR_VAR_2}\n{STR_VAR_1}(s).");
const u8 gText_ThrowAwayStrVar2OfThisItemQM[] = _("Throw away {STR_VAR_2} of\nthis item?");
const u8 gText_OakForbidsUseOfItemHere[] = _("OAK: {PLAYER}!\nThis isn't the time to use that!{PAUSE_UNTIL_PRESS}");
const u8 gText_CantDismountBike[] = _("You can't dismount your BIKE here.{PAUSE_UNTIL_PRESS}");
const u8 gText_ItemfinderResponding[] = _("Huh?\nThe ITEMFINDER's responding!\pThere's an item buried around here!{PAUSE_UNTIL_PRESS}");
const u8 gText_ItemfinderShakingWildly[] = _("Oh!\nThe ITEMFINDER's shaking wildly!\pThere's an item buried underfoot!\p‥ ‥ ‥ ‥ ‥ ‥{PAUSE_UNTIL_PRESS}");
const u8 gText_NopeTheresNoResponse[] = _("‥ ‥ ‥ ‥Nope!\nThere's no response.{PAUSE_UNTIL_PRESS}");
const u8 gText_CoinCase[] = _("Your COINS:\n{STR_VAR_1}{PAUSE_UNTIL_PRESS}");
const u8 gText_BootedUpTM[] = _("わざマシンを きどうした!");
const u8 gText_BootedUpHM[] = _("ひでんマシンを きどうした!");
const u8 gText_TMHMContainedVar1[] = _("なかには {STR_VAR_1}が\nきろくされていた!\p{STR_VAR_1}を\nポケモンに おぼえさせますか?");
const u8 gText_PlayerUsedVar2[] = _("{PLAYER} used the\n{STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_RepelEffectsLingered[] = _("But the effects of a REPEL\nlingered from earlier.{PAUSE_UNTIL_PRESS}");
const u8 gText_UsedVar2WildLured[] = _("{PLAYER} used the\n{STR_VAR_2}.\pWild POKéMON will be lured.{PAUSE_UNTIL_PRESS}");
const u8 gText_UsedVar2WildRepelled[] = _("{PLAYER} used the\n{STR_VAR_2}.\pWild POKéMON will be repelled.{PAUSE_UNTIL_PRESS}");
const u8 gText_BoxFull[] = _("The BOX is full.{PAUSE_UNTIL_PRESS}");
const u8 gText_PowderQty[] = _("POWDER QTY: {STR_VAR_1}{PAUSE_UNTIL_PRESS}");
const u8 gOtherText_Powder[] = _("POWDER");
const u8 gText_PlayedPokeFluteCatchy[] = _("Played the POKé FLUTE.\pNow, that's a catchy tune!{PAUSE_UNTIL_PRESS}");
const u8 gText_PlayedPokeFlute[] = _("Played the POKé FLUTE.");
const u8 gText_PokeFluteAwakenedMon[] = _("The POKé FLUTE awakened sleeping\nPOKéMON.{PAUSE_UNTIL_PRESS}");
const u8 gText_TMCase[] = _("TM CASE");
const u8 gText_Close[] = _("CLOSE");
const u8 gText_TMCaseWillBePutAway[] = _("The TM CASE will be\nput away.");
const u8 gText_FontSmall[] = _("{FONT_SMALL}");
const u8 gText_FontNormal[] = _("{FONT_NORMAL}");
const u8 gText_EmptySpace[] = _("  ");
const u8 gText_BerryPouch[] = _("BERRY POUCH");
const u8 gText_TheBerryPouchWillBePutAway[] = _("The BERRY POUCH will be\nput away.");
const u8 gText_ShopBuy[] = _("BUY");
const u8 gText_ShopSell[] = _("SELL");
const u8 gText_ShopQuit[] = _("SEE YA!");
const u8 gText_InBagVar1[] = _("IN BAG:{FONT_SMALL} {STR_VAR_1}");
const u8 gText_QuitShopping[] = _("Quit shopping.");
const u8 gText_Var1CertainlyHowMany[] = _("{STR_VAR_1}? Certainly.\nHow many would you like?");
const u8 gText_Var1AndYouWantedVar2[] = _("{STR_VAR_1}, and you want {STR_VAR_2}.\nThat will be ¥{STR_VAR_3}. Okay?");
const u8 gText_Var1IsItThatllBeVar2[] = _("{STR_VAR_1} だね!\n{STR_VAR_2}¥ だけど かうかい?");
const u8 gText_YouWantedVar1ThatllBeVar2[] = _("{STR_VAR_1} ですね!\n{STR_VAR_2}¥ だけど かいますか?");
const u8 gText_HereYouGoThankYou[] = _("Here you are!\nThank you!");
const u8 gText_ThankYouIllSendItHome[] = _("どうも ありがとう!\nじたくの パソコンに おくって おきますね!");
const u8 gText_ThanksIllSendItHome[] = _("どうも ありがとう!\nじたくの パソコンに おくって おくね!");
const u8 gText_YouDontHaveMoney[] = _("You don't have enough money.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoMoreRoomForThis[] = _("You have no more room for this\nitem.{PAUSE_UNTIL_PRESS}");
const u8 gText_SpaceForVar1Full[] = _("{STR_VAR_1}を\nいれる ばしょが いっぱいです{PAUSE_UNTIL_PRESS}");
const u8 gText_AnythingElseICanHelp[] = _("Is there anything else I can do?");
const u8 gText_CanIHelpWithAnythingElse[] = _("その ほかに\nなにか ちからに なれることは?");
const u8 gText_ThrowInPremierBall[] = _("プレミアボ-ル 1コ\nおまけ しておきますね!{PAUSE_UNTIL_PRESS}");
const u8 gText_OhNoICantBuyThat[] = _("{STR_VAR_1}? Oh, no.\nI can't buy that.{PAUSE_UNTIL_PRESS}");
const u8 gText_HowManyWouldYouLikeToSell[] = _("{STR_VAR_1}?\nHow many would you like to sell?");
const u8 gText_ICanPayThisMuch_WouldThatBeOkay[] = _("I can pay ¥{STR_VAR_3}.\nWould that be okay?");
const u8 gText_TurnedOverItemsWorthYen[] = _("Turned over the {STR_VAR_1}シSス\nworth ¥{STR_VAR_3}.");
const u8 gText_PokedollarVar1[] = _("¥{STR_VAR_1}");
const u8 gText_Shift[] = _("SHIFT");
const u8 gText_SendOut[] = _("SEND OUT");
const u8 gText_Switch2[] = _("SWITCH");
const u8 gText_Summary5[] = _("SUMMARY");
const u8 gText_Moves[] = _("つかえるわざ");
const u8 gText_Enter[] = _("ENTER");
const u8 gText_NoEntry[] = _("NO ENTRY");
const u8 gText_Take2[] = _("TAKE");
const u8 gText_Read2[] = _("READ");
const u8 gText_Trade4[] = _("TRADE");
const u8 gText_ItemEffect_HP[] = _("HP");
const u8 gText_ItemEffect_SpAtk[] = _("SP. ATK");
const u8 gText_ItemEffect_SpDef[] = _("SP. DEF");
const u8 gText_PartyMenu_OK[] = _("OK");
const u8 gText_Empty[] = _("");
const u8 gText_PauseUntilPress[] = _("{PAUSE_UNTIL_PRESS}");
const u8 gText_WontHaveEffect[] = _("It won't have any effect.{PAUSE_UNTIL_PRESS}");
const u8 gText_CantBeUsedOnPkmn[] = _("This can't be used on\nthat POKéMON.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnCantSwitchOut[] = _("{STR_VAR_1} can't be switched\nout!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAlreadyInBattle[] = _("{STR_VAR_1} is already\nin battle!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAlreadySelected[] = _("{STR_VAR_1} has already been\nselected.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnHasNoEnergy[] = _("{STR_VAR_1} has no energy\nleft to battle!{PAUSE_UNTIL_PRESS}");
const u8 gText_CantSwitchWithAlly[] = _("You can't switch {STR_VAR_1}'s\nPOKéMON with one of yours!{PAUSE_UNTIL_PRESS}");
const u8 gText_EggCantBattle[] = _("An EGG can't battle!{PAUSE_UNTIL_PRESS}");
const u8 gText_CantUseUntilNewBadge[] = _("This can't be used until a new\nBADGE is obtained.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoMoreThanThreeMayEnter[] = _("No more than three POKéMON\nmay enter.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoMoreThanTwoMayEnter[] = _("No more than two POKéMON\nmay enter.{PAUSE_UNTIL_PRESS}");
const u8 gText_SendMailToPC[] = _("Send the removed MAIL to\nyour PC?");
const u8 gText_MailSentToPC[] = _("The MAIL was sent to your PC.{PAUSE_UNTIL_PRESS}");
const u8 gText_PCMailboxFull[] = _("Your PC's MAILBOX is full.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailMessageWillBeLost[] = _("If the MAIL is removed, the\nmessage will be lost. Okay?");
const u8 gText_RemoveMailBeforeItem[] = _("MAIL must be removed before\nholding an item.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnWasGivenItem[] = _("{STR_VAR_1} was given the\n{STR_VAR_2} to hold.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAlreadyHoldingItemSwitch[] = _("{STR_VAR_1} is already holding\none {STR_VAR_2}.\pWould you like to switch the\ntwo items?");
const u8 gText_PkmnNotHolding[] = _("{STR_VAR_1} isn't holding\nanything.{PAUSE_UNTIL_PRESS}");
const u8 gText_ReceivedItemFromPkmn[] = _("Received the {STR_VAR_2}\nfrom {STR_VAR_1}.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailTakenFromPkmn[] = _("MAIL was taken from the\nPOKéMON.{PAUSE_UNTIL_PRESS}");
const u8 gText_SwitchedPkmnItem[] = _("The {STR_VAR_2} was taken and\nreplaced with the {STR_VAR_1}.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnHoldingItemCantHoldMail[] = _("This POKéMON is holding an\nitem. It cannot hold MAIL.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailTransferredFromMailbox[] = _("MAIL was transferred from\nthe MAILBOX.{PAUSE_UNTIL_PRESS}");
const u8 gText_BagFullCouldNotRemoveItem[] = _("The {STR_VAR_1} is full. The POKéMON's\nitem could not be removed.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnLearnedMove3[] = _("{STR_VAR_1} learned\n{STR_VAR_2}!");
const u8 gText_PkmnCantLearnMove[] = _("{STR_VAR_1} and {STR_VAR_2}\nare not compatible.\p{STR_VAR_2} can't be\nlearned.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnNeedsToReplaceMove[] = _("{STR_VAR_1} wants to learn the\nmove {STR_VAR_2}.\pHowever, {STR_VAR_1} already\nknows four moves.\pShould a move be deleted and\nreplaced with {STR_VAR_2}?");
const u8 gText_StopLearningMove2[] = _("Stop trying to teach\n{STR_VAR_2}?");
const u8 gText_MoveNotLearned[] = _("{STR_VAR_1} did not learn the\nmove {STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_WhichMoveToForget[] = _("Which move should be forgotten?{PAUSE_UNTIL_PRESS}");
const u8 gText_12PoofForgotMove[] = _("1, {PAUSE 0x0F}2, and{PAUSE 0x0F}‥ {PAUSE 0x0F}‥ {PAUSE 0x0F}‥ {PAUSE 0x0F}{PLAY_SE SE_BALL_BOUNCE_1}Poof!\p{STR_VAR_1} forgot how to\nuse {STR_VAR_2}.\pAnd...{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnAlreadyKnows[] = _("{STR_VAR_1} already knows\n{STR_VAR_2}.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnHPRestoredByVar2[] = _("{STR_VAR_1}'s HP was restored\nby {STR_VAR_2} point(s).{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnCuredOfPoison[] = _("{STR_VAR_1} was cured of its\npoisoning.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnCuredOfParalysis[] = _("{STR_VAR_1} was cured of\nparalysis.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnWokeUp2[] = _("{STR_VAR_1} woke up.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnBurnHealed[] = _("{STR_VAR_1}'s burn was healed.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnThawedOut[] = _("{STR_VAR_1} was thawed out.{PAUSE_UNTIL_PRESS}");
const u8 gText_PPWasRestored[] = _("PP was restored.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnRegainhedHealth[] = _("{STR_VAR_1}は\nげんきを とりもどした!{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnBecameHealthy[] = _("{STR_VAR_1} became healthy.{PAUSE_UNTIL_PRESS}");
const u8 gText_MovesPPIncreased[] = _("{STR_VAR_1}'s PP increased.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnElevatedToLvVar2[] = _("{STR_VAR_1} was elevated to\nLv. {STR_VAR_2}.");
const u8 gText_PkmnBaseVar2StatIncreased[] = _("{STR_VAR_1}'s base {STR_VAR_2}\nstat was raised.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnSnappedOutOfConfusion[] = _("{STR_VAR_1} snapped out of its\nconfusion.{PAUSE_UNTIL_PRESS}");
const u8 gText_PkmnGotOverInfatuation[] = _("{STR_VAR_1} got over its\ninfatuation.{PAUSE_UNTIL_PRESS}");
const u8 gText_OnlyPkmnForBattle[] = _("That's your only\nPOKéMON for battle.");
__attribute__((aligned(4))) const u8 gText_PkmnCantBeTradedNow[] = _("That POKéMON can't be traded\nnow.");
__attribute__((aligned(4))) const u8 gText_EggCantBeTradedNow[] = _("An EGG can't be traded now.");
__attribute__((aligned(4))) const u8 gText_OtherTrainersPkmnCantBeTraded[] = _("The other TRAINER's POKéMON\ncan't be traded now.");
__attribute__((aligned(4))) const u8 gText_OtherTrainerCantAcceptPkmn[] = _("The other TRAINER can't accept\nthat POKéMON now.");
__attribute__((aligned(4))) const u8 gText_CantTradeWithTrainer[] = _("You can't trade with that\nTRAINER now.");
__attribute__((aligned(4))) const u8 gText_NotPkmnOtherTrainerWants[] = _("That isn't the type of POKéMON\nthat the other TRAINER wants.");
__attribute__((aligned(4))) const u8 gText_ThatIsntAnEgg[] = _("That isn't an EGG.");
const u8 gText_ChoosePokemon[] = _("Choose a POKéMON.");
const u8 gText_MoveToWhere[] = _("Move to where?");
const u8 gText_TeachWhichPokemon[] = _("Teach which POKéMON?");
const u8 gText_UseOnWhichPokemon[] = _("Use on which POKéMON?");
const u8 gText_GiveToWhichPokemon[] = _("Give to which POKéMON?");
const u8 gText_DoWhatWithPokemon[] = _("Do what with this {PKMN}?");
const u8 gText_NothingToCut[] = _("There's nothing to CUT.");
const u8 gText_CantSurfHere[] = _("No SURFING here!");
const u8 gText_AlreadySurfing[] = _("You're already SURFING.");
const u8 gText_CantUseHere[] = _("Can't use that here.");
const u8 gText_RestoreWhichMove[] = _("Restore which move?");
const u8 gText_BoostPp[] = _("Boost PP of which?");
const u8 gText_DoWhatWithItem[] = _("Do what with an item?");
const u8 gText_NoPokemonForBattle[] = _("No battling this way!");
const u8 gText_ChoosePokemon2[] = _("Choose a POKéMON.");
const u8 gText_NotEnoughHp[] = _("Not enough HP‥");
const u8 gText_ThreePkmnAreNeeded[] = _("Three {PKMN} are needed.");
const u8 gText_PokemonCantBeSame[] = _("{PKMN} can't be the same.");
const u8 gText_NoIdenticalHoldItems[] = _("No same hold items!");
const u8 gText_CurrentIsTooFast[] = _("The current is much too fast!");
const u8 gText_DoWhatWithMail[] = _("Do what with the MAIL?");
const u8 gText_ChoosePokemonCancel[] = _("Choose POKéMON or CANCEL.");
const u8 gText_ChoosePokemonConfirm[] = _("Choose POKéMON and confirm.");
const u8 gText_TwoPokemonAreNeeded[] = _("Two POKéMON are needed.");
const u8 gText_EnjoyCycling[] = _("Let's enjoy cycling!");
const u8 gText_InUseAlready_PM[] = _("This is in use already.");
const u8 gText_NoUse[] = _("No use.");
const u8 gText_Able[] = _("ABLE");
const u8 gText_First_PM[] = _("FIRST");
const u8 gText_Second_PM[] = _("SECOND");
const u8 gText_Third_PM[] = _("THIRD");
const u8 gText_Able2[] = _("ABLE");
const u8 gText_NotAble[] = _("NOT ABLE");
const u8 gText_Able3[] = _("ABLE!");
const u8 gText_NotAble2[] = _("NOT ABLE!");
const u8 gText_Learned[] = _("LEARNED");
const u8 gText_OakImportantToGetToKnowPokemonThroughly[] = _("OAK: It's important to get to know\nyour POKéMON thoroughly.\p");
const u8 gText_OakThisIsListOfPokemon[] = _("This is a list of your POKéMON,\n{PLAYER}.\pOpen this to check the skills\nand moves of your POKéMON.\pYou also choose POKéMON here if\nyou want to use an item on one.{PAUSE_UNTIL_PRESS}");
const u8 gText_CutATreeOrGrass[] = _("Cut a tree or grass.");
const u8 gText_FlyToAKnownTown[] = _("Fly to a known town.");
const u8 gText_TravelOnWater[] = _("Travel on water.");
const u8 gText_MoveHeavyBoulders[] = _("Move heavy boulders.");
const u8 gText_LightUpDarkness[] = _("Light up darkness.");
const u8 gText_ShatterACrackedRock[] = _("Shatter a cracked rock.");
const u8 gText_ClimbAWaterfall[] = _("Climb a waterfall.");
const u8 gText_DiveUnderwater[] = _("すいちゅうに もぐる");
const u8 gText_EscapeFromHere[] = _("Escape from here.");
const u8 gText_LureWildPokemon[] = _("Lure wild POKéMON.");
const u8 gText_ShareHp[] = _("Share HP.");
const u8 gText_ReturnToAHealingSpot[] = _("Return to a healing spot.");
const u8 gText_EscapeFromHereAndReturnTo[] = _("Want to escape from here and return\nto {STR_VAR_1}?");
const u8 gText_ReturnToHealingSpot[] = _("Want to return to the healing spot\nused last in {STR_VAR_1}?");
const u8 gText_ItemEffect_Attack[] = _("ATTACK");
const u8 gText_ItemEffect_Defense[] = _("DEFENSE");
const u8 gText_ItemEffect_SpAtk_Unused[] = _("とくこう");
const u8 gText_ItemEffect_SpDef_Unused[] = _("とくぼう");
const u8 gText_ItemEffect_Speed[] = _("SPEED");
const u8 gText_ItemEffect_HP_Unused[] = _("HP");
const u8 gText_PkmnCantParticipate[] = _("That POKéMON can't participate.{PAUSE_UNTIL_PRESS}");
const u8 gText_CancelParticipation[] = _("Cancel participation?");
const u8 gText_Empty12[] = _("");
const u8 gText_CancelBattle[] = _("Cancel the battle?");
const u8 gText_TurnOff[] = _("TURN OFF");
const u8 gText_Decoration[] = _("もようがえ");
const u8 gText_ItemStorage[] = _("ITEM STORAGE");
const u8 gText_Mailbox[] = _("MAILBOX");
const u8 gText_DepositItem2[] = _("DEPOSIT ITEM");
const u8 gText_WithdrawItem2[] = _("WITHDRAW ITEM");
const u8 gText_TossItem[] = _("どうぐを すてる");
const u8 gText_StoreItemsInThePC[] = _("Store items in the PC.");
const u8 gText_TakeOutItemsFromThePC[] = _("Take out items from the PC.");
const u8 gText_ThrowAwayItemsInPC[] = _("パソコンに あずけている\nどうぐを すてます");
const u8 gText_ThereAreNoItems[] = _("There are no items.{PAUSE_UNTIL_PRESS}");
const u8 gText_NoMoreRoomInBag[] = _("There is no more\nroom in the BAG.");
const u8 gText_WithdrawHowMany[] = _("Withdraw how many\n{STR_VAR_1}(s)?");
const u8 gText_WithdrewQuantItem[] = _("Withdrew {STR_VAR_2}\n{STR_VAR_1}(s).");
const u8 gOtherText_Read[] = _("READ");
const u8 gOtherText_MoveToBag[] = _("MOVE TO BAG");
const u8 gOtherText_Give2[] = _("GIVE");
const u8 gText_TheresNoMailHere[] = _("There's no MAIL here.{PAUSE_UNTIL_PRESS}");
const u8 gText_WhatWouldYouLikeToDoWithPlayersMail[] = _("What would you like to do with\n{STR_VAR_1}'s MAIL?");
const u8 gText_MessageWillBeLost[] = _("The message will be lost.\nIs that okay?");
const u8 gText_BagIsFull[] = _("The BAG is full.{PAUSE_UNTIL_PRESS}");
const u8 gText_MailReturnedToBagMessageErased[] = _("The MAIL was returned to the BAG\nwith its message erased.{PAUSE_UNTIL_PRESS}");
const u8 gText_WithdrawItem[] = _("WITHDRAW\nITEM");
const u8 gText_Withdraw[] = _("WITHDRAW");
const u8 gText_ReturnToPC[] = _("Return to the PC.");
const u8 gText_LtSurge[] = _("LT. SURGE");
const u8 gText_Koga[] = _("KOGA");
const u8 gText_Participate[] = _("さんか する");
const u8 gText_Info[] = _("INFO");
const u8 gText_Eggs[] = _("EGGS");
const u8 gText_HallOfFame[] = _("HALL OF FAME");
const u8 gText_Victories[] = _("VICTORIES");
const u8 gText_Quit[] = _("QUIT");
const u8 gText_Psn[] = _("PSN");
const u8 gText_Par[] = _("PAR");
const u8 gText_Slp[] = _("SLP");
const u8 gText_Brn[] = _("BRN");
const u8 gText_Frz[] = _("FRZ");
const u8 gText_Toxic[] = _("TOXIC");
const u8 gText_OK[] = _("OK");
const u8 gOtherText_Quit[] = _("QUIT");
const u8 gText_SawIt[] = _("みました");
const u8 gText_NotYet[] = _("これから");
const u8 gText_Yes[] = _("YES");
const u8 gText_No[] = _("NO");
const u8 gText_Info4[] = _("せつめい");
const u8 gText_SingleBattle[] = _("SINGLE BATTLE");
const u8 gText_DoubleBattle[] = _("DOUBLE BATTLE");
const u8 gText_MultiBattle[] = _("MULTI BATTLE");
const u8 gText_MakeAChallenge[] = _("Make a challenge.");
const u8 gText_Info_2[] = _("INFO");
const u8 gText_FreshWater_200[] = _("FRESH WATER{CLEAR_TO 0x57}{FONT_SMALL}¥200");
const u8 gText_SodaPop_300[] = _("SODA POP{CLEAR_TO 0x57}{FONT_SMALL}¥300");
const u8 gText_Lemonade_350[] = _("LEMONADE{CLEAR_TO 0x57}{FONT_SMALL}¥350");
const u8 gText_50Coins_1000[] = _("{FONT_SMALL} 50 COINS{CLEAR_TO 0x45}¥1,000");
const u8 gText_500Coins_10000[] = _("{FONT_SMALL}500 COINS{CLEAR_TO 0x40}¥10,000");
const u8 gText_Excellent[] = _("Excellent");
const u8 gText_NotSoBad[] = _("Not so bad");
const u8 gText_RedShard[] = _("RED SHARD");
const u8 gText_YellowShard[] = _("YELLOW SHARD");
const u8 gText_BlueShard[] = _("BLUE SHARD");
const u8 gText_GreenShard[] = _("GREEN SHARD");
const u8 gText_BattleTower[] = _("バトルタワ-");
const u8 gText_Right[] = _("Right");
const u8 gText_Left[] = _("Left");
const u8 gText_Tm13_4000Coins[] = _("TM13{CLEAR_TO 0x48}{FONT_SMALL}4,000 COINS");
const u8 gText_Tm23_3500Coins[] = _("TM23{CLEAR_TO 0x48}{FONT_SMALL}3,500 COINS");
const u8 gText_Tm24_4000Coins[] = _("TM24{CLEAR_TO 0x48}{FONT_SMALL}4,000 COINS");
const u8 gText_Tm30_4500Coins[] = _("TM30{CLEAR_TO 0x48}{FONT_SMALL}4,500 COINS");
const u8 gText_Tm35_4000Coins[] = _("TM35{CLEAR_TO 0x48}{FONT_SMALL}4,000 COINS");
const u8 gText_1F_2[] = _("1F");
const u8 gText_2F_2[] = _("2F");
const u8 gText_3F_2[] = _("3F");
const u8 gText_4F_2[] = _("4F");
const u8 gText_5F_2[] = _("5F");
const u8 gText_Cool[] = _("COOL");
const u8 gText_Beauty[] = _("BEAUTY");
const u8 gText_Cute[] = _("CUTE");
const u8 gText_Smart[] = _("SMART");
const u8 gText_Tough[] = _("TOUGH");
const u8 gText_Normal[] = _("NORMAL");
const u8 gText_Black[] = _("BLACK");
const u8 gText_Pink[] = _("PINK");
const u8 gText_Sepia[] = _("SEPIA");
const u8 gText_Cool_2[] = _("COOL");
const u8 gText_Beauty_2[] = _("BEAUTY");
const u8 gText_Cute_2[] = _("CUTE");
const u8 gText_Smart_2[] = _("SMART");
const u8 gText_Tough_2[] = _("TOUGH");
const u8 gText_Items[] = _("ITEMS");
const u8 gText_KeyItems[] = _("KEY ITEMS");
const u8 gText_PokeBalls[] = _("POKé BALLS");
const u8 gText_TMsAndHMs[] = _("TMs & HMs");
const u8 gText_Berries[] = _("BERRIES");
const u8 gText_Boulderbadge[] = _("BOULDERBADGE");
const u8 gText_Cascadebadge[] = _("CASCADEBADGE");
const u8 gText_Thunderbadge[] = _("THUNDERBADGE");
const u8 gText_Rainbowbadge[] = _("RAINBOWBADGE");
const u8 gText_Soulbadge[] = _("SOULBADGE");
const u8 gText_Marshbadge[] = _("MARSHBADGE");
const u8 gText_Volcanobadge[] = _("VOLCANOBADGE");
const u8 gText_Earthbadge[] = _("EARTHBADGE");
const u8 gText_SomeoneSPc[] = _("SOMEONE'S PC");
const u8 gText_BillSPc[] = _("BILL'S PC");
const u8 gText_SPc[] = _("{PLAYER}'s PC");
const u8 gText_HallOfFame_2[] = _("HALL OF FAME");
const u8 gText_LogOff[] = _("LOG OFF");
const u8 gText_ProfOakSPc[] = _("PROF. OAK's PC");
const u8 gText_Eevee[] = _("EEVEE");
const u8 gText_Flareon[] = _("FLAREON");
const u8 gText_Jolteon[] = _("JOLTEON");
const u8 gText_Vaporeon[] = _("VAPOREON");
const u8 gText_QuitLooking[] = _("Quit looking.");
const u8 gText_FreshWater[] = _("FRESH WATER");
const u8 gText_SodaPop[] = _("SODA POP");
const u8 gText_Lemonade[] = _("LEMONADE");
const u8 gText_Coins_2[] = _("COINS");
const u8 gText_Bicycle_Price[] = _("BICYCLE{CLEAR_TO 0x49}{FONT_SMALL}¥1,000,000");
const u8 gText_NoThanks[] = _("NO THANKS");
const u8 gText_Abra_180Coins[] = _("ABRA{CLEAR_TO 0x55}{FONT_SMALL} 180 COINS");
const u8 gText_Clefairy_500Coins[] = _("CLEFAIRY{CLEAR_TO 0x55}{FONT_SMALL} 500 COINS");
const u8 gText_Dratini_2800Coins[] = _("DRATINI{CLEAR_TO 0x4B}{FONT_SMALL} 2,800 COINS");
const u8 gText_Scyther_5500Coins[] = _("SCYTHER{CLEAR_TO 0x4B}{FONT_SMALL} 5,500 COINS");
const u8 gText_Porygon_9999Coins[] = _("PORYGON{CLEAR_TO 0x4B}{FONT_SMALL} 9,999 COINS");
const u8 gText_Abra_120Coins[] = _("ABRA{CLEAR_TO 0x55}{FONT_SMALL} 120 COINS");
const u8 gText_Clefairy_750Coins[] = _("CLEFAIRY{CLEAR_TO 0x55}{FONT_SMALL} 750 COINS");
const u8 gText_Pinsir_2500Coins[] = _("PINSIR{CLEAR_TO 0x4B}{FONT_SMALL} 2,500 COINS");
const u8 gText_Dratini_4600Coins[] = _("DRATINI{CLEAR_TO 0x4B}{FONT_SMALL} 4,600 COINS");
const u8 gText_Porygon_6500Coins[] = _("PORYGON{CLEAR_TO 0x4B}{FONT_SMALL} 6,500 COINS");
const u8 gText_NoThanks_2[] = _("NO THANKS");
const u8 gText_HelixFossil[] = _("HELIX FOSSIL");
const u8 gText_DomeFossil[] = _("DOME FOSSIL");
const u8 gText_OldAmber[] = _("OLD AMBER");
const u8 gText_TradeCenter[] = _("TRADE CENTER");
const u8 gText_Colosseum[] = _("COLOSSEUM");
const u8 gText_GameLinkCable[] = _("Game Link cable");
const u8 gText_Wireless[] = _("Wireless");
const u8 gText_ItemsPocket[] = _("ITEMS POCKET");
const u8 gText_KeyItemsPocket[] = _("KEY ITEMS POCKET");
const u8 gText_PokeBallsPocket[] = _("POKé BALLS POCKET");
const u8 gText_TmCase[] = _("TM CASE");
const u8 gText_BerryPouch_2[] = _("BERRY POUCH");
const u8 gText_Other[] = _("OTHER");
const u8 gText_OneIsland[] = _("ONE ISLAND");
const u8 gText_TwoIsland[] = _("TWO ISLAND");
const u8 gText_ThreeIsland[] = _("THREE ISLAND");
const u8 gText_FourIsland[] = _("FOUR ISLAND");
const u8 gText_FiveIsland[] = _("FIVE ISLAND");
const u8 gText_SixIsland[] = _("SIX ISLAND");
const u8 gText_SevenIsland[] = _("SEVEN ISLAND");
const u8 gText_Vermilion[] = _("VERMILION");
const u8 gText_Colosseum_2[] = _("COLOSSEUM");
const u8 gText_BerryCrush[] = _("BERRY CRUSH");
const u8 gText_EmptyLinkService1[] = _("");
const u8 gText_EmptyLinkService2[] = _("");
const u8 gText_ListenToExplanation[] = _("せつめいを きく");
const u8 gText_RecordCorner[] = _("");
const u8 gText_PokemonJump[] = _("POKéMON JUMP");
const u8 gText_DodrioBerryPicking[] = _("DODRIO BERRY-PICKING");
const u8 gText_2Tinymushrooms[] = _("2 TINYMUSHROOMS");
const u8 gText_1BigMushroom[] = _("1 BIG MUSHROOM");
const u8 gText_SeviiIslands[] = _("SEVII ISLANDS");
const u8 gText_NavelRock[] = _("NAVEL ROCK");
const u8 gText_BirthIsland[] = _("BIRTH ISLAND");
const u8 gText_MiracleSeed_1000Coins[] = _("MIRACLE SEED{CLEAR_TO 0x50}{FONT_SMALL}1,000 COINS");
const u8 gText_Charcoal_1000Coins[] = _("CHARCOAL{CLEAR_TO 0x50}{FONT_SMALL}1,000 COINS");
const u8 gText_MysticWater_1000Coins[] = _("MYSTIC WATER{CLEAR_TO 0x50}{FONT_SMALL}1,000 COINS");
const u8 gText_YellowFlute_1600Coins[] = _("YELLOW FLUTE{CLEAR_TO 0x50}{FONT_SMALL}1,600 COINS");
const u8 gText_SmokeBall_800Coins[] = _("SMOKE BALL{CLEAR_TO 0x5A}{FONT_SMALL}800 COINS");
const u8 gText_Multichoice_Empty2[] = _("");
const u8 gText_Multichoice_Empty1[] = _("");
const u8 gText_BecomeLeader[] = _("BECOME LEADER");
const u8 gText_JoinGroup[] = _("JOIN GROUP");
const u8 gOtherText_Single[] = _("SINGLE");
const u8 gOtherText_Double[] = _("DOUBLE");
const u8 gOtherText_Knockout[] = _("KNOCKOUT");
const u8 gOtherText_Mixed[] = _("MIXED");
const u8 gText_99TimesPlus[] = _("99かい いじょう");
const u8 gText_1MinutePlus[] = _("1ぷん いじょう");
const u8 gText_SpaceSeconds[] = _("びょう");
const u8 gText_SpaceTimes[] = _("かい");
const u8 gText_DecimalPoint[] = _(".");
const u8 gText_BigGuy[] = _("Big guy");
const u8 gText_BigGirl[] = _("Big girl");
const u8 gText_Son[] = _("son");
const u8 gText_Daughter[] = _("daughter");
const u8 gText_BoulderBadge[] = _("BOULDERBADGE");
const u8 gText_CascadeBadge[] = _("CASCADEBADGE");
const u8 gText_ThunderBadge[] = _("THUNDERBADGE");
const u8 gText_RainbowBadge[] = _("RAINBOWBADGE");
const u8 gText_SoulBadge[] = _("SOULBADGE");
const u8 gText_MarshBadge[] = _("MARSHBADGE");
const u8 gText_VolcanoBadge[] = _("VOLCANOBADGE");
const u8 gText_EarthBadge[] = _("EARTHBADGE");
const u8 gText_1F[] = _("1F");
const u8 gText_2F[] = _("2F");
const u8 gText_3F[] = _("3F");
const u8 gText_4F[] = _("4F");
const u8 gText_5F[] = _("5F");
const u8 gText_6F[] = _("6F");
const u8 gText_7F[] = _("7F");
const u8 gText_8F[] = _("8F");
const u8 gText_9F[] = _("9F");
const u8 gText_10F[] = _("10F");
const u8 gText_11F[] = _("11F");
const u8 gText_B1F[] = _("B1F");
const u8 gText_B2F[] = _("B2F");
const u8 gText_B3F[] = _("B3F");
const u8 gText_B4F[] = _("B4F");
const u8 gText_Rooftop[] = _("ROOFTOP");
const u8 gText_NowOn[] = _("Now on:");
const u8 gText_LinkedGamePlay[] = _("LINKED GAME PLAY");
const u8 gText_DirectCorner[] = _("DIRECT CORNER");
const u8 gText_UnionRoom[] = _("UNION ROOM");
const u8 gText_Energypowder_50[] = _("ENERGYPOWDER{CLEAR_TO 0x74}{FONT_SMALL}50");
const u8 gText_EnergyRoot_80[] = _("ENERGY ROOT{CLEAR_TO 0x74}{FONT_SMALL}80");
const u8 gText_HealPowder_50[] = _("HEAL POWDER{CLEAR_TO 0x74}{FONT_SMALL}50");
const u8 gText_RevivalHerb_300[] = _("REVIVAL HERB{CLEAR_TO 0x6F}{FONT_SMALL}300");
const u8 gText_Protein_1000[] = _("PROTEIN{CLEAR_TO 0x65}{FONT_SMALL}1,000");
const u8 gText_Iron_1000[] = _("IRON{CLEAR_TO 0x65}{FONT_SMALL}1,000");
const u8 gText_Carbos_1000[] = _("CARBOS{CLEAR_TO 0x65}{FONT_SMALL}1,000");
const u8 gText_Calcium_1000[] = _("CALCIUM{CLEAR_TO 0x65}{FONT_SMALL}1,000");
const u8 gText_Zinc_1000[] = _("ZINC{CLEAR_TO 0x65}{FONT_SMALL}1,000");
const u8 gText_HpUp_1000[] = _("HP UP{CLEAR_TO 0x65}{FONT_SMALL}1,000");
const u8 gText_PpUp_3000[] = _("PP UP{CLEAR_TO 0x65}{FONT_SMALL}3,000");
const u8 gString_BattleRecords_PlayersBattleResults[] = _("{PLAYER}'s BATTLE RESULTS");
const u8 gString_BattleRecords_TotalRecord[] = _("TOTAL RECORD W:{STR_VAR_1} L:{STR_VAR_2} D:{STR_VAR_3}");
const u8 gString_BattleRecords_ColumnHeaders[] = _("WIN{CLEAR_TO 0x30}LOSE{CLEAR_TO 0x60}DRAW");
const u8 gString_BattleRecords_7Dashes[] = _("-------");
const u8 gString_BattleRecords_4Dashes[] = _("----");
const u8 gFameCheckerText_FameCheckerWillBeClosed[] = _("The FAME CHECKER will be closed.");
const u8 gFameCheckerText_ClearTextbox[] = _("\n                              ");
const u8 gText_ExitUnused[] = _("やめる");
const u8 gText_ExitFromBox[] = _("Exit from the BOX.");
const u8 gText_WhatDoYouWantToDo[] = _("What do you want to do?");
const u8 gText_PleasePickATheme[] = _("Please pick a theme.");
const u8 gText_PickTheWallpaper[] = _("Pick the wallpaper.");
const u8 gText_PkmnIsSelected[] = _("{DYNAMIC 0x00} is selected.");
const u8 gText_JumpToWhichBox[] = _("Jump to which BOX?");
const u8 gText_DepositInWhichBox[] = _("Deposit in which BOX?");
const u8 gText_PkmnWasDeposited[] = _("{DYNAMIC 0x00} was deposited.");
const u8 gText_BoxIsFull2[] = _("The BOX is full.");
const u8 gText_ReleaseThisPokemon[] = _("Release this POKéMON?");
const u8 gText_PkmnWasReleased[] = _("{DYNAMIC 0x00} was released.");
const u8 gText_ByeByePkmn[] = _("Bye-bye, {DYNAMIC 0x00}!");
const u8 gText_MarkYourPkmn[] = _("Mark your POKéMON.");
const u8 gText_ThatsYourLastPkmn[] = _("That's your last POKéMON!");
const u8 gText_YourPartysFull[] = _("Your party's full!");
const u8 gText_YoureHoldingAPkmn[] = _("You're holding a POKéMON!");
const u8 gText_WhichOneWillYouTake[] = _("Which one will you take?");
const u8 gText_YouCantReleaseAnEgg[] = _("You can't release an EGG.");
const u8 gText_ContinueBoxOperations[] = _("Continue BOX operations?");
const u8 gText_PkmnCameBack[] = _("{DYNAMIC 0x00} came back!");
const u8 gText_WasItWorriedAboutYou[] = _("Was it worried about you?");
const u8 gText_FourEllipsesExclamation[] = _("‥ ‥ ‥ ‥ ‥!");
const u8 gText_PleaseRemoveTheMail[] = _("Please remove the MAIL.");
const u8 gText_GiveToAPkmn[] = _("GIVE to a POKéMON?");
const u8 gText_PlacedItemInBag[] = _("Placed item in the BAG.");
const u8 gText_BagIsFull2[] = _("The BAG is full.");
const u8 gText_PutItemInBag[] = _("Put this item in the BAG?");
const u8 gText_ItemIsNowHeld[] = _("{DYNAMIC 0x00} is now held.");
const u8 gText_ChangedToNewItem[] = _("Changed to {DYNAMIC 0x00}.");
const u8 gText_MailCantBeStored[] = _("MAIL can't be stored!");
const u8 gPCText_Cancel[] = _("CANCEL");
const u8 gPCText_Store[] = _("STORE");
const u8 gPCText_Withdraw[] = _("WITHDRAW");
const u8 gPCText_Shift[] = _("SHIFT");
const u8 gPCText_Move[] = _("MOVE");
const u8 gPCText_Place[] = _("PLACE");
const u8 gPCText_Summary[] = _("SUMMARY");
const u8 gPCText_Release[] = _("RELEASE");
const u8 gPCText_Mark[] = _("MARK");
const u8 gPCText_Name[] = _("NAME");
const u8 gPCText_Jump[] = _("JUMP");
const u8 gPCText_Wallpaper[] = _("WALLPAPER");
const u8 gPCText_Take[] = _("TAKE");
const u8 gPCText_Give[] = _("GIVE");
const u8 gPCText_Switch[] = _("SWITCH");
const u8 gPCText_Bag[] = _("BAG");
const u8 gPCText_Info[] = _("INFO");
const u8 gPCText_Scenery1[] = _("SCENERY 1");
const u8 gPCText_Scenery2[] = _("SCENERY 2");
const u8 gPCText_Scenery3[] = _("SCENERY 3");
const u8 gPCText_Etcetera[] = _("ETCETERA");
const u8 gPCText_Forest[] = _("FOREST");
const u8 gPCText_City[] = _("CITY");
const u8 gPCText_Desert[] = _("DESERT");
const u8 gPCText_Savanna[] = _("SAVANNA");
const u8 gPCText_Crag[] = _("CRAG");
const u8 gPCText_Volcano[] = _("VOLCANO");
const u8 gPCText_Snow[] = _("SNOW");
const u8 gPCText_Cave[] = _("CAVE");
const u8 gPCText_Beach[] = _("BEACH");
const u8 gPCText_Seafloor[] = _("SEAFLOOR");
const u8 gPCText_River[] = _("RIVER");
const u8 gPCText_Sky[] = _("SKY");
const u8 gPCText_PolkaDot[] = _("STARS");
const u8 gPCText_Pokecenter[] = _("POKéCENTER");
const u8 gPCText_Machine[] = _("TILES");
const u8 gPCText_Simple[] = _("SIMPLE");
const u8 gText_PC_WhatWouldYouLikeToDo[] = _("なにを しますか?");
const u8 gText_WithdrawPokemon[] = _("WITHDRAW POKéMON");
const u8 gText_DepositPokemon[] = _("DEPOSIT POKéMON");
const u8 gText_MovePokemon[] = _("MOVE POKéMON");
const u8 gText_MoveItems[] = _("MOVE ITEMS");
const u8 gText_SeeYa[] = _("SEE YA!");
const u8 gText_WithdrawMonDescription[] = _("You can withdraw a POKéMON if you\nhave any in a BOX.");
const u8 gText_DepositMonDescription[] = _("You can deposit your party\nPOKéMON in any BOX.");
const u8 gText_MoveMonDescription[] = _("You can move POKéMON that are\nstored in any BOX.");
const u8 gText_MoveItemsDescription[] = _("You can move items held by any\nPOKéMON in a BOX or your party.");
const u8 gText_SeeYaDescription[] = _("See you later!");
const u8 gText_JustOnePkmn[] = _("Can't deposit the last POKéMON!");
const u8 gText_PartyFull[] = _("Can't take any more POKéMON.");
const u8 gText_Box[] = _("BOX");
const u8 gText_CombineFourWordsOrPhrases[] = _("Combine four words or phrases");
const u8 gText_AndMakeYourProfile[] = _("and make your profile.");
const u8 gText_MakeMessageSixPhrases[] = _("Make a message of six phrases.");
const u8 gText_MaxTwoTwelveLetterPhrases[] = _("Max two 12-letter phrases/line.");
const u8 gText_FindWordsThatDescribeYour[] = _("Find words that describe your");
const u8 gText_FeelingsRightNow[] = _("feelings right now.");
const u8 gText_WithFourPhrases[] = _("4つの ことばで");
const u8 gText_CombineNineWordsOrPhrases[] = _("Combine nine words or phrases");
const u8 gText_AndMakeAMessage[] = _("and make a message.");
const u8 gText_ChangeJustOneWordOrPhrase[] = _("Change just one word or phrase");
const u8 gText_AndImproveTheBardsSong[] = _("and improve the BARD's song.");
const u8 gText_AndFillOutTheQuestionnaire[] = _("and fill out the questionnaire.");
const u8 gText_YourProfile[] = _("Your profile");
const u8 gText_YourFeelingAtTheBattlesStart[] = _("Your feeling at the battle's start");
const u8 gText_WhatYouSayIfYouWin[] = _("What you say if you win a battle");
const u8 gText_WhatYouSayIfYouLose[] = _("What you say if you lose a battle");
const u8 gText_TheAnswer[] = _("The answer");
const u8 gText_TheMailMessage[] = _("The MAIL message");
const u8 gText_TheMailSalutation[] = _("はがきに のせる あいさつは");
const u8 gText_TheNewSong[] = _("The new song");
const u8 gText_CombineTwoWordsOrPhrases[] = _("Combine two words or phrases");
const u8 gText_AndMakeATrendySaying[] = _("and make a trendy saying.");
const u8 gText_TheTrendySaying[] = _("The trendy saying");
const u8 gText_IsAsShownOkay[] = _("is as shown. Okay?");
const u8 gText_CombineTwoWordsOrPhrases2[] = _("2つの ことばを くみあわせて");
const u8 gText_ToTeachHerAGoodSaying[] = _("いい ことばを おしえてあげよう!");
const u8 gText_AllTextBeingEditedWill[] = _("All the text being edited will");
const u8 gText_BeDeletedThatOkay[] = _("be deleted. Is that okay?");
const u8 gText_PleaseEnterPhraseOrWord[] = _("なにか ことばを いれてください!");
const u8 gText_EntireTextCantBeDeleted[] = _("ことばを ぜんぶ けすことは できません!");
const u8 gText_OnlyOnePhrase[] = _("かえられる ことばは 1つ までです!");
const u8 gText_OriginalSongWillBeUsed[] = _("うたを もとに もどします!");
const u8 gText_ThatsTrendyAlready[] = _("それは もう はやっています!");
const u8 gText_CombineTwoWordsOrPhrases3[] = _("2つの ことばを くみあわせてください!");
const u8 gText_QuitEditing[] = _("Quit editing?");
const u8 gText_StopGivingPkmnMail[] = _("Stop giving the POKéMON MAIL?");
const u8 gText_TheEditedWords[] = _("へんしゅうした ことばは ほぞん");
const u8 gText_WillNotBeSaved[] = _("されませんが いいですか?");
const u8 gText_Profile[] = _("PROFILE");
const u8 gText_AtTheBattlesStart[] = _("At the battle's start:");
const u8 gText_UponWinningABattle[] = _("Upon winning a battle:");
const u8 gText_UponLosingABattle[] = _("Upon losing a battle:");
const u8 gText_TheBardsSong[] = _("The BARD's Song");
const u8 gText_WhatsHipAndHappening[] = _("What's hip and happening?");
const u8 gText_Interview[] = _("Interview");
const u8 gText_GoodSaying[] = _("いい ことば");
const u8 gText_Questionnaire[] = _("QUESTIONNAIRE");
const u8 GiddyText_SoPretty[] = _(" きれい だよね-");
const u8 GiddyText_SoDarling[] = _(" かわいい よね-");
const u8 GiddyText_SoRelaxed[] = _(" のんびり だよね-");
const u8 GiddyText_SoSunny[] = _(" ぽっかぽか だよね-");
const u8 GiddyText_SoDesirable[] = _(" あこがれる よね-");
const u8 GiddyText_SoExciting[] = _(" ドキドキ するよね-");
const u8 GiddyText_SoAmusing[] = _(" おもしろい よね-");
const u8 GiddyText_SoMagical[] = _(" ふしぎ だよね-");
const u8 GiddyText_Is[] = _("って");
const u8 GiddyText_DontYouAgree[] = _("\nそう おもわない?");
const u8 GiddyText_ISoWantToGoOnAVacation[] = _("たびに でたいな-\nどこか いい ところ しらない?");
const u8 GiddyText_IBoughtCrayonsWith120Colors[] = _("120しょくの クレヨン かったんだ-\nいいでしょう?");
const u8 GiddyText_WouldntItBeNiceIfWeCouldFloat[] = _("しゃぼんだまに のって とべるように\nならないかな-");
const u8 GiddyText_WhenYouWriteOnASandyBeach[] = _("すなはまに かいた もじは\nすぐに きえちゃうのが かなしいよね-");
const u8 GiddyText_WhatsTheBottomOfTheSeaLike[] = _("うみの そこって どうなってるのかな-\nいちどで いいから みて みたいな-");
const u8 GiddyText_WhenYouSeeTheSettingSunDoesIt[] = _("ゆうやけを みると\nウチに かえりたく ならない?");
const u8 GiddyText_LyingBackInTheGreenGrass[] = _("みどりの しばで ねころがると\nきもちいいよね-");
const u8 GiddyText_SecretBasesAreSoWonderful[] = _("ひみつきち って いいよね!\nなんか わくわく してこない?");
const u8 gText_PokemonLeague[] = _("ポケモン リ-グ");
const u8 gText_PokemonCenter[] = _("POKéMON CENTER");
const u8 gText_GetsAPokeBlockQuestion[] = _("に ポロックを あげますか?");
const u8 gText_Coolness[] = _("かっこよさ");
const u8 gText_Beauty3[] = _("うつくしさ");
const u8 gText_Cuteness[] = _("かわいさ");
const u8 gText_Smartness[] = _("かしこさ");
const u8 gText_Toughness[] = _("たくましさ");
const u8 gText_WasEnhanced[] = _("に みがきが かかった!");
const u8 gText_NothingChanged[] = _("なにも かわらなかった!");
const u8 gText_WontEatAnymore[] = _("もう これいじょう たべない みたい‥");
const u8 gText_SaveFailedCheckingBackup[] = _("Save failed.\nChecking the backup memory‥\nPlease wait.\n“Time required:\nabout 1 minute”");
const u8 gText_BackupMemoryDamaged[] = _("The backup memory is damaged or\nthe game's battery has run dry.\nThe game can be played, but its\nprogress cannot be saved.\n“Please press the A Button.”");
const u8 gText_GamePlayCannotBeContinued[] = _("{COLOR DARK_GRAY}“このまま ぼうけんをつづけることは できません\nタイトルに もどります”");
const u8 gText_CheckCompleted[] = _("けんさが しゅうりょうしました!\nもういちど レポ-トを かきこみます\nしばらくおまちください");
const u8 gText_SaveCompleteGameCannotContinue[] = _("レポ-トの かきこみは しゅうりょうしました\n{COLOR DARK_GRAY}“このまま ぼうけんをつづけることは できません\nタイトルに もどります”");
const u8 gText_SaveCompletePressA[] = _("Save completed.\n“Please press the A Button.”");
const u8 gText_Ferry[] = _("れんらくせん");
const u8 gText_SecretBase[] = _("ひみつきち");
const u8 gText_Hideout[] = _("アジト");
const u8 gText_YourName[] = _("YOUR NAME?");
const u8 gText_BoxName[] = _("BOX NAME?");
const u8 gText_PkmnsNickname[] = _("'s nickname?");
const u8 gText_RivalsName[] = _("RIVAL's NAME?");
const u8 gText_MoveOkBack[] = _("{DPAD_ANY}MOVE {A_BUTTON}OK {B_BUTTON}BACK");
const u8 gText_AlphabetUpperLower[] = _("");
const u8 gText_RegionMap_Space[] = _(" ");
const u8 gText_RegionMap_AButtonGuide[] = _("{A_BUTTON}GUIDE");
const u8 gText_RegionMap_AButtonCancel[] = _("{A_BUTTON}CANCEL");
const u8 gText_RegionMap_AButtonCancel2[] = _("{A_BUTTON}CANCEL");
const u8 gText_RegionMap_AButtonSwitch[] = _("{A_BUTTON}SWITCH");
const u8 gText_RegionMap_AButtonOK[] = _("{A_BUTTON}OK");
const u8 gText_RegionMap_DPadMove[] = _("{DPAD_ANY}MOVE");
const u8 gText_RegionMap_UpDownPick[] = _("{DPAD_UPDOWN}PICK");
const u8 gText_RegionMap_NoData[] = _("No data");
const u8 gText_RegionMap_AreaDesc_ViridianForest[] = _("A deep and sprawling forest that\nextends around VIRIDIAN CITY.\nA natural maze, many people\nbecome lost inside.");
const u8 gText_RegionMap_AreaDesc_MtMoon[] = _("A mystical mountain that is known\nfor its frequent meteor falls.\nThe shards of stars that fall\nhere are known as MOON STONES.");
const u8 gText_RegionMap_AreaDesc_DiglettsCave[] = _("A seemingly plain tunnel that was\ndug by wild DIGLETT.\nIt is famous for connecting\nROUTES 2 and 11.");
const u8 gText_RegionMap_AreaDesc_VictoryRoad[] = _("A tunnel situated on ROUTE 23.\nIt earned its name because it\nmust be traveled by all TRAINERS\naiming for the top.");
const u8 gText_RegionMap_AreaDesc_PokemonMansion[] = _("A decrepit, burned-down mansion\non CINNABAR ISLAND.\nIt got its name because a famous\nPOKéMON researcher lived there.");
const u8 gText_RegionMap_AreaDesc_SafariZone[] = _("An amusement park outside FUCHSIA\nCITY where many rare POKéMON can\nbe observed in the wild.\nCatch them in a popular game!");
const u8 gText_RegionMap_AreaDesc_RockTunnel[] = _("A naturally formed underground\ntunnel. Because it has not been\ndeveloped, it is inky dark inside.\nA light is needed to get through.");
const u8 gText_RegionMap_AreaDesc_SeafoamIslands[] = _("A pair of islands that is situated\non ROUTE 20.\nThe two islands are shaped the\nsame, as if they were twins.");
const u8 gText_RegionMap_AreaDesc_PokemonTower[] = _("A tower that houses the graves of\ncountless POKéMON.\nMany people visit it daily to pay\ntheir respects to the fallen.");
const u8 gText_RegionMap_AreaDesc_CeruleanCave[] = _("A mysterious cave that is filled\nwith terribly tough POKéMON.\nIt is so dangerous, the POKéMON\nLEAGUE is in charge of it.");
const u8 gText_RegionMap_AreaDesc_PowerPlant[] = _("A power plant that was abandoned\nyears ago, though some of the\nmachines still work. It is infested\nwith electric POKéMON.");
const u8 gText_RegionMap_AreaDesc_MtEmber[] = _("Supposedly an inactive volcano.\nHowever, there are persistent\nreports that the peak blazes\nwith fire at night.");
const u8 gText_RegionMap_AreaDesc_BerryForest[] = _("A forest on a small islet off the\ncoast of THREE ISLAND. BERRIES\ngrow wildly in profusion, quickly\nreplenishing those that fall off.");
const u8 gText_RegionMap_AreaDesc_IcefallCave[] = _("A cave which is covered by water\nand ice on FOUR ISLAND.\nIt seems like the end of the cave\nis connected to the ocean.");
const u8 gText_RegionMap_AreaDesc_LostCave[] = _("A bewildering cave off the coast\nof RESORT GORGEOUS.\nSome curious thrill seekers have\nnever emerged from it.");
const u8 gText_RegionMap_AreaDesc_TanobyRuins[] = _("An ancient ruin that is rumored to\nbe home to a peculiar POKéMON.\nHowever, so far, the POKéMON\nremains an unconfirmed rumor.");
const u8 gText_RegionMap_AreaDesc_AlteringCave[] = _("This island has been known by this\nname since the distant past.\nNo one today knows where it got\nthis name, however.");
const u8 gText_RegionMap_AreaDesc_PatternBush[] = _("A lush and bush-like area. \nIn it are patterns where no grass\ngrows. Some study it in the belief\nthat a secret is concealed.");
const u8 gText_RegionMap_AreaDesc_DottedHole[] = _("A mysterious, just-discovered\nruin from an ancient time.\nIt got its name from the six dots\non its door.");
const u8 gText_PokeSum_MetInATrade[] = _("{DYNAMIC 0x00} nature.\nMet in a trade.");
const u8 gText_PokeSum_MetInATrade_BoldGentleGrammar[] = _("{DYNAMIC 0x00} nature.\nMet in a trade.");
const u8 gText_PokeSum_FatefulEncounterMet[] = _("{DYNAMIC 0x00} nature.\nMet in a fateful encounter when\nat {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_FatefulEncounterMet_BoldGentleGrammar[] = _("{DYNAMIC 0x00} nature.\nMet in a fateful encounter when\nat {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_Met[] = _("{DYNAMIC 0x00} nature.\nMet in {DYNAMIC 0x02} at {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_Met_BoldGentleGrammar[] = _("{DYNAMIC 0x00} nature.\nMet in {DYNAMIC 0x02} at {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_ApparentlyMet[] = _("{DYNAMIC 0x00} nature.\nApparently met in {DYNAMIC 0x02}\nat {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_ApparentlyMet_BoldGentleGrammar[] = _("{DYNAMIC 0x00} nature.\nApparently met in {DYNAMIC 0x02}\nat {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_Hatched[] = _("{DYNAMIC 0x00} nature.\nHatched: {DYNAMIC 0x02}\nat {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_Hatched_BoldGentleGrammar[] = _("{DYNAMIC 0x00} nature.\nHatched: {DYNAMIC 0x02}\nat {LV_2} {DYNAMIC 0x01}.");
const u8 gText_PokeSum_JP_ApparentlyHatched[] = _("{DYNAMIC 0x00}なせいかく {LV_2}{DYNAMIC 0x01}のとき\n{DYNAMIC 0x02}で かえった ようだ");
const u8 gText_PokeSum_JP_ApparentlyHatched_BoldGentleGrammar[] = _("{DYNAMIC 0x00}せいかく {LV_2}{DYNAMIC 0x01}のとき\n{DYNAMIC 0x02}で かえった ようだ");
const u8 gText_PokeSum_FatefulEncounterHatched[] = _("{DYNAMIC 0x00} nature. Met in a fateful\nencounter (hatched: {DYNAMIC 0x02}\nat {LV_2} {DYNAMIC 0x01}).");
const u8 gText_PokeSum_FatefulEncounterHatched_BoldGentleGrammar[] = _("{DYNAMIC 0x00} nature. Met in a fateful\nencounter (hatched: {DYNAMIC 0x02}\nat {LV_2} {DYNAMIC 0x01}).");
const u8 gText_PokeSum_ApparentlyFatefulEncounterHatched[] = _("{DYNAMIC 0x00} nature. Apparently met in\na fateful encounter (hatched:\n{DYNAMIC 0x02} at {LV_2} {DYNAMIC 0x01}).");
const u8 gText_PokeSum_ApparentlyFatefulEncounterHatched_BoldGentleGrammar[] = _("{DYNAMIC 0x00} nature. Apparently met in\na fateful encounter (hatched:\n{DYNAMIC 0x02} at {LV_2} {DYNAMIC 0x01}).");
const u8 gText_PokeSum_EggOrigin_DayCare[] = _("An odd POKéMON EGG found by the\nDAY-CARE couple.");
const u8 gText_PokeSum_EggOrigin_TravelingMan[] = _("An odd POKéMON EGG obtained from\nthe traveling man.");
const u8 gText_PokeSum_EggOrigin_NicePlace[] = _("A wondrously peculiar POKéMON EGG\nobtained at a nice place.");
const u8 gText_PokeSum_EggOrigin_Spa[] = _("An odd POKéMON EGG obtained from\nan old woman at the SPA.");
const u8 gText_PokeSum_EggOrigin_Trade[] = _("A peculiar POKéMON EGG obtained\nin a trade.");
const u8 gText_PokeSum_EggHatch_LongTime[] = _("It looks like this\nEGG will take a\nlong time to hatch.");
const u8 gText_PokeSum_EggHatch_SomeTime[] = _("What will hatch\nfrom this? It will\ntake some time.");
const u8 gText_PokeSum_EggHatch_Soon[] = _("It occasionally\nmoves. It should\nhatch soon.");
const u8 gText_PokeSum_EggHatch_AlmostReady[] = _("It's making sounds.\nIt's almost ready\nto hatch!");
const u8 gText_PokeSum_ATrade[] = _("a trade");
const u8 gText_Somewhere[] = _("Somewhere");
const u8 gText_PokeSum_PageName_PokemonInfo[] = _("POKéMON INFO");
const u8 gText_PokeSum_PageName_PokemonSkills[] = _("POKéMON SKILLS");
const u8 gText_PokeSum_PageName_KnownMoves[] = _("KNOWN MOVES");
const u8 gText_PokeSum_NoData[] = _("No data");
const u8 gText_PokeSum_ExpPoints[] = _("EXP. POINTS");
const u8 gText_PokeSum_NextLv[] = _("NEXT LV.");
const u8 gText_PokeSum_Controls_PageCancel[] = _("{DPAD_RIGHT}PAGE {A_BUTTON}CANCEL");
const u8 gText_PokeSum_Controls_Cancel[] = _("{A_BUTTON}CANCEL");
const u8 gText_PokeSum_Controls_Page[] = _("{DPAD_LEFTRIGHT}PAGE");
const u8 gText_PokeSum_Controls_PageDetail[] = _("{DPAD_LEFT}PAGE {A_BUTTON}DETAIL");
const u8 gText_PokeSum_Controls_PickSwitch[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}SWITCH");
const u8 gText_PokeSum_Controls_Pick[] = _("{DPAD_UPDOWN}PICK");
const u8 gText_PokeSum_Controls_PickDelete[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}DELETE");
const u8 gText_PokeSum_HmMovesCantBeForgotten[] = _("HM moves can't be\nforgotten now.");
const u8 gText_TrainerCardName[] = _("NAME: ");
const u8 gText_TrainerCardIDNo[] = _("IDNo.");
const u8 gText_TrainerCardMoney[] = _("MONEY");
const u8 gText_TrainerCardYen[] = _("¥");
const u8 gText_TrainerCardPokedex[] = _("POKéDEX");
const u8 gText_TrainerCardNull[] = _("");
const u8 gText_Colon2[] = _(":");
const u8 gText_Points[] = _("てん");
const u8 gText_TrainerCardTime[] = _("TIME");
const u8 gText_BattlePoints[] = _("ゲ-ムポイント");
const u8 gText_Var1sTrainerCard[] = _("'s TRAINER CARD");
const u8 gText_HallOfFameDebut[] = _("HALL OF FAME DEBUT  ");
const u8 gText_LinkBattles[] = _("LINK BATTLES");
const u8 gText_LinkCableBattles[] = _("LINK CABLE BATTLES");
const u8 gText_WinLossRatio[] = _("W:{CLEAR_TO 0x30}L:");
const u8 gText_PokemonTrades[] = _("POKéMON TRADES");
const u8 gText_UnionRoomTradesBattles[] = _("UNION TRADES & BATTLES");
const u8 gText_BerryCrushes[] = _("BERRY CRUSH");
const u8 gText_WaitingTrainerFinishReading[] = _("Waiting for the other TRAINER to\nfinish reading your TRAINER CARD.");
const u8 gText_Option[] = _("OPTION");
const u8 gText_TextSpeed[] = _("TEXT SPEED");
const u8 gText_BattleScene[] = _("BATTLE SCENE");
const u8 gText_BattleStyle[] = _("BATTLE STYLE");
const u8 gText_Sound[] = _("SOUND");
const u8 gText_ButtonMode[] = _("BUTTON MODE");
const u8 gText_Frame[] = _("FRAME");
const u8 gText_OptionMenuCancel[] = _("CANCEL");
const u8 gText_TextSpeedSlow[] = _("SLOW");
const u8 gText_TextSpeedMid[] = _("MID");
const u8 gText_TextSpeedFast[] = _("FAST");
const u8 gText_BattleSceneOn[] = _("ON");
const u8 gText_BattleSceneOff[] = _("OFF");
const u8 gText_BattleStyleShift[] = _("SHIFT");
const u8 gText_BattleStyleSet[] = _("SET");
const u8 gText_SoundMono[] = _("MONO");
const u8 gText_SoundStereo[] = _("STEREO");
const u8 gTextJP_Type[] = _("タイプ");
const u8 gText_ButtonTypeHelp[] = _("HELP");
const u8 gText_ButtonTypeLEqualsA[] = _("L=A");
const u8 gText_ButtonTypeLR[] = _("LR");
const u8 gText_FrameType[] = _("TYPE");
const u8 gText_PickSwitchCancel[] = _("{DPAD_UPDOWN}PICK {DPAD_LEFTRIGHT}SWITCH {A_BUTTON}{B_BUTTON}CANCEL");
const u8 gText_ResetRTCConfirmCancel[] = _("RTCを リセットします\nAで けってい Bで キャンセル");
const u8 gText_PresentTime[] = _("げんざいの ゲ-ムない じかん");
const u8 gText_PreviousTime[] = _("ぜんかいの ゲ-ムない じかん");
const u8 gText_PleaseResetTime[] = _("じかんを さいせってい してください");
const u8 gText_ClockHasBeenReset[] = _("じかんを さいせってい しました!\nレポ-トを かいています おまちください");
const u8 gText_SaveCompleted[] = _("レポ-トを かきこみました!");
const u8 gText_SaveFailed[] = _("レポ-トの かきこみに\nしっぱい しました‥");
const u8 gText_NoSaveFileCantSetTime[] = _("レポ-トが ないので\nじかんの せっていは できません!");
const u8 gText_InGameClockUsable[] = _("ゲ-ムない じかんの しゅうせい システムが\nつかえる ように なりました!");
const u8 gText_SavingDontTurnOffThePower2[] = _("SAVING…\nDON'T TURN OFF THE POWER.");


const u8 gStartMenuDesc_Pokedex[] = _("A device that records POKéMON secrets\nupon meeting or catching them.");
const u8 gStartMenuDesc_Pokemon[] = _("Check and organize POKéMON that are\ntraveling with you in your party.");
const u8 gStartMenuDesc_Bag[] = _("Equipped with pockets for storing items\nyou bought, received, or found.");
const u8 gStartMenuDesc_Player[] = _("Check your money and other game data.");
const u8 gStartMenuDesc_Save[] = _("Save your game with a complete record\nof your progress to take a break.");
const u8 gStartMenuDesc_Option[] = _("Adjust various game settings such as text\nspeed, game rules, etc.");
const u8 gStartMenuDesc_Exit[] = _("Close this MENU window.");
const u8 gStartMenuDesc_Retire[] = _("Retire from the SAFARI GAME and return to\nthe registration counter.");

# 1 "src/data/text/quest_log.h" 1
const u8 gText_QuestLog_PreviouslyOnYourQuest[] = _("Previously on your quest…");
const u8 gText_QuestLog_SwitchMon1WithMon2[] = _("{PLAYER} switched the POKéMON\n{STR_VAR_1} with {STR_VAR_2}.");
const u8 gText_QuestLog_SwappedHeldItemsOnMon[] = _("Took the item {STR_VAR_2} from\n{STR_VAR_1} and gave it the item\n{STR_VAR_3} to hold.");
const u8 gText_QuestLog_TookHeldItemFromMon[] = _("Took the item {STR_VAR_2} from\n{STR_VAR_1}.");
const u8 gText_QuestLog_UsedItemOnMonAtThisLocation[] = _("Used the item {STR_VAR_1} on {STR_VAR_2}\nat this location.");
const u8 gText_QuestLog_UsedTheItem[] = _("{PLAYER} used the\n{STR_VAR_1}.");
const u8 gText_QuestLog_UsedTheKeyItem[] = _("Used the item {STR_VAR_1}, which was\nin the KEY ITEMS POCKET.");
const u8 gText_QuestLog_MonLearnedMoveFromTM[] = _("{STR_VAR_1} learned the move\n{STR_VAR_2} from a TM.");
const u8 gText_QuestLog_MonReplacedMoveWithTM[] = _("{STR_VAR_1} learned the move\n{STR_VAR_2} from a TM and forgot\nthe move {STR_VAR_3}.");
const u8 gText_QuestLog_MonsWereFullyRestoredAtCenter[] = _("POKéMON were fully restored\nat a POKéMON CENTER.");
const u8 gText_QuestLog_PlayerBattledChampionRival[] = _("{DYNAMIC 0x00} had a marvelous battle\nwith the CHAMPION, {DYNAMIC 0x01}.");
const u8 gText_QuestLog_PlayerSentOutMon1RivalSentOutMon2[] = _("In the end, {DYNAMIC 0x00} sent out {DYNAMIC 0x01}\nwhile {DYNAMIC 0x02} countered with\n{DYNAMIC 0x03}.");
const u8 gText_QuestLog_WonTheMatchAsAResult[] = _("And, as a result of battling with every\nbit of power, {DYNAMIC 0x00} won\nthe match.");
const u8 gText_QuestLog_StoredItemInPC[] = _("Removed the item {STR_VAR_1} from\nthe BAG's ITEMS POCKET and stored it\non the PC.");
const u8 gText_QuestLog_WithdrewItemFromPC[] = _("{PLAYER} withdrew the item {STR_VAR_1}\nfrom the PC.");
const u8 gText_QuestLog_TradedMon1ForPersonsMon2[] = _("Traded {STR_VAR_3} in exchange for\n{STR_VAR_1}'s {STR_VAR_2}.");
const u8 gText_QuestLog_SingleBattleWithPersonResultedInOutcome[] = _("Took on {DYNAMIC 0x00} in a SINGLE BATTLE.\nIt was a hotly contested match that\nresulted in a {DYNAMIC 0x01}.");
const u8 gText_QuestLog_DoubleBattleWithPersonResultedInOutcome[] = _("Took on {DYNAMIC 0x00} in a DOUBLE BATTLE.\nIt was an extended match that resulted\nin a {DYNAMIC 0x01}.");
const u8 gText_QuestLog_MultiBattleWithPeopleResultedInOutcome[] = _("{DYNAMIC 0x00} and {DYNAMIC 0x01} took on\n{DYNAMIC 0x02} and {DYNAMIC 0x03} in a\nMULTI BATTLE and got a {DYNAMIC 0x04}.");
const u8 gText_QuestLog_Win[] = _("win");
const u8 gText_QuestLog_Loss[] = _("loss");
const u8 gText_QuestLog_MingledInUnionRoom[] = _("Mingled with other TRAINERS in\nthe UNION ROOM.");
const u8 gText_QuestLog_DepartedPlaceInTownForNextDestination[] = _("Departed {STR_VAR_2}\nin {STR_VAR_1} for the next\ndestination.");
const u8 gText_QuestLog_SwitchedMonsBetweenBoxes[] = _("After consideration, switched\n{DYNAMIC 0x01} in {DYNAMIC 0x00} with\n{DYNAMIC 0x03} in {DYNAMIC 0x02}.");
const u8 gText_QuestLog_MovedMonToNewBox[] = _("After deep thought, switched\n{DYNAMIC 0x01} in BOX “{DYNAMIC 0x00}” to\nthe BOX “{DYNAMIC 0x02}.”");
const u8 gText_QuestLog_SwitchedMonsWithinBox[] = _("Switched around {DYNAMIC 0x01} and\n{DYNAMIC 0x02} in {DYNAMIC 0x00}.");
const u8 gText_QuestLog_MovedMonWithinBox[] = _("Moved {DYNAMIC 0x01} in {DYNAMIC 0x00}.");
const u8 gText_QuestLog_SwitchedPartyMonForPCMon[] = _("Switched {DYNAMIC 0x01} in {DYNAMIC 0x00}\nwith {DYNAMIC 0x02} in the party.");
const u8 gText_QuestLog_WithdrewMonFromPC[] = _("Added {DYNAMIC 0x01} in {DYNAMIC 0x00}\nto the party.");
const u8 gText_QuestLog_DepositedMonInPC[] = _("Moved {DYNAMIC 0x00} from the party\nto {DYNAMIC 0x01}.");
const u8 gText_QuestLog_SwitchedMultipleMons[] = _("Moved a group of POKéMON in\n{DYNAMIC 0x00} to {DYNAMIC 0x01}.");
const u8 gText_QuestLog_ADifferentSpot[] = _("a different spot");
const u8 gText_QuestLog_GaveMonHeldItemFromPC[] = _("Removed the item {STR_VAR_1} from\n{PLAYER}'s PC and gave it to {STR_VAR_2}\nto hold.");
const u8 gText_QuestLog_SwappedHeldItemFromPC[] = _("Removed the item {STR_VAR_1} from\na PC, gave it to {STR_VAR_2}, and put\nthe {STR_VAR_3} it held in the BAG.");
const u8 gText_QuestLog_ChattedWithManyTrainers[] = _("Chatted with many TRAINERS.");
const u8 gText_QuestLog_Handily[] = _("handily");
const u8 gText_QuestLog_Tenaciously[] = _("tenaciously");
const u8 gText_QuestLog_Somehow[] = _("somehow");
const u8 gText_QuestLog_TradedMon1ForTrainersMon2[] = _("Met and traded with {STR_VAR_1}.\nObtained the TRAINER's {STR_VAR_2} in\nexchange for {STR_VAR_3}.");
const u8 gText_QuestLog_BattledTrainerEndedInOutcome[] = _("Met and battled {STR_VAR_1}.\nThe match ended in a {STR_VAR_2}.");
const u8 gText_QuestLog_BoughtItem[] = _("Went to the POKéMON MART in\n{DYNAMIC 0x00} and bought one \n{DYNAMIC 0x01}.");
const u8 gText_QuestLog_BoughtItemsIncludingItem[] = _("Went to the POKéMON MART in\n{DYNAMIC 0x00} and spent ¥{DYNAMIC 0x02} for\nitems including {DYNAMIC 0x01}(s).");
const u8 gText_QuestLog_SoldNumOfItem[] = _("{DYNAMIC 0x00} went to the POKéMON MART in\n{DYNAMIC 0x01} and sold {DYNAMIC 0x03} of\nthe item {DYNAMIC 0x02}.");
const u8 gText_QuestLog_SoldItemsIncludingItem[] = _("Sold items including {DYNAMIC 0x01} at\nthe POKéMON MART in {DYNAMIC 0x00},\nworth ¥{DYNAMIC 0x02}.");
const u8 gText_QuestLog_JustOne[] = _("just one");
const u8 gText_QuestLog_Num[] = _("{DYNAMIC 0x04}");
const u8 gText_QuestLog_UsedSoftboiled[] = _("{STR_VAR_1} shared its HP using the move\nSOFTBOILED.");
const u8 gText_QuestLog_UsedMilkDrink[] = _("{STR_VAR_1} shared its HP using the move\nMILK DRINK.");
const u8 gText_QuestLog_MonLearnedMoveFromHM[] = _("{STR_VAR_1} securely learned the move\n{STR_VAR_2} using an HM.");
const u8 gText_QuestLog_MonReplacedMoveWithHM[] = _("{STR_VAR_1} securely learned the move\n{STR_VAR_2} using an HM and forgot\nthe move {STR_VAR_3}.");
const u8 gText_QuestLog_DefeatedWildMon[] = _("{DYNAMIC 0x05} managed to defeat the POKéMON\n{DYNAMIC 0x01} in {DYNAMIC 0x00}.");
const u8 gText_QuestLog_DefeatedWildMons[] = _("Defeated {DYNAMIC 0x02} wild POKéMON including\n{DYNAMIC 0x01} in {DYNAMIC 0x00}.");
const u8 gText_QuestLog_CaughtWildMon[] = _("{DYNAMIC 0x05} managed to catch the POKéMON\n{DYNAMIC 0x03} in {DYNAMIC 0x00}.");
const u8 gText_QuestLog_CaughtWildMons[] = _("Threw POKé BALLS in a frenzy, catching\n{DYNAMIC 0x04} POKéMON including {DYNAMIC 0x03} here\nin {DYNAMIC 0x00}.");
const u8 gText_QuestLog_DefeatedWildMonAndCaughtWildMon[] = _("{DYNAMIC 0x05} defeated the POKéMON\n{DYNAMIC 0x01} and caught one {DYNAMIC 0x03}\nin {DYNAMIC 0x00}.");
const u8 gText_QuestLog_DefeatedWildMonAndCaughtWildMons[] = _("Defeated the POKéMON {DYNAMIC 0x01}\nand caught {DYNAMIC 0x04} POKéMON including\n{DYNAMIC 0x03} in {DYNAMIC 0x00}.");
const u8 gText_QuestLog_DefeatedWildMonsAndCaughtWildMon[] = _("{DYNAMIC 0x05} defeated {DYNAMIC 0x02} POKéMON including\n{DYNAMIC 0x01} and caught one {DYNAMIC 0x03}\nin {DYNAMIC 0x00}.");
const u8 gText_QuestLog_DefeatedWildMonsAndCaughtWildMons[] = _("Defeated {DYNAMIC 0x02} POKéMON including\n{DYNAMIC 0x01} and caught {DYNAMIC 0x04} POKéMON\nincluding {DYNAMIC 0x03} in {DYNAMIC 0x00}.");
const u8 gText_QuestLog_GaveMonHeldItem[] = _("Made {STR_VAR_1} hold the item\n{STR_VAR_2}.");
const u8 gText_QuestLog_GaveMonHeldItem2[] = _("{PLAYER} made {STR_VAR_1} hold the item\n{STR_VAR_2}.");
const u8 gText_QuestLog_UsedCut[] = _("{STR_VAR_1} used the Hidden Move\nCUT here.");
const u8 gText_QuestLog_UsedFly[] = _("{STR_VAR_1} used the Hidden Move\nFLY and flew to {STR_VAR_2}.");
const u8 gText_QuestLog_UsedSurf[] = _("{STR_VAR_1} used the Hidden Move\nSURF and rode the waves.");
const u8 gText_QuestLog_UsedStrength[] = _("{STR_VAR_1} used the Hidden Move\nSTRENGTH here.");
const u8 gText_QuestLog_UsedFlash[] = _("{STR_VAR_1} used the Hidden Move\nFLASH and illuminated a pitch-black\ncave.");
const u8 gText_QuestLog_UsedRockSmash[] = _("{STR_VAR_1} used the Hidden Move\nROCK SMASH here.");
const u8 gText_QuestLog_UsedWaterfall[] = _("{STR_VAR_1} used the Hidden Move\nWATERFALL to scale a raging torrent.");
const u8 gText_QuestLog_UsedDive[] = _("{STR_VAR_1}は　ふかい　ところを　めざし\nひでんわざ\nダイビングを　つかった！");
const u8 gText_QuestLog_UsedDigInLocation[] = _("{STR_VAR_1} used DIG to escape from\n{STR_VAR_2}.");
const u8 gText_QuestLog_UsedSweetScent[] = _("{STR_VAR_1} used SWEET SCENT to attract\nwild POKéMON.");
const u8 gText_QuestLog_UsedTeleportToLocation[] = _("{STR_VAR_1} used TELEPORT, transporting\nthe party to {STR_VAR_2}'s\n{STR_VAR_3}.");
const u8 gText_QuestLog_LeftTownsLocationForNextDestination[] = _("{PLAYER} left {STR_VAR_1}'s\n{STR_VAR_2} for the next\ndestination.");
const u8 gText_QuestLog_PlayedGamesAtGameCorner[] = _("Played a lot of games at the ROCKET\nGAME CORNER in {STR_VAR_1}.");
const u8 gText_QuestLog_RestedAtHome[] = _("{PLAYER} rested comfortably at home.");
const u8 gText_QuestLog_LeftOaksLab[] = _("{PLAYER} left PROF. OAK's POKéMON\nRESEARCH LAB.");
const u8 gText_QuestLog_GymWasFullOfToughTrainers[] = _("The GYM in {STR_VAR_1} was full of\ntough TRAINERS…\nPreparations had to be made.");
const u8 gText_QuestLog_DepartedGym[] = _("Departed the GYM in {STR_VAR_1}.");
const u8 gText_QuestLog_HadGreatTimeInSafariZone[] = _("{PLAYER} had a great time with POKéMON\nin the SAFARI ZONE.");
const u8 gText_QuestLog_ManagedToGetOutOfLocation[] = _("Managed to get out of {STR_VAR_2}\nafter wandering about.");
const u8 gText_QuestLog_TookOnGymLeadersMonWithMonAndWon[] = _("Took on {DYNAMIC 0x00} GYM LEADER\n{DYNAMIC 0x01}'s {DYNAMIC 0x02} with {DYNAMIC 0x03}\nand won {DYNAMIC 0x04}!");
const u8 gText_QuestLog_TookOnEliteFoursMonWithMonAndWon[] = _("Took on ELITE FOUR {DYNAMIC 0x00}'s\n{DYNAMIC 0x01} with {DYNAMIC 0x02} and\nwon {DYNAMIC 0x03}!");
const u8 gText_QuestLog_TookOnTrainersMonWithMonAndWon[] = _("In {DYNAMIC 0x00}, took on\n{DYNAMIC 0x01}'s {DYNAMIC 0x02} with {DYNAMIC 0x03}\nand won {DYNAMIC 0x04}!");
const u8 gText_QuestLog_Coolly[] = _("coolly");
const u8 gText_QuestLog_Barely[] = _("barely");
const u8 gText_QuestLog_UsedEscapeRope[] = _("{PLAYER} used an ESCAPE ROPE to get\nout from {STR_VAR_2}.");
const u8 gText_QuestLog_Draw[] = _("draw");
const u8 gText_QuestLog_DepartedTheLocationForNextDestination[] = _("Departed from the {STR_VAR_2}\nfor the next destination.");
const u8 gText_QuestLog_DepartedFromLocationToNextDestination[] = _("{PLAYER} departed from\n{STR_VAR_2} and made way\nto the next destination.");
const u8 gText_QuestLog_ObtainedItemInLocation[] = _("Here in {STR_VAR_1}, {PLAYER}\nobtained the item {STR_VAR_2}.");
const u8 gText_QuestLog_ArrivedInLocation[] = _("Arrived in {STR_VAR_1}.");
const u8 gText_QuestLog_SavedGameAtLocation[] = _("And {PLAYER} saved the game at this\nlocation: {STR_VAR_1}.");
const u8 gText_QuestLog_Home[] = _("HOME");
const u8 gText_QuestLog_OakResearchLab[] = _("OAK RESEARCH LAB");
const u8 gText_QuestLog_Gym[] = _("GYM");
const u8 gText_QuestLog_PokemonLeagueGate[] = _("POKéMON LEAGUE GATE");
const u8 gText_QuestLog_ViridianForest[] = _("VIRIDIAN FOREST");
const u8 gText_QuestLog_PewterMuseumOfScience[] = _("PEWTER MUSEUM OF SCIENCE");
const u8 gText_QuestLog_MtMoon[] = _("MT. MOON");
const u8 gText_QuestLog_BikeShop[] = _("BIKE SHOP");
const u8 gText_QuestLog_BillsHouse[] = _("BILL'S HOUSE");
const u8 gText_QuestLog_DayCare[] = _("DAY CARE");
const u8 gText_QuestLog_UndergroundPath[] = _("UNDERGROUND PATH");
const u8 gText_QuestLog_PokemonFanClub[] = _("POKéMON FAN CLUB");
const u8 gText_QuestLog_SSAnne[] = _("S.S. ANNE");
const u8 gText_QuestLog_DiglettsCave[] = _("DIGLETT'S CAVE");
const u8 gText_QuestLog_RockTunnel[] = _("ROCK TUNNEL");
const u8 gText_QuestLog_PowerPlant[] = _("POWER PLANT");
const u8 gText_QuestLog_PokemonTower[] = _("POKéMON TOWER");
const u8 gText_QuestLog_VolunteerHouse[] = _("VOLUNTEER HOUSE");
const u8 gText_QuestLog_NameRatersHouse[] = _("NAME RATER'S HOUSE");
const u8 gText_QuestLog_CeladonDeptStore[] = _("CELADON DEPT. STORE");
const u8 gText_QuestLog_CeladonMansion[] = _("CELADON MANSION");
const u8 gText_QuestLog_RocketGameCorner[] = _("ROCKET GAME CORNER");
const u8 gText_QuestLog_Restaurant[] = _("RESTAURANT");
const u8 gText_QuestLog_RocketHideout[] = _("ROCKET HIDEOUT");
const u8 gText_QuestLog_SafariZone[] = _("SAFARI ZONE");
const u8 gText_QuestLog_WardensHome[] = _("WARDEN'S HOME");
const u8 gText_QuestLog_FightingDojo[] = _("FIGHTING DOJO");
const u8 gText_QuestLog_SilphCo[] = _("SILPH CO.");
const u8 gText_QuestLog_SeafoamIslands[] = _("SEAFOAM ISLANDS");
const u8 gText_QuestLog_PokemonMansion[] = _("POKéMON MANSION");
const u8 gText_QuestLog_PokemonResearchLab[] = _("POKéMON RESEARCH LAB");
const u8 gText_QuestLog_VictoryRoad[] = _("VICTORY ROAD");
const u8 gText_QuestLog_PokemonLeague[] = _("POKéMON LEAGUE");
const u8 gText_QuestLog_CeruleanCave[] = _("CERULEAN CAVE");
# 909 "src/strings.c" 2

const u8 gText_WasUsedOn[] = _(" was used on\n");
const u8 gText_Period[] = _(".");
const u8 gText_LevelRoseTo[] = _("'s level rose to\n");
const u8 gText_Period2[] = _(".");
const u8 gText_LevelUp_MaxHP[] = _("{FONT_SMALL}MAX.{FONT_NORMAL} HP");
const u8 gText_LevelUp_Attack[] = _("ATTACK");
const u8 gText_LevelUp_Defense[] = _("DEFENSE");
const u8 gText_LevelUp_Speed[] = _("SPEED");
const u8 gText_LevelUp_SpAtk[] = _("SP. ATK");
const u8 gText_LevelUp_SpDef[] = _("SP. DEF");
const u8 gText_LevelUp_Plus[] = _("{FONT_SMALL}{PLUS}{FONT_NORMAL}");
const u8 gText_LevelUp_Minus[] = _("{FONT_SMALL}-{FONT_NORMAL}");
const u8 gText_Counting_1[] = _("1, ");
const u8 gText_Counting_2And[] = _("2, and ‥ ‥ ‥ ");
const u8 gText_Poof[] = _("Poof!\p");
const u8 gText_MonForgotMove[] = _("{DYNAMIC 0x00} forgot\n{DYNAMIC 0x01}.\p");
const u8 gText_And[] = _("And‥\p");
const u8 gText_MachineSet[] = _("Machine set!\p");
const u8 gText_Huh[] = _("Huh?");
const u8 gText_MonLearnedTMHM[] = _("{DYNAMIC 0x00} learned\n{DYNAMIC 0x01}!");
const u8 gText_Upper[] = _("UPPER");
const u8 gText_Lower[] = _("lower");
const u8 gText_Others[] = _("OTHERS");
const u8 gText_Symbols[] = _("SYMBOLS");
const u8 gText_Register2[] = _("REGISTER");
const u8 gText_Exit[] = _("EXIT");
const u8 gText_QuitChatting[] = _("Quit chatting?");
const u8 gText_RegisterTextWhere[] = _("Register text where?");
const u8 gText_RegisterTextHere[] = _("Register text here?");
const u8 gText_InputText[] = _("Input text.");
const u8 gText_F700JoinedChat[] = _("{DYNAMIC 0x00} joined the chat!");
const u8 gText_F700LeftChat[] = _("{DYNAMIC 0x00} left the chat.");
const u8 gText_PlayersXPokemon[] = _("{DYNAMIC 0x00}の{DYNAMIC 0x01}ひきめ:");
const u8 gText_PlayersXPokmonDoesNotExist[] = _("{DYNAMIC 0x00}の{DYNAMIC 0x01}ひきめは いません");
const u8 gText_ExitingTheChat[] = _("Exiting the chat‥");
const u8 gText_LeaderHasLeftEndingChat[] = _("The LEADER, {DYNAMIC 0x00}, has\nleft, ending the chat.");
const u8 gText_RegisteredTextChanged_OKtoSave[] = _("The registered text has been changed.\nIs it okay to save the game?");
const u8 gText_RegisteredTextChanged_AlreadySavedFile[] = _("There is already a saved file.\nIs it okay to overwrite it?");
const u8 gText_RegisteredTextChanged_SavingDontTurnOff[] = _("SAVING‥\nDON'T TURN OFF THE POWER.");
const u8 gText_RegisteredTextChanged_SavedTheGame[] = _("{DYNAMIC 0x00} saved the game.");
const u8 gText_IfLeaderLeavesChatWillEnd[] = _("If the LEADER leaves, the chat\nwill end. Is that okay?");
const u8 gText_Hello[] = _("HELLO");
const u8 gText_Pokemon2[] = _("POKéMON");
const u8 gText_Trade[] = _("TRADE");
const u8 gText_Battle[] = _("BATTLE");
const u8 gText_Lets[] = _("LET'S");
const u8 gText_Ok[] = _("OK!");
const u8 gText_Sorry[] = _("SORRY");
const u8 gText_YaySmileEmoji[] = _("YAY{EMOJI_BIGSMILE}");
const u8 gText_ThankYou[] = _("THANK YOU");
const u8 gText_ByeBye[] = _("BYE-BYE!");
const u8 gText_PlayerScurriedToCenter[] = _("{PLAYER} scurried to a POKéMON CENTER,\nprotecting the exhausted and fainted\nPOKéMON from further harm‥\p");
const u8 gText_PlayerScurriedBackHome[] = _("{PLAYER} scurried back home, protecting\nthe exhausted and fainted POKéMON from\nfurther harm‥\p");
const u8 gText_Diploma_Player[] = _("PLAYER: {DYNAMIC 0x00}");
const u8 gText_Diploma_ThisDocument[] = _("This document is issued in\nrecognition of your magnificent\nachievement - the completion of\nthe {DYNAMIC 0x01} POKéDEX.");
const u8 gText_Diploma_GameFreak[] = _("GAME FREAK");
const u8 gText_Diploma_National[] = _("NATIONAL");
const u8 gText_Diploma_Kanto[] = _("KANTO");
const u8 gText_ClearAllSaveData[] = _("Clear all save data areas?");
const u8 gText_ClearingData[] = _("Clearing data‥\nPlease wait.");
const u8 gText_Player[] = _("PLAYER");
const u8 gText_Time[] = _("TIME");
const u8 gText_Colon[] = _(":");
const u8 gText_Pokedex[] = _("POKéDEX");
const u8 gTextJPDummy_Hiki[] = _("");
const u8 gText_Badges[] = _("BADGES");
const u8 gTextJPDummy_Ko[] = _("");
const u8 gText_Register[] = _("REGISTER");
const u8 gText_HatchedFromEgg[] = _("{STR_VAR_1} hatched from the EGG!");
const u8 gText_NickHatchPrompt[] = _("Would you like to nickname the newly\nhatched {STR_VAR_1}?");
const u8 gString_OutOfCoins[] = _("You've run out of COINS.\nGame over!");
const u8 gString_QuitPlaying[] = _("Quit playing?");
const u8 gString_SlotMachineControls[] = _("{DPAD_LEFTRIGHT}COMBOS {DPAD_DOWN}WAGER {A_BUTTON}STOP {B_BUTTON}EXIT");
const u8 gText_TeachyTV[] = _("おしえテレビ");
const u8 gText_End[] = _("おしまい");

# 1 "src/data/text/teachy_tv.h" 1
const u8 gTeachyTvString_TeachBattle[] = _("Teach me how to battle.");
const u8 gTeachyTvString_StatusProblems[] = _("What are status problems?");
const u8 gTeachyTvString_TypeMatchups[] = _("What are type matchups?");
const u8 gTeachyTvString_CatchPkmn[] = _("I want to catch POKéMON.");
const u8 gTeachyTvString_AboutTMs[] = _("Teach me about TMs.");
const u8 gTeachyTvString_RegisterItem[] = _("How do I register an item?");
const u8 gTeachyTvString_Cancel[] = _("CANCEL");
const u8 gTeachyTvText_PokedudeSaysHello[] = _(
    "Hey, all you TRAINERS out there!\n"
    "HELLO, TRAINERS!\p"
    "……… ……… ………\p"
    "Come on, let me hear you!\n"
    "HELLO, TRAINERS!\l"
    "It's me, the POKé DUDE!\p");
const u8 gTeachyTvText_BattleScript1[] = _(
    "Today, the POKé DUDE's here to\n"
    "tell you about how you can battle\l"
    "POKéMON!\p"
    "Say you're out for a stroll when,\n"
    "suddenly, a wild POKéMON appears!\p"
    "It's up to you to smartly use your\n"
    "POKéMON and their moves to reduce\l"
    "the opponent's HP to nothing, and\l"
    "claim victory!\p"
    "I'll show you how to do that in\n"
    "person and for sure!\p"
    "All righty, here goes!\p"
    "Keep your eyes glued to the super\n"
    "POKé DUDE SHOW!");
const u8 gTeachyTvText_BattleScript2[] = _(
    "Well, did you get that?\p"
    "Even if your own POKéMON's HP\n"
    "falls to zero, and it becomes\l"
    "unable to battle, not to worry!\p"
    "Just take it to any POKéMON\n"
    "CENTER and heal it!\p"
    "All righty, be seeing you!\p"
    "Remember, TRAINERS, a good deed\n"
    "a day brings happiness to stay!");
const u8 gTeachyTvText_StatusScript1[] = _(
    "Today, the POKé DUDE's here to\n"
    "tell you about status problems!\p"
    "Status problems include poisoning,\n"
    "paralysis, sleep, burn…\p"
    "There are a couple others, but\n"
    "they really are trouble.\p"
    "Get any one, and your POKéMON\n"
    "may become useless in battle.\p"
    "You know, it hurts the POKé DUDE\n"
    "to see a POKéMON suffer…\p"
    "So, what should you do if your\n"
    "POKéMON gets a status problem?\p"
    "Well, you've got me to show you!\p"
    "All righty, here goes!\p"
    "Keep your eyes glued to the super\n"
    "POKé DUDE SHOW!");
const u8 gTeachyTvText_StatusScript2[] = _(
    "Poisoning or paralysis don't go\n"
    "away after a battle.\p"
    "If a POKéMON is poisoned, it loses\n"
    "HP even while you're walking.\p"
    "You should heal POKéMON of these\n"
    "kinds of problems right away.\p"
    "Use an item, or try to get to a\n"
    "POKéMON CENTER for healing.\p"
    "That wasn't hard, was it?\n"
    "All righty, be seeing you!\p"
    "Remember, TRAINERS, a good deed\n"
    "a day brings happiness to stay!");
const u8 gTeachyTvText_MatchupsScript1[] = _(
    "Does everyone know about type\n"
    "matchups?\p"
    "POKéMON and their moves all\n"
    "belong to certain types.\p"
    "For example, there are such types\n"
    "as GRASS and WATER.\p"
    "You need to consider the type of\n"
    "the move used to attack…\p"
    "And, the type of the POKéMON that\n"
    "is hit by that attack.\p"
    "Depending on how those two types\n"
    "match up, the damage can change.\p"
    "You see, it depends on whether\n"
    "the type matchup is good or bad.\p"
    "If you don't know how matchups\n"
    "work, battles will be tough.\p"
    "So, let me demonstrate exactly\n"
    "what I mean.\p"
    "All righty, here goes!\p"
    "Keep your eyes glued to the super\n"
    "POKé DUDE SHOW!");
const u8 gTeachyTvText_MatchupsScript2[] = _(
    "Is it possible to launch an attack\n"
    "that will inflict heavy damage?\p"
    "Does the opposing POKéMON pose\n"
    "a threat to your POKéMON?\p"
    "Is there any chance that it may\n"
    "have disastrously tough moves?\p"
    "Watch the type matchups to gain\n"
    "the upper hand!\p"
    "All righty, be seeing you!\p"
    "Oh, for the COOL-type POKé DUDE,\n"
    "AWESOME-type kids like you match\l"
    "up perfectly!\p"
    "Remember, a good deed a day\n"
    "brings happiness to stay!");
const u8 gTeachyTvText_CatchingScript1[] = _(
    "Today, the POKé DUDE's going to\n"
    "show you how to catch POKéMON!\p"
    "Just imagine… A groovy POKéMON\n"
    "suddenly appearing in the wild!\p"
    "Oh, you want it!\n"
    "You just can't help it!\p"
    "Oh, you have to catch it!\n"
    "You gotta have it!\p"
    "Let me show you how you can make\n"
    "it happen!\p"
    "All righty, here goes!\p"
    "Keep your eyes glued to the super\n"
    "POKé DUDE SHOW!");
const u8 gTeachyTvText_CatchingScript2[] = _(
    "If your first POKé BALL fails to\n"
    "catch the POKéMON, don't give up!\p"
    "Keep throwing POKé BALLS…\n"
    "It's bound to work sometime!\p"
    "All righty, be seeing you!\p"
    "Remember, TRAINERS, a good deed\n"
    "a day brings happiness to stay!");
const u8 gTeachyTvText_TMsScript1[] = _(
    "Hey, everyone!\n"
    "Do you all have TMs?\p"
    "A TM, Technical Machine, is an\n"
    "amazingly great item!\p"
    "It teaches POKéMON a move that\n"
    "it may not learn when leveling up!\p"
    "Isn't that just great? What a\n"
    "convenient world we live in!\p"
    "Open the TM CASE and check out\n"
    "the TMs you have.\p"
    "You can check them out in detail,\n"
    "too.");
const u8 gPokedudeText_TMTypes[] = _(
    "POKé DUDE: NORMAL, WATER, GRASS…\n"
    "TMs also come in types.\p"
    "Check the type and teach it to\n"
    "a POKéMON that matches up well.\p"
    "For example, WATER PULSE is\n"
    "suitable for WATER-type POKéMON.\p"
    "BULLET SEED is a move that most\n"
    "GRASS-type POKéMON can learn.\p"
    "There's one other thing!");
const u8 gPokedudeText_ReadTMDescription[] = _(
    "Don't just look at the type, read\n"
    "the description, too.\p"
    "It will contain hints about what\n"
    "POKéMON might learn the move.\p"
    "For example, take a move like\n"
    "FOCUS PUNCH.\p"
    "It doesn't sound like anything a\n"
    "bird or fish POKéMON can learn.\p"
    "So, try using it on POKéMON with\n"
    "arms that can throw punches!");
const u8 gTeachyTvText_TMsScript2[] = _(
    "Wow, I talked a lot today!\n"
    "All righty, be seeing you!\p"
    "Remember, TRAINERS, a good deed\n"
    "a day brings happiness to stay!");
const u8 gTeachyTvText_RegisterScript1[] = _(
    "A TRAINER's BAG has a bunch of\n"
    "nifty, convenient features!\p"
    "Take stuff in the KEY ITEMS\n"
    "POCKET, for instance.\p"
    "You can use a key item without\n"
    "opening the BAG every time.\p"
    "For example, let's pretend I have\n"
    "a TEACHY TV in my BAG.\p"
    "I can register it for instant use,\n"
    "and I'll show you how!\p"
    "All righty, here goes!\p"
    "Keep your eyes glued to the sorta\n"
    "super POKé DUDE SHOW!");
const u8 gTeachyTvText_RegisterScript2[] = _(
    "And now, your TEACHY TV is\n"
    "registered.\p"
    "How do you use it?\n"
    "Well, here's how it works.\p"
    "Once an item in the KEY ITEMS\n"
    "POKCET is registered, you can use\l"
    "it by pressing SELECT.\p"
    "So, you've given yourself\n"
    "one-touch access to TEACHY TV.\p"
    "All it takes for you to see me is\n"
    "pressing one button!\p"
    "That kind of attention is a little\n"
    "embarrassing!\p"
    "All righty, be seeing you!\p"
    "Remember, TRAINERS, a good deed\n"
    "a day brings happiness to stay!");
# 987 "src/strings.c" 2

const u8 gString_Bill[] = _("BILL");
const u8 gString_Someone[] = _("SOMEONE");
const u8 gString_Help[] = _("HELP");
const u8 gString_HelpSystem_ClearTo8[] = _("{CLEAR_TO 8}");
const u8 gText_SpacePoints2[] = _(" points");
const u8 gText_SpaceTimes3[] = _(" time(s)");
const u8 gText_PkmnJumpRecords[] = _("POKéMON JUMP RECORDS");
const u8 gText_JumpsInARow[] = _("Jumps in a row:");
const u8 gText_BestScore2[] = _("Best score:");
const u8 gText_ExcellentsInARow[] = _("EXCELLENTS in a row:");
const u8 gText_AwesomeWonF701F700[] = _("Awesome score! You've\nwon {DYNAMIC 01} {DYNAMIC 00}!");
const u8 gText_FilledStorageSpace2[] = _("There's no room left now.");
const u8 gText_CantHoldMore[] = _("You can't hold any more!");
const u8 gText_WantToPlayAgain2[] = _("Want to play again?");
const u8 gText_SomeoneDroppedOut2[] = _("Somebody dropped out.\nThe link will be canceled.");
const u8 gText_SavingDontTurnOffPower[] = _("SAVING…\nDON'T TURN OFF THE POWER.");
const u8 gText_CommunicationStandby4[] = _("Communication standby…");
const u8 gText_SavingDontTurnOffPower2[] = _("SAVING...\nDON'T TURN OFF THE POWER.");
const u8 gText_BerryPickingRecords[] = _("DODRIO BERRY-PICKING RECORDS");
const u8 gText_BerriesPicked[] = _("BERRIES picked:");
const u8 gText_BestScore[] = _("Best score:");
const u8 gText_BerriesInRowFivePlayers[] = _("BERRIES picked in a row with\nfive players:");
const u8 gText_BerryPickingResults[] = _("Announcing BERRY-PICKING results!");
const u8 gText_10P30P50P50P[] = _("10P     30P     50P     {EMOJI_MINUS}50P");
const u8 gText_AnnouncingRankings[] = _("Announcing rankings!");
const u8 gText_AnnouncingPrizes[] = _("Announcing prizes!");
const u8 gText_1Colon[] = _("1:");
const u8 gText_2Colon[] = _("2:");
const u8 gText_3Colon[] = _("3:");
const u8 gText_4Colon[] = _("4:");
const u8 gText_5Colon[] = _("5:");
const u8 gText_FirstPlacePrize[] = _("The first-place winner gets\nthis {DYNAMIC 00}!");
const u8 gText_CantHoldAnyMore[] = _("You can't hold any more...");
const u8 gText_FilledStorageSpace[] = _("It filled its storage space.");
const u8 gText_WantToPlayAgain[] = _("Want to play again?");
const u8 gText_SomeoneDroppedOut[] = _("Somebody dropped out.\nThe link will be canceled.");
const u8 gText_SpacePoints[] = _(" points");
const u8 gText_CommunicationStandby3[] = _("Communication standby…");
__attribute__((aligned(4))) const u8 gText_BerryCrush_AreYouReady[] = _("Are you ready to BERRY-CRUSH?\nPlease pick a BERRY for use.\p");
__attribute__((aligned(4))) const u8 gText_BerryCrush_WaitForOthersToChooseBerry[] = _("Please wait while each member\nchooses a BERRY.");
__attribute__((aligned(4))) const u8 gText_BerryCrush_GainedXUnitsOfPowder[] = _("{PAUSE_MUSIC}{PLAY_BGM MUS_LEVEL_UP}You ended up with {STR_VAR_1} units of\nsilky-smooth BERRY POWDER.{RESUME_MUSIC}\pYour total amount of BERRY POWDER\nis {STR_VAR_2}.\p");
__attribute__((aligned(4))) const u8 gText_BerryCrush_RecordingGameResults[] = _("Recording your game results in the\nsave file.\nPlease wait.");
__attribute__((aligned(4))) const u8 gText_BerryCrush_WantToPlayAgain[] = _("Want to play BERRY CRUSH again?");
__attribute__((aligned(4))) const u8 gText_BerryCrush_NoBerries[] = _("You have no BERRIES.\nThe game will be canceled.");
__attribute__((aligned(4))) const u8 gText_BerryCrush_MemberDroppedOut[] = _("A member dropped out.\nThe game will be canceled.");
__attribute__((aligned(4))) const u8 gText_BerryCrush_TimeUp[] = _("Time's up.\pGood BERRY POWDER could not be\nmade…\p");
__attribute__((aligned(4))) const u8 gText_BerryCrush_CommunicationStandby[] = _("Communication standby…");
__attribute__((aligned(4))) const u8 gText_1_ClrBluShdwLtBlu_Dynamic0[] = _("1. {COLOR BLUE}{SHADOW LIGHT_BLUE}{DYNAMIC 0x00}");
const u8 gText_1_Dynamic0[] = _("1. {DYNAMIC 0x00}");
__attribute__((aligned(4))) const u8 gText_SpaceTimes2[] = _(" times");
__attribute__((aligned(4))) const u8 gText_XDotY[] = _("{STR_VAR_1}.{STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_StrVar1Berry[] = _("{STR_VAR_1} BERRY");
__attribute__((aligned(4))) const u8 gText_TimeColon[] = _("Time:");
__attribute__((aligned(4))) const u8 gText_PressingSpeed[] = _("Pressing Speed:");
const u8 gText_Silkiness[] = _("Silkiness:");
__attribute__((aligned(4))) const u8 gText_StrVar1[] = _("{STR_VAR_1}");
__attribute__((aligned(4))) const u8 gText_SpaceMin[] = _("min.");
__attribute__((aligned(4))) const u8 gText_XDotY2[] = _("{STR_VAR_1}.{STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_SpaceSec[] = _("sec.");
__attribute__((aligned(4))) const u8 gText_XDotY3[] = _("{STR_VAR_1}.{STR_VAR_2}");
__attribute__((aligned(4))) const u8 gText_TimesPerSec[] = _("Times/sec.");
__attribute__((aligned(4))) const u8 gText_Var1Percent[] = _("{STR_VAR_1}%");
__attribute__((aligned(4))) const u8 gText_PressesRankings[] = _("No. of Presses Rankings");
__attribute__((aligned(4))) const u8 gText_CrushingResults[] = _("Crushing Results");
__attribute__((aligned(4))) const u8 gText_NeatnessRankings[] = _("Neatness Rankings");
__attribute__((aligned(4))) const u8 gText_CooperativeRankings[] = _("Cooperative Rankings");
__attribute__((aligned(4))) const u8 gText_PressingPowerRankings[] = _("Pressing-Power Rankings");
const u8 gText_BerryCrush2[] = _("BERRY CRUSH");
const u8 gText_PressingSpeedRankings[] = _("Pressing-Speed Rankings");
const u8 gText_Var1Players[] = _("{STR_VAR_1} PLAYERS");
__attribute__((aligned(4))) const u8 gText_Ghost[] = _("GHOST");
const u8 gText_PokemonOnHook[] = _("A POKéMON's on the hook!{PAUSE_UNTIL_PRESS}");
const u8 gText_NotEvenANibble[] = _("Not even a nibble‥{PAUSE_UNTIL_PRESS}");
const u8 gText_ItGotAway[] = _("It got away‥{PAUSE_UNTIL_PRESS}");
const u8 gText_Rooftop2[] = _("ROOFTOP");
__attribute__((aligned(4))) const u8 gString_PokemonFireRed_Staff[] = _("Pokémon FireRed Version\nStaff");
__attribute__((aligned(4))) const u8 gString_PokemonLeafGreen_Staff[] = _("Pokémon LeafGreen Version\nStaff");
__attribute__((aligned(4))) const u8 gCreditsString_Director[] = _("\n\nDirector\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Junichi_Masuda[] = _("\n\n\nJunichi Masuda\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Art_Director_Battle_Director[] = _("\nArt Director\n\nBattle Director\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Ken_Sugimori_Shigeki_Morimoto[] = _("\n\nKen Sugimori\n\nShigeki Morimoto\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Program_Leader_Planning_Leader_Graphic_Design_Leader[] = _("Program Leader\n\nPlanning Leader\n\nGraphic Design Leader\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Tetsuya_Watanabe_Koji_Nishino_Takao_Unno[] = _("\nTetsuya Watanabe\n\nKoji Nishino\n\nTakao Unno\n");
__attribute__((aligned(4))) const u8 gCreditsString_Programmers[] = _("Programmers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hiroyuki_Nakamura_Masao_Taya_Satoshi_Nohara_Miyuki_Iwasawa_Daisuke_Goto[] = _("\nHiroyuki Nakamura\nMasao Taya\nSatoshi Nohara\nMiyuki Iwasawa\nDaisuke Goto\n");
__attribute__((aligned(4))) const u8 gCreditsString_System_Programmers[] = _("System Programmers\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Tetsuya_Watanabe_Akito_Mori_Hisashi_Sogabe_Sousuke_Tamada[] = _("\nTetsuya Watanabe\nAkito Mori\nHisashi Sogabe\nSousuke Tamada\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Graphic_Designers[] = _("Graphic Designers\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Takao_Unno_Asuka_Iwashita_Kanako_Eo_Hiroki_Fuchino[] = _("\nTakao Unno\nAsuka Iwashita\nKanako Eo\nHiroki Fuchino\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Graphic_Designers_2[] = _("\nGraphic Designers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Ken_Sugimori_Hironobu_Yoshida[] = _("\n\nKen Sugimori\nHironobu Yoshida\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Music_Composition[] = _("\nMusic Composition\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Go_Ichinose_Junichi_Masuda[] = _("\n\nGo Ichinose\nJunichi Masuda\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Sound_Effects[] = _("\n\nSound Effects\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Go_Ichinose[] = _("\n\n\nGo Ichinose\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Game_Designers[] = _("\nGame Designers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Junichi_Masuda_Koji_Nishino_Tetsuji_Ohta[] = _("\n\nJunichi Masuda\nKoji Nishino\nTetsuji Ohta\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Game_Designers_2[] = _("\nGame Designers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hitomi_Sato_Shigeru_Ohmori_Tadashi_Takahashi[] = _("\n\nHitomi Sato\nShigeru Ohmori\nTadashi Takahashi\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Game_Scenario[] = _("\nGame Scenario\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hitomi_Sato_Satoshi_Tajiri[] = _("\n\nHitomi Sato\nSatoshi Tajiri\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Script_Designer_Map_Designer[] = _("\nScript Designer\n\nMap Designer\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Satoshi_Nohara_Shigeru_Ohmori[] = _("\n\nSatoshi Nohara\n\nShigeru Ohmori\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Parametric_Designers[] = _("\nParametric Designers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Koji_Nishino_Tetsuji_Ohta_Shigeki_Morimoto[] = _("\n\nKoji Nishino\nTetsuji Ohta\nShigeki Morimoto\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_POKeDEX_Text[] = _("\n\nPOKéDEX Text\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Kenji_Matsushima[] = _("\n\n\nKenji Matsushima\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_POKeMON_Designers[] = _("POKéMON Designers\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Ken_Sugimori_Motofumi_Fujiwara_Shigeki_Morimoto_Hironobu_Yoshida[] = _("\nKen Sugimori\nMotofumi Fujiwara\nShigeki Morimoto\nHironobu Yoshida\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_POKeMON_Designers_2[] = _("POKéMON Designers\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Satoshi_Ohta_Asuka_Iwashita_Takao_Unno_Kanako_Eo_Aimi_Tomita[] = _("\nSatoshi Ohta\nAsuka Iwashita\nTakao Unno\nKanako Eo\nAimi Tomita\n");
__attribute__((aligned(4))) const u8 gCreditsString_POKeMON_Designers_3[] = _("POKéMON Designers\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Atsuko_Nishida_Muneo_Saito_Rena_Yoshikawa_Jun_Okutani[] = _("\nAtsuko Nishida\nMuneo Saito\nRena Yoshikawa\nJun Okutani\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Supporting_Programmers[] = _("Supporting Programmers\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Teruyuki_Yoshioka_Takao_Nakano_Satoshi_Mitsuhara_Daisuke_Hoshino[] = _("\nTeruyuki Yoshioka\nTakao Nakano\n\nSatoshi Mitsuhara\nDaisuke Hoshino\n");
__attribute__((aligned(4))) const u8 gCreditsString_NCL_Product_Testing[] = _("\n\nNCL Product Testing\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_NCL_Super_Mario_Club[] = _("\n\n\nNCL Super Mario Club\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Special_Thanks[] = _("Special Thanks\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hiro_Nakamura_Hiroyuki_Uesugi_Teruki_Murakawa_Kazuya_Suyama[] = _("\nHiro Nakamura\nHiroyuki Uesugi\nTeruki Murakawa\n\nKazuya Suyama\n");
__attribute__((aligned(4))) const u8 gCreditsString_Special_Thanks_2[] = _("Special Thanks\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Kenji_Tominaga_Kenjiro_Ito_Tomotaka_Komura_Michiko_Takizawa[] = _("\nKenji Tominaga\n\nKenjiro Ito\nTomotaka Komura\nMichiko Takizawa\n");
__attribute__((aligned(4))) const u8 gCreditsString_Special_Thanks_3[] = _("Special Thanks\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Makiko_Takada_Mikiko_Ohashi_Shusaku_Egami_Takanao_Kondo_Rui_Kawaguchi[] = _("\nMakiko Takada\nMikiko Ohashi\nShusaku Egami\nTakanao Kondo\nRui Kawaguchi\n");
__attribute__((aligned(4))) const u8 gCreditsString_Braille_Code_Check[] = _("\n\nBraille Code Check\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Japan_Braille_Library[] = _("\n\n\nJapan Braille Library\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Information_Supervisors[] = _("Information Supervisors\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hiroki_Enomoto_Kazuyuki_Terada_Yuri_Sakurai_Yumi_Funasaka_Naoko_Yanase[] = _("\nHiroki Enomoto\nKazuyuki Terada\nYuri Sakurai\nYumi Funasaka\nNaoko Yanase\n");
__attribute__((aligned(4))) const u8 gCreditsString_Coordinators[] = _("Coordinators\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Azusa_Tajima_Akira_Kinashi_Kazuki_Yoshihara_Retsuji_Nomoto[] = _("\nAzusa Tajima\nAkira Kinashi\nKazuki Yoshihara\n\nRetsuji Nomoto\n");
__attribute__((aligned(4))) const u8 gCreditsString_Task_Managers[] = _("\nTask Managers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hitoshi_Yamagami_Gakuji_Nomoto[] = _("\n\nHitoshi Yamagami\nGakuji Nomoto\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Producers[] = _("\nProducers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hiroyuki_Jinnai_Takehiro_Izushi_Hiroaki_Tsuru[] = _("\n\nHiroyuki Jinnai\nTakehiro Izushi\nHiroaki Tsuru\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Executive_Director[] = _("\n\nExecutive Director\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Satoshi_Tajiri[] = _("\n\n\nSatoshi Tajiri\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Executive_Producer[] = _("\n\nExecutive Producer\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Satoru_Iwata[] = _("\n\n\nSatoru Iwata\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Executive_Producer_2[] = _("\n\nExecutive Producer\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Tsunekaz_Ishihara[] = _("\n\n\nTsunekaz Ishihara\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_English_Version_Coordinators[] = _("\nEnglish Version Coordinators\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Hiro_Nakamura_Seth_McMahill[] = _("\n\nHiro Nakamura\nSeth McMahill\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Translator_Text_Editor[] = _("\nTranslator\n\nText Editor\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Nob_Ogasawara_Teresa_Lillygren[] = _("\n\nNob Ogasawara\n\nTeresa Lillygren\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Programmers_2[] = _("Programmers\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Teruki_Murakawa_Souichi_Yamamoto_Yuichiro_Ito_Akira_Kinashi[] = _("\nTeruki Murakawa\nSouichi Yamamoto\nYuichiro Ito\nAkira Kinashi\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Environment_Tool_Programmers[] = _("\nEnvironment & Tool Programmers\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Teruki_Murakawa_Souichi_Yamamoto_Kimiko_Nakamichi[] = _("\n\nTeruki Murakawa\nSouichi Yamamoto\nKimiko Nakamichi\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_NOA_Product_Testing[] = _("NOA Product Testing\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Thomas_Hertzog_Kathy_Huguenard_Mika_Kurosawa[] = _("\nThomas Hertzog\nKathy Huguenard\nMika Kurosawa\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Braille_Code_Check_2[] = _("Braille Code Check\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_National_Federation_of_the_Blind_Patricia_A_Maurer_Japan_Braille_Library_European_Blind_Union[] = _("\nNational Federation\n{CLEAR_TO 0x13}of the Blind\nPatricia A. Maurer\nJapan Braille Library\nEuropean Blind Union\n");
__attribute__((aligned(4))) const u8 gCreditsString_Braille_Code_Check_3[] = _("\nBraille Code Check\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_National_Information_Library_Service_Margaret_Campion[] = _("\n\nNational Information Library\n{CLEAR_TO 0x2D}Service\nMargaret Campion\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Special_Thanks_4[] = _("Special Thanks\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Takehiro_Izushi_Motoyasu_Tojima_Hitoshi_Yamagami_Hiroyuki_Uesugi[] = _("\nTakehiro Izushi\nMotoyasu Tojima\nHitoshi Yamagami\nHiroyuki Uesugi\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Special_Thanks_5[] = _("Special Thanks\n\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Nicola_Pratt_Barlow_Shellie_Dow_Anthony_Howitt_Naoko_Saeki_Kyoko_Onishi[] = _("\nNicola Pratt-Barlow\nShellie Dow\nAnthony Howitt\nNaoko Saeki\nKyoko Onishi\n");
__attribute__((aligned(4))) const u8 gCreditsString_Braille_Code_Check_4[] = _("\nBraille Code Check\n\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_The_Royal_New_Zealand_Foundation_of_the_Blind_Greg_Moran[] = _("\n\nThe Royal New Zealand\nFoundation of the Blind\nGreg Moran\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Graphic_Designer[] = _("\n\nGraphic Designer\n\n\n\n");
__attribute__((aligned(4))) const u8 gCreditsString_Akira_Kinashi[] = _("\n\n\nAkira Kinashi\n\n\n");
const u8 gJPText_MysteryGift[] = _("");
const u8 gJPText_DecideStop[] = _("");
const u8 gJPText_ReceiveMysteryGiftWithEReader[] = _("");
const u8 gJPText_SelectConnectFromEReaderMenu[] = _("");
const u8 gJPText_SelectConnectWithGBA[] = _("");
const u8 gJPText_SelectConnectAndPressA[] = _("カ-ドeリ-ダ-{PLUS}の ‘つうしん'を\nえらんで Aボタンを おしてください");
const u8 gJPText_LinkIsIncorrect[] = _("");
const u8 gJPText_CardReadingHasBeenHalted[] = _("");
const u8 gJPText_UnableConnectWithEReader[] = _("カ-ドeリ-ダ-{PLUS}と\nつうしん できません");
const u8 gJPText_Connecting[] = _("");
const u8 gJPText_ConnectionErrorCheckLink[] = _("");
const u8 gJPText_ConnectionErrorTryAgain[] = _("");
const u8 gJPText_AllowEReaderToLoadCard[] = _("");
const u8 gJPText_ConnectionComplete[] = _("");
const u8 gJPText_NewTrainerHasComeToSevii[] = _("");
const u8 gJPText_PleaseWaitAMoment[] = _("");
const u8 gJPText_WriteErrorUnableToSaveData[] = _("");
const u8 gText_CommErrorCheckConnections[] = _("Communication error…\nPlease check all connections,\nthen turn the power OFF and ON.");
const u8 gText_CommErrorEllipsis[] = _("Communication error…");
const u8 gText_MoveCloserToLinkPartner[] = _("Move closer to your link partner(s).\nAvoid obstacles between partners.");
const u8 gText_ABtnRegistrationCounter[] = _("A Button: Registration Counter");
const u8 gText_ABtnTitleScreen[] = _("A Button: Title Screen");
const u8 gText_NumPlayerLink[] = _("{STR_VAR_1}P LINK");
const u8 gText_BronzeCard[] = _("BRONZE");
const u8 gText_CopperCard[] = _("COPPER");
const u8 gText_SilverCard[] = _("SILVER");
const u8 gText_GoldCard[] = _("GOLD");
const u8 gText_HelpSystemControls_A_Next[] = _("{A_BUTTON}NEXT");
const u8 gText_HelpSystemControls_PickOkEnd[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK {B_BUTTON}END");
const u8 gText_HelpSystemControls_AorBtoCancel[] = _("{A_BUTTON}{B_BUTTON}CANCEL");
const u8 gText_HelpSystemControls_PickOkCancel[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK {B_BUTTON}CANCEL");
const u8 gEasyChatGroupName_Pokemon[] = _("POKéMON");
const u8 gEasyChatGroupName_Trainer[] = _("TRAINER");
const u8 gEasyChatGroupName_Status[] = _("STATUS");
const u8 gEasyChatGroupName_Battle[] = _("BATTLE");
const u8 gEasyChatGroupName_Greetings[] = _("GREETINGS");
const u8 gEasyChatGroupName_People[] = _("PEOPLE");
const u8 gEasyChatGroupName_Voices[] = _("VOICES");
const u8 gEasyChatGroupName_Speech[] = _("SPEECH");
const u8 gEasyChatGroupName_Endings[] = _("ENDINGS");
const u8 gEasyChatGroupName_Feelings[] = _("FEELINGS");
const u8 gEasyChatGroupName_Conditions[] = _("CONDITIONS");
const u8 gEasyChatGroupName_Actions[] = _("ACTIONS");
const u8 gEasyChatGroupName_Lifestyle[] = _("LIFESTYLE");
const u8 gEasyChatGroupName_Hobbies[] = _("HOBBIES");
const u8 gEasyChatGroupName_Time[] = _("TIME");
const u8 gEasyChatGroupName_Misc[] = _("MISC.");
const u8 gEasyChatGroupName_Adjectives[] = _("ADJECTIVES");
const u8 gEasyChatGroupName_Events[] = _("EVENTS");
const u8 gEasyChatGroupName_Move1[] = _("MOVE 1");
const u8 gEasyChatGroupName_Move2[] = _("MOVE 2");
const u8 gEasyChatGroupName_TrendySaying[] = _("TRENDY SAYING");
const u8 gEasyChatGroupName_Pokemon2[] = _("POKéMON2");
const u8 gText_ThreeQuestionMarks[] = _("???");
const u8 gText_UnusedEmpty[] = _("");
const u8 gText_UnusedLv[] = _("Lv");
const u8 gText_UnusedDashes[] = _("---");
const u8 gText_4Qmark[] = _("????");
const u8 gText_UnusedEmpty2[] = _("");
const u8 gText_IsThisTradeOkay[] = _("Is this trade okay?");
const u8 gTradeText_Cancel[] = _("CANCEL");
const u8 gTradeText_ChooseAPokemon[] = _("Choose a POKéMON.");
const u8 gTradeText_Summary[] = _("SUMMARY");
const u8 gTradeText_Trade[] = _("TRADE");
const u8 gText_CancelTrade[] = _("Cancel trade?");
const u8 gTradeText_PressBButtonToExit[] = _("Press the B Button to exit.");
const u8 gText_TradeAction_Summary[] = _("SUMMARY");
const u8 gText_TradeAction_Trade[] = _("TRADE");
const u8 gText_Trade_CommunicationStandby[] = _("{COLOR DARK_GRAY}{HIGHLIGHT WHITE}{SHADOW LIGHT_GRAY}Communication standby…\nPlease wait.");
const u8 gText_TradeHasBeenCanceled[] = _("{COLOR DARK_GRAY}{HIGHLIGHT WHITE}{SHADOW LIGHT_GRAY}The trade has been canceled.");
const u8 gText_Trade_OnlyPkmnForBattle[] = _("{COLOR DARK_GRAY}{HIGHLIGHT WHITE}{SHADOW LIGHT_GRAY}That's your only POKéMON\nfor battle.");
const u8 gText_WaitingForFriendToFinish[] = _("{COLOR DARK_GRAY}{HIGHLIGHT WHITE}{SHADOW LIGHT_GRAY}Waiting for your friend\nto finish…");
const u8 gText_FriendWantsToTrade[] = _("Your friend wants\nto trade POKéMON.");
const u8 gText_XWillBeSentToY[] = _("{STR_VAR_2} will be\nsent to {STR_VAR_1}.");
const u8 gText_ByeByeVar1[] = _("Bye-bye, {STR_VAR_2}!");
const u8 gText_XSentOverY[] = _("{STR_VAR_1} sent over {STR_VAR_3}.");
const u8 gText_TakeGoodCareOfX[] = _("Take good care of {STR_VAR_3}!");
const u8 gText_From[] = _("From ");
const u8 gText_Empty1[] = _("");
const u8 gText_Empty2[] = _("");
const u8 gText_Empty3[] = _("");
const u8 gText_Empty4[] = _("");
const u8 gText_Empty5[] = _("");
const u8 gText_Empty6[] = _("");
const u8 gText_Empty7[] = _("");
const u8 gText_Empty8[] = _("");
const u8 gText_Empty9[] = _("");
const u8 gText_Empty10[] = _("");
const u8 gText_Empty11[] = _("");
const u8 gText_WirelessCommunicationStatus[] = _("Wireless Communication Status");
const u8 gText_PeopleTrading[] = _("People trading:");
const u8 gText_PeopleBattling[] = _("People battling:");
const u8 gText_PeopleInUnionRoom[] = _("People in the UNION ROOM:");
const u8 gText_PeopleCommunicating[] = _("People communicating:");
const u8 gText_Dynamic0Players[] = _("{DYNAMIC 0x00} players");
const u8 gText_Dynamic1Players[] = _("{DYNAMIC 0x01} player");
const u8 gText_Dynamic2Players[] = _("{DYNAMIC 0x02} players");
const u8 gText_Dynamic3Players[] = _("{DYNAMIC 0x03} players");
const u8 gText_DPadChooseAButtonConfirm[] = _("{DPAD_ANY}えらぶ:{A_BUTTON}けってい");
const u8 gText_BButtonCancel[] = _("{B_BUTTON}CANCEL");
const u8 gText_ChooseBattleLineup[] = _("{COLOR RED}{SHADOW LIGHT_RED}   たいせんの くみあわせ\n{COLOR DARK_GRAY}{SHADOW LIGHT_GRAY}じぶんの ばしょをきめて ください");
const u8 gText_UnusedId[] = _("{ID}");
const u8 gText_CommunicationStandby5[] = _("Communication standby…");
const u8 gDaycareText_GetAlongVeryWell[] = _("The two seem to get along\nvery well.");
const u8 gDaycareText_GetAlong[] = _("The two seem to get along.");
const u8 gDaycareText_DontLikeOther[] = _("The two don't seem to like\neach other much.");
const u8 gDaycareText_PlayOther[] = _("The two prefer to play with other\nPOKéMON than each other.");
const u8 gText_TeachWhichMoveToMon[] = _("Teach which move to {STR_VAR_1}?");
const u8 gText_TeachMoveQues[] = _("Teach {STR_VAR_2}?");
const u8 gText_MonLearnedMove[] = _("{STR_VAR_1} learned\n{STR_VAR_2}.");
const u8 gText_MonIsTryingToLearnMove[] = _("{STR_VAR_1} is trying to learn\n{STR_VAR_2}.\pBut {STR_VAR_1} can't learn more\nthan four moves.\pDelete an older move to make\nroom for {STR_VAR_2}?");
const u8 gText_StopLearningMove[] = _("Stop learning {STR_VAR_2}?");
const u8 gText_1_2_and_Poof[] = _("{PAUSE 0x20}1, {PAUSE 0x0F}2, and {PAUSE 0x0F}‥ {PAUSE 0x0F}‥ {PAUSE 0x0F}‥ {PAUSE 0x0F}{PLAY_SE SE_BALL_BOUNCE_1}Poof!\p");
const u8 gText_MonForgotOldMoveAndMonLearnedNewMove[] = _("{STR_VAR_1} forgot {STR_VAR_3}.\pAnd‥\p{STR_VAR_1}\nlearned {STR_VAR_2}.");
const u8 gText_GiveUpTryingToTeachNewMove[] = _("Give up trying to teach a new\nmove to {STR_VAR_1}?");
const u8 gText_WhichMoveShouldBeForgotten[] = _("Which move should be forgotten?\p");
const u8 gText_TenDashes[] = _("----------");
const u8 gText_CommStandbyAwaitingOtherPlayer[] = _("Communication standby‥\nAwaiting another player to choose.");
const u8 gText_BattleWasRefused[] = _("The battle was refused.{PAUSE 0x3C}");
const u8 gText_RefusedBattle[] = _("Refused the battle.{PAUSE 0x3C}");
const u8 gFameCheckerText_MainScreenUI[] = _("{START_BUTTON}PICK {DPAD_UPDOWN}SELECT {A_BUTTON}OK");
const u8 gFameCheckerText_PickScreenUI[] = _("{START_BUTTON}PICK {DPAD_UPDOWN}SELECT {B_BUTTON}CANCEL");
const u8 gFameCheckerText_FlavorTextUI[] = _("{DPAD_ANY}PICK {A_BUTTON}READ {B_BUTTON}CANCEL");
const u8 gFameCheckerOakName[] = _("OAK");
const u8 gFameCheckerDaisyName[] = _("DAISY");
const u8 gFameCheckerBillName[] = _("BILL");
const u8 gFameCheckerMrFujiName[] = _("FUJI");
const u8 gText_VarietyOfEventsImportedWireless[] = _("A variety of events will be imported\nover Wireless Communication.");
const u8 gText_WonderCardsInPossession[] = _("Read the WONDER CARDS in your\npossession.");
const u8 gText_ReadNewsThatArrived[] = _("Read the NEWS that arrived.");
const u8 gText_ReturnToTitle[] = _("Return to the title screen.");
const u8 gText_DontHaveCardNewOneInput[] = _("You don't have a WONDER CARD,\nso a new CARD will be input.");
const u8 gText_DontHaveNewsNewOneInput[] = _("You don't have any WONDER NEWS,\nso new NEWS will be input.");
const u8 gText_WhereShouldCardBeAccessed[] = _("Where should the WONDER CARD\nbe accessed?");
const u8 gText_WhereShouldNewsBeAccessed[] = _("Where should the WONDER NEWS\nbe accessed?");
const u8 gText_LinkStandyBButtonCancel[] = _("Link standby...\n... ... B Button: Cancel");
const u8 gText_Communicating[] = _("Communicating…");
const u8 gText_CommunicationCompleted[] = _("Communication completed.");
const u8 gText_CommunicationError[] = _("Communication error.");
const u8 gText_CommunicationCanceled[] = _("Communication has been canceled.");
const u8 gText_ThrowAwayWonderCard[] = _("Throw away the WONDER CARD\nand input a new CARD?");
const u8 gText_HaventReceivedCardsGift[] = _("You haven't received the CARD's gift\nyet. Input a new CARD anyway?");
const u8 gText_WonderCardReceivedFrom[] = _("A WONDER CARD has been received\nfrom {STR_VAR_1}.");
const u8 gText_WonderNewsReceivedFrom[] = _("A WONDER NEWS item has been\nreceived from {STR_VAR_1}.");
const u8 gText_WonderCardReceived[] = _("A new WONDER CARD has been\nreceived.");
const u8 gText_WonderNewsReceived[] = _("A new WONDER NEWS item has been\nreceived.");
const u8 gText_NewStampReceived[] = _("A new STAMP has been received.");
const u8 gText_NewTrainerReceived[] = _("A new TRAINER has arrived.");
const u8 gText_AlreadyHadCard[] = _("You already had that\nWONDER CARD.");
const u8 gText_AlreadyHadNews[] = _("You already had that\nWONDER NEWS item.");
const u8 gText_AlreadyHadStamp[] = _("You already had that\nSTAMP.");
const u8 gText_NoMoreRoomForStamps[] = _("There's no more room for adding\nSTAMPS.");
const u8 gText_RecordUploadedViaWireless[] = _("Your record has been uploaded via\nWIRELESS COMMUNICATION.");
const u8 gText_CantAcceptCardFromTrainer[] = _("You can't accept a WONDER CARD\nfrom this TRAINER.");
const u8 gText_CantAcceptNewsFromTrainer[] = _("You can't accept WONDER NEWS\nfrom this TRAINER.");
const u8 gText_NothingSentOver[] = _("Nothing was sent over…");
const u8 gText_WhatToDoWithCards[] = _("What would you like to do\nwith the WONDER CARDS?");
const u8 gText_WhatToDoWithNews[] = _("What would you like to do\nwith the WONDER NEWS?");
const u8 gText_SendingWonderCard[] = _("Sending your WONDER CARD…");
const u8 gText_SendingWonderNews[] = _("Sending your WONDER NEWS item…");
const u8 gText_WonderCardSentTo[] = _("Your WONDER CARD has been sent\nto {STR_VAR_1}.");
const u8 gText_WonderNewsSentTo[] = _("Your WONDER NEWS item has been\nsent to {STR_VAR_1}.");
const u8 gText_StampSentTo[] = _("A STAMP has been sent to {STR_VAR_1}.");
const u8 gText_GiftSentTo[] = _("A GIFT has been sent to {STR_VAR_1}.");
const u8 gText_OtherTrainerHasCard[] = _("The other TRAINER has the same\nWONDER CARD already.");
const u8 gText_OtherTrainerHasNews[] = _("The other TRAINER has the same\nWONDER NEWS already.");
const u8 gText_OtherTrainerHasStamp[] = _("The other TRAINER has the same\nSTAMP already.");
const u8 gText_OtherTrainerCanceled[] = _("The other TRAINER canceled\ncommunication.");
const u8 gText_CantSendGiftToTrainer[] = _("You can't send a MYSTERY GIFT to\nthis TRAINER.");
const u8 gText_IfThrowAwayCardEventWontHappen[] = _("If you throw away the CARD,\nits event won't happen. Okay?");
const u8 gText_OkayToDiscardNews[] = _("Is it okay to discard this\nNEWS item?");
const u8 gText_HaventReceivedGiftOkayToDiscard[] = _("You haven't received the\nGIFT. Is it okay to discard?");
const u8 gText_DataWillBeSaved[] = _("Data will be saved.\nPlease wait.");
const u8 gText_SaveCompletedPressA[] = _("Save completed.\nPlease press the A Button.");
const u8 gText_WonderCardThrownAway[] = _("The WONDER CARD was thrown away.");
const u8 gText_WonderNewsThrownAway[] = _("The WONDER NEWS was thrown away.");
const u8 gText_MysteryGift2[] = _("MYSTERY GIFT");
const u8 gText_PickOKCancel[] = _("{DPAD_UPDOWN}PICK {A_BUTTON}OK {B_BUTTON}EXIT");
const u8 gText_WonderCards[] = _("WONDER CARDS");
const u8 gText_WonderNews[] = _("WONDER NEWS");
const u8 gText_WirelessCommunication[] = _("WIRELESS COMMUNICATION");
const u8 gText_Friend2[] = _("FRIEND");
const u8 gText_Exit3[] = _("EXIT");
const u8 gText_Receive[] = _("RECEIVE");
const u8 gText_Send[] = _("SEND");
const u8 gText_Toss[] = _("TOSS");
const u8 gText_DelAllCancelOk[] = _("DEL. ALL{CLEAR_TO 0x57}CANCEL{CLEAR_TO 0xA4}OK");
