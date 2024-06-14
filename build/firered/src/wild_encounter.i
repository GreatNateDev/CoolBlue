# 0 "src/wild_encounter.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/wild_encounter.c"
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
# 2 "src/wild_encounter.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 3 "src/wild_encounter.c" 2
# 1 "include/wild_encounter.h" 1
# 13 "include/wild_encounter.h"
struct WildPokemon
{
    u8 minLevel;
    u8 maxLevel;
    u16 species;
};

struct WildPokemonInfo
{
    u8 encounterRate;
    const struct WildPokemon *wildPokemon;
};

struct WildPokemonHeader
{
    u8 mapGroup;
    u8 mapNum;
    const struct WildPokemonInfo *landMonsInfo;
    const struct WildPokemonInfo *waterMonsInfo;
    const struct WildPokemonInfo *rockSmashMonsInfo;
    const struct WildPokemonInfo *fishingMonsInfo;
};

extern const struct WildPokemonHeader gWildMonHeaders[];

void DisableWildEncounters(bool8 disabled);
bool8 StandardWildEncounter(u32 currMetatileAttrs, u16 previousMetaTileBehavior);
bool8 SweetScentWildEncounter(void);
bool8 DoesCurrentMapHaveFishingMons(void);
void FishingWildEncounter(u8 rod);
u16 GetLocalWildMon(bool8 *isWaterMon);
u16 GetLocalWaterMon(void);
bool8 UpdateRepelCounter(void);
void DisableWildEncounters(bool8 state);
u8 GetUnownLetterByPersonalityLoByte(u32 personality);
bool8 SweetScentWildEncounter(void);
void SeedWildEncounterRng(u16 randVal);
void ResetEncounterRateModifiers(void);
bool8 TryStandardWildEncounter(u32 currMetatileAttrs);
# 4 "src/wild_encounter.c" 2
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
# 5 "src/wild_encounter.c" 2
# 1 "include/fieldmap.h" 1
# 23 "include/fieldmap.h"
extern struct BackupMapLayout VMap;
extern const struct MapLayout Route1_Layout;

u32 MapGridGetMetatileIdAt(s32, s32);
u32 MapGridGetMetatileBehaviorAt(s16, s16);
u8 MapGridGetMetatileLayerTypeAt(s16 x, s16 y);
void MapGridSetMetatileIdAt(s32, s32, u16);
void MapGridSetMetatileEntryAt(s32, s32, u16);
u8 MapGridGetElevationAt(s32 x, s32 y);
void GetCameraCoords(u16 *, u16 *);
bool8 MapGridGetCollisionAt(s32, s32);
s32 GetMapBorderIdAt(s32, s32);
bool32 CanCameraMoveInDirection(s32);
const struct MapHeader * GetMapHeaderFromConnection(const struct MapConnection * connection);
const struct MapConnection * GetMapConnectionAtPos(s16 x, s16 y);
void ApplyGlobalTintToPaletteSlot(u8 slot, u8 count);
void SaveMapView(void);
u32 ExtractMetatileAttribute(u32 attributes, u8 attributeType);
u32 MapGridGetMetatileAttributeAt(s16 x, s16 y, u8 attributeType);
void MapGridSetMetatileImpassabilityAt(s32 x, s32 y, bool32 arg2);
bool8 CameraMove(s32 x, s32 y);
void CopyMapTilesetsToVram(struct MapLayout const * mapLayout);
void LoadMapTilesetPalettes(struct MapLayout const * mapLayout);
void InitMap(void);
void CopySecondaryTilesetToVramUsingHeap(const struct MapLayout * mapLayout);
void LoadSecondaryTilesetPalette(const struct MapLayout * mapLayout);
void InitMapFromSavedGame(void);
void CopyPrimaryTilesetToVram(const struct MapLayout *mapLayout);
void CopySecondaryTilesetToVram(const struct MapLayout *mapLayout);
void GetCameraFocusCoords(u16 *x, u16 *y);
void SetCameraFocusCoords(u16 x, u16 y);
# 6 "src/wild_encounter.c" 2

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
# 8 "src/wild_encounter.c" 2
# 1 "include/field_player_avatar.h" 1





void ClearPlayerAvatarInfo(void);
void SetPlayerAvatarExtraStateTransition(u8, u8);
u8 GetPlayerAvatarGenderByGraphicsId(u8);
bool8 TestPlayerAvatarFlags(u8);
void PlayerGetDestCoords(s16 *, s16 *);
u8 GetPlayerFacingDirection(void);
u8 GetPlayerMovementDirection(void);
u8 PlayerGetCopyableMovement(void);
void MovePlayerNotOnBike(u8 direction, u16 heldKeys);

void MovementType_Player(struct Sprite *sprite);
void HandleEnforcedLookDirectionOnPlayerStopMoving(void);
void StopPlayerAvatar(void);
void GetXYCoordsOneStepInFrontOfPlayer(s16 *xPtr, s16 *yPtr);
u8 GetPlayerAvatarGraphicsIdByStateId(u8);
void SetPlayerAvatarStateMask(u8 mask);
void AlignFishingAnimationFrames(struct Sprite *sprite);
void CreateStopSurfingTask_NoMusicChange(u8 direction);
void SavePlayerFacingDirectionForTeleport(u8 direction);
void SetPlayerAvatarTransitionFlags(u16 flags);
bool8 IsPlayerFacingSurfableFishableWater(void);
void StartFishing(u8 secondaryId);
u8 GetPlayerAvatarObjectId(void);
u8 PlayerGetElevation(void);
u8 GetPlayerAvatarGraphicsIdByCurrentState(void);
void StartPlayerAvatarSummonMonForFieldMoveAnim(void);
void SetPlayerInvisibility(bool8);
void StartTeleportInPlayerAnim(void);
void StartTeleportWarpOutPlayerAnim(void);
bool32 WaitTeleportWarpOutPlayerAnim(void);
bool32 WaitTeleportInPlayerAnim(void);
bool8 PartyHasMonWithSurf(void);
bool8 IsPlayerSurfingNorth(void);
u8 player_get_pos_including_state_based_drift(s16 *x, s16 *y);
void StartPlayerAvatarVsSeekerAnim(void);
u8 GetRivalAvatarGraphicsIdByStateIdAndGender(u8 state, u8 gender);
u8 GetPlayerAvatarGraphicsIdByStateIdAndGender(u8 state, u8 gender);
u8 CheckForObjectEventCollision(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction, u8 metatileBehavior);
void PlayerWalkSlower(u8 direction);
void PlayerWalkSlow(u8 direction);
void PlayerWalkNormal(u8 direction);
void PlayerWalkFast(u8 direction);
void PlayerGlide(u8 direction);
void PlayerRideWaterCurrent(u8 direction);
void PlayerWalkFaster(u8 direction);
void PlayerRun(u8 direction);
void PlayerRunSlow(u8 direction);
void PlayerOnBikeCollide(u8 direction);
void PlayerNotOnBikeCollide(u8 direction);
void PlayerFaceDirection(u8 direction);
void PlayerFaceDirectionFast(u8 direction);
void PlayerTurnInPlace(u8 direction);
void PlayerJumpLedge(u8 direction);
void PlayerShakeHeadOrWalkInPlace(void);
void player_step(u8 direction, u16 newKeys, u16 heldKeys);
bool32 PlayerIsMovingOnRockStairs(u8 direction);
void UpdatePlayerAvatarTransitionState(void);
void InitPlayerAvatar(s16 x, s16 y, u8 direction, u8 gender);
void PlayerUseAcroBikeOnBumpySlope(u8 direction);
u8 GetRSAvatarGraphicsIdByGender(u8 gender);
# 9 "src/wild_encounter.c" 2
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
# 10 "src/wild_encounter.c" 2
# 1 "include/overworld.h" 1
# 30 "include/overworld.h"
struct LinkPlayerObjectEvent
{
    u8 active;
    u8 linkPlayerId;
    u8 objEventId;
    u8 movementMode;
};

struct CreditsOverworldCmd
{
    s16 unk_0;
    s16 unk_2;
    s16 unk_4;
};






extern const struct Coords32 gDirectionToVectors[];

extern struct LinkPlayerObjectEvent gLinkPlayerObjectEvents[4];
extern MainCallback gFieldCallback;

extern struct WarpData gLastUsedWarp;

extern u8 gExitStairsMovementDisabled;
extern u8 gFieldLinkPlayerCount;
extern u8 gLocalLinkPlayerId;

void IncrementGameStat(u8 index);

void SetObjEventTemplateCoords(u8, s16, s16);
void SetObjEventTemplateMovementType(u8, u8);

void SetWarpDestination(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);

void SetDynamicWarp(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarpWithCoords(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedDiveWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedHoleWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetEscapeWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void Overworld_SetHealLocationWarp(u8);
void SetWarpDestinationToEscapeWarp(void);
void SetWarpDestinationToLastHealLocation(void);
u8 IsMapTypeOutdoors(u8 mapType);
void Overworld_ClearSavedMusic(void);
bool32 Overworld_MusicCanOverrideMapMusic(u16 song);

void SetFlashLevel(s32 a1);
u8 Overworld_GetFlashLevel(void);

void Overworld_SetSavedMusic(u16);
void Overworld_ChangeMusicToDefault(void);
void Overworld_ChangeMusicTo(u16);

bool32 IsUpdateLinkStateCBActive(void);

void ClearLinkPlayerObjectEvents(void);
const struct MapHeader *const Overworld_GetMapHeaderByGroupAndId(u16, u16);
void ObjectEventMoveDestCoords(struct ObjectEvent *, u32, s16 *, s16 *);
void CB2_ReturnToField(void);
void CB2_ReturnToFieldContinueScriptPlayMapMusic(void);
void WarpIntoMap(void);
u8 GetMapTypeByGroupAndId(s8 mapGroup, s8 mapNum);
void SetWarpDestinationToMapWarp(s8 mapGroup, s8 mapNum, s8 warpNum);
void SetWarpDestinationToDynamicWarp(u8 unused);

u32 GetGameStat(u8 statId);
void SetGameStat(u8 statId, u32 value);

void CB2_ContinueSavedGame(void);
void Overworld_SetWarpDestinationFromWarp(struct WarpData *);
void CB2_SetUpOverworldForQLPlayback(void);
void CB2_SetUpOverworldForQLPlaybackWithWarpExit(void);
void CB2_EnterFieldFromQuestLog(void);
void Overworld_PlaySpecialMapMusic(void);

u8 GetCurrentRegionMapSectionId(void);

void SetCurrentMapLayout(u16 mapLayoutId);
void SetWarpDestinationToFixedHoleWarp(s16 x, s16 y);

void ResetInitialPlayerAvatarState(void);
void CleanupOverworldWindowsAndTilemaps(void);
u32 ComputeWhiteOutMoneyLoss(void);

extern u8 gDisableMapMusicChangeOnMapLoad;
extern u8 gGlobalFieldTintMode;

extern bool8 (* gFieldCallback2)(void);

void SetLastHealLocationWarp(u8 healLocaionId);
void LoadMapFromCameraTransition(u8 mapGroup, u8 mapNum);
void CB2_ReturnToFieldFromDiploma(void);
void CB2_OverworldBasic(void);
void CB2_NewGame(void);
bool8 IsMapTypeOutdoors(u8 mapType);
bool8 Overworld_MapTypeAllowsTeleportAndFly(u8 mapType);
void Overworld_ResetStateAfterTeleport(void);

void Overworld_FadeOutMapMusic(void);
void CB2_LoadMap(void);
bool8 BGMusicStopped(void);
bool8 IsMapTypeIndoors(u8 mapType);
bool32 Overworld_IsBikingAllowed(void);
void Overworld_ResetStateAfterDigEscRope(void);
bool32 Overworld_LinkRecvQueueLengthMoreThan2(void);
u8 GetCurrentMapType(void);

u8 GetLastUsedWarpMapType(void);
const struct MapHeader *const GetDestinationWarpMapHeader(void);
void TryFadeOutOldMapMusic(void);
void CB2_ReturnToFieldCableClub(void);
void ResetGameStats(void);

void Overworld_CreditsMainCB(void);
bool32 Overworld_DoScrollSceneForCredits(u8 *, const struct CreditsOverworldCmd *, u8);

bool32 IsSendingKeysOverCable(void);

void CB2_ReturnToFieldWithOpenMenu(void);
void CB2_WhiteOut(void);
void CB2_ReturnToFieldFromMultiplayer(void);
void ApplyNewEncryptionKeyToGameStats(u32 newKey);
void SetContinueGameWarpToDynamicWarp(int);

void SetContinueGameWarpToHealLocation(u8 loc);

void UpdateAmbientCry(s16 *state, u16 *delayCounter);
void SetWarpDestinationToHealLocation(u8 a0);
bool32 Overworld_SendKeysToLinkIsRunning(void);
bool32 Overworld_RecvKeysFromLinkIsRunning(void);
void OverworldWhiteOutGetMoneyLoss(void);
u8 GetCurrentMapBattleScene(void);
void Overworld_ResetStateAfterFly(void);
bool8 MetatileBehavior_IsSurfableInSeafoamIslands(u16 metatileBehavior);
void Overworld_ResetMapMusic(void);
u16 QueueExitLinkRoomKey(void);
u16 SetInCableClubSeat(void);
u32 GetCableClubPartnersReady(void);
u16 SetStartedCableClubActivity(void);
u16 SetLinkWaitingForScript(void);
void SetMainCallback1(MainCallback cb);
void CB1_Overworld(void);
void CB2_ReturnToFieldContinueScript(void);
u8 GetLastUsedWarpMapSectionId(void);
void StoreInitialPlayerAvatarState(void);
void UpdateEscapeWarp(s16 x, s16 y);
bool8 SetDiveWarpEmerge(u16 x, u16 y);
bool8 SetDiveWarpDive(u16 x, u16 y);

extern u16 *gBGTilemapBuffers1;
extern u16 *gBGTilemapBuffers2;
extern u16 *gBGTilemapBuffers3;
extern u16 gHeldKeyCodeToSend;
# 11 "src/wild_encounter.c" 2
# 1 "include/metatile_behavior.h" 1





bool8 MetatileBehavior_IsATile(u8 metatileBehavior);
bool8 MetatileBehavior_IsJumpEast(u8 metatileBehavior);
bool8 MetatileBehavior_IsJumpWest(u8 metatileBehavior);
bool8 MetatileBehavior_IsJumpNorth(u8 metatileBehavior);
bool8 MetatileBehavior_IsJumpSouth(u8 metatileBehavior);
bool8 MetatileBehavior_IsPokeGrass(u8 metatileBehavior);
bool8 MetatileBehavior_IsSand(u8 metatileBehavior);
bool8 MetatileBehavior_IsSandOrShallowFlowingWater(u8 metatileBehavior);
bool8 MetatileBehavior_IsDeepSand(u8 metatileBehavior);
bool8 MetatileBehavior_IsReflective(u8 metatileBehavior);
bool8 MetatileBehavior_IsIce(u8 metatileBehavior);
bool8 MetatileBehavior_IsWarpDoor(u8 metatileBehavior);
bool8 MetatileBehavior_IsWarpDoor_2(u8 metatileBehavior);
bool8 MetatileBehavior_IsEscalator(u8 metatileBehavior);
bool8 MetatileBehavior_IsDirectionalUpRightStairWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsDirectionalUpLeftStairWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsDirectionalDownRightStairWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsDirectionalDownLeftStairWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsDirectionalStairWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsLadder(u8 metatileBehavior);
bool8 MetatileBehavior_IsNonAnimDoor(u8 metatileBehavior);
bool8 MetatileBehavior_IsDeepSouthWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsSurfable(u8 metatileBehavior);
bool8 MetatileBehavior_IsFastWater(u8 metatileBehavior);
bool8 MetatileBehavior_IsEastArrowWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsWestArrowWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsNorthArrowWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsSouthArrowWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsForcedMovementTile(u8 metatileBehavior);
bool8 MetatileBehavior_IsIce_2(u8 metatileBehavior);
bool8 MetatileBehavior_IsTrickHouseSlipperyFloor(u8 metatileBehavior);
bool8 MetatileBehavior_IsWalkNorth(u8 metatileBehavior);
bool8 MetatileBehavior_IsWalkSouth(u8 metatileBehavior);
bool8 MetatileBehavior_IsWalkWest(u8 metatileBehavior);
bool8 MetatileBehavior_IsWalkEast(u8 metatileBehavior);
bool8 MetatileBehavior_IsNorthwardCurrent(u8 metatileBehavior);
bool8 MetatileBehavior_IsSouthwardCurrent(u8 metatileBehavior);
bool8 MetatileBehavior_IsWestwardCurrent(u8 metatileBehavior);
bool8 MetatileBehavior_IsEastwardCurrent(u8 metatileBehavior);
bool8 MetatileBehavior_IsSlideNorth(u8 metatileBehavior);
bool8 MetatileBehavior_IsSlideSouth(u8 metatileBehavior);
bool8 MetatileBehavior_IsSlideWest(u8 metatileBehavior);
bool8 MetatileBehavior_IsSlideEast(u8 metatileBehavior);
bool8 MetatileBehavior_IsCounter(u8 metatileBehavior);
bool8 MetatileBehavior_IsPlayerFacingTVScreen(u8 metatileBehavior, u8 playerDirection);
bool8 MetatileBehavior_IsPC(u8 metatileBehavior);
bool8 MetatileBehavior_HasRipples(u8 metatileBehavior);
bool8 MetatileBehavior_IsPuddle(u8 metatileBehavior);
bool8 MetatileBehavior_IsTallGrass(u8 metatileBehavior);
bool8 MetatileBehavior_IsLongGrass(u8 metatileBehavior);
bool8 MetatileBehavior_IsAshGrass(u8 metatileBehavior);
bool8 MetatileBehavior_IsFootprints(u8 metatileBehavior);
bool8 MetatileBehavior_IsBridge(u8 metatileBehavior);
bool8 MetatileBehavior_GetBridgeType(u8 metatileBehavior);
bool8 MetatileBehavior_IsIndoorEncounter(u8 metatileBehavior);
bool8 MetatileBehavior_IsMountain(u8 metatileBehavior);
bool8 MetatileBehavior_IsDiveable(u8 metatileBehavior);
bool8 MetatileBehavior_IsUnableToEmerge(u8 metatileBehavior);
bool8 MetatileBehavior_IsShallowFlowingWater(u8 metatileBehavior);
bool8 MetatileBehavior_IsThinIce(u8 metatileBehavior);
bool8 MetatileBehavior_IsCrackedIce(u8 metatileBehavior);
bool8 MetatileBehavior_IsDeepWaterTerrain(u8 metatileBehavior);
bool8 MetatileBehavior_IsSurfableAndNotWaterfall(u8 metatileBehavior);
bool8 MetatileBehavior_IsEastBlocked(u8 metatileBehavior);
bool8 MetatileBehavior_IsWestBlocked(u8 metatileBehavior);
bool8 MetatileBehavior_IsNorthBlocked(u8 metatileBehavior);
bool8 MetatileBehavior_IsSouthBlocked(u8 metatileBehavior);
bool8 MetatileBehavior_IsShortGrass(u8 metatileBehavior);
bool8 MetatileBehavior_IsHotSprings(u8 metatileBehavior);
bool8 MetatileBehavior_IsWaterfall(u8 metatileBehavior);
bool8 MetatileBehavior_IsFortreeBridge(u8 metatileBehavior);
bool8 MetatileBehavior_IsPacifidlogLog(u8 metatileBehavior);
bool8 MetatileBehavior_IsRegionMap(u8 metatileBehavior);
bool8 MetatileBehavior_IsLavaridgeB1FWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsLavaridge1FWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsWarpPad(u8 metatileBehavior);
bool8 MetatileBehavior_IsUnionRoomWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsWater(u8 metatileBehavior);
bool8 MetatileBehavior_IsFallWarp(u8 metatileBehavior);
bool8 MetatileBehavior_IsCrackedFloor(u8 metatileBehavior);
bool32 MetatileBehavior_IsCyclingRoadPullDownTile(u8 metatileBehavior);
bool8 MetatileBehavior_IsCyclingRoadPullDownTileGrass(u8 metatileBehavior);
bool8 MetatileBehavior_IsBumpySlope(u8 metatileBehavior);
bool8 MetatileBehavior_IsIsolatedVerticalRail(u8 metatileBehavior);
bool8 MetatileBehavior_IsIsolatedHorizontalRail(u8 metatileBehavior);
bool8 MetatileBehavior_IsVerticalRail(u8 metatileBehavior);
bool8 MetatileBehavior_IsHorizontalRail(u8 metatileBehavior);
bool8 MetatileBehavior_IsSeaweed(u8 metatileBehavior);
bool8 MetatileBehavior_IsRunningDisallowed(u8 metatileBehavior);
bool8 MetatileBehavior_IsBookshelf(u8 metatileBehavior);
bool8 MetatileBehavior_IsPokeMartShelf(u8 metatileBehavior);
bool8 MetatileBehavior_IsPlayerFacingPokemonCenterSign(u8 metatileBehavior, u8 playerDirection);
bool8 MetatileBehavior_IsPlayerFacingPokeMartSign(u8 metatileBehavior, u8 playerDirection);
bool8 TestMetatileAttributeBit(u8 attr, u8 bitmask);
bool8 MetatileBehavior_IsSpinRight(u8 metatileBehavior);
bool8 MetatileBehavior_IsSpinLeft(u8 metatileBehavior);
bool8 MetatileBehavior_IsSpinUp(u8 metatileBehavior);
bool8 MetatileBehavior_IsSpinDown(u8 metatileBehavior);
bool8 MetatileBehavior_IsStopSpinning(u8 metatileBehavior);
bool8 MetatileBehavior_IsSpinTile(u8 metatileBehavior);
bool8 MetatileBehavior_IsSignpost(u8 metatileBehavior);
bool8 MetatileBehavior_IsCabinet(u8 metatileBehavior);
bool8 MetatileBehavior_IsKitchen(u8 metatileBehavior);
bool8 MetatileBehavior_IsDresser(u8 metatileBehavior);
bool8 MetatileBehavior_IsSnacks(u8 metatileBehavior);
bool8 MetatileBehavior_IsStrengthButton(u8 metatileBehavior);
bool8 MetatileBehavior_IsPlayerFacingCableClubWirelessMonitor(u8 metatileBehavior, u8 playerDirection);
bool8 MetatileBehavior_IsPlayerFacingBattleRecords(u8 metatileBehavior, u8 playerDirection);
bool8 MetatileBehavior_IsQuestionnaire(u8 metatileBehavior);
bool8 MetatileBehavior_IsIndigoPlateauSign1(u8 metatileBehavior);
bool8 MetatileBehavior_IsIndigoPlateauSign2(u8 metatileBehavior);
bool8 MetatileBehavior_IsFood(u8 metatileBehavior);
bool8 MetatileBehavior_IsRockStairs(u8 metatileBehavior);
bool8 MetatileBehavior_IsBlueprints(u8 metatileBehavior);
bool8 MetatileBehavior_IsPainting(u8 metatileBehavior);
bool8 MetatileBehavior_IsPowerPlantMachine(u8 metatileBehavior);
bool8 MetatileBehavior_IsTelephone(u8 metatileBehavior);
bool8 MetatileBehavior_IsComputer(u8 metatileBehavior);
bool8 MetatileBehavior_IsAdvertisingPoster(u8 metatileBehavior);
bool8 MetatileBehavior_IsTastyFood(u8 metatileBehavior);
bool8 MetatileBehavior_IsTrashBin(u8 metatileBehavior);
bool8 MetatileBehavior_IsCup(u8 metatileBehavior);
bool8 MetatileBehavior_IsPolishedWindow(u8 metatileBehavior);
bool8 MetatileBehavior_IsBeautifulSkyWindow(u8 metatileBehavior);
bool8 MetatileBehavior_IsBlinkingLights(u8 metatileBehavior);
bool8 MetatileBehavior_IsNeatlyLinedUpTools(u8 metatileBehavior);
bool8 MetatileBehavior_IsImpressiveMachine(u8 metatileBehavior);
bool8 MetatileBehavior_IsVideoGame(u8 metatileBehavior);
bool8 MetatileBehavior_IsBurglary(u8 metatileBehavior);
bool8 MetatileBehavior_IsTrainerTowerMonitor(u8 metatileBehavior);
bool8 MetatileBehavior_IsSecretBaseJumpMat(u8 metatileBehavior);
bool8 MetatileBehavior_IsSecretBaseSpinMat(u8 metatileBehavior);
# 12 "src/wild_encounter.c" 2
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
# 13 "src/wild_encounter.c" 2
# 1 "include/script.h" 1





struct ScriptContext;

typedef bool8 (*ScrCmdFunc)(struct ScriptContext *);
typedef u8 Script[];

struct ScriptContext
{
    u8 stackDepth;
    u8 mode;
    u8 comparisonResult;
    u8 (*nativePtr)(void);
    const u8 *scriptPtr;
    const u8 *stack[20];
    ScrCmdFunc *cmdTable;
    ScrCmdFunc *cmdTableEnd;
    u32 data[4];
};



void InitScriptContext(struct ScriptContext *ctx, void *cmdTable, void *cmdTableEnd);
u8 SetupBytecodeScript(struct ScriptContext *ctx, const u8 *ptr);
void SetupNativeScript(struct ScriptContext *ctx, bool8 (*ptr)(void));
void StopScript(struct ScriptContext *ctx);
bool8 RunScriptCommand(struct ScriptContext *ctx);
void ScriptJump(struct ScriptContext *ctx, const u8 *ptr);
void ScriptCall(struct ScriptContext *ctx, const u8 *ptr);
void ScriptReturn(struct ScriptContext *ctx);
u16 ScriptReadHalfword(struct ScriptContext *ctx);
u32 ScriptReadWord(struct ScriptContext *ctx);
void LockPlayerFieldControls(void);
void UnlockPlayerFieldControls(void);
bool8 ArePlayerFieldControlsLocked(void);
void ScriptContext_Init(void);
bool8 ScriptContext_IsEnabled(void);
bool8 ScriptContext_RunScript(void);
void ScriptContext_SetupScript(const u8 *ptr);
void ScriptContext_Stop(void);
void ScriptContext_Enable(void);
void RunScriptImmediately(const u8 *ptr);
void RunOnLoadMapScript(void);
void RunOnTransitionMapScript(void);
void RunOnResumeMapScript(void);
void RunOnReturnToFieldMapScript(void);
void RunOnDiveWarpMapScript(void);
bool8 TryRunOnFrameMapScript(void);
void TryRunOnWarpIntoMapScript(void);
u32 CalculateRamScriptChecksum(void);
void ClearRamScript(void);
bool8 InitRamScript(u8 *script, u16 scriptSize, u8 mapGroup, u8 mapNum, u8 objectId);
const u8 *GetRamScript(u8 objectId, const u8 *script);
bool32 ValidateRamScript(void);
void InitRamScript_NoObjectEvent(u8 * script, u16 scriptSize);
u8 * GetSavedRamScriptIfValid(void);
void RegisterQuestLogInput(u8 var);
void ClearMsgBoxCancelableState(void);
void SetQuestLogInputIsDpadFlag(void);
void ClearQuestLogInput(void);
void ClearQuestLogInputIsDpadFlag(void);
void MsgSetSignpost(void);
void MsgSetNotSignpost(void);
bool8 IsMsgSignpost(void);
bool8 IsQuestLogInputDpad(void);
u8 GetRegisteredQuestLogInput(void);
void ResetFacingNpcOrSignpostVars(void);
bool8 CanWalkAwayToCancelMsgBox(void);
void SetWalkingIntoSignVars(void);
bool8 IsMsgBoxWalkawayDisabled(void);

extern const u8 *gRamScriptRetAddr;
extern u8 gWalkAwayFromSignInhibitTimer;
# 14 "src/wild_encounter.c" 2
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
# 15 "src/wild_encounter.c" 2
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
# 16 "src/wild_encounter.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 1 "include/constants/map_types.h" 1
# 6 "include/constants/maps.h" 2
# 17 "src/wild_encounter.c" 2
# 1 "include/constants/abilities.h" 1
# 18 "src/wild_encounter.c" 2
# 1 "include/constants/items.h" 1
# 19 "src/wild_encounter.c" 2





struct WildEncounterData
{
    u32 rngState;
    u16 prevMetatileBehavior;
    u16 encounterRateBuff;
    u8 stepsSinceLastEncounter;
    u8 abilityEffect;
    u16 leadMonHeldItem;
};

static __attribute__((section("ewram_data"))) struct WildEncounterData sWildEncounterData = {};
static __attribute__((section("ewram_data"))) bool8 sWildEncountersDisabled = 0;

static bool8 UnlockedTanobyOrAreNotInTanoby(void);
static u32 GenerateUnownPersonalityByLetter(u8 letter);
static bool8 IsWildLevelAllowedByRepel(u8 level);
static void ApplyFluteEncounterRateMod(u32 *rate);
static u8 GetFluteEncounterRateModType(void);
static void ApplyCleanseTagEncounterRateMod(u32 *rate);
static bool8 IsLeadMonHoldingCleanseTag(void);
static u16 WildEncounterRandom(void);
static void AddToWildEncounterRateBuff(u8 encouterRate);

# 1 "src/data/wild_encounters.h" 1
# 48 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuinsMoneanChamber_FireRed_LandMons[] =
{
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuinsMoneanChamber_FireRed_LandMonsInfo = { 7, sSevenIslandTanobyRuinsMoneanChamber_FireRed_LandMons };
# 88 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuinsLiptooChamber_FireRed_LandMons[] =
{
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuinsLiptooChamber_FireRed_LandMonsInfo = { 7, sSevenIslandTanobyRuinsLiptooChamber_FireRed_LandMons };
# 128 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuinsWeepthChamber_FireRed_LandMons[] =
{
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuinsWeepthChamber_FireRed_LandMonsInfo = { 7, sSevenIslandTanobyRuinsWeepthChamber_FireRed_LandMons };
# 168 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuinsDilfordChamber_FireRed_LandMons[] =
{
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuinsDilfordChamber_FireRed_LandMonsInfo = { 7, sSevenIslandTanobyRuinsDilfordChamber_FireRed_LandMons };
# 208 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuinsScufibChamber_FireRed_LandMons[] =
{
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuinsScufibChamber_FireRed_LandMonsInfo = { 7, sSevenIslandTanobyRuinsScufibChamber_FireRed_LandMons };
# 248 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuinsRixyChamber_FireRed_LandMons[] =
{
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuinsRixyChamber_FireRed_LandMonsInfo = { 7, sSevenIslandTanobyRuinsRixyChamber_FireRed_LandMons };
# 288 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuinsViapoisChamber_FireRed_LandMons[] =
{
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
    { 25, 25, 201 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuinsViapoisChamber_FireRed_LandMonsInfo = { 7, sSevenIslandTanobyRuinsViapoisChamber_FireRed_LandMons };
# 328 "src/data/wild_encounters.h"
const struct WildPokemon sViridianForest_FireRed_LandMons[] =
{
    { 4, 4, 10 },
    { 4, 4, 13 },
    { 5, 5, 10 },
    { 5, 5, 13 },
    { 3, 3, 10 },
    { 3, 3, 13 },
    { 5, 5, 11 },
    { 5, 5, 14 },
    { 4, 4, 14 },
    { 3, 3, 25 },
    { 6, 6, 14 },
    { 5, 5, 25 },
};

const struct WildPokemonInfo sViridianForest_FireRed_LandMonsInfo = { 14, sViridianForest_FireRed_LandMons };
# 368 "src/data/wild_encounters.h"
const struct WildPokemon sMtMoon1F_FireRed_LandMons[] =
{
    { 7, 7, 41 },
    { 8, 8, 41 },
    { 7, 7, 74 },
    { 9, 9, 41 },
    { 10, 10, 41 },
    { 8, 8, 74 },
    { 9, 9, 74 },
    { 8, 8, 46 },
    { 7, 7, 41 },
    { 7, 7, 41 },
    { 7, 7, 41 },
    { 8, 8, 35 },
};

const struct WildPokemonInfo sMtMoon1F_FireRed_LandMonsInfo = { 7, sMtMoon1F_FireRed_LandMons };
# 408 "src/data/wild_encounters.h"
const struct WildPokemon sMtMoonB1F_FireRed_LandMons[] =
{
    { 7, 7, 46 },
    { 8, 8, 46 },
    { 5, 5, 46 },
    { 6, 6, 46 },
    { 9, 9, 46 },
    { 10, 10, 46 },
    { 7, 7, 46 },
    { 8, 8, 46 },
    { 5, 5, 46 },
    { 6, 6, 46 },
    { 9, 9, 46 },
    { 10, 10, 46 },
};

const struct WildPokemonInfo sMtMoonB1F_FireRed_LandMonsInfo = { 5, sMtMoonB1F_FireRed_LandMons };
# 448 "src/data/wild_encounters.h"
const struct WildPokemon sMtMoonB2F_FireRed_LandMons[] =
{
    { 8, 8, 41 },
    { 9, 9, 74 },
    { 9, 9, 41 },
    { 10, 10, 41 },
    { 10, 10, 74 },
    { 10, 10, 46 },
    { 12, 12, 46 },
    { 10, 10, 35 },
    { 11, 11, 41 },
    { 11, 11, 41 },
    { 11, 11, 41 },
    { 12, 12, 35 },
};

const struct WildPokemonInfo sMtMoonB2F_FireRed_LandMonsInfo = { 7, sMtMoonB2F_FireRed_LandMons };
# 488 "src/data/wild_encounters.h"
const struct WildPokemon sSSAnneExterior_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sSSAnneExterior_FireRed_WaterMonsInfo = { 1, sSSAnneExterior_FireRed_WaterMons };
const struct WildPokemon sSSAnneExterior_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 90 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sSSAnneExterior_FireRed_FishingMonsInfo = { 10, sSSAnneExterior_FireRed_FishingMons };
# 544 "src/data/wild_encounters.h"
const struct WildPokemon sDiglettsCaveB1F_FireRed_LandMons[] =
{
    { 18, 18, 50 },
    { 19, 19, 50 },
    { 17, 17, 50 },
    { 15, 15, 50 },
    { 16, 16, 50 },
    { 20, 20, 50 },
    { 21, 21, 50 },
    { 22, 22, 50 },
    { 17, 17, 50 },
    { 29, 29, 51 },
    { 17, 17, 50 },
    { 31, 31, 51 },
};

const struct WildPokemonInfo sDiglettsCaveB1F_FireRed_LandMonsInfo = { 5, sDiglettsCaveB1F_FireRed_LandMons };
# 584 "src/data/wild_encounters.h"
const struct WildPokemon sVictoryRoad1F_FireRed_LandMons[] =
{
    { 32, 32, 66 },
    { 32, 32, 74 },
    { 40, 40, 95 },
    { 43, 43, 95 },
    { 46, 46, 95 },
    { 32, 32, 41 },
    { 44, 44, 24 },
    { 44, 44, 42 },
    { 44, 44, 105 },
    { 44, 44, 67 },
    { 46, 46, 67 },
    { 46, 46, 105 },
};

const struct WildPokemonInfo sVictoryRoad1F_FireRed_LandMonsInfo = { 7, sVictoryRoad1F_FireRed_LandMons };
# 624 "src/data/wild_encounters.h"
const struct WildPokemon sVictoryRoad2F_FireRed_LandMons[] =
{
    { 34, 34, 66 },
    { 34, 34, 74 },
    { 42, 42, 57 },
    { 45, 45, 95 },
    { 48, 48, 95 },
    { 34, 34, 41 },
    { 46, 46, 24 },
    { 46, 46, 42 },
    { 46, 46, 105 },
    { 46, 46, 67 },
    { 48, 48, 67 },
    { 48, 48, 105 },
};

const struct WildPokemonInfo sVictoryRoad2F_FireRed_LandMonsInfo = { 7, sVictoryRoad2F_FireRed_LandMons };
# 664 "src/data/wild_encounters.h"
const struct WildPokemon sVictoryRoad3F_FireRed_LandMons[] =
{
    { 32, 32, 66 },
    { 32, 32, 74 },
    { 40, 40, 95 },
    { 43, 43, 95 },
    { 46, 46, 95 },
    { 32, 32, 41 },
    { 44, 44, 24 },
    { 44, 44, 42 },
    { 44, 44, 105 },
    { 44, 44, 67 },
    { 46, 46, 67 },
    { 46, 46, 105 },
};

const struct WildPokemonInfo sVictoryRoad3F_FireRed_LandMonsInfo = { 7, sVictoryRoad3F_FireRed_LandMons };
# 704 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonMansion1F_FireRed_LandMons[] =
{
    { 28, 28, 109 },
    { 32, 32, 20 },
    { 30, 30, 109 },
    { 36, 36, 20 },
    { 30, 30, 58 },
    { 28, 28, 19 },
    { 28, 28, 88 },
    { 32, 32, 110 },
    { 32, 32, 58 },
    { 26, 26, 19 },
    { 32, 32, 58 },
    { 26, 26, 19 },
};

const struct WildPokemonInfo sPokemonMansion1F_FireRed_LandMonsInfo = { 7, sPokemonMansion1F_FireRed_LandMons };
# 744 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonMansion2F_FireRed_LandMons[] =
{
    { 28, 28, 109 },
    { 32, 32, 20 },
    { 30, 30, 109 },
    { 36, 36, 20 },
    { 30, 30, 58 },
    { 28, 28, 19 },
    { 28, 28, 88 },
    { 32, 32, 110 },
    { 32, 32, 58 },
    { 26, 26, 19 },
    { 32, 32, 58 },
    { 26, 26, 19 },
};

const struct WildPokemonInfo sPokemonMansion2F_FireRed_LandMonsInfo = { 7, sPokemonMansion2F_FireRed_LandMons };
# 784 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonMansion3F_FireRed_LandMons[] =
{
    { 28, 28, 109 },
    { 32, 32, 20 },
    { 30, 30, 109 },
    { 36, 36, 20 },
    { 30, 30, 58 },
    { 28, 28, 19 },
    { 28, 28, 88 },
    { 32, 32, 110 },
    { 32, 32, 58 },
    { 26, 26, 19 },
    { 32, 32, 58 },
    { 26, 26, 19 },
};

const struct WildPokemonInfo sPokemonMansion3F_FireRed_LandMonsInfo = { 7, sPokemonMansion3F_FireRed_LandMons };
# 824 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonMansionB1F_FireRed_LandMons[] =
{
    { 28, 28, 109 },
    { 34, 34, 20 },
    { 30, 30, 109 },
    { 30, 30, 132 },
    { 30, 30, 58 },
    { 38, 38, 20 },
    { 28, 28, 88 },
    { 34, 34, 110 },
    { 32, 32, 58 },
    { 26, 26, 19 },
    { 32, 32, 58 },
    { 26, 26, 19 },
};

const struct WildPokemonInfo sPokemonMansionB1F_FireRed_LandMonsInfo = { 5, sPokemonMansionB1F_FireRed_LandMons };
# 864 "src/data/wild_encounters.h"
const struct WildPokemon sSafariZoneCenter_FireRed_LandMons[] =
{
    { 25, 25, 111 },
    { 22, 22, 32 },
    { 24, 24, 102 },
    { 25, 25, 102 },
    { 22, 22, 48 },
    { 31, 31, 33 },
    { 31, 31, 30 },
    { 30, 30, 47 },
    { 22, 22, 48 },
    { 23, 23, 123 },
    { 22, 22, 48 },
    { 23, 23, 113 },
};

const struct WildPokemonInfo sSafariZoneCenter_FireRed_LandMonsInfo = { 21, sSafariZoneCenter_FireRed_LandMons };
const struct WildPokemon sSafariZoneCenter_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sSafariZoneCenter_FireRed_WaterMonsInfo = { 2, sSafariZoneCenter_FireRed_WaterMons };
const struct WildPokemon sSafariZoneCenter_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 118 },
    { 5, 15, 129 },
    { 5, 15, 60 },
    { 15, 25, 118 },
    { 20, 30, 119 },
    { 15, 25, 147 },
    { 15, 35, 54 },
    { 25, 35, 148 },
};

const struct WildPokemonInfo sSafariZoneCenter_FireRed_FishingMonsInfo = { 20, sSafariZoneCenter_FireRed_FishingMons };
# 954 "src/data/wild_encounters.h"
const struct WildPokemon sSafariZoneEast_FireRed_LandMons[] =
{
    { 24, 24, 32 },
    { 26, 26, 84 },
    { 23, 23, 102 },
    { 25, 25, 102 },
    { 22, 22, 46 },
    { 33, 33, 33 },
    { 24, 24, 29 },
    { 25, 25, 47 },
    { 22, 22, 46 },
    { 25, 25, 115 },
    { 22, 22, 46 },
    { 28, 28, 123 },
};

const struct WildPokemonInfo sSafariZoneEast_FireRed_LandMonsInfo = { 21, sSafariZoneEast_FireRed_LandMons };
const struct WildPokemon sSafariZoneEast_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sSafariZoneEast_FireRed_WaterMonsInfo = { 2, sSafariZoneEast_FireRed_WaterMons };
const struct WildPokemon sSafariZoneEast_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 118 },
    { 5, 15, 129 },
    { 5, 15, 60 },
    { 15, 25, 118 },
    { 20, 30, 119 },
    { 15, 25, 147 },
    { 15, 35, 54 },
    { 25, 35, 148 },
};

const struct WildPokemonInfo sSafariZoneEast_FireRed_FishingMonsInfo = { 20, sSafariZoneEast_FireRed_FishingMons };
# 1044 "src/data/wild_encounters.h"
const struct WildPokemon sSafariZoneNorth_FireRed_LandMons[] =
{
    { 26, 26, 111 },
    { 30, 30, 32 },
    { 25, 25, 102 },
    { 27, 27, 102 },
    { 23, 23, 46 },
    { 30, 30, 33 },
    { 30, 30, 30 },
    { 32, 32, 49 },
    { 23, 23, 46 },
    { 26, 26, 113 },
    { 23, 23, 46 },
    { 28, 28, 128 },
};

const struct WildPokemonInfo sSafariZoneNorth_FireRed_LandMonsInfo = { 21, sSafariZoneNorth_FireRed_LandMons };
const struct WildPokemon sSafariZoneNorth_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sSafariZoneNorth_FireRed_WaterMonsInfo = { 2, sSafariZoneNorth_FireRed_WaterMons };
const struct WildPokemon sSafariZoneNorth_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 118 },
    { 5, 15, 129 },
    { 5, 15, 60 },
    { 15, 25, 118 },
    { 20, 30, 119 },
    { 15, 25, 147 },
    { 15, 35, 54 },
    { 25, 35, 148 },
};

const struct WildPokemonInfo sSafariZoneNorth_FireRed_FishingMonsInfo = { 20, sSafariZoneNorth_FireRed_FishingMons };
# 1134 "src/data/wild_encounters.h"
const struct WildPokemon sSafariZoneWest_FireRed_LandMons[] =
{
    { 26, 26, 84 },
    { 22, 22, 32 },
    { 25, 25, 102 },
    { 27, 27, 102 },
    { 23, 23, 48 },
    { 30, 30, 33 },
    { 30, 30, 29 },
    { 32, 32, 49 },
    { 23, 23, 48 },
    { 25, 25, 128 },
    { 23, 23, 48 },
    { 28, 28, 115 },
};

const struct WildPokemonInfo sSafariZoneWest_FireRed_LandMonsInfo = { 21, sSafariZoneWest_FireRed_LandMons };
const struct WildPokemon sSafariZoneWest_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sSafariZoneWest_FireRed_WaterMonsInfo = { 2, sSafariZoneWest_FireRed_WaterMons };
const struct WildPokemon sSafariZoneWest_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 118 },
    { 5, 15, 129 },
    { 5, 15, 60 },
    { 15, 25, 118 },
    { 20, 30, 119 },
    { 15, 25, 147 },
    { 15, 35, 54 },
    { 25, 35, 148 },
};

const struct WildPokemonInfo sSafariZoneWest_FireRed_FishingMonsInfo = { 20, sSafariZoneWest_FireRed_FishingMons };
# 1224 "src/data/wild_encounters.h"
const struct WildPokemon sCeruleanCave1F_FireRed_LandMons[] =
{
    { 49, 49, 82 },
    { 49, 49, 47 },
    { 46, 46, 42 },
    { 46, 46, 67 },
    { 52, 52, 57 },
    { 52, 52, 132 },
    { 58, 58, 101 },
    { 58, 58, 47 },
    { 55, 55, 42 },
    { 55, 55, 202 },
    { 61, 61, 57 },
    { 61, 61, 132 },
};

const struct WildPokemonInfo sCeruleanCave1F_FireRed_LandMonsInfo = { 7, sCeruleanCave1F_FireRed_LandMons };
const struct WildPokemon sCeruleanCave1F_FireRed_WaterMons[] =
{
    { 30, 40, 54 },
    { 40, 50, 55 },
    { 45, 55, 55 },
    { 40, 50, 54 },
    { 40, 50, 54 },
};

const struct WildPokemonInfo sCeruleanCave1F_FireRed_WaterMonsInfo = { 2, sCeruleanCave1F_FireRed_WaterMons };
const struct WildPokemon sCeruleanCave1F_FireRed_RockSmashMons[] =
{
    { 30, 40, 74 },
    { 40, 50, 75 },
    { 45, 55, 75 },
    { 40, 50, 74 },
    { 40, 50, 74 },
};

const struct WildPokemonInfo sCeruleanCave1F_FireRed_RockSmashMonsInfo = { 50, sCeruleanCave1F_FireRed_RockSmashMons };
const struct WildPokemon sCeruleanCave1F_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sCeruleanCave1F_FireRed_FishingMonsInfo = { 20, sCeruleanCave1F_FireRed_FishingMons };
# 1334 "src/data/wild_encounters.h"
const struct WildPokemon sCeruleanCave2F_FireRed_LandMons[] =
{
    { 49, 49, 42 },
    { 49, 49, 67 },
    { 52, 52, 82 },
    { 52, 52, 47 },
    { 55, 55, 64 },
    { 55, 55, 132 },
    { 58, 58, 42 },
    { 58, 58, 202 },
    { 61, 61, 101 },
    { 61, 61, 47 },
    { 64, 64, 64 },
    { 64, 64, 132 },
};

const struct WildPokemonInfo sCeruleanCave2F_FireRed_LandMonsInfo = { 7, sCeruleanCave2F_FireRed_LandMons };
const struct WildPokemon sCeruleanCave2F_FireRed_RockSmashMons[] =
{
    { 35, 45, 74 },
    { 45, 55, 75 },
    { 50, 60, 75 },
    { 45, 55, 74 },
    { 45, 55, 74 },
};

const struct WildPokemonInfo sCeruleanCave2F_FireRed_RockSmashMonsInfo = { 50, sCeruleanCave2F_FireRed_RockSmashMons };
# 1394 "src/data/wild_encounters.h"
const struct WildPokemon sCeruleanCaveB1F_FireRed_LandMons[] =
{
    { 58, 58, 64 },
    { 58, 58, 132 },
    { 55, 55, 82 },
    { 55, 55, 47 },
    { 52, 52, 42 },
    { 52, 52, 67 },
    { 67, 67, 64 },
    { 67, 67, 132 },
    { 64, 64, 101 },
    { 64, 64, 47 },
    { 61, 61, 42 },
    { 61, 61, 202 },
};

const struct WildPokemonInfo sCeruleanCaveB1F_FireRed_LandMonsInfo = { 7, sCeruleanCaveB1F_FireRed_LandMons };
const struct WildPokemon sCeruleanCaveB1F_FireRed_WaterMons[] =
{
    { 40, 50, 54 },
    { 50, 60, 55 },
    { 55, 65, 55 },
    { 50, 60, 54 },
    { 50, 60, 54 },
};

const struct WildPokemonInfo sCeruleanCaveB1F_FireRed_WaterMonsInfo = { 2, sCeruleanCaveB1F_FireRed_WaterMons };
const struct WildPokemon sCeruleanCaveB1F_FireRed_RockSmashMons[] =
{
    { 40, 50, 74 },
    { 50, 60, 75 },
    { 55, 65, 75 },
    { 50, 60, 74 },
    { 50, 60, 74 },
};

const struct WildPokemonInfo sCeruleanCaveB1F_FireRed_RockSmashMonsInfo = { 50, sCeruleanCaveB1F_FireRed_RockSmashMons };
const struct WildPokemon sCeruleanCaveB1F_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 130 },
};

const struct WildPokemonInfo sCeruleanCaveB1F_FireRed_FishingMonsInfo = { 20, sCeruleanCaveB1F_FireRed_FishingMons };
# 1504 "src/data/wild_encounters.h"
const struct WildPokemon sRockTunnel1F_FireRed_LandMons[] =
{
    { 15, 15, 41 },
    { 16, 16, 74 },
    { 16, 16, 56 },
    { 17, 17, 74 },
    { 16, 16, 41 },
    { 16, 16, 66 },
    { 17, 17, 56 },
    { 17, 17, 66 },
    { 15, 15, 74 },
    { 13, 13, 95 },
    { 15, 15, 74 },
    { 15, 15, 95 },
};

const struct WildPokemonInfo sRockTunnel1F_FireRed_LandMonsInfo = { 7, sRockTunnel1F_FireRed_LandMons };
# 1544 "src/data/wild_encounters.h"
const struct WildPokemon sRockTunnelB1F_FireRed_LandMons[] =
{
    { 16, 16, 41 },
    { 17, 17, 74 },
    { 17, 17, 56 },
    { 16, 16, 74 },
    { 15, 15, 41 },
    { 17, 17, 66 },
    { 16, 16, 56 },
    { 13, 13, 95 },
    { 15, 15, 74 },
    { 15, 15, 95 },
    { 15, 15, 74 },
    { 17, 17, 95 },
};

const struct WildPokemonInfo sRockTunnelB1F_FireRed_LandMonsInfo = { 7, sRockTunnelB1F_FireRed_LandMons };
const struct WildPokemon sRockTunnelB1F_FireRed_RockSmashMons[] =
{
    { 5, 20, 74 },
    { 10, 20, 74 },
    { 15, 30, 74 },
    { 25, 40, 75 },
    { 30, 40, 75 },
};

const struct WildPokemonInfo sRockTunnelB1F_FireRed_RockSmashMonsInfo = { 50, sRockTunnelB1F_FireRed_RockSmashMons };
# 1604 "src/data/wild_encounters.h"
const struct WildPokemon sSeafoamIslands1F_FireRed_LandMons[] =
{
    { 27, 27, 54 },
    { 29, 29, 54 },
    { 31, 31, 54 },
    { 22, 22, 41 },
    { 22, 22, 41 },
    { 24, 24, 41 },
    { 26, 26, 42 },
    { 28, 28, 42 },
    { 33, 33, 54 },
    { 26, 26, 41 },
    { 26, 26, 54 },
    { 30, 30, 42 },
};

const struct WildPokemonInfo sSeafoamIslands1F_FireRed_LandMonsInfo = { 7, sSeafoamIslands1F_FireRed_LandMons };
# 1644 "src/data/wild_encounters.h"
const struct WildPokemon sSeafoamIslandsB1F_FireRed_LandMons[] =
{
    { 29, 29, 54 },
    { 31, 31, 54 },
    { 28, 28, 86 },
    { 22, 22, 41 },
    { 22, 22, 41 },
    { 24, 24, 41 },
    { 26, 26, 42 },
    { 28, 28, 42 },
    { 33, 33, 55 },
    { 26, 26, 41 },
    { 35, 35, 55 },
    { 30, 30, 42 },
};

const struct WildPokemonInfo sSeafoamIslandsB1F_FireRed_LandMonsInfo = { 7, sSeafoamIslandsB1F_FireRed_LandMons };
# 1684 "src/data/wild_encounters.h"
const struct WildPokemon sSeafoamIslandsB2F_FireRed_LandMons[] =
{
    { 30, 30, 54 },
    { 32, 32, 54 },
    { 30, 30, 86 },
    { 32, 32, 86 },
    { 22, 22, 41 },
    { 24, 24, 41 },
    { 26, 26, 42 },
    { 34, 34, 55 },
    { 32, 32, 55 },
    { 28, 28, 42 },
    { 32, 32, 55 },
    { 30, 30, 42 },
};

const struct WildPokemonInfo sSeafoamIslandsB2F_FireRed_LandMonsInfo = { 7, sSeafoamIslandsB2F_FireRed_LandMons };
# 1724 "src/data/wild_encounters.h"
const struct WildPokemon sSeafoamIslandsB3F_FireRed_LandMons[] =
{
    { 30, 30, 86 },
    { 32, 32, 86 },
    { 32, 32, 54 },
    { 30, 30, 54 },
    { 32, 32, 55 },
    { 24, 24, 41 },
    { 26, 26, 42 },
    { 34, 34, 55 },
    { 32, 32, 87 },
    { 28, 28, 42 },
    { 34, 34, 87 },
    { 30, 30, 42 },
};

const struct WildPokemonInfo sSeafoamIslandsB3F_FireRed_LandMonsInfo = { 7, sSeafoamIslandsB3F_FireRed_LandMons };
const struct WildPokemon sSeafoamIslandsB3F_FireRed_WaterMons[] =
{
    { 25, 35, 86 },
    { 25, 30, 116 },
    { 35, 40, 87 },
    { 30, 40, 54 },
    { 35, 40, 55 },
};

const struct WildPokemonInfo sSeafoamIslandsB3F_FireRed_WaterMonsInfo = { 2, sSeafoamIslandsB3F_FireRed_WaterMons };
const struct WildPokemon sSeafoamIslandsB3F_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 20, 30, 116 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 130 },
};

const struct WildPokemonInfo sSeafoamIslandsB3F_FireRed_FishingMonsInfo = { 20, sSeafoamIslandsB3F_FireRed_FishingMons };
# 1814 "src/data/wild_encounters.h"
const struct WildPokemon sSeafoamIslandsB4F_FireRed_LandMons[] =
{
    { 30, 30, 86 },
    { 32, 32, 86 },
    { 32, 32, 54 },
    { 34, 34, 86 },
    { 32, 32, 55 },
    { 26, 26, 42 },
    { 34, 34, 87 },
    { 34, 34, 55 },
    { 36, 36, 87 },
    { 28, 28, 42 },
    { 36, 36, 87 },
    { 30, 30, 42 },
};

const struct WildPokemonInfo sSeafoamIslandsB4F_FireRed_LandMonsInfo = { 7, sSeafoamIslandsB4F_FireRed_LandMons };
const struct WildPokemon sSeafoamIslandsB4F_FireRed_WaterMons[] =
{
    { 25, 35, 86 },
    { 25, 30, 116 },
    { 35, 40, 87 },
    { 30, 40, 54 },
    { 35, 40, 55 },
};

const struct WildPokemonInfo sSeafoamIslandsB4F_FireRed_WaterMonsInfo = { 2, sSeafoamIslandsB4F_FireRed_WaterMons };
const struct WildPokemon sSeafoamIslandsB4F_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 20, 30, 116 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 130 },
};

const struct WildPokemonInfo sSeafoamIslandsB4F_FireRed_FishingMonsInfo = { 20, sSeafoamIslandsB4F_FireRed_FishingMons };
# 1904 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonTower3F_FireRed_LandMons[] =
{
    { 15, 15, 92 },
    { 16, 16, 92 },
    { 17, 17, 92 },
    { 13, 13, 92 },
    { 14, 14, 92 },
    { 18, 18, 92 },
    { 19, 19, 92 },
    { 15, 15, 104 },
    { 17, 17, 92 },
    { 17, 17, 104 },
    { 17, 17, 92 },
    { 20, 20, 93 },
};

const struct WildPokemonInfo sPokemonTower3F_FireRed_LandMonsInfo = { 2, sPokemonTower3F_FireRed_LandMons };
# 1944 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonTower4F_FireRed_LandMons[] =
{
    { 15, 15, 92 },
    { 16, 16, 92 },
    { 17, 17, 92 },
    { 13, 13, 92 },
    { 14, 14, 92 },
    { 18, 18, 92 },
    { 20, 20, 93 },
    { 15, 15, 104 },
    { 17, 17, 92 },
    { 17, 17, 104 },
    { 17, 17, 92 },
    { 19, 19, 92 },
};

const struct WildPokemonInfo sPokemonTower4F_FireRed_LandMonsInfo = { 4, sPokemonTower4F_FireRed_LandMons };
# 1984 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonTower5F_FireRed_LandMons[] =
{
    { 15, 15, 92 },
    { 16, 16, 92 },
    { 17, 17, 92 },
    { 13, 13, 92 },
    { 14, 14, 92 },
    { 18, 18, 92 },
    { 20, 20, 93 },
    { 15, 15, 104 },
    { 17, 17, 92 },
    { 17, 17, 104 },
    { 17, 17, 92 },
    { 19, 19, 92 },
};

const struct WildPokemonInfo sPokemonTower5F_FireRed_LandMonsInfo = { 6, sPokemonTower5F_FireRed_LandMons };
# 2024 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonTower6F_FireRed_LandMons[] =
{
    { 16, 16, 92 },
    { 17, 17, 92 },
    { 18, 18, 92 },
    { 14, 14, 92 },
    { 15, 15, 92 },
    { 19, 19, 92 },
    { 21, 21, 93 },
    { 17, 17, 104 },
    { 18, 18, 92 },
    { 19, 19, 104 },
    { 18, 18, 92 },
    { 23, 23, 93 },
};

const struct WildPokemonInfo sPokemonTower6F_FireRed_LandMonsInfo = { 8, sPokemonTower6F_FireRed_LandMons };
# 2064 "src/data/wild_encounters.h"
const struct WildPokemon sPokemonTower7F_FireRed_LandMons[] =
{
    { 16, 16, 92 },
    { 17, 17, 92 },
    { 18, 18, 92 },
    { 15, 15, 92 },
    { 19, 19, 92 },
    { 23, 23, 93 },
    { 17, 17, 104 },
    { 19, 19, 104 },
    { 18, 18, 92 },
    { 23, 23, 93 },
    { 18, 18, 92 },
    { 25, 25, 93 },
};

const struct WildPokemonInfo sPokemonTower7F_FireRed_LandMonsInfo = { 10, sPokemonTower7F_FireRed_LandMons };
# 2104 "src/data/wild_encounters.h"
const struct WildPokemon sPowerPlant_FireRed_LandMons[] =
{
    { 22, 22, 100 },
    { 22, 22, 81 },
    { 25, 25, 100 },
    { 25, 25, 81 },
    { 22, 22, 25 },
    { 24, 24, 25 },
    { 31, 31, 82 },
    { 34, 34, 82 },
    { 26, 26, 25 },
    { 32, 32, 125 },
    { 26, 26, 25 },
    { 35, 35, 125 },
};

const struct WildPokemonInfo sPowerPlant_FireRed_LandMonsInfo = { 7, sPowerPlant_FireRed_LandMons };
# 2144 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberExterior_FireRed_LandMons[] =
{
    { 30, 30, 77 },
    { 38, 38, 22 },
    { 33, 33, 77 },
    { 32, 32, 21 },
    { 35, 35, 66 },
    { 33, 33, 74 },
    { 36, 36, 77 },
    { 40, 40, 22 },
    { 30, 30, 21 },
    { 39, 39, 78 },
    { 30, 30, 21 },
    { 42, 42, 78 },
};

const struct WildPokemonInfo sMtEmberExterior_FireRed_LandMonsInfo = { 21, sMtEmberExterior_FireRed_LandMons };
const struct WildPokemon sMtEmberExterior_FireRed_RockSmashMons[] =
{
    { 5, 20, 74 },
    { 10, 20, 74 },
    { 15, 30, 74 },
    { 25, 40, 75 },
    { 30, 40, 75 },
};

const struct WildPokemonInfo sMtEmberExterior_FireRed_RockSmashMonsInfo = { 50, sMtEmberExterior_FireRed_RockSmashMons };
# 2204 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberSummitPath1F_FireRed_LandMons[] =
{
    { 33, 33, 74 },
    { 35, 35, 66 },
    { 29, 29, 74 },
    { 31, 31, 74 },
    { 31, 31, 66 },
    { 33, 33, 66 },
    { 35, 35, 74 },
    { 37, 37, 66 },
    { 37, 37, 74 },
    { 39, 39, 66 },
    { 37, 37, 74 },
    { 39, 39, 66 },
};

const struct WildPokemonInfo sMtEmberSummitPath1F_FireRed_LandMonsInfo = { 7, sMtEmberSummitPath1F_FireRed_LandMons };
# 2244 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberSummitPath2F_FireRed_LandMons[] =
{
    { 34, 34, 74 },
    { 36, 36, 66 },
    { 30, 30, 74 },
    { 32, 32, 74 },
    { 32, 32, 66 },
    { 34, 34, 66 },
    { 38, 38, 67 },
    { 38, 38, 67 },
    { 40, 40, 67 },
    { 40, 40, 67 },
    { 40, 40, 67 },
    { 40, 40, 67 },
};

const struct WildPokemonInfo sMtEmberSummitPath2F_FireRed_LandMonsInfo = { 7, sMtEmberSummitPath2F_FireRed_LandMons };
const struct WildPokemon sMtEmberSummitPath2F_FireRed_RockSmashMons[] =
{
    { 5, 20, 74 },
    { 10, 20, 74 },
    { 15, 30, 74 },
    { 25, 40, 75 },
    { 30, 40, 75 },
};

const struct WildPokemonInfo sMtEmberSummitPath2F_FireRed_RockSmashMonsInfo = { 50, sMtEmberSummitPath2F_FireRed_RockSmashMons };
# 2304 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberSummitPath3F_FireRed_LandMons[] =
{
    { 33, 33, 74 },
    { 35, 35, 66 },
    { 29, 29, 74 },
    { 31, 31, 74 },
    { 31, 31, 66 },
    { 33, 33, 66 },
    { 35, 35, 74 },
    { 37, 37, 66 },
    { 37, 37, 74 },
    { 39, 39, 66 },
    { 37, 37, 74 },
    { 39, 39, 66 },
};

const struct WildPokemonInfo sMtEmberSummitPath3F_FireRed_LandMonsInfo = { 7, sMtEmberSummitPath3F_FireRed_LandMons };
# 2344 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberRubyPath1F_FireRed_LandMons[] =
{
    { 36, 36, 74 },
    { 38, 38, 66 },
    { 32, 32, 74 },
    { 34, 34, 74 },
    { 34, 34, 66 },
    { 36, 36, 66 },
    { 38, 38, 74 },
    { 40, 40, 67 },
    { 40, 40, 74 },
    { 42, 42, 67 },
    { 40, 40, 74 },
    { 42, 42, 67 },
};

const struct WildPokemonInfo sMtEmberRubyPath1F_FireRed_LandMonsInfo = { 7, sMtEmberRubyPath1F_FireRed_LandMons };
const struct WildPokemon sMtEmberRubyPath1F_FireRed_RockSmashMons[] =
{
    { 25, 35, 74 },
    { 30, 45, 75 },
    { 35, 50, 75 },
    { 30, 40, 74 },
    { 30, 40, 74 },
};

const struct WildPokemonInfo sMtEmberRubyPath1F_FireRed_RockSmashMonsInfo = { 50, sMtEmberRubyPath1F_FireRed_RockSmashMons };
# 2404 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberRubyPathB1F_FireRed_LandMons[] =
{
    { 38, 38, 74 },
    { 36, 36, 74 },
    { 34, 34, 74 },
    { 40, 40, 74 },
    { 24, 24, 218 },
    { 26, 26, 218 },
    { 42, 42, 74 },
    { 28, 28, 218 },
    { 42, 42, 74 },
    { 30, 30, 218 },
    { 42, 42, 74 },
    { 30, 30, 218 },
};

const struct WildPokemonInfo sMtEmberRubyPathB1F_FireRed_LandMonsInfo = { 7, sMtEmberRubyPathB1F_FireRed_LandMons };
const struct WildPokemon sMtEmberRubyPathB1F_FireRed_RockSmashMons[] =
{
    { 25, 35, 74 },
    { 30, 45, 75 },
    { 35, 50, 75 },
    { 30, 40, 74 },
    { 30, 40, 74 },
};

const struct WildPokemonInfo sMtEmberRubyPathB1F_FireRed_RockSmashMonsInfo = { 50, sMtEmberRubyPathB1F_FireRed_RockSmashMons };
# 2464 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberRubyPathB2F_FireRed_LandMons[] =
{
    { 40, 40, 74 },
    { 26, 26, 218 },
    { 42, 42, 74 },
    { 24, 24, 218 },
    { 28, 28, 218 },
    { 30, 30, 218 },
    { 44, 44, 74 },
    { 32, 32, 218 },
    { 44, 44, 74 },
    { 22, 22, 218 },
    { 44, 44, 74 },
    { 22, 22, 218 },
};

const struct WildPokemonInfo sMtEmberRubyPathB2F_FireRed_LandMonsInfo = { 7, sMtEmberRubyPathB2F_FireRed_LandMons };
const struct WildPokemon sMtEmberRubyPathB2F_FireRed_RockSmashMons[] =
{
    { 25, 35, 74 },
    { 30, 45, 75 },
    { 35, 50, 75 },
    { 30, 40, 74 },
    { 30, 40, 74 },
};

const struct WildPokemonInfo sMtEmberRubyPathB2F_FireRed_RockSmashMonsInfo = { 50, sMtEmberRubyPathB2F_FireRed_RockSmashMons };
# 2524 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberRubyPathB3F_FireRed_LandMons[] =
{
    { 26, 26, 218 },
    { 28, 28, 218 },
    { 30, 30, 218 },
    { 32, 32, 218 },
    { 24, 24, 218 },
    { 22, 22, 218 },
    { 20, 20, 218 },
    { 34, 34, 218 },
    { 36, 36, 218 },
    { 18, 18, 218 },
    { 36, 36, 218 },
    { 18, 18, 218 },
};

const struct WildPokemonInfo sMtEmberRubyPathB3F_FireRed_LandMonsInfo = { 7, sMtEmberRubyPathB3F_FireRed_LandMons };
const struct WildPokemon sMtEmberRubyPathB3F_FireRed_RockSmashMons[] =
{
    { 15, 25, 218 },
    { 25, 35, 218 },
    { 40, 45, 219 },
    { 35, 45, 219 },
    { 25, 35, 219 },
};

const struct WildPokemonInfo sMtEmberRubyPathB3F_FireRed_RockSmashMonsInfo = { 50, sMtEmberRubyPathB3F_FireRed_RockSmashMons };
# 2584 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberRubyPathB1FStairs_FireRed_LandMons[] =
{
    { 40, 40, 74 },
    { 26, 26, 218 },
    { 42, 42, 74 },
    { 24, 24, 218 },
    { 28, 28, 218 },
    { 30, 30, 218 },
    { 44, 44, 74 },
    { 32, 32, 218 },
    { 44, 44, 74 },
    { 22, 22, 218 },
    { 44, 44, 74 },
    { 22, 22, 218 },
};

const struct WildPokemonInfo sMtEmberRubyPathB1FStairs_FireRed_LandMonsInfo = { 7, sMtEmberRubyPathB1FStairs_FireRed_LandMons };
const struct WildPokemon sMtEmberRubyPathB1FStairs_FireRed_RockSmashMons[] =
{
    { 25, 35, 74 },
    { 30, 45, 75 },
    { 35, 50, 75 },
    { 30, 40, 74 },
    { 30, 40, 74 },
};

const struct WildPokemonInfo sMtEmberRubyPathB1FStairs_FireRed_RockSmashMonsInfo = { 50, sMtEmberRubyPathB1FStairs_FireRed_RockSmashMons };
# 2644 "src/data/wild_encounters.h"
const struct WildPokemon sMtEmberRubyPathB2FStairs_FireRed_LandMons[] =
{
    { 38, 38, 74 },
    { 36, 36, 74 },
    { 34, 34, 74 },
    { 40, 40, 74 },
    { 24, 24, 218 },
    { 26, 26, 218 },
    { 42, 42, 74 },
    { 28, 28, 218 },
    { 42, 42, 74 },
    { 30, 30, 218 },
    { 42, 42, 74 },
    { 30, 30, 218 },
};

const struct WildPokemonInfo sMtEmberRubyPathB2FStairs_FireRed_LandMonsInfo = { 7, sMtEmberRubyPathB2FStairs_FireRed_LandMons };
const struct WildPokemon sMtEmberRubyPathB2FStairs_FireRed_RockSmashMons[] =
{
    { 25, 35, 74 },
    { 30, 45, 75 },
    { 35, 50, 75 },
    { 30, 40, 74 },
    { 30, 40, 74 },
};

const struct WildPokemonInfo sMtEmberRubyPathB2FStairs_FireRed_RockSmashMonsInfo = { 50, sMtEmberRubyPathB2FStairs_FireRed_RockSmashMons };
# 2704 "src/data/wild_encounters.h"
const struct WildPokemon sThreeIslandBerryForest_FireRed_LandMons[] =
{
    { 37, 37, 17 },
    { 35, 35, 44 },
    { 32, 32, 16 },
    { 30, 30, 43 },
    { 34, 34, 48 },
    { 34, 34, 96 },
    { 35, 35, 102 },
    { 31, 31, 54 },
    { 37, 37, 49 },
    { 37, 37, 97 },
    { 40, 40, 49 },
    { 40, 40, 97 },
};

const struct WildPokemonInfo sThreeIslandBerryForest_FireRed_LandMonsInfo = { 21, sThreeIslandBerryForest_FireRed_LandMons };
const struct WildPokemon sThreeIslandBerryForest_FireRed_WaterMons[] =
{
    { 5, 20, 54 },
    { 20, 35, 54 },
    { 35, 40, 54 },
    { 35, 40, 55 },
    { 35, 40, 55 },
};

const struct WildPokemonInfo sThreeIslandBerryForest_FireRed_WaterMonsInfo = { 2, sThreeIslandBerryForest_FireRed_WaterMons };
const struct WildPokemon sThreeIslandBerryForest_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 118 },
    { 5, 15, 129 },
    { 5, 15, 60 },
    { 15, 25, 118 },
    { 20, 30, 119 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sThreeIslandBerryForest_FireRed_FishingMonsInfo = { 20, sThreeIslandBerryForest_FireRed_FishingMons };
# 2794 "src/data/wild_encounters.h"
const struct WildPokemon sFourIslandIcefallCaveEntrance_FireRed_LandMons[] =
{
    { 43, 43, 86 },
    { 45, 45, 42 },
    { 45, 45, 86 },
    { 47, 47, 86 },
    { 40, 40, 41 },
    { 49, 49, 87 },
    { 51, 51, 87 },
    { 41, 41, 54 },
    { 48, 48, 42 },
    { 53, 53, 87 },
    { 48, 48, 42 },
    { 53, 53, 87 },
};

const struct WildPokemonInfo sFourIslandIcefallCaveEntrance_FireRed_LandMonsInfo = { 7, sFourIslandIcefallCaveEntrance_FireRed_LandMons };
const struct WildPokemon sFourIslandIcefallCaveEntrance_FireRed_WaterMons[] =
{
    { 5, 35, 86 },
    { 5, 35, 54 },
    { 35, 40, 87 },
    { 5, 15, 194 },
    { 5, 15, 194 },
};

const struct WildPokemonInfo sFourIslandIcefallCaveEntrance_FireRed_WaterMonsInfo = { 2, sFourIslandIcefallCaveEntrance_FireRed_WaterMons };
const struct WildPokemon sFourIslandIcefallCaveEntrance_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFourIslandIcefallCaveEntrance_FireRed_FishingMonsInfo = { 20, sFourIslandIcefallCaveEntrance_FireRed_FishingMons };
# 2884 "src/data/wild_encounters.h"
const struct WildPokemon sFourIslandIcefallCave1F_FireRed_LandMons[] =
{
    { 25, 25, 220 },
    { 45, 45, 42 },
    { 45, 45, 86 },
    { 27, 27, 220 },
    { 40, 40, 41 },
    { 29, 29, 220 },
    { 30, 30, 225 },
    { 31, 31, 220 },
    { 48, 48, 42 },
    { 23, 23, 220 },
    { 48, 48, 42 },
    { 23, 23, 220 },
};

const struct WildPokemonInfo sFourIslandIcefallCave1F_FireRed_LandMonsInfo = { 7, sFourIslandIcefallCave1F_FireRed_LandMons };
# 2924 "src/data/wild_encounters.h"
const struct WildPokemon sFourIslandIcefallCaveB1F_FireRed_LandMons[] =
{
    { 25, 25, 220 },
    { 45, 45, 42 },
    { 45, 45, 86 },
    { 27, 27, 220 },
    { 40, 40, 41 },
    { 29, 29, 220 },
    { 30, 30, 225 },
    { 31, 31, 220 },
    { 48, 48, 42 },
    { 23, 23, 220 },
    { 48, 48, 42 },
    { 23, 23, 220 },
};

const struct WildPokemonInfo sFourIslandIcefallCaveB1F_FireRed_LandMonsInfo = { 7, sFourIslandIcefallCaveB1F_FireRed_LandMons };
# 2964 "src/data/wild_encounters.h"
const struct WildPokemon sFourIslandIcefallCaveBack_FireRed_LandMons[] =
{
    { 43, 43, 86 },
    { 45, 45, 42 },
    { 45, 45, 86 },
    { 47, 47, 86 },
    { 40, 40, 41 },
    { 49, 49, 87 },
    { 51, 51, 87 },
    { 41, 41, 54 },
    { 48, 48, 42 },
    { 53, 53, 87 },
    { 48, 48, 42 },
    { 53, 53, 87 },
};

const struct WildPokemonInfo sFourIslandIcefallCaveBack_FireRed_LandMonsInfo = { 7, sFourIslandIcefallCaveBack_FireRed_LandMons };
const struct WildPokemon sFourIslandIcefallCaveBack_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 45, 72 },
    { 35, 45, 73 },
    { 30, 45, 131 },
};

const struct WildPokemonInfo sFourIslandIcefallCaveBack_FireRed_WaterMonsInfo = { 2, sFourIslandIcefallCaveBack_FireRed_WaterMons };
const struct WildPokemon sFourIslandIcefallCaveBack_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 90 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFourIslandIcefallCaveBack_FireRed_FishingMonsInfo = { 20, sFourIslandIcefallCaveBack_FireRed_FishingMons };
# 3054 "src/data/wild_encounters.h"
const struct WildPokemon sSixIslandPatternBush_FireRed_LandMons[] =
{
    { 9, 9, 167 },
    { 9, 9, 14 },
    { 14, 14, 167 },
    { 6, 6, 10 },
    { 6, 6, 13 },
    { 15, 15, 214 },
    { 9, 9, 11 },
    { 20, 20, 214 },
    { 9, 9, 165 },
    { 25, 25, 214 },
    { 14, 14, 165 },
    { 30, 30, 214 },
};

const struct WildPokemonInfo sSixIslandPatternBush_FireRed_LandMonsInfo = { 21, sSixIslandPatternBush_FireRed_LandMons };
# 3094 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom1_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom1_FireRed_LandMonsInfo = { 1, sFiveIslandLostCaveRoom1_FireRed_LandMons };
# 3134 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom2_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom2_FireRed_LandMonsInfo = { 2, sFiveIslandLostCaveRoom2_FireRed_LandMons };
# 3174 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom3_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom3_FireRed_LandMonsInfo = { 3, sFiveIslandLostCaveRoom3_FireRed_LandMons };
# 3214 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom4_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom4_FireRed_LandMonsInfo = { 4, sFiveIslandLostCaveRoom4_FireRed_LandMons };
# 3254 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom5_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom5_FireRed_LandMonsInfo = { 5, sFiveIslandLostCaveRoom5_FireRed_LandMons };
# 3294 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom6_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom6_FireRed_LandMonsInfo = { 6, sFiveIslandLostCaveRoom6_FireRed_LandMons };
# 3334 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom7_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom7_FireRed_LandMonsInfo = { 7, sFiveIslandLostCaveRoom7_FireRed_LandMons };
# 3374 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom8_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom8_FireRed_LandMonsInfo = { 8, sFiveIslandLostCaveRoom8_FireRed_LandMons };
# 3414 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom9_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom9_FireRed_LandMonsInfo = { 9, sFiveIslandLostCaveRoom9_FireRed_LandMons };
# 3454 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom10_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 43, 43, 42 },
    { 38, 38, 92 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom10_FireRed_LandMonsInfo = { 10, sFiveIslandLostCaveRoom10_FireRed_LandMons };
# 3494 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom11_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 15, 15, 198 },
    { 20, 20, 198 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom11_FireRed_LandMonsInfo = { 5, sFiveIslandLostCaveRoom11_FireRed_LandMons };
# 3534 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom12_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 15, 15, 198 },
    { 20, 20, 198 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom12_FireRed_LandMonsInfo = { 5, sFiveIslandLostCaveRoom12_FireRed_LandMons };
# 3574 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom13_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 15, 15, 198 },
    { 20, 20, 198 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom13_FireRed_LandMonsInfo = { 5, sFiveIslandLostCaveRoom13_FireRed_LandMons };
# 3614 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandLostCaveRoom14_FireRed_LandMons[] =
{
    { 40, 40, 92 },
    { 37, 37, 41 },
    { 44, 44, 93 },
    { 46, 46, 93 },
    { 41, 41, 42 },
    { 15, 15, 198 },
    { 20, 20, 198 },
    { 48, 48, 93 },
    { 50, 50, 93 },
    { 22, 22, 198 },
    { 52, 52, 93 },
    { 22, 22, 198 },
};

const struct WildPokemonInfo sFiveIslandLostCaveRoom14_FireRed_LandMonsInfo = { 5, sFiveIslandLostCaveRoom14_FireRed_LandMons };
# 3654 "src/data/wild_encounters.h"
const struct WildPokemon sOneIslandKindleRoad_FireRed_LandMons[] =
{
    { 32, 32, 21 },
    { 34, 34, 77 },
    { 36, 36, 22 },
    { 31, 31, 77 },
    { 31, 31, 74 },
    { 31, 31, 52 },
    { 30, 30, 21 },
    { 34, 34, 54 },
    { 37, 37, 78 },
    { 37, 37, 53 },
    { 40, 40, 78 },
    { 40, 40, 53 },
};

const struct WildPokemonInfo sOneIslandKindleRoad_FireRed_LandMonsInfo = { 21, sOneIslandKindleRoad_FireRed_LandMons };
const struct WildPokemon sOneIslandKindleRoad_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sOneIslandKindleRoad_FireRed_WaterMonsInfo = { 2, sOneIslandKindleRoad_FireRed_WaterMons };
const struct WildPokemon sOneIslandKindleRoad_FireRed_RockSmashMons[] =
{
    { 5, 20, 74 },
    { 10, 20, 74 },
    { 15, 30, 74 },
    { 25, 40, 75 },
    { 30, 40, 75 },
};

const struct WildPokemonInfo sOneIslandKindleRoad_FireRed_RockSmashMonsInfo = { 25, sOneIslandKindleRoad_FireRed_RockSmashMons };
const struct WildPokemon sOneIslandKindleRoad_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sOneIslandKindleRoad_FireRed_FishingMonsInfo = { 20, sOneIslandKindleRoad_FireRed_FishingMons };
# 3764 "src/data/wild_encounters.h"
const struct WildPokemon sOneIslandTreasureBeach_FireRed_LandMons[] =
{
    { 32, 32, 21 },
    { 33, 33, 114 },
    { 31, 31, 21 },
    { 35, 35, 114 },
    { 36, 36, 22 },
    { 31, 31, 52 },
    { 38, 38, 22 },
    { 31, 31, 54 },
    { 40, 40, 22 },
    { 37, 37, 53 },
    { 40, 40, 22 },
    { 40, 40, 53 },
};

const struct WildPokemonInfo sOneIslandTreasureBeach_FireRed_LandMonsInfo = { 21, sOneIslandTreasureBeach_FireRed_LandMons };
const struct WildPokemon sOneIslandTreasureBeach_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sOneIslandTreasureBeach_FireRed_WaterMonsInfo = { 2, sOneIslandTreasureBeach_FireRed_WaterMons };
const struct WildPokemon sOneIslandTreasureBeach_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sOneIslandTreasureBeach_FireRed_FishingMonsInfo = { 20, sOneIslandTreasureBeach_FireRed_FishingMons };
# 3854 "src/data/wild_encounters.h"
const struct WildPokemon sTwoIslandCapeBrink_FireRed_LandMons[] =
{
    { 31, 31, 21 },
    { 30, 30, 43 },
    { 32, 32, 43 },
    { 36, 36, 44 },
    { 36, 36, 22 },
    { 31, 31, 52 },
    { 38, 38, 44 },
    { 31, 31, 54 },
    { 37, 37, 55 },
    { 37, 37, 53 },
    { 40, 40, 55 },
    { 40, 40, 53 },
};

const struct WildPokemonInfo sTwoIslandCapeBrink_FireRed_LandMonsInfo = { 21, sTwoIslandCapeBrink_FireRed_LandMons };
const struct WildPokemon sTwoIslandCapeBrink_FireRed_WaterMons[] =
{
    { 5, 20, 54 },
    { 20, 35, 54 },
    { 35, 40, 54 },
    { 35, 40, 55 },
    { 35, 40, 55 },
};

const struct WildPokemonInfo sTwoIslandCapeBrink_FireRed_WaterMonsInfo = { 2, sTwoIslandCapeBrink_FireRed_WaterMons };
const struct WildPokemon sTwoIslandCapeBrink_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sTwoIslandCapeBrink_FireRed_FishingMonsInfo = { 20, sTwoIslandCapeBrink_FireRed_FishingMons };
# 3944 "src/data/wild_encounters.h"
const struct WildPokemon sThreeIslandBondBridge_FireRed_LandMons[] =
{
    { 32, 32, 16 },
    { 31, 31, 43 },
    { 29, 29, 16 },
    { 36, 36, 44 },
    { 34, 34, 17 },
    { 31, 31, 52 },
    { 34, 34, 48 },
    { 31, 31, 54 },
    { 37, 37, 17 },
    { 37, 37, 53 },
    { 40, 40, 17 },
    { 40, 40, 53 },
};

const struct WildPokemonInfo sThreeIslandBondBridge_FireRed_LandMonsInfo = { 21, sThreeIslandBondBridge_FireRed_LandMons };
const struct WildPokemon sThreeIslandBondBridge_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sThreeIslandBondBridge_FireRed_WaterMonsInfo = { 2, sThreeIslandBondBridge_FireRed_WaterMons };
const struct WildPokemon sThreeIslandBondBridge_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sThreeIslandBondBridge_FireRed_FishingMonsInfo = { 20, sThreeIslandBondBridge_FireRed_FishingMons };
# 4034 "src/data/wild_encounters.h"
const struct WildPokemon sThreeIslandPort_FireRed_LandMons[] =
{
    { 15, 15, 206 },
    { 15, 15, 206 },
    { 10, 10, 206 },
    { 10, 10, 206 },
    { 20, 20, 206 },
    { 20, 20, 206 },
    { 25, 25, 206 },
    { 30, 30, 206 },
    { 25, 25, 206 },
    { 30, 30, 206 },
    { 5, 5, 206 },
    { 35, 35, 206 },
};

const struct WildPokemonInfo sThreeIslandPort_FireRed_LandMonsInfo = { 1, sThreeIslandPort_FireRed_LandMons };
# 4074 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandResortGorgeous_FireRed_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 15, 187 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sFiveIslandResortGorgeous_FireRed_WaterMonsInfo = { 2, sFiveIslandResortGorgeous_FireRed_WaterMons };
const struct WildPokemon sFiveIslandResortGorgeous_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFiveIslandResortGorgeous_FireRed_FishingMonsInfo = { 20, sFiveIslandResortGorgeous_FireRed_FishingMons };
# 4130 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandWaterLabyrinth_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 5, 15, 187 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sFiveIslandWaterLabyrinth_FireRed_WaterMonsInfo = { 2, sFiveIslandWaterLabyrinth_FireRed_WaterMons };
const struct WildPokemon sFiveIslandWaterLabyrinth_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFiveIslandWaterLabyrinth_FireRed_FishingMonsInfo = { 20, sFiveIslandWaterLabyrinth_FireRed_FishingMons };
# 4186 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandMeadow_FireRed_LandMons[] =
{
    { 44, 44, 16 },
    { 10, 10, 161 },
    { 48, 48, 17 },
    { 10, 10, 187 },
    { 15, 15, 161 },
    { 41, 41, 52 },
    { 15, 15, 187 },
    { 41, 41, 54 },
    { 50, 50, 17 },
    { 47, 47, 53 },
    { 50, 50, 17 },
    { 50, 50, 53 },
};

const struct WildPokemonInfo sFiveIslandMeadow_FireRed_LandMonsInfo = { 21, sFiveIslandMeadow_FireRed_LandMons };
const struct WildPokemon sFiveIslandMeadow_FireRed_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 15, 187 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sFiveIslandMeadow_FireRed_WaterMonsInfo = { 2, sFiveIslandMeadow_FireRed_WaterMons };
const struct WildPokemon sFiveIslandMeadow_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFiveIslandMeadow_FireRed_FishingMonsInfo = { 20, sFiveIslandMeadow_FireRed_FishingMons };
# 4276 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIslandMemorialPillar_FireRed_LandMons[] =
{
    { 10, 10, 187 },
    { 12, 12, 187 },
    { 8, 8, 187 },
    { 14, 14, 187 },
    { 10, 10, 187 },
    { 12, 12, 187 },
    { 16, 16, 187 },
    { 6, 6, 187 },
    { 8, 8, 187 },
    { 14, 14, 187 },
    { 8, 8, 187 },
    { 14, 14, 187 },
};

const struct WildPokemonInfo sFiveIslandMemorialPillar_FireRed_LandMonsInfo = { 21, sFiveIslandMemorialPillar_FireRed_LandMons };
const struct WildPokemon sFiveIslandMemorialPillar_FireRed_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 15, 187 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sFiveIslandMemorialPillar_FireRed_WaterMonsInfo = { 2, sFiveIslandMemorialPillar_FireRed_WaterMons };
const struct WildPokemon sFiveIslandMemorialPillar_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFiveIslandMemorialPillar_FireRed_FishingMonsInfo = { 20, sFiveIslandMemorialPillar_FireRed_FishingMons };
# 4366 "src/data/wild_encounters.h"
const struct WildPokemon sSixIslandOutcastIsland_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sSixIslandOutcastIsland_FireRed_WaterMonsInfo = { 2, sSixIslandOutcastIsland_FireRed_WaterMons };
const struct WildPokemon sSixIslandOutcastIsland_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sSixIslandOutcastIsland_FireRed_FishingMonsInfo = { 20, sSixIslandOutcastIsland_FireRed_FishingMons };
# 4422 "src/data/wild_encounters.h"
const struct WildPokemon sSixIslandGreenPath_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sSixIslandGreenPath_FireRed_WaterMonsInfo = { 2, sSixIslandGreenPath_FireRed_WaterMons };
const struct WildPokemon sSixIslandGreenPath_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sSixIslandGreenPath_FireRed_FishingMonsInfo = { 20, sSixIslandGreenPath_FireRed_FishingMons };
# 4478 "src/data/wild_encounters.h"
const struct WildPokemon sSixIslandWaterPath_FireRed_LandMons[] =
{
    { 44, 44, 21 },
    { 10, 10, 161 },
    { 44, 44, 43 },
    { 48, 48, 22 },
    { 15, 15, 161 },
    { 41, 41, 52 },
    { 48, 48, 44 },
    { 41, 41, 54 },
    { 50, 50, 22 },
    { 47, 47, 53 },
    { 50, 50, 22 },
    { 50, 50, 53 },
};

const struct WildPokemonInfo sSixIslandWaterPath_FireRed_LandMonsInfo = { 21, sSixIslandWaterPath_FireRed_LandMons };
const struct WildPokemon sSixIslandWaterPath_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sSixIslandWaterPath_FireRed_WaterMonsInfo = { 2, sSixIslandWaterPath_FireRed_WaterMons };
const struct WildPokemon sSixIslandWaterPath_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sSixIslandWaterPath_FireRed_FishingMonsInfo = { 20, sSixIslandWaterPath_FireRed_FishingMons };
# 4568 "src/data/wild_encounters.h"
const struct WildPokemon sSixIslandRuinValley_FireRed_LandMons[] =
{
    { 15, 15, 177 },
    { 44, 44, 21 },
    { 18, 18, 193 },
    { 15, 15, 194 },
    { 49, 49, 22 },
    { 43, 43, 52 },
    { 25, 25, 202 },
    { 41, 41, 54 },
    { 20, 20, 177 },
    { 49, 49, 53 },
    { 20, 20, 177 },
    { 52, 52, 53 },
};

const struct WildPokemonInfo sSixIslandRuinValley_FireRed_LandMonsInfo = { 21, sSixIslandRuinValley_FireRed_LandMons };
const struct WildPokemon sSixIslandRuinValley_FireRed_WaterMons[] =
{
    { 5, 20, 194 },
    { 10, 20, 194 },
    { 15, 25, 194 },
    { 20, 25, 194 },
    { 20, 25, 194 },
};

const struct WildPokemonInfo sSixIslandRuinValley_FireRed_WaterMonsInfo = { 2, sSixIslandRuinValley_FireRed_WaterMons };
const struct WildPokemon sSixIslandRuinValley_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sSixIslandRuinValley_FireRed_FishingMonsInfo = { 20, sSixIslandRuinValley_FireRed_FishingMons };
# 4658 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTrainerTower_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sSevenIslandTrainerTower_FireRed_WaterMonsInfo = { 2, sSevenIslandTrainerTower_FireRed_WaterMons };
const struct WildPokemon sSevenIslandTrainerTower_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sSevenIslandTrainerTower_FireRed_FishingMonsInfo = { 20, sSevenIslandTrainerTower_FireRed_FishingMons };
# 4714 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandSevaultCanyonEntrance_FireRed_LandMons[] =
{
    { 44, 44, 21 },
    { 10, 10, 161 },
    { 10, 10, 231 },
    { 48, 48, 22 },
    { 15, 15, 161 },
    { 41, 41, 52 },
    { 50, 50, 22 },
    { 41, 41, 54 },
    { 15, 15, 231 },
    { 47, 47, 53 },
    { 15, 15, 231 },
    { 50, 50, 53 },
};

const struct WildPokemonInfo sSevenIslandSevaultCanyonEntrance_FireRed_LandMonsInfo = { 21, sSevenIslandSevaultCanyonEntrance_FireRed_LandMons };
# 4754 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandSevaultCanyon_FireRed_LandMons[] =
{
    { 46, 46, 74 },
    { 15, 15, 231 },
    { 46, 46, 104 },
    { 50, 50, 22 },
    { 52, 52, 105 },
    { 43, 43, 52 },
    { 54, 54, 95 },
    { 30, 30, 227 },
    { 15, 15, 246 },
    { 49, 49, 53 },
    { 20, 20, 246 },
    { 52, 52, 53 },
};

const struct WildPokemonInfo sSevenIslandSevaultCanyon_FireRed_LandMonsInfo = { 21, sSevenIslandSevaultCanyon_FireRed_LandMons };
const struct WildPokemon sSevenIslandSevaultCanyon_FireRed_RockSmashMons[] =
{
    { 25, 35, 74 },
    { 30, 45, 75 },
    { 35, 50, 75 },
    { 30, 40, 74 },
    { 30, 40, 74 },
};

const struct WildPokemonInfo sSevenIslandSevaultCanyon_FireRed_RockSmashMonsInfo = { 25, sSevenIslandSevaultCanyon_FireRed_RockSmashMons };
# 4814 "src/data/wild_encounters.h"
const struct WildPokemon sSevenIslandTanobyRuins_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuins_FireRed_WaterMonsInfo = { 2, sSevenIslandTanobyRuins_FireRed_WaterMons };
const struct WildPokemon sSevenIslandTanobyRuins_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 211 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sSevenIslandTanobyRuins_FireRed_FishingMonsInfo = { 20, sSevenIslandTanobyRuins_FireRed_FishingMons };
# 4870 "src/data/wild_encounters.h"
const struct WildPokemon sRoute1_FireRed_LandMons[] =
{
    { 3, 3, 16 },
    { 3, 3, 19 },
    { 3, 3, 16 },
    { 3, 3, 19 },
    { 2, 2, 16 },
    { 2, 2, 19 },
    { 3, 3, 16 },
    { 3, 3, 19 },
    { 4, 4, 16 },
    { 4, 4, 19 },
    { 5, 5, 16 },
    { 4, 4, 19 },
};

const struct WildPokemonInfo sRoute1_FireRed_LandMonsInfo = { 21, sRoute1_FireRed_LandMons };
# 4910 "src/data/wild_encounters.h"
const struct WildPokemon sRoute2_FireRed_LandMons[] =
{
    { 3, 3, 19 },
    { 3, 3, 16 },
    { 4, 4, 19 },
    { 4, 4, 16 },
    { 2, 2, 19 },
    { 2, 2, 16 },
    { 5, 5, 19 },
    { 5, 5, 16 },
    { 4, 4, 10 },
    { 4, 4, 13 },
    { 5, 5, 10 },
    { 5, 5, 13 },
};

const struct WildPokemonInfo sRoute2_FireRed_LandMonsInfo = { 21, sRoute2_FireRed_LandMons };
# 4950 "src/data/wild_encounters.h"
const struct WildPokemon sRoute3_FireRed_LandMons[] =
{
    { 6, 6, 21 },
    { 6, 6, 16 },
    { 7, 7, 21 },
    { 7, 7, 56 },
    { 6, 6, 32 },
    { 7, 7, 16 },
    { 8, 8, 21 },
    { 3, 3, 39 },
    { 7, 7, 32 },
    { 5, 5, 39 },
    { 6, 6, 29 },
    { 7, 7, 39 },
};

const struct WildPokemonInfo sRoute3_FireRed_LandMonsInfo = { 21, sRoute3_FireRed_LandMons };
# 4990 "src/data/wild_encounters.h"
const struct WildPokemon sRoute4_FireRed_LandMons[] =
{
    { 10, 10, 21 },
    { 10, 10, 19 },
    { 6, 6, 23 },
    { 10, 10, 23 },
    { 8, 8, 21 },
    { 8, 8, 19 },
    { 12, 12, 21 },
    { 12, 12, 19 },
    { 10, 10, 56 },
    { 8, 8, 23 },
    { 12, 12, 56 },
    { 12, 12, 23 },
};

const struct WildPokemonInfo sRoute4_FireRed_LandMonsInfo = { 21, sRoute4_FireRed_LandMons };
const struct WildPokemon sRoute4_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute4_FireRed_WaterMonsInfo = { 2, sRoute4_FireRed_WaterMons };
const struct WildPokemon sRoute4_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute4_FireRed_FishingMonsInfo = { 20, sRoute4_FireRed_FishingMons };
# 5080 "src/data/wild_encounters.h"
const struct WildPokemon sRoute5_FireRed_LandMons[] =
{
    { 10, 10, 52 },
    { 13, 13, 16 },
    { 13, 13, 43 },
    { 12, 12, 52 },
    { 15, 15, 43 },
    { 15, 15, 16 },
    { 16, 16, 43 },
    { 16, 16, 16 },
    { 15, 15, 16 },
    { 14, 14, 52 },
    { 15, 15, 16 },
    { 16, 16, 52 },
};

const struct WildPokemonInfo sRoute5_FireRed_LandMonsInfo = { 21, sRoute5_FireRed_LandMons };
# 5120 "src/data/wild_encounters.h"
const struct WildPokemon sRoute6_FireRed_LandMons[] =
{
    { 10, 10, 52 },
    { 13, 13, 16 },
    { 13, 13, 43 },
    { 12, 12, 52 },
    { 15, 15, 43 },
    { 15, 15, 16 },
    { 16, 16, 43 },
    { 16, 16, 16 },
    { 15, 15, 16 },
    { 14, 14, 52 },
    { 15, 15, 16 },
    { 16, 16, 52 },
};

const struct WildPokemonInfo sRoute6_FireRed_LandMonsInfo = { 21, sRoute6_FireRed_LandMons };
const struct WildPokemon sRoute6_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sRoute6_FireRed_WaterMonsInfo = { 2, sRoute6_FireRed_WaterMons };
const struct WildPokemon sRoute6_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute6_FireRed_FishingMonsInfo = { 20, sRoute6_FireRed_FishingMons };
# 5210 "src/data/wild_encounters.h"
const struct WildPokemon sRoute7_FireRed_LandMons[] =
{
    { 19, 19, 16 },
    { 17, 17, 52 },
    { 19, 19, 43 },
    { 18, 18, 52 },
    { 22, 22, 16 },
    { 22, 22, 43 },
    { 18, 18, 58 },
    { 20, 20, 58 },
    { 17, 17, 52 },
    { 19, 19, 52 },
    { 17, 17, 52 },
    { 20, 20, 52 },
};

const struct WildPokemonInfo sRoute7_FireRed_LandMonsInfo = { 21, sRoute7_FireRed_LandMons };
# 5250 "src/data/wild_encounters.h"
const struct WildPokemon sRoute8_FireRed_LandMons[] =
{
    { 18, 18, 16 },
    { 18, 18, 52 },
    { 16, 16, 58 },
    { 20, 20, 16 },
    { 20, 20, 52 },
    { 17, 17, 23 },
    { 17, 17, 58 },
    { 19, 19, 23 },
    { 17, 17, 23 },
    { 15, 15, 58 },
    { 17, 17, 23 },
    { 18, 18, 58 },
};

const struct WildPokemonInfo sRoute8_FireRed_LandMonsInfo = { 21, sRoute8_FireRed_LandMons };
# 5290 "src/data/wild_encounters.h"
const struct WildPokemon sRoute9_FireRed_LandMons[] =
{
    { 16, 16, 21 },
    { 16, 16, 19 },
    { 11, 11, 23 },
    { 15, 15, 23 },
    { 13, 13, 21 },
    { 14, 14, 19 },
    { 17, 17, 21 },
    { 17, 17, 19 },
    { 14, 14, 19 },
    { 13, 13, 23 },
    { 14, 14, 19 },
    { 17, 17, 23 },
};

const struct WildPokemonInfo sRoute9_FireRed_LandMonsInfo = { 21, sRoute9_FireRed_LandMons };
# 5330 "src/data/wild_encounters.h"
const struct WildPokemon sRoute10_FireRed_LandMons[] =
{
    { 16, 16, 21 },
    { 16, 16, 100 },
    { 11, 11, 23 },
    { 15, 15, 23 },
    { 13, 13, 21 },
    { 14, 14, 100 },
    { 17, 17, 21 },
    { 17, 17, 100 },
    { 14, 14, 100 },
    { 13, 13, 23 },
    { 14, 14, 100 },
    { 17, 17, 23 },
};

const struct WildPokemonInfo sRoute10_FireRed_LandMonsInfo = { 21, sRoute10_FireRed_LandMons };
const struct WildPokemon sRoute10_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute10_FireRed_WaterMonsInfo = { 2, sRoute10_FireRed_WaterMons };
const struct WildPokemon sRoute10_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute10_FireRed_FishingMonsInfo = { 20, sRoute10_FireRed_FishingMons };
# 5420 "src/data/wild_encounters.h"
const struct WildPokemon sRoute11_FireRed_LandMons[] =
{
    { 14, 14, 23 },
    { 15, 15, 21 },
    { 12, 12, 23 },
    { 13, 13, 21 },
    { 11, 11, 96 },
    { 13, 13, 96 },
    { 15, 15, 23 },
    { 17, 17, 21 },
    { 12, 12, 23 },
    { 15, 15, 96 },
    { 12, 12, 23 },
    { 15, 15, 96 },
};

const struct WildPokemonInfo sRoute11_FireRed_LandMonsInfo = { 21, sRoute11_FireRed_LandMons };
const struct WildPokemon sRoute11_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute11_FireRed_WaterMonsInfo = { 2, sRoute11_FireRed_WaterMons };
const struct WildPokemon sRoute11_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute11_FireRed_FishingMonsInfo = { 20, sRoute11_FireRed_FishingMons };
# 5510 "src/data/wild_encounters.h"
const struct WildPokemon sRoute12_FireRed_LandMons[] =
{
    { 24, 24, 43 },
    { 24, 24, 48 },
    { 22, 22, 43 },
    { 23, 23, 16 },
    { 25, 25, 16 },
    { 26, 26, 48 },
    { 26, 26, 43 },
    { 27, 27, 16 },
    { 23, 23, 16 },
    { 28, 28, 44 },
    { 23, 23, 16 },
    { 30, 30, 44 },
};

const struct WildPokemonInfo sRoute12_FireRed_LandMonsInfo = { 21, sRoute12_FireRed_LandMons };
const struct WildPokemon sRoute12_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute12_FireRed_WaterMonsInfo = { 2, sRoute12_FireRed_WaterMons };
const struct WildPokemon sRoute12_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute12_FireRed_FishingMonsInfo = { 60, sRoute12_FireRed_FishingMons };
# 5600 "src/data/wild_encounters.h"
const struct WildPokemon sRoute13_FireRed_LandMons[] =
{
    { 24, 24, 43 },
    { 24, 24, 48 },
    { 22, 22, 43 },
    { 27, 27, 16 },
    { 25, 25, 16 },
    { 26, 26, 48 },
    { 26, 26, 43 },
    { 25, 25, 132 },
    { 29, 29, 17 },
    { 28, 28, 44 },
    { 29, 29, 17 },
    { 30, 30, 44 },
};

const struct WildPokemonInfo sRoute13_FireRed_LandMonsInfo = { 21, sRoute13_FireRed_LandMons };
const struct WildPokemon sRoute13_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute13_FireRed_WaterMonsInfo = { 2, sRoute13_FireRed_WaterMons };
const struct WildPokemon sRoute13_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute13_FireRed_FishingMonsInfo = { 20, sRoute13_FireRed_FishingMons };
# 5690 "src/data/wild_encounters.h"
const struct WildPokemon sRoute14_FireRed_LandMons[] =
{
    { 24, 24, 43 },
    { 24, 24, 48 },
    { 22, 22, 43 },
    { 23, 23, 132 },
    { 27, 27, 16 },
    { 26, 26, 48 },
    { 26, 26, 43 },
    { 30, 30, 44 },
    { 23, 23, 132 },
    { 29, 29, 17 },
    { 23, 23, 132 },
    { 29, 29, 17 },
};

const struct WildPokemonInfo sRoute14_FireRed_LandMonsInfo = { 21, sRoute14_FireRed_LandMons };
# 5730 "src/data/wild_encounters.h"
const struct WildPokemon sRoute15_FireRed_LandMons[] =
{
    { 24, 24, 43 },
    { 24, 24, 48 },
    { 22, 22, 43 },
    { 27, 27, 16 },
    { 25, 25, 16 },
    { 26, 26, 48 },
    { 26, 26, 43 },
    { 25, 25, 132 },
    { 29, 29, 17 },
    { 28, 28, 44 },
    { 29, 29, 17 },
    { 30, 30, 44 },
};

const struct WildPokemonInfo sRoute15_FireRed_LandMonsInfo = { 21, sRoute15_FireRed_LandMons };
# 5770 "src/data/wild_encounters.h"
const struct WildPokemon sRoute16_FireRed_LandMons[] =
{
    { 20, 20, 21 },
    { 18, 18, 84 },
    { 18, 18, 19 },
    { 20, 20, 19 },
    { 22, 22, 21 },
    { 20, 20, 84 },
    { 22, 22, 19 },
    { 22, 22, 84 },
    { 18, 18, 19 },
    { 23, 23, 20 },
    { 18, 18, 19 },
    { 25, 25, 20 },
};

const struct WildPokemonInfo sRoute16_FireRed_LandMonsInfo = { 21, sRoute16_FireRed_LandMons };
# 5810 "src/data/wild_encounters.h"
const struct WildPokemon sRoute17_FireRed_LandMons[] =
{
    { 20, 20, 21 },
    { 24, 24, 84 },
    { 22, 22, 21 },
    { 26, 26, 84 },
    { 25, 25, 20 },
    { 27, 27, 20 },
    { 28, 28, 84 },
    { 29, 29, 20 },
    { 22, 22, 19 },
    { 25, 25, 22 },
    { 22, 22, 19 },
    { 27, 27, 22 },
};

const struct WildPokemonInfo sRoute17_FireRed_LandMonsInfo = { 21, sRoute17_FireRed_LandMons };
# 5850 "src/data/wild_encounters.h"
const struct WildPokemon sRoute18_FireRed_LandMons[] =
{
    { 20, 20, 21 },
    { 24, 24, 84 },
    { 22, 22, 21 },
    { 26, 26, 84 },
    { 25, 25, 20 },
    { 25, 25, 22 },
    { 28, 28, 84 },
    { 29, 29, 20 },
    { 22, 22, 19 },
    { 27, 27, 22 },
    { 22, 22, 19 },
    { 29, 29, 22 },
};

const struct WildPokemonInfo sRoute18_FireRed_LandMonsInfo = { 21, sRoute18_FireRed_LandMons };
# 5890 "src/data/wild_encounters.h"
const struct WildPokemon sRoute19_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute19_FireRed_WaterMonsInfo = { 2, sRoute19_FireRed_WaterMons };
const struct WildPokemon sRoute19_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute19_FireRed_FishingMonsInfo = { 20, sRoute19_FireRed_FishingMons };
# 5946 "src/data/wild_encounters.h"
const struct WildPokemon sRoute20_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute20_FireRed_WaterMonsInfo = { 2, sRoute20_FireRed_WaterMons };
const struct WildPokemon sRoute20_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute20_FireRed_FishingMonsInfo = { 20, sRoute20_FireRed_FishingMons };
# 6002 "src/data/wild_encounters.h"
const struct WildPokemon sRoute21North_FireRed_LandMons[] =
{
    { 22, 22, 114 },
    { 23, 23, 114 },
    { 24, 24, 114 },
    { 21, 21, 114 },
    { 25, 25, 114 },
    { 20, 20, 114 },
    { 19, 19, 114 },
    { 26, 26, 114 },
    { 18, 18, 114 },
    { 27, 27, 114 },
    { 17, 17, 114 },
    { 28, 28, 114 },
};

const struct WildPokemonInfo sRoute21North_FireRed_LandMonsInfo = { 14, sRoute21North_FireRed_LandMons };
const struct WildPokemon sRoute21North_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute21North_FireRed_WaterMonsInfo = { 2, sRoute21North_FireRed_WaterMons };
const struct WildPokemon sRoute21North_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute21North_FireRed_FishingMonsInfo = { 20, sRoute21North_FireRed_FishingMons };
# 6092 "src/data/wild_encounters.h"
const struct WildPokemon sRoute21South_FireRed_LandMons[] =
{
    { 22, 22, 114 },
    { 23, 23, 114 },
    { 24, 24, 114 },
    { 21, 21, 114 },
    { 25, 25, 114 },
    { 20, 20, 114 },
    { 19, 19, 114 },
    { 26, 26, 114 },
    { 18, 18, 114 },
    { 27, 27, 114 },
    { 17, 17, 114 },
    { 28, 28, 114 },
};

const struct WildPokemonInfo sRoute21South_FireRed_LandMonsInfo = { 14, sRoute21South_FireRed_LandMons };
const struct WildPokemon sRoute21South_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute21South_FireRed_WaterMonsInfo = { 2, sRoute21South_FireRed_WaterMons };
const struct WildPokemon sRoute21South_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute21South_FireRed_FishingMonsInfo = { 20, sRoute21South_FireRed_FishingMons };
# 6182 "src/data/wild_encounters.h"
const struct WildPokemon sRoute22_FireRed_LandMons[] =
{
    { 3, 3, 19 },
    { 3, 3, 56 },
    { 4, 4, 19 },
    { 4, 4, 56 },
    { 2, 2, 19 },
    { 2, 2, 56 },
    { 3, 3, 21 },
    { 5, 5, 21 },
    { 5, 5, 19 },
    { 5, 5, 56 },
    { 5, 5, 19 },
    { 5, 5, 56 },
};

const struct WildPokemonInfo sRoute22_FireRed_LandMonsInfo = { 21, sRoute22_FireRed_LandMons };
const struct WildPokemon sRoute22_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sRoute22_FireRed_WaterMonsInfo = { 2, sRoute22_FireRed_WaterMons };
const struct WildPokemon sRoute22_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute22_FireRed_FishingMonsInfo = { 20, sRoute22_FireRed_FishingMons };
# 6272 "src/data/wild_encounters.h"
const struct WildPokemon sRoute23_FireRed_LandMons[] =
{
    { 32, 32, 56 },
    { 40, 40, 22 },
    { 34, 34, 56 },
    { 34, 34, 21 },
    { 32, 32, 23 },
    { 34, 34, 23 },
    { 42, 42, 57 },
    { 44, 44, 24 },
    { 32, 32, 21 },
    { 42, 42, 22 },
    { 32, 32, 21 },
    { 44, 44, 22 },
};

const struct WildPokemonInfo sRoute23_FireRed_LandMonsInfo = { 21, sRoute23_FireRed_LandMons };
const struct WildPokemon sRoute23_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sRoute23_FireRed_WaterMonsInfo = { 2, sRoute23_FireRed_WaterMons };
const struct WildPokemon sRoute23_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute23_FireRed_FishingMonsInfo = { 20, sRoute23_FireRed_FishingMons };
# 6362 "src/data/wild_encounters.h"
const struct WildPokemon sRoute24_FireRed_LandMons[] =
{
    { 7, 7, 13 },
    { 7, 7, 10 },
    { 11, 11, 16 },
    { 12, 12, 43 },
    { 13, 13, 43 },
    { 10, 10, 63 },
    { 13, 13, 16 },
    { 14, 14, 43 },
    { 8, 8, 14 },
    { 8, 8, 63 },
    { 8, 8, 11 },
    { 12, 12, 63 },
};

const struct WildPokemonInfo sRoute24_FireRed_LandMonsInfo = { 21, sRoute24_FireRed_LandMons };
const struct WildPokemon sRoute24_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sRoute24_FireRed_WaterMonsInfo = { 2, sRoute24_FireRed_WaterMons };
const struct WildPokemon sRoute24_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute24_FireRed_FishingMonsInfo = { 20, sRoute24_FireRed_FishingMons };
# 6452 "src/data/wild_encounters.h"
const struct WildPokemon sRoute25_FireRed_LandMons[] =
{
    { 8, 8, 13 },
    { 8, 8, 10 },
    { 13, 13, 16 },
    { 14, 14, 43 },
    { 13, 13, 43 },
    { 11, 11, 63 },
    { 11, 11, 16 },
    { 12, 12, 43 },
    { 9, 9, 14 },
    { 9, 9, 63 },
    { 9, 9, 11 },
    { 13, 13, 63 },
};

const struct WildPokemonInfo sRoute25_FireRed_LandMonsInfo = { 21, sRoute25_FireRed_LandMons };
const struct WildPokemon sRoute25_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sRoute25_FireRed_WaterMonsInfo = { 2, sRoute25_FireRed_WaterMons };
const struct WildPokemon sRoute25_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sRoute25_FireRed_FishingMonsInfo = { 20, sRoute25_FireRed_FishingMons };
# 6542 "src/data/wild_encounters.h"
const struct WildPokemon sPalletTown_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sPalletTown_FireRed_WaterMonsInfo = { 1, sPalletTown_FireRed_WaterMons };
const struct WildPokemon sPalletTown_FireRed_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 90 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sPalletTown_FireRed_FishingMonsInfo = { 10, sPalletTown_FireRed_FishingMons };
# 6598 "src/data/wild_encounters.h"
const struct WildPokemon sViridianCity_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sViridianCity_FireRed_WaterMonsInfo = { 1, sViridianCity_FireRed_WaterMons };
const struct WildPokemon sViridianCity_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sViridianCity_FireRed_FishingMonsInfo = { 10, sViridianCity_FireRed_FishingMons };
# 6654 "src/data/wild_encounters.h"
const struct WildPokemon sCeruleanCity_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sCeruleanCity_FireRed_WaterMonsInfo = { 1, sCeruleanCity_FireRed_WaterMons };
const struct WildPokemon sCeruleanCity_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 116 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sCeruleanCity_FireRed_FishingMonsInfo = { 10, sCeruleanCity_FireRed_FishingMons };
# 6710 "src/data/wild_encounters.h"
const struct WildPokemon sVermilionCity_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sVermilionCity_FireRed_WaterMonsInfo = { 1, sVermilionCity_FireRed_WaterMons };
const struct WildPokemon sVermilionCity_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 90 },
    { 15, 25, 130 },
    { 25, 35, 116 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sVermilionCity_FireRed_FishingMonsInfo = { 10, sVermilionCity_FireRed_FishingMons };
# 6766 "src/data/wild_encounters.h"
const struct WildPokemon sCeladonCity_FireRed_WaterMons[] =
{
    { 5, 10, 54 },
    { 10, 20, 54 },
    { 20, 30, 54 },
    { 30, 40, 54 },
    { 30, 40, 109 },
};

const struct WildPokemonInfo sCeladonCity_FireRed_WaterMonsInfo = { 1, sCeladonCity_FireRed_WaterMons };
const struct WildPokemon sCeladonCity_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 129 },
    { 5, 15, 129 },
    { 5, 15, 129 },
    { 15, 25, 129 },
    { 15, 25, 129 },
    { 15, 25, 129 },
    { 25, 35, 129 },
    { 30, 40, 88 },
};

const struct WildPokemonInfo sCeladonCity_FireRed_FishingMonsInfo = { 10, sCeladonCity_FireRed_FishingMons };
# 6822 "src/data/wild_encounters.h"
const struct WildPokemon sFuchsiaCity_FireRed_WaterMons[] =
{
    { 20, 25, 54 },
    { 20, 25, 54 },
    { 25, 30, 54 },
    { 30, 35, 54 },
    { 35, 40, 54 },
};

const struct WildPokemonInfo sFuchsiaCity_FireRed_WaterMonsInfo = { 1, sFuchsiaCity_FireRed_WaterMons };
const struct WildPokemon sFuchsiaCity_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 118 },
    { 5, 15, 129 },
    { 5, 15, 60 },
    { 15, 25, 118 },
    { 20, 30, 119 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFuchsiaCity_FireRed_FishingMonsInfo = { 10, sFuchsiaCity_FireRed_FishingMons };
# 6878 "src/data/wild_encounters.h"
const struct WildPokemon sCinnabarIsland_FireRed_WaterMons[] =
{
    { 5, 10, 72 },
    { 10, 20, 72 },
    { 20, 30, 72 },
    { 30, 35, 72 },
    { 35, 40, 72 },
};

const struct WildPokemonInfo sCinnabarIsland_FireRed_WaterMonsInfo = { 1, sCinnabarIsland_FireRed_WaterMons };
const struct WildPokemon sCinnabarIsland_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 98 },
    { 15, 25, 116 },
    { 15, 25, 90 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sCinnabarIsland_FireRed_FishingMonsInfo = { 10, sCinnabarIsland_FireRed_FishingMons };
# 6934 "src/data/wild_encounters.h"
const struct WildPokemon sOneIsland_FireRed_WaterMons[] =
{
    { 5, 20, 72 },
    { 20, 35, 72 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sOneIsland_FireRed_WaterMonsInfo = { 1, sOneIsland_FireRed_WaterMons };
const struct WildPokemon sOneIsland_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 90 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sOneIsland_FireRed_FishingMonsInfo = { 10, sOneIsland_FireRed_FishingMons };
# 6990 "src/data/wild_encounters.h"
const struct WildPokemon sFourIsland_FireRed_WaterMons[] =
{
    { 5, 15, 194 },
    { 5, 35, 54 },
    { 15, 25, 194 },
    { 15, 25, 194 },
    { 15, 25, 194 },
};

const struct WildPokemonInfo sFourIsland_FireRed_WaterMonsInfo = { 2, sFourIsland_FireRed_WaterMons };
const struct WildPokemon sFourIsland_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 60 },
    { 5, 15, 129 },
    { 5, 15, 118 },
    { 15, 25, 60 },
    { 20, 30, 61 },
    { 15, 25, 130 },
    { 15, 25, 54 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFourIsland_FireRed_FishingMonsInfo = { 20, sFourIsland_FireRed_FishingMons };
# 7046 "src/data/wild_encounters.h"
const struct WildPokemon sFiveIsland_FireRed_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 15, 187 },
    { 35, 40, 72 },
    { 35, 40, 73 },
    { 35, 40, 73 },
};

const struct WildPokemonInfo sFiveIsland_FireRed_WaterMonsInfo = { 1, sFiveIsland_FireRed_WaterMons };
const struct WildPokemon sFiveIsland_FireRed_FishingMons[] =
{
    { 5, 5, 129 },
    { 5, 5, 129 },
    { 5, 15, 116 },
    { 5, 15, 129 },
    { 5, 15, 116 },
    { 15, 25, 116 },
    { 15, 25, 90 },
    { 15, 25, 130 },
    { 25, 35, 117 },
    { 25, 35, 54 },
};

const struct WildPokemonInfo sFiveIsland_FireRed_FishingMonsInfo = { 10, sFiveIsland_FireRed_FishingMons };
# 7102 "src/data/wild_encounters.h"
const struct WildPokemon sSixIslandAlteringCave_FireRed_LandMons[] =
{
    { 10, 10, 41 },
    { 12, 12, 41 },
    { 8, 8, 41 },
    { 14, 14, 41 },
    { 10, 10, 41 },
    { 12, 12, 41 },
    { 16, 16, 41 },
    { 6, 6, 41 },
    { 8, 8, 41 },
    { 14, 14, 41 },
    { 8, 8, 41 },
    { 14, 14, 41 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_2_FireRed_LandMons[] =
{
    { 7, 7, 179 },
    { 9, 9, 179 },
    { 5, 5, 179 },
    { 11, 11, 179 },
    { 7, 7, 179 },
    { 9, 9, 179 },
    { 13, 13, 179 },
    { 3, 3, 179 },
    { 5, 5, 179 },
    { 11, 11, 179 },
    { 5, 5, 179 },
    { 11, 11, 179 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_2_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_2_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_3_FireRed_LandMons[] =
{
    { 23, 23, 204 },
    { 25, 25, 204 },
    { 22, 22, 204 },
    { 27, 27, 204 },
    { 23, 23, 204 },
    { 25, 25, 204 },
    { 29, 29, 204 },
    { 19, 19, 204 },
    { 21, 21, 204 },
    { 27, 27, 204 },
    { 21, 21, 204 },
    { 27, 27, 204 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_3_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_3_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_4_FireRed_LandMons[] =
{
    { 16, 16, 228 },
    { 18, 18, 228 },
    { 14, 14, 228 },
    { 20, 20, 228 },
    { 16, 16, 228 },
    { 18, 18, 228 },
    { 22, 22, 228 },
    { 12, 12, 228 },
    { 14, 14, 228 },
    { 20, 20, 228 },
    { 14, 14, 228 },
    { 20, 20, 228 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_4_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_4_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_5_FireRed_LandMons[] =
{
    { 22, 22, 216 },
    { 24, 24, 216 },
    { 20, 20, 216 },
    { 26, 26, 216 },
    { 22, 22, 216 },
    { 24, 24, 216 },
    { 28, 28, 216 },
    { 18, 18, 216 },
    { 20, 20, 216 },
    { 26, 26, 216 },
    { 20, 20, 216 },
    { 26, 26, 216 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_5_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_5_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_6_FireRed_LandMons[] =
{
    { 22, 22, 190 },
    { 24, 24, 190 },
    { 20, 20, 190 },
    { 26, 26, 190 },
    { 22, 22, 190 },
    { 24, 24, 190 },
    { 28, 28, 190 },
    { 18, 18, 190 },
    { 20, 20, 190 },
    { 26, 26, 190 },
    { 20, 20, 190 },
    { 26, 26, 190 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_6_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_6_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_7_FireRed_LandMons[] =
{
    { 22, 22, 213 },
    { 24, 24, 213 },
    { 20, 20, 213 },
    { 26, 26, 213 },
    { 22, 22, 213 },
    { 24, 24, 213 },
    { 28, 28, 213 },
    { 18, 18, 213 },
    { 20, 20, 213 },
    { 26, 26, 213 },
    { 20, 20, 213 },
    { 26, 26, 213 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_7_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_7_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_8_FireRed_LandMons[] =
{
    { 22, 22, 234 },
    { 24, 24, 234 },
    { 20, 20, 234 },
    { 26, 26, 234 },
    { 22, 22, 234 },
    { 24, 24, 234 },
    { 28, 28, 234 },
    { 18, 18, 234 },
    { 20, 20, 234 },
    { 26, 26, 234 },
    { 20, 20, 234 },
    { 26, 26, 234 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_8_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_8_FireRed_LandMons };



const struct WildPokemon sSixIslandAlteringCave_9_FireRed_LandMons[] =
{
    { 22, 22, 235 },
    { 24, 24, 235 },
    { 20, 20, 235 },
    { 26, 26, 235 },
    { 22, 22, 235 },
    { 24, 24, 235 },
    { 28, 28, 235 },
    { 18, 18, 235 },
    { 20, 20, 235 },
    { 26, 26, 235 },
    { 20, 20, 235 },
    { 26, 26, 235 },
};

const struct WildPokemonInfo sSixIslandAlteringCave_9_FireRed_LandMonsInfo = { 5, sSixIslandAlteringCave_9_FireRed_LandMons };
# 7462 "src/data/wild_encounters.h"
const struct WildPokemonHeader gWildMonHeaders[] =
{

    {
        .mapGroup = ((27 | (2 << 8)) >> 8),
        .mapNum = ((27 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandTanobyRuinsMoneanChamber_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7485 "src/data/wild_encounters.h"
    {
        .mapGroup = ((28 | (2 << 8)) >> 8),
        .mapNum = ((28 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandTanobyRuinsLiptooChamber_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7505 "src/data/wild_encounters.h"
    {
        .mapGroup = ((29 | (2 << 8)) >> 8),
        .mapNum = ((29 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandTanobyRuinsWeepthChamber_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7525 "src/data/wild_encounters.h"
    {
        .mapGroup = ((30 | (2 << 8)) >> 8),
        .mapNum = ((30 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandTanobyRuinsDilfordChamber_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7545 "src/data/wild_encounters.h"
    {
        .mapGroup = ((31 | (2 << 8)) >> 8),
        .mapNum = ((31 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandTanobyRuinsScufibChamber_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7565 "src/data/wild_encounters.h"
    {
        .mapGroup = ((32 | (2 << 8)) >> 8),
        .mapNum = ((32 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandTanobyRuinsRixyChamber_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7585 "src/data/wild_encounters.h"
    {
        .mapGroup = ((33 | (2 << 8)) >> 8),
        .mapNum = ((33 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandTanobyRuinsViapoisChamber_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7605 "src/data/wild_encounters.h"
    {
        .mapGroup = ((0 | (1 << 8)) >> 8),
        .mapNum = ((0 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sViridianForest_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7625 "src/data/wild_encounters.h"
    {
        .mapGroup = ((1 | (1 << 8)) >> 8),
        .mapNum = ((1 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtMoon1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7645 "src/data/wild_encounters.h"
    {
        .mapGroup = ((2 | (1 << 8)) >> 8),
        .mapNum = ((2 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtMoonB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7665 "src/data/wild_encounters.h"
    {
        .mapGroup = ((3 | (1 << 8)) >> 8),
        .mapNum = ((3 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtMoonB2F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7685 "src/data/wild_encounters.h"
    {
        .mapGroup = ((4 | (1 << 8)) >> 8),
        .mapNum = ((4 | (1 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sSSAnneExterior_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSSAnneExterior_FireRed_FishingMonsInfo,
    },
# 7705 "src/data/wild_encounters.h"
    {
        .mapGroup = ((37 | (1 << 8)) >> 8),
        .mapNum = ((37 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sDiglettsCaveB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7725 "src/data/wild_encounters.h"
    {
        .mapGroup = ((39 | (1 << 8)) >> 8),
        .mapNum = ((39 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sVictoryRoad1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7745 "src/data/wild_encounters.h"
    {
        .mapGroup = ((40 | (1 << 8)) >> 8),
        .mapNum = ((40 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sVictoryRoad2F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7765 "src/data/wild_encounters.h"
    {
        .mapGroup = ((41 | (1 << 8)) >> 8),
        .mapNum = ((41 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sVictoryRoad3F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7785 "src/data/wild_encounters.h"
    {
        .mapGroup = ((59 | (1 << 8)) >> 8),
        .mapNum = ((59 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonMansion1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7805 "src/data/wild_encounters.h"
    {
        .mapGroup = ((60 | (1 << 8)) >> 8),
        .mapNum = ((60 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonMansion2F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7825 "src/data/wild_encounters.h"
    {
        .mapGroup = ((61 | (1 << 8)) >> 8),
        .mapNum = ((61 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonMansion3F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7845 "src/data/wild_encounters.h"
    {
        .mapGroup = ((62 | (1 << 8)) >> 8),
        .mapNum = ((62 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonMansionB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 7865 "src/data/wild_encounters.h"
    {
        .mapGroup = ((63 | (1 << 8)) >> 8),
        .mapNum = ((63 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSafariZoneCenter_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSafariZoneCenter_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSafariZoneCenter_FireRed_FishingMonsInfo,
    },
# 7885 "src/data/wild_encounters.h"
    {
        .mapGroup = ((64 | (1 << 8)) >> 8),
        .mapNum = ((64 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSafariZoneEast_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSafariZoneEast_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSafariZoneEast_FireRed_FishingMonsInfo,
    },
# 7905 "src/data/wild_encounters.h"
    {
        .mapGroup = ((65 | (1 << 8)) >> 8),
        .mapNum = ((65 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSafariZoneNorth_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSafariZoneNorth_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSafariZoneNorth_FireRed_FishingMonsInfo,
    },
# 7925 "src/data/wild_encounters.h"
    {
        .mapGroup = ((66 | (1 << 8)) >> 8),
        .mapNum = ((66 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSafariZoneWest_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSafariZoneWest_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSafariZoneWest_FireRed_FishingMonsInfo,
    },
# 7945 "src/data/wild_encounters.h"
    {
        .mapGroup = ((72 | (1 << 8)) >> 8),
        .mapNum = ((72 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sCeruleanCave1F_FireRed_LandMonsInfo,
        .waterMonsInfo = &sCeruleanCave1F_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = &sCeruleanCave1F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = &sCeruleanCave1F_FireRed_FishingMonsInfo,
    },
# 7965 "src/data/wild_encounters.h"
    {
        .mapGroup = ((73 | (1 << 8)) >> 8),
        .mapNum = ((73 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sCeruleanCave2F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sCeruleanCave2F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 7985 "src/data/wild_encounters.h"
    {
        .mapGroup = ((74 | (1 << 8)) >> 8),
        .mapNum = ((74 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sCeruleanCaveB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = &sCeruleanCaveB1F_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = &sCeruleanCaveB1F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = &sCeruleanCaveB1F_FireRed_FishingMonsInfo,
    },
# 8005 "src/data/wild_encounters.h"
    {
        .mapGroup = ((81 | (1 << 8)) >> 8),
        .mapNum = ((81 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sRockTunnel1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8025 "src/data/wild_encounters.h"
    {
        .mapGroup = ((82 | (1 << 8)) >> 8),
        .mapNum = ((82 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sRockTunnelB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sRockTunnelB1F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8045 "src/data/wild_encounters.h"
    {
        .mapGroup = ((83 | (1 << 8)) >> 8),
        .mapNum = ((83 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSeafoamIslands1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8065 "src/data/wild_encounters.h"
    {
        .mapGroup = ((84 | (1 << 8)) >> 8),
        .mapNum = ((84 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSeafoamIslandsB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8085 "src/data/wild_encounters.h"
    {
        .mapGroup = ((85 | (1 << 8)) >> 8),
        .mapNum = ((85 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSeafoamIslandsB2F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8105 "src/data/wild_encounters.h"
    {
        .mapGroup = ((86 | (1 << 8)) >> 8),
        .mapNum = ((86 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSeafoamIslandsB3F_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSeafoamIslandsB3F_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSeafoamIslandsB3F_FireRed_FishingMonsInfo,
    },
# 8125 "src/data/wild_encounters.h"
    {
        .mapGroup = ((87 | (1 << 8)) >> 8),
        .mapNum = ((87 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSeafoamIslandsB4F_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSeafoamIslandsB4F_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSeafoamIslandsB4F_FireRed_FishingMonsInfo,
    },
# 8145 "src/data/wild_encounters.h"
    {
        .mapGroup = ((90 | (1 << 8)) >> 8),
        .mapNum = ((90 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonTower3F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8165 "src/data/wild_encounters.h"
    {
        .mapGroup = ((91 | (1 << 8)) >> 8),
        .mapNum = ((91 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonTower4F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8185 "src/data/wild_encounters.h"
    {
        .mapGroup = ((92 | (1 << 8)) >> 8),
        .mapNum = ((92 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonTower5F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8205 "src/data/wild_encounters.h"
    {
        .mapGroup = ((93 | (1 << 8)) >> 8),
        .mapNum = ((93 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonTower6F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8225 "src/data/wild_encounters.h"
    {
        .mapGroup = ((94 | (1 << 8)) >> 8),
        .mapNum = ((94 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPokemonTower7F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8245 "src/data/wild_encounters.h"
    {
        .mapGroup = ((95 | (1 << 8)) >> 8),
        .mapNum = ((95 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sPowerPlant_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8265 "src/data/wild_encounters.h"
    {
        .mapGroup = ((97 | (1 << 8)) >> 8),
        .mapNum = ((97 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberExterior_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberExterior_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8285 "src/data/wild_encounters.h"
    {
        .mapGroup = ((98 | (1 << 8)) >> 8),
        .mapNum = ((98 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberSummitPath1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8305 "src/data/wild_encounters.h"
    {
        .mapGroup = ((99 | (1 << 8)) >> 8),
        .mapNum = ((99 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberSummitPath2F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberSummitPath2F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8325 "src/data/wild_encounters.h"
    {
        .mapGroup = ((100 | (1 << 8)) >> 8),
        .mapNum = ((100 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberSummitPath3F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8345 "src/data/wild_encounters.h"
    {
        .mapGroup = ((103 | (1 << 8)) >> 8),
        .mapNum = ((103 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberRubyPath1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberRubyPath1F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8365 "src/data/wild_encounters.h"
    {
        .mapGroup = ((104 | (1 << 8)) >> 8),
        .mapNum = ((104 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberRubyPathB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberRubyPathB1F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8385 "src/data/wild_encounters.h"
    {
        .mapGroup = ((105 | (1 << 8)) >> 8),
        .mapNum = ((105 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberRubyPathB2F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberRubyPathB2F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8405 "src/data/wild_encounters.h"
    {
        .mapGroup = ((106 | (1 << 8)) >> 8),
        .mapNum = ((106 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberRubyPathB3F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberRubyPathB3F_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8425 "src/data/wild_encounters.h"
    {
        .mapGroup = ((107 | (1 << 8)) >> 8),
        .mapNum = ((107 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberRubyPathB1FStairs_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberRubyPathB1FStairs_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8445 "src/data/wild_encounters.h"
    {
        .mapGroup = ((108 | (1 << 8)) >> 8),
        .mapNum = ((108 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sMtEmberRubyPathB2FStairs_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sMtEmberRubyPathB2FStairs_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 8465 "src/data/wild_encounters.h"
    {
        .mapGroup = ((109 | (1 << 8)) >> 8),
        .mapNum = ((109 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sThreeIslandBerryForest_FireRed_LandMonsInfo,
        .waterMonsInfo = &sThreeIslandBerryForest_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sThreeIslandBerryForest_FireRed_FishingMonsInfo,
    },
# 8485 "src/data/wild_encounters.h"
    {
        .mapGroup = ((110 | (1 << 8)) >> 8),
        .mapNum = ((110 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sFourIslandIcefallCaveEntrance_FireRed_LandMonsInfo,
        .waterMonsInfo = &sFourIslandIcefallCaveEntrance_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFourIslandIcefallCaveEntrance_FireRed_FishingMonsInfo,
    },
# 8505 "src/data/wild_encounters.h"
    {
        .mapGroup = ((111 | (1 << 8)) >> 8),
        .mapNum = ((111 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sFourIslandIcefallCave1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8525 "src/data/wild_encounters.h"
    {
        .mapGroup = ((112 | (1 << 8)) >> 8),
        .mapNum = ((112 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sFourIslandIcefallCaveB1F_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8545 "src/data/wild_encounters.h"
    {
        .mapGroup = ((113 | (1 << 8)) >> 8),
        .mapNum = ((113 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sFourIslandIcefallCaveBack_FireRed_LandMonsInfo,
        .waterMonsInfo = &sFourIslandIcefallCaveBack_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFourIslandIcefallCaveBack_FireRed_FishingMonsInfo,
    },
# 8565 "src/data/wild_encounters.h"
    {
        .mapGroup = ((121 | (1 << 8)) >> 8),
        .mapNum = ((121 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandPatternBush_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8585 "src/data/wild_encounters.h"
    {
        .mapGroup = ((13 | (2 << 8)) >> 8),
        .mapNum = ((13 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom1_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8605 "src/data/wild_encounters.h"
    {
        .mapGroup = ((14 | (2 << 8)) >> 8),
        .mapNum = ((14 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom2_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8625 "src/data/wild_encounters.h"
    {
        .mapGroup = ((15 | (2 << 8)) >> 8),
        .mapNum = ((15 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom3_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8645 "src/data/wild_encounters.h"
    {
        .mapGroup = ((16 | (2 << 8)) >> 8),
        .mapNum = ((16 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom4_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8665 "src/data/wild_encounters.h"
    {
        .mapGroup = ((17 | (2 << 8)) >> 8),
        .mapNum = ((17 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom5_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8685 "src/data/wild_encounters.h"
    {
        .mapGroup = ((18 | (2 << 8)) >> 8),
        .mapNum = ((18 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom6_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8705 "src/data/wild_encounters.h"
    {
        .mapGroup = ((19 | (2 << 8)) >> 8),
        .mapNum = ((19 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom7_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8725 "src/data/wild_encounters.h"
    {
        .mapGroup = ((20 | (2 << 8)) >> 8),
        .mapNum = ((20 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom8_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8745 "src/data/wild_encounters.h"
    {
        .mapGroup = ((21 | (2 << 8)) >> 8),
        .mapNum = ((21 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom9_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8765 "src/data/wild_encounters.h"
    {
        .mapGroup = ((22 | (2 << 8)) >> 8),
        .mapNum = ((22 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom10_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8785 "src/data/wild_encounters.h"
    {
        .mapGroup = ((23 | (2 << 8)) >> 8),
        .mapNum = ((23 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom11_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8805 "src/data/wild_encounters.h"
    {
        .mapGroup = ((24 | (2 << 8)) >> 8),
        .mapNum = ((24 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom12_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8825 "src/data/wild_encounters.h"
    {
        .mapGroup = ((25 | (2 << 8)) >> 8),
        .mapNum = ((25 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom13_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8845 "src/data/wild_encounters.h"
    {
        .mapGroup = ((26 | (2 << 8)) >> 8),
        .mapNum = ((26 | (2 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandLostCaveRoom14_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8865 "src/data/wild_encounters.h"
    {
        .mapGroup = ((45 | (3 << 8)) >> 8),
        .mapNum = ((45 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sOneIslandKindleRoad_FireRed_LandMonsInfo,
        .waterMonsInfo = &sOneIslandKindleRoad_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = &sOneIslandKindleRoad_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = &sOneIslandKindleRoad_FireRed_FishingMonsInfo,
    },
# 8885 "src/data/wild_encounters.h"
    {
        .mapGroup = ((46 | (3 << 8)) >> 8),
        .mapNum = ((46 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sOneIslandTreasureBeach_FireRed_LandMonsInfo,
        .waterMonsInfo = &sOneIslandTreasureBeach_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sOneIslandTreasureBeach_FireRed_FishingMonsInfo,
    },
# 8905 "src/data/wild_encounters.h"
    {
        .mapGroup = ((47 | (3 << 8)) >> 8),
        .mapNum = ((47 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sTwoIslandCapeBrink_FireRed_LandMonsInfo,
        .waterMonsInfo = &sTwoIslandCapeBrink_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sTwoIslandCapeBrink_FireRed_FishingMonsInfo,
    },
# 8925 "src/data/wild_encounters.h"
    {
        .mapGroup = ((48 | (3 << 8)) >> 8),
        .mapNum = ((48 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sThreeIslandBondBridge_FireRed_LandMonsInfo,
        .waterMonsInfo = &sThreeIslandBondBridge_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sThreeIslandBondBridge_FireRed_FishingMonsInfo,
    },
# 8945 "src/data/wild_encounters.h"
    {
        .mapGroup = ((49 | (3 << 8)) >> 8),
        .mapNum = ((49 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sThreeIslandPort_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 8965 "src/data/wild_encounters.h"
    {
        .mapGroup = ((54 | (3 << 8)) >> 8),
        .mapNum = ((54 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sFiveIslandResortGorgeous_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFiveIslandResortGorgeous_FireRed_FishingMonsInfo,
    },
# 8985 "src/data/wild_encounters.h"
    {
        .mapGroup = ((55 | (3 << 8)) >> 8),
        .mapNum = ((55 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sFiveIslandWaterLabyrinth_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFiveIslandWaterLabyrinth_FireRed_FishingMonsInfo,
    },
# 9005 "src/data/wild_encounters.h"
    {
        .mapGroup = ((56 | (3 << 8)) >> 8),
        .mapNum = ((56 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandMeadow_FireRed_LandMonsInfo,
        .waterMonsInfo = &sFiveIslandMeadow_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFiveIslandMeadow_FireRed_FishingMonsInfo,
    },
# 9025 "src/data/wild_encounters.h"
    {
        .mapGroup = ((57 | (3 << 8)) >> 8),
        .mapNum = ((57 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sFiveIslandMemorialPillar_FireRed_LandMonsInfo,
        .waterMonsInfo = &sFiveIslandMemorialPillar_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFiveIslandMemorialPillar_FireRed_FishingMonsInfo,
    },
# 9045 "src/data/wild_encounters.h"
    {
        .mapGroup = ((58 | (3 << 8)) >> 8),
        .mapNum = ((58 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sSixIslandOutcastIsland_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSixIslandOutcastIsland_FireRed_FishingMonsInfo,
    },
# 9065 "src/data/wild_encounters.h"
    {
        .mapGroup = ((59 | (3 << 8)) >> 8),
        .mapNum = ((59 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sSixIslandGreenPath_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSixIslandGreenPath_FireRed_FishingMonsInfo,
    },
# 9085 "src/data/wild_encounters.h"
    {
        .mapGroup = ((60 | (3 << 8)) >> 8),
        .mapNum = ((60 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandWaterPath_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSixIslandWaterPath_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSixIslandWaterPath_FireRed_FishingMonsInfo,
    },
# 9105 "src/data/wild_encounters.h"
    {
        .mapGroup = ((61 | (3 << 8)) >> 8),
        .mapNum = ((61 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandRuinValley_FireRed_LandMonsInfo,
        .waterMonsInfo = &sSixIslandRuinValley_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSixIslandRuinValley_FireRed_FishingMonsInfo,
    },
# 9125 "src/data/wild_encounters.h"
    {
        .mapGroup = ((62 | (3 << 8)) >> 8),
        .mapNum = ((62 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sSevenIslandTrainerTower_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSevenIslandTrainerTower_FireRed_FishingMonsInfo,
    },
# 9145 "src/data/wild_encounters.h"
    {
        .mapGroup = ((63 | (3 << 8)) >> 8),
        .mapNum = ((63 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandSevaultCanyonEntrance_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9165 "src/data/wild_encounters.h"
    {
        .mapGroup = ((64 | (3 << 8)) >> 8),
        .mapNum = ((64 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sSevenIslandSevaultCanyon_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &sSevenIslandSevaultCanyon_FireRed_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
# 9185 "src/data/wild_encounters.h"
    {
        .mapGroup = ((65 | (3 << 8)) >> 8),
        .mapNum = ((65 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sSevenIslandTanobyRuins_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sSevenIslandTanobyRuins_FireRed_FishingMonsInfo,
    },
# 9205 "src/data/wild_encounters.h"
    {
        .mapGroup = ((19 | (3 << 8)) >> 8),
        .mapNum = ((19 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute1_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9225 "src/data/wild_encounters.h"
    {
        .mapGroup = ((20 | (3 << 8)) >> 8),
        .mapNum = ((20 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute2_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9245 "src/data/wild_encounters.h"
    {
        .mapGroup = ((21 | (3 << 8)) >> 8),
        .mapNum = ((21 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute3_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9265 "src/data/wild_encounters.h"
    {
        .mapGroup = ((22 | (3 << 8)) >> 8),
        .mapNum = ((22 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute4_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute4_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute4_FireRed_FishingMonsInfo,
    },
# 9285 "src/data/wild_encounters.h"
    {
        .mapGroup = ((23 | (3 << 8)) >> 8),
        .mapNum = ((23 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute5_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9305 "src/data/wild_encounters.h"
    {
        .mapGroup = ((24 | (3 << 8)) >> 8),
        .mapNum = ((24 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute6_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute6_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute6_FireRed_FishingMonsInfo,
    },
# 9325 "src/data/wild_encounters.h"
    {
        .mapGroup = ((25 | (3 << 8)) >> 8),
        .mapNum = ((25 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute7_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9345 "src/data/wild_encounters.h"
    {
        .mapGroup = ((26 | (3 << 8)) >> 8),
        .mapNum = ((26 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute8_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9365 "src/data/wild_encounters.h"
    {
        .mapGroup = ((27 | (3 << 8)) >> 8),
        .mapNum = ((27 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute9_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9385 "src/data/wild_encounters.h"
    {
        .mapGroup = ((28 | (3 << 8)) >> 8),
        .mapNum = ((28 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute10_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute10_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute10_FireRed_FishingMonsInfo,
    },
# 9405 "src/data/wild_encounters.h"
    {
        .mapGroup = ((29 | (3 << 8)) >> 8),
        .mapNum = ((29 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute11_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute11_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute11_FireRed_FishingMonsInfo,
    },
# 9425 "src/data/wild_encounters.h"
    {
        .mapGroup = ((30 | (3 << 8)) >> 8),
        .mapNum = ((30 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute12_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute12_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute12_FireRed_FishingMonsInfo,
    },
# 9445 "src/data/wild_encounters.h"
    {
        .mapGroup = ((31 | (3 << 8)) >> 8),
        .mapNum = ((31 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute13_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute13_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute13_FireRed_FishingMonsInfo,
    },
# 9465 "src/data/wild_encounters.h"
    {
        .mapGroup = ((32 | (3 << 8)) >> 8),
        .mapNum = ((32 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute14_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9485 "src/data/wild_encounters.h"
    {
        .mapGroup = ((33 | (3 << 8)) >> 8),
        .mapNum = ((33 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute15_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9505 "src/data/wild_encounters.h"
    {
        .mapGroup = ((34 | (3 << 8)) >> 8),
        .mapNum = ((34 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute16_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9525 "src/data/wild_encounters.h"
    {
        .mapGroup = ((35 | (3 << 8)) >> 8),
        .mapNum = ((35 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute17_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9545 "src/data/wild_encounters.h"
    {
        .mapGroup = ((36 | (3 << 8)) >> 8),
        .mapNum = ((36 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute18_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 9565 "src/data/wild_encounters.h"
    {
        .mapGroup = ((37 | (3 << 8)) >> 8),
        .mapNum = ((37 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sRoute19_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute19_FireRed_FishingMonsInfo,
    },
# 9585 "src/data/wild_encounters.h"
    {
        .mapGroup = ((38 | (3 << 8)) >> 8),
        .mapNum = ((38 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sRoute20_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute20_FireRed_FishingMonsInfo,
    },
# 9605 "src/data/wild_encounters.h"
    {
        .mapGroup = ((39 | (3 << 8)) >> 8),
        .mapNum = ((39 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute21North_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute21North_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute21North_FireRed_FishingMonsInfo,
    },
# 9625 "src/data/wild_encounters.h"
    {
        .mapGroup = ((40 | (3 << 8)) >> 8),
        .mapNum = ((40 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute21South_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute21South_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute21South_FireRed_FishingMonsInfo,
    },
# 9645 "src/data/wild_encounters.h"
    {
        .mapGroup = ((41 | (3 << 8)) >> 8),
        .mapNum = ((41 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute22_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute22_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute22_FireRed_FishingMonsInfo,
    },
# 9665 "src/data/wild_encounters.h"
    {
        .mapGroup = ((42 | (3 << 8)) >> 8),
        .mapNum = ((42 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute23_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute23_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute23_FireRed_FishingMonsInfo,
    },
# 9685 "src/data/wild_encounters.h"
    {
        .mapGroup = ((43 | (3 << 8)) >> 8),
        .mapNum = ((43 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute24_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute24_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute24_FireRed_FishingMonsInfo,
    },
# 9705 "src/data/wild_encounters.h"
    {
        .mapGroup = ((44 | (3 << 8)) >> 8),
        .mapNum = ((44 | (3 << 8)) & 0xFF),
        .landMonsInfo = &sRoute25_FireRed_LandMonsInfo,
        .waterMonsInfo = &sRoute25_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sRoute25_FireRed_FishingMonsInfo,
    },
# 9725 "src/data/wild_encounters.h"
    {
        .mapGroup = ((0 | (3 << 8)) >> 8),
        .mapNum = ((0 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sPalletTown_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sPalletTown_FireRed_FishingMonsInfo,
    },
# 9745 "src/data/wild_encounters.h"
    {
        .mapGroup = ((1 | (3 << 8)) >> 8),
        .mapNum = ((1 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sViridianCity_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sViridianCity_FireRed_FishingMonsInfo,
    },
# 9765 "src/data/wild_encounters.h"
    {
        .mapGroup = ((3 | (3 << 8)) >> 8),
        .mapNum = ((3 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sCeruleanCity_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sCeruleanCity_FireRed_FishingMonsInfo,
    },
# 9785 "src/data/wild_encounters.h"
    {
        .mapGroup = ((5 | (3 << 8)) >> 8),
        .mapNum = ((5 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sVermilionCity_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sVermilionCity_FireRed_FishingMonsInfo,
    },
# 9805 "src/data/wild_encounters.h"
    {
        .mapGroup = ((6 | (3 << 8)) >> 8),
        .mapNum = ((6 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sCeladonCity_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sCeladonCity_FireRed_FishingMonsInfo,
    },
# 9825 "src/data/wild_encounters.h"
    {
        .mapGroup = ((7 | (3 << 8)) >> 8),
        .mapNum = ((7 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sFuchsiaCity_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFuchsiaCity_FireRed_FishingMonsInfo,
    },
# 9845 "src/data/wild_encounters.h"
    {
        .mapGroup = ((8 | (3 << 8)) >> 8),
        .mapNum = ((8 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sCinnabarIsland_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sCinnabarIsland_FireRed_FishingMonsInfo,
    },
# 9865 "src/data/wild_encounters.h"
    {
        .mapGroup = ((12 | (3 << 8)) >> 8),
        .mapNum = ((12 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sOneIsland_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sOneIsland_FireRed_FishingMonsInfo,
    },
# 9885 "src/data/wild_encounters.h"
    {
        .mapGroup = ((15 | (3 << 8)) >> 8),
        .mapNum = ((15 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sFourIsland_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFourIsland_FireRed_FishingMonsInfo,
    },
# 9905 "src/data/wild_encounters.h"
    {
        .mapGroup = ((16 | (3 << 8)) >> 8),
        .mapNum = ((16 | (3 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &sFiveIsland_FireRed_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &sFiveIsland_FireRed_FishingMonsInfo,
    },
# 9925 "src/data/wild_encounters.h"
    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_2_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_3_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_4_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_5_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_6_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_7_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_8_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },


    {
        .mapGroup = ((122 | (1 << 8)) >> 8),
        .mapNum = ((122 | (1 << 8)) & 0xFF),
        .landMonsInfo = &sSixIslandAlteringCave_9_FireRed_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
# 10104 "src/data/wild_encounters.h"
    {
        .mapGroup = ((0xFF | (0xFF << 8)) >> 8),
        .mapNum = ((0xFF | (0xFF << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
};
# 48 "src/wild_encounter.c" 2

static const u8 sUnownLetterSlots[][12] = {

    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27},

    { 2, 2, 2, 3, 3, 3, 7, 7, 7, 20, 20, 14},

    {13, 13, 13, 13, 18, 18, 18, 18, 8, 8, 4, 4},

    {15, 15, 11, 11, 9, 9, 17, 17, 17, 16, 16, 16},

    {24, 24, 19, 19, 6, 6, 6, 5, 5, 5, 10, 10},

    {21, 21, 21, 22, 22, 22, 23, 23, 12, 12, 1, 1},

    {25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26},
};

void DisableWildEncounters(bool8 state)
{
    sWildEncountersDisabled = state;
}

static u8 ChooseWildMonIndex_Land(void)
{
    u8 rand = Random() % (20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 + 4 + 1 + 1);

    if (rand < 20)
        return 0;
    else if (rand >= 20 && rand < 20 + 20)
        return 1;
    else if (rand >= 20 + 20 && rand < 20 + 20 + 10)
        return 2;
    else if (rand >= 20 + 20 + 10 && rand < 20 + 20 + 10 + 10)
        return 3;
    else if (rand >= 20 + 20 + 10 + 10 && rand < 20 + 20 + 10 + 10 + 10)
        return 4;
    else if (rand >= 20 + 20 + 10 + 10 + 10 && rand < 20 + 20 + 10 + 10 + 10 + 10)
        return 5;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5)
        return 6;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 + 5 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5)
        return 7;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4)
        return 8;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 + 4)
        return 9;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 + 4 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 + 4 + 1)
        return 10;
    else
        return 11;
}

static u8 ChooseWildMonIndex_WaterRock(void)
{
    u8 rand = Random() % (60 + 30 + 5 + 4 + 1);

    if (rand < 60)
        return 0;
    else if (rand >= 60 && rand < 60 + 30)
        return 1;
    else if (rand >= 60 + 30 && rand < 60 + 30 + 5)
        return 2;
    else if (rand >= 60 + 30 + 5 && rand < 60 + 30 + 5 + 4)
        return 3;
    else
        return 4;
}

static u8 ChooseWildMonIndex_Fishing(u8 rod)
{
    u8 wildMonIndex = 0;
    u8 rand = Random() % (((((70 + 30)) >= ((60 + 20 + 20)) ? ((70 + 30)) : ((60 + 20 + 20)))) >= ((40 + 40 + 15 + 4 + 1)) ? ((((70 + 30)) >= ((60 + 20 + 20)) ? ((70 + 30)) : ((60 + 20 + 20)))) : ((40 + 40 + 15 + 4 + 1)))
                                                                           ;

    switch (rod)
    {
    case 0:
        if (rand < 70)
            wildMonIndex = 0;
        else
            wildMonIndex = 1;
        break;
    case 1:
        if (rand < 60)
            wildMonIndex = 2;
        if (rand >= 60 && rand < 60 + 20)
            wildMonIndex = 3;
        if (rand >= 60 + 20 && rand < 60 + 20 + 20)
            wildMonIndex = 4;
        break;
    case 2:
        if (rand < 40)
            wildMonIndex = 5;
        if (rand >= 40 && rand < 40 + 40)
            wildMonIndex = 6;
        if (rand >= 40 + 40 && rand < 40 + 40 + 15)
            wildMonIndex = 7;
        if (rand >= 40 + 40 + 15 && rand < 40 + 40 + 15 + 4)
            wildMonIndex = 8;
        if (rand >= 40 + 40 + 15 + 4 && rand < 40 + 40 + 15 + 4 + 1)
            wildMonIndex = 9;
        break;
    }
    return wildMonIndex;
}

static u8 ChooseWildMonLevel(const struct WildPokemon * info)
{
    u8 lo;
    u8 hi;
    u8 mod;
    u8 res;
    if (info->maxLevel >= info->minLevel)
    {
        lo = info->minLevel;
        hi = info->maxLevel;
    }
    else
    {
        lo = info->maxLevel;
        hi = info->minLevel;
    }
    mod = hi - lo + 1;
    res = Random() % mod;
    return lo + res;
}

static u16 GetCurrentMapWildMonHeaderId(void)
{
    u16 i;

    for (i = 0; ; i++)
    {
        const struct WildPokemonHeader * wildHeader = &gWildMonHeaders[i];
        if (wildHeader->mapGroup == ((0xFF | (0xFF << 8)) >> 8))
            break;

        if (gWildMonHeaders[i].mapGroup == gSaveBlock1Ptr->location.mapGroup &&
            gWildMonHeaders[i].mapNum == gSaveBlock1Ptr->location.mapNum)
        {
            if (gSaveBlock1Ptr->location.mapGroup == ((122 | (1 << 8)) >> 8) &&
                gSaveBlock1Ptr->location.mapNum == ((122 | (1 << 8)) & 0xFF))
            {
                u16 alteringCaveId = VarGet(0x4024);
                if (alteringCaveId >= 9)
                    alteringCaveId = 0;

                i += alteringCaveId;
            }

            if (!UnlockedTanobyOrAreNotInTanoby())
                break;
            return i;
        }
    }

    return 0xFFFF;
}

static bool8 UnlockedTanobyOrAreNotInTanoby(void)
{
    if (FlagGet(((((0x502 + 1) + 768 - 1) + 1) + 0x49)))
        return 1;
    if (gSaveBlock1Ptr->location.mapGroup != ((30 | (2 << 8)) >> 8))
        return 1;
    if (!(gSaveBlock1Ptr->location.mapNum == ((27 | (2 << 8)) & 0xFF)
    || gSaveBlock1Ptr->location.mapNum == ((28 | (2 << 8)) & 0xFF)
    || gSaveBlock1Ptr->location.mapNum == ((29 | (2 << 8)) & 0xFF)
    || gSaveBlock1Ptr->location.mapNum == ((30 | (2 << 8)) & 0xFF)
    || gSaveBlock1Ptr->location.mapNum == ((31 | (2 << 8)) & 0xFF)
    || gSaveBlock1Ptr->location.mapNum == ((32 | (2 << 8)) & 0xFF)
    || gSaveBlock1Ptr->location.mapNum == ((33 | (2 << 8)) & 0xFF)
    ))
        return 1;
    return 0;
}

static void GenerateWildMon(u16 species, u8 level, u8 slot)
{
    u32 personality;
    s8 chamber;
    ZeroEnemyPartyMons();
    if (species != 201)
    {
        CreateMonWithNature(&gEnemyParty[0], species, level, (31 + 1), Random() % 25);
    }
    else
    {
        chamber = gSaveBlock1Ptr->location.mapNum - ((27 | (2 << 8)) & 0xFF);
        personality = GenerateUnownPersonalityByLetter(sUnownLetterSlots[chamber][slot]);
        CreateMon(&gEnemyParty[0], species, level, (31 + 1), 1, personality, 0, 0);
    }
}

static u32 GenerateUnownPersonalityByLetter(u8 letter)
{
    u32 personality;
    do
    {
        personality = (Random() << 16) | Random();
    } while (GetUnownLetterByPersonalityLoByte(personality) != letter);
    return personality;
}

u8 GetUnownLetterByPersonalityLoByte(u32 personality)
{
    return (( (((personality) & 0x03000000) >> 18) | (((personality) & 0x00030000) >> 12) | (((personality) & 0x00000300) >> 6) | (((personality) & 0x00000003) >> 0) ) % 28);
}

enum
{
    WILD_AREA_LAND,
    WILD_AREA_WATER,
    WILD_AREA_ROCKS,
    WILD_AREA_FISHING,
};




static bool8 TryGenerateWildMon(const struct WildPokemonInfo * info, u8 area, u8 flags)
{
    u8 slot = 0;
    u8 level;
    switch (area)
    {
    case WILD_AREA_LAND:
        slot = ChooseWildMonIndex_Land();
        break;
    case WILD_AREA_WATER:
        slot = ChooseWildMonIndex_WaterRock();
        break;
    case WILD_AREA_ROCKS:
        slot = ChooseWildMonIndex_WaterRock();
        break;
    }
    level = ChooseWildMonLevel(&info->wildPokemon[slot]);
    if (flags == 0x1 && !IsWildLevelAllowedByRepel(level))
    {
        return 0;
    }
    GenerateWildMon(info->wildPokemon[slot].species, level, slot);
    return 1;
}

static u16 GenerateFishingEncounter(const struct WildPokemonInfo * info, u8 rod)
{
    u8 slot = ChooseWildMonIndex_Fishing(rod);
    u8 level = ChooseWildMonLevel(&info->wildPokemon[slot]);
    GenerateWildMon(info->wildPokemon[slot].species, level, slot);
    return info->wildPokemon[slot].species;
}

static bool8 DoWildEncounterRateDiceRoll(u16 encounterRate)
{
    if (WildEncounterRandom() % 1600 < encounterRate)
        return 1;
    return 0;
}

static bool8 DoWildEncounterRateTest(u32 encounterRate, bool8 ignoreAbility)
{
    encounterRate *= 16;
    if (TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_MACH_BIKE) | (1 << PLAYER_AVATAR_STATE_ACRO_BIKE)))
        encounterRate = encounterRate * 80 / 100;
    encounterRate += sWildEncounterData.encounterRateBuff * 16 / 200;
    ApplyFluteEncounterRateMod(&encounterRate);
    ApplyCleanseTagEncounterRateMod(&encounterRate);
    if (!ignoreAbility)
    {
        switch (sWildEncounterData.abilityEffect)
        {
        case 1:
            encounterRate /= 2;
            break;
        case 2:
            encounterRate *= 2;
            break;
        }
    }
    if (encounterRate > 1600)
        encounterRate = 1600;
    return DoWildEncounterRateDiceRoll(encounterRate);
}

static u8 GetAbilityEncounterRateModType(void)
{
    sWildEncounterData.abilityEffect = 0;
    if (!GetMonData(&gPlayerParty[0], 6))
    {
        u8 ability = GetMonAbility(&gPlayerParty[0]);
        if (ability == 1)
            sWildEncounterData.abilityEffect = 1;
        else if (ability == 35)
            sWildEncounterData.abilityEffect = 2;
    }
    return sWildEncounterData.abilityEffect;
}

static bool8 DoGlobalWildEncounterDiceRoll(void)
{
    if ((Random() % 100) >= 60)
        return 0;
    return 1;
}

bool8 StandardWildEncounter(u32 currMetatileAttrs, u16 previousMetatileBehavior)
{
    u16 headerId;
    struct Roamer * roamer;

    if (sWildEncountersDisabled == 1)
        return 0;

    headerId = GetCurrentMapWildMonHeaderId();
    if (headerId != 0xFFFF)
    {
        if (ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_ENCOUNTER_TYPE) == TILE_ENCOUNTER_LAND)
        {
            if (gWildMonHeaders[headerId].landMonsInfo == ((void *)0))
                return 0;
            else if (previousMetatileBehavior != ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_BEHAVIOR) && !DoGlobalWildEncounterDiceRoll())
                return 0;
            if (DoWildEncounterRateTest(gWildMonHeaders[headerId].landMonsInfo->encounterRate, 0) != 1)
            {
                AddToWildEncounterRateBuff(gWildMonHeaders[headerId].landMonsInfo->encounterRate);
                return 0;
            }

            else if (TryStartRoamerEncounter() == 1)
            {
                roamer = &gSaveBlock1Ptr->roamer;
                if (!IsWildLevelAllowedByRepel(roamer->level))
                {
                    return 0;
                }

                StartRoamerBattle();
                return 1;
            }
            else
            {


                if (TryGenerateWildMon(gWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0x1) == 1)
                {
                    StartWildBattle();
                    return 1;
                }
                else
                {
                    AddToWildEncounterRateBuff(gWildMonHeaders[headerId].landMonsInfo->encounterRate);
                }
            }
        }
        else if (ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_ENCOUNTER_TYPE) == TILE_ENCOUNTER_WATER
                 || (TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_SURFING)) && MetatileBehavior_IsBridge(ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_BEHAVIOR)) == 1))
        {
            if (gWildMonHeaders[headerId].waterMonsInfo == ((void *)0))
                return 0;
            else if (previousMetatileBehavior != ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_BEHAVIOR) && !DoGlobalWildEncounterDiceRoll())
                return 0;
            else if (DoWildEncounterRateTest(gWildMonHeaders[headerId].waterMonsInfo->encounterRate, 0) != 1)
            {
                AddToWildEncounterRateBuff(gWildMonHeaders[headerId].waterMonsInfo->encounterRate);
                return 0;
            }

            if (TryStartRoamerEncounter() == 1)
            {
                roamer = &gSaveBlock1Ptr->roamer;
                if (!IsWildLevelAllowedByRepel(roamer->level))
                {
                    return 0;
                }

                StartRoamerBattle();
                return 1;
            }
            else
            {
                if (TryGenerateWildMon(gWildMonHeaders[headerId].waterMonsInfo, WILD_AREA_WATER, 0x1) == 1)
                {
                    StartWildBattle();
                    return 1;
                }
                else
                {
                    AddToWildEncounterRateBuff(gWildMonHeaders[headerId].waterMonsInfo->encounterRate);
                }
            }
        }
    }

    return 0;
}

void RockSmashWildEncounter(void)
{
    u16 headerIdx = GetCurrentMapWildMonHeaderId();
    if (headerIdx == 0xFFFF)
        gSpecialVar_Result = 0;
    else if (gWildMonHeaders[headerIdx].rockSmashMonsInfo == ((void *)0))
        gSpecialVar_Result = 0;
    else if (DoWildEncounterRateTest(gWildMonHeaders[headerIdx].rockSmashMonsInfo->encounterRate, 1) != 1)
        gSpecialVar_Result = 0;
    else if (TryGenerateWildMon(gWildMonHeaders[headerIdx].rockSmashMonsInfo, WILD_AREA_ROCKS, 0x1) == 1)
    {
        StartWildBattle();
        gSpecialVar_Result = 1;
    }
    else
        gSpecialVar_Result = 0;
}

bool8 SweetScentWildEncounter(void)
{
    s16 x, y;
    u16 headerId;

    PlayerGetDestCoords(&x, &y);
    headerId = GetCurrentMapWildMonHeaderId();
    if (headerId != 0xFFFF)
    {
        if (MapGridGetMetatileAttributeAt(x, y, METATILE_ATTRIBUTE_ENCOUNTER_TYPE) == TILE_ENCOUNTER_LAND)
        {
            if (TryStartRoamerEncounter() == 1)
            {
                StartRoamerBattle();
                return 1;
            }

            if (gWildMonHeaders[headerId].landMonsInfo == ((void *)0))
                return 0;

            TryGenerateWildMon(gWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0);

            StartWildBattle();
            return 1;
        }
        else if (MapGridGetMetatileAttributeAt(x, y, METATILE_ATTRIBUTE_ENCOUNTER_TYPE) == TILE_ENCOUNTER_WATER)
        {
            if (TryStartRoamerEncounter() == 1)
            {
                StartRoamerBattle();
                return 1;
            }

            if (gWildMonHeaders[headerId].waterMonsInfo == ((void *)0))
                return 0;

            TryGenerateWildMon(gWildMonHeaders[headerId].waterMonsInfo, WILD_AREA_WATER, 0);
            StartWildBattle();
            return 1;
        }
    }

    return 0;
}

bool8 DoesCurrentMapHaveFishingMons(void)
{
    u16 headerIdx = GetCurrentMapWildMonHeaderId();
    if (headerIdx == 0xFFFF)
        return 0;
    if (gWildMonHeaders[headerIdx].fishingMonsInfo == ((void *)0))
        return 0;
    return 1;
}

void FishingWildEncounter(u8 rod)
{
    GenerateFishingEncounter(gWildMonHeaders[GetCurrentMapWildMonHeaderId()].fishingMonsInfo, rod);
    IncrementGameStat(12);
    StartWildBattle();
}

u16 GetLocalWildMon(bool8 *isWaterMon)
{
    u16 headerId;
    const struct WildPokemonInfo * landMonsInfo;
    const struct WildPokemonInfo * waterMonsInfo;

    *isWaterMon = 0;
    headerId = GetCurrentMapWildMonHeaderId();
    if (headerId == 0xFFFF)
        return 0;
    landMonsInfo = gWildMonHeaders[headerId].landMonsInfo;
    waterMonsInfo = gWildMonHeaders[headerId].waterMonsInfo;

    if (landMonsInfo == ((void *)0) && waterMonsInfo == ((void *)0))
        return 0;

    else if (landMonsInfo != ((void *)0) && waterMonsInfo == ((void *)0))
        return landMonsInfo->wildPokemon[ChooseWildMonIndex_Land()].species;

    else if (landMonsInfo == ((void *)0) && waterMonsInfo != ((void *)0))
    {
        *isWaterMon = 1;
        return waterMonsInfo->wildPokemon[ChooseWildMonIndex_WaterRock()].species;
    }

    if ((Random() % 100) < 80)
    {
        return landMonsInfo->wildPokemon[ChooseWildMonIndex_Land()].species;
    }
    else
    {
        *isWaterMon = 1;
        return waterMonsInfo->wildPokemon[ChooseWildMonIndex_WaterRock()].species;
    }
}

u16 GetLocalWaterMon(void)
{
    u16 headerId = GetCurrentMapWildMonHeaderId();

    if (headerId != 0xFFFF)
    {
        const struct WildPokemonInfo * waterMonsInfo = gWildMonHeaders[headerId].waterMonsInfo;

        if (waterMonsInfo)
            return waterMonsInfo->wildPokemon[ChooseWildMonIndex_WaterRock()].species;
    }
    return 0;
}

bool8 UpdateRepelCounter(void)
{
    u16 steps;

    if (InUnionRoom() == 1)
        return 0;

    if (gQuestLogState == 2)
        return 0;

    steps = VarGet(0x4020);

    if (steps != 0)
    {
        steps--;
        VarSet(0x4020, steps);
        if (steps == 0)
        {
            ScriptContext_SetupScript(EventScript_RepelWoreOff);
            return 1;
        }
    }
    return 0;
}

static bool8 IsWildLevelAllowedByRepel(u8 wildLevel)
{
    u8 i;

    if (!VarGet(0x4020))
        return 1;

    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&gPlayerParty[i], 57) && !GetMonData(&gPlayerParty[i], 45))
        {
            u8 ourLevel = GetMonData(&gPlayerParty[i], 56);

            if (wildLevel < ourLevel)
                return 0;
            else
                return 1;
        }
    }

    return 0;
}

static void ApplyFluteEncounterRateMod(u32 *encounterRate)
{
    switch (GetFluteEncounterRateModType())
    {
    case 1:
        *encounterRate += *encounterRate / 2;
        break;
    case 2:
        *encounterRate = *encounterRate / 2;
        break;
    }
}

static u8 GetFluteEncounterRateModType(void)
{
    if (FlagGet(((((0x502 + 1) + 768 - 1) + 1) + 0x3)) == 1)
        return 1;
    else if (FlagGet(((((0x502 + 1) + 768 - 1) + 1) + 0x4)) == 1)
        return 2;
    else
        return 0;
}

static void ApplyCleanseTagEncounterRateMod(u32 *encounterRate)
{
    if (IsLeadMonHoldingCleanseTag())
        *encounterRate = *encounterRate * 2 / 3;
}

static bool8 IsLeadMonHoldingCleanseTag(void)
{
    if (sWildEncounterData.leadMonHeldItem == 190)
        return 1;
    else
        return 0;
}

void SeedWildEncounterRng(u16 seed)
{
    sWildEncounterData.rngState = seed;
    ResetEncounterRateModifiers();
}

static u16 WildEncounterRandom(void)
{
    sWildEncounterData.rngState = (1103515245 * (sWildEncounterData.rngState) + 12345);
    return sWildEncounterData.rngState >> 16;
}

static u8 GetMapBaseEncounterCooldown(u8 encounterType)
{
    u16 headerIdx = GetCurrentMapWildMonHeaderId();
    if (headerIdx == 0xFFFF)
        return 0xFF;
    if (encounterType == TILE_ENCOUNTER_LAND)
    {
        if (gWildMonHeaders[headerIdx].landMonsInfo == ((void *)0))
            return 0xFF;
        if (gWildMonHeaders[headerIdx].landMonsInfo->encounterRate >= 80)
            return 0;
        if (gWildMonHeaders[headerIdx].landMonsInfo->encounterRate < 10)
            return 8;
        return 8 - (gWildMonHeaders[headerIdx].landMonsInfo->encounterRate / 10);
    }
    if (encounterType == TILE_ENCOUNTER_WATER)
    {
        if (gWildMonHeaders[headerIdx].waterMonsInfo == ((void *)0))
            return 0xFF;
        if (gWildMonHeaders[headerIdx].waterMonsInfo->encounterRate >= 80)
            return 0;
        if (gWildMonHeaders[headerIdx].waterMonsInfo->encounterRate < 10)
            return 8;
        return 8 - (gWildMonHeaders[headerIdx].waterMonsInfo->encounterRate / 10);
    }
    return 0xFF;
}

void ResetEncounterRateModifiers(void)
{
    sWildEncounterData.encounterRateBuff = 0;
    sWildEncounterData.stepsSinceLastEncounter = 0;
}

static bool8 HandleWildEncounterCooldown(u32 currMetatileAttrs)
{
    u8 encounterType = ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_ENCOUNTER_TYPE);
    u32 minSteps;
    u32 encRate;
    if (encounterType == TILE_ENCOUNTER_NONE)
        return 0;
    minSteps = GetMapBaseEncounterCooldown(encounterType);
    if (minSteps == 0xFF)
        return 0;
    minSteps *= 256;
    encRate = 5 * 256;
    switch (GetFluteEncounterRateModType())
    {
    case 1:
        minSteps -= minSteps / 2;
        encRate += encRate / 2;
        break;
    case 2:
        minSteps *= 2;
        encRate /= 2;
        break;
    }
    sWildEncounterData.leadMonHeldItem = GetMonData(&gPlayerParty[0], 12);
    if (IsLeadMonHoldingCleanseTag() == 1)
    {
        minSteps += minSteps / 3;
        encRate -= encRate / 3;
    }
    switch (GetAbilityEncounterRateModType())
    {
    case 1:
        minSteps *= 2;
        encRate /= 2;
        break;
    case 2:
        minSteps /= 2;
        encRate *= 2;
        break;
    }
    minSteps /= 256;
    encRate /= 256;
    if (sWildEncounterData.stepsSinceLastEncounter >= minSteps)
        return 1;
    sWildEncounterData.stepsSinceLastEncounter++;
    if ((Random() % 100) < encRate)
        return 1;
    return 0;
}

bool8 TryStandardWildEncounter(u32 currMetatileAttrs)
{
    if (!HandleWildEncounterCooldown(currMetatileAttrs))
    {
        sWildEncounterData.prevMetatileBehavior = ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_BEHAVIOR);
        return 0;
    }
    else if (StandardWildEncounter(currMetatileAttrs, sWildEncounterData.prevMetatileBehavior) == 1)
    {
        sWildEncounterData.encounterRateBuff = 0;
        sWildEncounterData.stepsSinceLastEncounter = 0;
        sWildEncounterData.prevMetatileBehavior = ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_BEHAVIOR);
        return 1;
    }
    else
    {
        sWildEncounterData.prevMetatileBehavior = ExtractMetatileAttribute(currMetatileAttrs, METATILE_ATTRIBUTE_BEHAVIOR);
        return 0;
    }
}

static void AddToWildEncounterRateBuff(u8 encounterRate)
{
    if (VarGet(0x4020) == 0)
        sWildEncounterData.encounterRateBuff += encounterRate;
    else
        sWildEncounterData.encounterRateBuff = 0;
}
