# 0 "src/pokedex_screen.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/pokedex_screen.c"
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
# 2 "src/pokedex_screen.c" 2
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
# 3 "src/pokedex_screen.c" 2
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
# 4 "src/pokedex_screen.c" 2
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
# 5 "src/pokedex_screen.c" 2
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
# 6 "src/pokedex_screen.c" 2
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
# 7 "src/pokedex_screen.c" 2
# 1 "include/new_menu_helpers.h" 1





# 1 "include/task.h" 1
# 7 "include/new_menu_helpers.h" 2

extern const u16 gMenuMessageWindow_Gfx[];

void ClearScheduledBgCopiesToVram(void);
void ScheduleBgCopyTilemapToVram(u8 bgId);
void DoScheduledBgTilemapCopiesToVram(void);
void ResetTempTileDataBuffers(void);
bool8 FreeTempTileDataBuffersIfPossible(void);
void *DecompressAndCopyTileDataToVram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void *DecompressAndCopyTileDataToVram2(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void DecompressAndLoadBgGfxUsingHeap(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void DecompressAndLoadBgGfxUsingHeap2(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void *MallocAndDecompress(const void *src, u32 * size);
void SetBgTilemapPalette(u8 bgId, u8 left, u8 top, u8 width, u8 height, u8 palette);
void CopyToBufferFromBgTilemap(u8 bgId, u16 *dest, u8 left, u8 top, u8 width, u8 height);
void ResetBgPositions(void);
void InitStandardTextBoxWindows(void);
void FreeAllOverworldWindowBuffers(void);
void InitTextBoxGfxAndPrinters(void);
u16 RunTextPrinters_CheckPrinter0Active(void);
u16 AddTextPrinterParameterized2(u8 windowId, u8 fontId, const u8 *str, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 fgColor, u8 bgColor, u8 shadowColor);
void AddTextPrinterDiffStyle(bool8 allowSkippingDelayWithButtonPress);
void AddTextPrinterForMessage(bool8 allowSkippingDelayWithButtonPress);
void AddTextPrinterWithCustomSpeedForMessage(bool8 allowSkippingDelayWithButtonPress, u8 speed);
void LoadStdWindowFrameGfx(void);
void DrawDialogueFrame(u8 windowId, bool8 transfer);
void DrawStdWindowFrame(u8 windowId, bool8 copyNow);
void ClearDialogWindowAndFrame(u8 windowId, bool8 copyToVram);
void ClearStdWindowAndFrame(u8 windowId, bool8 copyNow);
void EraseFieldMessageBox(bool8 copyToVram);
void SetStdWindowBorderStyle(u8 windowId, bool8 copyToVram);
void LoadMessageBoxAndFrameGfx(u8 windowId, bool8 copyToVram);
void Menu_LoadStdPal(void);
void Menu_LoadStdPalAt(u16 offset);
void DisplayItemMessageOnField(u8 taskId, u8 fontId, const u8 *src, TaskFunc callback);
void DisplayYesNoMenuDefaultYes(void);
void DisplayYesNoMenuDefaultNo(void);
u8 GetTextSpeedSetting(void);
u8 CreateStartMenuWindow(u8 height);
u8 GetStartMenuWindowId(void);
void RemoveStartMenuWindow(void);
u16 GetStdWindowBaseTileNum(void);
void DrawHelpMessageWindowWithText(const u8 * text);
void DestroyHelpMessageWindow_(void);
void LoadSignpostWindowFrameGfx(void);
void SetDefaultFontsPointer(void);
# 8 "src/pokedex_screen.c" 2
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
# 9 "src/pokedex_screen.c" 2
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
# 10 "src/pokedex_screen.c" 2
# 1 "include/menu_indicators.h" 1





struct ScrollArrowsTemplate
{
    u8 firstArrowType;
    u8 firstX;
    u8 firstY;
    u8 secondArrowType;
    u8 secondX;
    u8 secondY;
    u16 fullyUpThreshold;
    u16 fullyDownThreshold;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

struct CursorStruct
{
    u8 left;
    u8 top;
    u16 rowWidth;
    u16 rowHeight;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

u8 AddScrollIndicatorArrowPairParameterized(u32 arrowType, s32 commonPos, s32 firstPos, s32 secondPos, s32 fullyDownThreshold, s32 tileTag, s32 palTag, u16 *scrollOffset);
u8 AddScrollIndicatorArrowPair(const struct ScrollArrowsTemplate * template, u16 * a1);
void RemoveScrollIndicatorArrowPair(u8);
u8 ListMenuAddCursorObjectInternal(const struct CursorStruct *cursor, u32 cursorKind);
u8 ListMenuAddRedOutlineCursorObject(const struct CursorStruct *cursor);
void ListMenuUpdateRedOutlineCursorObject(u8 taskId, u16 x, u16 y);
void ListMenuRemoveRedOutlineCursorObject(u8 taskId);
void ListMenuRemoveCursorObject(u8 taskId, u32 cursorKind);
void ListMenuUpdateCursorObject(u8 taskId, u16 x, u16 y, u32 cursorKind);
# 11 "src/pokedex_screen.c" 2
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
# 12 "src/pokedex_screen.c" 2
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
# 13 "src/pokedex_screen.c" 2
# 1 "include/menu.h" 1
# 18 "include/menu.h"
struct MenuAction
{
    const u8 *text;
    union {
        void (*void_u8)(u8);
        u8 (*u8_void)(void);
    } func;
};


void AddTextPrinterParameterized3(u8 windowId, u8 fontId, u8 x, u8 y, const u8 * color, s8 speed, const u8 * str);
void AddTextPrinterParameterized4(u8 windowId, u8 fontId, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, const u8 *color, s8 speed, const u8 *str);
void AddTextPrinterParameterized5(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 letterSpacing, u8 lineSpacing);
void Menu_PrintFormatIntlPlayerName(u8 windowId, const u8 * src, u16 x, u16 y);
void StartBlendTask(u8 eva_start, u8 evb_start, u8 eva_end, u8 evb_end, u8 ev_step, u8 priority);
bool8 IsBlendTaskActive(void);
u8 Menu2_GetMonSpriteAnchorCoord(u16 species, u32 personality, u8 a2);
s8 Menu2_GetMonSpriteAnchorCoordMinusx20(u16 species, u32 personality, u8 a2);


void ListMenu_LoadMonIconPalette(u8 palOffset, u16 speciesId);
void ListMenu_DrawMonIconGraphics(u8 windowId, u16 speciesId, u32 personality, u16 x, u16 y);
void ListMenuLoadStdPalAt(u8 palOffset, u8 palId);
void BlitMenuInfoIcon(u8 windowId, u8 iconId, u16 x, u16 y);


s8 Menu_ProcessInputGridLayout(void);
u8 MultichoiceGrid_InitCursor(u8 windowId, u8 fontId, u8 left, u8 top, u8 optionWidth, u8 cols, u8 rows, u8 cursorPos);
void MultichoiceGrid_PrintItems(u8 windowId, u8 fontId, u8 itemWidth, u8 itemHeight, u8 cols, u8 rows, const struct MenuAction *strs);
void DestroyYesNoMenu(void);
s8 Menu_ProcessInputNoWrapClearOnChoose(void);
void CreateYesNoMenu(const struct WindowTemplate *window, u8 fontId, u8 left, u8 top, u16 baseTileNum, u8 paletteNum, u8 initialCursorPos);
void AddItemMenuActionTextPrinters(u8 windowId, u8 fontId, u8 left, u8 top, u8 letterSpacing, u8 lineHeight, u8 itemCount, const struct MenuAction *strs, const u8 *orderArray);
void PrintMenuTable(u8 windowId, u8 fontId, u8 lineHeight, u8 itemCount, const struct MenuAction *strs);
void MultichoiceList_PrintItems(u8 windowId, u8 fontId, u8 left, u8 top, u8 lineHeight, u8 itemCount, const struct MenuAction *strs, u8 letterSpacing, u8 lineSpacing);
void PrintTextArray(u8 windowId, u8 fontId, u8 left, u8 top, u8 lineHeight, u8 itemCount, const struct MenuAction *strs);
s8 Menu_ProcessInputNoWrapAround_other(void);
s8 Menu_ProcessInput_other(void);
s8 Menu_ProcessInputNoWrapAround(void);
s8 Menu_ProcessInput(void);
u8 Menu_GetCursorPos(void);
u8 Menu_MoveCursorNoWrapAround(s8 cursorDelta);
u8 Menu_MoveCursor(s8 cursorDelta);
u8 Menu_InitCursor(u8 windowId, u8 fontId, u8 left, u8 top, u8 cursorHeight, u8 numChoices, u8 initialCursorPos);
u8 Menu_InitCursorInternal(u8 windowId, u8 fontId, u8 left, u8 top, u8 cursorHeight, u8 numChoices, u8 initialCursorPos, bool8 APressMuted);
void TopBarWindowPrintTwoStrings(const u8 *string, const u8 *string2, bool8 fgColorChooser, u8 notUsed, bool8 copyToVram);
void TopBarWindowPrintString(const u8 *string, u8 unUsed, bool8 copyToVram);
void ClearTopBarWindow(void);
void DestroyTopBarWindow(void);
u8 CreateTopBarWindowLoadPalette(u8 bg, u8 width, u8 yPos, u8 palette, u16 baseTile);
void ClearStdWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
void DrawStdFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 baseTileNum, u8 paletteNum);
void ClearDialogWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
void DrawDialogFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 tileNum, u8 paletteNum);
struct WindowTemplate SetWindowTemplateFields(u8 bg, u8 left, u8 top, u8 width, u8 height, u8 paletteNum, u16 baseBlock);
# 14 "src/pokedex_screen.c" 2
# 1 "include/pokedex_screen.h" 1
# 24 "include/pokedex_screen.h"
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
# 25 "include/pokedex_screen.h" 2

extern const struct PokedexEntry gPokedexEntries[];

void CB2_OpenPokedexFromStartMenu(void);
s8 DexScreen_GetSetPokedexFlag(u16 nationalDexNo, u8 caseId, bool8 indexIsSpecies);
# 15 "src/pokedex_screen.c" 2
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
# 16 "src/pokedex_screen.c" 2
# 1 "include/pokedex.h" 1
# 17 "src/pokedex_screen.c" 2
# 1 "include/trainer_pokemon_sprites.h" 1





u16 CreateTrainerCardTrainerPicSprite(u16 species, bool8 isFrontPic, u16 destX, u16 destY, u8 paletteSlot, u8 windowId);
bool16 ResetAllPicSprites(void);
u16 CreateTrainerPicSprite(u16 species, bool8 isFrontPic, s16 x, s16 y, u8 paletteSlot, u16 paletteTag);
u16 FreeAndDestroyMonPicSprite(u16);
u16 FreeAndDestroyTrainerPicSprite(u16);
u16 PlayerGenderToFrontTrainerPicId(u8 gender, bool8 getClass);
u16 CreateMonPicSprite_HandleDeoxys(u16 species, u32 otId, u32 personality, bool8 isFrontPic, s16 x, s16 y, u8 paletteSlot, u16 paletteTag);
u16 LoadMonPicInWindow(u16 species, u32 otId, u32 personality, bool8 isFrontPic, u8 paletteSlot, u8 windowId);
u16 CreateMonPicSprite(u16 species, u32 otId, u32 personality, bool8 isFrontPic, s16 x, s16 y, u8 paletteSlot, u16 paletteTag, bool8 ignoreDeoxys);
u16 CreateMonPicSprite_HandleDeoxys(u16 species, u32 otId, u32 personality, bool8 isFrontPic, s16 x, s16 y, u8 paletteSlot, u16 paletteTag);
# 18 "src/pokedex_screen.c" 2
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
# 19 "src/pokedex_screen.c" 2
# 1 "include/constants/songs.h" 1
# 20 "src/pokedex_screen.c" 2
# 1 "include/constants/sound.h" 1
# 21 "src/pokedex_screen.c" 2
# 1 "include/pokedex_area_markers.h" 1



void GetAreaMarkerSubsprite(s32 i, s32 dexArea, struct Subsprite * subsprites);
void DestroyPokedexAreaMarkers(u8 taskId);
u8 CreatePokedexAreaMarkers(u16 species, u16 tilesTag, u8 palIdx, u8 y);
u8 GetNumPokedexAreaMarkers(u8 taskId);
# 22 "src/pokedex_screen.c" 2
# 1 "include/field_specials.h" 1





u8 GetLeadMonIndex(void);
s32 CountDigits(s32 number);
void TV_PrintIntToStringVar(u8 varidx, s32 number);
u16 GetStarterSpecies(void);
void StopPokemonLeagueLightingEffectTask(void);
void FieldCB_ShowPortholeView(void);
u8 ContextNpcGetTextColor(void);
void SetPCBoxToSendMon(u8);
u16 GetPCBoxToSendMon(void);
bool8 IsDestinationBoxFull(void);
bool8 ShouldShowBoxWasFullMessage(void);
u16 GetHiddenItemAttr(u32 hiddenItem, u8 attr);
u8 GetUnlockedSeviiAreas(void);
u32 GetPlayerTrainerId(void);
bool8 CutMoveRuinValleyCheck(void);
void CutMoveOpenDottedHoleDoor(void);
void RunMassageCooldownStepCounter(void);
void IncrementResortGorgeousStepCounter(void);
void IncrementBirthIslandRockStepCount(void);
void ResetCyclingRoadChallengeData(void);
void ResetFieldTasksArgs(void);
bool8 UsedPokemonCenterWarp(void);
void QuestLog_CheckDepartingIndoorsMap(void);
void QuestLog_TryRecordDepartedLocation(void);
# 23 "src/pokedex_screen.c" 2



enum TextMode {
    TEXT_LEFT,
    TEXT_CENTER,
    TEXT_RIGHT
};

struct PokedexScreenData
{
    u8 taskId;
    u8 state;
    u8 data[2];
    u8 areaMarkersTaskId;
    u32 unlockedCategories;
    u32 modeSelectInput;
    u16 modeSelectItemsAbove;
    u16 modeSelectCursorPos;
    u8 modeSelectWindowId;
    u8 selectionIconWindowId;
    u8 dexCountsWindowId;
    u8 modeSelectListMenuId;
    u16 pageSpecies[4];
    u8 categoryMonWindowIds[4];
    u8 categoryMonInfoWindowIds[4];
    u8 category;
    u8 firstPageInCategory;
    u8 lastPageInCategory;
    u8 pageNum;
    u8 numMonsOnPage;
    u8 categoryCursorPosInPage;
    u8 categoryPageSelectionCursorTimer;
    u8 parentOfCategoryMenu;
    u32 characteristicMenuInput;
    u16 kantoOrderMenuItemsAbove;
    u16 kantoOrderMenuCursorPos;
    u16 characteristicOrderMenuItemsAbove;
    u16 characteristicOrderMenuCursorPos;
    u16 nationalOrderMenuItemsAbove;
    u16 nationalOrderMenuCursorPos;
    u8 numericalOrderWindowId;
    u8 orderedListMenuTaskId;
    u8 dexOrderId;
    struct ListMenuItem * listItems;
    u16 orderedDexCount;
    u8 windowIds[0x10];
    u16 dexSpecies;
    u16 * bgBufsMem;
    u8 scrollArrowsTaskId;
    u8 categoryPageCursorTaskId;
    u16 modeSelectCursorPosBak;
    u8 unlockedSeviiAreas;
    u16 numSeenKanto;
    u16 numOwnedKanto;
    u16 numSeenNational;
    u16 numOwnedNational;
};

struct PokedexScreenWindowGfx
{
    const u32 * tiles;
    const u16 * pal;
};

struct PokedexCategoryPage
{
    const u16 * species;
    u8 count;
};

__attribute__((section("ewram_data"))) static struct PokedexScreenData * sPokedexScreenData = ((void *)0);

static void Task_PokedexScreen(u8 taskId);
static void DexScreen_InitGfxForTopMenu(void);
static void Task_DexScreen_NumericalOrder(u8 taskId);
static void DexScreen_InitGfxForNumericalOrderList(void);
static void Task_DexScreen_CharacteristicOrder(u8 taskId);
static void DexScreen_CreateCharacteristicListMenu(void);
static u16 DexScreen_CountMonsInOrderedList(u8 orderIdx);
static void DexScreen_InitListMenuForOrderedList(const struct ListMenuTemplate * template, u8 order);
static u8 DexScreen_CreateDexOrderScrollArrows(void);
static void DexScreen_DestroyDexOrderListMenu(u8 order);
static void Task_DexScreen_CategorySubmenu(u8 taskId);
static u8 DexScreen_CreateCategoryMenuScrollArrows(void);
static int DexScreen_InputHandler_GetShoulderInput(void);
static void Task_DexScreen_ShowMonPage(u8 taskId);
static bool32 DexScreen_TryScrollMonsVertical(u8 direction);
static void DexScreen_RemoveWindow(u8 *windowId_p);
static void DexScreen_AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 colorIdx);
static void DexScreen_PrintNum3RightAlign(u8 windowId, u8 fontId, u16 num, u8 x, u8 y, u8 colorIdx);
static void DexScreen_PrintMonDexNo(u8 windowId, u8 fontId, u16 species, u8 x, u8 y);
static u16 DexScreen_GetDexCount(u8 caseId, bool8 whichDex);
static void DexScreen_PrintControlInfo(const u8 *src);
static void DexScreen_DestroyCategoryPageMonIconAndInfoWindows(void);
static bool8 DexScreen_CreateCategoryListGfx(bool8 justRegistered);
static void DexScreen_CreateCategoryPageSelectionCursor(u8 cursorPos);
static void DexScreen_UpdateCategoryPageCursorObject(u8 taskId, u8 cursorPos, u8 numMonsInPage);
static bool8 DexScreen_FlipCategoryPageInDirection(u8 direction);
void DexScreen_DexPageZoomEffectFrame(u8 bg, u8 scale);
static u8 DexScreen_DrawMonDexPage(bool8 justRegistered);
u8 RemoveDexPageWindows(void);
u8 DexScreen_DrawMonAreaPage(void);
static bool8 DexScreen_IsPageUnlocked(u8 category, u8 pageNum);
static bool8 DexScreen_IsCategoryUnlocked(u8 category);
static u8 DexScreen_GetPageLimitsForCategory(u8 category);
static bool8 DexScreen_LookUpCategoryBySpecies(u16 species);
u8 DexScreen_DestroyAreaScreenResources(void);
void DexScreen_CreateCategoryPageSpeciesList(u8 category, u8 pageNum);
static u8 DexScreen_PageNumberToRenderablePages(u16 page);
void DexScreen_InputHandler_StartToCry(void);
void DexScreen_PrintStringWithAlignment(const u8 *str, s32 mode);
static void MoveCursorFunc_DexModeSelect(s32 itemIndex, bool8 onInit, struct ListMenu *list);
static void ItemPrintFunc_DexModeSelect(u8 windowId, u32 itemId, u8 y);
static void ItemPrintFunc_OrderedListMenu(u8 windowId, u32 itemId, u8 y);
static void Task_DexScreen_RegisterNonKantoMonBeforeNationalDex(u8 taskId);
static void Task_DexScreen_RegisterMonToPokedex(u8 taskId);

# 1 "src/data/pokemon_graphics/footprint_table.h" 1
const u8 *const gMonFootprintTable[] =
{
    [0] = gMonFootprint_Bulbasaur,
    [1] = gMonFootprint_Bulbasaur,
    [2] = gMonFootprint_Ivysaur,
    [3] = gMonFootprint_Venusaur,
    [4] = gMonFootprint_Charmander,
    [5] = gMonFootprint_Charmeleon,
    [6] = gMonFootprint_Charizard,
    [7] = gMonFootprint_Squirtle,
    [8] = gMonFootprint_Wartortle,
    [9] = gMonFootprint_Blastoise,
    [10] = gMonFootprint_Caterpie,
    [11] = gMonFootprint_Metapod,
    [12] = gMonFootprint_Butterfree,
    [13] = gMonFootprint_Weedle,
    [14] = gMonFootprint_Kakuna,
    [15] = gMonFootprint_Beedrill,
    [16] = gMonFootprint_Pidgey,
    [17] = gMonFootprint_Pidgeotto,
    [18] = gMonFootprint_Pidgeot,
    [19] = gMonFootprint_Rattata,
    [20] = gMonFootprint_Raticate,
    [21] = gMonFootprint_Spearow,
    [22] = gMonFootprint_Fearow,
    [23] = gMonFootprint_Ekans,
    [24] = gMonFootprint_Arbok,
    [25] = gMonFootprint_Pikachu,
    [26] = gMonFootprint_Raichu,
    [27] = gMonFootprint_Sandshrew,
    [28] = gMonFootprint_Sandslash,
    [29] = gMonFootprint_NidoranF,
    [30] = gMonFootprint_Nidorina,
    [31] = gMonFootprint_Nidoqueen,
    [32] = gMonFootprint_NidoranM,
    [33] = gMonFootprint_Nidorino,
    [34] = gMonFootprint_Nidoking,
    [35] = gMonFootprint_Clefairy,
    [36] = gMonFootprint_Clefable,
    [37] = gMonFootprint_Vulpix,
    [38] = gMonFootprint_Ninetales,
    [39] = gMonFootprint_Jigglypuff,
    [40] = gMonFootprint_Wigglytuff,
    [41] = gMonFootprint_Zubat,
    [42] = gMonFootprint_Golbat,
    [43] = gMonFootprint_Oddish,
    [44] = gMonFootprint_Gloom,
    [45] = gMonFootprint_Vileplume,
    [46] = gMonFootprint_Paras,
    [47] = gMonFootprint_Parasect,
    [48] = gMonFootprint_Venonat,
    [49] = gMonFootprint_Venomoth,
    [50] = gMonFootprint_Diglett,
    [51] = gMonFootprint_Dugtrio,
    [52] = gMonFootprint_Meowth,
    [53] = gMonFootprint_Persian,
    [54] = gMonFootprint_Psyduck,
    [55] = gMonFootprint_Golduck,
    [56] = gMonFootprint_Mankey,
    [57] = gMonFootprint_Primeape,
    [58] = gMonFootprint_Growlithe,
    [59] = gMonFootprint_Arcanine,
    [60] = gMonFootprint_Poliwag,
    [61] = gMonFootprint_Poliwhirl,
    [62] = gMonFootprint_Poliwrath,
    [63] = gMonFootprint_Abra,
    [64] = gMonFootprint_Kadabra,
    [65] = gMonFootprint_Alakazam,
    [66] = gMonFootprint_Machop,
    [67] = gMonFootprint_Machoke,
    [68] = gMonFootprint_Machamp,
    [69] = gMonFootprint_Bellsprout,
    [70] = gMonFootprint_Weepinbell,
    [71] = gMonFootprint_Victreebel,
    [72] = gMonFootprint_Tentacool,
    [73] = gMonFootprint_Tentacruel,
    [74] = gMonFootprint_Geodude,
    [75] = gMonFootprint_Graveler,
    [76] = gMonFootprint_Golem,
    [77] = gMonFootprint_Ponyta,
    [78] = gMonFootprint_Rapidash,
    [79] = gMonFootprint_Slowpoke,
    [80] = gMonFootprint_Slowbro,
    [81] = gMonFootprint_Magnemite,
    [82] = gMonFootprint_Magneton,
    [83] = gMonFootprint_Farfetchd,
    [84] = gMonFootprint_Doduo,
    [85] = gMonFootprint_Dodrio,
    [86] = gMonFootprint_Seel,
    [87] = gMonFootprint_Dewgong,
    [88] = gMonFootprint_Grimer,
    [89] = gMonFootprint_Muk,
    [90] = gMonFootprint_Shellder,
    [91] = gMonFootprint_Cloyster,
    [92] = gMonFootprint_Gastly,
    [93] = gMonFootprint_Haunter,
    [94] = gMonFootprint_Gengar,
    [95] = gMonFootprint_Onix,
    [96] = gMonFootprint_Drowzee,
    [97] = gMonFootprint_Hypno,
    [98] = gMonFootprint_Krabby,
    [99] = gMonFootprint_Kingler,
    [100] = gMonFootprint_Voltorb,
    [101] = gMonFootprint_Electrode,
    [102] = gMonFootprint_Exeggcute,
    [103] = gMonFootprint_Exeggutor,
    [104] = gMonFootprint_Cubone,
    [105] = gMonFootprint_Marowak,
    [106] = gMonFootprint_Hitmonlee,
    [107] = gMonFootprint_Hitmonchan,
    [108] = gMonFootprint_Lickitung,
    [109] = gMonFootprint_Koffing,
    [110] = gMonFootprint_Weezing,
    [111] = gMonFootprint_Rhyhorn,
    [112] = gMonFootprint_Rhydon,
    [113] = gMonFootprint_Chansey,
    [114] = gMonFootprint_Tangela,
    [115] = gMonFootprint_Kangaskhan,
    [116] = gMonFootprint_Horsea,
    [117] = gMonFootprint_Seadra,
    [118] = gMonFootprint_Goldeen,
    [119] = gMonFootprint_Seaking,
    [120] = gMonFootprint_Staryu,
    [121] = gMonFootprint_Starmie,
    [122] = gMonFootprint_Mrmime,
    [123] = gMonFootprint_Scyther,
    [124] = gMonFootprint_Jynx,
    [125] = gMonFootprint_Electabuzz,
    [126] = gMonFootprint_Magmar,
    [127] = gMonFootprint_Pinsir,
    [128] = gMonFootprint_Tauros,
    [129] = gMonFootprint_Magikarp,
    [130] = gMonFootprint_Gyarados,
    [131] = gMonFootprint_Lapras,
    [132] = gMonFootprint_Ditto,
    [133] = gMonFootprint_Eevee,
    [134] = gMonFootprint_Vaporeon,
    [135] = gMonFootprint_Jolteon,
    [136] = gMonFootprint_Flareon,
    [137] = gMonFootprint_Porygon,
    [138] = gMonFootprint_Omanyte,
    [139] = gMonFootprint_Omastar,
    [140] = gMonFootprint_Kabuto,
    [141] = gMonFootprint_Kabutops,
    [142] = gMonFootprint_Aerodactyl,
    [143] = gMonFootprint_Snorlax,
    [144] = gMonFootprint_Articuno,
    [145] = gMonFootprint_Zapdos,
    [146] = gMonFootprint_Moltres,
    [147] = gMonFootprint_Dratini,
    [148] = gMonFootprint_Dragonair,
    [149] = gMonFootprint_Dragonite,
    [150] = gMonFootprint_Mewtwo,
    [151] = gMonFootprint_Mew,
    [152] = gMonFootprint_Chikorita,
    [153] = gMonFootprint_Bayleef,
    [154] = gMonFootprint_Meganium,
    [155] = gMonFootprint_Cyndaquil,
    [156] = gMonFootprint_Quilava,
    [157] = gMonFootprint_Typhlosion,
    [158] = gMonFootprint_Totodile,
    [159] = gMonFootprint_Croconaw,
    [160] = gMonFootprint_Feraligatr,
    [161] = gMonFootprint_Sentret,
    [162] = gMonFootprint_Furret,
    [163] = gMonFootprint_Hoothoot,
    [164] = gMonFootprint_Noctowl,
    [165] = gMonFootprint_Ledyba,
    [166] = gMonFootprint_Ledian,
    [167] = gMonFootprint_Spinarak,
    [168] = gMonFootprint_Ariados,
    [169] = gMonFootprint_Crobat,
    [170] = gMonFootprint_Chinchou,
    [171] = gMonFootprint_Lanturn,
    [172] = gMonFootprint_Pichu,
    [173] = gMonFootprint_Cleffa,
    [174] = gMonFootprint_Igglybuff,
    [175] = gMonFootprint_Togepi,
    [176] = gMonFootprint_Togetic,
    [177] = gMonFootprint_Natu,
    [178] = gMonFootprint_Xatu,
    [179] = gMonFootprint_Mareep,
    [180] = gMonFootprint_Flaaffy,
    [181] = gMonFootprint_Ampharos,
    [182] = gMonFootprint_Bellossom,
    [183] = gMonFootprint_Marill,
    [184] = gMonFootprint_Azumarill,
    [185] = gMonFootprint_Sudowoodo,
    [186] = gMonFootprint_Politoed,
    [187] = gMonFootprint_Hoppip,
    [188] = gMonFootprint_Skiploom,
    [189] = gMonFootprint_Jumpluff,
    [190] = gMonFootprint_Aipom,
    [191] = gMonFootprint_Sunkern,
    [192] = gMonFootprint_Sunflora,
    [193] = gMonFootprint_Yanma,
    [194] = gMonFootprint_Wooper,
    [195] = gMonFootprint_Quagsire,
    [196] = gMonFootprint_Espeon,
    [197] = gMonFootprint_Umbreon,
    [198] = gMonFootprint_Murkrow,
    [199] = gMonFootprint_Slowking,
    [200] = gMonFootprint_Misdreavus,
    [201] = gMonFootprint_Unown,
    [202] = gMonFootprint_Wobbuffet,
    [203] = gMonFootprint_Girafarig,
    [204] = gMonFootprint_Pineco,
    [205] = gMonFootprint_Forretress,
    [206] = gMonFootprint_Dunsparce,
    [207] = gMonFootprint_Gligar,
    [208] = gMonFootprint_Steelix,
    [209] = gMonFootprint_Snubbull,
    [210] = gMonFootprint_Granbull,
    [211] = gMonFootprint_Qwilfish,
    [212] = gMonFootprint_Scizor,
    [213] = gMonFootprint_Shuckle,
    [214] = gMonFootprint_Heracross,
    [215] = gMonFootprint_Sneasel,
    [216] = gMonFootprint_Teddiursa,
    [217] = gMonFootprint_Ursaring,
    [218] = gMonFootprint_Slugma,
    [219] = gMonFootprint_Magcargo,
    [220] = gMonFootprint_Swinub,
    [221] = gMonFootprint_Piloswine,
    [222] = gMonFootprint_Corsola,
    [223] = gMonFootprint_Remoraid,
    [224] = gMonFootprint_Octillery,
    [225] = gMonFootprint_Delibird,
    [226] = gMonFootprint_Mantine,
    [227] = gMonFootprint_Skarmory,
    [228] = gMonFootprint_Houndour,
    [229] = gMonFootprint_Houndoom,
    [230] = gMonFootprint_Kingdra,
    [231] = gMonFootprint_Phanpy,
    [232] = gMonFootprint_Donphan,
    [233] = gMonFootprint_Porygon2,
    [234] = gMonFootprint_Stantler,
    [235] = gMonFootprint_Smeargle,
    [236] = gMonFootprint_Tyrogue,
    [237] = gMonFootprint_Hitmontop,
    [238] = gMonFootprint_Smoochum,
    [239] = gMonFootprint_Elekid,
    [240] = gMonFootprint_Magby,
    [241] = gMonFootprint_Miltank,
    [242] = gMonFootprint_Blissey,
    [243] = gMonFootprint_Raikou,
    [244] = gMonFootprint_Entei,
    [245] = gMonFootprint_Suicune,
    [246] = gMonFootprint_Larvitar,
    [247] = gMonFootprint_Pupitar,
    [248] = gMonFootprint_Tyranitar,
    [249] = gMonFootprint_Lugia,
    [250] = gMonFootprint_HoOh,
    [251] = gMonFootprint_Celebi,
    [252] = gMonFootprint_QuestionMark,
    [253] = gMonFootprint_QuestionMark,
    [254] = gMonFootprint_QuestionMark,
    [255] = gMonFootprint_QuestionMark,
    [256] = gMonFootprint_QuestionMark,
    [257] = gMonFootprint_QuestionMark,
    [258] = gMonFootprint_QuestionMark,
    [259] = gMonFootprint_QuestionMark,
    [260] = gMonFootprint_QuestionMark,
    [261] = gMonFootprint_QuestionMark,
    [262] = gMonFootprint_QuestionMark,
    [263] = gMonFootprint_QuestionMark,
    [264] = gMonFootprint_QuestionMark,
    [265] = gMonFootprint_QuestionMark,
    [266] = gMonFootprint_QuestionMark,
    [267] = gMonFootprint_QuestionMark,
    [268] = gMonFootprint_QuestionMark,
    [269] = gMonFootprint_QuestionMark,
    [270] = gMonFootprint_QuestionMark,
    [271] = gMonFootprint_QuestionMark,
    [272] = gMonFootprint_QuestionMark,
    [273] = gMonFootprint_QuestionMark,
    [274] = gMonFootprint_QuestionMark,
    [275] = gMonFootprint_QuestionMark,
    [276] = gMonFootprint_QuestionMark,
    [277] = gMonFootprint_Treecko,
    [278] = gMonFootprint_Grovyle,
    [279] = gMonFootprint_Sceptile,
    [280] = gMonFootprint_Torchic,
    [281] = gMonFootprint_Combusken,
    [282] = gMonFootprint_Blaziken,
    [283] = gMonFootprint_Mudkip,
    [284] = gMonFootprint_Marshtomp,
    [285] = gMonFootprint_Swampert,
    [286] = gMonFootprint_Poochyena,
    [287] = gMonFootprint_Mightyena,
    [288] = gMonFootprint_Zigzagoon,
    [289] = gMonFootprint_Linoone,
    [290] = gMonFootprint_Wurmple,
    [291] = gMonFootprint_Silcoon,
    [292] = gMonFootprint_Beautifly,
    [293] = gMonFootprint_Cascoon,
    [294] = gMonFootprint_Dustox,
    [295] = gMonFootprint_Lotad,
    [296] = gMonFootprint_Lombre,
    [297] = gMonFootprint_Ludicolo,
    [298] = gMonFootprint_Seedot,
    [299] = gMonFootprint_Nuzleaf,
    [300] = gMonFootprint_Shiftry,
    [301] = gMonFootprint_Nincada,
    [302] = gMonFootprint_Ninjask,
    [303] = gMonFootprint_Shedinja,
    [304] = gMonFootprint_Taillow,
    [305] = gMonFootprint_Swellow,
    [306] = gMonFootprint_Shroomish,
    [307] = gMonFootprint_Breloom,
    [308] = gMonFootprint_Spinda,
    [309] = gMonFootprint_Wingull,
    [310] = gMonFootprint_Pelipper,
    [311] = gMonFootprint_Surskit,
    [312] = gMonFootprint_Masquerain,
    [313] = gMonFootprint_Wailmer,
    [314] = gMonFootprint_Wailord,
    [315] = gMonFootprint_Skitty,
    [316] = gMonFootprint_Delcatty,
    [317] = gMonFootprint_Kecleon,
    [318] = gMonFootprint_Baltoy,
    [319] = gMonFootprint_Claydol,
    [320] = gMonFootprint_Nosepass,
    [321] = gMonFootprint_Torkoal,
    [322] = gMonFootprint_Sableye,
    [323] = gMonFootprint_Barboach,
    [324] = gMonFootprint_Whiscash,
    [325] = gMonFootprint_Luvdisc,
    [326] = gMonFootprint_Corphish,
    [327] = gMonFootprint_Crawdaunt,
    [328] = gMonFootprint_Feebas,
    [329] = gMonFootprint_Milotic,
    [330] = gMonFootprint_Carvanha,
    [331] = gMonFootprint_Sharpedo,
    [332] = gMonFootprint_Trapinch,
    [333] = gMonFootprint_Vibrava,
    [334] = gMonFootprint_Flygon,
    [335] = gMonFootprint_Makuhita,
    [336] = gMonFootprint_Hariyama,
    [337] = gMonFootprint_Electrike,
    [338] = gMonFootprint_Manectric,
    [339] = gMonFootprint_Numel,
    [340] = gMonFootprint_Camerupt,
    [341] = gMonFootprint_Spheal,
    [342] = gMonFootprint_Sealeo,
    [343] = gMonFootprint_Walrein,
    [344] = gMonFootprint_Cacnea,
    [345] = gMonFootprint_Cacturne,
    [346] = gMonFootprint_Snorunt,
    [347] = gMonFootprint_Glalie,
    [348] = gMonFootprint_Lunatone,
    [349] = gMonFootprint_Solrock,
    [350] = gMonFootprint_Azurill,
    [351] = gMonFootprint_Spoink,
    [352] = gMonFootprint_Grumpig,
    [353] = gMonFootprint_Plusle,
    [354] = gMonFootprint_Minun,
    [355] = gMonFootprint_Mawile,
    [356] = gMonFootprint_Meditite,
    [357] = gMonFootprint_Medicham,
    [358] = gMonFootprint_Swablu,
    [359] = gMonFootprint_Altaria,
    [360] = gMonFootprint_Wynaut,
    [361] = gMonFootprint_Duskull,
    [362] = gMonFootprint_Dusclops,
    [363] = gMonFootprint_Roselia,
    [364] = gMonFootprint_Slakoth,
    [365] = gMonFootprint_Vigoroth,
    [366] = gMonFootprint_Slaking,
    [367] = gMonFootprint_Gulpin,
    [368] = gMonFootprint_Swalot,
    [369] = gMonFootprint_Tropius,
    [370] = gMonFootprint_Whismur,
    [371] = gMonFootprint_Loudred,
    [372] = gMonFootprint_Exploud,
    [373] = gMonFootprint_Clamperl,
    [374] = gMonFootprint_Huntail,
    [375] = gMonFootprint_Gorebyss,
    [376] = gMonFootprint_Absol,
    [377] = gMonFootprint_Shuppet,
    [378] = gMonFootprint_Banette,
    [379] = gMonFootprint_Seviper,
    [380] = gMonFootprint_Zangoose,
    [381] = gMonFootprint_Relicanth,
    [382] = gMonFootprint_Aron,
    [383] = gMonFootprint_Lairon,
    [384] = gMonFootprint_Aggron,
    [385] = gMonFootprint_Castform,
    [386] = gMonFootprint_Volbeat,
    [387] = gMonFootprint_Illumise,
    [388] = gMonFootprint_Lileep,
    [389] = gMonFootprint_Cradily,
    [390] = gMonFootprint_Anorith,
    [391] = gMonFootprint_Armaldo,
    [392] = gMonFootprint_Ralts,
    [393] = gMonFootprint_Kirlia,
    [394] = gMonFootprint_Gardevoir,
    [395] = gMonFootprint_Bagon,
    [396] = gMonFootprint_Shelgon,
    [397] = gMonFootprint_Salamence,
    [398] = gMonFootprint_Beldum,
    [399] = gMonFootprint_Metang,
    [400] = gMonFootprint_Metagross,
    [401] = gMonFootprint_Regirock,
    [402] = gMonFootprint_Regice,
    [403] = gMonFootprint_Registeel,
    [404] = gMonFootprint_Kyogre,
    [405] = gMonFootprint_Groudon,
    [406] = gMonFootprint_Rayquaza,
    [407] = gMonFootprint_Latias,
    [408] = gMonFootprint_Latios,
    [409] = gMonFootprint_Jirachi,
    [410] = gMonFootprint_Deoxys,
    [411] = gMonFootprint_Chimecho,
    [413] = gMonFootprint_Bulbasaur,
    [412] = gMonFootprint_Litten,
};
# 142 "src/pokedex_screen.c" 2

const u32 sCategoryMonInfoBgTiles[] = INCBIN_U32("graphics/pokedex/mini_page.4bpp.lz");
const u32 sKantoDexTiles[] = INCBIN_U32("graphics/pokedex/kanto_dex_bgtiles.4bpp.lz");
const u32 sNatDexTiles[] = INCBIN_U32("graphics/pokedex/national_dex_bgtiles.4bpp.lz");
const u16 sKantoDexPalette[0x100] = INCBIN_U16("graphics/pokedex/kanto_dex_bgpals.gbapal");

const u16 sDexScreen_CategoryCursorPals[] = {
    ((24) | ((22) << 5) | ((17) << 10)), ((26) | ((24) << 5) | ((20) << 10)),
    ((26) | ((20) << 5) | ((15) << 10)), ((27) | ((23) << 5) | ((19) << 10)),
    ((28) | ((18) << 5) | ((15) << 10)), ((28) | ((22) << 5) | ((19) << 10)),
    ((30) | ((16) << 5) | ((13) << 10)), ((29) | ((21) << 5) | ((18) << 10)),
    ((28) | ((18) << 5) | ((15) << 10)), ((28) | ((22) << 5) | ((19) << 10)),
    ((26) | ((20) << 5) | ((15) << 10)), ((27) | ((23) << 5) | ((19) << 10))
};

const u16 sNationalDexPalette[0x100] = INCBIN_U16("graphics/pokedex/national_dex_bgpals.gbapal");
const u32 sTopMenuIconTiles_Cave[] = INCBIN_U32("graphics/pokedex/cat_icon_cave.4bpp.lz");
const u32 sTopMenuIconTiles_Urban[] = INCBIN_U32("graphics/pokedex/cat_icon_urban.4bpp.lz");
const u32 sTopMenuSelectionIconTiles_Cancel[] = INCBIN_U32("graphics/pokedex/cat_icon_cancel.4bpp.lz");
const u32 sTopMenuIconTiles_Forest[] = INCBIN_U32("graphics/pokedex/cat_icon_forest.4bpp.lz");
const u32 sTopMenuIconTiles_Grassland[] = INCBIN_U32("graphics/pokedex/cat_icon_grassland.4bpp.lz");
const u32 sTopMenuIconTiles_QuestionMark[] = INCBIN_U32("graphics/pokedex/cat_icon_qmark.4bpp.lz");
const u32 sTopMenuIconTiles_Mountain[] = INCBIN_U32("graphics/pokedex/cat_icon_mountain.4bpp.lz");
const u32 sTopMenuIconTiles_Rare[] = INCBIN_U32("graphics/pokedex/cat_icon_rare.4bpp.lz");
const u32 sTopMenuIconTiles_Sea[] = INCBIN_U32("graphics/pokedex/cat_icon_sea.4bpp.lz");
const u32 sTopMenuIconTiles_Numerical[] = INCBIN_U32("graphics/pokedex/cat_icon_numerical.4bpp.lz");
const u32 sTopMenuIconTiles_RoughTerrain[] = INCBIN_U32("graphics/pokedex/cat_icon_rough_terrain.4bpp.lz");
const u32 sTopMenuIconTiles_WatersEdge[] = INCBIN_U32("graphics/pokedex/cat_icon_waters_edge.4bpp.lz");
const u32 sTopMenuIconTiles_Type[] = INCBIN_U32("graphics/pokedex/cat_icon_type.4bpp.lz");
const u32 sTopMenuIconTiles_Lightest[] = INCBIN_U32("graphics/pokedex/cat_icon_lightest.4bpp.lz");
const u32 sTopMenuIconTiles_Smallest[] = INCBIN_U32("graphics/pokedex/cat_icon_smallest.4bpp.lz");
const u16 sTopMenuIconPals_Cave[] = INCBIN_U16("graphics/pokedex/cat_icon_cave.gbapal");
const u16 sTopMenuIconPals_Urban[] = INCBIN_U16("graphics/pokedex/cat_icon_urban.gbapal");
const u16 sTopMenuSelectionIconPals_Cancel[] = INCBIN_U16("graphics/pokedex/cat_icon_cancel.gbapal");
const u16 sTopMenuIconPals_Forest[] = INCBIN_U16("graphics/pokedex/cat_icon_forest.gbapal");
const u16 sTopMenuIconPals_Grassland[] = INCBIN_U16("graphics/pokedex/cat_icon_grassland.gbapal");
const u16 sTopMenuIconPals_QuestionMark[] = INCBIN_U16("graphics/pokedex/cat_icon_qmark.gbapal");
const u16 sTopMenuIconPals_Mountain[] = INCBIN_U16("graphics/pokedex/cat_icon_mountain.gbapal");
const u16 sTopMenuIconPals_Rare[] = INCBIN_U16("graphics/pokedex/cat_icon_rare.gbapal");
const u16 sTopMenuIconPals_Sea[] = INCBIN_U16("graphics/pokedex/cat_icon_sea.gbapal");
const u16 sTopMenuIconPals_Numerical[] = INCBIN_U16("graphics/pokedex/cat_icon_numerical.gbapal");
const u16 sTopMenuIconPals_RoughTerrain[] = INCBIN_U16("graphics/pokedex/cat_icon_rough_terrain.gbapal");
const u16 sTopMenuIconPals_WatersEdge[] = INCBIN_U16("graphics/pokedex/cat_icon_waters_edge.gbapal");
const u16 sTopMenuIconPals_Type[] = INCBIN_U16("graphics/pokedex/cat_icon_type.gbapal");
const u16 sTopMenuIconPals_Lightest[] = INCBIN_U16("graphics/pokedex/cat_icon_lightest.gbapal");
const u16 sTopMenuIconPals_Smallest[] = INCBIN_U16("graphics/pokedex/cat_icon_smallest.gbapal");
const u8 sDexScreen_CaughtIcon[] = INCBIN_U8("graphics/pokedex/caught_marker.4bpp");
const u32 sTilemap_AreaMap_Kanto[] = INCBIN_U32("graphics/pokedex/map_kanto.4bpp.lz");
const u32 sTilemap_AreaMap_OneIsland[] = INCBIN_U32("graphics/pokedex/map_one_island.4bpp.lz");
const u32 sTilemap_AreaMap_TwoIsland[] = INCBIN_U32("graphics/pokedex/map_two_island.4bpp.lz");
const u32 sTilemap_AreaMap_ThreeIsland[] = INCBIN_U32("graphics/pokedex/map_three_island.4bpp.lz");
const u32 sTilemap_AreaMap_FourIsland[] = INCBIN_U32("graphics/pokedex/map_four_island.4bpp.lz");
const u32 sTilemap_AreaMap_FiveIsland[] = INCBIN_U32("graphics/pokedex/map_five_island.4bpp.lz");
const u32 sTilemap_AreaMap_SixIsland[] = INCBIN_U32("graphics/pokedex/map_six_island.4bpp.lz");
const u32 sTilemap_AreaMap_SevenIsland[] = INCBIN_U32("graphics/pokedex/map_seven_island.4bpp.lz");
const u16 sBlitTiles_WideEllipse[] = INCBIN_U16("graphics/pokedex/blit_wide_ellipse.4bpp");

# 1 "src/data/pokemon/pokedex_orders.h" 1
const u16 gPokedexOrder_Alphabetical[] =
{
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

    NATIONAL_DEX_ABRA,
    NATIONAL_DEX_ABSOL,
    NATIONAL_DEX_AERODACTYL,
    NATIONAL_DEX_AGGRON,
    NATIONAL_DEX_AIPOM,
    NATIONAL_DEX_ALAKAZAM,
    NATIONAL_DEX_ALTARIA,
    NATIONAL_DEX_AMPHAROS,
    NATIONAL_DEX_ANORITH,
    NATIONAL_DEX_ARBOK,
    NATIONAL_DEX_ARCANINE,
    NATIONAL_DEX_ARIADOS,
    NATIONAL_DEX_ARMALDO,
    NATIONAL_DEX_ARON,
    NATIONAL_DEX_ARTICUNO,
    NATIONAL_DEX_AZUMARILL,
    NATIONAL_DEX_AZURILL,
    NATIONAL_DEX_BAGON,
    NATIONAL_DEX_BALTOY,
    NATIONAL_DEX_BANETTE,
    NATIONAL_DEX_BARBOACH,
    NATIONAL_DEX_BAYLEEF,
    NATIONAL_DEX_BEAUTIFLY,
    NATIONAL_DEX_BEEDRILL,
    NATIONAL_DEX_BELDUM,
    NATIONAL_DEX_BELLOSSOM,
    NATIONAL_DEX_BELLSPROUT,
    NATIONAL_DEX_BLASTOISE,
    NATIONAL_DEX_BLAZIKEN,
    NATIONAL_DEX_BLISSEY,
    NATIONAL_DEX_BRELOOM,
    NATIONAL_DEX_BULBASAUR,
    NATIONAL_DEX_BUTTERFREE,
    NATIONAL_DEX_CACNEA,
    NATIONAL_DEX_CACTURNE,
    NATIONAL_DEX_CAMERUPT,
    NATIONAL_DEX_CARVANHA,
    NATIONAL_DEX_CASCOON,
    NATIONAL_DEX_CASTFORM,
    NATIONAL_DEX_CATERPIE,
    NATIONAL_DEX_CELEBI,
    NATIONAL_DEX_CHANSEY,
    NATIONAL_DEX_CHARIZARD,
    NATIONAL_DEX_CHARMANDER,
    NATIONAL_DEX_CHARMELEON,
    NATIONAL_DEX_CHIKORITA,
    NATIONAL_DEX_CHIMECHO,
    NATIONAL_DEX_CHINCHOU,
    NATIONAL_DEX_CLAMPERL,
    NATIONAL_DEX_CLAYDOL,
    NATIONAL_DEX_CLEFABLE,
    NATIONAL_DEX_CLEFAIRY,
    NATIONAL_DEX_CLEFFA,
    NATIONAL_DEX_CLOYSTER,
    NATIONAL_DEX_COMBUSKEN,
    NATIONAL_DEX_CORPHISH,
    NATIONAL_DEX_CORSOLA,
    NATIONAL_DEX_CRADILY,
    NATIONAL_DEX_CRAWDAUNT,
    NATIONAL_DEX_CROBAT,
    NATIONAL_DEX_CROCONAW,
    NATIONAL_DEX_CUBONE,
    NATIONAL_DEX_CYNDAQUIL,
    NATIONAL_DEX_DELCATTY,
    NATIONAL_DEX_DELIBIRD,
    NATIONAL_DEX_DEOXYS,
    NATIONAL_DEX_DEWGONG,
    NATIONAL_DEX_DIGLETT,
    NATIONAL_DEX_DITTO,
    NATIONAL_DEX_DODRIO,
    NATIONAL_DEX_DODUO,
    NATIONAL_DEX_DONPHAN,
    NATIONAL_DEX_DRAGONAIR,
    NATIONAL_DEX_DRAGONITE,
    NATIONAL_DEX_DRATINI,
    NATIONAL_DEX_DROWZEE,
    NATIONAL_DEX_DUGTRIO,
    NATIONAL_DEX_DUNSPARCE,
    NATIONAL_DEX_DUSCLOPS,
    NATIONAL_DEX_DUSKULL,
    NATIONAL_DEX_DUSTOX,
    NATIONAL_DEX_EEVEE,
    NATIONAL_DEX_EKANS,
    NATIONAL_DEX_ELECTABUZZ,
    NATIONAL_DEX_ELECTRIKE,
    NATIONAL_DEX_ELECTRODE,
    NATIONAL_DEX_ELEKID,
    NATIONAL_DEX_ENTEI,
    NATIONAL_DEX_ESPEON,
    NATIONAL_DEX_EXEGGCUTE,
    NATIONAL_DEX_EXEGGUTOR,
    NATIONAL_DEX_EXPLOUD,
    NATIONAL_DEX_FARFETCHD,
    NATIONAL_DEX_FEAROW,
    NATIONAL_DEX_FEEBAS,
    NATIONAL_DEX_FERALIGATR,
    NATIONAL_DEX_FLAAFFY,
    NATIONAL_DEX_FLAREON,
    NATIONAL_DEX_FLYGON,
    NATIONAL_DEX_FORRETRESS,
    NATIONAL_DEX_FURRET,
    NATIONAL_DEX_GARDEVOIR,
    NATIONAL_DEX_GASTLY,
    NATIONAL_DEX_GENGAR,
    NATIONAL_DEX_GEODUDE,
    NATIONAL_DEX_GIRAFARIG,
    NATIONAL_DEX_GLALIE,
    NATIONAL_DEX_GLIGAR,
    NATIONAL_DEX_GLOOM,
    NATIONAL_DEX_GOLBAT,
    NATIONAL_DEX_GOLDEEN,
    NATIONAL_DEX_GOLDUCK,
    NATIONAL_DEX_GOLEM,
    NATIONAL_DEX_GOREBYSS,
    NATIONAL_DEX_GRANBULL,
    NATIONAL_DEX_GRAVELER,
    NATIONAL_DEX_GRIMER,
    NATIONAL_DEX_GROUDON,
    NATIONAL_DEX_GROVYLE,
    NATIONAL_DEX_GROWLITHE,
    NATIONAL_DEX_GRUMPIG,
    NATIONAL_DEX_GULPIN,
    NATIONAL_DEX_GYARADOS,
    NATIONAL_DEX_HARIYAMA,
    NATIONAL_DEX_HAUNTER,
    NATIONAL_DEX_HERACROSS,
    NATIONAL_DEX_HITMONCHAN,
    NATIONAL_DEX_HITMONLEE,
    NATIONAL_DEX_HITMONTOP,
    NATIONAL_DEX_HO_OH,
    NATIONAL_DEX_HOOTHOOT,
    NATIONAL_DEX_HOPPIP,
    NATIONAL_DEX_HORSEA,
    NATIONAL_DEX_HOUNDOOM,
    NATIONAL_DEX_HOUNDOUR,
    NATIONAL_DEX_HUNTAIL,
    NATIONAL_DEX_HYPNO,
    NATIONAL_DEX_IGGLYBUFF,
    NATIONAL_DEX_ILLUMISE,
    NATIONAL_DEX_IVYSAUR,
    NATIONAL_DEX_JIGGLYPUFF,
    NATIONAL_DEX_JIRACHI,
    NATIONAL_DEX_JOLTEON,
    NATIONAL_DEX_JUMPLUFF,
    NATIONAL_DEX_JYNX,
    NATIONAL_DEX_KABUTO,
    NATIONAL_DEX_KABUTOPS,
    NATIONAL_DEX_KADABRA,
    NATIONAL_DEX_KAKUNA,
    NATIONAL_DEX_KANGASKHAN,
    NATIONAL_DEX_KECLEON,
    NATIONAL_DEX_KINGDRA,
    NATIONAL_DEX_KINGLER,
    NATIONAL_DEX_KIRLIA,
    NATIONAL_DEX_KOFFING,
    NATIONAL_DEX_KRABBY,
    NATIONAL_DEX_KYOGRE,
    NATIONAL_DEX_LAIRON,
    NATIONAL_DEX_LANTURN,
    NATIONAL_DEX_LAPRAS,
    NATIONAL_DEX_LARVITAR,
    NATIONAL_DEX_LATIAS,
    NATIONAL_DEX_LATIOS,
    NATIONAL_DEX_LEDIAN,
    NATIONAL_DEX_LEDYBA,
    NATIONAL_DEX_LICKITUNG,
    NATIONAL_DEX_LILEEP,
    NATIONAL_DEX_LINOONE,
    NATIONAL_DEX_LITTEN,
    NATIONAL_DEX_LOMBRE,
    NATIONAL_DEX_LOTAD,
    NATIONAL_DEX_LOUDRED,
    NATIONAL_DEX_LUDICOLO,
    NATIONAL_DEX_LUGIA,
    NATIONAL_DEX_LUNATONE,
    NATIONAL_DEX_LUVDISC,
    NATIONAL_DEX_MACHAMP,
    NATIONAL_DEX_MACHOKE,
    NATIONAL_DEX_MACHOP,
    NATIONAL_DEX_MAGBY,
    NATIONAL_DEX_MAGCARGO,
    NATIONAL_DEX_MAGIKARP,
    NATIONAL_DEX_MAGMAR,
    NATIONAL_DEX_MAGNEMITE,
    NATIONAL_DEX_MAGNETON,
    NATIONAL_DEX_MAKUHITA,
    NATIONAL_DEX_MANECTRIC,
    NATIONAL_DEX_MANKEY,
    NATIONAL_DEX_MANTINE,
    NATIONAL_DEX_MAREEP,
    NATIONAL_DEX_MARILL,
    NATIONAL_DEX_MAROWAK,
    NATIONAL_DEX_MARSHTOMP,
    NATIONAL_DEX_MASQUERAIN,
    NATIONAL_DEX_MAWILE,
    NATIONAL_DEX_MEDICHAM,
    NATIONAL_DEX_MEDITITE,
    NATIONAL_DEX_MEGANIUM,
    NATIONAL_DEX_MEOWTH,
    NATIONAL_DEX_METAGROSS,
    NATIONAL_DEX_METANG,
    NATIONAL_DEX_METAPOD,
    NATIONAL_DEX_MEW,
    NATIONAL_DEX_MEWTWO,
    NATIONAL_DEX_MIGHTYENA,
    NATIONAL_DEX_MILOTIC,
    NATIONAL_DEX_MILTANK,
    NATIONAL_DEX_MINUN,
    NATIONAL_DEX_MISDREAVUS,
    NATIONAL_DEX_MOLTRES,
    NATIONAL_DEX_MR_MIME,
    NATIONAL_DEX_MUDKIP,
    NATIONAL_DEX_MUK,
    NATIONAL_DEX_MURKROW,
    NATIONAL_DEX_NATU,
    NATIONAL_DEX_NIDOKING,
    NATIONAL_DEX_NIDOQUEEN,
    NATIONAL_DEX_NIDORAN_F,
    NATIONAL_DEX_NIDORAN_M,
    NATIONAL_DEX_NIDORINA,
    NATIONAL_DEX_NIDORINO,
    NATIONAL_DEX_NINCADA,
    NATIONAL_DEX_NINETALES,
    NATIONAL_DEX_NINJASK,
    NATIONAL_DEX_NOCTOWL,
    NATIONAL_DEX_NOSEPASS,
    NATIONAL_DEX_NUMEL,
    NATIONAL_DEX_NUZLEAF,
    NATIONAL_DEX_OCTILLERY,
    NATIONAL_DEX_ODDISH,
    NATIONAL_DEX_OMANYTE,
    NATIONAL_DEX_OMASTAR,
    NATIONAL_DEX_ONIX,
    NATIONAL_DEX_PARAS,
    NATIONAL_DEX_PARASECT,
    NATIONAL_DEX_PELIPPER,
    NATIONAL_DEX_PERSIAN,
    NATIONAL_DEX_PHANPY,
    NATIONAL_DEX_PICHU,
    NATIONAL_DEX_PIDGEOT,
    NATIONAL_DEX_PIDGEOTTO,
    NATIONAL_DEX_PIDGEY,
    NATIONAL_DEX_PIKACHU,
    NATIONAL_DEX_PILOSWINE,
    NATIONAL_DEX_PINECO,
    NATIONAL_DEX_PINSIR,
    NATIONAL_DEX_PLUSLE,
    NATIONAL_DEX_POLITOED,
    NATIONAL_DEX_POLIWAG,
    NATIONAL_DEX_POLIWHIRL,
    NATIONAL_DEX_POLIWRATH,
    NATIONAL_DEX_PONYTA,
    NATIONAL_DEX_POOCHYENA,
    NATIONAL_DEX_PORYGON,
    NATIONAL_DEX_PORYGON2,
    NATIONAL_DEX_PRIMEAPE,
    NATIONAL_DEX_PSYDUCK,
    NATIONAL_DEX_PUPITAR,
    NATIONAL_DEX_QUAGSIRE,
    NATIONAL_DEX_QUILAVA,
    NATIONAL_DEX_QWILFISH,
    NATIONAL_DEX_RAICHU,
    NATIONAL_DEX_RAIKOU,
    NATIONAL_DEX_RALTS,
    NATIONAL_DEX_RAPIDASH,
    NATIONAL_DEX_RATICATE,
    NATIONAL_DEX_RATTATA,
    NATIONAL_DEX_RAYQUAZA,
    NATIONAL_DEX_REGICE,
    NATIONAL_DEX_REGIROCK,
    NATIONAL_DEX_REGISTEEL,
    NATIONAL_DEX_RELICANTH,
    NATIONAL_DEX_REMORAID,
    NATIONAL_DEX_RHYDON,
    NATIONAL_DEX_RHYHORN,
    NATIONAL_DEX_ROSELIA,
    NATIONAL_DEX_SABLEYE,
    NATIONAL_DEX_SALAMENCE,
    NATIONAL_DEX_SANDSHREW,
    NATIONAL_DEX_SANDSLASH,
    NATIONAL_DEX_SCEPTILE,
    NATIONAL_DEX_SCIZOR,
    NATIONAL_DEX_SCYTHER,
    NATIONAL_DEX_SEADRA,
    NATIONAL_DEX_SEAKING,
    NATIONAL_DEX_SEALEO,
    NATIONAL_DEX_SEEDOT,
    NATIONAL_DEX_SEEL,
    NATIONAL_DEX_SENTRET,
    NATIONAL_DEX_SEVIPER,
    NATIONAL_DEX_SHARPEDO,
    NATIONAL_DEX_SHEDINJA,
    NATIONAL_DEX_SHELGON,
    NATIONAL_DEX_SHELLDER,
    NATIONAL_DEX_SHIFTRY,
    NATIONAL_DEX_SHROOMISH,
    NATIONAL_DEX_SHUCKLE,
    NATIONAL_DEX_SHUPPET,
    NATIONAL_DEX_SILCOON,
    NATIONAL_DEX_SKARMORY,
    NATIONAL_DEX_SKIPLOOM,
    NATIONAL_DEX_SKITTY,
    NATIONAL_DEX_SLAKING,
    NATIONAL_DEX_SLAKOTH,
    NATIONAL_DEX_SLOWBRO,
    NATIONAL_DEX_SLOWKING,
    NATIONAL_DEX_SLOWPOKE,
    NATIONAL_DEX_SLUGMA,
    NATIONAL_DEX_SMEARGLE,
    NATIONAL_DEX_SMOOCHUM,
    NATIONAL_DEX_SNEASEL,
    NATIONAL_DEX_SNORLAX,
    NATIONAL_DEX_SNORUNT,
    NATIONAL_DEX_SNUBBULL,
    NATIONAL_DEX_SOLROCK,
    NATIONAL_DEX_SPEAROW,
    NATIONAL_DEX_SPHEAL,
    NATIONAL_DEX_SPINARAK,
    NATIONAL_DEX_SPINDA,
    NATIONAL_DEX_SPOINK,
    NATIONAL_DEX_SQUIRTLE,
    NATIONAL_DEX_STANTLER,
    NATIONAL_DEX_STARMIE,
    NATIONAL_DEX_STARYU,
    NATIONAL_DEX_STEELIX,
    NATIONAL_DEX_SUDOWOODO,
    NATIONAL_DEX_SUICUNE,
    NATIONAL_DEX_SUNFLORA,
    NATIONAL_DEX_SUNKERN,
    NATIONAL_DEX_SURSKIT,
    NATIONAL_DEX_SWABLU,
    NATIONAL_DEX_SWALOT,
    NATIONAL_DEX_SWAMPERT,
    NATIONAL_DEX_SWELLOW,
    NATIONAL_DEX_SWINUB,
    NATIONAL_DEX_TAILLOW,
    NATIONAL_DEX_TANGELA,
    NATIONAL_DEX_TAUROS,
    NATIONAL_DEX_TEDDIURSA,
    NATIONAL_DEX_TENTACOOL,
    NATIONAL_DEX_TENTACRUEL,
    NATIONAL_DEX_TOGEPI,
    NATIONAL_DEX_TOGETIC,
    NATIONAL_DEX_TORCHIC,
    NATIONAL_DEX_TORKOAL,
    NATIONAL_DEX_TOTODILE,
    NATIONAL_DEX_TRAPINCH,
    NATIONAL_DEX_TREECKO,
    NATIONAL_DEX_TROPIUS,
    NATIONAL_DEX_TYPHLOSION,
    NATIONAL_DEX_TYRANITAR,
    NATIONAL_DEX_TYROGUE,
    NATIONAL_DEX_UMBREON,
    NATIONAL_DEX_UNOWN,
    NATIONAL_DEX_URSARING,
    NATIONAL_DEX_VAPOREON,
    NATIONAL_DEX_VENOMOTH,
    NATIONAL_DEX_VENONAT,
    NATIONAL_DEX_VENUSAUR,
    NATIONAL_DEX_VIBRAVA,
    NATIONAL_DEX_VICTREEBEL,
    NATIONAL_DEX_VIGOROTH,
    NATIONAL_DEX_VILEPLUME,
    NATIONAL_DEX_VOLBEAT,
    NATIONAL_DEX_VOLTORB,
    NATIONAL_DEX_VULPIX,
    NATIONAL_DEX_WAILMER,
    NATIONAL_DEX_WAILORD,
    NATIONAL_DEX_WALREIN,
    NATIONAL_DEX_WARTORTLE,
    NATIONAL_DEX_WEEDLE,
    NATIONAL_DEX_WEEPINBELL,
    NATIONAL_DEX_WEEZING,
    NATIONAL_DEX_WHISCASH,
    NATIONAL_DEX_WHISMUR,
    NATIONAL_DEX_WIGGLYTUFF,
    NATIONAL_DEX_WINGULL,
    NATIONAL_DEX_WOBBUFFET,
    NATIONAL_DEX_WOOPER,
    NATIONAL_DEX_WURMPLE,
    NATIONAL_DEX_WYNAUT,
    NATIONAL_DEX_XATU,
    NATIONAL_DEX_YANMA,
    NATIONAL_DEX_ZANGOOSE,
    NATIONAL_DEX_ZAPDOS,
    NATIONAL_DEX_ZIGZAGOON,
    NATIONAL_DEX_ZUBAT
};

const u16 gPokedexOrder_Weight[] =
{
    NATIONAL_DEX_GASTLY,
    NATIONAL_DEX_HAUNTER,
    NATIONAL_DEX_HOPPIP,
    NATIONAL_DEX_DIGLETT,
    NATIONAL_DEX_CASTFORM,
    NATIONAL_DEX_KOFFING,
    NATIONAL_DEX_IGGLYBUFF,
    NATIONAL_DEX_MISDREAVUS,
    NATIONAL_DEX_CHIMECHO,
    NATIONAL_DEX_SKIPLOOM,
    NATIONAL_DEX_JIRACHI,
    NATIONAL_DEX_SWABLU,
    NATIONAL_DEX_SHEDINJA,
    NATIONAL_DEX_TOGEPI,
    NATIONAL_DEX_SURSKIT,
    NATIONAL_DEX_PIDGEY,
    NATIONAL_DEX_SUNKERN,
    NATIONAL_DEX_BARBOACH,
    NATIONAL_DEX_PICHU,
    NATIONAL_DEX_AZURILL,
    NATIONAL_DEX_ROSELIA,
    NATIONAL_DEX_NATU,
    NATIONAL_DEX_SPEAROW,
    NATIONAL_DEX_MURKROW,
    NATIONAL_DEX_SHUPPET,
    NATIONAL_DEX_TAILLOW,
    NATIONAL_DEX_EXEGGCUTE,
    NATIONAL_DEX_TORCHIC,
    NATIONAL_DEX_LOTAD,
    NATIONAL_DEX_CATERPIE,
    NATIONAL_DEX_JUMPLUFF,
    NATIONAL_DEX_CLEFFA,
    NATIONAL_DEX_WEEDLE,
    NATIONAL_DEX_TOGETIC,
    NATIONAL_DEX_DRATINI,
    NATIONAL_DEX_RATTATA,
    NATIONAL_DEX_MASQUERAIN,
    NATIONAL_DEX_WURMPLE,
    NATIONAL_DEX_QWILFISH,
    NATIONAL_DEX_MEW,
    NATIONAL_DEX_SHELLDER,
    NATIONAL_DEX_SEEDOT,
    NATIONAL_DEX_DITTO,
    NATIONAL_DEX_BELLSPROUT,
    NATIONAL_DEX_PLUSLE,
    NATIONAL_DEX_MEOWTH,
    NATIONAL_DEX_MINUN,
    NATIONAL_DEX_SHROOMISH,
    NATIONAL_DEX_CELEBI,
    NATIONAL_DEX_CORSOLA,
    NATIONAL_DEX_TREECKO,
    NATIONAL_DEX_SPINDA,
    NATIONAL_DEX_UNOWN,
    NATIONAL_DEX_PARAS,
    NATIONAL_DEX_ODDISH,
    NATIONAL_DEX_JIGGLYPUFF,
    NATIONAL_DEX_NINCADA,
    NATIONAL_DEX_BELLOSSOM,
    NATIONAL_DEX_MAGNEMITE,
    NATIONAL_DEX_PIKACHU,
    NATIONAL_DEX_SMOOCHUM,
    NATIONAL_DEX_SENTRET,
    NATIONAL_DEX_WEEPINBELL,
    NATIONAL_DEX_CHIKORITA,
    NATIONAL_DEX_SWINUB,
    NATIONAL_DEX_EEVEE,
    NATIONAL_DEX_KRABBY,
    NATIONAL_DEX_CUBONE,
    NATIONAL_DEX_RALTS,
    NATIONAL_DEX_BULBASAUR,
    NATIONAL_DEX_EKANS,
    NATIONAL_DEX_NIDORAN_F,
    NATIONAL_DEX_PINECO,
    NATIONAL_DEX_FEEBAS,
    NATIONAL_DEX_OMANYTE,
    NATIONAL_DEX_ZUBAT,
    NATIONAL_DEX_CLEFAIRY,
    NATIONAL_DEX_MUDKIP,
    NATIONAL_DEX_SNUBBULL,
    NATIONAL_DEX_MAREEP,
    NATIONAL_DEX_CYNDAQUIL,
    NATIONAL_DEX_HORSEA,
    NATIONAL_DEX_CHARMANDER,
    NATIONAL_DEX_SUNFLORA,
    NATIONAL_DEX_MARILL,
    NATIONAL_DEX_WOOPER,
    NATIONAL_DEX_SPINARAK,
    NATIONAL_DEX_GLOOM,
    NATIONAL_DEX_LUVDISC,
    NATIONAL_DEX_TEDDIURSA,
    NATIONAL_DEX_NIDORAN_M,
    NATIONAL_DEX_SQUIRTLE,
    NATIONAL_DEX_WINGULL,
    NATIONAL_DEX_TOTODILE,
    NATIONAL_DEX_WEEZING,
    NATIONAL_DEX_VULPIX,
    NATIONAL_DEX_METAPOD,
    NATIONAL_DEX_SILCOON,
    NATIONAL_DEX_MAGIKARP,
    NATIONAL_DEX_KAKUNA,
    NATIONAL_DEX_GULPIN,
    NATIONAL_DEX_VOLTORB,
    NATIONAL_DEX_LEDYBA,
    NATIONAL_DEX_HOUNDOUR,
    NATIONAL_DEX_SKITTY,
    NATIONAL_DEX_SABLEYE,
    NATIONAL_DEX_MEDITITE,
    NATIONAL_DEX_CORPHISH,
    NATIONAL_DEX_AIPOM,
    NATIONAL_DEX_CASCOON,
    NATIONAL_DEX_MAWILE,
    NATIONAL_DEX_KABUTO,
    NATIONAL_DEX_WIGGLYTUFF,
    NATIONAL_DEX_SANDSHREW,
    NATIONAL_DEX_REMORAID,
    NATIONAL_DEX_NINJASK,
    NATIONAL_DEX_CHINCHOU,
    NATIONAL_DEX_POLIWAG,
    NATIONAL_DEX_ANORITH,
    NATIONAL_DEX_VENOMOTH,
    NATIONAL_DEX_BANETTE,
    NATIONAL_DEX_IVYSAUR,
    NATIONAL_DEX_FLAAFFY,
    NATIONAL_DEX_POOCHYENA,
    NATIONAL_DEX_WYNAUT,
    NATIONAL_DEX_DUNSPARCE,
    NATIONAL_DEX_XATU,
    NATIONAL_DEX_DUSKULL,
    NATIONAL_DEX_FARFETCHD,
    NATIONAL_DEX_TRAPINCH,
    NATIONAL_DEX_GOLDEEN,
    NATIONAL_DEX_ELECTRIKE,
    NATIONAL_DEX_VIBRAVA,
    NATIONAL_DEX_VICTREEBEL,
    NATIONAL_DEX_BAYLEEF,
    NATIONAL_DEX_DELIBIRD,
    NATIONAL_DEX_WHISMUR,
    NATIONAL_DEX_DRAGONAIR,
    NATIONAL_DEX_SNORUNT,
    NATIONAL_DEX_ZIGZAGOON,
    NATIONAL_DEX_ILLUMISE,
    NATIONAL_DEX_VOLBEAT,
    NATIONAL_DEX_RATICATE,
    NATIONAL_DEX_VILEPLUME,
    NATIONAL_DEX_QUILAVA,
    NATIONAL_DEX_CHARMELEON,
    NATIONAL_DEX_GROWLITHE,
    NATIONAL_DEX_COMBUSKEN,
    NATIONAL_DEX_MACHOP,
    NATIONAL_DEX_ABRA,
    NATIONAL_DEX_NIDORINO,
    NATIONAL_DEX_PSYDUCK,
    NATIONAL_DEX_SWELLOW,
    NATIONAL_DEX_NINETALES,
    NATIONAL_DEX_NIDORINA,
    NATIONAL_DEX_POLIWHIRL,
    NATIONAL_DEX_GEODUDE,
    NATIONAL_DEX_KIRLIA,
    NATIONAL_DEX_SHUCKLE,
    NATIONAL_DEX_ALTARIA,
    NATIONAL_DEX_CARVANHA,
    NATIONAL_DEX_TYROGUE,
    NATIONAL_DEX_HOOTHOOT,
    NATIONAL_DEX_MAGBY,
    NATIONAL_DEX_BALTOY,
    NATIONAL_DEX_GROVYLE,
    NATIONAL_DEX_KECLEON,
    NATIONAL_DEX_LANTURN,
    NATIONAL_DEX_WARTORTLE,
    NATIONAL_DEX_GOREBYSS,
    NATIONAL_DEX_RELICANTH,
    NATIONAL_DEX_ELEKID,
    NATIONAL_DEX_WHISCASH,
    NATIONAL_DEX_LILEEP,
    NATIONAL_DEX_NUMEL,
    NATIONAL_DEX_SLAKOTH,
    NATIONAL_DEX_JOLTEON,
    NATIONAL_DEX_CROCONAW,
    NATIONAL_DEX_FLAREON,
    NATIONAL_DEX_SEADRA,
    NATIONAL_DEX_ESPEON,
    NATIONAL_DEX_HUNTAIL,
    NATIONAL_DEX_UMBREON,
    NATIONAL_DEX_MARSHTOMP,
    NATIONAL_DEX_NUZLEAF,
    NATIONAL_DEX_SNEASEL,
    NATIONAL_DEX_MANKEY,
    NATIONAL_DEX_PELIPPER,
    NATIONAL_DEX_BEAUTIFLY,
    NATIONAL_DEX_OCTILLERY,
    NATIONAL_DEX_AZUMARILL,
    NATIONAL_DEX_WOBBUFFET,
    NATIONAL_DEX_VAPOREON,
    NATIONAL_DEX_SANDSLASH,
    NATIONAL_DEX_PARASECT,
    NATIONAL_DEX_BEEDRILL,
    NATIONAL_DEX_MUK,
    NATIONAL_DEX_PIDGEOTTO,
    NATIONAL_DEX_GRIMER,
    NATIONAL_DEX_RAICHU,
    NATIONAL_DEX_PONYTA,
    NATIONAL_DEX_ELECTABUZZ,
    NATIONAL_DEX_VENONAT,
    NATIONAL_DEX_SPOINK,
    NATIONAL_DEX_DUSCLOPS,
    NATIONAL_DEX_MEDICHAM,
    NATIONAL_DEX_DUSTOX,
    NATIONAL_DEX_PERSIAN,
    NATIONAL_DEX_BUTTERFREE,
    NATIONAL_DEX_PRIMEAPE,
    NATIONAL_DEX_DROWZEE,
    NATIONAL_DEX_FURRET,
    NATIONAL_DEX_PORYGON2,
    NATIONAL_DEX_LOMBRE,
    NATIONAL_DEX_LINOONE,
    NATIONAL_DEX_DELCATTY,
    NATIONAL_DEX_CRAWDAUNT,
    NATIONAL_DEX_DUGTRIO,
    NATIONAL_DEX_ARIADOS,
    NATIONAL_DEX_PHANPY,
    NATIONAL_DEX_POLITOED,
    NATIONAL_DEX_STARYU,
    NATIONAL_DEX_CHANSEY,
    NATIONAL_DEX_OMASTAR,
    NATIONAL_DEX_TANGELA,
    NATIONAL_DEX_SLUGMA,
    NATIONAL_DEX_HOUNDOOM,
    NATIONAL_DEX_LEDIAN,
    NATIONAL_DEX_SLOWPOKE,
    NATIONAL_DEX_PORYGON,
    NATIONAL_DEX_MIGHTYENA,
    NATIONAL_DEX_YANMA,
    NATIONAL_DEX_FEAROW,
    NATIONAL_DEX_SUDOWOODO,
    NATIONAL_DEX_SEAKING,
    NATIONAL_DEX_BRELOOM,
    NATIONAL_DEX_DODUO,
    NATIONAL_DEX_PIDGEOT,
    NATIONAL_DEX_SPHEAL,
    NATIONAL_DEX_CLEFABLE,
    NATIONAL_DEX_LATIAS,
    NATIONAL_DEX_MANECTRIC,
    NATIONAL_DEX_ZANGOOSE,
    NATIONAL_DEX_KABUTOPS,
    NATIONAL_DEX_GENGAR,
    NATIONAL_DEX_LOUDRED,
    NATIONAL_DEX_JYNX,
    NATIONAL_DEX_NOCTOWL,
    NATIONAL_DEX_GIRAFARIG,
    NATIONAL_DEX_BAGON,
    NATIONAL_DEX_MAGMAR,
    NATIONAL_DEX_MAROWAK,
    NATIONAL_DEX_TENTACOOL,
    NATIONAL_DEX_VIGOROTH,
    NATIONAL_DEX_BLISSEY,
    NATIONAL_DEX_ABSOL,
    NATIONAL_DEX_ALAKAZAM,
    NATIONAL_DEX_HITMONTOP,
    NATIONAL_DEX_GARDEVOIR,
    NATIONAL_DEX_GRANBULL,
    NATIONAL_DEX_HITMONLEE,
    NATIONAL_DEX_HITMONCHAN,
    NATIONAL_DEX_SKARMORY,
    NATIONAL_DEX_CACNEA,
    NATIONAL_DEX_BLAZIKEN,
    NATIONAL_DEX_SCEPTILE,
    NATIONAL_DEX_SEVIPER,
    NATIONAL_DEX_CLAMPERL,
    NATIONAL_DEX_ZAPDOS,
    NATIONAL_DEX_HERACROSS,
    NATIONAL_DEX_POLIWRATH,
    NATIONAL_DEX_MR_MIME,
    NATIONAL_DEX_PINSIR,
    NATIONAL_DEX_LUDICOLO,
    NATIONAL_DEX_TENTACRUEL,
    NATIONAL_DEX_GOLBAT,
    NATIONAL_DEX_MAGCARGO,
    NATIONAL_DEX_ARTICUNO,
    NATIONAL_DEX_PILOSWINE,
    NATIONAL_DEX_SCYTHER,
    NATIONAL_DEX_KADABRA,
    NATIONAL_DEX_SMEARGLE,
    NATIONAL_DEX_AERODACTYL,
    NATIONAL_DEX_SHIFTRY,
    NATIONAL_DEX_KINGLER,
    NATIONAL_DEX_NIDOQUEEN,
    NATIONAL_DEX_MAGNETON,
    NATIONAL_DEX_ARON,
    NATIONAL_DEX_LATIOS,
    NATIONAL_DEX_MOLTRES,
    NATIONAL_DEX_CRADILY,
    NATIONAL_DEX_DEOXYS,
    NATIONAL_DEX_AMPHAROS,
    NATIONAL_DEX_NIDOKING,
    NATIONAL_DEX_GLIGAR,
    NATIONAL_DEX_ARBOK,
    NATIONAL_DEX_LICKITUNG,
    NATIONAL_DEX_ELECTRODE,
    NATIONAL_DEX_ARMALDO,
    NATIONAL_DEX_MACHOKE,
    NATIONAL_DEX_STANTLER,
    NATIONAL_DEX_GRUMPIG,
    NATIONAL_DEX_LARVITAR,
    NATIONAL_DEX_CROBAT,
    NATIONAL_DEX_QUAGSIRE,
    NATIONAL_DEX_MILTANK,
    NATIONAL_DEX_HYPNO,
    NATIONAL_DEX_GOLDUCK,
    NATIONAL_DEX_CACTURNE,
    NATIONAL_DEX_SLOWBRO,
    NATIONAL_DEX_TYPHLOSION,
    NATIONAL_DEX_SLOWKING,
    NATIONAL_DEX_KANGASKHAN,
    NATIONAL_DEX_STARMIE,
    NATIONAL_DEX_SWALOT,
    NATIONAL_DEX_TORKOAL,
    NATIONAL_DEX_SWAMPERT,
    NATIONAL_DEX_FLYGON,
    NATIONAL_DEX_EXPLOUD,
    NATIONAL_DEX_DODRIO,
    NATIONAL_DEX_BLASTOISE,
    NATIONAL_DEX_MAKUHITA,
    NATIONAL_DEX_SEALEO,
    NATIONAL_DEX_TAUROS,
    NATIONAL_DEX_SHARPEDO,
    NATIONAL_DEX_FERALIGATR,
    NATIONAL_DEX_SEEL,
    NATIONAL_DEX_CHARIZARD,
    NATIONAL_DEX_RAPIDASH,
    NATIONAL_DEX_BELDUM,
    NATIONAL_DEX_NOSEPASS,
    NATIONAL_DEX_VENUSAUR,
    NATIONAL_DEX_TROPIUS,
    NATIONAL_DEX_MEGANIUM,
    NATIONAL_DEX_SALAMENCE,
    NATIONAL_DEX_GRAVELER,
    NATIONAL_DEX_CLAYDOL,
    NATIONAL_DEX_SHELGON,
    NATIONAL_DEX_RHYHORN,
    NATIONAL_DEX_SCIZOR,
    NATIONAL_DEX_DEWGONG,
    NATIONAL_DEX_RHYDON,
    NATIONAL_DEX_DONPHAN,
    NATIONAL_DEX_EXEGGUTOR,
    NATIONAL_DEX_LAIRON,
    NATIONAL_DEX_MEWTWO,
    NATIONAL_DEX_URSARING,
    NATIONAL_DEX_FORRETRESS,
    NATIONAL_DEX_MACHAMP,
    NATIONAL_DEX_WAILMER,
    NATIONAL_DEX_SLAKING,
    NATIONAL_DEX_CLOYSTER,
    NATIONAL_DEX_WALREIN,
    NATIONAL_DEX_PUPITAR,
    NATIONAL_DEX_KINGDRA,
    NATIONAL_DEX_SOLROCK,
    NATIONAL_DEX_ARCANINE,
    NATIONAL_DEX_MILOTIC,
    NATIONAL_DEX_LUNATONE,
    NATIONAL_DEX_REGICE,
    NATIONAL_DEX_RAIKOU,
    NATIONAL_DEX_SUICUNE,
    NATIONAL_DEX_ENTEI,
    NATIONAL_DEX_HO_OH,
    NATIONAL_DEX_TYRANITAR,
    NATIONAL_DEX_METANG,
    NATIONAL_DEX_REGISTEEL,
    NATIONAL_DEX_RAYQUAZA,
    NATIONAL_DEX_ONIX,
    NATIONAL_DEX_DRAGONITE,
    NATIONAL_DEX_LUGIA,
    NATIONAL_DEX_LAPRAS,
    NATIONAL_DEX_CAMERUPT,
    NATIONAL_DEX_MANTINE,
    NATIONAL_DEX_REGIROCK,
    NATIONAL_DEX_GYARADOS,
    NATIONAL_DEX_HARIYAMA,
    NATIONAL_DEX_GLALIE,
    NATIONAL_DEX_GOLEM,
    NATIONAL_DEX_KYOGRE,
    NATIONAL_DEX_AGGRON,
    NATIONAL_DEX_WAILORD,
    NATIONAL_DEX_STEELIX,
    NATIONAL_DEX_SNORLAX,
    NATIONAL_DEX_METAGROSS,
    NATIONAL_DEX_GROUDON,
    NATIONAL_DEX_LITTEN,
};

const u16 gPokedexOrder_Height[] =
{
    NATIONAL_DEX_DIGLETT,
    NATIONAL_DEX_AZURILL,
    NATIONAL_DEX_NATU,
    NATIONAL_DEX_WEEDLE,
    NATIONAL_DEX_PICHU,
    NATIONAL_DEX_CLEFFA,
    NATIONAL_DEX_TOGEPI,
    NATIONAL_DEX_CASTFORM,
    NATIONAL_DEX_IGGLYBUFF,
    NATIONAL_DEX_CATERPIE,
    NATIONAL_DEX_TAILLOW,
    NATIONAL_DEX_DITTO,
    NATIONAL_DEX_EEVEE,
    NATIONAL_DEX_ROSELIA,
    NATIONAL_DEX_SPEAROW,
    NATIONAL_DEX_PIDGEY,
    NATIONAL_DEX_SUNKERN,
    NATIONAL_DEX_SHELLDER,
    NATIONAL_DEX_RATTATA,
    NATIONAL_DEX_MAGNEMITE,
    NATIONAL_DEX_PARAS,
    NATIONAL_DEX_WURMPLE,
    NATIONAL_DEX_JIRACHI,
    NATIONAL_DEX_CUBONE,
    NATIONAL_DEX_MUDKIP,
    NATIONAL_DEX_WOOPER,
    NATIONAL_DEX_HORSEA,
    NATIONAL_DEX_MEOWTH,
    NATIONAL_DEX_NIDORAN_F,
    NATIONAL_DEX_SWINUB,
    NATIONAL_DEX_MEW,
    NATIONAL_DEX_SWABLU,
    NATIONAL_DEX_ARON,
    NATIONAL_DEX_PLUSLE,
    NATIONAL_DEX_MINUN,
    NATIONAL_DEX_EXEGGCUTE,
    NATIONAL_DEX_PIKACHU,
    NATIONAL_DEX_BELLOSSOM,
    NATIONAL_DEX_GULPIN,
    NATIONAL_DEX_ZIGZAGOON,
    NATIONAL_DEX_SHROOMISH,
    NATIONAL_DEX_OMANYTE,
    NATIONAL_DEX_CACNEA,
    NATIONAL_DEX_KRABBY,
    NATIONAL_DEX_RALTS,
    NATIONAL_DEX_HOPPIP,
    NATIONAL_DEX_TORCHIC,
    NATIONAL_DEX_CLAMPERL,
    NATIONAL_DEX_GEODUDE,
    NATIONAL_DEX_MARILL,
    NATIONAL_DEX_BARBOACH,
    NATIONAL_DEX_SMOOCHUM,
    NATIONAL_DEX_VOLTORB,
    NATIONAL_DEX_NINCADA,
    NATIONAL_DEX_SABLEYE,
    NATIONAL_DEX_MURKROW,
    NATIONAL_DEX_QWILFISH,
    NATIONAL_DEX_SQUIRTLE,
    NATIONAL_DEX_TREECKO,
    NATIONAL_DEX_BALTOY,
    NATIONAL_DEX_ODDISH,
    NATIONAL_DEX_LOTAD,
    NATIONAL_DEX_JIGGLYPUFF,
    NATIONAL_DEX_SURSKIT,
    NATIONAL_DEX_CYNDAQUIL,
    NATIONAL_DEX_KABUTO,
    NATIONAL_DEX_LINOONE,
    NATIONAL_DEX_TORKOAL,
    NATIONAL_DEX_NIDORAN_M,
    NATIONAL_DEX_SPINARAK,
    NATIONAL_DEX_MANKEY,
    NATIONAL_DEX_SEEDOT,
    NATIONAL_DEX_POOCHYENA,
    NATIONAL_DEX_PHANPY,
    NATIONAL_DEX_UNOWN,
    NATIONAL_DEX_CHINCHOU,
    NATIONAL_DEX_PORYGON2,
    NATIONAL_DEX_POLIWAG,
    NATIONAL_DEX_BAGON,
    NATIONAL_DEX_FEEBAS,
    NATIONAL_DEX_SHUPPET,
    NATIONAL_DEX_TOTODILE,
    NATIONAL_DEX_CELEBI,
    NATIONAL_DEX_WYNAUT,
    NATIONAL_DEX_SANDSHREW,
    NATIONAL_DEX_CHIMECHO,
    NATIONAL_DEX_LUVDISC,
    NATIONAL_DEX_HOUNDOUR,
    NATIONAL_DEX_SILCOON,
    NATIONAL_DEX_ELECTRIKE,
    NATIONAL_DEX_CHARMANDER,
    NATIONAL_DEX_MEDITITE,
    NATIONAL_DEX_WINGULL,
    NATIONAL_DEX_REMORAID,
    NATIONAL_DEX_CORPHISH,
    NATIONAL_DEX_CORSOLA,
    NATIONAL_DEX_ILLUMISE,
    NATIONAL_DEX_SNUBBULL,
    NATIONAL_DEX_VULPIX,
    NATIONAL_DEX_LARVITAR,
    NATIONAL_DEX_BELDUM,
    NATIONAL_DEX_WHISMUR,
    NATIONAL_DEX_PINECO,
    NATIONAL_DEX_ELEKID,
    NATIONAL_DEX_CLEFAIRY,
    NATIONAL_DEX_SHUCKLE,
    NATIONAL_DEX_TEDDIURSA,
    NATIONAL_DEX_KAKUNA,
    NATIONAL_DEX_SKITTY,
    NATIONAL_DEX_TOGETIC,
    NATIONAL_DEX_GOLDEEN,
    NATIONAL_DEX_MAWILE,
    NATIONAL_DEX_MAREEP,
    NATIONAL_DEX_SKIPLOOM,
    NATIONAL_DEX_KOFFING,
    NATIONAL_DEX_DUGTRIO,
    NATIONAL_DEX_CASCOON,
    NATIONAL_DEX_NUMEL,
    NATIONAL_DEX_ANORITH,
    NATIONAL_DEX_VOLBEAT,
    NATIONAL_DEX_HOOTHOOT,
    NATIONAL_DEX_TRAPINCH,
    NATIONAL_DEX_SPOINK,
    NATIONAL_DEX_METAPOD,
    NATIONAL_DEX_BELLSPROUT,
    NATIONAL_DEX_SNORUNT,
    NATIONAL_DEX_RATICATE,
    NATIONAL_DEX_MARSHTOMP,
    NATIONAL_DEX_SWELLOW,
    NATIONAL_DEX_MAGBY,
    NATIONAL_DEX_GROWLITHE,
    NATIONAL_DEX_MISDREAVUS,
    NATIONAL_DEX_BULBASAUR,
    NATIONAL_DEX_TYROGUE,
    NATIONAL_DEX_SLUGMA,
    NATIONAL_DEX_SLAKOTH,
    NATIONAL_DEX_KIRLIA,
    NATIONAL_DEX_AIPOM,
    NATIONAL_DEX_JOLTEON,
    NATIONAL_DEX_NIDORINA,
    NATIONAL_DEX_AZUMARILL,
    NATIONAL_DEX_SHEDINJA,
    NATIONAL_DEX_MACHOP,
    NATIONAL_DEX_NINJASK,
    NATIONAL_DEX_MASQUERAIN,
    NATIONAL_DEX_DUSKULL,
    NATIONAL_DEX_SUNFLORA,
    NATIONAL_DEX_JUMPLUFF,
    NATIONAL_DEX_STARYU,
    NATIONAL_DEX_FLAAFFY,
    NATIONAL_DEX_SPHEAL,
    NATIONAL_DEX_PSYDUCK,
    NATIONAL_DEX_MAGCARGO,
    NATIONAL_DEX_FARFETCHD,
    NATIONAL_DEX_ZUBAT,
    NATIONAL_DEX_PORYGON,
    NATIONAL_DEX_SENTRET,
    NATIONAL_DEX_CARVANHA,
    NATIONAL_DEX_GLOOM,
    NATIONAL_DEX_RAICHU,
    NATIONAL_DEX_MAGIKARP,
    NATIONAL_DEX_SNEASEL,
    NATIONAL_DEX_LAIRON,
    NATIONAL_DEX_COMBUSKEN,
    NATIONAL_DEX_OCTILLERY,
    NATIONAL_DEX_NIDORINO,
    NATIONAL_DEX_FLAREON,
    NATIONAL_DEX_DELIBIRD,
    NATIONAL_DEX_TENTACOOL,
    NATIONAL_DEX_ABRA,
    NATIONAL_DEX_GROVYLE,
    NATIONAL_DEX_WHISCASH,
    NATIONAL_DEX_QUILAVA,
    NATIONAL_DEX_ESPEON,
    NATIONAL_DEX_GRIMER,
    NATIONAL_DEX_CHIKORITA,
    NATIONAL_DEX_GRUMPIG,
    NATIONAL_DEX_NOSEPASS,
    NATIONAL_DEX_PERSIAN,
    NATIONAL_DEX_MIGHTYENA,
    NATIONAL_DEX_VENONAT,
    NATIONAL_DEX_MAGNETON,
    NATIONAL_DEX_PONYTA,
    NATIONAL_DEX_MAKUHITA,
    NATIONAL_DEX_LUNATONE,
    NATIONAL_DEX_SANDSLASH,
    NATIONAL_DEX_DROWZEE,
    NATIONAL_DEX_TANGELA,
    NATIONAL_DEX_PRIMEAPE,
    NATIONAL_DEX_LEDYBA,
    NATIONAL_DEX_WIGGLYTUFF,
    NATIONAL_DEX_PARASECT,
    NATIONAL_DEX_OMASTAR,
    NATIONAL_DEX_LOUDRED,
    NATIONAL_DEX_WARTORTLE,
    NATIONAL_DEX_GRAVELER,
    NATIONAL_DEX_UMBREON,
    NATIONAL_DEX_LILEEP,
    NATIONAL_DEX_POLIWHIRL,
    NATIONAL_DEX_VAPOREON,
    NATIONAL_DEX_BEEDRILL,
    NATIONAL_DEX_MAROWAK,
    NATIONAL_DEX_WEEPINBELL,
    NATIONAL_DEX_RELICANTH,
    NATIONAL_DEX_RHYHORN,
    NATIONAL_DEX_IVYSAUR,
    NATIONAL_DEX_KECLEON,
    NATIONAL_DEX_NUZLEAF,
    NATIONAL_DEX_BEAUTIFLY,
    NATIONAL_DEX_PIDGEOTTO,
    NATIONAL_DEX_ARIADOS,
    NATIONAL_DEX_SEEL,
    NATIONAL_DEX_POLITOED,
    NATIONAL_DEX_CROCONAW,
    NATIONAL_DEX_CHANSEY,
    NATIONAL_DEX_BANETTE,
    NATIONAL_DEX_DONPHAN,
    NATIONAL_DEX_STARMIE,
    NATIONAL_DEX_CHARMELEON,
    NATIONAL_DEX_PILOSWINE,
    NATIONAL_DEX_BUTTERFREE,
    NATIONAL_DEX_VIBRAVA,
    NATIONAL_DEX_ELECTABUZZ,
    NATIONAL_DEX_CRAWDAUNT,
    NATIONAL_DEX_DELCATTY,
    NATIONAL_DEX_ALTARIA,
    NATIONAL_DEX_SHELGON,
    NATIONAL_DEX_NINETALES,
    NATIONAL_DEX_GLIGAR,
    NATIONAL_DEX_SEALEO,
    NATIONAL_DEX_SPINDA,
    NATIONAL_DEX_PUPITAR,
    NATIONAL_DEX_SLOWPOKE,
    NATIONAL_DEX_SOLROCK,
    NATIONAL_DEX_MILTANK,
    NATIONAL_DEX_FEAROW,
    NATIONAL_DEX_VILEPLUME,
    NATIONAL_DEX_MUK,
    NATIONAL_DEX_FORRETRESS,
    NATIONAL_DEX_SUDOWOODO,
    NATIONAL_DEX_ABSOL,
    NATIONAL_DEX_YANMA,
    NATIONAL_DEX_DUSTOX,
    NATIONAL_DEX_LICKITUNG,
    NATIONAL_DEX_SMEARGLE,
    NATIONAL_DEX_LANTURN,
    NATIONAL_DEX_ELECTRODE,
    NATIONAL_DEX_LOMBRE,
    NATIONAL_DEX_BRELOOM,
    NATIONAL_DEX_BAYLEEF,
    NATIONAL_DEX_SEADRA,
    NATIONAL_DEX_WEEZING,
    NATIONAL_DEX_PELIPPER,
    NATIONAL_DEX_METANG,
    NATIONAL_DEX_NIDOQUEEN,
    NATIONAL_DEX_CACTURNE,
    NATIONAL_DEX_SHIFTRY,
    NATIONAL_DEX_MEDICHAM,
    NATIONAL_DEX_ZANGOOSE,
    NATIONAL_DEX_KABUTOPS,
    NATIONAL_DEX_KINGLER,
    NATIONAL_DEX_KADABRA,
    NATIONAL_DEX_SEAKING,
    NATIONAL_DEX_CLEFABLE,
    NATIONAL_DEX_MAGMAR,
    NATIONAL_DEX_WOBBUFFET,
    NATIONAL_DEX_GASTLY,
    NATIONAL_DEX_MR_MIME,
    NATIONAL_DEX_POLIWRATH,
    NATIONAL_DEX_TAUROS,
    NATIONAL_DEX_LATIAS,
    NATIONAL_DEX_AMPHAROS,
    NATIONAL_DEX_VIGOROTH,
    NATIONAL_DEX_LEDIAN,
    NATIONAL_DEX_GOLEM,
    NATIONAL_DEX_WALREIN,
    NATIONAL_DEX_DODUO,
    NATIONAL_DEX_HOUNDOOM,
    NATIONAL_DEX_NIDOKING,
    NATIONAL_DEX_JYNX,
    NATIONAL_DEX_HITMONCHAN,
    NATIONAL_DEX_STANTLER,
    NATIONAL_DEX_GRANBULL,
    NATIONAL_DEX_HITMONTOP,
    NATIONAL_DEX_QUAGSIRE,
    NATIONAL_DEX_CLAYDOL,
    NATIONAL_DEX_SWAMPERT,
    NATIONAL_DEX_BLISSEY,
    NATIONAL_DEX_LUDICOLO,
    NATIONAL_DEX_EXPLOUD,
    NATIONAL_DEX_DUNSPARCE,
    NATIONAL_DEX_PINSIR,
    NATIONAL_DEX_CLOYSTER,
    NATIONAL_DEX_MACHOKE,
    NATIONAL_DEX_GIRAFARIG,
    NATIONAL_DEX_PIDGEOT,
    NATIONAL_DEX_XATU,
    NATIONAL_DEX_CRADILY,
    NATIONAL_DEX_HITMONLEE,
    NATIONAL_DEX_VENOMOTH,
    NATIONAL_DEX_GENGAR,
    NATIONAL_DEX_HERACROSS,
    NATIONAL_DEX_GLALIE,
    NATIONAL_DEX_SCYTHER,
    NATIONAL_DEX_SALAMENCE,
    NATIONAL_DEX_MANECTRIC,
    NATIONAL_DEX_ARMALDO,
    NATIONAL_DEX_ALAKAZAM,
    NATIONAL_DEX_HYPNO,
    NATIONAL_DEX_NOCTOWL,
    NATIONAL_DEX_TENTACRUEL,
    NATIONAL_DEX_DUSCLOPS,
    NATIONAL_DEX_ZAPDOS,
    NATIONAL_DEX_GOLBAT,
    NATIONAL_DEX_METAGROSS,
    NATIONAL_DEX_GARDEVOIR,
    NATIONAL_DEX_BLASTOISE,
    NATIONAL_DEX_SLOWBRO,
    NATIONAL_DEX_HAUNTER,
    NATIONAL_DEX_MACHAMP,
    NATIONAL_DEX_REGIROCK,
    NATIONAL_DEX_SWALOT,
    NATIONAL_DEX_SCEPTILE,
    NATIONAL_DEX_SKARMORY,
    NATIONAL_DEX_GOLDUCK,
    NATIONAL_DEX_DEOXYS,
    NATIONAL_DEX_VICTREEBEL,
    NATIONAL_DEX_RAPIDASH,
    NATIONAL_DEX_CHARIZARD,
    NATIONAL_DEX_HUNTAIL,
    NATIONAL_DEX_DEWGONG,
    NATIONAL_DEX_ARTICUNO,
    NATIONAL_DEX_TYPHLOSION,
    NATIONAL_DEX_AERODACTYL,
    NATIONAL_DEX_GOREBYSS,
    NATIONAL_DEX_URSARING,
    NATIONAL_DEX_MEGANIUM,
    NATIONAL_DEX_REGICE,
    NATIONAL_DEX_SCIZOR,
    NATIONAL_DEX_KINGDRA,
    NATIONAL_DEX_DRATINI,
    NATIONAL_DEX_DODRIO,
    NATIONAL_DEX_SHARPEDO,
    NATIONAL_DEX_CROBAT,
    NATIONAL_DEX_FURRET,
    NATIONAL_DEX_ARCANINE,
    NATIONAL_DEX_RAIKOU,
    NATIONAL_DEX_BLAZIKEN,
    NATIONAL_DEX_CAMERUPT,
    NATIONAL_DEX_RHYDON,
    NATIONAL_DEX_REGISTEEL,
    NATIONAL_DEX_EKANS,
    NATIONAL_DEX_FLYGON,
    NATIONAL_DEX_TROPIUS,
    NATIONAL_DEX_LATIOS,
    NATIONAL_DEX_SUICUNE,
    NATIONAL_DEX_MOLTRES,
    NATIONAL_DEX_VENUSAUR,
    NATIONAL_DEX_EXEGGUTOR,
    NATIONAL_DEX_SLOWKING,
    NATIONAL_DEX_TYRANITAR,
    NATIONAL_DEX_SLAKING,
    NATIONAL_DEX_WAILMER,
    NATIONAL_DEX_MEWTWO,
    NATIONAL_DEX_AGGRON,
    NATIONAL_DEX_SNORLAX,
    NATIONAL_DEX_MANTINE,
    NATIONAL_DEX_ENTEI,
    NATIONAL_DEX_DRAGONITE,
    NATIONAL_DEX_KANGASKHAN,
    NATIONAL_DEX_HARIYAMA,
    NATIONAL_DEX_FERALIGATR,
    NATIONAL_DEX_LAPRAS,
    NATIONAL_DEX_SEVIPER,
    NATIONAL_DEX_ARBOK,
    NATIONAL_DEX_GROUDON,
    NATIONAL_DEX_HO_OH,
    NATIONAL_DEX_DRAGONAIR,
    NATIONAL_DEX_KYOGRE,
    NATIONAL_DEX_LUGIA,
    NATIONAL_DEX_MILOTIC,
    NATIONAL_DEX_GYARADOS,
    NATIONAL_DEX_RAYQUAZA,
    NATIONAL_DEX_ONIX,
    NATIONAL_DEX_STEELIX,
    NATIONAL_DEX_WAILORD,
    NATIONAL_DEX_LITTEN,
};

const u16 gPokedexOrder_Type[] =
{
    19,
    20,
    35,
    36,
    39,
    40,
    52,
    53,
    108,
    113,
    115,
    128,
    132,
    133,
    137,
    143,
    161,
    162,
    173,
    174,
    175,
    190,
    206,
    209,
    210,
    216,
    217,
    233,
    234,
    235,
    241,
    242,
    288,
    289,
    364,
    365,
    366,
    370,
    371,
    372,
    350,
    315,
    316,
    308,
    380,
    385,
    317,
    252,
    253,
    254,
    255,
    256,
    257,
    258,
    259,
    260,
    261,
    262,
    263,
    264,
    265,
    266,
    267,
    268,
    269,
    270,
    271,
    272,
    273,
    274,
    275,
    276,
    16,
    17,
    18,
    21,
    22,
    83,
    84,
    85,
    163,
    164,
    176,
    304,
    305,
    358,
    203,
    56,
    57,
    66,
    67,
    68,
    106,
    107,
    236,
    237,
    335,
    336,
    356,
    357,
    23,
    24,
    29,
    30,
    32,
    33,
    88,
    89,
    109,
    110,
    367,
    368,
    379,
    41,
    42,
    169,
    31,
    34,
    27,
    28,
    50,
    51,
    104,
    105,
    231,
    232,
    332,
    405,
    207,
    111,
    112,
    318,
    319,
    333,
    334,
    185,
    320,
    401,
    142,
    74,
    75,
    76,
    95,
    246,
    247,
    390,
    391,
    138,
    139,
    140,
    141,
    388,
    389,
    348,
    349,
    248,
    10,
    11,
    127,
    204,
    290,
    291,
    293,
    386,
    387,
    214,
    12,
    123,
    165,
    166,
    193,
    292,
    312,
    302,
    13,
    14,
    15,
    48,
    49,
    167,
    168,
    294,
    301,
    213,
    303,
    205,
    212,
    311,
    46,
    47,
    200,
    377,
    378,
    361,
    362,
    92,
    93,
    94,
    355,
    403,
    227,
    208,
    382,
    383,
    384,
    398,
    399,
    400,
    409,
    4,
    5,
    37,
    38,
    58,
    59,
    77,
    78,
    126,
    136,
    155,
    156,
    157,
    218,
    240,
    244,
    280,
    321,
    281,
    282,
    6,
    146,
    250,
    339,
    340,
    219,
    7,
    8,
    9,
    54,
    55,
    60,
    61,
    86,
    90,
    98,
    99,
    116,
    117,
    118,
    119,
    120,
    129,
    134,
    158,
    159,
    160,
    183,
    184,
    186,
    223,
    224,
    245,
    283,
    313,
    314,
    326,
    328,
    329,
    373,
    374,
    375,
    325,
    404,
    62,
    130,
    226,
    309,
    310,
    72,
    73,
    211,
    194,
    195,
    284,
    285,
    323,
    324,
    222,
    381,
    295,
    296,
    297,
    170,
    171,
    79,
    80,
    121,
    199,
    87,
    91,
    131,
    230,
    330,
    331,
    327,
    114,
    152,
    153,
    154,
    182,
    191,
    192,
    277,
    278,
    279,
    298,
    306,
    344,
    307,
    187,
    188,
    189,
    369,
    1,
    2,
    3,
    43,
    44,
    45,
    69,
    70,
    71,
    363,
    102,
    103,
    299,
    300,
    345,
    25,
    26,
    100,
    101,
    125,
    135,
    172,
    179,
    180,
    181,
    239,
    243,
    337,
    338,
    353,
    354,
    145,
    81,
    82,
    63,
    64,
    65,
    96,
    97,
    122,
    150,
    151,
    196,
    201,
    202,
    392,
    393,
    394,
    351,
    352,
    411,
    360,
    410,
    177,
    178,
    249,
    251,
    346,
    347,
    402,
    144,
    225,
    220,
    221,
    341,
    342,
    343,
    124,
    238,
    147,
    148,
    395,
    396,
    149,
    359,
    397,
    406,
    407,
    408,
    197,
    286,
    287,
    376,
    198,
    322,
    228,
    229,
    215
};
# 200 "src/pokedex_screen.c" 2

static const u8 gExpandedPlaceholder_PokedexDescription[] = _("");

# 1 "src/data/pokemon/pokedex_text.h" 1

# 1 "src/data/pokemon/pokedex_text_fr.h" 1
const u8 gDummyPokedexText[] = _(
    "This is a newly discovered POKéMON. It is\n"
    "currently under investigation. No detailed\n"
    "information is available at this time.");

const u8 gDummyPokedexTextUnused[] = _("");

const u8 gBulbasaurPokedexText[] = _(
    "There is a plant seed on its back right\n"
    "from the day this POKéMON is born.\n"
    "The seed slowly grows larger.");

const u8 gBulbasaurPokedexTextUnused[] = _("");

const u8 gIvysaurPokedexText[] = _(
    "There is a plant bulb on its back.\n"
    "When it absorbs nutrients, the bulb is said\n"
    "to blossom into a large flower.");

const u8 gIvysaurPokedexTextUnused[] = _("");

const u8 gVenusaurPokedexText[] = _(
    "A bewitching aroma wafts from its flower.\n"
    "The fragrance becalms those engaged in\n"
    "a battle.");

const u8 gVenusaurPokedexTextUnused[] = _("");

const u8 gCharmanderPokedexText[] = _(
    "From the time it is born, a flame burns\n"
    "at the tip of its tail. Its life would end\n"
    "if the flame were to go out.");

const u8 gCharmanderPokedexTextUnused[] = _("");

const u8 gCharmeleonPokedexText[] = _(
    "It lashes about with its tail to knock\n"
    "down its foe. It then tears up the fallen\n"
    "opponent with sharp claws.");

const u8 gCharmeleonPokedexTextUnused[] = _("");

const u8 gCharizardPokedexText[] = _(
    "Its wings can carry this POKéMON close to\n"
    "an altitude of 4,600 feet. It blows out\n"
    "fire at very high temperatures.");

const u8 gCharizardPokedexTextUnused[] = _("");

const u8 gSquirtlePokedexText[] = _(
    "When it retracts its long neck into its\n"
    "shell, it squirts out water with vigorous\n"
    "force.");

const u8 gSquirtlePokedexTextUnused[] = _("");

const u8 gWartortlePokedexText[] = _(
    "This POKéMON is very popular as a pet.\n"
    "Its fur-covered tail is a symbol of its\n"
    "longevity.");

const u8 gWartortlePokedexTextUnused[] = _("");

const u8 gBlastoisePokedexText[] = _(
    "It crushes its foe under its heavy body\n"
    "to cause fainting. In a pinch, it will\n"
    "withdraw inside its shell.");

const u8 gBlastoisePokedexTextUnused[] = _("");

const u8 gCaterpiePokedexText[] = _(
    "It is covered with a green skin. When it\n"
    "grows, it sheds the skin, covers itself\n"
    "with silk, and becomes a cocoon.");

const u8 gCaterpiePokedexTextUnused[] = _("");

const u8 gMetapodPokedexText[] = _(
    "Even though it is encased in a sturdy\n"
    "shell, the body inside is tender.\n"
    "It can't withstand a harsh attack.");

const u8 gMetapodPokedexTextUnused[] = _("");

const u8 gButterfreePokedexText[] = _(
    "The wings are protected by rain-repellent\n"
    "dust. As a result, this POKéMON can fly\n"
    "about even in rain.");

const u8 gButterfreePokedexTextUnused[] = _("");

const u8 gWeedlePokedexText[] = _(
    "Often found in forests and grasslands.\n"
    "It has a sharp, toxic barb of around two\n"
    "inches on top of its head.");

const u8 gWeedlePokedexTextUnused[] = _("");

const u8 gKakunaPokedexText[] = _(
    "This POKéMON is in a temporary stage\n"
    "while making its body. It is almost\n"
    "completely unable to move on its own.");

const u8 gKakunaPokedexTextUnused[] = _("");

const u8 gBeedrillPokedexText[] = _(
    "May appear in a swarm. Flies at violent\n"
    "speeds, all the while stabbing with the\n"
    "toxic stinger on its rear.");

const u8 gBeedrillPokedexTextUnused[] = _("");

const u8 gPidgeyPokedexText[] = _(
    "Does not like to fight. It hides in\n"
    "tall grass and so on, foraging for food\n"
    "such as small bugs.");

const u8 gPidgeyPokedexTextUnused[] = _("");

const u8 gPidgeottoPokedexText[] = _(
    "The claws on its feet are well developed.\n"
    "It can carry prey such as an EXEGGCUTE\n"
    "to its nest over 60 miles away.");

const u8 gPidgeottoPokedexTextUnused[] = _("");

const u8 gPidgeotPokedexText[] = _(
    "It spreads its gorgeous wings widely to\n"
    "intimidate enemies. It races through the\n"
    "skies at Mach-2 speed.");

const u8 gPidgeotPokedexTextUnused[] = _("");

const u8 gRattataPokedexText[] = _(
    "Its fangs are long and very sharp.\n"
    "They grow continuously, so it gnaws on\n"
    "hard things to whittle them down.");

const u8 gRattataPokedexTextUnused[] = _("");

const u8 gRaticatePokedexText[] = _(
    "Its rear feet have three toes each.\n"
    "They are webbed, enabling it to swim\n"
    "across rivers.");

const u8 gRaticatePokedexTextUnused[] = _("");

const u8 gSpearowPokedexText[] = _(
    "It busily flits around here and there.\n"
    "Even if it is frail, it can be a tough\n"
    "foe that uses MIRROR MOVE.");

const u8 gSpearowPokedexTextUnused[] = _("");

const u8 gFearowPokedexText[] = _(
    "Its huge and magnificent wings can keep it\n"
    "aloft in the sky. It can remain flying a\n"
    "whole day without landing.");

const u8 gFearowPokedexTextUnused[] = _("");

const u8 gEkansPokedexText[] = _(
    "A very common sight in grassland, etc.\n"
    "It flicks its tongue in and out to sense\n"
    "danger in its surroundings.");

const u8 gEkansPokedexTextUnused[] = _("");

const u8 gArbokPokedexText[] = _(
    "The pattern on its belly appears to be a\n"
    "frightening face. Weak foes will flee just\n"
    "at the sight of the pattern.");

const u8 gArbokPokedexTextUnused[] = _("");

const u8 gPikachuPokedexText[] = _(
    "It has small electric sacs on both its\n"
    "cheeks. If threatened, it looses electric\n"
    "charges from the sacs.");

const u8 gPikachuPokedexTextUnused[] = _("");

const u8 gRaichuPokedexText[] = _(
    "Its electric charges can reach even\n"
    "100,000 volts. Careless contact can cause\n"
    "even an Indian elephant to faint.");

const u8 gRaichuPokedexTextUnused[] = _("");

const u8 gSandshrewPokedexText[] = _(
    "It burrows and lives underground.\n"
    "If threatened, it curls itself up into a\n"
    "ball for protection.");

const u8 gSandshrewPokedexTextUnused[] = _("");

const u8 gSandslashPokedexText[] = _(
    "It is adept at attacking with the spines\n"
    "on its back and its sharp claws while\n"
    "quickly scurrying about.");

const u8 gSandslashPokedexTextUnused[] = _("");

const u8 gNidoranFPokedexText[] = _(
    "Though small, it must be treated with\n"
    "caution because of its powerfully toxic\n"
    "barbs. The female has smaller horns.");

const u8 gNidoranFPokedexTextUnused[] = _("");

const u8 gNidorinaPokedexText[] = _(
    "The female has a gentle temperament.\n"
    "It emits ultrasonic cries that have the\n"
    "power to befuddle foes.");

const u8 gNidorinaPokedexTextUnused[] = _("");

const u8 gNidoqueenPokedexText[] = _(
    "The body is covered by stiff, needle-\n"
    "like scales. If it becomes excited,\n"
    "the needles bristle outwards.");

const u8 gNidoqueenPokedexTextUnused[] = _("");

const u8 gNidoranMPokedexText[] = _(
    "Its large ears are flapped like wings\n"
    "when it is listening to distant sounds.\n"
    "It extends toxic barbs when angered.");

const u8 gNidoranMPokedexTextUnused[] = _("");

const u8 gNidorinoPokedexText[] = _(
    "It is easily angered. By swinging its well-\n"
    "developed horn wildly, it can even punch\n"
    "through diamond.");

const u8 gNidorinoPokedexTextUnused[] = _("");

const u8 gNidokingPokedexText[] = _(
    "It is recognized by its rock-hard hide\n"
    "and its extended horn. Be careful with\n"
    "the horn as it contains venom.");

const u8 gNidokingPokedexTextUnused[] = _("");

const u8 gClefairyPokedexText[] = _(
    "Its adorable appearance makes it popular\n"
    "as a pet. However, it is rare and\n"
    "difficult to find.");

const u8 gClefairyPokedexTextUnused[] = _("");

const u8 gClefablePokedexText[] = _(
    "It has an acute sense of hearing. It can\n"
    "easily hear a pin being dropped nearly\n"
    "1,100 yards away.");

const u8 gClefablePokedexTextUnused[] = _("");

const u8 gVulpixPokedexText[] = _(
    "While young, it has six gorgeous tails.\n"
    "When it grows, several new tails are\n"
    "sprouted.");

const u8 gVulpixPokedexTextUnused[] = _("");

const u8 gNinetalesPokedexText[] = _(
    "It has nine long tails and fur that \n"
    "gleams gold. It is said to live for \n"
    "1,000 years.");

const u8 gNinetalesPokedexTextUnused[] = _("");

const u8 gJigglypuffPokedexText[] = _(
    "It captivates foes with its huge, round\n"
    "eyes, then lulls them to sleep by singing\n"
    "a soothing melody.");

const u8 gJigglypuffPokedexTextUnused[] = _("");

const u8 gWigglytuffPokedexText[] = _(
    "Its fur is extremely fine, dense, and\n"
    "supple. The exquisitely pleasant fur\n"
    "conveys an image of luxury.");

const u8 gWigglytuffPokedexTextUnused[] = _("");

const u8 gZubatPokedexText[] = _(
    "It has no eyes. Instead, it relies on\n"
    "its ultrasonic cries for echo location to\n"
    "flit about in darkness.");

const u8 gZubatPokedexTextUnused[] = _("");

const u8 gGolbatPokedexText[] = _(
    "It clamps down on its prey with needle-\n"
    "sharp fangs and drains over 10 ounces of\n"
    "blood in one gulp.");

const u8 gGolbatPokedexTextUnused[] = _("");

const u8 gOddishPokedexText[] = _(
    "Its scientific name is “Oddium Wanderus.”\n"
    "At night, it is said to walk nearly 1,000\n"
    "feet on its two roots.");

const u8 gOddishPokedexTextUnused[] = _("");

const u8 gGloomPokedexText[] = _(
    "Its pistils exude an incredibly foul odor.\n"
    "The horrid stench can cause fainting at a\n"
    "distance of 1.25 miles.");

const u8 gGloomPokedexTextUnused[] = _("");

const u8 gVileplumePokedexText[] = _(
    "Its petals are the largest in the world.\n"
    "It fiendishly scatters allergy-causing\n"
    "pollen from its petals.");

const u8 gVileplumePokedexTextUnused[] = _("");

const u8 gParasPokedexText[] = _(
    "Growing out of the bug's back are\n"
    "mushrooms called tochukaso. The mushrooms\n"
    "grow with the bug host.");

const u8 gParasPokedexTextUnused[] = _("");

const u8 gParasectPokedexText[] = _(
    "It scatters toxic spores from the\n"
    "mushroom cap. In China, the spores are\n"
    "used as herbal medicine.");

const u8 gParasectPokedexTextUnused[] = _("");

const u8 gVenonatPokedexText[] = _(
    "Its eyes act as radar, enabling it to be\n"
    "active in darkness. The eyes can also\n"
    "shoot powerful beams.");

const u8 gVenonatPokedexTextUnused[] = _("");

const u8 gVenomothPokedexText[] = _(
    "The wings are covered with dustlike\n"
    "scales. Every time it flaps its wings, it\n"
    "looses highly toxic dust.");

const u8 gVenomothPokedexTextUnused[] = _("");

const u8 gDiglettPokedexText[] = _(
    "It burrows through the ground at a\n"
    "shallow depth. It leaves raised earth in\n"
    "its wake, making it easy to spot.");

const u8 gDiglettPokedexTextUnused[] = _("");

const u8 gDugtrioPokedexText[] = _(
    "In battle, it digs through the ground and\n"
    "strikes the unsuspecting foe from an\n"
    "unexpected direction.");

const u8 gDugtrioPokedexTextUnused[] = _("");

const u8 gMeowthPokedexText[] = _(
    "All it does is sleep during the daytime.\n"
    "At night, it patrols its territory with its\n"
    "eyes aglow.");

const u8 gMeowthPokedexTextUnused[] = _("");

const u8 gPersianPokedexText[] = _(
    "Has a vicious temperament. Beware if it\n"
    "raises its tail straight up. It is a signal\n"
    "that it is about to pounce and bite.");

const u8 gPersianPokedexTextUnused[] = _("");

const u8 gPsyduckPokedexText[] = _(
    "It is constantly wracked by a headache.\n"
    "When the headache turns intense, it begins\n"
    "using mysterious powers.");

const u8 gPsyduckPokedexTextUnused[] = _("");

const u8 gGolduckPokedexText[] = _(
    "The forelegs are webbed, helping to make\n"
    "it an adept swimmer. It can be seen\n"
    "swimming elegantly in lakes, etc.");

const u8 gGolduckPokedexTextUnused[] = _("");

const u8 gMankeyPokedexText[] = _(
    "Light and agile on its feet, and ferocious\n"
    "in temperament. When angered, it flies into\n"
    "an uncontrollable frenzy.");

const u8 gMankeyPokedexTextUnused[] = _("");

const u8 gPrimeapePokedexText[] = _(
    "It is always outrageously furious. If it\n"
    "gives chase, it will tenaciously track the\n"
    "target no matter how far.");

const u8 gPrimeapePokedexTextUnused[] = _("");

const u8 gGrowlithePokedexText[] = _(
    "Very friendly and faithful to people.\n"
    "It will try to repel enemies by barking\n"
    "and biting.");

const u8 gGrowlithePokedexTextUnused[] = _("");

const u8 gArcaninePokedexText[] = _(
    "A POKéMON that is described in Chinese\n"
    "legends. It is said to race at an\n"
    "unbelievable speed.");

const u8 gArcaninePokedexTextUnused[] = _("");

const u8 gPoliwagPokedexText[] = _(
    "Its slick black skin is thin and damp.\n"
    "A part of its internal organs can be seen\n"
    "through the skin as a spiral pattern.");

const u8 gPoliwagPokedexTextUnused[] = _("");

const u8 gPoliwhirlPokedexText[] = _(
    "Its two legs are well developed.\n"
    "Even though it can live on the ground,\n"
    "it prefers living in water.");

const u8 gPoliwhirlPokedexTextUnused[] = _("");

const u8 gPoliwrathPokedexText[] = _(
    "An adept swimmer, it knows the front\n"
    "crawl, butterfly, and more. It is faster\n"
    "than the best human swimmers.");

const u8 gPoliwrathPokedexTextUnused[] = _("");

const u8 gAbraPokedexText[] = _(
    "It sleeps for 18 hours a day. It uses a\n"
    "variety of extrasensory powers even\n"
    "while asleep.");

const u8 gAbraPokedexTextUnused[] = _("");

const u8 gKadabraPokedexText[] = _(
    "It happened one morning - a boy with\n"
    "extrasensory powers awoke in bed\n"
    "transformed into KADABRA.");

const u8 gKadabraPokedexTextUnused[] = _("");

const u8 gAlakazamPokedexText[] = _(
    "It does not like physical attacks very \n"
    "much. Instead, it freely uses extra-\n"
    "sensory powers to defeat foes.");

const u8 gAlakazamPokedexTextUnused[] = _("");

const u8 gMachopPokedexText[] = _(
    "Its whole body is composed of muscles.\n"
    "Even though it's the size of a human\n"
    "child, it can hurl 100 grown-ups.");

const u8 gMachopPokedexTextUnused[] = _("");

const u8 gMachokePokedexText[] = _(
    "Its formidable body never gets tired.\n"
    "It helps people by doing work such as\n"
    "the moving of heavy goods.");

const u8 gMachokePokedexTextUnused[] = _("");

const u8 gMachampPokedexText[] = _(
    "Its four ruggedly developed arms can\n"
    "launch a flurry of 1,000 punches in just\n"
    "two seconds.");

const u8 gMachampPokedexTextUnused[] = _("");

const u8 gBellsproutPokedexText[] = _(
    "Its bud looks like a human face. Because\n"
    "of the bud, it is rumored to be a type of\n"
    "legendary mandrake plant.");

const u8 gBellsproutPokedexTextUnused[] = _("");

const u8 gWeepinbellPokedexText[] = _(
    "The leafy parts act as cutters for\n"
    "slashing foes. It spits a fluid that\n"
    "dissolves everything.");

const u8 gWeepinbellPokedexTextUnused[] = _("");

const u8 gVictreebelPokedexText[] = _(
    "Lures prey into its mouth with a honeylike\n"
    "aroma. The helpless prey is melted with\n"
    "a dissolving fluid.");

const u8 gVictreebelPokedexTextUnused[] = _("");

const u8 gTentacoolPokedexText[] = _(
    "Its eyes are as transparent as crystals.\n"
    "From them, it shoots mysterious\n"
    "beams of light.");

const u8 gTentacoolPokedexTextUnused[] = _("");

const u8 gTentacruelPokedexText[] = _(
    "It has 80 tentacles that move about\n"
    "freely. They can sting, causing poisoning\n"
    "and sharp, stabbing pain.");

const u8 gTentacruelPokedexTextUnused[] = _("");

const u8 gGeodudePokedexText[] = _(
    "Its round form makes it easy to pick up.\n"
    "Some people have used them to hurl\n"
    "at each other in a snowball fight.");

const u8 gGeodudePokedexTextUnused[] = _("");

const u8 gGravelerPokedexText[] = _(
    "Be careful while hiking on mountain trails.\n"
    "GRAVELER may come rolling down the path\n"
    "without slowing.");

const u8 gGravelerPokedexTextUnused[] = _("");

const u8 gGolemPokedexText[] = _(
    "It is enclosed in a hard shell that is as\n"
    "rugged as slabs of rock. It sheds skin\n"
    "once a year to grow larger.");

const u8 gGolemPokedexTextUnused[] = _("");

const u8 gPonytaPokedexText[] = _(
    "Its body is light, and its legs are\n"
    "incredibly powerful. It can clear\n"
    "Ayers Rock in one leap.");

const u8 gPonytaPokedexTextUnused[] = _("");

const u8 gRapidashPokedexText[] = _(
    "It can gallop at a top speed of 150\n"
    "miles per hour. It can race as fast as a\n"
    "bullet train while ablaze.");

const u8 gRapidashPokedexTextUnused[] = _("");

const u8 gSlowpokePokedexText[] = _(
    "It is always vacantly lost in thought, but\n"
    "no one knows what it is thinking about.\n"
    "It is good at fishing with its tail.");

const u8 gSlowpokePokedexTextUnused[] = _("");

const u8 gSlowbroPokedexText[] = _(
    "When a SLOWPOKE went hunting in the sea,\n"
    "its tail was bitten by a SHELLDER. That\n"
    "made it evolve into SLOWBRO.");

const u8 gSlowbroPokedexTextUnused[] = _("");

const u8 gMagnemitePokedexText[] = _(
    "It moves while constantly hovering.\n"
    "It discharges THUNDER WAVE and so on\n"
    "from the units at its sides.");

const u8 gMagnemitePokedexTextUnused[] = _("");

const u8 gMagnetonPokedexText[] = _(
    "A linked cluster formed of several\n"
    "MAGNEMITE. It discharges powerful\n"
    "magnetic waves at high voltage.");

const u8 gMagnetonPokedexTextUnused[] = _("");

const u8 gFarfetchdPokedexText[] = _(
    "It always walks about with a plant stalk\n"
    "clamped in its beak. The stalk is used for\n"
    "building its nest.");

const u8 gFarfetchdPokedexTextUnused[] = _("");

const u8 gDoduoPokedexText[] = _(
    "A two-headed POKéMON that was discovered\n"
    "as a sudden mutation. It runs at a pace\n"
    "of over 60 miles per hour.");

const u8 gDoduoPokedexTextUnused[] = _("");

const u8 gDodrioPokedexText[] = _(
    "An odd species that is rarely found.\n"
    "The three heads respectively represent\n"
    "joy, sadness, and anger.");

const u8 gDodrioPokedexTextUnused[] = _("");

const u8 gSeelPokedexText[] = _(
    "Covered with light blue fur, its hide is\n"
    "thick and tough. It is active in bitter\n"
    "cold of minus 40 degrees Fahrenheit.");

const u8 gSeelPokedexTextUnused[] = _("");

const u8 gDewgongPokedexText[] = _(
    "Its body is covered with a pure white\n"
    "fur. The colder the weather, the more\n"
    "active it becomes.");

const u8 gDewgongPokedexTextUnused[] = _("");

const u8 gGrimerPokedexText[] = _(
    "Sludge exposed to X rays from the moon\n"
    "transformed into GRIMER. It loves feeding\n"
    "on filthy things.");

const u8 gGrimerPokedexTextUnused[] = _("");

const u8 gMukPokedexText[] = _(
    "It is usually undetectable because it\n"
    "blends in with the ground. Touching it can\n"
    "cause terrible poisoning.");

const u8 gMukPokedexTextUnused[] = _("");

const u8 gShellderPokedexText[] = _(
    "It is encased in a shell that is harder\n"
    "than diamond. Inside, however, it is\n"
    "surprisingly tender.");

const u8 gShellderPokedexTextUnused[] = _("");

const u8 gCloysterPokedexText[] = _(
    "Its shell is extremely hard. It cannot be\n"
    "shattered, even with a bomb. The shell\n"
    "opens only when it is attacking.");

const u8 gCloysterPokedexTextUnused[] = _("");

const u8 gGastlyPokedexText[] = _(
    "A being that exists as a thin gas. It can\n"
    "topple an Indian elephant by enveloping\n"
    "the prey in two seconds.");

const u8 gGastlyPokedexTextUnused[] = _("");

const u8 gHaunterPokedexText[] = _(
    "If you get the feeling of being watched\n"
    "in darkness when nobody is around,\n"
    "HAUNTER is there.");

const u8 gHaunterPokedexTextUnused[] = _("");

const u8 gGengarPokedexText[] = _(
    "It is said to emerge from darkness to\n"
    "steal the lives of those who become lost\n"
    "in mountains.");

const u8 gGengarPokedexTextUnused[] = _("");

const u8 gOnixPokedexText[] = _(
    "It usually lives underground. It searches\n"
    "for food while boring its way through the\n"
    "ground at 50 miles per hour.");

const u8 gOnixPokedexTextUnused[] = _("");

const u8 gDrowzeePokedexText[] = _(
    "A descendent of the legendary animal\n"
    "baku, which is said to eat dreams. It is\n"
    "skilled at hypnotism.");

const u8 gDrowzeePokedexTextUnused[] = _("");

const u8 gHypnoPokedexText[] = _(
    "It carries a pendulum-like device. There\n"
    "once was an incident in which it took \n"
    "away a child it hypnotized.");

const u8 gHypnoPokedexTextUnused[] = _("");

const u8 gKrabbyPokedexText[] = _(
    "It can be found near the sea. The large\n"
    "pincers grow back if they are torn out of\n"
    "their sockets.");

const u8 gKrabbyPokedexTextUnused[] = _("");

const u8 gKinglerPokedexText[] = _(
    "Its large and hard pincer has 10,000-\n"
    "horsepower strength. However, being so\n"
    "big, it is unwieldy to move.");

const u8 gKinglerPokedexTextUnused[] = _("");

const u8 gVoltorbPokedexText[] = _(
    "A life-form whose identity is unknown.\n"
    "It is said to SCREECH or suddenly\n"
    "SELFDESTRUCT.");

const u8 gVoltorbPokedexTextUnused[] = _("");

const u8 gElectrodePokedexText[] = _(
    "It explodes in response to even minor\n"
    "stimuli. It is feared, with the nickname\n"
    "of “The Bomb Ball.”");

const u8 gElectrodePokedexTextUnused[] = _("");

const u8 gExeggcutePokedexText[] = _(
    "Even though it appears to be eggs of\n"
    "some sort, it was discovered to be a life-\n"
    "form more like plant seeds.");

const u8 gExeggcutePokedexTextUnused[] = _("");

const u8 gExeggutorPokedexText[] = _(
    "It is called “The Walking Tropical\n"
    "Rainforest.” Each of the nuts has\n"
    "a face and a will of its own.");

const u8 gExeggutorPokedexTextUnused[] = _("");

const u8 gCubonePokedexText[] = _(
    "It wears the skull of its dead mother on\n"
    "its head. When it becomes lonesome, it is\n"
    "said to cry loudly.");

const u8 gCubonePokedexTextUnused[] = _("");

const u8 gMarowakPokedexText[] = _(
    "It is small and was originally very weak.\n"
    "Its temperament turned ferocious when it\n"
    "began using bones.");

const u8 gMarowakPokedexTextUnused[] = _("");

const u8 gHitmonleePokedexText[] = _(
    "The legs freely contract and stretch.\n"
    "The stretchy legs allow it to hit a\n"
    "distant foe with a rising kick.");

const u8 gHitmonleePokedexTextUnused[] = _("");

const u8 gHitmonchanPokedexText[] = _(
    "The spirit of a pro boxer has infused this\n"
    "POKéMON. It throws punches that are\n"
    "faster than a bullet train.");

const u8 gHitmonchanPokedexTextUnused[] = _("");

const u8 gLickitungPokedexText[] = _(
    "Its tongue is twice the length of its\n"
    "body. It can be moved like an arm for\n"
    "grabbing food and attacking.");

const u8 gLickitungPokedexTextUnused[] = _("");

const u8 gKoffingPokedexText[] = _(
    "Its thin, balloon-like body is inflated by\n"
    "horribly toxic gases. It reeks when it is\n"
    "nearby.");

const u8 gKoffingPokedexTextUnused[] = _("");

const u8 gWeezingPokedexText[] = _(
    "Very rarely, a sudden mutation can result\n"
    "in two small KOFFING twins becoming\n"
    "conjoined as a WEEZING.");

const u8 gWeezingPokedexTextUnused[] = _("");

const u8 gRhyhornPokedexText[] = _(
    "Strong, but not too bright, this POKéMON\n"
    "can shatter even a skyscraper with its\n"
    "charging TACKLES.");

const u8 gRhyhornPokedexTextUnused[] = _("");

const u8 gRhydonPokedexText[] = _(
    "It begins walking on its hind legs after\n"
    "evolution. It can punch holes through\n"
    "boulders with its horn.");

const u8 gRhydonPokedexTextUnused[] = _("");

const u8 gChanseyPokedexText[] = _(
    "It lays several eggs a day. The eggs are\n"
    "apparently rich in nutrients and extremely\n"
    "delicious.");

const u8 gChanseyPokedexTextUnused[] = _("");

const u8 gTangelaPokedexText[] = _(
    "Blue plant vines cloak the POKéMON's\n"
    "identity in a tangled mass. It entangles\n"
    "anything that gets close.");

const u8 gTangelaPokedexTextUnused[] = _("");

const u8 gKangaskhanPokedexText[] = _(
    "The female raises its offspring in a pouch\n"
    "on its belly. It is skilled at attacking\n"
    "using COMET PUNCH.");

const u8 gKangaskhanPokedexTextUnused[] = _("");

const u8 gHorseaPokedexText[] = _(
    "It maintains balance using its tail, which\n"
    "is wound up like a coil. It may spray ink\n"
    "from its mouth.");

const u8 gHorseaPokedexTextUnused[] = _("");

const u8 gSeadraPokedexText[] = _(
    "Its body bristles with sharp spikes.\n"
    "Carelessly trying to touch it could cause\n"
    "fainting from the spikes.");

const u8 gSeadraPokedexTextUnused[] = _("");

const u8 gGoldeenPokedexText[] = _(
    "Its dorsal and pectoral fins are strongly\n"
    "developed like muscles. It can swim at a\n"
    "speed of five knots.");

const u8 gGoldeenPokedexTextUnused[] = _("");

const u8 gSeakingPokedexText[] = _(
    "The horn on its head is sharp like a\n"
    "drill. It bores a hole in a boulder to\n"
    "make its nest.");

const u8 gSeakingPokedexTextUnused[] = _("");

const u8 gStaryuPokedexText[] = _(
    "It appears in large numbers by seashores.\n"
    "At night, its central core flashes with a\n"
    "red light.");

const u8 gStaryuPokedexTextUnused[] = _("");

const u8 gStarmiePokedexText[] = _(
    "This POKéMON has a geometric body.\n"
    "Because of its body, the locals suspect\n"
    "that it is an alien creature.");

const u8 gStarmiePokedexTextUnused[] = _("");

const u8 gMrmimePokedexText[] = _(
    "It is adept at conning people. It is said\n"
    "to be able to create walls out of thin\n"
    "air by miming.");

const u8 gMrmimePokedexTextUnused[] = _("");

const u8 gScytherPokedexText[] = _(
    "It tears and shreds prey with its wickedly\n"
    "sharp scythes. It very rarely spreads its\n"
    "wings to fly.");

const u8 gScytherPokedexTextUnused[] = _("");

const u8 gJynxPokedexText[] = _(
    "It speaks using a language that sounds\n"
    "human. Research is under way to determine\n"
    "what is being said.");

const u8 gJynxPokedexTextUnused[] = _("");

const u8 gElectabuzzPokedexText[] = _(
    "It loves to feed on strong electricity.\n"
    "It occasionally appears around large\n"
    "power plants and so on.");

const u8 gElectabuzzPokedexTextUnused[] = _("");

const u8 gMagmarPokedexText[] = _(
    "Found near the mouth of a volcano.\n"
    "This fire-breather's body temperature is\n"
    "nearly 2,200 degrees Fahrenheit.");

const u8 gMagmarPokedexTextUnused[] = _("");

const u8 gPinsirPokedexText[] = _(
    "Its two long pincer horns are powerful.\n"
    "Once they grip an enemy, they won't\n"
    "release until the foe is torn.");

const u8 gPinsirPokedexTextUnused[] = _("");

const u8 gTaurosPokedexText[] = _(
    "When it is about to TACKLE, it whips\n"
    "its body repeatedly with its three\n"
    "long tails.");

const u8 gTaurosPokedexTextUnused[] = _("");

const u8 gMagikarpPokedexText[] = _(
    "It is virtually worthless in terms of both\n"
    "power and speed. It is the most weak and\n"
    "pathetic POKéMON in the world.");

const u8 gMagikarpPokedexTextUnused[] = _("");

const u8 gGyaradosPokedexText[] = _(
    "It has an extremely aggressive nature.\n"
    "The HYPER BEAM it shoots from its mouth\n"
    "totally incinerates all targets.");

const u8 gGyaradosPokedexTextUnused[] = _("");

const u8 gLaprasPokedexText[] = _(
    "Its high intelligence enables it to\n"
    "understand human speech. It likes to ferry\n"
    "people on its back.");

const u8 gLaprasPokedexTextUnused[] = _("");

const u8 gDittoPokedexText[] = _(
    "It can freely recombine its own cellular\n"
    "structure to transform into other life-\n"
    "forms.");

const u8 gDittoPokedexTextUnused[] = _("");

const u8 gEeveePokedexText[] = _(
    "An extremely rare POKéMON that may\n"
    "evolve in a number of different ways\n"
    "depending on stimuli.");

const u8 gEeveePokedexTextUnused[] = _("");

const u8 gVaporeonPokedexText[] = _(
    "Its body's cellular structure is similar to\n"
    "the molecular composition of water.\n"
    "It can melt invisibly in water.");

const u8 gVaporeonPokedexTextUnused[] = _("");

const u8 gJolteonPokedexText[] = _(
    "If it is angered or startled, the fur all\n"
    "over its body bristles like sharp needles\n"
    "that pierce foes.");

const u8 gJolteonPokedexTextUnused[] = _("");

const u8 gFlareonPokedexText[] = _(
    "It has a flame bag inside its body. After\n"
    "inhaling deeply, it blows out flames of\n"
    "nearly 3,100 degrees Fahrenheit.");

const u8 gFlareonPokedexTextUnused[] = _("");

const u8 gPorygonPokedexText[] = _(
    "Using the most advanced technologies,\n"
    "scientists finally succeeded in making the\n"
    "first artificial POKéMON.");

const u8 gPorygonPokedexTextUnused[] = _("");

const u8 gOmanytePokedexText[] = _(
    "A prehistoric POKéMON that lived in the\n"
    "primordial sea, it swims by twisting its\n"
    "10 tentacles about.");

const u8 gOmanytePokedexTextUnused[] = _("");

const u8 gOmastarPokedexText[] = _(
    "Its tentacles are highly developed as if\n"
    "they are hands and feet. As soon as it\n"
    "ensnares prey, it bites.");

const u8 gOmastarPokedexTextUnused[] = _("");

const u8 gKabutoPokedexText[] = _(
    "This POKéMON was regenerated from the\n"
    "fossil of an ancient creature. It protects\n"
    "itself with a hard shell.");

const u8 gKabutoPokedexTextUnused[] = _("");

const u8 gKabutopsPokedexText[] = _(
    "It swims freely through water. It catches\n"
    "prey with its scythe-like arms and drains\n"
    "the victim's fluids.");

const u8 gKabutopsPokedexTextUnused[] = _("");

const u8 gAerodactylPokedexText[] = _(
    "It was regenerated from a dinosaur's\n"
    "genetic matter that was found in amber.\n"
    "It flies with high-pitched cries.");

const u8 gAerodactylPokedexTextUnused[] = _("");

const u8 gSnorlaxPokedexText[] = _(
    "It is not satisfied unless it eats over 880\n"
    "pounds of food every day. When it is done\n"
    "eating, it goes promptly to sleep.");

const u8 gSnorlaxPokedexTextUnused[] = _("");

const u8 gArticunoPokedexText[] = _(
    "One of the legendary bird POKéMON.\n"
    "With its long tail trailing behind, its\n"
    "flying form is magnificent.");

const u8 gArticunoPokedexTextUnused[] = _("");

const u8 gZapdosPokedexText[] = _(
    "One of the legendary bird POKéMON.\n"
    "While it is flying, it makes crackling and\n"
    "snapping sounds.");

const u8 gZapdosPokedexTextUnused[] = _("");

const u8 gMoltresPokedexText[] = _(
    "One of the legendary bird POKéMON.\n"
    "Those seeing it are overwhelmed by its\n"
    "orange wings that seem to be on fire.");

const u8 gMoltresPokedexTextUnused[] = _("");

const u8 gDratiniPokedexText[] = _(
    "Even the young can exceed 6.5 feet in\n"
    "length. It grows larger by repeatedly\n"
    "shedding skin.");

const u8 gDratiniPokedexTextUnused[] = _("");

const u8 gDragonairPokedexText[] = _(
    "It is said to live in seas and lakes.\n"
    "Even though it has no wings, it has been\n"
    "seen flying occasionally.");

const u8 gDragonairPokedexTextUnused[] = _("");

const u8 gDragonitePokedexText[] = _(
    "It can fly in spite of its big and bulky\n"
    "physique. It circles the globe in just\n"
    "16 hours.");

const u8 gDragonitePokedexTextUnused[] = _("");

const u8 gMewtwoPokedexText[] = _(
    "A POKéMON whose genetic code was\n"
    "repeatedly recombined for research.\n"
    "It turned vicious as a result.");

const u8 gMewtwoPokedexTextUnused[] = _("");

const u8 gMewPokedexText[] = _(
    "A POKéMON of South America that was\n"
    "thought to have been extinct. It is very\n"
    "intelligent and learns any move.");

const u8 gMewPokedexTextUnused[] = _("");

const u8 gChikoritaPokedexText[] = _(

    "Its pleasantly aromatic leaves have the\n"



    "ability to check the humidity and\n"
    "temperature."
);

const u8 gChikoritaPokedexTextUnused[] = _("");

const u8 gBayleefPokedexText[] = _(
    "A spicy aroma emanates from around its\n"
    "neck. The aroma acts as a stimulant to\n"
    "restore health.");

const u8 gBayleefPokedexTextUnused[] = _("");

const u8 gMeganiumPokedexText[] = _(
    "MEGANIUM's breath has the power to revive\n"
    "dead grass and plants. It can make them\n"
    "healthy again.");

const u8 gMeganiumPokedexTextUnused[] = _("");

const u8 gCyndaquilPokedexText[] = _(
    "It usually stays hunched over. If it is\n"
    "angry or surprised, it shoots flames out\n"
    "of its back.");

const u8 gCyndaquilPokedexTextUnused[] = _("");

const u8 gQuilavaPokedexText[] = _(
    "This POKéMON is fully covered by\n"
    "nonflammable fur. It can withstand any\n"
    "kind of fire attack.");

const u8 gQuilavaPokedexTextUnused[] = _("");

const u8 gTyphlosionPokedexText[] = _(
    "It has a secret, devastating move. It\n"
    "rubs its blazing fur together to cause\n"
    "huge explosions.");

const u8 gTyphlosionPokedexTextUnused[] = _("");

const u8 gTotodilePokedexText[] = _(
    "It is small but rough and tough. It won't\n"
    "hesitate to take a bite out of anything\n"
    "that moves.");

const u8 gTotodilePokedexTextUnused[] = _("");

const u8 gCroconawPokedexText[] = _(
    "It opens its huge jaws wide when\n"
    "attacking. If it loses any fangs while\n"
    "biting, they grow back in.");

const u8 gCroconawPokedexTextUnused[] = _("");

const u8 gFeraligatrPokedexText[] = _(
    "It is hard for it to support its own\n"
    "weight out of water, so it gets down on\n"
    "all fours. But it moves fast.");

const u8 gFeraligatrPokedexTextUnused[] = _("");

const u8 gSentretPokedexText[] = _(
    "It stands on its tail so it can see a long\n"
    "way. If it spots an enemy, it cries loudly\n"
    "to warn its kind.");

const u8 gSentretPokedexTextUnused[] = _("");

const u8 gFurretPokedexText[] = _(
    "There is no telling where its tail begins.\n"
    "Despite its short legs, it is quick at\n"
    "hunting RATTATA.");

const u8 gFurretPokedexTextUnused[] = _("");

const u8 gHoothootPokedexText[] = _(
    "It has a perfect sense of time. Whatever\n"
    "happens, it keeps rhythm by precisely\n"
    "tilting its head in time.");

const u8 gHoothootPokedexTextUnused[] = _("");

const u8 gNoctowlPokedexText[] = _(
    "When it needs to think, it rotates its head\n"
    "180 degrees to sharpen its intellectual\n"
    "power.");

const u8 gNoctowlPokedexTextUnused[] = _("");

const u8 gLedybaPokedexText[] = _(
    "When the weather turns cold, numerous\n"
    "LEDYBA gather from everywhere to cluster\n"
    "and keep each other warm.");

const u8 gLedybaPokedexTextUnused[] = _("");

const u8 gLedianPokedexText[] = _(
    "The star patterns on its back grow larger\n"
    "or smaller depending on the number of\n"
    "stars in the night sky.");

const u8 gLedianPokedexTextUnused[] = _("");

const u8 gSpinarakPokedexText[] = _(
    "It spins a web using fine--but durable--\n"
    "thread. It then waits patiently for prey\n"
    "to be trapped.");

const u8 gSpinarakPokedexTextUnused[] = _("");

const u8 gAriadosPokedexText[] = _(
    "A single strand of a special string is\n"
    "endlessly spun out of its rear. The string\n"
    "leads back to its nest.");

const u8 gAriadosPokedexTextUnused[] = _("");

const u8 gCrobatPokedexText[] = _(
    "The development of wings on its legs\n"
    "enables it to fly fast but also makes it\n"
    "tough to stop and rest.");

const u8 gCrobatPokedexTextUnused[] = _("");

const u8 gChinchouPokedexText[] = _(
    "On the dark ocean floor, its only means\n"
    "of communication is its constantly\n"
    "flashing lights.");

const u8 gChinchouPokedexTextUnused[] = _("");

const u8 gLanturnPokedexText[] = _(
    "It blinds prey with an intense burst of\n"
    "light, then swallows the immobilized prey\n"
    "in a single gulp.");

const u8 gLanturnPokedexTextUnused[] = _("");

const u8 gPichuPokedexText[] = _(
    "Despite its small size, it can zap even\n"
    "adult humans. However, if it does so, it\n"
    "also surprises itself.");

const u8 gPichuPokedexTextUnused[] = _("");

const u8 gCleffaPokedexText[] = _(
    "When numerous meteors illuminate the\n"
    "night sky, sightings of CLEFFA strangely\n"
    "increase.");

const u8 gCleffaPokedexTextUnused[] = _("");

const u8 gIgglybuffPokedexText[] = _(
    "Its extremely flexible and elastic body\n"
    "makes it bounce continuously--anytime,\n"
    "anywhere.");

const u8 gIgglybuffPokedexTextUnused[] = _("");

const u8 gTogepiPokedexText[] = _(
    "A proverb claims that happiness will come\n"
    "to anyone who can make a sleeping TOGEPI\n"
    "stand up.");

const u8 gTogepiPokedexTextUnused[] = _("");

const u8 gTogeticPokedexText[] = _(
    "It grows dispirited if it is not with kind\n"
    "people. It can float in midair without\n"
    "moving its wings.");

const u8 gTogeticPokedexTextUnused[] = _("");

const u8 gNatuPokedexText[] = _(
    "It usually forages for food on the ground\n"
    "but may, on rare occasions, hop onto\n"
    "branches to peck at shoots.");

const u8 gNatuPokedexTextUnused[] = _("");

const u8 gXatuPokedexText[] = _(
    "In South America, it is said that its right\n"
    "eye sees the future and its left eye\n"
    "views the past.");

const u8 gXatuPokedexTextUnused[] = _("");

const u8 gMareepPokedexText[] = _(
    "Its fleece grows continually. In the\n"
    "summer, the fleece is fully shed, but it\n"
    "grows back in a week.");

const u8 gMareepPokedexTextUnused[] = _("");

const u8 gFlaaffyPokedexText[] = _(
    "Its fluffy fleece easily stores\n"
    "electricity. Its rubbery hide keeps it\n"
    "from being electrocuted.");

const u8 gFlaaffyPokedexTextUnused[] = _("");

const u8 gAmpharosPokedexText[] = _(
    "The bright light on its tail can be seen\n"
    "far away. It has been treasured since\n"
    "ancient times as a beacon.");

const u8 gAmpharosPokedexTextUnused[] = _("");

const u8 gBellossomPokedexText[] = _(
    "Plentiful in the tropics. When it dances,\n"
    "its petals rub together and make a\n"
    "pleasant ringing sound.");

const u8 gBellossomPokedexTextUnused[] = _("");

const u8 gMarillPokedexText[] = _(
    "The end of its tail serves as a buoy that\n"
    "keeps it from drowning, even in a vicious\n"
    "current.");

const u8 gMarillPokedexTextUnused[] = _("");

const u8 gAzumarillPokedexText[] = _(
    "When it plays in water, it rolls up its\n"
    "elongated ears to prevent their insides\n"
    "from getting wet.");

const u8 gAzumarillPokedexTextUnused[] = _("");

const u8 gSudowoodoPokedexText[] = _(
    "It disguises itself as a tree to avoid\n"
    "attack. It hates water, so it will\n"
    "disappear if it starts raining.");

const u8 gSudowoodoPokedexTextUnused[] = _("");

const u8 gPolitoedPokedexText[] = _(
    "Whenever three or more of these get\n"
    "together, they sing in a loud voice that\n"
    "sounds like bellowing.");

const u8 gPolitoedPokedexTextUnused[] = _("");

const u8 gHoppipPokedexText[] = _(
    "Its body is so light, it must grip the\n"
    "ground firmly with its feet to keep from\n"
    "being blown away.");

const u8 gHoppipPokedexTextUnused[] = _("");

const u8 gSkiploomPokedexText[] = _(
    "It spreads its petals to absorb sunlight.\n"
    "It also floats in the air to get closer to\n"
    "the sun.");

const u8 gSkiploomPokedexTextUnused[] = _("");

const u8 gJumpluffPokedexText[] = _(
    "It drifts on seasonal winds and spreads\n"
    "its cotton-like spores all over the world \n"
    "to make more offspring.");

const u8 gJumpluffPokedexTextUnused[] = _("");

const u8 gAipomPokedexText[] = _(
    "It lives atop tall trees. When leaping\n"
    "from branch to branch, it deftly uses its\n"
    "tail for balance.");

const u8 gAipomPokedexTextUnused[] = _("");

const u8 gSunkernPokedexText[] = _(
    "It lives by drinking only dewdrops from\n"
    "under the leaves of plants. It is said\n"
    "that it eats nothing else.");

const u8 gSunkernPokedexTextUnused[] = _("");

const u8 gSunfloraPokedexText[] = _(
    "In the daytime, it rushes about in a\n"
    "hectic manner, but it comes to a complete\n"
    "stop when the sun sets.");

const u8 gSunfloraPokedexTextUnused[] = _("");

const u8 gYanmaPokedexText[] = _(
    "Its large eyes can scan 360 degrees.\n"
    "It looks in all directions to seek out\n"
    "insects as its prey.");

const u8 gYanmaPokedexTextUnused[] = _("");

const u8 gWooperPokedexText[] = _(
    "When it walks around on the ground,\n"
    "it coats its body with a slimy, poisonous\n"
    "film.");

const u8 gWooperPokedexTextUnused[] = _("");

const u8 gQuagsirePokedexText[] = _(
    "Due to its relaxed and carefree attitude,\n"
    "it often bumps its head on boulders and\n"
    "boat hulls as it swims.");

const u8 gQuagsirePokedexTextUnused[] = _("");

const u8 gEspeonPokedexText[] = _(
    "By reading air currents, it can predict\n"
    "things such as the weather or its foe's\n"
    "next move.");

const u8 gEspeonPokedexTextUnused[] = _("");

const u8 gUmbreonPokedexText[] = _(
    "When darkness falls, the rings on its body\n"
    "begin to glow, striking fear in the hearts\n"
    "of anyone nearby.");

const u8 gUmbreonPokedexTextUnused[] = _("");

const u8 gMurkrowPokedexText[] = _(
    "It is said that when chased, it lures its\n"
    "attacker onto dark mountain trails where\n"
    "the foe will get lost.");

const u8 gMurkrowPokedexTextUnused[] = _("");

const u8 gSlowkingPokedexText[] = _(
    "When its head was bitten, toxins entered\n"
    "SLOWPOKE's head and unlocked an\n"
    "extraordinary power.");

const u8 gSlowkingPokedexTextUnused[] = _("");

const u8 gMisdreavusPokedexText[] = _(
    "It loves to bite and yank people's hair\n"
    "from behind without warning, just to see\n"
    "their shocked reactions.");

const u8 gMisdreavusPokedexTextUnused[] = _("");

const u8 gUnownPokedexText[] = _(
    "Its flat, thin body is always stuck on\n"
    "walls. Its shape appears to have some\n"
    "meaning.");

const u8 gUnownPokedexTextUnused[] = _("");

const u8 gWobbuffetPokedexText[] = _(
    "To keep its pitch-black tail hidden, it\n"
    "lives quietly in the darkness. It is never\n"
    "first to attack.");

const u8 gWobbuffetPokedexTextUnused[] = _("");

const u8 gGirafarigPokedexText[] = _(
    "Its tail, which also contains a small\n"
    "brain, may bite on its own if it notices an\n"
    "alluring smell.");

const u8 gGirafarigPokedexTextUnused[] = _("");

const u8 gPinecoPokedexText[] = _(
    "It hangs and waits for flying-insect prey\n"
    "to come near. It does not move about\n"
    "much on its own.");

const u8 gPinecoPokedexTextUnused[] = _("");

const u8 gForretressPokedexText[] = _(
    "It remains immovably rooted to its tree.\n"
    "It scatters pieces of its hard shell to\n"
    "drive its enemies away.");

const u8 gForretressPokedexTextUnused[] = _("");

const u8 gDunsparcePokedexText[] = _(
    "If spotted, it escapes by burrowing with\n"
    "its tail. It can hover just slightly using\n"
    "its wings.");

const u8 gDunsparcePokedexTextUnused[] = _("");

const u8 gGligarPokedexText[] = _(
    "It usually clings to cliffs. When it spots\n"
    "its prey, it spreads its wings and glides\n"
    "down to attack.");

const u8 gGligarPokedexTextUnused[] = _("");

const u8 gSteelixPokedexText[] = _(
    "It is said that if an ONIX lives for over\n"
    "100 years, its composition changes to\n"
    "become diamond-like.");

const u8 gSteelixPokedexTextUnused[] = _("");

const u8 gSnubbullPokedexText[] = _(
    "It has an active, playful nature. Many\n"
    "women like to frolic with it because of\n"
    "its affectionate ways.");

const u8 gSnubbullPokedexTextUnused[] = _("");

const u8 gGranbullPokedexText[] = _(
    "Because its fangs are too heavy, it\n"
    "always keeps its head tilted down.\n"
    "However, its BITE is powerful.");

const u8 gGranbullPokedexTextUnused[] = _("");

const u8 gQwilfishPokedexText[] = _(
    "The small spikes covering its body\n"
    "developed from scales. They inject a\n"
    "toxin that causes fainting.");

const u8 gQwilfishPokedexTextUnused[] = _("");

const u8 gScizorPokedexText[] = _(
    "Its wings are not used for flying.\n"
    "They are flapped at high speed to adjust\n"
    "its body temperature.");

const u8 gScizorPokedexTextUnused[] = _("");

const u8 gShucklePokedexText[] = _(
    "It stores BERRIES inside its shell.\n"
    "To avoid attacks, it hides beneath rocks\n"
    "and remains completely still.");

const u8 gShucklePokedexTextUnused[] = _("");

const u8 gHeracrossPokedexText[] = _(
    "Usually docile, but if disturbed while\n"
    "sipping honey, it chases off the intruder\n"
    "with its horn.");

const u8 gHeracrossPokedexTextUnused[] = _("");

const u8 gSneaselPokedexText[] = _(
    "Vicious in nature, it drives PIDGEY from\n"
    "their nests and feasts on the eggs that\n"
    "are left behind.");

const u8 gSneaselPokedexTextUnused[] = _("");

const u8 gTeddiursaPokedexText[] = _(
    "Before food becomes scarce in wintertime,\n"
    "its habit is to hoard food in many hidden\n"
    "locations.");

const u8 gTeddiursaPokedexTextUnused[] = _("");

const u8 gUrsaringPokedexText[] = _(
    "With its ability to distinguish any smell,\n"
    "it unfailingly finds all food buried deep\n"
    "underground.");

const u8 gUrsaringPokedexTextUnused[] = _("");

const u8 gSlugmaPokedexText[] = _(
    "A common sight in volcanic areas, it\n"
    "slowly slithers around in a constant\n"
    "search for warm places.");

const u8 gSlugmaPokedexTextUnused[] = _("");

const u8 gMagcargoPokedexText[] = _(
    "Its brittle shell occasionally spouts\n"
    "intense flames that circulate throughout\n"
    "its body.");

const u8 gMagcargoPokedexTextUnused[] = _("");

const u8 gSwinubPokedexText[] = _(
    "If it smells something enticing, it dashes\n"
    "off headlong to find the source of the\n"
    "aroma.");

const u8 gSwinubPokedexTextUnused[] = _("");

const u8 gPiloswinePokedexText[] = _(
    "If it charges at an enemy, the hairs on\n"
    "its back stand up straight. It is very\n"
    "sensitive to sound.");

const u8 gPiloswinePokedexTextUnused[] = _("");

const u8 gCorsolaPokedexText[] = _(
    "In a south sea nation, the people live in\n"
    "communities that are built on groups of\n"
    "these POKéMON.");

const u8 gCorsolaPokedexTextUnused[] = _("");

const u8 gRemoraidPokedexText[] = _(
    "Using its dorsal fin as a suction pad, it\n"
    "clings to a MANTINE's underside to\n"
    "scavenge for leftovers.");

const u8 gRemoraidPokedexTextUnused[] = _("");

const u8 gOctilleryPokedexText[] = _(
    "It instinctively sneaks into rocky holes.\n"
    "If it gets sleepy, it steals the nest of a\n"
    "fellow OCTILLERY.");

const u8 gOctilleryPokedexTextUnused[] = _("");

const u8 gDelibirdPokedexText[] = _(
    "It nests at the edge of sharp cliffs.\n"
    "It spends all day carrying food to its\n"
    "awaiting chicks.");

const u8 gDelibirdPokedexTextUnused[] = _("");

const u8 gMantinePokedexText[] = _(
    "Swimming freely in open seas, it may fly\n"
    "out of the water and over the waves if it\n"
    "builds up enough speed.");

const u8 gMantinePokedexTextUnused[] = _("");

const u8 gSkarmoryPokedexText[] = _(
    "After nesting in bramble bushes, the wings\n"
    "of its chicks grow hard from scratches by\n"
    "thorns.");

const u8 gSkarmoryPokedexTextUnused[] = _("");

const u8 gHoundourPokedexText[] = _(
    "To corner prey, they check each other's\n"
    "location using barks that only they can\n"
    "understand.");

const u8 gHoundourPokedexTextUnused[] = _("");

const u8 gHoundoomPokedexText[] = _(
    "Upon hearing its eerie howls, other\n"
    "POKéMON get the shivers and head straight\n"
    "back to their nests.");

const u8 gHoundoomPokedexTextUnused[] = _("");

const u8 gKingdraPokedexText[] = _(
    "It sleeps deep on the ocean floor to\n"
    "build its energy. It is said to cause\n"
    "tornadoes as it wakes.");

const u8 gKingdraPokedexTextUnused[] = _("");

const u8 gPhanpyPokedexText[] = _(
    "As a sign of affection, it bumps with its\n"
    "snout. However, it is so strong, it may\n"
    "send you flying.");

const u8 gPhanpyPokedexTextUnused[] = _("");

const u8 gDonphanPokedexText[] = _(
    "The longer and bigger its tusks, the\n"
    "higher its rank in its herd. The tusks take\n"
    "a long time to grow.");

const u8 gDonphanPokedexTextUnused[] = _("");

const u8 gPorygon2PokedexText[] = _(
    "Further research enhanced its abilities.\n"
    "Sometimes, it may exhibit motions that\n"
    "were not programmed.");

const u8 gPorygon2PokedexTextUnused[] = _("");

const u8 gStantlerPokedexText[] = _(
    "Those who stare at its antlers will\n"
    "gradually lose control of their senses\n"
    "and be unable to stand.");

const u8 gStantlerPokedexTextUnused[] = _("");

const u8 gSmearglePokedexText[] = _(
    "Once it becomes an adult, it has a\n"
    "tendency to let its comrades plant\n"
    "footprints on its back.");

const u8 gSmearglePokedexTextUnused[] = _("");

const u8 gTyroguePokedexText[] = _(
    "Even though it is small, it can't be\n"
    "ignored because it will slug any handy\n"
    "target without warning.");

const u8 gTyroguePokedexTextUnused[] = _("");

const u8 gHitmontopPokedexText[] = _(
    "It launches kicks while spinning. If it\n"
    "spins at high speed, it may bore its way\n"
    "into the ground.");

const u8 gHitmontopPokedexTextUnused[] = _("");

const u8 gSmoochumPokedexText[] = _(
    "It always rocks its head slowly backwards\n"
    "and forwards as if it is trying to kiss\n"
    "someone.");

const u8 gSmoochumPokedexTextUnused[] = _("");

const u8 gElekidPokedexText[] = _(
    "Even in the most vicious storm, this\n"
    "POKéMON plays happily if thunder rumbles\n"
    "in the sky.");

const u8 gElekidPokedexTextUnused[] = _("");

const u8 gMagbyPokedexText[] = _(
    "It is found in volcanic craters. Its body\n"
    "heat exceeds 1,100 degrees Fahrenheit,\n"
    "so don't underestimate it.");

const u8 gMagbyPokedexTextUnused[] = _("");

const u8 gMiltankPokedexText[] = _(
    "If it has just had a baby, the milk it\n"
    "produces contains much more nutrition than\n"
    "usual.");

const u8 gMiltankPokedexTextUnused[] = _("");

const u8 gBlisseyPokedexText[] = _(
    "It has a very compassionate nature. If it\n"
    "sees a sick POKéMON, it will nurse the\n"
    "sufferer back to health.");

const u8 gBlisseyPokedexTextUnused[] = _("");

const u8 gRaikouPokedexText[] = _(
    "This POKéMON races across the\n"
    "land while barking a cry that sounds\n"
    "like crashing thunder.");

const u8 gRaikouPokedexTextUnused[] = _("");

const u8 gEnteiPokedexText[] = _(
    "A POKéMON that races across the land.\n"
    "It is said that one is born every time a\n"
    "new volcano appears.");

const u8 gEnteiPokedexTextUnused[] = _("");

const u8 gSuicunePokedexText[] = _(
    "This POKéMON races across the land.\n"
    "It is said that north winds will somehow\n"
    "blow whenever it appears.");

const u8 gSuicunePokedexTextUnused[] = _("");

const u8 gLarvitarPokedexText[] = _(
    "It is born deep underground. It can't\n"
    "emerge until it has entirely consumed the\n"
    "soil around it.");

const u8 gLarvitarPokedexTextUnused[] = _("");

const u8 gPupitarPokedexText[] = _(
    "Even sealed in its shell, it can move\n"
    "freely. Hard and fast, it has outstanding\n"
    "destructive power.");

const u8 gPupitarPokedexTextUnused[] = _("");

const u8 gTyranitarPokedexText[] = _(

    "Its body can't be harmed by any sort of\n"
    "attack, so it is very eager to make\n"
    "challenges against enemies."





);

const u8 gTyranitarPokedexTextUnused[] = _("");

const u8 gLugiaPokedexText[] = _(
    "It is said to be the guardian of the seas.\n"
    "It is rumored to have been seen on the\n"
    "night of a storm.");

const u8 gLugiaPokedexTextUnused[] = _("");

const u8 gHoOhPokedexText[] = _(
    "A legend says that its body glows in\n"
    "seven colors. A rainbow is said to form\n"
    "behind it when it flies.");

const u8 gHoOhPokedexTextUnused[] = _("");

const u8 gCelebiPokedexText[] = _(
    "When CELEBI disappears deep in a forest,\n"
    "it is said to leave behind an egg it\n"
    "brought from the future.");

const u8 gCelebiPokedexTextUnused[] = _("");

const u8 gTreeckoPokedexText[] = _(
    "It quickly scales even vertical walls.\n"
    "It senses humidity with its tail to predict\n"
    "the next day's weather.");

const u8 gTreeckoPokedexTextUnused[] = _("");

const u8 gGrovylePokedexText[] = _(
    "Its strongly developed thigh muscles\n"
    "give it astounding agility and jumping\n"
    "performance.");

const u8 gGrovylePokedexTextUnused[] = _("");

const u8 gSceptilePokedexText[] = _(
    "The leaves on its forelegs are as sharp\n"
    "as swords. It agilely leaps about the\n"
    "branches of trees to strike.");

const u8 gSceptilePokedexTextUnused[] = _("");

const u8 gTorchicPokedexText[] = _(
    "It has a flame sac inside its belly that\n"
    "perpetually burns. It feels warm if it is\n"
    "hugged.");

const u8 gTorchicPokedexTextUnused[] = _("");

const u8 gCombuskenPokedexText[] = _(
    "It boosts its concentration by emitting\n"
    "harsh cries. Its kicks have outstanding\n"
    "destructive power.");

const u8 gCombuskenPokedexTextUnused[] = _("");

const u8 gBlazikenPokedexText[] = _(
    "When facing a tough foe, it looses flames\n"
    "from its wrists. Its powerful legs let it\n"
    "jump clear over buildings.");

const u8 gBlazikenPokedexTextUnused[] = _("");

const u8 gMudkipPokedexText[] = _(
    "Its large tail fin propels it through\n"
    "water with powerful acceleration. It is\n"
    "strong in spite of its size.");

const u8 gMudkipPokedexTextUnused[] = _("");

const u8 gMarshtompPokedexText[] = _(
    "It is at its best when on muddy ground\n"
    "with poor footing. It quickly overwhelms\n"
    "foes struggling in mud.");

const u8 gMarshtompPokedexTextUnused[] = _("");

const u8 gSwampertPokedexText[] = _(
    "Its arms are rock-hard. With one swing,\n"
    "they can batter down its foe. It makes its\n"
    "nest on beautiful beaches.");

const u8 gSwampertPokedexTextUnused[] = _("");

const u8 gPoochyenaPokedexText[] = _(
    "It has a very tenacious nature. Its acute\n"
    "sense of smell lets it chase a chosen\n"
    "prey without ever losing track.");

const u8 gPoochyenaPokedexTextUnused[] = _("");

const u8 gMightyenaPokedexText[] = _(
    "It will always obey the commands of a\n"
    "skilled TRAINER. Its behavior arises from\n"
    "its living in packs in ancient times.");

const u8 gMightyenaPokedexTextUnused[] = _("");

const u8 gZigzagoonPokedexText[] = _(
    "A POKéMON with abundant curiosity.\n"
    "It shows an interest in everything, so it\n"
    "always zigs and zags.");

const u8 gZigzagoonPokedexTextUnused[] = _("");

const u8 gLinoonePokedexText[] = _(
    "When running in a straight line, it can top\n"
    "60 miles per hour. However, it has a\n"
    "tough time with curved roads.");

const u8 gLinoonePokedexTextUnused[] = _("");

const u8 gWurmplePokedexText[] = _(
    "It lives amidst tall grass and in forests.\n"
    "When attacked, it resists by pointing its\n"
    "venomous spikes at the foe.");

const u8 gWurmplePokedexTextUnused[] = _("");

const u8 gSilcoonPokedexText[] = _(
    "It conserves its energy by moving as\n"
    "little as possible. It awaits evolution\n"
    "while drinking only a little rainwater.");

const u8 gSilcoonPokedexTextUnused[] = _("");

const u8 gBeautiflyPokedexText[] = _(
    "Despite its appearance, it has an\n"
    "aggressive nature. It attacks by jabbing\n"
    "with its long, thin mouth.");

const u8 gBeautiflyPokedexTextUnused[] = _("");

const u8 gCascoonPokedexText[] = _(
    "Its body, which is made of soft silk,\n"
    "hardens over time. When cracks appear,\n"
    "evolution is near.");

const u8 gCascoonPokedexTextUnused[] = _("");

const u8 gDustoxPokedexText[] = _(
    "It scatters horribly toxic dust when it\n"
    "senses danger. They tend to gather in the\n"
    "glow of streetlamps at night.");

const u8 gDustoxPokedexTextUnused[] = _("");

const u8 gLotadPokedexText[] = _(
    "It searches about for clean water. If it\n"
    "does not drink water for too long, the\n"
    "leaf on its head wilts.");

const u8 gLotadPokedexTextUnused[] = _("");

const u8 gLombrePokedexText[] = _(
    "It lives at the water's edge where it is\n"
    "sunny. It sleeps on a bed of water grass\n"
    "by day and becomes active at night.");

const u8 gLombrePokedexTextUnused[] = _("");

const u8 gLudicoloPokedexText[] = _(
    "The rhythm of bright, festive music\n"
    "activates LUDICOLO's cells, making it more\n"
    "powerful.");

const u8 gLudicoloPokedexTextUnused[] = _("");

const u8 gSeedotPokedexText[] = _(
    "If it remains still, it becomes impossible\n"
    "to distinguish from real nuts. It delights\n"
    "in surprising foraging PIDGEY.");

const u8 gSeedotPokedexTextUnused[] = _("");

const u8 gNuzleafPokedexText[] = _(
    "They live in holes bored in large trees.\n"
    "The sound of NUZLEAF's grass flute fills\n"
    "listeners with dread.");

const u8 gNuzleafPokedexTextUnused[] = _("");

const u8 gShiftryPokedexText[] = _(
    "A POKéMON that was feared as a forest\n"
    "guardian. It can read the foe's mind and\n"
    "take preemptive action.");

const u8 gShiftryPokedexTextUnused[] = _("");

const u8 gTaillowPokedexText[] = _(
    "It dislikes cold seasons. They migrate to\n"
    "other lands in search of warmth, flying\n"
    "over 180 miles a day.");

const u8 gTaillowPokedexTextUnused[] = _("");

const u8 gSwellowPokedexText[] = _(
    "If its two tail feathers are standing at\n"
    "attention, it is proof of good health.\n"
    "It soars elegantly in the sky.");

const u8 gSwellowPokedexTextUnused[] = _("");

const u8 gWingullPokedexText[] = _(
    "It rides upon ocean winds as if it were\n"
    "a glider. In the winter, it hides food\n"
    "around its nest.");

const u8 gWingullPokedexTextUnused[] = _("");

const u8 gPelipperPokedexText[] = _(
    "It is a flying transporter that carries\n"
    "small POKéMON in its beak. It bobs on the\n"
    "waves to rest its wings.");

const u8 gPelipperPokedexTextUnused[] = _("");

const u8 gRaltsPokedexText[] = _(
    "It is highly attuned to the emotions of\n"
    "people and POKéMON. It hides if it senses\n"
    "hostility.");

const u8 gRaltsPokedexTextUnused[] = _("");

const u8 gKirliaPokedexText[] = _(
    "The cheerful spirit of its TRAINER gives\n"
    "it energy for its psychokinetic power.\n"
    "It spins and dances when happy.");

const u8 gKirliaPokedexTextUnused[] = _("");

const u8 gGardevoirPokedexText[] = _(
    "It has the power to predict the future.\n"
    "Its power peaks when it is protecting its\n"
    "TRAINER.");

const u8 gGardevoirPokedexTextUnused[] = _("");

const u8 gSurskitPokedexText[] = _(
    "They usually live on ponds, but after an\n"
    "evening shower, they may appear on\n"
    "puddles in towns.");

const u8 gSurskitPokedexTextUnused[] = _("");

const u8 gMasquerainPokedexText[] = _(
    "The antennae have distinctive patterns\n"
    "that look like eyes. When it rains, they\n"
    "grow heavy, making flight impossible.");

const u8 gMasquerainPokedexTextUnused[] = _("");

const u8 gShroomishPokedexText[] = _(
    "It prefers damp places. By day it remains\n"
    "still in the forest shade. It releases\n"
    "toxic powder from its head.");

const u8 gShroomishPokedexTextUnused[] = _("");

const u8 gBreloomPokedexText[] = _(
    "The seeds on its tail are made of toxic\n"
    "spores. It knocks out foes with quick,\n"
    "virtually invisible punches.");

const u8 gBreloomPokedexTextUnused[] = _("");

const u8 gSlakothPokedexText[] = _(
    "It sleeps for 20 hours every day. Making\n"
    "drowsy those that see it is one of\n"
    "its abilities.");

const u8 gSlakothPokedexTextUnused[] = _("");

const u8 gVigorothPokedexText[] = _(
    "It is always hungry because it won't stop\n"
    "rampaging. Even while it is eating, it\n"
    "can't keep still.");

const u8 gVigorothPokedexTextUnused[] = _("");

const u8 gSlakingPokedexText[] = _(
    "It is the world's most slothful POKéMON.\n"
    "However, it can exert horrifying power by\n"
    "releasing pent-up energy all at once.");

const u8 gSlakingPokedexTextUnused[] = _("");

const u8 gNincadaPokedexText[] = _(
    "Because it lived almost entirely\n"
    "underground, it is nearly blind.\n"
    "It uses its antennae instead.");

const u8 gNincadaPokedexTextUnused[] = _("");

const u8 gNinjaskPokedexText[] = _(
    "This POKéMON is so quick, it is said to\n"
    "be able to avoid any attack. It loves to\n"
    "feed on tree sap.");

const u8 gNinjaskPokedexTextUnused[] = _("");

const u8 gShedinjaPokedexText[] = _(
    "A most peculiar POKéMON that somehow\n"
    "appears in a POKé BALL when a NINCADA\n"
    "evolves.");

const u8 gShedinjaPokedexTextUnused[] = _("");

const u8 gWhismurPokedexText[] = _(
    "It usually murmurs, but starts crying\n"
    "loudly if it senses danger. It stops when\n"
    "its ear covers are shut.");

const u8 gWhismurPokedexTextUnused[] = _("");

const u8 gLoudredPokedexText[] = _(
    "When it stamps its feet and bellows, it\n"
    "generates ultrasonic waves that can blow\n"
    "apart a house.");

const u8 gLoudredPokedexTextUnused[] = _("");

const u8 gExploudPokedexText[] = _(
    "It emits a variety of sounds from the \n"
    "holes all over its body. Its loud cries\n"
    "can be heard from over six miles away.");

const u8 gExploudPokedexTextUnused[] = _("");

const u8 gMakuhitaPokedexText[] = _(
    "It grows stronger by enduring harsh\n"
    "training. It is a gutsy POKéMON that can\n"
    "withstand any attack.");

const u8 gMakuhitaPokedexTextUnused[] = _("");

const u8 gHariyamaPokedexText[] = _(
    "It stomps on the ground to build power.\n"
    "It can send a 10-ton truck flying with a\n"
    "straight-arm punch.");

const u8 gHariyamaPokedexTextUnused[] = _("");

const u8 gAzurillPokedexText[] = _(
    "It battles by flinging around its tail,\n"
    "which is bigger than its body. The\n"
    "tail is a flotation device in water.");

const u8 gAzurillPokedexTextUnused[] = _("");

const u8 gNosepassPokedexText[] = _(
    "Its magnetic nose consistently faces\n"
    "north. Travelers check NOSEPASS to get\n"
    "their bearings.");

const u8 gNosepassPokedexTextUnused[] = _("");

const u8 gSkittyPokedexText[] = _(
    "It is said to be difficult to earn its\n"
    "trust. However, it is extremely popular\n"
    "for its cute looks and behavior.");

const u8 gSkittyPokedexTextUnused[] = _("");

const u8 gDelcattyPokedexText[] = _(
    "The favorite of trend-conscious\n"
    "female TRAINERS, they are used in\n"
    "competition for their style and fur.");

const u8 gDelcattyPokedexTextUnused[] = _("");

const u8 gSableyePokedexText[] = _(
    "It feeds on gemstone crystals.\n"
    "In darkness, its eyes sparkle with the\n"
    "glitter of jewels.");

const u8 gSableyePokedexTextUnused[] = _("");

const u8 gMawilePokedexText[] = _(
    "It uses its docile-looking face to lull\n"
    "foes into complacency, then bites with its\n"
    "huge, relentless jaws.");

const u8 gMawilePokedexTextUnused[] = _("");

const u8 gAronPokedexText[] = _(
    "It eats iron to build its steel body.\n"
    "It is a pest that descends from mountains\n"
    "to eat bridges and train tracks.");

const u8 gAronPokedexTextUnused[] = _("");

const u8 gLaironPokedexText[] = _(
    "It habitually shows off its strength with\n"
    "the size of sparks it creates by ramming\n"
    "its steel body into boulders.");

const u8 gLaironPokedexTextUnused[] = _("");

const u8 gAggronPokedexText[] = _(
    "It claims a large mountain as its sole\n"
    "territory. It mercilessly thrashes those\n"
    "that violate its space.");

const u8 gAggronPokedexTextUnused[] = _("");

const u8 gMedititePokedexText[] = _(
    "It never skips its daily yoga training.\n"
    "It heightens its inner strength through\n"
    "meditation.");

const u8 gMedititePokedexTextUnused[] = _("");

const u8 gMedichamPokedexText[] = _(
    "It elegantly avoids attacks with dance-\n"
    "like steps, then launches a devastating\n"
    "blow in the same motion.");

const u8 gMedichamPokedexTextUnused[] = _("");

const u8 gElectrikePokedexText[] = _(
    "It stores static electricity in its fur\n"
    "for discharging. It gives off sparks if a\n"
    "storm approaches.");

const u8 gElectrikePokedexTextUnused[] = _("");

const u8 gManectricPokedexText[] = _(
    "It rarely appears before people.\n"
    "It is said to nest where lightning has\n"
    "fallen.");

const u8 gManectricPokedexTextUnused[] = _("");

const u8 gPluslePokedexText[] = _(
    "It cheers on partners while scattering\n"
    "sparks from its body. It climbs telephone\n"
    "poles to absorb electricity.");

const u8 gPluslePokedexTextUnused[] = _("");

const u8 gMinunPokedexText[] = _(
    "Its dislike of water makes it take shelter\n"
    "under the eaves of houses in rain. It uses\n"
    "pom-poms made of sparks for cheering.");

const u8 gMinunPokedexTextUnused[] = _("");

const u8 gVolbeatPokedexText[] = _(
    "It lives around clean ponds. At night,\n"
    "its rear lights up. It converses with\n"
    "others by flashing its light.");

const u8 gVolbeatPokedexTextUnused[] = _("");

const u8 gIllumisePokedexText[] = _(
    "It guides VOLBEAT to draw signs in night\n"
    "skies. There are scientists that study the\n"
    "patterns it creates.");

const u8 gIllumisePokedexTextUnused[] = _("");

const u8 gRoseliaPokedexText[] = _(
    "Its flowers give off a relaxing fragrance.\n"
    "The stronger its aroma, the healthier\n"
    "the ROSELIA is.");

const u8 gRoseliaPokedexTextUnused[] = _("");

const u8 gGulpinPokedexText[] = _(
    "There is nothing its stomach can't digest.\n"
    "While it is digesting, vile, overpowering\n"
    "gases are expelled.");

const u8 gGulpinPokedexTextUnused[] = _("");

const u8 gSwalotPokedexText[] = _(
    "It can swallow a tire whole in one gulp.\n"
    "It secretes a horribly toxic fluid from\n"
    "the pores on its body.");

const u8 gSwalotPokedexTextUnused[] = _("");

const u8 gCarvanhaPokedexText[] = _(
    "It lives in massive rivers that course\n"
    "through jungles. It swarms prey that\n"
    "enter its territory.");

const u8 gCarvanhaPokedexTextUnused[] = _("");

const u8 gSharpedoPokedexText[] = _(
    "The ruffian of the seas, it has fangs that\n"
    "crunch through iron. It swims by jetting\n"
    "water from its rear.");

const u8 gSharpedoPokedexTextUnused[] = _("");

const u8 gWailmerPokedexText[] = _(
    "When it sucks in a large volume of\n"
    "seawater, it becomes like a big, bouncy\n"
    "ball. It eats a ton of food daily.");

const u8 gWailmerPokedexTextUnused[] = _("");

const u8 gWailordPokedexText[] = _(
    "It is among the largest of all POKéMON.\n"
    "It herds prey in a pack then swallows the\n"
    "massed prey in one gulp.");

const u8 gWailordPokedexTextUnused[] = _("");

const u8 gNumelPokedexText[] = _(
    "Magma of almost 2,200 degrees Fahrenheit\n"
    "courses through its body. When it grows\n"
    "cold, the magma hardens and slows it.");

const u8 gNumelPokedexTextUnused[] = _("");

const u8 gCameruptPokedexText[] = _(
    "If angered, the humps on its back erupt\n"
    "in a shower of molten lava. It lives in\n"
    "the craters of volcanoes.");

const u8 gCameruptPokedexTextUnused[] = _("");

const u8 gTorkoalPokedexText[] = _(
    "It burns coal inside its shell. If it is\n"
    "attacked, it belches thick, black smoke\n"
    "and flees.");

const u8 gTorkoalPokedexTextUnused[] = _("");

const u8 gSpoinkPokedexText[] = _(
    "It apparently dies if it stops bouncing\n"
    "about. It carries a pearl from CLAMPERL\n"
    "on its head.");

const u8 gSpoinkPokedexTextUnused[] = _("");

const u8 gGrumpigPokedexText[] = _(
    "It can gain control over foes by doing\n"
    "odd dance steps. The black pearls on its\n"
    "forehead are precious gems.");

const u8 gGrumpigPokedexTextUnused[] = _("");

const u8 gSpindaPokedexText[] = _(
    "No two SPINDA are said to have identical\n"
    "patterns. It confuses foes with its\n"
    "stumbling motions.");

const u8 gSpindaPokedexTextUnused[] = _("");

const u8 gTrapinchPokedexText[] = _(
    "It lives in arid deserts. It makes a\n"
    "sloping pit trap in sand where it\n"
    "patiently awaits prey.");

const u8 gTrapinchPokedexTextUnused[] = _("");

const u8 gVibravaPokedexText[] = _(
    "It generates ultrasonic waves by violently\n"
    "flapping its wings. After making its prey\n"
    "faint, it melts the prey with acid.");

const u8 gVibravaPokedexTextUnused[] = _("");

const u8 gFlygonPokedexText[] = _(
    "It hides itself by kicking up desert sand\n"
    "with its wings. Red covers shield its eyes\n"
    "from sand.");

const u8 gFlygonPokedexTextUnused[] = _("");

const u8 gCacneaPokedexText[] = _(
    "It prefers harsh environments such as\n"
    "deserts. It can survive for 30 days on\n"
    "water stored in its body.");

const u8 gCacneaPokedexTextUnused[] = _("");

const u8 gCacturnePokedexText[] = _(
    "It lives in deserts. It becomes active at\n"
    "night when it hunts for prey exhausted\n"
    "from the desert's heat.");

const u8 gCacturnePokedexTextUnused[] = _("");

const u8 gSwabluPokedexText[] = _(
    "It constantly grooms its cotton-like\n"
    "wings. It takes a shower to clean\n"
    "itself if it becomes dirty.");

const u8 gSwabluPokedexTextUnused[] = _("");

const u8 gAltariaPokedexText[] = _(
    "If you hear a beautiful melody trilling\n"
    "deep among mountains far from people,\n"
    "it is ALTARIA's humming.");

const u8 gAltariaPokedexTextUnused[] = _("");

const u8 gZangoosePokedexText[] = _(
    "If it comes across a SEVIPER, its fur\n"
    "bristles and it assumes its battle pose.\n"
    "Its sharp claws are its best weapon.");

const u8 gZangoosePokedexTextUnused[] = _("");

const u8 gSeviperPokedexText[] = _(
    "It sharpens its swordlike tail on hard\n"
    "rocks. It hides in tall grass and strikes\n"
    "unwary prey with venomous fangs.");

const u8 gSeviperPokedexTextUnused[] = _("");

const u8 gLunatonePokedexText[] = _(
    "Its health ebbs and flows with the lunar\n"
    "cycle. It brims with power when exposed\n"
    "to the light of the full moon.");

const u8 gLunatonePokedexTextUnused[] = _("");

const u8 gSolrockPokedexText[] = _(
    "It absorbs solar energy during the day.\n"
    "Always expressionless, it can sense what\n"
    "its foe is thinking.");

const u8 gSolrockPokedexTextUnused[] = _("");

const u8 gBarboachPokedexText[] = _(
    "It probes muddy riverbeds with its two\n"
    "long whiskers. A slimy film protects its\n"
    "body.");

const u8 gBarboachPokedexTextUnused[] = _("");

const u8 gWhiscashPokedexText[] = _(
    "It makes its nest at the bottom of \n"
    "swamps. It will eat anything - if it is\n"
    "alive, WHISCASH will eat it.");

const u8 gWhiscashPokedexTextUnused[] = _("");

const u8 gCorphishPokedexText[] = _(
    "It came from overseas. It is a very hardy\n"
    "creature that will quickly proliferate,\n"
    "even in polluted streams.");

const u8 gCorphishPokedexTextUnused[] = _("");

const u8 gCrawdauntPokedexText[] = _(
    "A rough customer that wildly flails its\n"
    "giant claws. It is said to be extremely\n"
    "hard to raise.");

const u8 gCrawdauntPokedexTextUnused[] = _("");

const u8 gBaltoyPokedexText[] = _(
    "It was discovered in ancient ruins.\n"
    "While moving, it constantly spins. It\n"
    "stands on one foot even when asleep.");

const u8 gBaltoyPokedexTextUnused[] = _("");

const u8 gClaydolPokedexText[] = _(
    "It appears to have been born from clay\n"
    "dolls made by ancient people. It uses\n"
    "telekinesis to float and move.");

const u8 gClaydolPokedexTextUnused[] = _("");

const u8 gLileepPokedexText[] = _(
    "It became extinct roughly 100 million\n"
    "years ago. It was regenerated from a\n"
    "fossil using advanced techniques.");

const u8 gLileepPokedexTextUnused[] = _("");

const u8 gCradilyPokedexText[] = _(
    "It ensnares prey with its eight tentacles.\n"
    "It then melts the prey with a strong acid\n"
    "before feeding.");

const u8 gCradilyPokedexTextUnused[] = _("");

const u8 gAnorithPokedexText[] = _(
    "It is a kind of POKéMON progenitor.\n"
    "It uses its extending claws to catch prey\n"
    "hiding among rocks on the seafloor.");

const u8 gAnorithPokedexTextUnused[] = _("");

const u8 gArmaldoPokedexText[] = _(
    "Protected by a hard shell, its body is\n"
    "very sturdy. It skewers prey with its\n"
    "claws to feed.");

const u8 gArmaldoPokedexTextUnused[] = _("");

const u8 gFeebasPokedexText[] = _(
    "Ridiculed for its shabby appearance,\n"
    "it is ignored by researchers. It lives in\n"
    "ponds choked with weeds.");

const u8 gFeebasPokedexTextUnused[] = _("");

const u8 gMiloticPokedexText[] = _(
    "MILOTIC is breathtakingly beautiful.\n"
    "Those that see it are said to forget their\n"
    "combative spirits.");

const u8 gMiloticPokedexTextUnused[] = _("");

const u8 gCastformPokedexText[] = _(
    "It has the ability to change its form into\n"
    "the sun, the rain, or a snow cloud, \n"
    "depending on the weather.");

const u8 gCastformPokedexTextUnused[] = _("");

const u8 gKecleonPokedexText[] = _(
    "It changes body color to blend in with\n"
    "its surroundings. It also changes color if\n"
    "it is happy or sad.");

const u8 gKecleonPokedexTextUnused[] = _("");

const u8 gShuppetPokedexText[] = _(
    "It loves to feed on feelings like envy and\n"
    "malice. Its upright horn catches the\n"
    "emotions of people.");

const u8 gShuppetPokedexTextUnused[] = _("");

const u8 gBanettePokedexText[] = _(
    "Strong feelings of hatred turned a puppet\n"
    "into a POKéMON. If it opens its mouth,\n"
    "its cursed energy escapes.");

const u8 gBanettePokedexTextUnused[] = _("");

const u8 gDuskullPokedexText[] = _(
    "Making itself invisible, it silently sneaks\n"
    "up to prey. It has the ability to slip\n"
    "through thick walls.");

const u8 gDuskullPokedexTextUnused[] = _("");

const u8 gDusclopsPokedexText[] = _(
    "Its body is entirely hollow. When it opens\n"
    "its mouth, it sucks everything in as if it\n"
    "were a black hole.");

const u8 gDusclopsPokedexTextUnused[] = _("");

const u8 gTropiusPokedexText[] = _(
    "It lives in tropical jungles. The bunch of\n"
    "fruit around its neck is delicious.\n"
    "The fruit grows twice a year.");

const u8 gTropiusPokedexTextUnused[] = _("");

const u8 gChimechoPokedexText[] = _(
    "It travels by riding on winds. It cleverly\n"
    "uses its long tail to pluck nuts and\n"
    "berries, which it loves to eat.");

const u8 gChimechoPokedexTextUnused[] = _("");

const u8 gAbsolPokedexText[] = _(
    "It appears when it senses an impending\n"
    "natural disaster. As a result, it was\n"
    "mistaken as a doom-bringer.");

const u8 gAbsolPokedexTextUnused[] = _("");

const u8 gWynautPokedexText[] = _(
    "It tends to move in a pack with others.\n"
    "They cluster in a tight group to sleep in\n"
    "a cave.");

const u8 gWynautPokedexTextUnused[] = _("");

const u8 gSnoruntPokedexText[] = _(
    "It is said that a home visited by a\n"
    "SNORUNT will prosper. It can withstand\n"
    "cold of minus 150 degrees Fahrenheit.");

const u8 gSnoruntPokedexTextUnused[] = _("");

const u8 gGlaliePokedexText[] = _(
    "It has a body of ice that won't melt,\n"
    "even with fire. It can instantly freeze\n"
    "moisture in the atmosphere.");

const u8 gGlaliePokedexTextUnused[] = _("");

const u8 gSphealPokedexText[] = _(
    "Its body is covered in fluffy fur. The\n"
    "fur keeps it from feeling cold while\n"
    "it is rolling on ice.");

const u8 gSphealPokedexTextUnused[] = _("");

const u8 gSealeoPokedexText[] = _(
    "It touches new things with its nose to\n"
    "test for smell and feel. It plays by\n"
    "spinning SPHEAL on its nose.");

const u8 gSealeoPokedexTextUnused[] = _("");

const u8 gWalreinPokedexText[] = _(
    "It swims through icy seas while shattering\n"
    "ice floes with its large tusks. It is\n"
    "protected by its thick blubber.");

const u8 gWalreinPokedexTextUnused[] = _("");

const u8 gClamperlPokedexText[] = _(
    "It is protected by a sturdy shell.\n"
    "Once in a lifetime, it makes a magnificent\n"
    "pearl.");

const u8 gClamperlPokedexTextUnused[] = _("");

const u8 gHuntailPokedexText[] = _(
    "It lives deep in the sea where no light\n"
    "ever filters down. It lights up its small\n"
    "fishlike tail to attract prey.");

const u8 gHuntailPokedexTextUnused[] = _("");

const u8 gGorebyssPokedexText[] = _(
    "Its swimming form is exquisitely elegant.\n"
    "With its thin mouth, it feeds on seaweed\n"
    "that grows between rocks.");

const u8 gGorebyssPokedexTextUnused[] = _("");

const u8 gRelicanthPokedexText[] = _(
    "It has remained unchanged for 100\n"
    "million years. It was discovered\n"
    "during a deep-sea exploration.");

const u8 gRelicanthPokedexTextUnused[] = _("");

const u8 gLuvdiscPokedexText[] = _(
    "During the spawning season, countless\n"
    "LUVDISC congregate at coral reefs,\n"
    "turning the waters pink.");

const u8 gLuvdiscPokedexTextUnused[] = _("");

const u8 gBagonPokedexText[] = _(
    "Its steel-hard head can shatter boulders.\n"
    "It longingly hopes for wings to grow so it\n"
    "can fly.");

const u8 gBagonPokedexTextUnused[] = _("");

const u8 gShelgonPokedexText[] = _(
    "Its armored body makes all attacks bounce\n"
    "off. The armor is too tough, however,\n"
    "making it heavy and somewhat sluggish.");

const u8 gShelgonPokedexTextUnused[] = _("");

const u8 gSalamencePokedexText[] = _(
    "It becomes uncontrollable if it is\n"
    "enraged. It destroys everything with\n"
    "shredding claws and fire.");

const u8 gSalamencePokedexTextUnused[] = _("");

const u8 gBeldumPokedexText[] = _(
    "It uses magnetic waves to converse with\n"
    "its kind. All the cells in its body are\n"
    "magnetic.");

const u8 gBeldumPokedexTextUnused[] = _("");

const u8 gMetangPokedexText[] = _(
    "It floats midair using magnetism. Its body\n"
    "is so tough, even a crash with a jet\n"
    "plane won't leave a scratch.");

const u8 gMetangPokedexTextUnused[] = _("");

const u8 gMetagrossPokedexText[] = _(
    "It is formed by two METANG fusing.\n"
    "Its four brains are said to be superior\n"
    "to a supercomputer.");

const u8 gMetagrossPokedexTextUnused[] = _("");

const u8 gRegirockPokedexText[] = _(
    "It is entirely composed of rocks with no\n"
    "sign of a brain or heart. It is a mystery\n"
    "even to modern scientists.");

const u8 gRegirockPokedexTextUnused[] = _("");

const u8 gRegicePokedexText[] = _(
    "Research revealed that its body is made\n"
    "of the same kind of ice that is found at\n"
    "the South Pole.");

const u8 gRegicePokedexTextUnused[] = _("");

const u8 gRegisteelPokedexText[] = _(
    "It is sturdier than any kind of metal.\n"
    "It hardened due to pressure underground\n"
    "over tens of thousands of years.");

const u8 gRegisteelPokedexTextUnused[] = _("");

const u8 gLatiasPokedexText[] = _(
    "It can telepathically communicate with\n"
    "people. It changes its appearance using\n"
    "its down that refracts light.");

const u8 gLatiasPokedexTextUnused[] = _("");

const u8 gLatiosPokedexText[] = _(
    "It has a docile temperament and dislikes\n"
    "fighting. Tucking in its forelegs, it can\n"
    "fly faster than a jet plane.");

const u8 gLatiosPokedexTextUnused[] = _("");

const u8 gKyogrePokedexText[] = _(
    "This POKéMON is said to have\n"
    "expanded the sea by bringing heavy rains.\n"
    "It has the power to control water.");

const u8 gKyogrePokedexTextUnused[] = _("");

const u8 gGroudonPokedexText[] = _(
    "This legendary POKéMON is said to\n"
    "represent the land. It went to sleep after\n"
    "dueling KYOGRE.");

const u8 gGroudonPokedexTextUnused[] = _("");

const u8 gRayquazaPokedexText[] = _(
    "It has lived for hundreds of millions of\n"
    "years in the ozone layer. Its flying form\n"
    "looks like a meteor.");

const u8 gRayquazaPokedexTextUnused[] = _("");

const u8 gJirachiPokedexText[] = _(
    "It is said to make any wish come true.\n"
    "It is awake for only seven days out of\n"
    "a thousand years.");

const u8 gJirachiPokedexTextUnused[] = _("");

const u8 gDeoxysPokedexText[] = _(
    "This DEOXYS has transformed into its\n"
    "aggressive guise. It can fool enemies by\n"
    "altering its appearance.");

const u8 gDeoxysPokedexTextUnused[] = _("");
const u8 gLittenPokedexText[] = _("Litten from PKMN SUN/MOON");
# 3 "src/data/pokemon/pokedex_text.h" 2
# 204 "src/pokedex_screen.c" 2
# 1 "src/data/pokemon/pokedex_entries.h" 1
const struct PokedexEntry gPokedexEntries[] =
{
    [NATIONAL_DEX_NONE] =
    {
        .categoryName = _("UNKNOWN"),
        .height = 0,
        .weight = 0,
        .description = gDummyPokedexText,
        .unusedDescription = gDummyPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_BULBASAUR] =
    {
        .categoryName = _("SEED"),
        .height = 7,
        .weight = 69,
        .description = gBulbasaurPokedexText,
        .unusedDescription = gBulbasaurPokedexTextUnused,
        .pokemonScale = 356,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_IVYSAUR] =
    {
        .categoryName = _("SEED"),
        .height = 10,
        .weight = 130,
        .description = gIvysaurPokedexText,
        .unusedDescription = gIvysaurPokedexTextUnused,
        .pokemonScale = 332,
        .pokemonOffset = 11,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VENUSAUR] =
    {
        .categoryName = _("SEED"),
        .height = 20,
        .weight = 1000,
        .description = gVenusaurPokedexText,
        .unusedDescription = gVenusaurPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 1,
        .trainerScale = 375,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_CHARMANDER] =
    {
        .categoryName = _("LIZARD"),
        .height = 6,
        .weight = 85,
        .description = gCharmanderPokedexText,
        .unusedDescription = gCharmanderPokedexTextUnused,
        .pokemonScale = 410,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CHARMELEON] =
    {
        .categoryName = _("FLAME"),
        .height = 11,
        .weight = 190,
        .description = gCharmeleonPokedexText,
        .unusedDescription = gCharmeleonPokedexTextUnused,
        .pokemonScale = 294,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CHARIZARD] =
    {
        .categoryName = _("FLAME"),
        .height = 17,
        .weight = 905,
        .description = gCharizardPokedexText,
        .unusedDescription = gCharizardPokedexTextUnused,
        .pokemonScale = 271,
        .pokemonOffset = 0,
        .trainerScale = 317,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_SQUIRTLE] =
    {
        .categoryName = _("TINY TURTLE"),
        .height = 5,
        .weight = 90,
        .description = gSquirtlePokedexText,
        .unusedDescription = gSquirtlePokedexTextUnused,
        .pokemonScale = 412,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WARTORTLE] =
    {
        .categoryName = _("TURTLE"),
        .height = 10,
        .weight = 225,
        .description = gWartortlePokedexText,
        .unusedDescription = gWartortlePokedexTextUnused,
        .pokemonScale = 334,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BLASTOISE] =
    {
        .categoryName = _("SHELLFISH"),
        .height = 16,
        .weight = 855,
        .description = gBlastoisePokedexText,
        .unusedDescription = gBlastoisePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 1,
        .trainerScale = 329,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_CATERPIE] =
    {
        .categoryName = _("WORM"),
        .height = 3,
        .weight = 29,
        .description = gCaterpiePokedexText,
        .unusedDescription = gCaterpiePokedexTextUnused,
        .pokemonScale = 549,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_METAPOD] =
    {
        .categoryName = _("COCOON"),
        .height = 7,
        .weight = 99,
        .description = gMetapodPokedexText,
        .unusedDescription = gMetapodPokedexTextUnused,
        .pokemonScale = 350,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BUTTERFREE] =
    {
        .categoryName = _("BUTTERFLY"),
        .height = 11,
        .weight = 320,
        .description = gButterfreePokedexText,
        .unusedDescription = gButterfreePokedexTextUnused,
        .pokemonScale = 312,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WEEDLE] =
    {
        .categoryName = _("HAIRY BUG"),
        .height = 3,
        .weight = 32,
        .description = gWeedlePokedexText,
        .unusedDescription = gWeedlePokedexTextUnused,
        .pokemonScale = 455,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KAKUNA] =
    {
        .categoryName = _("COCOON"),
        .height = 6,
        .weight = 100,
        .description = gKakunaPokedexText,
        .unusedDescription = gKakunaPokedexTextUnused,
        .pokemonScale = 424,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BEEDRILL] =
    {
        .categoryName = _("POISON BEE"),
        .height = 10,
        .weight = 295,
        .description = gBeedrillPokedexText,
        .unusedDescription = gBeedrillPokedexTextUnused,
        .pokemonScale = 366,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PIDGEY] =
    {
        .categoryName = _("TINY BIRD"),
        .height = 3,
        .weight = 18,
        .description = gPidgeyPokedexText,
        .unusedDescription = gPidgeyPokedexTextUnused,
        .pokemonScale = 492,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PIDGEOTTO] =
    {
        .categoryName = _("BIRD"),
        .height = 11,
        .weight = 300,
        .description = gPidgeottoPokedexText,
        .unusedDescription = gPidgeottoPokedexTextUnused,
        .pokemonScale = 334,
        .pokemonOffset = 11,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PIDGEOT] =
    {
        .categoryName = _("BIRD"),
        .height = 15,
        .weight = 395,
        .description = gPidgeotPokedexText,
        .unusedDescription = gPidgeotPokedexTextUnused,
        .pokemonScale = 269,
        .pokemonOffset = -2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_RATTATA] =
    {
        .categoryName = _("MOUSE"),
        .height = 3,
        .weight = 35,
        .description = gRattataPokedexText,
        .unusedDescription = gRattataPokedexTextUnused,
        .pokemonScale = 481,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_RATICATE] =
    {
        .categoryName = _("MOUSE"),
        .height = 7,
        .weight = 185,
        .description = gRaticatePokedexText,
        .unusedDescription = gRaticatePokedexTextUnused,
        .pokemonScale = 401,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SPEAROW] =
    {
        .categoryName = _("TINY BIRD"),
        .height = 3,
        .weight = 20,
        .description = gSpearowPokedexText,
        .unusedDescription = gSpearowPokedexTextUnused,
        .pokemonScale = 571,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FEAROW] =
    {
        .categoryName = _("BEAK"),
        .height = 12,
        .weight = 380,
        .description = gFearowPokedexText,
        .unusedDescription = gFearowPokedexTextUnused,
        .pokemonScale = 282,
        .pokemonOffset = -1,
        .trainerScale = 272,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_EKANS] =
    {
        .categoryName = _("SNAKE"),
        .height = 20,
        .weight = 69,
        .description = gEkansPokedexText,
        .unusedDescription = gEkansPokedexTextUnused,
        .pokemonScale = 298,
        .pokemonOffset = 13,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ARBOK] =
    {
        .categoryName = _("COBRA"),
        .height = 35,
        .weight = 650,
        .description = gArbokPokedexText,
        .unusedDescription = gArbokPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 296,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_PIKACHU] =
    {
        .categoryName = _("MOUSE"),
        .height = 4,
        .weight = 60,
        .description = gPikachuPokedexText,
        .unusedDescription = gPikachuPokedexTextUnused,
        .pokemonScale = 479,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_RAICHU] =
    {
        .categoryName = _("MOUSE"),
        .height = 8,
        .weight = 300,
        .description = gRaichuPokedexText,
        .unusedDescription = gRaichuPokedexTextUnused,
        .pokemonScale = 426,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SANDSHREW] =
    {
        .categoryName = _("MOUSE"),
        .height = 6,
        .weight = 120,
        .description = gSandshrewPokedexText,
        .unusedDescription = gSandshrewPokedexTextUnused,
        .pokemonScale = 370,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SANDSLASH] =
    {
        .categoryName = _("MOUSE"),
        .height = 10,
        .weight = 295,
        .description = gSandslashPokedexText,
        .unusedDescription = gSandslashPokedexTextUnused,
        .pokemonScale = 341,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NIDORAN_F] =
    {
        .categoryName = _("POISON PIN"),
        .height = 4,
        .weight = 70,
        .description = gNidoranFPokedexText,
        .unusedDescription = gNidoranFPokedexTextUnused,
        .pokemonScale = 488,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NIDORINA] =
    {
        .categoryName = _("POISON PIN"),
        .height = 8,
        .weight = 200,
        .description = gNidorinaPokedexText,
        .unusedDescription = gNidorinaPokedexTextUnused,
        .pokemonScale = 381,
        .pokemonOffset = 13,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NIDOQUEEN] =
    {
        .categoryName = _("DRILL"),
        .height = 13,
        .weight = 600,
        .description = gNidoqueenPokedexText,
        .unusedDescription = gNidoqueenPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NIDORAN_M] =
    {
        .categoryName = _("POISON PIN"),
        .height = 5,
        .weight = 90,
        .description = gNidoranMPokedexText,
        .unusedDescription = gNidoranMPokedexTextUnused,
        .pokemonScale = 480,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NIDORINO] =
    {
        .categoryName = _("POISON PIN"),
        .height = 9,
        .weight = 195,
        .description = gNidorinoPokedexText,
        .unusedDescription = gNidorinoPokedexTextUnused,
        .pokemonScale = 408,
        .pokemonOffset = 13,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NIDOKING] =
    {
        .categoryName = _("DRILL"),
        .height = 14,
        .weight = 620,
        .description = gNidokingPokedexText,
        .unusedDescription = gNidokingPokedexTextUnused,
        .pokemonScale = 304,
        .pokemonOffset = 3,
        .trainerScale = 323,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_CLEFAIRY] =
    {
        .categoryName = _("FAIRY"),
        .height = 6,
        .weight = 75,
        .description = gClefairyPokedexText,
        .unusedDescription = gClefairyPokedexTextUnused,
        .pokemonScale = 425,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CLEFABLE] =
    {
        .categoryName = _("FAIRY"),
        .height = 13,
        .weight = 400,
        .description = gClefablePokedexText,
        .unusedDescription = gClefablePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 272,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_VULPIX] =
    {
        .categoryName = _("FOX"),
        .height = 6,
        .weight = 99,
        .description = gVulpixPokedexText,
        .unusedDescription = gVulpixPokedexTextUnused,
        .pokemonScale = 497,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NINETALES] =
    {
        .categoryName = _("FOX"),
        .height = 11,
        .weight = 199,
        .description = gNinetalesPokedexText,
        .unusedDescription = gNinetalesPokedexTextUnused,
        .pokemonScale = 339,
        .pokemonOffset = 6,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_JIGGLYPUFF] =
    {
        .categoryName = _("BALLOON"),
        .height = 5,
        .weight = 55,
        .description = gJigglypuffPokedexText,
        .unusedDescription = gJigglypuffPokedexTextUnused,
        .pokemonScale = 419,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WIGGLYTUFF] =
    {
        .categoryName = _("BALLOON"),
        .height = 10,
        .weight = 120,
        .description = gWigglytuffPokedexText,
        .unusedDescription = gWigglytuffPokedexTextUnused,
        .pokemonScale = 328,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ZUBAT] =
    {
        .categoryName = _("BAT"),
        .height = 8,
        .weight = 75,
        .description = gZubatPokedexText,
        .unusedDescription = gZubatPokedexTextUnused,
        .pokemonScale = 355,
        .pokemonOffset = -4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GOLBAT] =
    {
        .categoryName = _("BAT"),
        .height = 16,
        .weight = 550,
        .description = gGolbatPokedexText,
        .unusedDescription = gGolbatPokedexTextUnused,
        .pokemonScale = 291,
        .pokemonOffset = 0,
        .trainerScale = 296,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_ODDISH] =
    {
        .categoryName = _("WEED"),
        .height = 5,
        .weight = 54,
        .description = gOddishPokedexText,
        .unusedDescription = gOddishPokedexTextUnused,
        .pokemonScale = 423,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GLOOM] =
    {
        .categoryName = _("WEED"),
        .height = 8,
        .weight = 86,
        .description = gGloomPokedexText,
        .unusedDescription = gGloomPokedexTextUnused,
        .pokemonScale = 329,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VILEPLUME] =
    {
        .categoryName = _("FLOWER"),
        .height = 12,
        .weight = 186,
        .description = gVileplumePokedexText,
        .unusedDescription = gVileplumePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 4,
        .trainerScale = 272,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PARAS] =
    {
        .categoryName = _("MUSHROOM"),
        .height = 3,
        .weight = 54,
        .description = gParasPokedexText,
        .unusedDescription = gParasPokedexTextUnused,
        .pokemonScale = 546,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PARASECT] =
    {
        .categoryName = _("MUSHROOM"),
        .height = 10,
        .weight = 295,
        .description = gParasectPokedexText,
        .unusedDescription = gParasectPokedexTextUnused,
        .pokemonScale = 307,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VENONAT] =
    {
        .categoryName = _("INSECT"),
        .height = 10,
        .weight = 300,
        .description = gVenonatPokedexText,
        .unusedDescription = gVenonatPokedexTextUnused,
        .pokemonScale = 360,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VENOMOTH] =
    {
        .categoryName = _("POISON MOTH"),
        .height = 15,
        .weight = 125,
        .description = gVenomothPokedexText,
        .unusedDescription = gVenomothPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 293,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_DIGLETT] =
    {
        .categoryName = _("MOLE"),
        .height = 2,
        .weight = 8,
        .description = gDiglettPokedexText,
        .unusedDescription = gDiglettPokedexTextUnused,
        .pokemonScale = 706,
        .pokemonOffset = 22,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DUGTRIO] =
    {
        .categoryName = _("MOLE"),
        .height = 7,
        .weight = 333,
        .description = gDugtrioPokedexText,
        .unusedDescription = gDugtrioPokedexTextUnused,
        .pokemonScale = 384,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MEOWTH] =
    {
        .categoryName = _("SCRATCH CAT"),
        .height = 4,
        .weight = 42,
        .description = gMeowthPokedexText,
        .unusedDescription = gMeowthPokedexTextUnused,
        .pokemonScale = 480,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PERSIAN] =
    {
        .categoryName = _("CLASSY CAT"),
        .height = 10,
        .weight = 320,
        .description = gPersianPokedexText,
        .unusedDescription = gPersianPokedexTextUnused,
        .pokemonScale = 320,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PSYDUCK] =
    {
        .categoryName = _("DUCK"),
        .height = 8,
        .weight = 196,
        .description = gPsyduckPokedexText,
        .unusedDescription = gPsyduckPokedexTextUnused,
        .pokemonScale = 347,
        .pokemonOffset = 11,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GOLDUCK] =
    {
        .categoryName = _("DUCK"),
        .height = 17,
        .weight = 766,
        .description = gGolduckPokedexText,
        .unusedDescription = gGolduckPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 4,
        .trainerScale = 287,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_MANKEY] =
    {
        .categoryName = _("PIG MONKEY"),
        .height = 5,
        .weight = 280,
        .description = gMankeyPokedexText,
        .unusedDescription = gMankeyPokedexTextUnused,
        .pokemonScale = 388,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PRIMEAPE] =
    {
        .categoryName = _("PIG MONKEY"),
        .height = 10,
        .weight = 320,
        .description = gPrimeapePokedexText,
        .unusedDescription = gPrimeapePokedexTextUnused,
        .pokemonScale = 326,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GROWLITHE] =
    {
        .categoryName = _("PUPPY"),
        .height = 7,
        .weight = 190,
        .description = gGrowlithePokedexText,
        .unusedDescription = gGrowlithePokedexTextUnused,
        .pokemonScale = 346,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ARCANINE] =
    {
        .categoryName = _("LEGENDARY"),
        .height = 19,
        .weight = 1550,
        .description = gArcaninePokedexText,
        .unusedDescription = gArcaninePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = -1,
        .trainerScale = 312,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_POLIWAG] =
    {
        .categoryName = _("TADPOLE"),
        .height = 6,
        .weight = 124,
        .description = gPoliwagPokedexText,
        .unusedDescription = gPoliwagPokedexTextUnused,
        .pokemonScale = 353,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_POLIWHIRL] =
    {
        .categoryName = _("TADPOLE"),
        .height = 10,
        .weight = 200,
        .description = gPoliwhirlPokedexText,
        .unusedDescription = gPoliwhirlPokedexTextUnused,
        .pokemonScale = 288,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_POLIWRATH] =
    {
        .categoryName = _("TADPOLE"),
        .height = 13,
        .weight = 540,
        .description = gPoliwrathPokedexText,
        .unusedDescription = gPoliwrathPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ABRA] =
    {
        .categoryName = _("PSI"),
        .height = 9,
        .weight = 195,
        .description = gAbraPokedexText,
        .unusedDescription = gAbraPokedexTextUnused,
        .pokemonScale = 374,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KADABRA] =
    {
        .categoryName = _("PSI"),
        .height = 13,
        .weight = 565,
        .description = gKadabraPokedexText,
        .unusedDescription = gKadabraPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ALAKAZAM] =
    {
        .categoryName = _("PSI"),
        .height = 15,
        .weight = 480,
        .description = gAlakazamPokedexText,
        .unusedDescription = gAlakazamPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = -1,
        .trainerScale = 271,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_MACHOP] =
    {
        .categoryName = _("SUPERPOWER"),
        .height = 8,
        .weight = 195,
        .description = gMachopPokedexText,
        .unusedDescription = gMachopPokedexTextUnused,
        .pokemonScale = 320,
        .pokemonOffset = 12,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MACHOKE] =
    {
        .categoryName = _("SUPERPOWER"),
        .height = 15,
        .weight = 705,
        .description = gMachokePokedexText,
        .unusedDescription = gMachokePokedexTextUnused,
        .pokemonScale = 304,
        .pokemonOffset = 6,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MACHAMP] =
    {
        .categoryName = _("SUPERPOWER"),
        .height = 16,
        .weight = 1300,
        .description = gMachampPokedexText,
        .unusedDescription = gMachampPokedexTextUnused,
        .pokemonScale = 278,
        .pokemonOffset = 2,
        .trainerScale = 283,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_BELLSPROUT] =
    {
        .categoryName = _("FLOWER"),
        .height = 7,
        .weight = 40,
        .description = gBellsproutPokedexText,
        .unusedDescription = gBellsproutPokedexTextUnused,
        .pokemonScale = 354,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WEEPINBELL] =
    {
        .categoryName = _("FLYCATCHER"),
        .height = 10,
        .weight = 64,
        .description = gWeepinbellPokedexText,
        .unusedDescription = gWeepinbellPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VICTREEBEL] =
    {
        .categoryName = _("FLYCATCHER"),
        .height = 17,
        .weight = 155,
        .description = gVictreebelPokedexText,
        .unusedDescription = gVictreebelPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 2,
        .trainerScale = 302,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_TENTACOOL] =
    {
        .categoryName = _("JELLYFISH"),
        .height = 9,
        .weight = 455,
        .description = gTentacoolPokedexText,
        .unusedDescription = gTentacoolPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TENTACRUEL] =
    {
        .categoryName = _("JELLYFISH"),
        .height = 16,
        .weight = 550,
        .description = gTentacruelPokedexText,
        .unusedDescription = gTentacruelPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = -1,
        .trainerScale = 312,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_GEODUDE] =
    {
        .categoryName = _("ROCK"),
        .height = 4,
        .weight = 200,
        .description = gGeodudePokedexText,
        .unusedDescription = gGeodudePokedexTextUnused,
        .pokemonScale = 330,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GRAVELER] =
    {
        .categoryName = _("ROCK"),
        .height = 10,
        .weight = 1050,
        .description = gGravelerPokedexText,
        .unusedDescription = gGravelerPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 8,
        .trainerScale = 305,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_GOLEM] =
    {
        .categoryName = _("MEGATON"),
        .height = 14,
        .weight = 3000,
        .description = gGolemPokedexText,
        .unusedDescription = gGolemPokedexTextUnused,
        .pokemonScale = 266,
        .pokemonOffset = 3,
        .trainerScale = 298,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_PONYTA] =
    {
        .categoryName = _("FIRE HORSE"),
        .height = 10,
        .weight = 300,
        .description = gPonytaPokedexText,
        .unusedDescription = gPonytaPokedexTextUnused,
        .pokemonScale = 288,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_RAPIDASH] =
    {
        .categoryName = _("FIRE HORSE"),
        .height = 17,
        .weight = 950,
        .description = gRapidashPokedexText,
        .unusedDescription = gRapidashPokedexTextUnused,
        .pokemonScale = 282,
        .pokemonOffset = -1,
        .trainerScale = 312,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_SLOWPOKE] =
    {
        .categoryName = _("DOPEY"),
        .height = 12,
        .weight = 360,
        .description = gSlowpokePokedexText,
        .unusedDescription = gSlowpokePokedexTextUnused,
        .pokemonScale = 271,
        .pokemonOffset = 10,
        .trainerScale = 272,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SLOWBRO] =
    {
        .categoryName = _("HERMIT CRAB"),
        .height = 16,
        .weight = 785,
        .description = gSlowbroPokedexText,
        .unusedDescription = gSlowbroPokedexTextUnused,
        .pokemonScale = 257,
        .pokemonOffset = -2,
        .trainerScale = 312,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_MAGNEMITE] =
    {
        .categoryName = _("MAGNET"),
        .height = 3,
        .weight = 60,
        .description = gMagnemitePokedexText,
        .unusedDescription = gMagnemitePokedexTextUnused,
        .pokemonScale = 294,
        .pokemonOffset = -8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MAGNETON] =
    {
        .categoryName = _("MAGNET"),
        .height = 10,
        .weight = 600,
        .description = gMagnetonPokedexText,
        .unusedDescription = gMagnetonPokedexTextUnused,
        .pokemonScale = 293,
        .pokemonOffset = -4,
        .trainerScale = 273,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FARFETCHD] =
    {
        .categoryName = _("WILD DUCK"),
        .height = 8,
        .weight = 150,
        .description = gFarfetchdPokedexText,
        .unusedDescription = gFarfetchdPokedexTextUnused,
        .pokemonScale = 317,
        .pokemonOffset = -2,
        .trainerScale = 256,
        .trainerOffset = -3,
    },

    [NATIONAL_DEX_DODUO] =
    {
        .categoryName = _("TWIN BIRD"),
        .height = 14,
        .weight = 392,
        .description = gDoduoPokedexText,
        .unusedDescription = gDoduoPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 287,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_DODRIO] =
    {
        .categoryName = _("TRIPLE BIRD"),
        .height = 18,
        .weight = 852,
        .description = gDodrioPokedexText,
        .unusedDescription = gDodrioPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = -2,
        .trainerScale = 296,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_SEEL] =
    {
        .categoryName = _("SEA LION"),
        .height = 11,
        .weight = 900,
        .description = gSeelPokedexText,
        .unusedDescription = gSeelPokedexTextUnused,
        .pokemonScale = 298,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DEWGONG] =
    {
        .categoryName = _("SEA LION"),
        .height = 17,
        .weight = 1200,
        .description = gDewgongPokedexText,
        .unusedDescription = gDewgongPokedexTextUnused,
        .pokemonScale = 288,
        .pokemonOffset = 1,
        .trainerScale = 306,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_GRIMER] =
    {
        .categoryName = _("SLUDGE"),
        .height = 9,
        .weight = 300,
        .description = gGrimerPokedexText,
        .unusedDescription = gGrimerPokedexTextUnused,
        .pokemonScale = 258,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MUK] =
    {
        .categoryName = _("SLUDGE"),
        .height = 12,
        .weight = 300,
        .description = gMukPokedexText,
        .unusedDescription = gMukPokedexTextUnused,
        .pokemonScale = 288,
        .pokemonOffset = 7,
        .trainerScale = 288,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_SHELLDER] =
    {
        .categoryName = _("BIVALVE"),
        .height = 3,
        .weight = 40,
        .description = gShellderPokedexText,
        .unusedDescription = gShellderPokedexTextUnused,
        .pokemonScale = 643,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CLOYSTER] =
    {
        .categoryName = _("BIVALVE"),
        .height = 15,
        .weight = 1325,
        .description = gCloysterPokedexText,
        .unusedDescription = gCloysterPokedexTextUnused,
        .pokemonScale = 264,
        .pokemonOffset = 0,
        .trainerScale = 288,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_GASTLY] =
    {
        .categoryName = _("GAS"),
        .height = 13,
        .weight = 1,
        .description = gGastlyPokedexText,
        .unusedDescription = gGastlyPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HAUNTER] =
    {
        .categoryName = _("GAS"),
        .height = 16,
        .weight = 1,
        .description = gHaunterPokedexText,
        .unusedDescription = gHaunterPokedexTextUnused,
        .pokemonScale = 269,
        .pokemonOffset = 2,
        .trainerScale = 308,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_GENGAR] =
    {
        .categoryName = _("SHADOW"),
        .height = 15,
        .weight = 405,
        .description = gGengarPokedexText,
        .unusedDescription = gGengarPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 4,
        .trainerScale = 317,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_ONIX] =
    {
        .categoryName = _("ROCK SNAKE"),
        .height = 88,
        .weight = 2100,
        .description = gOnixPokedexText,
        .unusedDescription = gOnixPokedexTextUnused,
        .pokemonScale = 257,
        .pokemonOffset = 0,
        .trainerScale = 515,
        .trainerOffset = 12,
    },

    [NATIONAL_DEX_DROWZEE] =
    {
        .categoryName = _("HYPNOSIS"),
        .height = 10,
        .weight = 324,
        .description = gDrowzeePokedexText,
        .unusedDescription = gDrowzeePokedexTextUnused,
        .pokemonScale = 274,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HYPNO] =
    {
        .categoryName = _("HYPNOSIS"),
        .height = 16,
        .weight = 756,
        .description = gHypnoPokedexText,
        .unusedDescription = gHypnoPokedexTextUnused,
        .pokemonScale = 298,
        .pokemonOffset = 3,
        .trainerScale = 310,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_KRABBY] =
    {
        .categoryName = _("RIVER CRAB"),
        .height = 4,
        .weight = 65,
        .description = gKrabbyPokedexText,
        .unusedDescription = gKrabbyPokedexTextUnused,
        .pokemonScale = 469,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KINGLER] =
    {
        .categoryName = _("PINCER"),
        .height = 13,
        .weight = 600,
        .description = gKinglerPokedexText,
        .unusedDescription = gKinglerPokedexTextUnused,
        .pokemonScale = 287,
        .pokemonOffset = 3,
        .trainerScale = 308,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_VOLTORB] =
    {
        .categoryName = _("BALL"),
        .height = 5,
        .weight = 104,
        .description = gVoltorbPokedexText,
        .unusedDescription = gVoltorbPokedexTextUnused,
        .pokemonScale = 364,
        .pokemonOffset = -8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ELECTRODE] =
    {
        .categoryName = _("BALL"),
        .height = 12,
        .weight = 666,
        .description = gElectrodePokedexText,
        .unusedDescription = gElectrodePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_EXEGGCUTE] =
    {
        .categoryName = _("EGG"),
        .height = 4,
        .weight = 25,
        .description = gExeggcutePokedexText,
        .unusedDescription = gExeggcutePokedexTextUnused,
        .pokemonScale = 495,
        .pokemonOffset = -4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_EXEGGUTOR] =
    {
        .categoryName = _("COCONUT"),
        .height = 20,
        .weight = 1200,
        .description = gExeggutorPokedexText,
        .unusedDescription = gExeggutorPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 0,
        .trainerScale = 376,
        .trainerOffset = 7,
    },

    [NATIONAL_DEX_CUBONE] =
    {
        .categoryName = _("LONELY"),
        .height = 4,
        .weight = 65,
        .description = gCubonePokedexText,
        .unusedDescription = gCubonePokedexTextUnused,
        .pokemonScale = 545,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MAROWAK] =
    {
        .categoryName = _("BONE KEEPER"),
        .height = 10,
        .weight = 450,
        .description = gMarowakPokedexText,
        .unusedDescription = gMarowakPokedexTextUnused,
        .pokemonScale = 293,
        .pokemonOffset = 12,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HITMONLEE] =
    {
        .categoryName = _("KICKING"),
        .height = 15,
        .weight = 498,
        .description = gHitmonleePokedexText,
        .unusedDescription = gHitmonleePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 273,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HITMONCHAN] =
    {
        .categoryName = _("PUNCHING"),
        .height = 14,
        .weight = 502,
        .description = gHitmonchanPokedexText,
        .unusedDescription = gHitmonchanPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 1,
        .trainerScale = 264,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LICKITUNG] =
    {
        .categoryName = _("LICKING"),
        .height = 12,
        .weight = 655,
        .description = gLickitungPokedexText,
        .unusedDescription = gLickitungPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 3,
        .trainerScale = 272,
        .trainerOffset = -3,
    },

    [NATIONAL_DEX_KOFFING] =
    {
        .categoryName = _("POISON GAS"),
        .height = 6,
        .weight = 10,
        .description = gKoffingPokedexText,
        .unusedDescription = gKoffingPokedexTextUnused,
        .pokemonScale = 369,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WEEZING] =
    {
        .categoryName = _("POISON GAS"),
        .height = 12,
        .weight = 95,
        .description = gWeezingPokedexText,
        .unusedDescription = gWeezingPokedexTextUnused,
        .pokemonScale = 321,
        .pokemonOffset = -1,
        .trainerScale = 276,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_RHYHORN] =
    {
        .categoryName = _("SPIKES"),
        .height = 10,
        .weight = 1150,
        .description = gRhyhornPokedexText,
        .unusedDescription = gRhyhornPokedexTextUnused,
        .pokemonScale = 291,
        .pokemonOffset = 7,
        .trainerScale = 276,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_RHYDON] =
    {
        .categoryName = _("DRILL"),
        .height = 19,
        .weight = 1200,
        .description = gRhydonPokedexText,
        .unusedDescription = gRhydonPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = -1,
        .trainerScale = 344,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_CHANSEY] =
    {
        .categoryName = _("EGG"),
        .height = 11,
        .weight = 346,
        .description = gChanseyPokedexText,
        .unusedDescription = gChanseyPokedexTextUnused,
        .pokemonScale = 257,
        .pokemonOffset = 6,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TANGELA] =
    {
        .categoryName = _("VINE"),
        .height = 10,
        .weight = 350,
        .description = gTangelaPokedexText,
        .unusedDescription = gTangelaPokedexTextUnused,
        .pokemonScale = 320,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KANGASKHAN] =
    {
        .categoryName = _("PARENT"),
        .height = 22,
        .weight = 800,
        .description = gKangaskhanPokedexText,
        .unusedDescription = gKangaskhanPokedexTextUnused,
        .pokemonScale = 257,
        .pokemonOffset = -3,
        .trainerScale = 349,
        .trainerOffset = 5,
    },

    [NATIONAL_DEX_HORSEA] =
    {
        .categoryName = _("DRAGON"),
        .height = 4,
        .weight = 80,
        .description = gHorseaPokedexText,
        .unusedDescription = gHorseaPokedexTextUnused,
        .pokemonScale = 399,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SEADRA] =
    {
        .categoryName = _("DRAGON"),
        .height = 12,
        .weight = 250,
        .description = gSeadraPokedexText,
        .unusedDescription = gSeadraPokedexTextUnused,
        .pokemonScale = 296,
        .pokemonOffset = 3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GOLDEEN] =
    {
        .categoryName = _("GOLDFISH"),
        .height = 6,
        .weight = 150,
        .description = gGoldeenPokedexText,
        .unusedDescription = gGoldeenPokedexTextUnused,
        .pokemonScale = 379,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SEAKING] =
    {
        .categoryName = _("GOLDFISH"),
        .height = 13,
        .weight = 390,
        .description = gSeakingPokedexText,
        .unusedDescription = gSeakingPokedexTextUnused,
        .pokemonScale = 304,
        .pokemonOffset = 1,
        .trainerScale = 288,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_STARYU] =
    {
        .categoryName = _("STAR SHAPE"),
        .height = 8,
        .weight = 345,
        .description = gStaryuPokedexText,
        .unusedDescription = gStaryuPokedexTextUnused,
        .pokemonScale = 326,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_STARMIE] =
    {
        .categoryName = _("MYSTERIOUS"),
        .height = 11,
        .weight = 800,
        .description = gStarmiePokedexText,
        .unusedDescription = gStarmiePokedexTextUnused,
        .pokemonScale = 301,
        .pokemonOffset = 3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MR_MIME] =
    {
        .categoryName = _("BARRIER"),
        .height = 13,
        .weight = 545,
        .description = gMrmimePokedexText,
        .unusedDescription = gMrmimePokedexTextUnused,
        .pokemonScale = 258,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SCYTHER] =
    {
        .categoryName = _("MANTIS"),
        .height = 15,
        .weight = 560,
        .description = gScytherPokedexText,
        .unusedDescription = gScytherPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 0,
        .trainerScale = 293,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_JYNX] =
    {
        .categoryName = _("HUMAN SHAPE"),
        .height = 14,
        .weight = 406,
        .description = gJynxPokedexText,
        .unusedDescription = gJynxPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 300,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_ELECTABUZZ] =
    {
        .categoryName = _("ELECTRIC"),
        .height = 11,
        .weight = 300,
        .description = gElectabuzzPokedexText,
        .unusedDescription = gElectabuzzPokedexTextUnused,
        .pokemonScale = 330,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MAGMAR] =
    {
        .categoryName = _("SPITFIRE"),
        .height = 13,
        .weight = 445,
        .description = gMagmarPokedexText,
        .unusedDescription = gMagmarPokedexTextUnused,
        .pokemonScale = 293,
        .pokemonOffset = 4,
        .trainerScale = 272,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PINSIR] =
    {
        .categoryName = _("STAG BEETLE"),
        .height = 15,
        .weight = 550,
        .description = gPinsirPokedexText,
        .unusedDescription = gPinsirPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 1,
        .trainerScale = 257,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TAUROS] =
    {
        .categoryName = _("WILD BULL"),
        .height = 14,
        .weight = 884,
        .description = gTaurosPokedexText,
        .unusedDescription = gTaurosPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 2,
        .trainerScale = 312,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_MAGIKARP] =
    {
        .categoryName = _("FISH"),
        .height = 9,
        .weight = 100,
        .description = gMagikarpPokedexText,
        .unusedDescription = gMagikarpPokedexTextUnused,
        .pokemonScale = 317,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GYARADOS] =
    {
        .categoryName = _("ATROCIOUS"),
        .height = 65,
        .weight = 2350,
        .description = gGyaradosPokedexText,
        .unusedDescription = gGyaradosPokedexTextUnused,
        .pokemonScale = 288,
        .pokemonOffset = -1,
        .trainerScale = 512,
        .trainerOffset = 11,
    },

    [NATIONAL_DEX_LAPRAS] =
    {
        .categoryName = _("TRANSPORT"),
        .height = 25,
        .weight = 2200,
        .description = gLaprasPokedexText,
        .unusedDescription = gLaprasPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 425,
        .trainerOffset = 8,
    },

    [NATIONAL_DEX_DITTO] =
    {
        .categoryName = _("TRANSFORM"),
        .height = 3,
        .weight = 40,
        .description = gDittoPokedexText,
        .unusedDescription = gDittoPokedexTextUnused,
        .pokemonScale = 602,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_EEVEE] =
    {
        .categoryName = _("EVOLUTION"),
        .height = 3,
        .weight = 65,
        .description = gEeveePokedexText,
        .unusedDescription = gEeveePokedexTextUnused,
        .pokemonScale = 476,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VAPOREON] =
    {
        .categoryName = _("BUBBLE JET"),
        .height = 10,
        .weight = 290,
        .description = gVaporeonPokedexText,
        .unusedDescription = gVaporeonPokedexTextUnused,
        .pokemonScale = 316,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_JOLTEON] =
    {
        .categoryName = _("LIGHTNING"),
        .height = 8,
        .weight = 245,
        .description = gJolteonPokedexText,
        .unusedDescription = gJolteonPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FLAREON] =
    {
        .categoryName = _("FLAME"),
        .height = 9,
        .weight = 250,
        .description = gFlareonPokedexText,
        .unusedDescription = gFlareonPokedexTextUnused,
        .pokemonScale = 302,
        .pokemonOffset = 11,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PORYGON] =
    {
        .categoryName = _("VIRTUAL"),
        .height = 8,
        .weight = 365,
        .description = gPorygonPokedexText,
        .unusedDescription = gPorygonPokedexTextUnused,
        .pokemonScale = 328,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_OMANYTE] =
    {
        .categoryName = _("SPIRAL"),
        .height = 4,
        .weight = 75,
        .description = gOmanytePokedexText,
        .unusedDescription = gOmanytePokedexTextUnused,
        .pokemonScale = 521,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_OMASTAR] =
    {
        .categoryName = _("SPIRAL"),
        .height = 10,
        .weight = 350,
        .description = gOmastarPokedexText,
        .unusedDescription = gOmastarPokedexTextUnused,
        .pokemonScale = 307,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KABUTO] =
    {
        .categoryName = _("SHELLFISH"),
        .height = 5,
        .weight = 115,
        .description = gKabutoPokedexText,
        .unusedDescription = gKabutoPokedexTextUnused,
        .pokemonScale = 438,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KABUTOPS] =
    {
        .categoryName = _("SHELLFISH"),
        .height = 13,
        .weight = 405,
        .description = gKabutopsPokedexText,
        .unusedDescription = gKabutopsPokedexTextUnused,
        .pokemonScale = 271,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_AERODACTYL] =
    {
        .categoryName = _("FOSSIL"),
        .height = 18,
        .weight = 590,
        .description = gAerodactylPokedexText,
        .unusedDescription = gAerodactylPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = -1,
        .trainerScale = 317,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_SNORLAX] =
    {
        .categoryName = _("SLEEPING"),
        .height = 21,
        .weight = 4600,
        .description = gSnorlaxPokedexText,
        .unusedDescription = gSnorlaxPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = 1,
        .trainerScale = 408,
        .trainerOffset = 7,
    },

    [NATIONAL_DEX_ARTICUNO] =
    {
        .categoryName = _("FREEZE"),
        .height = 17,
        .weight = 554,
        .description = gArticunoPokedexText,
        .unusedDescription = gArticunoPokedexTextUnused,
        .pokemonScale = 278,
        .pokemonOffset = 0,
        .trainerScale = 308,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_ZAPDOS] =
    {
        .categoryName = _("ELECTRIC"),
        .height = 16,
        .weight = 526,
        .description = gZapdosPokedexText,
        .unusedDescription = gZapdosPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = 1,
        .trainerScale = 330,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_MOLTRES] =
    {
        .categoryName = _("FLAME"),
        .height = 20,
        .weight = 600,
        .description = gMoltresPokedexText,
        .unusedDescription = gMoltresPokedexTextUnused,
        .pokemonScale = 270,
        .pokemonOffset = 1,
        .trainerScale = 379,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_DRATINI] =
    {
        .categoryName = _("DRAGON"),
        .height = 18,
        .weight = 33,
        .description = gDratiniPokedexText,
        .unusedDescription = gDratiniPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 8,
        .trainerScale = 386,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_DRAGONAIR] =
    {
        .categoryName = _("DRAGON"),
        .height = 40,
        .weight = 165,
        .description = gDragonairPokedexText,
        .unusedDescription = gDragonairPokedexTextUnused,
        .pokemonScale = 274,
        .pokemonOffset = 0,
        .trainerScale = 423,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_DRAGONITE] =
    {
        .categoryName = _("DRAGON"),
        .height = 22,
        .weight = 2100,
        .description = gDragonitePokedexText,
        .unusedDescription = gDragonitePokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = -1,
        .trainerScale = 342,
        .trainerOffset = 4,
    },

    [NATIONAL_DEX_MEWTWO] =
    {
        .categoryName = _("GENETIC"),
        .height = 20,
        .weight = 1220,
        .description = gMewtwoPokedexText,
        .unusedDescription = gMewtwoPokedexTextUnused,
        .pokemonScale = 276,
        .pokemonOffset = -1,
        .trainerScale = 342,
        .trainerOffset = 5,
    },

    [NATIONAL_DEX_MEW] =
    {
        .categoryName = _("NEW SPECIES"),
        .height = 4,
        .weight = 40,
        .description = gMewPokedexText,
        .unusedDescription = gMewPokedexTextUnused,
        .pokemonScale = 460,
        .pokemonOffset = -2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CHIKORITA] =
    {
        .categoryName = _("LEAF"),
        .height = 9,
        .weight = 64,
        .description = gChikoritaPokedexText,
        .unusedDescription = gChikoritaPokedexTextUnused,
        .pokemonScale = 512,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BAYLEEF] =
    {
        .categoryName = _("LEAF"),
        .height = 12,
        .weight = 158,
        .description = gBayleefPokedexText,
        .unusedDescription = gBayleefPokedexTextUnused,
        .pokemonScale = 296,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MEGANIUM] =
    {
        .categoryName = _("HERB"),
        .height = 18,
        .weight = 1005,
        .description = gMeganiumPokedexText,
        .unusedDescription = gMeganiumPokedexTextUnused,
        .pokemonScale = 286,
        .pokemonOffset = 0,
        .trainerScale = 317,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_CYNDAQUIL] =
    {
        .categoryName = _("FIRE MOUSE"),
        .height = 5,
        .weight = 79,
        .description = gCyndaquilPokedexText,
        .unusedDescription = gCyndaquilPokedexTextUnused,
        .pokemonScale = 539,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_QUILAVA] =
    {
        .categoryName = _("VOLCANO"),
        .height = 9,
        .weight = 190,
        .description = gQuilavaPokedexText,
        .unusedDescription = gQuilavaPokedexTextUnused,
        .pokemonScale = 329,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TYPHLOSION] =
    {
        .categoryName = _("VOLCANO"),
        .height = 17,
        .weight = 795,
        .description = gTyphlosionPokedexText,
        .unusedDescription = gTyphlosionPokedexTextUnused,
        .pokemonScale = 284,
        .pokemonOffset = -1,
        .trainerScale = 287,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_TOTODILE] =
    {
        .categoryName = _("BIG JAW"),
        .height = 6,
        .weight = 95,
        .description = gTotodilePokedexText,
        .unusedDescription = gTotodilePokedexTextUnused,
        .pokemonScale = 487,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CROCONAW] =
    {
        .categoryName = _("BIG JAW"),
        .height = 11,
        .weight = 250,
        .description = gCroconawPokedexText,
        .unusedDescription = gCroconawPokedexTextUnused,
        .pokemonScale = 378,
        .pokemonOffset = 11,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FERALIGATR] =
    {
        .categoryName = _("BIG JAW"),
        .height = 23,
        .weight = 888,
        .description = gFeraligatrPokedexText,
        .unusedDescription = gFeraligatrPokedexTextUnused,
        .pokemonScale = 282,
        .pokemonOffset = -1,
        .trainerScale = 375,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_SENTRET] =
    {
        .categoryName = _("SCOUT"),
        .height = 8,
        .weight = 60,
        .description = gSentretPokedexText,
        .unusedDescription = gSentretPokedexTextUnused,
        .pokemonScale = 439,
        .pokemonOffset = 12,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FURRET] =
    {
        .categoryName = _("LONG BODY"),
        .height = 18,
        .weight = 325,
        .description = gFurretPokedexText,
        .unusedDescription = gFurretPokedexTextUnused,
        .pokemonScale = 346,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HOOTHOOT] =
    {
        .categoryName = _("OWL"),
        .height = 7,
        .weight = 212,
        .description = gHoothootPokedexText,
        .unusedDescription = gHoothootPokedexTextUnused,
        .pokemonScale = 380,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NOCTOWL] =
    {
        .categoryName = _("OWL"),
        .height = 16,
        .weight = 408,
        .description = gNoctowlPokedexText,
        .unusedDescription = gNoctowlPokedexTextUnused,
        .pokemonScale = 278,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LEDYBA] =
    {
        .categoryName = _("FIVE STAR"),
        .height = 10,
        .weight = 108,
        .description = gLedybaPokedexText,
        .unusedDescription = gLedybaPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LEDIAN] =
    {
        .categoryName = _("FIVE STAR"),
        .height = 14,
        .weight = 356,
        .description = gLedianPokedexText,
        .unusedDescription = gLedianPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SPINARAK] =
    {
        .categoryName = _("STRING SPIT"),
        .height = 5,
        .weight = 85,
        .description = gSpinarakPokedexText,
        .unusedDescription = gSpinarakPokedexTextUnused,
        .pokemonScale = 414,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ARIADOS] =
    {
        .categoryName = _("LONG LEG"),
        .height = 11,
        .weight = 335,
        .description = gAriadosPokedexText,
        .unusedDescription = gAriadosPokedexTextUnused,
        .pokemonScale = 316,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CROBAT] =
    {
        .categoryName = _("BAT"),
        .height = 18,
        .weight = 750,
        .description = gCrobatPokedexText,
        .unusedDescription = gCrobatPokedexTextUnused,
        .pokemonScale = 279,
        .pokemonOffset = -1,
        .trainerScale = 313,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_CHINCHOU] =
    {
        .categoryName = _("ANGLER"),
        .height = 5,
        .weight = 120,
        .description = gChinchouPokedexText,
        .unusedDescription = gChinchouPokedexTextUnused,
        .pokemonScale = 424,
        .pokemonOffset = -2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LANTURN] =
    {
        .categoryName = _("LIGHT"),
        .height = 12,
        .weight = 225,
        .description = gLanturnPokedexText,
        .unusedDescription = gLanturnPokedexTextUnused,
        .pokemonScale = 269,
        .pokemonOffset = 6,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PICHU] =
    {
        .categoryName = _("TINY MOUSE"),
        .height = 3,
        .weight = 20,
        .description = gPichuPokedexText,
        .unusedDescription = gPichuPokedexTextUnused,
        .pokemonScale = 508,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CLEFFA] =
    {
        .categoryName = _("STAR SHAPE"),
        .height = 3,
        .weight = 30,
        .description = gCleffaPokedexText,
        .unusedDescription = gCleffaPokedexTextUnused,
        .pokemonScale = 462,
        .pokemonOffset = 22,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_IGGLYBUFF] =
    {
        .categoryName = _("BALLOON"),
        .height = 3,
        .weight = 10,
        .description = gIgglybuffPokedexText,
        .unusedDescription = gIgglybuffPokedexTextUnused,
        .pokemonScale = 457,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TOGEPI] =
    {
        .categoryName = _("SPIKE BALL"),
        .height = 3,
        .weight = 15,
        .description = gTogepiPokedexText,
        .unusedDescription = gTogepiPokedexTextUnused,
        .pokemonScale = 507,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TOGETIC] =
    {
        .categoryName = _("HAPPINESS"),
        .height = 6,
        .weight = 32,
        .description = gTogeticPokedexText,
        .unusedDescription = gTogeticPokedexTextUnused,
        .pokemonScale = 424,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NATU] =
    {
        .categoryName = _("TINY BIRD"),
        .height = 2,
        .weight = 20,
        .description = gNatuPokedexText,
        .unusedDescription = gNatuPokedexTextUnused,
        .pokemonScale = 610,
        .pokemonOffset = 23,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_XATU] =
    {
        .categoryName = _("MYSTIC"),
        .height = 15,
        .weight = 150,
        .description = gXatuPokedexText,
        .unusedDescription = gXatuPokedexTextUnused,
        .pokemonScale = 258,
        .pokemonOffset = 4,
        .trainerScale = 317,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_MAREEP] =
    {
        .categoryName = _("WOOL"),
        .height = 6,
        .weight = 78,
        .description = gMareepPokedexText,
        .unusedDescription = gMareepPokedexTextUnused,
        .pokemonScale = 379,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FLAAFFY] =
    {
        .categoryName = _("WOOL"),
        .height = 8,
        .weight = 133,
        .description = gFlaaffyPokedexText,
        .unusedDescription = gFlaaffyPokedexTextUnused,
        .pokemonScale = 372,
        .pokemonOffset = 13,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_AMPHAROS] =
    {
        .categoryName = _("LIGHT"),
        .height = 14,
        .weight = 615,
        .description = gAmpharosPokedexText,
        .unusedDescription = gAmpharosPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = 2,
        .trainerScale = 283,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_BELLOSSOM] =
    {
        .categoryName = _("FLOWER"),
        .height = 4,
        .weight = 58,
        .description = gBellossomPokedexText,
        .unusedDescription = gBellossomPokedexTextUnused,
        .pokemonScale = 472,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MARILL] =
    {
        .categoryName = _("AQUA MOUSE"),
        .height = 4,
        .weight = 85,
        .description = gMarillPokedexText,
        .unusedDescription = gMarillPokedexTextUnused,
        .pokemonScale = 476,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_AZUMARILL] =
    {
        .categoryName = _("AQUA RABBIT"),
        .height = 8,
        .weight = 285,
        .description = gAzumarillPokedexText,
        .unusedDescription = gAzumarillPokedexTextUnused,
        .pokemonScale = 448,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SUDOWOODO] =
    {
        .categoryName = _("IMITATION"),
        .height = 12,
        .weight = 380,
        .description = gSudowoodoPokedexText,
        .unusedDescription = gSudowoodoPokedexTextUnused,
        .pokemonScale = 305,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_POLITOED] =
    {
        .categoryName = _("FROG"),
        .height = 11,
        .weight = 339,
        .description = gPolitoedPokedexText,
        .unusedDescription = gPolitoedPokedexTextUnused,
        .pokemonScale = 289,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HOPPIP] =
    {
        .categoryName = _("COTTONWEED"),
        .height = 4,
        .weight = 5,
        .description = gHoppipPokedexText,
        .unusedDescription = gHoppipPokedexTextUnused,
        .pokemonScale = 562,
        .pokemonOffset = -7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SKIPLOOM] =
    {
        .categoryName = _("COTTONWEED"),
        .height = 6,
        .weight = 10,
        .description = gSkiploomPokedexText,
        .unusedDescription = gSkiploomPokedexTextUnused,
        .pokemonScale = 387,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_JUMPLUFF] =
    {
        .categoryName = _("COTTONWEED"),
        .height = 8,
        .weight = 30,
        .description = gJumpluffPokedexText,
        .unusedDescription = gJumpluffPokedexTextUnused,
        .pokemonScale = 418,
        .pokemonOffset = -4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_AIPOM] =
    {
        .categoryName = _("LONG TAIL"),
        .height = 8,
        .weight = 115,
        .description = gAipomPokedexText,
        .unusedDescription = gAipomPokedexTextUnused,
        .pokemonScale = 363,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SUNKERN] =
    {
        .categoryName = _("SEED"),
        .height = 3,
        .weight = 18,
        .description = gSunkernPokedexText,
        .unusedDescription = gSunkernPokedexTextUnused,
        .pokemonScale = 541,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SUNFLORA] =
    {
        .categoryName = _("SUN"),
        .height = 8,
        .weight = 85,
        .description = gSunfloraPokedexText,
        .unusedDescription = gSunfloraPokedexTextUnused,
        .pokemonScale = 374,
        .pokemonOffset = 12,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_YANMA] =
    {
        .categoryName = _("CLEAR WING"),
        .height = 12,
        .weight = 380,
        .description = gYanmaPokedexText,
        .unusedDescription = gYanmaPokedexTextUnused,
        .pokemonScale = 274,
        .pokemonOffset = -4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WOOPER] =
    {
        .categoryName = _("WATER FISH"),
        .height = 4,
        .weight = 85,
        .description = gWooperPokedexText,
        .unusedDescription = gWooperPokedexTextUnused,
        .pokemonScale = 479,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_QUAGSIRE] =
    {
        .categoryName = _("WATER FISH"),
        .height = 14,
        .weight = 750,
        .description = gQuagsirePokedexText,
        .unusedDescription = gQuagsirePokedexTextUnused,
        .pokemonScale = 273,
        .pokemonOffset = 4,
        .trainerScale = 273,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ESPEON] =
    {
        .categoryName = _("SUN"),
        .height = 9,
        .weight = 265,
        .description = gEspeonPokedexText,
        .unusedDescription = gEspeonPokedexTextUnused,
        .pokemonScale = 363,
        .pokemonOffset = 12,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_UMBREON] =
    {
        .categoryName = _("MOONLIGHT"),
        .height = 10,
        .weight = 270,
        .description = gUmbreonPokedexText,
        .unusedDescription = gUmbreonPokedexTextUnused,
        .pokemonScale = 317,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MURKROW] =
    {
        .categoryName = _("DARKNESS"),
        .height = 5,
        .weight = 21,
        .description = gMurkrowPokedexText,
        .unusedDescription = gMurkrowPokedexTextUnused,
        .pokemonScale = 401,
        .pokemonOffset = -8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SLOWKING] =
    {
        .categoryName = _("ROYAL"),
        .height = 20,
        .weight = 795,
        .description = gSlowkingPokedexText,
        .unusedDescription = gSlowkingPokedexTextUnused,
        .pokemonScale = 265,
        .pokemonOffset = -1,
        .trainerScale = 330,
        .trainerOffset = 4,
    },

    [NATIONAL_DEX_MISDREAVUS] =
    {
        .categoryName = _("SCREECH"),
        .height = 7,
        .weight = 10,
        .description = gMisdreavusPokedexText,
        .unusedDescription = gMisdreavusPokedexTextUnused,
        .pokemonScale = 407,
        .pokemonOffset = -8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_UNOWN] =
    {
        .categoryName = _("SYMBOL"),
        .height = 5,
        .weight = 50,
        .description = gUnownPokedexText,
        .unusedDescription = gUnownPokedexTextUnused,
        .pokemonScale = 411,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WOBBUFFET] =
    {
        .categoryName = _("PATIENT"),
        .height = 13,
        .weight = 285,
        .description = gWobbuffetPokedexText,
        .unusedDescription = gWobbuffetPokedexTextUnused,
        .pokemonScale = 274,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GIRAFARIG] =
    {
        .categoryName = _("LONG NECK"),
        .height = 15,
        .weight = 415,
        .description = gGirafarigPokedexText,
        .unusedDescription = gGirafarigPokedexTextUnused,
        .pokemonScale = 281,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PINECO] =
    {
        .categoryName = _("BAGWORM"),
        .height = 6,
        .weight = 72,
        .description = gPinecoPokedexText,
        .unusedDescription = gPinecoPokedexTextUnused,
        .pokemonScale = 445,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FORRETRESS] =
    {
        .categoryName = _("BAGWORM"),
        .height = 12,
        .weight = 1258,
        .description = gForretressPokedexText,
        .unusedDescription = gForretressPokedexTextUnused,
        .pokemonScale = 293,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DUNSPARCE] =
    {
        .categoryName = _("LAND SNAKE"),
        .height = 15,
        .weight = 140,
        .description = gDunsparcePokedexText,
        .unusedDescription = gDunsparcePokedexTextUnused,
        .pokemonScale = 284,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GLIGAR] =
    {
        .categoryName = _("FLYSCORPION"),
        .height = 11,
        .weight = 648,
        .description = gGligarPokedexText,
        .unusedDescription = gGligarPokedexTextUnused,
        .pokemonScale = 350,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_STEELIX] =
    {
        .categoryName = _("IRON SNAKE"),
        .height = 92,
        .weight = 4000,
        .description = gSteelixPokedexText,
        .unusedDescription = gSteelixPokedexTextUnused,
        .pokemonScale = 278,
        .pokemonOffset = -1,
        .trainerScale = 557,
        .trainerOffset = 13,
    },

    [NATIONAL_DEX_SNUBBULL] =
    {
        .categoryName = _("FAIRY"),
        .height = 6,
        .weight = 78,
        .description = gSnubbullPokedexText,
        .unusedDescription = gSnubbullPokedexTextUnused,
        .pokemonScale = 465,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GRANBULL] =
    {
        .categoryName = _("FAIRY"),
        .height = 14,
        .weight = 487,
        .description = gGranbullPokedexText,
        .unusedDescription = gGranbullPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_QWILFISH] =
    {
        .categoryName = _("BALLOON"),
        .height = 5,
        .weight = 39,
        .description = gQwilfishPokedexText,
        .unusedDescription = gQwilfishPokedexTextUnused,
        .pokemonScale = 430,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SCIZOR] =
    {
        .categoryName = _("PINCER"),
        .height = 18,
        .weight = 1180,
        .description = gScizorPokedexText,
        .unusedDescription = gScizorPokedexTextUnused,
        .pokemonScale = 282,
        .pokemonOffset = 0,
        .trainerScale = 282,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_SHUCKLE] =
    {
        .categoryName = _("MOLD"),
        .height = 6,
        .weight = 205,
        .description = gShucklePokedexText,
        .unusedDescription = gShucklePokedexTextUnused,
        .pokemonScale = 485,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HERACROSS] =
    {
        .categoryName = _("SINGLE HORN"),
        .height = 15,
        .weight = 540,
        .description = gHeracrossPokedexText,
        .unusedDescription = gHeracrossPokedexTextUnused,
        .pokemonScale = 285,
        .pokemonOffset = 0,
        .trainerScale = 283,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SNEASEL] =
    {
        .categoryName = _("SHARP CLAW"),
        .height = 9,
        .weight = 280,
        .description = gSneaselPokedexText,
        .unusedDescription = gSneaselPokedexTextUnused,
        .pokemonScale = 413,
        .pokemonOffset = -3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TEDDIURSA] =
    {
        .categoryName = _("LITTLE BEAR"),
        .height = 6,
        .weight = 88,
        .description = gTeddiursaPokedexText,
        .unusedDescription = gTeddiursaPokedexTextUnused,
        .pokemonScale = 455,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_URSARING] =
    {
        .categoryName = _("HIBERNATOR"),
        .height = 18,
        .weight = 1258,
        .description = gUrsaringPokedexText,
        .unusedDescription = gUrsaringPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = 0,
        .trainerScale = 280,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_SLUGMA] =
    {
        .categoryName = _("LAVA"),
        .height = 7,
        .weight = 350,
        .description = gSlugmaPokedexText,
        .unusedDescription = gSlugmaPokedexTextUnused,
        .pokemonScale = 329,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MAGCARGO] =
    {
        .categoryName = _("LAVA"),
        .height = 8,
        .weight = 550,
        .description = gMagcargoPokedexText,
        .unusedDescription = gMagcargoPokedexTextUnused,
        .pokemonScale = 332,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SWINUB] =
    {
        .categoryName = _("PIG"),
        .height = 4,
        .weight = 65,
        .description = gSwinubPokedexText,
        .unusedDescription = gSwinubPokedexTextUnused,
        .pokemonScale = 324,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PILOSWINE] =
    {
        .categoryName = _("SWINE"),
        .height = 11,
        .weight = 558,
        .description = gPiloswinePokedexText,
        .unusedDescription = gPiloswinePokedexTextUnused,
        .pokemonScale = 306,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CORSOLA] =
    {
        .categoryName = _("CORAL"),
        .height = 6,
        .weight = 50,
        .description = gCorsolaPokedexText,
        .unusedDescription = gCorsolaPokedexTextUnused,
        .pokemonScale = 410,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_REMORAID] =
    {
        .categoryName = _("JET"),
        .height = 6,
        .weight = 120,
        .description = gRemoraidPokedexText,
        .unusedDescription = gRemoraidPokedexTextUnused,
        .pokemonScale = 316,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_OCTILLERY] =
    {
        .categoryName = _("JET"),
        .height = 9,
        .weight = 285,
        .description = gOctilleryPokedexText,
        .unusedDescription = gOctilleryPokedexTextUnused,
        .pokemonScale = 296,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DELIBIRD] =
    {
        .categoryName = _("DELIVERY"),
        .height = 9,
        .weight = 160,
        .description = gDelibirdPokedexText,
        .unusedDescription = gDelibirdPokedexTextUnused,
        .pokemonScale = 293,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MANTINE] =
    {
        .categoryName = _("KITE"),
        .height = 21,
        .weight = 2200,
        .description = gMantinePokedexText,
        .unusedDescription = gMantinePokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = 0,
        .trainerScale = 360,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_SKARMORY] =
    {
        .categoryName = _("ARMOR BIRD"),
        .height = 17,
        .weight = 505,
        .description = gSkarmoryPokedexText,
        .unusedDescription = gSkarmoryPokedexTextUnused,
        .pokemonScale = 285,
        .pokemonOffset = 0,
        .trainerScale = 276,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_HOUNDOUR] =
    {
        .categoryName = _("DARK"),
        .height = 6,
        .weight = 108,
        .description = gHoundourPokedexText,
        .unusedDescription = gHoundourPokedexTextUnused,
        .pokemonScale = 393,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HOUNDOOM] =
    {
        .categoryName = _("DARK"),
        .height = 14,
        .weight = 350,
        .description = gHoundoomPokedexText,
        .unusedDescription = gHoundoomPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KINGDRA] =
    {
        .categoryName = _("DRAGON"),
        .height = 18,
        .weight = 1520,
        .description = gKingdraPokedexText,
        .unusedDescription = gKingdraPokedexTextUnused,
        .pokemonScale = 257,
        .pokemonOffset = 1,
        .trainerScale = 293,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_PHANPY] =
    {
        .categoryName = _("LONG NOSE"),
        .height = 5,
        .weight = 335,
        .description = gPhanpyPokedexText,
        .unusedDescription = gPhanpyPokedexTextUnused,
        .pokemonScale = 465,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DONPHAN] =
    {
        .categoryName = _("ARMOR"),
        .height = 11,
        .weight = 1200,
        .description = gDonphanPokedexText,
        .unusedDescription = gDonphanPokedexTextUnused,
        .pokemonScale = 313,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PORYGON2] =
    {
        .categoryName = _("VIRTUAL"),
        .height = 6,
        .weight = 325,
        .description = gPorygon2PokedexText,
        .unusedDescription = gPorygon2PokedexTextUnused,
        .pokemonScale = 320,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_STANTLER] =
    {
        .categoryName = _("BIG HORN"),
        .height = 14,
        .weight = 712,
        .description = gStantlerPokedexText,
        .unusedDescription = gStantlerPokedexTextUnused,
        .pokemonScale = 277,
        .pokemonOffset = -1,
        .trainerScale = 277,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_SMEARGLE] =
    {
        .categoryName = _("PAINTER"),
        .height = 12,
        .weight = 580,
        .description = gSmearglePokedexText,
        .unusedDescription = gSmearglePokedexTextUnused,
        .pokemonScale = 287,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TYROGUE] =
    {
        .categoryName = _("SCUFFLE"),
        .height = 7,
        .weight = 210,
        .description = gTyroguePokedexText,
        .unusedDescription = gTyroguePokedexTextUnused,
        .pokemonScale = 292,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HITMONTOP] =
    {
        .categoryName = _("HANDSTAND"),
        .height = 14,
        .weight = 480,
        .description = gHitmontopPokedexText,
        .unusedDescription = gHitmontopPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 2,
        .trainerScale = 257,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SMOOCHUM] =
    {
        .categoryName = _("KISS"),
        .height = 4,
        .weight = 60,
        .description = gSmoochumPokedexText,
        .unusedDescription = gSmoochumPokedexTextUnused,
        .pokemonScale = 440,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ELEKID] =
    {
        .categoryName = _("ELECTRIC"),
        .height = 6,
        .weight = 235,
        .description = gElekidPokedexText,
        .unusedDescription = gElekidPokedexTextUnused,
        .pokemonScale = 363,
        .pokemonOffset = 13,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MAGBY] =
    {
        .categoryName = _("LIVE COAL"),
        .height = 7,
        .weight = 214,
        .description = gMagbyPokedexText,
        .unusedDescription = gMagbyPokedexTextUnused,
        .pokemonScale = 284,
        .pokemonOffset = 11,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MILTANK] =
    {
        .categoryName = _("MILK COW"),
        .height = 12,
        .weight = 755,
        .description = gMiltankPokedexText,
        .unusedDescription = gMiltankPokedexTextUnused,
        .pokemonScale = 280,
        .pokemonOffset = 3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BLISSEY] =
    {
        .categoryName = _("HAPPINESS"),
        .height = 15,
        .weight = 468,
        .description = gBlisseyPokedexText,
        .unusedDescription = gBlisseyPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 310,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_RAIKOU] =
    {
        .categoryName = _("THUNDER"),
        .height = 19,
        .weight = 1780,
        .description = gRaikouPokedexText,
        .unusedDescription = gRaikouPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 0,
        .trainerScale = 359,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_ENTEI] =
    {
        .categoryName = _("VOLCANO"),
        .height = 21,
        .weight = 1980,
        .description = gEnteiPokedexText,
        .unusedDescription = gEnteiPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 0,
        .trainerScale = 370,
        .trainerOffset = 7,
    },

    [NATIONAL_DEX_SUICUNE] =
    {
        .categoryName = _("AURORA"),
        .height = 20,
        .weight = 1870,
        .description = gSuicunePokedexText,
        .unusedDescription = gSuicunePokedexTextUnused,
        .pokemonScale = 286,
        .pokemonOffset = 0,
        .trainerScale = 371,
        .trainerOffset = 7,
    },

    [NATIONAL_DEX_LARVITAR] =
    {
        .categoryName = _("ROCK SKIN"),
        .height = 6,
        .weight = 720,
        .description = gLarvitarPokedexText,
        .unusedDescription = gLarvitarPokedexTextUnused,
        .pokemonScale = 472,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PUPITAR] =
    {
        .categoryName = _("HARD SHELL"),
        .height = 12,
        .weight = 1520,
        .description = gPupitarPokedexText,
        .unusedDescription = gPupitarPokedexTextUnused,
        .pokemonScale = 292,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TYRANITAR] =
    {
        .categoryName = _("ARMOR"),
        .height = 20,
        .weight = 2020,
        .description = gTyranitarPokedexText,
        .unusedDescription = gTyranitarPokedexTextUnused,
        .pokemonScale = 285,
        .pokemonOffset = 0,
        .trainerScale = 383,
        .trainerOffset = 7,
    },

    [NATIONAL_DEX_LUGIA] =
    {
        .categoryName = _("DIVING"),
        .height = 52,
        .weight = 2160,
        .description = gLugiaPokedexText,
        .unusedDescription = gLugiaPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 0,
        .trainerScale = 742,
        .trainerOffset = 18,
    },

    [NATIONAL_DEX_HO_OH] =
    {
        .categoryName = _("RAINBOW"),
        .height = 38,
        .weight = 1990,
        .description = gHoOhPokedexText,
        .unusedDescription = gHoOhPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 0,
        .trainerScale = 620,
        .trainerOffset = 16,
    },

    [NATIONAL_DEX_CELEBI] =
    {
        .categoryName = _("TIME TRAVEL"),
        .height = 6,
        .weight = 50,
        .description = gCelebiPokedexText,
        .unusedDescription = gCelebiPokedexTextUnused,
        .pokemonScale = 393,
        .pokemonOffset = -10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TREECKO] =
    {
        .categoryName = _("WOOD GECKO"),
        .height = 5,
        .weight = 50,
        .description = gTreeckoPokedexText,
        .unusedDescription = gTreeckoPokedexTextUnused,
        .pokemonScale = 541,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GROVYLE] =
    {
        .categoryName = _("WOOD GECKO"),
        .height = 9,
        .weight = 216,
        .description = gGrovylePokedexText,
        .unusedDescription = gGrovylePokedexTextUnused,
        .pokemonScale = 360,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SCEPTILE] =
    {
        .categoryName = _("FOREST"),
        .height = 17,
        .weight = 522,
        .description = gSceptilePokedexText,
        .unusedDescription = gSceptilePokedexTextUnused,
        .pokemonScale = 282,
        .pokemonOffset = -1,
        .trainerScale = 313,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_TORCHIC] =
    {
        .categoryName = _("CHICK"),
        .height = 4,
        .weight = 25,
        .description = gTorchicPokedexText,
        .unusedDescription = gTorchicPokedexTextUnused,
        .pokemonScale = 566,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_COMBUSKEN] =
    {
        .categoryName = _("YOUNG FOWL"),
        .height = 9,
        .weight = 195,
        .description = gCombuskenPokedexText,
        .unusedDescription = gCombuskenPokedexTextUnused,
        .pokemonScale = 343,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BLAZIKEN] =
    {
        .categoryName = _("BLAZE"),
        .height = 19,
        .weight = 520,
        .description = gBlazikenPokedexText,
        .unusedDescription = gBlazikenPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = -1,
        .trainerScale = 314,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_MUDKIP] =
    {
        .categoryName = _("MUD FISH"),
        .height = 4,
        .weight = 76,
        .description = gMudkipPokedexText,
        .unusedDescription = gMudkipPokedexTextUnused,
        .pokemonScale = 535,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MARSHTOMP] =
    {
        .categoryName = _("MUD FISH"),
        .height = 7,
        .weight = 280,
        .description = gMarshtompPokedexText,
        .unusedDescription = gMarshtompPokedexTextUnused,
        .pokemonScale = 340,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SWAMPERT] =
    {
        .categoryName = _("MUD FISH"),
        .height = 15,
        .weight = 819,
        .description = gSwampertPokedexText,
        .unusedDescription = gSwampertPokedexTextUnused,
        .pokemonScale = 276,
        .pokemonOffset = -1,
        .trainerScale = 282,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_POOCHYENA] =
    {
        .categoryName = _("BITE"),
        .height = 5,
        .weight = 136,
        .description = gPoochyenaPokedexText,
        .unusedDescription = gPoochyenaPokedexTextUnused,
        .pokemonScale = 481,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MIGHTYENA] =
    {
        .categoryName = _("BITE"),
        .height = 10,
        .weight = 370,
        .description = gMightyenaPokedexText,
        .unusedDescription = gMightyenaPokedexTextUnused,
        .pokemonScale = 359,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ZIGZAGOON] =
    {
        .categoryName = _("TINYRACCOON"),
        .height = 4,
        .weight = 175,
        .description = gZigzagoonPokedexText,
        .unusedDescription = gZigzagoonPokedexTextUnused,
        .pokemonScale = 560,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LINOONE] =
    {
        .categoryName = _("RUSHING"),
        .height = 5,
        .weight = 325,
        .description = gLinoonePokedexText,
        .unusedDescription = gLinoonePokedexTextUnused,
        .pokemonScale = 321,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WURMPLE] =
    {
        .categoryName = _("WORM"),
        .height = 3,
        .weight = 36,
        .description = gWurmplePokedexText,
        .unusedDescription = gWurmplePokedexTextUnused,
        .pokemonScale = 711,
        .pokemonOffset = 22,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SILCOON] =
    {
        .categoryName = _("COCOON"),
        .height = 6,
        .weight = 100,
        .description = gSilcoonPokedexText,
        .unusedDescription = gSilcoonPokedexTextUnused,
        .pokemonScale = 431,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BEAUTIFLY] =
    {
        .categoryName = _("BUTTERFLY"),
        .height = 10,
        .weight = 284,
        .description = gBeautiflyPokedexText,
        .unusedDescription = gBeautiflyPokedexTextUnused,
        .pokemonScale = 298,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CASCOON] =
    {
        .categoryName = _("COCOON"),
        .height = 7,
        .weight = 115,
        .description = gCascoonPokedexText,
        .unusedDescription = gCascoonPokedexTextUnused,
        .pokemonScale = 391,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DUSTOX] =
    {
        .categoryName = _("POISON MOTH"),
        .height = 12,
        .weight = 316,
        .description = gDustoxPokedexText,
        .unusedDescription = gDustoxPokedexTextUnused,
        .pokemonScale = 269,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LOTAD] =
    {
        .categoryName = _("WATER WEED"),
        .height = 5,
        .weight = 26,
        .description = gLotadPokedexText,
        .unusedDescription = gLotadPokedexTextUnused,
        .pokemonScale = 406,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LOMBRE] =
    {
        .categoryName = _("JOLLY"),
        .height = 12,
        .weight = 325,
        .description = gLombrePokedexText,
        .unusedDescription = gLombrePokedexTextUnused,
        .pokemonScale = 277,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LUDICOLO] =
    {
        .categoryName = _("CAREFREE"),
        .height = 15,
        .weight = 550,
        .description = gLudicoloPokedexText,
        .unusedDescription = gLudicoloPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = 0,
        .trainerScale = 282,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_SEEDOT] =
    {
        .categoryName = _("ACORN"),
        .height = 5,
        .weight = 40,
        .description = gSeedotPokedexText,
        .unusedDescription = gSeedotPokedexTextUnused,
        .pokemonScale = 472,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NUZLEAF] =
    {
        .categoryName = _("WILY"),
        .height = 10,
        .weight = 280,
        .description = gNuzleafPokedexText,
        .unusedDescription = gNuzleafPokedexTextUnused,
        .pokemonScale = 299,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SHIFTRY] =
    {
        .categoryName = _("WICKED"),
        .height = 13,
        .weight = 596,
        .description = gShiftryPokedexText,
        .unusedDescription = gShiftryPokedexTextUnused,
        .pokemonScale = 290,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TAILLOW] =
    {
        .categoryName = _("TINYSWALLOW"),
        .height = 3,
        .weight = 23,
        .description = gTaillowPokedexText,
        .unusedDescription = gTaillowPokedexTextUnused,
        .pokemonScale = 465,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SWELLOW] =
    {
        .categoryName = _("SWALLOW"),
        .height = 7,
        .weight = 198,
        .description = gSwellowPokedexText,
        .unusedDescription = gSwellowPokedexTextUnused,
        .pokemonScale = 428,
        .pokemonOffset = 13,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WINGULL] =
    {
        .categoryName = _("SEAGULL"),
        .height = 6,
        .weight = 95,
        .description = gWingullPokedexText,
        .unusedDescription = gWingullPokedexTextUnused,
        .pokemonScale = 295,
        .pokemonOffset = -2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PELIPPER] =
    {
        .categoryName = _("WATER BIRD"),
        .height = 12,
        .weight = 280,
        .description = gPelipperPokedexText,
        .unusedDescription = gPelipperPokedexTextUnused,
        .pokemonScale = 288,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_RALTS] =
    {
        .categoryName = _("FEELING"),
        .height = 4,
        .weight = 66,
        .description = gRaltsPokedexText,
        .unusedDescription = gRaltsPokedexTextUnused,
        .pokemonScale = 457,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KIRLIA] =
    {
        .categoryName = _("EMOTION"),
        .height = 8,
        .weight = 202,
        .description = gKirliaPokedexText,
        .unusedDescription = gKirliaPokedexTextUnused,
        .pokemonScale = 354,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GARDEVOIR] =
    {
        .categoryName = _("EMBRACE"),
        .height = 16,
        .weight = 484,
        .description = gGardevoirPokedexText,
        .unusedDescription = gGardevoirPokedexTextUnused,
        .pokemonScale = 277,
        .pokemonOffset = 0,
        .trainerScale = 276,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_SURSKIT] =
    {
        .categoryName = _("POND SKATER"),
        .height = 5,
        .weight = 17,
        .description = gSurskitPokedexText,
        .unusedDescription = gSurskitPokedexTextUnused,
        .pokemonScale = 375,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MASQUERAIN] =
    {
        .categoryName = _("EYEBALL"),
        .height = 8,
        .weight = 36,
        .description = gMasquerainPokedexText,
        .unusedDescription = gMasquerainPokedexTextUnused,
        .pokemonScale = 378,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SHROOMISH] =
    {
        .categoryName = _("MUSHROOM"),
        .height = 4,
        .weight = 45,
        .description = gShroomishPokedexText,
        .unusedDescription = gShroomishPokedexTextUnused,
        .pokemonScale = 513,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BRELOOM] =
    {
        .categoryName = _("MUSHROOM"),
        .height = 12,
        .weight = 392,
        .description = gBreloomPokedexText,
        .unusedDescription = gBreloomPokedexTextUnused,
        .pokemonScale = 324,
        .pokemonOffset = 6,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SLAKOTH] =
    {
        .categoryName = _("SLACKER"),
        .height = 8,
        .weight = 240,
        .description = gSlakothPokedexText,
        .unusedDescription = gSlakothPokedexTextUnused,
        .pokemonScale = 291,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VIGOROTH] =
    {
        .categoryName = _("WILD MONKEY"),
        .height = 14,
        .weight = 465,
        .description = gVigorothPokedexText,
        .unusedDescription = gVigorothPokedexTextUnused,
        .pokemonScale = 301,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SLAKING] =
    {
        .categoryName = _("LAZY"),
        .height = 20,
        .weight = 1305,
        .description = gSlakingPokedexText,
        .unusedDescription = gSlakingPokedexTextUnused,
        .pokemonScale = 277,
        .pokemonOffset = 5,
        .trainerScale = 326,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_NINCADA] =
    {
        .categoryName = _("TRAINEE"),
        .height = 5,
        .weight = 55,
        .description = gNincadaPokedexText,
        .unusedDescription = gNincadaPokedexTextUnused,
        .pokemonScale = 405,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NINJASK] =
    {
        .categoryName = _("NINJA"),
        .height = 8,
        .weight = 120,
        .description = gNinjaskPokedexText,
        .unusedDescription = gNinjaskPokedexTextUnused,
        .pokemonScale = 383,
        .pokemonOffset = -9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SHEDINJA] =
    {
        .categoryName = _("SHED"),
        .height = 8,
        .weight = 12,
        .description = gShedinjaPokedexText,
        .unusedDescription = gShedinjaPokedexTextUnused,
        .pokemonScale = 372,
        .pokemonOffset = -8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WHISMUR] =
    {
        .categoryName = _("WHISPER"),
        .height = 6,
        .weight = 163,
        .description = gWhismurPokedexText,
        .unusedDescription = gWhismurPokedexTextUnused,
        .pokemonScale = 373,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LOUDRED] =
    {
        .categoryName = _("BIG VOICE"),
        .height = 10,
        .weight = 405,
        .description = gLoudredPokedexText,
        .unusedDescription = gLoudredPokedexTextUnused,
        .pokemonScale = 356,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_EXPLOUD] =
    {
        .categoryName = _("LOUD NOISE"),
        .height = 15,
        .weight = 840,
        .description = gExploudPokedexText,
        .unusedDescription = gExploudPokedexTextUnused,
        .pokemonScale = 284,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MAKUHITA] =
    {
        .categoryName = _("GUTS"),
        .height = 10,
        .weight = 864,
        .description = gMakuhitaPokedexText,
        .unusedDescription = gMakuhitaPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HARIYAMA] =
    {
        .categoryName = _("ARM THRUST"),
        .height = 23,
        .weight = 2538,
        .description = gHariyamaPokedexText,
        .unusedDescription = gHariyamaPokedexTextUnused,
        .pokemonScale = 268,
        .pokemonOffset = -1,
        .trainerScale = 375,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_AZURILL] =
    {
        .categoryName = _("POLKA DOT"),
        .height = 2,
        .weight = 20,
        .description = gAzurillPokedexText,
        .unusedDescription = gAzurillPokedexTextUnused,
        .pokemonScale = 603,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_NOSEPASS] =
    {
        .categoryName = _("COMPASS"),
        .height = 10,
        .weight = 970,
        .description = gNosepassPokedexText,
        .unusedDescription = gNosepassPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 9,
        .trainerScale = 289,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_SKITTY] =
    {
        .categoryName = _("KITTEN"),
        .height = 6,
        .weight = 110,
        .description = gSkittyPokedexText,
        .unusedDescription = gSkittyPokedexTextUnused,
        .pokemonScale = 492,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DELCATTY] =
    {
        .categoryName = _("PRIM"),
        .height = 11,
        .weight = 326,
        .description = gDelcattyPokedexText,
        .unusedDescription = gDelcattyPokedexTextUnused,
        .pokemonScale = 322,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SABLEYE] =
    {
        .categoryName = _("DARKNESS"),
        .height = 5,
        .weight = 110,
        .description = gSableyePokedexText,
        .unusedDescription = gSableyePokedexTextUnused,
        .pokemonScale = 451,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MAWILE] =
    {
        .categoryName = _("DECEIVER"),
        .height = 6,
        .weight = 115,
        .description = gMawilePokedexText,
        .unusedDescription = gMawilePokedexTextUnused,
        .pokemonScale = 466,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -3,
    },

    [NATIONAL_DEX_ARON] =
    {
        .categoryName = _("IRON ARMOR"),
        .height = 4,
        .weight = 600,
        .description = gAronPokedexText,
        .unusedDescription = gAronPokedexTextUnused,
        .pokemonScale = 419,
        .pokemonOffset = 21,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LAIRON] =
    {
        .categoryName = _("IRON ARMOR"),
        .height = 9,
        .weight = 1200,
        .description = gLaironPokedexText,
        .unusedDescription = gLaironPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = 11,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_AGGRON] =
    {
        .categoryName = _("IRON ARMOR"),
        .height = 21,
        .weight = 3600,
        .description = gAggronPokedexText,
        .unusedDescription = gAggronPokedexTextUnused,
        .pokemonScale = 274,
        .pokemonOffset = -1,
        .trainerScale = 374,
        .trainerOffset = 7,
    },

    [NATIONAL_DEX_MEDITITE] =
    {
        .categoryName = _("MEDITATE"),
        .height = 6,
        .weight = 112,
        .description = gMedititePokedexText,
        .unusedDescription = gMedititePokedexTextUnused,
        .pokemonScale = 465,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MEDICHAM] =
    {
        .categoryName = _("MEDITATE"),
        .height = 13,
        .weight = 315,
        .description = gMedichamPokedexText,
        .unusedDescription = gMedichamPokedexTextUnused,
        .pokemonScale = 298,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ELECTRIKE] =
    {
        .categoryName = _("LIGHTNING"),
        .height = 6,
        .weight = 152,
        .description = gElectrikePokedexText,
        .unusedDescription = gElectrikePokedexTextUnused,
        .pokemonScale = 290,
        .pokemonOffset = 16,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MANECTRIC] =
    {
        .categoryName = _("DISCHARGE"),
        .height = 15,
        .weight = 402,
        .description = gManectricPokedexText,
        .unusedDescription = gManectricPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 1,
        .trainerScale = 257,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_PLUSLE] =
    {
        .categoryName = _("CHEERING"),
        .height = 4,
        .weight = 42,
        .description = gPluslePokedexText,
        .unusedDescription = gPluslePokedexTextUnused,
        .pokemonScale = 515,
        .pokemonOffset = -9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MINUN] =
    {
        .categoryName = _("CHEERING"),
        .height = 4,
        .weight = 42,
        .description = gMinunPokedexText,
        .unusedDescription = gMinunPokedexTextUnused,
        .pokemonScale = 512,
        .pokemonOffset = -7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VOLBEAT] =
    {
        .categoryName = _("FIREFLY"),
        .height = 7,
        .weight = 177,
        .description = gVolbeatPokedexText,
        .unusedDescription = gVolbeatPokedexTextUnused,
        .pokemonScale = 442,
        .pokemonOffset = -4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ILLUMISE] =
    {
        .categoryName = _("FIREFLY"),
        .height = 6,
        .weight = 177,
        .description = gIllumisePokedexText,
        .unusedDescription = gIllumisePokedexTextUnused,
        .pokemonScale = 572,
        .pokemonOffset = -4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ROSELIA] =
    {
        .categoryName = _("THORN"),
        .height = 3,
        .weight = 20,
        .description = gRoseliaPokedexText,
        .unusedDescription = gRoseliaPokedexTextUnused,
        .pokemonScale = 677,
        .pokemonOffset = 20,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GULPIN] =
    {
        .categoryName = _("STOMACH"),
        .height = 4,
        .weight = 103,
        .description = gGulpinPokedexText,
        .unusedDescription = gGulpinPokedexTextUnused,
        .pokemonScale = 593,
        .pokemonOffset = 22,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SWALOT] =
    {
        .categoryName = _("POISON BAG"),
        .height = 17,
        .weight = 800,
        .description = gSwalotPokedexText,
        .unusedDescription = gSwalotPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 5,
        .trainerScale = 345,
        .trainerOffset = 4,
    },

    [NATIONAL_DEX_CARVANHA] =
    {
        .categoryName = _("SAVAGE"),
        .height = 8,
        .weight = 208,
        .description = gCarvanhaPokedexText,
        .unusedDescription = gCarvanhaPokedexTextUnused,
        .pokemonScale = 362,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SHARPEDO] =
    {
        .categoryName = _("BRUTAL"),
        .height = 18,
        .weight = 888,
        .description = gSharpedoPokedexText,
        .unusedDescription = gSharpedoPokedexTextUnused,
        .pokemonScale = 265,
        .pokemonOffset = 0,
        .trainerScale = 342,
        .trainerOffset = 4,
    },

    [NATIONAL_DEX_WAILMER] =
    {
        .categoryName = _("BALL WHALE"),
        .height = 20,
        .weight = 1300,
        .description = gWailmerPokedexText,
        .unusedDescription = gWailmerPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 10,
        .trainerScale = 493,
        .trainerOffset = 10,
    },

    [NATIONAL_DEX_WAILORD] =
    {
        .categoryName = _("FLOAT WHALE"),
        .height = 145,
        .weight = 3980,
        .description = gWailordPokedexText,
        .unusedDescription = gWailordPokedexTextUnused,
        .pokemonScale = 276,
        .pokemonOffset = -1,
        .trainerScale = 1428,
        .trainerOffset = 20,
    },

    [NATIONAL_DEX_NUMEL] =
    {
        .categoryName = _("NUMB"),
        .height = 7,
        .weight = 240,
        .description = gNumelPokedexText,
        .unusedDescription = gNumelPokedexTextUnused,
        .pokemonScale = 310,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CAMERUPT] =
    {
        .categoryName = _("ERUPTION"),
        .height = 19,
        .weight = 2200,
        .description = gCameruptPokedexText,
        .unusedDescription = gCameruptPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 6,
        .trainerScale = 345,
        .trainerOffset = 4,
    },

    [NATIONAL_DEX_TORKOAL] =
    {
        .categoryName = _("COAL"),
        .height = 5,
        .weight = 804,
        .description = gTorkoalPokedexText,
        .unusedDescription = gTorkoalPokedexTextUnused,
        .pokemonScale = 392,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SPOINK] =
    {
        .categoryName = _("BOUNCE"),
        .height = 7,
        .weight = 306,
        .description = gSpoinkPokedexText,
        .unusedDescription = gSpoinkPokedexTextUnused,
        .pokemonScale = 423,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GRUMPIG] =
    {
        .categoryName = _("MANIPULATE"),
        .height = 9,
        .weight = 715,
        .description = gGrumpigPokedexText,
        .unusedDescription = gGrumpigPokedexTextUnused,
        .pokemonScale = 358,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SPINDA] =
    {
        .categoryName = _("SPOT PANDA"),
        .height = 11,
        .weight = 50,
        .description = gSpindaPokedexText,
        .unusedDescription = gSpindaPokedexTextUnused,
        .pokemonScale = 321,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_TRAPINCH] =
    {
        .categoryName = _("ANT PIT"),
        .height = 7,
        .weight = 150,
        .description = gTrapinchPokedexText,
        .unusedDescription = gTrapinchPokedexTextUnused,
        .pokemonScale = 298,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_VIBRAVA] =
    {
        .categoryName = _("VIBRATION"),
        .height = 11,
        .weight = 153,
        .description = gVibravaPokedexText,
        .unusedDescription = gVibravaPokedexTextUnused,
        .pokemonScale = 370,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_FLYGON] =
    {
        .categoryName = _("MYSTIC"),
        .height = 20,
        .weight = 820,
        .description = gFlygonPokedexText,
        .unusedDescription = gFlygonPokedexTextUnused,
        .pokemonScale = 280,
        .pokemonOffset = 0,
        .trainerScale = 299,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_CACNEA] =
    {
        .categoryName = _("CACTUS"),
        .height = 4,
        .weight = 513,
        .description = gCacneaPokedexText,
        .unusedDescription = gCacneaPokedexTextUnused,
        .pokemonScale = 455,
        .pokemonOffset = 19,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CACTURNE] =
    {
        .categoryName = _("SCARECROW"),
        .height = 13,
        .weight = 774,
        .description = gCacturnePokedexText,
        .unusedDescription = gCacturnePokedexTextUnused,
        .pokemonScale = 327,
        .pokemonOffset = 3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SWABLU] =
    {
        .categoryName = _("COTTON BIRD"),
        .height = 4,
        .weight = 12,
        .description = gSwabluPokedexText,
        .unusedDescription = gSwabluPokedexTextUnused,
        .pokemonScale = 422,
        .pokemonOffset = -8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ALTARIA] =
    {
        .categoryName = _("HUMMING"),
        .height = 11,
        .weight = 206,
        .description = gAltariaPokedexText,
        .unusedDescription = gAltariaPokedexTextUnused,
        .pokemonScale = 327,
        .pokemonOffset = 0,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ZANGOOSE] =
    {
        .categoryName = _("CAT FERRET"),
        .height = 13,
        .weight = 403,
        .description = gZangoosePokedexText,
        .unusedDescription = gZangoosePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SEVIPER] =
    {
        .categoryName = _("FANG SNAKE"),
        .height = 27,
        .weight = 525,
        .description = gSeviperPokedexText,
        .unusedDescription = gSeviperPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = 6,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LUNATONE] =
    {
        .categoryName = _("METEORITE"),
        .height = 10,
        .weight = 1680,
        .description = gLunatonePokedexText,
        .unusedDescription = gLunatonePokedexTextUnused,
        .pokemonScale = 300,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SOLROCK] =
    {
        .categoryName = _("METEORITE"),
        .height = 12,
        .weight = 1540,
        .description = gSolrockPokedexText,
        .unusedDescription = gSolrockPokedexTextUnused,
        .pokemonScale = 328,
        .pokemonOffset = -3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BARBOACH] =
    {
        .categoryName = _("WHISKERS"),
        .height = 4,
        .weight = 19,
        .description = gBarboachPokedexText,
        .unusedDescription = gBarboachPokedexTextUnused,
        .pokemonScale = 581,
        .pokemonOffset = -2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WHISCASH] =
    {
        .categoryName = _("WHISKERS"),
        .height = 9,
        .weight = 236,
        .description = gWhiscashPokedexText,
        .unusedDescription = gWhiscashPokedexTextUnused,
        .pokemonScale = 317,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CORPHISH] =
    {
        .categoryName = _("RUFFIAN"),
        .height = 6,
        .weight = 115,
        .description = gCorphishPokedexText,
        .unusedDescription = gCorphishPokedexTextUnused,
        .pokemonScale = 484,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CRAWDAUNT] =
    {
        .categoryName = _("ROGUE"),
        .height = 11,
        .weight = 328,
        .description = gCrawdauntPokedexText,
        .unusedDescription = gCrawdauntPokedexTextUnused,
        .pokemonScale = 365,
        .pokemonOffset = 7,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BALTOY] =
    {
        .categoryName = _("CLAY DOLL"),
        .height = 5,
        .weight = 215,
        .description = gBaltoyPokedexText,
        .unusedDescription = gBaltoyPokedexTextUnused,
        .pokemonScale = 384,
        .pokemonOffset = 18,
        .trainerScale = 256,
        .trainerOffset = -3,
    },

    [NATIONAL_DEX_CLAYDOL] =
    {
        .categoryName = _("CLAY DOLL"),
        .height = 15,
        .weight = 1080,
        .description = gClaydolPokedexText,
        .unusedDescription = gClaydolPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 280,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_LILEEP] =
    {
        .categoryName = _("SEA LILY"),
        .height = 10,
        .weight = 238,
        .description = gLileepPokedexText,
        .unusedDescription = gLileepPokedexTextUnused,
        .pokemonScale = 305,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_CRADILY] =
    {
        .categoryName = _("BARNACLE"),
        .height = 15,
        .weight = 604,
        .description = gCradilyPokedexText,
        .unusedDescription = gCradilyPokedexTextUnused,
        .pokemonScale = 275,
        .pokemonOffset = -1,
        .trainerScale = 269,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_ANORITH] =
    {
        .categoryName = _("OLD SHRIMP"),
        .height = 7,
        .weight = 125,
        .description = gAnorithPokedexText,
        .unusedDescription = gAnorithPokedexTextUnused,
        .pokemonScale = 296,
        .pokemonOffset = 4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ARMALDO] =
    {
        .categoryName = _("PLATE"),
        .height = 15,
        .weight = 682,
        .description = gArmaldoPokedexText,
        .unusedDescription = gArmaldoPokedexTextUnused,
        .pokemonScale = 312,
        .pokemonOffset = 2,
        .trainerScale = 271,
        .trainerOffset = -1,
    },

    [NATIONAL_DEX_FEEBAS] =
    {
        .categoryName = _("FISH"),
        .height = 6,
        .weight = 74,
        .description = gFeebasPokedexText,
        .unusedDescription = gFeebasPokedexTextUnused,
        .pokemonScale = 423,
        .pokemonOffset = 3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_MILOTIC] =
    {
        .categoryName = _("TENDER"),
        .height = 62,
        .weight = 1620,
        .description = gMiloticPokedexText,
        .unusedDescription = gMiloticPokedexTextUnused,
        .pokemonScale = 282,
        .pokemonOffset = -1,
        .trainerScale = 382,
        .trainerOffset = 7,
    },

    [NATIONAL_DEX_CASTFORM] =
    {
        .categoryName = _("WEATHER"),
        .height = 3,
        .weight = 8,
        .description = gCastformPokedexText,
        .unusedDescription = gCastformPokedexTextUnused,
        .pokemonScale = 435,
        .pokemonOffset = -5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_KECLEON] =
    {
        .categoryName = _("COLOR SWAP"),
        .height = 10,
        .weight = 220,
        .description = gKecleonPokedexText,
        .unusedDescription = gKecleonPokedexTextUnused,
        .pokemonScale = 316,
        .pokemonOffset = 8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SHUPPET] =
    {
        .categoryName = _("PUPPET"),
        .height = 6,
        .weight = 23,
        .description = gShuppetPokedexText,
        .unusedDescription = gShuppetPokedexTextUnused,
        .pokemonScale = 440,
        .pokemonOffset = -3,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BANETTE] =
    {
        .categoryName = _("MARIONETTE"),
        .height = 11,
        .weight = 125,
        .description = gBanettePokedexText,
        .unusedDescription = gBanettePokedexTextUnused,
        .pokemonScale = 262,
        .pokemonOffset = 9,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DUSKULL] =
    {
        .categoryName = _("REQUIEM"),
        .height = 8,
        .weight = 150,
        .description = gDuskullPokedexText,
        .unusedDescription = gDuskullPokedexTextUnused,
        .pokemonScale = 376,
        .pokemonOffset = 13,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DUSCLOPS] =
    {
        .categoryName = _("BECKON"),
        .height = 16,
        .weight = 306,
        .description = gDusclopsPokedexText,
        .unusedDescription = gDusclopsPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 2,
        .trainerScale = 299,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_TROPIUS] =
    {
        .categoryName = _("FRUIT"),
        .height = 20,
        .weight = 1000,
        .description = gTropiusPokedexText,
        .unusedDescription = gTropiusPokedexTextUnused,
        .pokemonScale = 283,
        .pokemonOffset = -1,
        .trainerScale = 371,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_CHIMECHO] =
    {
        .categoryName = _("WIND CHIME"),
        .height = 6,
        .weight = 10,
        .description = gChimechoPokedexText,
        .unusedDescription = gChimechoPokedexTextUnused,
        .pokemonScale = 505,
        .pokemonOffset = -4,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_ABSOL] =
    {
        .categoryName = _("DISASTER"),
        .height = 12,
        .weight = 470,
        .description = gAbsolPokedexText,
        .unusedDescription = gAbsolPokedexTextUnused,
        .pokemonScale = 301,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WYNAUT] =
    {
        .categoryName = _("BRIGHT"),
        .height = 6,
        .weight = 140,
        .description = gWynautPokedexText,
        .unusedDescription = gWynautPokedexTextUnused,
        .pokemonScale = 453,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SNORUNT] =
    {
        .categoryName = _("SNOW HAT"),
        .height = 7,
        .weight = 168,
        .description = gSnoruntPokedexText,
        .unusedDescription = gSnoruntPokedexTextUnused,
        .pokemonScale = 380,
        .pokemonOffset = 14,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GLALIE] =
    {
        .categoryName = _("FACE"),
        .height = 15,
        .weight = 2565,
        .description = gGlaliePokedexText,
        .unusedDescription = gGlaliePokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 344,
        .trainerOffset = 2,
    },

    [NATIONAL_DEX_SPHEAL] =
    {
        .categoryName = _("CLAP"),
        .height = 8,
        .weight = 395,
        .description = gSphealPokedexText,
        .unusedDescription = gSphealPokedexTextUnused,
        .pokemonScale = 315,
        .pokemonOffset = 15,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SEALEO] =
    {
        .categoryName = _("BALL ROLL"),
        .height = 11,
        .weight = 876,
        .description = gSealeoPokedexText,
        .unusedDescription = gSealeoPokedexTextUnused,
        .pokemonScale = 338,
        .pokemonOffset = 12,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_WALREIN] =
    {
        .categoryName = _("ICE BREAK"),
        .height = 14,
        .weight = 1506,
        .description = gWalreinPokedexText,
        .unusedDescription = gWalreinPokedexTextUnused,
        .pokemonScale = 305,
        .pokemonOffset = 2,
        .trainerScale = 277,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_CLAMPERL] =
    {
        .categoryName = _("BIVALVE"),
        .height = 4,
        .weight = 525,
        .description = gClamperlPokedexText,
        .unusedDescription = gClamperlPokedexTextUnused,
        .pokemonScale = 691,
        .pokemonOffset = 22,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_HUNTAIL] =
    {
        .categoryName = _("DEEP SEA"),
        .height = 17,
        .weight = 270,
        .description = gHuntailPokedexText,
        .unusedDescription = gHuntailPokedexTextUnused,
        .pokemonScale = 307,
        .pokemonOffset = 1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_GOREBYSS] =
    {
        .categoryName = _("SOUTH SEA"),
        .height = 18,
        .weight = 226,
        .description = gGorebyssPokedexText,
        .unusedDescription = gGorebyssPokedexTextUnused,
        .pokemonScale = 278,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_RELICANTH] =
    {
        .categoryName = _("LONGEVITY"),
        .height = 10,
        .weight = 234,
        .description = gRelicanthPokedexText,
        .unusedDescription = gRelicanthPokedexTextUnused,
        .pokemonScale = 316,
        .pokemonOffset = 5,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LUVDISC] =
    {
        .categoryName = _("RENDEZVOUS"),
        .height = 6,
        .weight = 87,
        .description = gLuvdiscPokedexText,
        .unusedDescription = gLuvdiscPokedexTextUnused,
        .pokemonScale = 371,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_BAGON] =
    {
        .categoryName = _("ROCK HEAD"),
        .height = 6,
        .weight = 421,
        .description = gBagonPokedexText,
        .unusedDescription = gBagonPokedexTextUnused,
        .pokemonScale = 448,
        .pokemonOffset = 17,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SHELGON] =
    {
        .categoryName = _("ENDURANCE"),
        .height = 11,
        .weight = 1105,
        .description = gShelgonPokedexText,
        .unusedDescription = gShelgonPokedexTextUnused,
        .pokemonScale = 311,
        .pokemonOffset = 10,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_SALAMENCE] =
    {
        .categoryName = _("DRAGON"),
        .height = 15,
        .weight = 1026,
        .description = gSalamencePokedexText,
        .unusedDescription = gSalamencePokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 2,
        .trainerScale = 307,
        .trainerOffset = 0,
    },

    [NATIONAL_DEX_BELDUM] =
    {
        .categoryName = _("IRON BALL"),
        .height = 6,
        .weight = 952,
        .description = gBeldumPokedexText,
        .unusedDescription = gBeldumPokedexTextUnused,
        .pokemonScale = 414,
        .pokemonOffset = -1,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_METANG] =
    {
        .categoryName = _("IRON CLAW"),
        .height = 12,
        .weight = 2025,
        .description = gMetangPokedexText,
        .unusedDescription = gMetangPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 3,
        .trainerScale = 272,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_METAGROSS] =
    {
        .categoryName = _("IRON LEG"),
        .height = 16,
        .weight = 5500,
        .description = gMetagrossPokedexText,
        .unusedDescription = gMetagrossPokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 3,
        .trainerScale = 461,
        .trainerOffset = 4,
    },

    [NATIONAL_DEX_REGIROCK] =
    {
        .categoryName = _("ROCK PEAK"),
        .height = 17,
        .weight = 2300,
        .description = gRegirockPokedexText,
        .unusedDescription = gRegirockPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 1,
        .trainerScale = 309,
        .trainerOffset = 1,
    },

    [NATIONAL_DEX_REGICE] =
    {
        .categoryName = _("ICEBERG"),
        .height = 18,
        .weight = 1750,
        .description = gRegicePokedexText,
        .unusedDescription = gRegicePokedexTextUnused,
        .pokemonScale = 265,
        .pokemonOffset = 0,
        .trainerScale = 317,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_REGISTEEL] =
    {
        .categoryName = _("IRON"),
        .height = 19,
        .weight = 2050,
        .description = gRegisteelPokedexText,
        .unusedDescription = gRegisteelPokedexTextUnused,
        .pokemonScale = 256,
        .pokemonOffset = 0,
        .trainerScale = 359,
        .trainerOffset = 6,
    },

    [NATIONAL_DEX_LATIAS] =
    {
        .categoryName = _("EON"),
        .height = 14,
        .weight = 400,
        .description = gLatiasPokedexText,
        .unusedDescription = gLatiasPokedexTextUnused,
        .pokemonScale = 291,
        .pokemonOffset = 2,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_LATIOS] =
    {
        .categoryName = _("EON"),
        .height = 20,
        .weight = 600,
        .description = gLatiosPokedexText,
        .unusedDescription = gLatiosPokedexTextUnused,
        .pokemonScale = 273,
        .pokemonOffset = 0,
        .trainerScale = 313,
        .trainerOffset = 3,
    },

    [NATIONAL_DEX_KYOGRE] =
    {
        .categoryName = _("SEA BASIN"),
        .height = 45,
        .weight = 3520,
        .description = gKyogrePokedexText,
        .unusedDescription = gKyogrePokedexTextUnused,
        .pokemonScale = 272,
        .pokemonOffset = 1,
        .trainerScale = 639,
        .trainerOffset = 13,
    },

    [NATIONAL_DEX_GROUDON] =
    {
        .categoryName = _("CONTINENT"),
        .height = 35,
        .weight = 9500,
        .description = gGroudonPokedexText,
        .unusedDescription = gGroudonPokedexTextUnused,
        .pokemonScale = 276,
        .pokemonOffset = 0,
        .trainerScale = 530,
        .trainerOffset = 12,
    },

    [NATIONAL_DEX_RAYQUAZA] =
    {
        .categoryName = _("SKY HIGH"),
        .height = 70,
        .weight = 2065,
        .description = gRayquazaPokedexText,
        .unusedDescription = gRayquazaPokedexTextUnused,
        .pokemonScale = 286,
        .pokemonOffset = -1,
        .trainerScale = 483,
        .trainerOffset = 9,
    },

    [NATIONAL_DEX_JIRACHI] =
    {
        .categoryName = _("WISH"),
        .height = 3,
        .weight = 11,
        .description = gJirachiPokedexText,
        .unusedDescription = gJirachiPokedexTextUnused,
        .pokemonScale = 608,
        .pokemonOffset = -8,
        .trainerScale = 256,
        .trainerOffset = -2,
    },

    [NATIONAL_DEX_DEOXYS] =
    {
        .categoryName = _("DNA"),
        .height = 17,
        .weight = 608,
        .description = gDeoxysPokedexText,
        .unusedDescription = gDeoxysPokedexTextUnused,
        .pokemonScale = 293,
        .pokemonOffset = 0,
        .trainerScale = 337,
        .trainerOffset = 2,
    },
    [NATIONAL_DEX_LITTEN] =
    {
        .categoryName = _("DNA"),
        .height = 15,
        .weight = 15,
        .description = gLittenPokedexText,
        .pokemonScale = 293,
        .pokemonOffset = 0,
        .trainerScale = 337,
        .trainerOffset = 2,

    }
};
# 205 "src/pokedex_screen.c" 2

static const struct BgTemplate sBgTemplates[] = {
    {
        .bg = 0,
        .charBaseIndex = 0,
        .mapBaseIndex = 5,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0x0000
    },
    {
        .bg = 1,
        .charBaseIndex = 2,
        .mapBaseIndex = 4,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0x0000
    },
    {
        .bg = 2,
        .charBaseIndex = 2,
        .mapBaseIndex = 6,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0x0000
    },
    {
        .bg = 3,
        .charBaseIndex = 0,
        .mapBaseIndex = 7,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 3,
        .baseTile = 0x0000
    },
};

static const struct WindowTemplate sWindowTemplates[] = {
    {
        .bg = 0,
        .tilemapLeft = 0,
        .tilemapTop = 0,
        .width = 30,
        .height = 2,
        .paletteNum = 15,
        .baseBlock = 0x03c4
    },
    {
        .bg = 0,
        .tilemapLeft = 0,
        .tilemapTop = 18,
        .width = 30,
        .height = 2,
        .paletteNum = 15,
        .baseBlock = 0x0388
    },
    {
        .bg = 255,
        .tilemapLeft = 0,
        .tilemapTop = 0,
        .width = 0,
        .height = 0,
        .paletteNum = 0,
        .baseBlock = 0x0000
    },
};

static const struct PokedexScreenData sDexScreenDataInitialState = {
    .modeSelectItemsAbove = 1,
    .modeSelectWindowId = -1,
    .selectionIconWindowId = -1,
    .dexCountsWindowId = -1,
    .pageSpecies = {-1, -1, -1, -1},
    .categoryMonWindowIds = {-1, -1, -1, -1},
    .categoryMonInfoWindowIds = {-1, -1, -1, -1},
    .numericalOrderWindowId = -1,
    .windowIds = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1},
    .scrollArrowsTaskId = -1,
    .categoryPageCursorTaskId = -1,
};


static const struct WindowTemplate sWindowTemplate_ModeSelect = {
    .bg = 1,
    .tilemapLeft = 1,
    .tilemapTop = 2,
    .width = 20,
    .height = 16,
    .paletteNum = 0,
    .baseBlock = 0x0008
};

static const struct WindowTemplate sWindowTemplate_SelectionIcon = {
    .bg = 1,
    .tilemapLeft = 21,
    .tilemapTop = 11,
    .width = 8,
    .height = 6,
    .paletteNum = 1,
    .baseBlock = 0x0148
};

static const struct WindowTemplate sWindowTemplate_DexCounts = {
    .bg = 1,
    .tilemapLeft = 21,
    .tilemapTop = 2,
    .width = 9,
    .height = 9,
    .paletteNum = 0,
    .baseBlock = 0x0178
};

static const struct ListMenuItem sListMenuItems_KantoDexModeSelect[] = {
    {gText_PokemonList, -3},
    {gText_NumericalMode, (9 + 0)},
    {gText_PokemonHabitats, -3},
    {gText_DexCategory_GrasslandPkmn, 0},
    {gText_DexCategory_ForestPkmn, 1},
    {gText_DexCategory_WatersEdgePkmn, 2},
    {gText_DexCategory_SeaPkmn, 3},
    {gText_DexCategory_CavePkmn, 4},
    {gText_DexCategory_MountainPkmn, 5},
    {gText_DexCategory_RoughTerrainPkmn, 6},
    {gText_DexCategory_UrbanPkmn, 7},
    {gText_DexCategory_RarePkmn, 8},
    {gText_Search, -3},
    {gText_AToZMode, (9 + 1)},
    {gText_TypeMode, (9 + 2)},
    {gText_LightestMode, (9 + 3)},
    {gText_SmallestMode, (9 + 4)},
    {gText_PokedexOther, -3},
    {gText_ClosePokedex, -2},
};

static const struct ListMenuTemplate sListMenuTemplate_KantoDexModeSelect = {
    .items = sListMenuItems_KantoDexModeSelect,
    .moveCursorFunc = MoveCursorFunc_DexModeSelect,
    .itemPrintFunc = ItemPrintFunc_DexModeSelect,
    .totalItems = (sizeof(sListMenuItems_KantoDexModeSelect) / sizeof((sListMenuItems_KantoDexModeSelect)[0])),
    .maxShowed = 9,
    .windowId = 0,
    .header_X = 0,
    .item_X = 12,
    .cursor_X = 4,
    .upText_Y = 2,
    .cursorPal = 1,
    .fillValue = 0,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = 0,
    .fontId = FONT_NORMAL,
    .cursorKind = 0,
};

static const struct ListMenuItem sListMenuItems_NatDexModeSelect[] = {
    {gText_PokemonList, -3},
    {gText_NumericalModeKanto, (9 + 0)},
    {gText_NumericalModeNational, (9 + 5)},
    {gText_PokemonHabitats, -3},
    {gText_DexCategory_GrasslandPkmn, 0},
    {gText_DexCategory_ForestPkmn, 1},
    {gText_DexCategory_WatersEdgePkmn, 2},
    {gText_DexCategory_SeaPkmn, 3},
    {gText_DexCategory_CavePkmn, 4},
    {gText_DexCategory_MountainPkmn, 5},
    {gText_DexCategory_RoughTerrainPkmn, 6},
    {gText_DexCategory_UrbanPkmn, 7},
    {gText_DexCategory_RarePkmn, 8},
    {gText_Search, -3},
    {gText_AToZMode, (9 + 1)},
    {gText_TypeMode, (9 + 2)},
    {gText_LightestMode, (9 + 3)},
    {gText_SmallestMode, (9 + 4)},
    {gText_PokedexOther, -3},
    {gText_ClosePokedex, -2},
};

static const struct ListMenuTemplate sListMenuTemplate_NatDexModeSelect = {
    .items = sListMenuItems_NatDexModeSelect,
    .moveCursorFunc = MoveCursorFunc_DexModeSelect,
    .itemPrintFunc = ItemPrintFunc_DexModeSelect,
    .totalItems = (sizeof(sListMenuItems_NatDexModeSelect) / sizeof((sListMenuItems_NatDexModeSelect)[0])),
    .maxShowed = 9,
    .windowId = 0,
    .header_X = 0,
    .item_X = 12,
    .cursor_X = 4,
    .upText_Y = 2,
    .cursorPal = 1,
    .fillValue = 0,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = 0,
    .fontId = FONT_NORMAL,
    .cursorKind = 0,
};

static const struct ScrollArrowsTemplate sScrollArrowsTemplate_KantoDex = {
    .firstArrowType = 2,
    .firstX = 200,
    .firstY = 19,
    .secondArrowType = 3,
    .secondX = 200,
    .secondY = 141,
    .fullyUpThreshold = 0,
    .fullyDownThreshold = 10,
    .tileTag = 2000,
    .palTag = 0xFFFF,
    .palNum = 1
};

static const struct ScrollArrowsTemplate sScrollArrowsTemplate_NatDex = {
    .firstArrowType = 2,
    .firstX = 200,
    .firstY = 19,
    .secondArrowType = 3,
    .secondX = 200,
    .secondY = 141,
    .fullyUpThreshold = 0,
    .fullyDownThreshold = 11,
    .tileTag = 2000,
    .palTag = 0xFFFF,
    .palNum = 1
};


static const struct PokedexScreenWindowGfx sTopMenuSelectionIconGfxPtrs[] = {
    [0] = {
        .tiles = sTopMenuIconTiles_Grassland,
        .pal = sTopMenuIconPals_Grassland
    },
    [1] = {
        .tiles = sTopMenuIconTiles_Forest,
        .pal = sTopMenuIconPals_Forest
    },
    [2] = {
        .tiles = sTopMenuIconTiles_WatersEdge,
        .pal = sTopMenuIconPals_WatersEdge
    },
    [3] = {
        .tiles = sTopMenuIconTiles_Sea,
        .pal = sTopMenuIconPals_Sea
    },
    [4] = {
        .tiles = sTopMenuIconTiles_Cave,
        .pal = sTopMenuIconPals_Cave
    },
    [5] = {
        .tiles = sTopMenuIconTiles_Mountain,
        .pal = sTopMenuIconPals_Mountain
    },
    [6] = {
        .tiles = sTopMenuIconTiles_RoughTerrain,
        .pal = sTopMenuIconPals_RoughTerrain
    },
    [7] = {
        .tiles = sTopMenuIconTiles_Urban,
        .pal = sTopMenuIconPals_Urban
    },
    [8] = {
        .tiles = sTopMenuIconTiles_Rare,
        .pal = sTopMenuIconPals_Rare
    },
    [(9 + 0)] = {
        .tiles = sTopMenuIconTiles_Numerical,
        .pal = sTopMenuIconPals_Numerical
    },
    [(9 + 1)] = {
        .tiles = gDexScreen_TopMenuIconTiles_AtoZ,
        .pal = gDexScreen_TopMenuIconPals_AtoZ
    },
    [(9 + 2)] = {
        .tiles = sTopMenuIconTiles_Type,
        .pal = sTopMenuIconPals_Type
    },
    [(9 + 3)] = {
        .tiles = sTopMenuIconTiles_Lightest,
        .pal = sTopMenuIconPals_Lightest
    },
    [(9 + 4)] = {
        .tiles = sTopMenuIconTiles_Smallest,
        .pal = sTopMenuIconPals_Smallest
    },
    [(9 + 5)] = {
        .tiles = sTopMenuIconTiles_Numerical,
        .pal = sTopMenuIconPals_Numerical
    },
};

static const struct WindowTemplate sWindowTemplate_OrderedListMenu = {
    .bg = 1,
    .tilemapLeft = 2,
    .tilemapTop = 2,
    .width = 23,
    .height = 16,
    .paletteNum = 0,
    .baseBlock = 0x0008
};

static const struct ListMenuTemplate sListMenuTemplate_OrderedListMenu = {
    .items = sListMenuItems_KantoDexModeSelect,
    .moveCursorFunc = ListMenuDefaultCursorMoveFunc,
    .itemPrintFunc = ItemPrintFunc_OrderedListMenu,
    .totalItems = 0,
    .maxShowed = 9,
    .windowId = 0,
    .header_X = 0,
    .item_X = 56,
    .cursor_X = 4,
    .upText_Y = 2,
    .cursorPal = 1,
    .fillValue = 0,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = 1,
    .fontId = FONT_NORMAL,
    .cursorKind = 0,
};

static const struct ListMenuWindowRect sListMenuRects_OrderedList[] = {
    {
        .x = 0,
        .y = 0,
        .width = 5,
        .height = 16,
        .palNum = 0
    }, {
        .x = 5,
        .y = 0,
        .width = 2,
        .height = 16,
        .palNum = 1
    }, {
        .x = 7,
        .y = 0,
        .width = 8,
        .height = 16,
        .palNum = 0
    }, {
        .x = 15,
        .y = 0,
        .width = 8,
        .height = 16,
        .palNum = 2,
    }, {
        .x = 0xFF,
        .y = 0xFF,
        .width = 0xFF,
        .height = 0xFF,
        .palNum = 0xFF
    }
};

static const struct ScrollArrowsTemplate sDexOrderScrollArrowsTemplate = {
    .firstArrowType = 2,
    .firstX = 200,
    .firstY = 19,
    .secondArrowType = 3,
    .secondX = 200,
    .secondY = 141,
    .fullyUpThreshold = 0,
    .fullyDownThreshold = 0,
    .tileTag = 2000,
    .palTag = 0xFFFF,
    .palNum = 1,
};

static const struct WindowTemplate sWindowTemplate_CategoryMonIcon = {
    .bg = 2,
    .tilemapLeft = 0,
    .tilemapTop = 0,
    .width = 8,
    .height = 8,
    .paletteNum = 0,
    .baseBlock = 0x0000
};

static const struct WindowTemplate sWindowTemplate_CategoryMonInfo = {
    .bg = 1,
    .tilemapLeft = 0,
    .tilemapTop = 0,
    .width = 8,
    .height = 5,
    .paletteNum = 0,
    .baseBlock = 0x0000
};

const struct WindowTemplate sWindowTemplate_DexEntry_MonPic = {
    .bg = 1,
    .tilemapLeft = 19,
    .tilemapTop = 3,
    .width = 8,
    .height = 8,
    .paletteNum = 9,
    .baseBlock = 0x01a8
};

const struct WindowTemplate sWindowTemplate_DexEntry_SpeciesStats = {
    .bg = 1,
    .tilemapLeft = 2,
    .tilemapTop = 3,
    .width = 13,
    .height = 8,
    .paletteNum = 0,
    .baseBlock = 0x01e8
};

const struct WindowTemplate sWindowTemplate_DexEntry_FlavorText = {
    .bg = 1,
    .tilemapLeft = 0,
    .tilemapTop = 11,
    .width = 30,
    .height = 7,
    .paletteNum = 0,
    .baseBlock = 0x0250
};

const struct WindowTemplate sWindowTemplate_AreaMap_MonIcon = {
    .bg = 2,
    .tilemapLeft = 1,
    .tilemapTop = 2,
    .width = 4,
    .height = 4,
    .paletteNum = 10,
    .baseBlock = 0x01a8
};

const struct WindowTemplate sWindowTemplate_AreaMap_SpeciesName = {
    .bg = 2,
    .tilemapLeft = 5,
    .tilemapTop = 2,
    .width = 8,
    .height = 3,
    .paletteNum = 0,
    .baseBlock = 0x01b8
};

const struct WindowTemplate sWindowTemplate_AreaMap_Size = {
    .bg = 2,
    .tilemapLeft = 2,
    .tilemapTop = 7,
    .width = 10,
    .height = 2,
    .paletteNum = 0,
    .baseBlock = 0x01d0
};

const struct WindowTemplate sWindowTemplate_AreaMap_Area = {
    .bg = 2,
    .tilemapLeft = 18,
    .tilemapTop = 2,
    .width = 10,
    .height = 2,
    .paletteNum = 0,
    .baseBlock = 0x01e4
};

const struct WindowTemplate sWindowTemplate_AreaMap_MonTypes = {
    .bg = 2,
    .tilemapLeft = 5,
    .tilemapTop = 5,
    .width = 8,
    .height = 2,
    .paletteNum = 11,
    .baseBlock = 0x01f8
};

const struct WindowTemplate sWindowTemplate_AreaMap_Kanto = {
    .bg = 2,
    .tilemapLeft = 17,
    .tilemapTop = 4,
    .width = 12,
    .height = 9,
    .paletteNum = 0,
    .baseBlock = 0x0208
};

static const struct WindowTemplate sWindowTemplate_AreaMap_OneIsland = {
    .bg = 2,
    .tilemapLeft = 13,
    .tilemapTop = 4,
    .width = 4,
    .height = 3,
    .paletteNum = 0,
    .baseBlock = 0x0274
};

static const struct WindowTemplate sWindowTemplate_AreaMap_TwoIsland = {
    .bg = 2,
    .tilemapLeft = 13,
    .tilemapTop = 7,
    .width = 4,
    .height = 3,
    .paletteNum = 0,
    .baseBlock = 0x0280
};

static const struct WindowTemplate sWindowTemplate_AreaMap_ThreeIsland = {
    .bg = 2,
    .tilemapLeft = 13,
    .tilemapTop = 10,
    .width = 4,
    .height = 3,
    .paletteNum = 0,
    .baseBlock = 0x028c
};

static const struct WindowTemplate sWindowTemplate_AreaMap_FourIsland = {
    .bg = 2,
    .tilemapLeft = 13,
    .tilemapTop = 13,
    .width = 4,
    .height = 4,
    .paletteNum = 0,
    .baseBlock = 0x0298
};

static const struct WindowTemplate sWindowTemplate_AreaMap_FiveIsland = {
    .bg = 2,
    .tilemapLeft = 17,
    .tilemapTop = 13,
    .width = 4,
    .height = 4,
    .paletteNum = 0,
    .baseBlock = 0x02a8
};

static const struct WindowTemplate sWindowTemplate_AreaMap_SixIsland = {
    .bg = 2,
    .tilemapLeft = 21,
    .tilemapTop = 13,
    .width = 4,
    .height = 4,
    .paletteNum = 0,
    .baseBlock = 0x02b8
};

static const struct WindowTemplate sWindowTemplate_AreaMap_SevenIsland = {
    .bg = 2,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = 4,
    .height = 4,
    .paletteNum = 0,
    .baseBlock = 0x02c8
};

struct {
    const struct WindowTemplate * window;
    const u32 * tiles;
} const sAreaMapStructs_SeviiIslands[] = {
    {&sWindowTemplate_AreaMap_OneIsland, sTilemap_AreaMap_OneIsland},
    {&sWindowTemplate_AreaMap_TwoIsland, sTilemap_AreaMap_TwoIsland},
    {&sWindowTemplate_AreaMap_ThreeIsland, sTilemap_AreaMap_ThreeIsland},
    {&sWindowTemplate_AreaMap_FourIsland, sTilemap_AreaMap_FourIsland},
    {&sWindowTemplate_AreaMap_FiveIsland, sTilemap_AreaMap_FiveIsland},
    {&sWindowTemplate_AreaMap_SixIsland, sTilemap_AreaMap_SixIsland},
    {&sWindowTemplate_AreaMap_SevenIsland, sTilemap_AreaMap_SevenIsland},
};

static const u16 sCategoryPageIconWindowBg[] = INCBIN_U16("graphics/pokedex/page_icon_tilemap.bin");


static const u8 sPageIconCoords_1Mon[1][4] = {
    {11, 3, 11, 11},
};

static const u8 sPageIconCoords_2Mons[2][4] = {
    { 3, 3, 11, 3},
    {18, 9, 10, 11},
};

static const u8 sPageIconCoords_3Mons[3][4] = {
    { 1, 2, 9, 2},
    {11, 9, 3, 11},
    {21, 3, 21, 11}
};

static const u8 sPageIconCoords_4Mons[4][4] = {
    { 0, 2, 6, 3},
    { 7, 10, 0, 12},
    {15, 10, 22, 11},
    {22, 2, 15, 4}
};

const u8 (*const sCategoryPageIconCoords[])[4] = {
    sPageIconCoords_1Mon,
    sPageIconCoords_2Mons,
    sPageIconCoords_3Mons,
    sPageIconCoords_4Mons,
};

static const u8 *const sDexCategoryNamePtrs[] = {
    gText_DexCategory_GrasslandPkmn,
    gText_DexCategory_ForestPkmn,
    gText_DexCategory_WatersEdgePkmn,
    gText_DexCategory_SeaPkmn,
    gText_DexCategory_CavePkmn,
    gText_DexCategory_MountainPkmn,
    gText_DexCategory_RoughTerrainPkmn,
    gText_DexCategory_UrbanPkmn,
    gText_DexCategory_RarePkmn,
};

const u16 sPalette_Silhouette[] = INCBIN_U16("graphics/pokedex/silhouette_sprite_pal.gbapal");

static const u8 sDexScreenPageTurnColumns[][30] = {
    {30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30},
    { 5, 11, 17, 23, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30},
    { 2, 5, 8, 11, 14, 17, 20, 23, 26, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30},
    { 2, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30},
    { 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20, 22, 23, 25, 26, 28, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30},
    { 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 19, 20, 21, 23, 24, 25, 27, 28, 29, 30, 30, 30, 30, 30, 30, 30},
    { 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 25, 26, 27, 28, 29, 30, 30, 30, 30},
    { 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 30, 30},
    { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30},
    { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29},
};

static const struct ScrollArrowsTemplate sScrollArrowsTemplate_CategoryMenu = {
    .firstArrowType = 0,
    .firstX = 16,
    .firstY = 80,
    .secondArrowType = 1,
    .secondX = 224,
    .secondY = 80,
    .fullyUpThreshold = 0,
    .fullyDownThreshold = 0,
    .tileTag = 2000,
    .palTag = 0xFFFF,
    .palNum = 1,
};

const struct CursorStruct sCursorStruct_CategoryPage = {
    .left = 0,
    .top = 160,
    .rowWidth = 64,
    .rowHeight = 40,
    .tileTag = 2002,
    .palTag = 0xFFFF,
    .palNum = 4,
};

# 1 "src/data/pokemon/pokedex_categories.h" 1
static const u16 sDexCategory_GrasslandPkmn_Page1[] = {
    19,
    20,
    161,
    162,
};

static const u16 sDexCategory_GrasslandPkmn_Page2[] = {
    288,
    289,
    286,
    287,
};

static const u16 sDexCategory_GrasslandPkmn_Page3[] = {
    29,
    30,
    31,
};

static const u16 sDexCategory_GrasslandPkmn_Page4[] = {
    32,
    33,
    34,
};

static const u16 sDexCategory_GrasslandPkmn_Page5[] = {
    84,
    85,
    304,
    305,
};

static const u16 sDexCategory_GrasslandPkmn_Page6[] = {
    114,
    363,
    191,
    192,
};

static const u16 sDexCategory_GrasslandPkmn_Page7[] = {
    187,
    188,
    189,
};

static const u16 sDexCategory_GrasslandPkmn_Page8[] = {
    43,
    44,
    45,
    182,
};

static const u16 sDexCategory_GrasslandPkmn_Page9[] = {
    23,
    24,
};

static const u16 sDexCategory_GrasslandPkmn_Page10[] = {
    174,
    39,
    40,
};

static const u16 sDexCategory_GrasslandPkmn_Page11[] = {
    179,
    180,
    181,
};

static const u16 sDexCategory_GrasslandPkmn_Page12[] = {
    83,
    108,
};

static const u16 sDexCategory_GrasslandPkmn_Page13[] = {
    123,
    212,
};

static const u16 sDexCategory_GrasslandPkmn_Page14[] = {
    96,
    97,
    367,
    368,
};

static const u16 sDexCategory_GrasslandPkmn_Page15[] = {
    115,
    203,
};

static const u16 sDexCategory_GrasslandPkmn_Page16[] = {
    128,
    241,
};

static const u16 sDexCategory_GrasslandPkmn_Page17[] = {
    37,
    38,
    77,
    78,
};

static const u16 sDexCategory_GrasslandPkmn_Page18[] = {
    239,
    125,
    337,
    338,
};

static const u16 sDexCategory_GrasslandPkmn_Page19[] = {
    380,
    379,
};

static const u16 sDexCategory_GrasslandPkmn_Page20[] = {
    353,
    354,
};

static const u16 sDexCategory_GrasslandPkmn_Page21[] = {
    58,
    59,
};

static const u16 sDexCategory_GrasslandPkmn_Page22[] = {
    385,
    411,
};

static const u16 sDexCategory_GrasslandPkmn_Page23[] = {
    1,
    2,
    3,
};

static const u16 sDexCategory_GrasslandPkmn_Page24[] = {
    152,
    153,
    154,
};

static const u16 sDexCategory_GrasslandPkmn_Page25[] = {
    155,
    156,
    157,
};

static const u16 sDexCategory_GrasslandPkmn_Page26[] = {
    280,
    281,
    282,
};

static const u16 sDexCategory_GrasslandPkmn_Page27[] = {
    243,
    244,
    245,
};

static const u16 sDexCategory_ForestPkmn_Page1[] = {
    10,
    11,
    12,
};

static const u16 sDexCategory_ForestPkmn_Page2[] = {
    13,
    14,
    15,
};

static const u16 sDexCategory_ForestPkmn_Page3[] = {
    290,
    291,
    292,
};

static const u16 sDexCategory_ForestPkmn_Page4[] = {
    293,
    294,
};

static const u16 sDexCategory_ForestPkmn_Page5[] = {
    16,
    17,
    18,
};

static const u16 sDexCategory_ForestPkmn_Page6[] = {
    163,
    164,
    177,
    178,
};

static const u16 sDexCategory_ForestPkmn_Page7[] = {
    172,
    25,
    26,
};

static const u16 sDexCategory_ForestPkmn_Page8[] = {
    69,
    70,
    71,
};

static const u16 sDexCategory_ForestPkmn_Page9[] = {
    46,
    47,
    306,
    307,
};

static const u16 sDexCategory_ForestPkmn_Page10[] = {
    298,
    299,
    300,
};

static const u16 sDexCategory_ForestPkmn_Page11[] = {
    48,
    49,
    193,
};

static const u16 sDexCategory_ForestPkmn_Page12[] = {
    165,
    166,
    167,
    168,
};

static const u16 sDexCategory_ForestPkmn_Page13[] = {
    301,
    302,
    303,
};

static const u16 sDexCategory_ForestPkmn_Page14[] = {
    386,
    387,
};

static const u16 sDexCategory_ForestPkmn_Page15[] = {
    204,
    205,
};

static const u16 sDexCategory_ForestPkmn_Page16[] = {
    364,
    365,
    366,
};

static const u16 sDexCategory_ForestPkmn_Page17[] = {
    315,
    316,
};

static const u16 sDexCategory_ForestPkmn_Page18[] = {
    198,
    215,
};

static const u16 sDexCategory_ForestPkmn_Page19[] = {
    102,
    103,
    185,
};

static const u16 sDexCategory_ForestPkmn_Page20[] = {
    190,
    234,
    317,
};

static const u16 sDexCategory_ForestPkmn_Page21[] = {
    127,
    214,
};

static const u16 sDexCategory_ForestPkmn_Page22[] = {
    358,
    359,
    369,
};

static const u16 sDexCategory_ForestPkmn_Page23[] = {
    361,
    362,
};

static const u16 sDexCategory_ForestPkmn_Page24[] = {
    175,
    176,
};

static const u16 sDexCategory_ForestPkmn_Page25[] = {
    277,
    278,
    279,
};

static const u16 sDexCategory_ForestPkmn_Page26[] = {
    251,
};

static const u16 sDexCategory_WatersEdgePkmn_Page1[] = {
    118,
    119,
};

static const u16 sDexCategory_WatersEdgePkmn_Page2[] = {
    129,
    130,
    98,
    99,
};

static const u16 sDexCategory_WatersEdgePkmn_Page3[] = {
    326,
    327,
    323,
    324,
};

static const u16 sDexCategory_WatersEdgePkmn_Page4[] = {
    295,
    296,
    297,
};

static const u16 sDexCategory_WatersEdgePkmn_Page5[] = {
    311,
    312,
};

static const u16 sDexCategory_WatersEdgePkmn_Page6[] = {
    54,
    55,
    194,
    195,
};

static const u16 sDexCategory_WatersEdgePkmn_Page7[] = {
    60,
    61,
    62,
    186,
};

static const u16 sDexCategory_WatersEdgePkmn_Page8[] = {
    350,
    183,
    184,
};

static const u16 sDexCategory_WatersEdgePkmn_Page9[] = {
    79,
    80,
    199,
};

static const u16 sDexCategory_WatersEdgePkmn_Page10[] = {
    328,
    329,
};

static const u16 sDexCategory_WatersEdgePkmn_Page11[] = {
    390,
    391,
};

static const u16 sDexCategory_WatersEdgePkmn_Page12[] = {
    147,
    148,
    149,
};

static const u16 sDexCategory_WatersEdgePkmn_Page13[] = {
    7,
    8,
    9,
};

static const u16 sDexCategory_WatersEdgePkmn_Page14[] = {
    158,
    159,
    160,
};

static const u16 sDexCategory_WatersEdgePkmn_Page15[] = {
    283,
    284,
    285,
};

static const u16 sDexCategory_WatersEdgePkmn_Page16[] = {
    407,
    408,
};

static const u16 sDexCategory_SeaPkmn_Page1[] = {
    72,
    73,
};

static const u16 sDexCategory_SeaPkmn_Page2[] = {
    309,
    310,
};

static const u16 sDexCategory_SeaPkmn_Page3[] = {
    120,
    121,
};

static const u16 sDexCategory_SeaPkmn_Page4[] = {
    170,
    171,
    223,
    224,
};

static const u16 sDexCategory_SeaPkmn_Page5[] = {
    90,
    91,
};

static const u16 sDexCategory_SeaPkmn_Page6[] = {
    373,
    374,
    375,
};

static const u16 sDexCategory_SeaPkmn_Page7[] = {
    211,
    222,
    226,
    325,
};

static const u16 sDexCategory_SeaPkmn_Page8[] = {
    86,
    87,
};

static const u16 sDexCategory_SeaPkmn_Page9[] = {
    341,
    342,
    343,
};

static const u16 sDexCategory_SeaPkmn_Page10[] = {
    330,
    331,
    313,
    314,
};

static const u16 sDexCategory_SeaPkmn_Page11[] = {
    116,
    117,
    230,
};

static const u16 sDexCategory_SeaPkmn_Page12[] = {
    381,
};

static const u16 sDexCategory_SeaPkmn_Page13[] = {
    131,
};

static const u16 sDexCategory_SeaPkmn_Page14[] = {
    138,
    139,
    140,
    141,
};

static const u16 sDexCategory_SeaPkmn_Page15[] = {
    388,
    389,
};

static const u16 sDexCategory_SeaPkmn_Page16[] = {
    404,
};

static const u16 sDexCategory_CavePkmn_Page1[] = {
    41,
    42,
    169,
};

static const u16 sDexCategory_CavePkmn_Page2[] = {
    50,
    51,
    95,
    208,
};

static const u16 sDexCategory_CavePkmn_Page3[] = {
    220,
    221,
    346,
    347,
};

static const u16 sDexCategory_CavePkmn_Page4[] = {
    370,
    371,
    372,
};

static const u16 sDexCategory_CavePkmn_Page5[] = {
    200,
    206,
    320,
};

static const u16 sDexCategory_CavePkmn_Page6[] = {
    322,
    355,
};

static const u16 sDexCategory_CavePkmn_Page7[] = {
    92,
    93,
    94,
};

static const u16 sDexCategory_CavePkmn_Page8[] = {
    360,
    202,
};

static const u16 sDexCategory_CavePkmn_Page9[] = {
    348,
    349,
};

static const u16 sDexCategory_CavePkmn_Page10[] = {
    401,
    402,
    403,
};

static const u16 sDexCategory_MountainPkmn_Page1[] = {
    74,
    75,
    76,
};

static const u16 sDexCategory_MountainPkmn_Page2[] = {
    56,
    57,
    351,
    352,
};

static const u16 sDexCategory_MountainPkmn_Page3[] = {
    66,
    67,
    68,
};

static const u16 sDexCategory_MountainPkmn_Page4[] = {
    173,
    35,
    36,
};

static const u16 sDexCategory_MountainPkmn_Page5[] = {
    104,
    105,
};

static const u16 sDexCategory_MountainPkmn_Page6[] = {
    218,
    219,
    339,
    340,
};

static const u16 sDexCategory_MountainPkmn_Page7[] = {
    335,
    336,
    356,
    357,
};

static const u16 sDexCategory_MountainPkmn_Page8[] = {
    213,
    216,
    217,
    225,
};

static const u16 sDexCategory_MountainPkmn_Page9[] = {
    207,
    308,
};

static const u16 sDexCategory_MountainPkmn_Page10[] = {
    240,
    126,
    321,
};

static const u16 sDexCategory_MountainPkmn_Page11[] = {
    382,
    383,
    384,
};

static const u16 sDexCategory_MountainPkmn_Page12[] = {
    246,
    247,
    248,
};

static const u16 sDexCategory_MountainPkmn_Page13[] = {
    143,
};

static const u16 sDexCategory_MountainPkmn_Page14[] = {
    376,
};

static const u16 sDexCategory_MountainPkmn_Page15[] = {
    142,
};

static const u16 sDexCategory_MountainPkmn_Page16[] = {
    4,
    5,
    6,
};

static const u16 sDexCategory_MountainPkmn_Page17[] = {
    409,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page1[] = {
    21,
    22,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page2[] = {
    27,
    28,
    111,
    112,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page3[] = {
    81,
    82,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page4[] = {
    228,
    229,
    231,
    232,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page5[] = {
    344,
    345,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page6[] = {
    332,
    333,
    334,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page7[] = {
    227,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page8[] = {
    318,
    319,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page9[] = {
    395,
    396,
    397,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page10[] = {
    398,
    399,
    400,
};

static const u16 sDexCategory_RoughTerrainPkmn_Page11[] = {
    405,
};

static const u16 sDexCategory_UrbanPkmn_Page1[] = {
    52,
    53,
    209,
    210,
};

static const u16 sDexCategory_UrbanPkmn_Page2[] = {
    88,
    89,
    109,
    110,
};

static const u16 sDexCategory_UrbanPkmn_Page3[] = {
    377,
    378,
};

static const u16 sDexCategory_UrbanPkmn_Page4[] = {
    63,
    64,
    65,
};

static const u16 sDexCategory_UrbanPkmn_Page5[] = {
    392,
    393,
    394,
};

static const u16 sDexCategory_UrbanPkmn_Page6[] = {
    238,
    124,
    122,
    235,
};

static const u16 sDexCategory_UrbanPkmn_Page7[] = {
    236,
    106,
    107,
    237,
};

static const u16 sDexCategory_UrbanPkmn_Page8[] = {
    113,
    242,
};

static const u16 sDexCategory_UrbanPkmn_Page9[] = {
    100,
    101,
    137,
    233,
};

static const u16 sDexCategory_UrbanPkmn_Page10[] = {
    132,
};

static const u16 sDexCategory_UrbanPkmn_Page11[] = {
    133,
    134,
    135,
    136,
};

static const u16 sDexCategory_UrbanPkmn_Page12[] = {
    196,
    197,
};

static const u16 sDexCategory_RarePkmn_Page1[] = {
    201,
};

static const u16 sDexCategory_RarePkmn_Page2[] = {
    144,
    145,
    146,
};

static const u16 sDexCategory_RarePkmn_Page3[] = {
    249,
};

static const u16 sDexCategory_RarePkmn_Page4[] = {
    250,
};

static const u16 sDexCategory_RarePkmn_Page5[] = {
    406,
};

static const u16 sDexCategory_RarePkmn_Page6[] = {
    410,
};

static const u16 sDexCategory_RarePkmn_Page7[] = {
    150,
};

static const u16 sDexCategory_RarePkmn_Page8[] = {
    151,
};



static const struct PokedexCategoryPage sDexCategory_GrasslandPkmn[] = {
    {sDexCategory_GrasslandPkmn_Page1, (sizeof(sDexCategory_GrasslandPkmn_Page1) / sizeof((sDexCategory_GrasslandPkmn_Page1)[0]))},
    {sDexCategory_GrasslandPkmn_Page2, (sizeof(sDexCategory_GrasslandPkmn_Page2) / sizeof((sDexCategory_GrasslandPkmn_Page2)[0]))},
    {sDexCategory_GrasslandPkmn_Page3, (sizeof(sDexCategory_GrasslandPkmn_Page3) / sizeof((sDexCategory_GrasslandPkmn_Page3)[0]))},
    {sDexCategory_GrasslandPkmn_Page4, (sizeof(sDexCategory_GrasslandPkmn_Page4) / sizeof((sDexCategory_GrasslandPkmn_Page4)[0]))},
    {sDexCategory_GrasslandPkmn_Page5, (sizeof(sDexCategory_GrasslandPkmn_Page5) / sizeof((sDexCategory_GrasslandPkmn_Page5)[0]))},
    {sDexCategory_GrasslandPkmn_Page6, (sizeof(sDexCategory_GrasslandPkmn_Page6) / sizeof((sDexCategory_GrasslandPkmn_Page6)[0]))},
    {sDexCategory_GrasslandPkmn_Page7, (sizeof(sDexCategory_GrasslandPkmn_Page7) / sizeof((sDexCategory_GrasslandPkmn_Page7)[0]))},
    {sDexCategory_GrasslandPkmn_Page8, (sizeof(sDexCategory_GrasslandPkmn_Page8) / sizeof((sDexCategory_GrasslandPkmn_Page8)[0]))},
    {sDexCategory_GrasslandPkmn_Page9, (sizeof(sDexCategory_GrasslandPkmn_Page9) / sizeof((sDexCategory_GrasslandPkmn_Page9)[0]))},
    {sDexCategory_GrasslandPkmn_Page10, (sizeof(sDexCategory_GrasslandPkmn_Page10) / sizeof((sDexCategory_GrasslandPkmn_Page10)[0]))},
    {sDexCategory_GrasslandPkmn_Page11, (sizeof(sDexCategory_GrasslandPkmn_Page11) / sizeof((sDexCategory_GrasslandPkmn_Page11)[0]))},
    {sDexCategory_GrasslandPkmn_Page12, (sizeof(sDexCategory_GrasslandPkmn_Page12) / sizeof((sDexCategory_GrasslandPkmn_Page12)[0]))},
    {sDexCategory_GrasslandPkmn_Page13, (sizeof(sDexCategory_GrasslandPkmn_Page13) / sizeof((sDexCategory_GrasslandPkmn_Page13)[0]))},
    {sDexCategory_GrasslandPkmn_Page14, (sizeof(sDexCategory_GrasslandPkmn_Page14) / sizeof((sDexCategory_GrasslandPkmn_Page14)[0]))},
    {sDexCategory_GrasslandPkmn_Page15, (sizeof(sDexCategory_GrasslandPkmn_Page15) / sizeof((sDexCategory_GrasslandPkmn_Page15)[0]))},
    {sDexCategory_GrasslandPkmn_Page16, (sizeof(sDexCategory_GrasslandPkmn_Page16) / sizeof((sDexCategory_GrasslandPkmn_Page16)[0]))},
    {sDexCategory_GrasslandPkmn_Page17, (sizeof(sDexCategory_GrasslandPkmn_Page17) / sizeof((sDexCategory_GrasslandPkmn_Page17)[0]))},
    {sDexCategory_GrasslandPkmn_Page18, (sizeof(sDexCategory_GrasslandPkmn_Page18) / sizeof((sDexCategory_GrasslandPkmn_Page18)[0]))},
    {sDexCategory_GrasslandPkmn_Page19, (sizeof(sDexCategory_GrasslandPkmn_Page19) / sizeof((sDexCategory_GrasslandPkmn_Page19)[0]))},
    {sDexCategory_GrasslandPkmn_Page20, (sizeof(sDexCategory_GrasslandPkmn_Page20) / sizeof((sDexCategory_GrasslandPkmn_Page20)[0]))},
    {sDexCategory_GrasslandPkmn_Page21, (sizeof(sDexCategory_GrasslandPkmn_Page21) / sizeof((sDexCategory_GrasslandPkmn_Page21)[0]))},
    {sDexCategory_GrasslandPkmn_Page22, (sizeof(sDexCategory_GrasslandPkmn_Page22) / sizeof((sDexCategory_GrasslandPkmn_Page22)[0]))},
    {sDexCategory_GrasslandPkmn_Page23, (sizeof(sDexCategory_GrasslandPkmn_Page23) / sizeof((sDexCategory_GrasslandPkmn_Page23)[0]))},
    {sDexCategory_GrasslandPkmn_Page24, (sizeof(sDexCategory_GrasslandPkmn_Page24) / sizeof((sDexCategory_GrasslandPkmn_Page24)[0]))},
    {sDexCategory_GrasslandPkmn_Page25, (sizeof(sDexCategory_GrasslandPkmn_Page25) / sizeof((sDexCategory_GrasslandPkmn_Page25)[0]))},
    {sDexCategory_GrasslandPkmn_Page26, (sizeof(sDexCategory_GrasslandPkmn_Page26) / sizeof((sDexCategory_GrasslandPkmn_Page26)[0]))},
    {sDexCategory_GrasslandPkmn_Page27, (sizeof(sDexCategory_GrasslandPkmn_Page27) / sizeof((sDexCategory_GrasslandPkmn_Page27)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_ForestPkmn[] = {
    {sDexCategory_ForestPkmn_Page1, (sizeof(sDexCategory_ForestPkmn_Page1) / sizeof((sDexCategory_ForestPkmn_Page1)[0]))},
    {sDexCategory_ForestPkmn_Page2, (sizeof(sDexCategory_ForestPkmn_Page2) / sizeof((sDexCategory_ForestPkmn_Page2)[0]))},
    {sDexCategory_ForestPkmn_Page3, (sizeof(sDexCategory_ForestPkmn_Page3) / sizeof((sDexCategory_ForestPkmn_Page3)[0]))},
    {sDexCategory_ForestPkmn_Page4, (sizeof(sDexCategory_ForestPkmn_Page4) / sizeof((sDexCategory_ForestPkmn_Page4)[0]))},
    {sDexCategory_ForestPkmn_Page5, (sizeof(sDexCategory_ForestPkmn_Page5) / sizeof((sDexCategory_ForestPkmn_Page5)[0]))},
    {sDexCategory_ForestPkmn_Page6, (sizeof(sDexCategory_ForestPkmn_Page6) / sizeof((sDexCategory_ForestPkmn_Page6)[0]))},
    {sDexCategory_ForestPkmn_Page7, (sizeof(sDexCategory_ForestPkmn_Page7) / sizeof((sDexCategory_ForestPkmn_Page7)[0]))},
    {sDexCategory_ForestPkmn_Page8, (sizeof(sDexCategory_ForestPkmn_Page8) / sizeof((sDexCategory_ForestPkmn_Page8)[0]))},
    {sDexCategory_ForestPkmn_Page9, (sizeof(sDexCategory_ForestPkmn_Page9) / sizeof((sDexCategory_ForestPkmn_Page9)[0]))},
    {sDexCategory_ForestPkmn_Page10, (sizeof(sDexCategory_ForestPkmn_Page10) / sizeof((sDexCategory_ForestPkmn_Page10)[0]))},
    {sDexCategory_ForestPkmn_Page11, (sizeof(sDexCategory_ForestPkmn_Page11) / sizeof((sDexCategory_ForestPkmn_Page11)[0]))},
    {sDexCategory_ForestPkmn_Page12, (sizeof(sDexCategory_ForestPkmn_Page12) / sizeof((sDexCategory_ForestPkmn_Page12)[0]))},
    {sDexCategory_ForestPkmn_Page13, (sizeof(sDexCategory_ForestPkmn_Page13) / sizeof((sDexCategory_ForestPkmn_Page13)[0]))},
    {sDexCategory_ForestPkmn_Page14, (sizeof(sDexCategory_ForestPkmn_Page14) / sizeof((sDexCategory_ForestPkmn_Page14)[0]))},
    {sDexCategory_ForestPkmn_Page15, (sizeof(sDexCategory_ForestPkmn_Page15) / sizeof((sDexCategory_ForestPkmn_Page15)[0]))},
    {sDexCategory_ForestPkmn_Page16, (sizeof(sDexCategory_ForestPkmn_Page16) / sizeof((sDexCategory_ForestPkmn_Page16)[0]))},
    {sDexCategory_ForestPkmn_Page17, (sizeof(sDexCategory_ForestPkmn_Page17) / sizeof((sDexCategory_ForestPkmn_Page17)[0]))},
    {sDexCategory_ForestPkmn_Page18, (sizeof(sDexCategory_ForestPkmn_Page18) / sizeof((sDexCategory_ForestPkmn_Page18)[0]))},
    {sDexCategory_ForestPkmn_Page19, (sizeof(sDexCategory_ForestPkmn_Page19) / sizeof((sDexCategory_ForestPkmn_Page19)[0]))},
    {sDexCategory_ForestPkmn_Page20, (sizeof(sDexCategory_ForestPkmn_Page20) / sizeof((sDexCategory_ForestPkmn_Page20)[0]))},
    {sDexCategory_ForestPkmn_Page21, (sizeof(sDexCategory_ForestPkmn_Page21) / sizeof((sDexCategory_ForestPkmn_Page21)[0]))},
    {sDexCategory_ForestPkmn_Page22, (sizeof(sDexCategory_ForestPkmn_Page22) / sizeof((sDexCategory_ForestPkmn_Page22)[0]))},
    {sDexCategory_ForestPkmn_Page23, (sizeof(sDexCategory_ForestPkmn_Page23) / sizeof((sDexCategory_ForestPkmn_Page23)[0]))},
    {sDexCategory_ForestPkmn_Page24, (sizeof(sDexCategory_ForestPkmn_Page24) / sizeof((sDexCategory_ForestPkmn_Page24)[0]))},
    {sDexCategory_ForestPkmn_Page25, (sizeof(sDexCategory_ForestPkmn_Page25) / sizeof((sDexCategory_ForestPkmn_Page25)[0]))},
    {sDexCategory_ForestPkmn_Page26, (sizeof(sDexCategory_ForestPkmn_Page26) / sizeof((sDexCategory_ForestPkmn_Page26)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_WatersEdgePkmn[] = {
    {sDexCategory_WatersEdgePkmn_Page1, (sizeof(sDexCategory_WatersEdgePkmn_Page1) / sizeof((sDexCategory_WatersEdgePkmn_Page1)[0]))},
    {sDexCategory_WatersEdgePkmn_Page2, (sizeof(sDexCategory_WatersEdgePkmn_Page2) / sizeof((sDexCategory_WatersEdgePkmn_Page2)[0]))},
    {sDexCategory_WatersEdgePkmn_Page3, (sizeof(sDexCategory_WatersEdgePkmn_Page3) / sizeof((sDexCategory_WatersEdgePkmn_Page3)[0]))},
    {sDexCategory_WatersEdgePkmn_Page4, (sizeof(sDexCategory_WatersEdgePkmn_Page4) / sizeof((sDexCategory_WatersEdgePkmn_Page4)[0]))},
    {sDexCategory_WatersEdgePkmn_Page5, (sizeof(sDexCategory_WatersEdgePkmn_Page5) / sizeof((sDexCategory_WatersEdgePkmn_Page5)[0]))},
    {sDexCategory_WatersEdgePkmn_Page6, (sizeof(sDexCategory_WatersEdgePkmn_Page6) / sizeof((sDexCategory_WatersEdgePkmn_Page6)[0]))},
    {sDexCategory_WatersEdgePkmn_Page7, (sizeof(sDexCategory_WatersEdgePkmn_Page7) / sizeof((sDexCategory_WatersEdgePkmn_Page7)[0]))},
    {sDexCategory_WatersEdgePkmn_Page8, (sizeof(sDexCategory_WatersEdgePkmn_Page8) / sizeof((sDexCategory_WatersEdgePkmn_Page8)[0]))},
    {sDexCategory_WatersEdgePkmn_Page9, (sizeof(sDexCategory_WatersEdgePkmn_Page9) / sizeof((sDexCategory_WatersEdgePkmn_Page9)[0]))},
    {sDexCategory_WatersEdgePkmn_Page10, (sizeof(sDexCategory_WatersEdgePkmn_Page10) / sizeof((sDexCategory_WatersEdgePkmn_Page10)[0]))},
    {sDexCategory_WatersEdgePkmn_Page11, (sizeof(sDexCategory_WatersEdgePkmn_Page11) / sizeof((sDexCategory_WatersEdgePkmn_Page11)[0]))},
    {sDexCategory_WatersEdgePkmn_Page12, (sizeof(sDexCategory_WatersEdgePkmn_Page12) / sizeof((sDexCategory_WatersEdgePkmn_Page12)[0]))},
    {sDexCategory_WatersEdgePkmn_Page13, (sizeof(sDexCategory_WatersEdgePkmn_Page13) / sizeof((sDexCategory_WatersEdgePkmn_Page13)[0]))},
    {sDexCategory_WatersEdgePkmn_Page14, (sizeof(sDexCategory_WatersEdgePkmn_Page14) / sizeof((sDexCategory_WatersEdgePkmn_Page14)[0]))},
    {sDexCategory_WatersEdgePkmn_Page15, (sizeof(sDexCategory_WatersEdgePkmn_Page15) / sizeof((sDexCategory_WatersEdgePkmn_Page15)[0]))},
    {sDexCategory_WatersEdgePkmn_Page16, (sizeof(sDexCategory_WatersEdgePkmn_Page16) / sizeof((sDexCategory_WatersEdgePkmn_Page16)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_SeaPkmn[] = {
    {sDexCategory_SeaPkmn_Page1, (sizeof(sDexCategory_SeaPkmn_Page1) / sizeof((sDexCategory_SeaPkmn_Page1)[0]))},
    {sDexCategory_SeaPkmn_Page2, (sizeof(sDexCategory_SeaPkmn_Page2) / sizeof((sDexCategory_SeaPkmn_Page2)[0]))},
    {sDexCategory_SeaPkmn_Page3, (sizeof(sDexCategory_SeaPkmn_Page3) / sizeof((sDexCategory_SeaPkmn_Page3)[0]))},
    {sDexCategory_SeaPkmn_Page4, (sizeof(sDexCategory_SeaPkmn_Page4) / sizeof((sDexCategory_SeaPkmn_Page4)[0]))},
    {sDexCategory_SeaPkmn_Page5, (sizeof(sDexCategory_SeaPkmn_Page5) / sizeof((sDexCategory_SeaPkmn_Page5)[0]))},
    {sDexCategory_SeaPkmn_Page6, (sizeof(sDexCategory_SeaPkmn_Page6) / sizeof((sDexCategory_SeaPkmn_Page6)[0]))},
    {sDexCategory_SeaPkmn_Page7, (sizeof(sDexCategory_SeaPkmn_Page7) / sizeof((sDexCategory_SeaPkmn_Page7)[0]))},
    {sDexCategory_SeaPkmn_Page8, (sizeof(sDexCategory_SeaPkmn_Page8) / sizeof((sDexCategory_SeaPkmn_Page8)[0]))},
    {sDexCategory_SeaPkmn_Page9, (sizeof(sDexCategory_SeaPkmn_Page9) / sizeof((sDexCategory_SeaPkmn_Page9)[0]))},
    {sDexCategory_SeaPkmn_Page10, (sizeof(sDexCategory_SeaPkmn_Page10) / sizeof((sDexCategory_SeaPkmn_Page10)[0]))},
    {sDexCategory_SeaPkmn_Page11, (sizeof(sDexCategory_SeaPkmn_Page11) / sizeof((sDexCategory_SeaPkmn_Page11)[0]))},
    {sDexCategory_SeaPkmn_Page12, (sizeof(sDexCategory_SeaPkmn_Page12) / sizeof((sDexCategory_SeaPkmn_Page12)[0]))},
    {sDexCategory_SeaPkmn_Page13, (sizeof(sDexCategory_SeaPkmn_Page13) / sizeof((sDexCategory_SeaPkmn_Page13)[0]))},
    {sDexCategory_SeaPkmn_Page14, (sizeof(sDexCategory_SeaPkmn_Page14) / sizeof((sDexCategory_SeaPkmn_Page14)[0]))},
    {sDexCategory_SeaPkmn_Page15, (sizeof(sDexCategory_SeaPkmn_Page15) / sizeof((sDexCategory_SeaPkmn_Page15)[0]))},
    {sDexCategory_SeaPkmn_Page16, (sizeof(sDexCategory_SeaPkmn_Page16) / sizeof((sDexCategory_SeaPkmn_Page16)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_CavePkmn[] = {
    {sDexCategory_CavePkmn_Page1, (sizeof(sDexCategory_CavePkmn_Page1) / sizeof((sDexCategory_CavePkmn_Page1)[0]))},
    {sDexCategory_CavePkmn_Page2, (sizeof(sDexCategory_CavePkmn_Page2) / sizeof((sDexCategory_CavePkmn_Page2)[0]))},
    {sDexCategory_CavePkmn_Page3, (sizeof(sDexCategory_CavePkmn_Page3) / sizeof((sDexCategory_CavePkmn_Page3)[0]))},
    {sDexCategory_CavePkmn_Page4, (sizeof(sDexCategory_CavePkmn_Page4) / sizeof((sDexCategory_CavePkmn_Page4)[0]))},
    {sDexCategory_CavePkmn_Page5, (sizeof(sDexCategory_CavePkmn_Page5) / sizeof((sDexCategory_CavePkmn_Page5)[0]))},
    {sDexCategory_CavePkmn_Page6, (sizeof(sDexCategory_CavePkmn_Page6) / sizeof((sDexCategory_CavePkmn_Page6)[0]))},
    {sDexCategory_CavePkmn_Page7, (sizeof(sDexCategory_CavePkmn_Page7) / sizeof((sDexCategory_CavePkmn_Page7)[0]))},
    {sDexCategory_CavePkmn_Page8, (sizeof(sDexCategory_CavePkmn_Page8) / sizeof((sDexCategory_CavePkmn_Page8)[0]))},
    {sDexCategory_CavePkmn_Page9, (sizeof(sDexCategory_CavePkmn_Page9) / sizeof((sDexCategory_CavePkmn_Page9)[0]))},
    {sDexCategory_CavePkmn_Page10, (sizeof(sDexCategory_CavePkmn_Page10) / sizeof((sDexCategory_CavePkmn_Page10)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_MountainPkmn[] = {
    {sDexCategory_MountainPkmn_Page1, (sizeof(sDexCategory_MountainPkmn_Page1) / sizeof((sDexCategory_MountainPkmn_Page1)[0]))},
    {sDexCategory_MountainPkmn_Page2, (sizeof(sDexCategory_MountainPkmn_Page2) / sizeof((sDexCategory_MountainPkmn_Page2)[0]))},
    {sDexCategory_MountainPkmn_Page3, (sizeof(sDexCategory_MountainPkmn_Page3) / sizeof((sDexCategory_MountainPkmn_Page3)[0]))},
    {sDexCategory_MountainPkmn_Page4, (sizeof(sDexCategory_MountainPkmn_Page4) / sizeof((sDexCategory_MountainPkmn_Page4)[0]))},
    {sDexCategory_MountainPkmn_Page5, (sizeof(sDexCategory_MountainPkmn_Page5) / sizeof((sDexCategory_MountainPkmn_Page5)[0]))},
    {sDexCategory_MountainPkmn_Page6, (sizeof(sDexCategory_MountainPkmn_Page6) / sizeof((sDexCategory_MountainPkmn_Page6)[0]))},
    {sDexCategory_MountainPkmn_Page7, (sizeof(sDexCategory_MountainPkmn_Page7) / sizeof((sDexCategory_MountainPkmn_Page7)[0]))},
    {sDexCategory_MountainPkmn_Page8, (sizeof(sDexCategory_MountainPkmn_Page8) / sizeof((sDexCategory_MountainPkmn_Page8)[0]))},
    {sDexCategory_MountainPkmn_Page9, (sizeof(sDexCategory_MountainPkmn_Page9) / sizeof((sDexCategory_MountainPkmn_Page9)[0]))},
    {sDexCategory_MountainPkmn_Page10, (sizeof(sDexCategory_MountainPkmn_Page10) / sizeof((sDexCategory_MountainPkmn_Page10)[0]))},
    {sDexCategory_MountainPkmn_Page11, (sizeof(sDexCategory_MountainPkmn_Page11) / sizeof((sDexCategory_MountainPkmn_Page11)[0]))},
    {sDexCategory_MountainPkmn_Page12, (sizeof(sDexCategory_MountainPkmn_Page12) / sizeof((sDexCategory_MountainPkmn_Page12)[0]))},
    {sDexCategory_MountainPkmn_Page13, (sizeof(sDexCategory_MountainPkmn_Page13) / sizeof((sDexCategory_MountainPkmn_Page13)[0]))},
    {sDexCategory_MountainPkmn_Page14, (sizeof(sDexCategory_MountainPkmn_Page14) / sizeof((sDexCategory_MountainPkmn_Page14)[0]))},
    {sDexCategory_MountainPkmn_Page15, (sizeof(sDexCategory_MountainPkmn_Page15) / sizeof((sDexCategory_MountainPkmn_Page15)[0]))},
    {sDexCategory_MountainPkmn_Page16, (sizeof(sDexCategory_MountainPkmn_Page16) / sizeof((sDexCategory_MountainPkmn_Page16)[0]))},
    {sDexCategory_MountainPkmn_Page17, (sizeof(sDexCategory_MountainPkmn_Page17) / sizeof((sDexCategory_MountainPkmn_Page17)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_RoughTerrainPkmn[] = {
    {sDexCategory_RoughTerrainPkmn_Page1, (sizeof(sDexCategory_RoughTerrainPkmn_Page1) / sizeof((sDexCategory_RoughTerrainPkmn_Page1)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page2, (sizeof(sDexCategory_RoughTerrainPkmn_Page2) / sizeof((sDexCategory_RoughTerrainPkmn_Page2)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page3, (sizeof(sDexCategory_RoughTerrainPkmn_Page3) / sizeof((sDexCategory_RoughTerrainPkmn_Page3)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page4, (sizeof(sDexCategory_RoughTerrainPkmn_Page4) / sizeof((sDexCategory_RoughTerrainPkmn_Page4)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page5, (sizeof(sDexCategory_RoughTerrainPkmn_Page5) / sizeof((sDexCategory_RoughTerrainPkmn_Page5)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page6, (sizeof(sDexCategory_RoughTerrainPkmn_Page6) / sizeof((sDexCategory_RoughTerrainPkmn_Page6)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page7, (sizeof(sDexCategory_RoughTerrainPkmn_Page7) / sizeof((sDexCategory_RoughTerrainPkmn_Page7)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page8, (sizeof(sDexCategory_RoughTerrainPkmn_Page8) / sizeof((sDexCategory_RoughTerrainPkmn_Page8)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page9, (sizeof(sDexCategory_RoughTerrainPkmn_Page9) / sizeof((sDexCategory_RoughTerrainPkmn_Page9)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page10, (sizeof(sDexCategory_RoughTerrainPkmn_Page10) / sizeof((sDexCategory_RoughTerrainPkmn_Page10)[0]))},
    {sDexCategory_RoughTerrainPkmn_Page11, (sizeof(sDexCategory_RoughTerrainPkmn_Page11) / sizeof((sDexCategory_RoughTerrainPkmn_Page11)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_UrbanPkmn[] = {
    {sDexCategory_UrbanPkmn_Page1, (sizeof(sDexCategory_UrbanPkmn_Page1) / sizeof((sDexCategory_UrbanPkmn_Page1)[0]))},
    {sDexCategory_UrbanPkmn_Page2, (sizeof(sDexCategory_UrbanPkmn_Page2) / sizeof((sDexCategory_UrbanPkmn_Page2)[0]))},
    {sDexCategory_UrbanPkmn_Page3, (sizeof(sDexCategory_UrbanPkmn_Page3) / sizeof((sDexCategory_UrbanPkmn_Page3)[0]))},
    {sDexCategory_UrbanPkmn_Page4, (sizeof(sDexCategory_UrbanPkmn_Page4) / sizeof((sDexCategory_UrbanPkmn_Page4)[0]))},
    {sDexCategory_UrbanPkmn_Page5, (sizeof(sDexCategory_UrbanPkmn_Page5) / sizeof((sDexCategory_UrbanPkmn_Page5)[0]))},
    {sDexCategory_UrbanPkmn_Page6, (sizeof(sDexCategory_UrbanPkmn_Page6) / sizeof((sDexCategory_UrbanPkmn_Page6)[0]))},
    {sDexCategory_UrbanPkmn_Page7, (sizeof(sDexCategory_UrbanPkmn_Page7) / sizeof((sDexCategory_UrbanPkmn_Page7)[0]))},
    {sDexCategory_UrbanPkmn_Page8, (sizeof(sDexCategory_UrbanPkmn_Page8) / sizeof((sDexCategory_UrbanPkmn_Page8)[0]))},
    {sDexCategory_UrbanPkmn_Page9, (sizeof(sDexCategory_UrbanPkmn_Page9) / sizeof((sDexCategory_UrbanPkmn_Page9)[0]))},
    {sDexCategory_UrbanPkmn_Page10, (sizeof(sDexCategory_UrbanPkmn_Page10) / sizeof((sDexCategory_UrbanPkmn_Page10)[0]))},
    {sDexCategory_UrbanPkmn_Page11, (sizeof(sDexCategory_UrbanPkmn_Page11) / sizeof((sDexCategory_UrbanPkmn_Page11)[0]))},
    {sDexCategory_UrbanPkmn_Page12, (sizeof(sDexCategory_UrbanPkmn_Page12) / sizeof((sDexCategory_UrbanPkmn_Page12)[0]))},
};

static const struct PokedexCategoryPage sDexCategory_RarePkmn[] = {
    {sDexCategory_RarePkmn_Page1, (sizeof(sDexCategory_RarePkmn_Page1) / sizeof((sDexCategory_RarePkmn_Page1)[0]))},
    {sDexCategory_RarePkmn_Page2, (sizeof(sDexCategory_RarePkmn_Page2) / sizeof((sDexCategory_RarePkmn_Page2)[0]))},
    {sDexCategory_RarePkmn_Page3, (sizeof(sDexCategory_RarePkmn_Page3) / sizeof((sDexCategory_RarePkmn_Page3)[0]))},
    {sDexCategory_RarePkmn_Page4, (sizeof(sDexCategory_RarePkmn_Page4) / sizeof((sDexCategory_RarePkmn_Page4)[0]))},
    {sDexCategory_RarePkmn_Page5, (sizeof(sDexCategory_RarePkmn_Page5) / sizeof((sDexCategory_RarePkmn_Page5)[0]))},
    {sDexCategory_RarePkmn_Page6, (sizeof(sDexCategory_RarePkmn_Page6) / sizeof((sDexCategory_RarePkmn_Page6)[0]))},
    {sDexCategory_RarePkmn_Page7, (sizeof(sDexCategory_RarePkmn_Page7) / sizeof((sDexCategory_RarePkmn_Page7)[0]))},
    {sDexCategory_RarePkmn_Page8, (sizeof(sDexCategory_RarePkmn_Page8) / sizeof((sDexCategory_RarePkmn_Page8)[0]))},
};

struct {
    const struct PokedexCategoryPage * page;
    u8 count;
} const gDexCategories[] = {
    {sDexCategory_GrasslandPkmn, (sizeof(sDexCategory_GrasslandPkmn) / sizeof((sDexCategory_GrasslandPkmn)[0]))},
    {sDexCategory_ForestPkmn, (sizeof(sDexCategory_ForestPkmn) / sizeof((sDexCategory_ForestPkmn)[0]))},
    {sDexCategory_WatersEdgePkmn, (sizeof(sDexCategory_WatersEdgePkmn) / sizeof((sDexCategory_WatersEdgePkmn)[0]))},
    {sDexCategory_SeaPkmn, (sizeof(sDexCategory_SeaPkmn) / sizeof((sDexCategory_SeaPkmn)[0]))},
    {sDexCategory_CavePkmn, (sizeof(sDexCategory_CavePkmn) / sizeof((sDexCategory_CavePkmn)[0]))},
    {sDexCategory_MountainPkmn, (sizeof(sDexCategory_MountainPkmn) / sizeof((sDexCategory_MountainPkmn)[0]))},
    {sDexCategory_RoughTerrainPkmn, (sizeof(sDexCategory_RoughTerrainPkmn) / sizeof((sDexCategory_RoughTerrainPkmn)[0]))},
    {sDexCategory_UrbanPkmn, (sizeof(sDexCategory_UrbanPkmn) / sizeof((sDexCategory_UrbanPkmn)[0]))},
    {sDexCategory_RarePkmn, (sizeof(sDexCategory_RarePkmn) / sizeof((sDexCategory_RarePkmn)[0]))},
};
# 855 "src/pokedex_screen.c" 2

void VBlankCB(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

void CB2_PokedexScreen(void)
{
    if (!gPaletteFade.active || IsDma3ManagerBusyWithBgCopy())
    {
        RunTasks();
        RunTextPrinters();
        AnimateSprites();
        BuildOamBuffer();
    }
    else
    {
        UpdatePaletteFade();
    }
}

void DexScreen_LoadResources(void)
{
    bool8 natDex;
    u8 taskId;

    natDex = IsNationalPokedexEnabled();
    m4aSoundVSyncOff();
    SetVBlankCallback(((void *)0));
    ResetPaletteFade();
    ResetSpriteData();
    ResetTasks();
    ScanlineEffect_Stop();
    ResetBgsAndClearDma3BusyFlags(1);
    InitBgsFromTemplates(0, sBgTemplates, (sizeof(sBgTemplates) / sizeof((sBgTemplates)[0])));
    SetBgTilemapBuffer(3, (u16 *)Alloc(0x800));
    SetBgTilemapBuffer(2, (u16 *)Alloc(0x800));
    SetBgTilemapBuffer(1, (u16 *)Alloc(0x800));
    SetBgTilemapBuffer(0, (u16 *)Alloc(0x800));
    if (natDex)
        DecompressAndLoadBgGfxUsingHeap(3, (void *)sNatDexTiles, 0x800, 0, 0);
    else
        DecompressAndLoadBgGfxUsingHeap(3, (void *)sKantoDexTiles, 0x800, 0, 0);
    InitWindows(sWindowTemplates);
    DeactivateAllTextPrinters();
    m4aSoundVSyncOn();
    SetVBlankCallback(VBlankCB);
    EnableInterrupts((1 << 0));
    taskId = CreateTask(Task_PokedexScreen, 0);
    sPokedexScreenData = Alloc(sizeof(struct PokedexScreenData));
    *sPokedexScreenData = sDexScreenDataInitialState;
    sPokedexScreenData->taskId = taskId;
    sPokedexScreenData->listItems = Alloc(NATIONAL_DEX_LITTEN * sizeof(struct ListMenuItem));
    sPokedexScreenData->numSeenNational = DexScreen_GetDexCount(FLAG_GET_SEEN, 1);
    sPokedexScreenData->numOwnedNational = DexScreen_GetDexCount(FLAG_GET_CAUGHT, 1);
    sPokedexScreenData->numSeenKanto = DexScreen_GetDexCount(FLAG_GET_SEEN, 0);
    sPokedexScreenData->numOwnedKanto = DexScreen_GetDexCount(FLAG_GET_CAUGHT, 0);
    SetBGMVolume_SuppressHelpSystemReduction(0x80);
    ChangeBgX(0, 0, 0);
    ChangeBgY(0, 0, 0);
    ChangeBgX(1, 0, 0);
    ChangeBgY(1, 0, 0);
    ChangeBgX(2, 0, 0);
    ChangeBgY(2, 0, 0);
    ChangeBgX(3, 0, 0);
    ChangeBgY(3, 0, 0);
    gPaletteFade.bufferTransferDisabled = 1;
    if (natDex)
        LoadPalette(sNationalDexPalette, (0x000 + ((0) * 16)), sizeof(sNationalDexPalette));
    else
        LoadPalette(sKantoDexPalette, (0x000 + ((0) * 16)), sizeof(sKantoDexPalette));
    FillBgTilemapBufferRect(3, 0x001, 0, 0, 32, 32, 0);
    FillBgTilemapBufferRect(2, 0x000, 0, 0, 32, 32, 17);
    FillBgTilemapBufferRect(1, 0x000, 0, 0, 32, 32, 17);
    FillBgTilemapBufferRect(0, 0x003, 0, 0, 32, 2, 15);
    FillBgTilemapBufferRect(0, 0x000, 0, 2, 32, 16, 17);
    FillBgTilemapBufferRect(0, 0x003, 0, 18, 32, 2, 15);
}

void CB2_OpenPokedexFromStartMenu(void)
{
    DexScreen_LoadResources();
    ClearGpuRegBits(0x0, 0x2000 | 0x4000);
    SetGpuReg(0x50, 0);
    SetGpuReg(0x52, 0);
    SetGpuReg(0x54, 0);
    SetMainCallback2(CB2_PokedexScreen);
    SetHelpContext(4);
}



bool8 DoClosePokedex(void)
{
    switch (gMain.state)
    {
    case 0:
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
        gMain.state++;
        return 0;
    case 1:
        if (!gPaletteFade.active)
            gMain.state = 2;
        else
            UpdatePaletteFade();
        return 0;
    case 2:
        ({ void *ptr = (sPokedexScreenData->listItems); if (ptr) Free(ptr); });
        ({ void *ptr = (sPokedexScreenData); if (ptr) Free(ptr); });
        FreeAllWindowBuffers();
        ({ void *ptr = (GetBgTilemapBuffer(0)); if (ptr) Free(ptr); });
        ({ void *ptr = (GetBgTilemapBuffer(1)); if (ptr) Free(ptr); });
        ({ void *ptr = (GetBgTilemapBuffer(2)); if (ptr) Free(ptr); });
        ({ void *ptr = (GetBgTilemapBuffer(3)); if (ptr) Free(ptr); });
        BGMVolumeMax_EnableHelpSystemReduction();
        break;
    }
    return 1;
}

void CB2_ClosePokedex(void)
{
    if (DoClosePokedex())
    {
        SetGpuRegBits(0x0, 0x2000 | 0x4000);
        SetMainCallback2(CB2_ReturnToFieldWithOpenMenu);
    }
}

static void Task_PokedexScreen(u8 taskId)
{
    int i;
    switch (sPokedexScreenData->state)
    {
    case 0:
        sPokedexScreenData->unlockedCategories = 0;
        for (i = 0; i < 9; i++)
            sPokedexScreenData->unlockedCategories |= (DexScreen_IsCategoryUnlocked(i) << i);
        sPokedexScreenData->state = 2;
        break;
    case 1:
        RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
        DexScreen_RemoveWindow(&sPokedexScreenData->modeSelectWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->selectionIconWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->dexCountsWindowId);
        SetMainCallback2(CB2_ClosePokedex);
        DestroyTask(taskId);
        break;
    case 2:
        DexScreen_InitGfxForTopMenu();
        sPokedexScreenData->state = 3;
        break;
    case 3:
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);
        sPokedexScreenData->state = 4;
        break;
    case 4:
        ShowBg(3);
        ShowBg(2);
        ShowBg(1);
        ShowBg(0);
        if (gPaletteFade.bufferTransferDisabled)
        {
            gPaletteFade.bufferTransferDisabled = 0;
            BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 0, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
        }
        else
            BeginNormalPaletteFade(~0x8000, 0, 16, 0, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
        sPokedexScreenData->state = 5;
        break;
    case 5:
        ListMenuGetScrollAndRow(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPosBak, ((void *)0));
        if (IsNationalPokedexEnabled())
            sPokedexScreenData->scrollArrowsTaskId = AddScrollIndicatorArrowPair(&sScrollArrowsTemplate_NatDex, &sPokedexScreenData->modeSelectCursorPosBak);
        else
            sPokedexScreenData->scrollArrowsTaskId = AddScrollIndicatorArrowPair(&sScrollArrowsTemplate_KantoDex, &sPokedexScreenData->modeSelectCursorPosBak);
        sPokedexScreenData->state = 6;
        break;
    case 6:
        sPokedexScreenData->modeSelectInput = ListMenu_ProcessInput(sPokedexScreenData->modeSelectListMenuId);
        ListMenuGetScrollAndRow(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPosBak, ((void *)0));
        if (({(gMain.newKeys) & (0x0001);}))
        {
            switch (sPokedexScreenData->modeSelectInput)
            {
            case -2:
                sPokedexScreenData->state = 1;
                break;
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                if (DexScreen_IsCategoryUnlocked(sPokedexScreenData->modeSelectInput))
                {
                    RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
                    sPokedexScreenData->category = sPokedexScreenData->modeSelectInput;
                    BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
                    sPokedexScreenData->state = 7;
                }
                break;
            case (9 + 0):
            case (9 + 5):
                RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
                sPokedexScreenData->dexOrderId = sPokedexScreenData->modeSelectInput - 9;
                BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
                sPokedexScreenData->state = 9;
                break;
            case (9 + 1):
            case (9 + 2):
            case (9 + 3):
            case (9 + 4):
                RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
                sPokedexScreenData->dexOrderId = sPokedexScreenData->modeSelectInput - 9;
                sPokedexScreenData->characteristicOrderMenuItemsAbove = sPokedexScreenData->characteristicOrderMenuCursorPos = 0;
                BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
                sPokedexScreenData->state = 8;
                break;
            }
            break;
        }
        if (({(gMain.newKeys) & (0x0002);}))
        {
            sPokedexScreenData->state = 1;
        }
        break;
    case 7:
        DestroyListMenuTask(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPos, &sPokedexScreenData->modeSelectItemsAbove);
        FillBgTilemapBufferRect_Palette0(1, 0, 0, 0, 32, 20);
        CopyBgTilemapBufferToVram(1);
        DexScreen_RemoveWindow(&sPokedexScreenData->modeSelectWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->selectionIconWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->dexCountsWindowId);
        sPokedexScreenData->pageNum = 0;
        sPokedexScreenData->categoryCursorPosInPage = 0;
        sPokedexScreenData->parentOfCategoryMenu = 0;
        gTasks[taskId].func = Task_DexScreen_CategorySubmenu;
        sPokedexScreenData->state = 0;
        break;
    case 8:
        DestroyListMenuTask(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPos, &sPokedexScreenData->modeSelectItemsAbove);
        HideBg(1);
        DexScreen_RemoveWindow(&sPokedexScreenData->modeSelectWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->selectionIconWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->dexCountsWindowId);
        gTasks[taskId].func = Task_DexScreen_CharacteristicOrder;
        sPokedexScreenData->state = 0;
        break;
    case 9:
        DestroyListMenuTask(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPos, &sPokedexScreenData->modeSelectItemsAbove);
        HideBg(1);
        DexScreen_RemoveWindow(&sPokedexScreenData->modeSelectWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->selectionIconWindowId);
        DexScreen_RemoveWindow(&sPokedexScreenData->dexCountsWindowId);
        gTasks[taskId].func = Task_DexScreen_NumericalOrder;
        sPokedexScreenData->state = 0;
        break;
    }
}

static void DexScreen_InitGfxForTopMenu(void)
{
    struct ListMenuTemplate listMenuTemplate;
    FillBgTilemapBufferRect(3, 0x00E, 0, 0, 30, 20, 0);
    FillBgTilemapBufferRect(2, 0x000, 0, 0, 30, 20, 17);
    FillBgTilemapBufferRect(1, 0x000, 0, 0, 30, 20, 17);
    sPokedexScreenData->modeSelectWindowId = AddWindow(&sWindowTemplate_ModeSelect);
    sPokedexScreenData->selectionIconWindowId = AddWindow(&sWindowTemplate_SelectionIcon);
    sPokedexScreenData->dexCountsWindowId = AddWindow(&sWindowTemplate_DexCounts);
    if (IsNationalPokedexEnabled())
    {
        listMenuTemplate = sListMenuTemplate_NatDexModeSelect;
        listMenuTemplate.windowId = sPokedexScreenData->modeSelectWindowId;
        sPokedexScreenData->modeSelectListMenuId = ListMenuInit(&listMenuTemplate, sPokedexScreenData->modeSelectCursorPos, sPokedexScreenData->modeSelectItemsAbove);
        FillWindowPixelBuffer(sPokedexScreenData->dexCountsWindowId, ((0) | ((0) << 4)));
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_SMALL, gText_Seen, 0, 2, 0);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_SMALL, gText_Kanto, 8, 13, 0);
        DexScreen_PrintNum3RightAlign(sPokedexScreenData->dexCountsWindowId, 0, sPokedexScreenData->numSeenKanto, 52, 13, 2);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_SMALL, gText_National, 8, 24, 0);
        DexScreen_PrintNum3RightAlign(sPokedexScreenData->dexCountsWindowId, 0, sPokedexScreenData->numSeenNational, 52, 24, 2);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_SMALL, gText_Owned, 0, 37, 0);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_SMALL, gText_Kanto, 8, 48, 0);
        DexScreen_PrintNum3RightAlign(sPokedexScreenData->dexCountsWindowId, 0, sPokedexScreenData->numOwnedKanto, 52, 48, 2);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_SMALL, gText_National, 8, 59, 0);
        DexScreen_PrintNum3RightAlign(sPokedexScreenData->dexCountsWindowId, 0, sPokedexScreenData->numOwnedNational, 52, 59, 2);
    }
    else
    {
        listMenuTemplate = sListMenuTemplate_KantoDexModeSelect;
        listMenuTemplate.windowId = sPokedexScreenData->modeSelectWindowId;
        sPokedexScreenData->modeSelectListMenuId = ListMenuInit(&listMenuTemplate, sPokedexScreenData->modeSelectCursorPos, sPokedexScreenData->modeSelectItemsAbove);
        FillWindowPixelBuffer(sPokedexScreenData->dexCountsWindowId, ((0) | ((0) << 4)));
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_NORMAL_COPY_1, gText_Seen, 0, 9, 0);
        DexScreen_PrintNum3RightAlign(sPokedexScreenData->dexCountsWindowId, 1, sPokedexScreenData->numSeenKanto, 32, 21, 2);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->dexCountsWindowId, FONT_NORMAL_COPY_1, gText_Owned, 0, 37, 0);
        DexScreen_PrintNum3RightAlign(sPokedexScreenData->dexCountsWindowId, 1, sPokedexScreenData->numOwnedKanto, 32, 49, 2);
    }
    FillWindowPixelBuffer(0, ((15) | ((15) << 4)));
    DexScreen_PrintStringWithAlignment(gText_PokedexTableOfContents, TEXT_CENTER);
    FillWindowPixelBuffer(1, ((15) | ((15) << 4)));
    DexScreen_PrintControlInfo(gText_PickOK);
    PutWindowTilemap(0);
    CopyWindowToVram(0, COPYWIN_GFX);
    PutWindowTilemap(1);
    CopyWindowToVram(1, COPYWIN_GFX);
    PutWindowTilemap(sPokedexScreenData->dexCountsWindowId);
    CopyWindowToVram(sPokedexScreenData->dexCountsWindowId, COPYWIN_GFX);
}

static void MoveCursorFunc_DexModeSelect(s32 itemIndex, bool8 onInit, struct ListMenu *list)
{
    if (!onInit)
        PlaySE(5);
    if (itemIndex == -2)
    {
        CopyToWindowPixelBuffer(sPokedexScreenData->selectionIconWindowId, sTopMenuSelectionIconTiles_Cancel, 0x000, 0x000);
        LoadPalette(sTopMenuSelectionIconPals_Cancel, (0x000 + ((1) * 16)), ((16) * sizeof(u16)));
    }
    else
    {
        CopyToWindowPixelBuffer(sPokedexScreenData->selectionIconWindowId, sTopMenuSelectionIconGfxPtrs[itemIndex].tiles, 0x000, 0x000);
        LoadPalette(sTopMenuSelectionIconGfxPtrs[itemIndex].pal, (0x000 + ((1) * 16)), ((16) * sizeof(u16)));
    }
    PutWindowTilemap(sPokedexScreenData->selectionIconWindowId);
    CopyWindowToVram(sPokedexScreenData->selectionIconWindowId, COPYWIN_GFX);
}

static void ItemPrintFunc_DexModeSelect(u8 windowId, u32 itemId, u8 y)
{
    if (itemId >= 9 || sPokedexScreenData->unlockedCategories & (1 << itemId))
        ListMenuOverrideSetColors(0x1, 0x0, 0x3);
    else
        ListMenuOverrideSetColors(0xA, 0x0, 0xB);
}

static void Task_DexScreen_NumericalOrder(u8 taskId)
{
    switch (sPokedexScreenData->state)
    {
    case 0:
        ListMenuLoadStdPalAt((0x000 + ((1) * 16)), 0);
        ListMenuLoadStdPalAt((0x000 + ((2) * 16)), 1);
        sPokedexScreenData->orderedDexCount = DexScreen_CountMonsInOrderedList(sPokedexScreenData->dexOrderId);
        sPokedexScreenData->state = 2;
        break;
    case 1:
        DexScreen_DestroyDexOrderListMenu(sPokedexScreenData->dexOrderId);
        HideBg(1);
        DexScreen_RemoveWindow(&sPokedexScreenData->numericalOrderWindowId);
        gTasks[taskId].func = Task_PokedexScreen;
        sPokedexScreenData->state = 0;
        break;
    case 2:
        DexScreen_InitGfxForNumericalOrderList();
        sPokedexScreenData->state = 3;
        break;
    case 3:
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(1);
        sPokedexScreenData->state = 4;
        break;
    case 4:
        ShowBg(1);
        BeginNormalPaletteFade(~0x8000, 0, 16, 0, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
        sPokedexScreenData->state = 5;
        break;
    case 5:
        ListMenuGetScrollAndRow(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPosBak, ((void *)0));
        sPokedexScreenData->scrollArrowsTaskId = DexScreen_CreateDexOrderScrollArrows();
        sPokedexScreenData->state = 6;
        break;
    case 6:
        sPokedexScreenData->characteristicMenuInput = ListMenu_ProcessInput(sPokedexScreenData->orderedListMenuTaskId);
        ListMenuGetScrollAndRow(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPosBak, ((void *)0));
        if (({(gMain.newKeys) & (0x0001);}))
        {
            if ((sPokedexScreenData->characteristicMenuInput >> 16) & 1)
            {
                sPokedexScreenData->dexSpecies = sPokedexScreenData->characteristicMenuInput;
                RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
                BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
                sPokedexScreenData->state = 7;
            }
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
            BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
            sPokedexScreenData->state = 1;
        }
        break;
    case 7:
        DexScreen_DestroyDexOrderListMenu(sPokedexScreenData->dexOrderId);
        FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 0, 32, 20);
        CopyBgTilemapBufferToVram(1);
        DexScreen_RemoveWindow(&sPokedexScreenData->numericalOrderWindowId);
        gTasks[taskId].func = Task_DexScreen_ShowMonPage;
        sPokedexScreenData->state = 0;
        break;
    }
}

static void DexScreen_InitGfxForNumericalOrderList(void)
{
    struct ListMenuTemplate template;
    FillBgTilemapBufferRect(3, 0x00E, 0, 0, 30, 20, 0);
    FillBgTilemapBufferRect(1, 0x000, 0, 0, 32, 32, 17);
    sPokedexScreenData->numericalOrderWindowId = AddWindow(&sWindowTemplate_OrderedListMenu);
    template = sListMenuTemplate_OrderedListMenu;
    template.items = sPokedexScreenData->listItems;
    template.windowId = sPokedexScreenData->numericalOrderWindowId;
    template.totalItems = sPokedexScreenData->orderedDexCount;
    DexScreen_InitListMenuForOrderedList(&template, sPokedexScreenData->dexOrderId);
    FillWindowPixelBuffer(0, ((15) | ((15) << 4)));
    DexScreen_PrintStringWithAlignment(gText_PokemonListNoColor, TEXT_CENTER);
    FillWindowPixelBuffer(1, ((15) | ((15) << 4)));
    DexScreen_PrintControlInfo(gText_PickOKExit);
    CopyWindowToVram(0, COPYWIN_GFX);
    CopyWindowToVram(1, COPYWIN_GFX);
}

static void Task_DexScreen_CharacteristicOrder(u8 taskId)
{
    switch (sPokedexScreenData->state)
    {
    case 0:
        ListMenuLoadStdPalAt((0x000 + ((1) * 16)), 0);
        ListMenuLoadStdPalAt((0x000 + ((2) * 16)), 1);
        sPokedexScreenData->orderedDexCount = DexScreen_CountMonsInOrderedList(sPokedexScreenData->dexOrderId);
        sPokedexScreenData->state = 2;
        break;
    case 1:
        DexScreen_DestroyDexOrderListMenu(sPokedexScreenData->dexOrderId);
        HideBg(1);
        DexScreen_RemoveWindow(&sPokedexScreenData->numericalOrderWindowId);
        gTasks[taskId].func = Task_PokedexScreen;
        sPokedexScreenData->state = 0;
        break;
    case 2:
        DexScreen_CreateCharacteristicListMenu();
        sPokedexScreenData->state = 3;
        break;
    case 3:
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(1);
        sPokedexScreenData->state = 4;
        break;
    case 4:
        ShowBg(1);
        BeginNormalPaletteFade(~0x8000, 0, 16, 0, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
        sPokedexScreenData->state = 5;
        break;
    case 5:
        ListMenuGetScrollAndRow(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPosBak, ((void *)0));
        sPokedexScreenData->scrollArrowsTaskId = DexScreen_CreateDexOrderScrollArrows();
        sPokedexScreenData->state = 6;
        break;
    case 6:
        sPokedexScreenData->characteristicMenuInput = ListMenu_ProcessInput(sPokedexScreenData->orderedListMenuTaskId);
        ListMenuGetScrollAndRow(sPokedexScreenData->modeSelectListMenuId, &sPokedexScreenData->modeSelectCursorPosBak, ((void *)0));
        if (({(gMain.newKeys) & (0x0001);}))
        {
            if (((sPokedexScreenData->characteristicMenuInput >> 16) & 1) && !DexScreen_LookUpCategoryBySpecies(sPokedexScreenData->characteristicMenuInput))
            {
                RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
                BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
                sPokedexScreenData->state = 7;
            }
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
            BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
            sPokedexScreenData->state = 1;
        }
        break;
    case 7:
        DexScreen_DestroyDexOrderListMenu(sPokedexScreenData->dexOrderId);
        FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 0, 32, 20);
        CopyBgTilemapBufferToVram(1);
        DexScreen_RemoveWindow(&sPokedexScreenData->numericalOrderWindowId);
        sPokedexScreenData->parentOfCategoryMenu = 1;
        gTasks[taskId].func = Task_DexScreen_CategorySubmenu;
        sPokedexScreenData->state = 0;
        break;
    }
}

static void DexScreen_CreateCharacteristicListMenu(void)
{
    struct ListMenuTemplate template;
    FillBgTilemapBufferRect(3, 0x00E, 0, 0, 30, 20, 0);
    FillBgTilemapBufferRect(1, 0x000, 0, 0, 32, 32, 17);
    sPokedexScreenData->numericalOrderWindowId = AddWindow(&sWindowTemplate_OrderedListMenu);
    template = sListMenuTemplate_OrderedListMenu;
    template.items = sPokedexScreenData->listItems;
    template.windowId = sPokedexScreenData->numericalOrderWindowId;
    template.totalItems = sPokedexScreenData->orderedDexCount;
    DexScreen_InitListMenuForOrderedList(&template, sPokedexScreenData->dexOrderId);
    FillWindowPixelBuffer(0, ((15) | ((15) << 4)));
    DexScreen_PrintStringWithAlignment(gText_SearchNoColor, TEXT_CENTER);
    FillWindowPixelBuffer(1, ((15) | ((15) << 4)));
    DexScreen_PrintControlInfo(gText_PickOKExit);
    CopyWindowToVram(0, COPYWIN_GFX);
    CopyWindowToVram(1, COPYWIN_GFX);
}

static u16 DexScreen_CountMonsInOrderedList(u8 orderIdx)
{
    s32 max_n = IsNationalPokedexEnabled() ? NATIONAL_DEX_LITTEN : NATIONAL_DEX_MEW;
    u16 ndex_num;
    u16 ret = NATIONAL_DEX_NONE;
    s32 i;
    bool8 caught;
    bool8 seen;

    switch (orderIdx)
    {
    default:
    case 0:
        for (i = 0; i < NATIONAL_DEX_MEW; i++)
        {
            ndex_num = i + 1;
            seen = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_SEEN, 0);
            caught = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_CAUGHT, 0);
            if (seen)
            {
                sPokedexScreenData->listItems[i].label = gSpeciesNames[NationalPokedexNumToSpecies(ndex_num)];
                ret = ndex_num;
            }
            else
            {
                sPokedexScreenData->listItems[i].label = gText_5Dashes;
            }
            sPokedexScreenData->listItems[i].index = (caught << 17) + (seen << 16) + NationalPokedexNumToSpecies(ndex_num);
        }
        break;
    case 1:
        for (i = 0; i < 413 - 1; i++)
        {
            ndex_num = gPokedexOrder_Alphabetical[i];
            if (ndex_num <= max_n)
            {
                seen = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_SEEN, 0);
                caught = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_CAUGHT, 0);
                if (seen)
                {
                    sPokedexScreenData->listItems[ret].label = gSpeciesNames[NationalPokedexNumToSpecies(ndex_num)];
                    sPokedexScreenData->listItems[ret].index = (caught << 17) + (seen << 16) + NationalPokedexNumToSpecies(ndex_num);
                    ret++;
                }
            }
        }
        break;
    case 2:
        for (i = 0; i < 413 - 1; i++)
        {
            ndex_num = SpeciesToNationalPokedexNum(gPokedexOrder_Type[i]);
            if (ndex_num <= max_n)
            {
                seen = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_SEEN, 0);
                caught = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_CAUGHT, 0);
                if (caught)
                {
                    sPokedexScreenData->listItems[ret].label = gSpeciesNames[NationalPokedexNumToSpecies(ndex_num)];
                    sPokedexScreenData->listItems[ret].index = (caught << 17) + (seen << 16) + NationalPokedexNumToSpecies(ndex_num);
                    ret++;
                }
            }
        }
        break;
    case 3:
        for (i = 0; i < NATIONAL_DEX_LITTEN; i++)
        {
            ndex_num = gPokedexOrder_Weight[i];
            if (ndex_num <= max_n)
            {
                seen = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_SEEN, 0);
                caught = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_CAUGHT, 0);
                if (caught)
                {
                    sPokedexScreenData->listItems[ret].label = gSpeciesNames[NationalPokedexNumToSpecies(ndex_num)];
                    sPokedexScreenData->listItems[ret].index = (caught << 17) + (seen << 16) + NationalPokedexNumToSpecies(ndex_num);
                    ret++;
                }
            }
        }
        break;
    case 4:
        for (i = 0; i < NATIONAL_DEX_LITTEN; i++)
        {
            ndex_num = gPokedexOrder_Height[i];
            if (ndex_num <= max_n)
            {
                seen = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_SEEN, 0);
                caught = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_CAUGHT, 0);
                if (caught)
                {
                    sPokedexScreenData->listItems[ret].label = gSpeciesNames[NationalPokedexNumToSpecies(ndex_num)];
                    sPokedexScreenData->listItems[ret].index = (caught << 17) + (seen << 16) + NationalPokedexNumToSpecies(ndex_num);
                    ret++;
                }
            }
        }
        break;
    case 5:
        for (i = 0; i < NATIONAL_DEX_LITTEN; i++)
        {
            ndex_num = i + 1;
            seen = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_SEEN, 0);
            caught = DexScreen_GetSetPokedexFlag(ndex_num, FLAG_GET_CAUGHT, 0);
            if (seen)
            {
                sPokedexScreenData->listItems[i].label = gSpeciesNames[NationalPokedexNumToSpecies(ndex_num)];
                ret = ndex_num;
            }
            else
            {
                sPokedexScreenData->listItems[i].label = gText_5Dashes;
            }
            sPokedexScreenData->listItems[i].index = (caught << 17) + (seen << 16) + NationalPokedexNumToSpecies(ndex_num);
        }
        break;
    }
    return ret;
}

static void DexScreen_InitListMenuForOrderedList(const struct ListMenuTemplate * template, u8 order)
{
    switch (order)
    {
    default:
    case 0:
        sPokedexScreenData->orderedListMenuTaskId = ListMenuInitInRect(template, sListMenuRects_OrderedList, sPokedexScreenData->kantoOrderMenuCursorPos, sPokedexScreenData->kantoOrderMenuItemsAbove);
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        sPokedexScreenData->orderedListMenuTaskId = ListMenuInitInRect(template, sListMenuRects_OrderedList, sPokedexScreenData->characteristicOrderMenuCursorPos, sPokedexScreenData->characteristicOrderMenuItemsAbove);
        break;
    case 5:
        sPokedexScreenData->orderedListMenuTaskId = ListMenuInitInRect(template, sListMenuRects_OrderedList, sPokedexScreenData->nationalOrderMenuCursorPos, sPokedexScreenData->nationalOrderMenuItemsAbove);
        break;
    }
}

static void DexScreen_DestroyDexOrderListMenu(u8 order)
{
    switch (order)
    {
    default:
    case 0:
        DestroyListMenuTask(sPokedexScreenData->orderedListMenuTaskId, &sPokedexScreenData->kantoOrderMenuCursorPos, &sPokedexScreenData->kantoOrderMenuItemsAbove);
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        DestroyListMenuTask(sPokedexScreenData->orderedListMenuTaskId, &sPokedexScreenData->characteristicOrderMenuCursorPos, &sPokedexScreenData->characteristicOrderMenuItemsAbove);
        break;
    case 5:
        DestroyListMenuTask(sPokedexScreenData->orderedListMenuTaskId, &sPokedexScreenData->nationalOrderMenuCursorPos, &sPokedexScreenData->nationalOrderMenuItemsAbove);
        break;
    }
}

static u8 DexScreen_CreateDexOrderScrollArrows(void)
{
    struct ScrollArrowsTemplate template = sDexOrderScrollArrowsTemplate;
    if (sPokedexScreenData->orderedDexCount > sListMenuTemplate_OrderedListMenu.maxShowed)
        template.fullyDownThreshold = sPokedexScreenData->orderedDexCount - sListMenuTemplate_OrderedListMenu.maxShowed;
    else
        template.fullyDownThreshold = 0;
    return AddScrollIndicatorArrowPair(&template, &sPokedexScreenData->modeSelectCursorPosBak);
}

struct PokedexListItem
{
    u16 species;
    bool8 seen:1;
    bool8 caught:1;
};

static void ItemPrintFunc_OrderedListMenu(u8 windowId, u32 itemId, u8 y)
{
    u16 species = itemId;
    bool8 seen = (itemId >> 16) & 1;
    bool8 caught = (itemId >> 17) & 1;
    u8 type1;
    DexScreen_PrintMonDexNo(sPokedexScreenData->numericalOrderWindowId, FONT_SMALL, species, 12, y);
    if (caught)
    {
        BlitMenuInfoIcon(sPokedexScreenData->numericalOrderWindowId, 0, 0x28, y);
        type1 = gSpeciesInfo[species].types[0];
        BlitMenuInfoIcon(sPokedexScreenData->numericalOrderWindowId, type1 + 1, 0x78, y);
        if (type1 != gSpeciesInfo[species].types[1])
            BlitMenuInfoIcon(sPokedexScreenData->numericalOrderWindowId, gSpeciesInfo[species].types[1] + 1, 0x98, y);
    }
}

static void Task_DexScreen_CategorySubmenu(u8 taskId)
{
    int pageFlipCmd;
    u8 *ptr;
    switch (sPokedexScreenData->state)
    {
    case 0:
        HideBg(3);
        HideBg(2);
        HideBg(1);
        DexScreen_GetPageLimitsForCategory(sPokedexScreenData->category);
        if (sPokedexScreenData->pageNum < sPokedexScreenData->firstPageInCategory)
            sPokedexScreenData->pageNum = sPokedexScreenData->firstPageInCategory;
        sPokedexScreenData->state = 2;
        break;
    case 1:
        DexScreen_DestroyCategoryPageMonIconAndInfoWindows();
        HideBg(2);
        HideBg(1);
        switch (sPokedexScreenData->parentOfCategoryMenu)
        {
        case 0:
        default:
            gTasks[taskId].func = Task_PokedexScreen;
            break;
        case 1:
            gTasks[taskId].func = Task_DexScreen_CharacteristicOrder;
            break;
        }
        sPokedexScreenData->state = 0;
        break;
    case 2:
        DexScreen_CreateCategoryListGfx(0);
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        DexScreen_CreateCategoryPageSelectionCursor(0xFF);
        sPokedexScreenData->state = 3;
        break;
    case 3:
        BeginNormalPaletteFade(~0x8000, 0, 16, 0, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
        ShowBg(3);
        ShowBg(2);
        ShowBg(1);
        sPokedexScreenData->state = 4;
        break;
    case 4:
        sPokedexScreenData->scrollArrowsTaskId = DexScreen_CreateCategoryMenuScrollArrows();
        sPokedexScreenData->categoryPageCursorTaskId = ListMenuAddCursorObjectInternal(&sCursorStruct_CategoryPage, 0);
        sPokedexScreenData->state = 5;
        break;
    case 5:
        DexScreen_CreateCategoryPageSelectionCursor(sPokedexScreenData->categoryCursorPosInPage);
        DexScreen_UpdateCategoryPageCursorObject(sPokedexScreenData->categoryPageCursorTaskId, sPokedexScreenData->categoryCursorPosInPage, sPokedexScreenData->numMonsOnPage);
        sPokedexScreenData->modeSelectCursorPosBak = sPokedexScreenData->pageNum;
        pageFlipCmd = 0;
        if (({(gMain.newKeys) & (0x0001);}) && DexScreen_GetSetPokedexFlag(sPokedexScreenData->pageSpecies[sPokedexScreenData->categoryCursorPosInPage], FLAG_GET_SEEN, 1))
        {
            RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
            ListMenuRemoveCursorObject(sPokedexScreenData->categoryPageCursorTaskId, 0);
            sPokedexScreenData->state = 12;
            break;
        }
        if (!({(gMain.heldKeys) & (0x0100);}) && ({(gMain.newAndRepeatedKeys) & (0x0020);}))
        {
            if (sPokedexScreenData->categoryCursorPosInPage != 0)
            {
                sPokedexScreenData->categoryCursorPosInPage--;
                PlaySE(5);
                break;
            }
            else
                pageFlipCmd = 1;
        }
        if (!({(gMain.heldKeys) & (0x0100);}) && ({(gMain.newAndRepeatedKeys) & (0x0010);}))
        {
            if (sPokedexScreenData->categoryCursorPosInPage < sPokedexScreenData->numMonsOnPage - 1)
            {
                sPokedexScreenData->categoryCursorPosInPage++;
                PlaySE(5);
                break;
            }
            else
                pageFlipCmd = 2;
        }
        if (pageFlipCmd == 0)
            pageFlipCmd = DexScreen_InputHandler_GetShoulderInput();
        switch (pageFlipCmd)
        {
        case 0:
            break;
        case 1:
            while (sPokedexScreenData->pageNum > sPokedexScreenData->firstPageInCategory)
            {
                sPokedexScreenData->pageNum--;
                if (DexScreen_IsPageUnlocked(sPokedexScreenData->category, sPokedexScreenData->pageNum))
                {
                    sPokedexScreenData->state = 8;
                    break;
                }
            }
            if (sPokedexScreenData->state != 8)
                sPokedexScreenData->state = 6;
            break;
        case 2:
            while (sPokedexScreenData->pageNum < sPokedexScreenData->lastPageInCategory - 1)
            {
                sPokedexScreenData->pageNum++;
                if (DexScreen_IsPageUnlocked(sPokedexScreenData->category, sPokedexScreenData->pageNum))
                {
                    sPokedexScreenData->state = 10;
                    break;
                }
            }
            if (sPokedexScreenData->state != 10)
                sPokedexScreenData->state = 6;
            break;
        }
        if (({(gMain.newKeys) & (0x0002);}))
        {
            sPokedexScreenData->state = 6;
        }
        break;
    case 6:
    case 7:
        RemoveScrollIndicatorArrowPair(sPokedexScreenData->scrollArrowsTaskId);
        ListMenuRemoveCursorObject(sPokedexScreenData->categoryPageCursorTaskId, 0);
        BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
        sPokedexScreenData->state = 1;
        break;
    case 8:
    case 10:
        DexScreen_DestroyCategoryPageMonIconAndInfoWindows();
        DexScreen_CreateCategoryPageSelectionCursor(0xFF);
        ListMenuUpdateCursorObject(sPokedexScreenData->categoryPageCursorTaskId, 0, 0xA0, 0);
        sPokedexScreenData->categoryPageSelectionCursorTimer = 0;
        sPokedexScreenData->data[0] = 0;
        sPokedexScreenData->state++;
        break;
    case 9:
        if (DexScreen_FlipCategoryPageInDirection(0))
        {
            sPokedexScreenData->categoryCursorPosInPage = sPokedexScreenData->numMonsOnPage - 1;
            sPokedexScreenData->state = 5;
        }
        break;
    case 11:
        if (DexScreen_FlipCategoryPageInDirection(1))
        {
            sPokedexScreenData->categoryCursorPosInPage = 0;
            sPokedexScreenData->state = 5;
        }
        break;
    case 12:
        sPokedexScreenData->dexSpecies = sPokedexScreenData->pageSpecies[sPokedexScreenData->categoryCursorPosInPage];
        PlaySE(5);
        sPokedexScreenData->state = 14;
        break;
    case 13:
        RemoveDexPageWindows();
        sPokedexScreenData->state = 4;
        break;
    case 14:
        DexScreen_DrawMonDexPage(0);
        sPokedexScreenData->state = 15;
        break;
    case 15:
        sPokedexScreenData->data[0] = 0;
        sPokedexScreenData->data[1] = 0;
        sPokedexScreenData->state++;

    case 16:
        if (sPokedexScreenData->data[1] < 6)
        {
            if (sPokedexScreenData->data[0])
            {
                DexScreen_DexPageZoomEffectFrame(0, sPokedexScreenData->data[1]);
                CopyBgTilemapBufferToVram(0);
                sPokedexScreenData->data[0] = 4;
                sPokedexScreenData->data[1]++;
            }
            else
            {
                sPokedexScreenData->data[0]--;
            }
        }
        else
        {
            FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(3);
            CopyBgTilemapBufferToVram(2);
            CopyBgTilemapBufferToVram(1);
            CopyBgTilemapBufferToVram(0);
            PlayCry_NormalNoDucking(sPokedexScreenData->dexSpecies, 0, 125, 10);
            sPokedexScreenData->data[0] = 0;
            sPokedexScreenData->state = 17;
        }
        break;
    case 17:
        if (({(gMain.newKeys) & (0x0001);}))
        {
            RemoveDexPageWindows();
            FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(1);
            sPokedexScreenData->state = 21;
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            sPokedexScreenData->state = 18;
        }
        else
        {
            DexScreen_InputHandler_StartToCry();
        }
        break;
    case 18:
        DexScreen_CreateCategoryListGfx(0);
        DexScreen_DexPageZoomEffectFrame(0, 6);
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);
        sPokedexScreenData->state = 19;
        break;
    case 19:
        sPokedexScreenData->data[0] = 0;
        sPokedexScreenData->data[1] = 6;
        sPokedexScreenData->state++;

    case 20:
        if (sPokedexScreenData->data[1])
        {
            if (sPokedexScreenData->data[0])
            {
                sPokedexScreenData->data[1]--;
                FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 2, 30, 16);
                DexScreen_DexPageZoomEffectFrame(0, sPokedexScreenData->data[1]);
                CopyBgTilemapBufferToVram(0);
                sPokedexScreenData->data[0] = 1;
            }
            else
                sPokedexScreenData->data[0]--;
        }
        else
        {
            FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(0);
            sPokedexScreenData->state = 13;
        }
        break;
    case 21:
        DexScreen_DrawMonAreaPage();
        sPokedexScreenData->state = 22;
        break;
    case 22:
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);
        sPokedexScreenData->state = 23;
        break;
    case 23:
        if (({(gMain.newKeys) & (0x0001);}))
        {
            FillBgTilemapBufferRect_Palette0(2, 0x000, 0, 2, 30, 16);
            FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 2, 30, 16);
            FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(2);
            CopyBgTilemapBufferToVram(1);
            CopyBgTilemapBufferToVram(0);
            sPokedexScreenData->state = 26;
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            FillBgTilemapBufferRect_Palette0(2, 0x000, 0, 2, 30, 16);
            FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 2, 30, 16);
            FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(2);
            CopyBgTilemapBufferToVram(1);
            CopyBgTilemapBufferToVram(0);
            sPokedexScreenData->state = 24;
        }
        else
        {
            DexScreen_InputHandler_StartToCry();
        }
        break;
    case 24:
        DexScreen_DestroyAreaScreenResources();
        sPokedexScreenData->state = 25;
        break;
    case 25:
        DexScreen_DrawMonDexPage(0);
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);
        sPokedexScreenData->state = 17;
        break;
    case 26:
        DexScreen_DestroyAreaScreenResources();
        sPokedexScreenData->state = 18;
        break;
    }
}

static u8 DexScreen_CreateCategoryMenuScrollArrows(void)
{
    struct ScrollArrowsTemplate template = sScrollArrowsTemplate_CategoryMenu;
    template.fullyUpThreshold = sPokedexScreenData->firstPageInCategory;
    template.fullyDownThreshold = sPokedexScreenData->lastPageInCategory - 1;
    sPokedexScreenData->modeSelectCursorPosBak = sPokedexScreenData->pageNum;
    return AddScrollIndicatorArrowPair(&template, &sPokedexScreenData->modeSelectCursorPosBak);
}




static int DexScreen_InputHandler_GetShoulderInput(void)
{
    switch (gSaveBlock2Ptr->optionsButtonMode)
    {
    case 2:

        if ((gMain.heldKeys & 0x0100) && (gMain.newKeys & 0x0020))
            return 1;
        else if ((gMain.heldKeys & 0x0100) && (gMain.newKeys & 0x0010))
            return 2;
        else
            return 0;
    case 1:
        if (gMain.newKeys & 0x0200)
            return 1;
        else if (gMain.newKeys & 0x0100)
            return 2;
        else
            return 0;
    case 0:
    default:
        return 0;
    }
}

static void Task_DexScreen_ShowMonPage(u8 taskId)
{
    switch (sPokedexScreenData->state)
    {
    case 0:
        HideBg(3);
        HideBg(2);
        HideBg(1);
        sPokedexScreenData->state = 2;
        break;
    case 1:
        HideBg(2);
        HideBg(1);
        gTasks[taskId].func = Task_DexScreen_NumericalOrder;
        sPokedexScreenData->state = 0;
        break;
    case 2:
        sPokedexScreenData->numMonsOnPage = 1;
        DexScreen_DrawMonDexPage(0);
        sPokedexScreenData->state = 3;
        break;
    case 3:
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);
        PlayCry_NormalNoDucking(sPokedexScreenData->dexSpecies, 0, 125, 10);
        sPokedexScreenData->state = 4;
        break;
    case 4:
        BeginNormalPaletteFade(~0x8000, 0, 16, 0, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
        ShowBg(3);
        ShowBg(2);
        ShowBg(1);
        sPokedexScreenData->state = 5;
        break;
    case 5:
        if (({(gMain.newKeys) & (0x0001);}))
        {
            RemoveDexPageWindows();
            FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(1);
            sPokedexScreenData->state = 7;
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            RemoveDexPageWindows();
            BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
            sPokedexScreenData->state = 1;
        }
        else if (({(gMain.newKeys) & (0x0040);}) && DexScreen_TryScrollMonsVertical(1))
        {
            RemoveDexPageWindows();
            BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
            sPokedexScreenData->state = 6;
        }
        else if (({(gMain.newKeys) & (0x0080);}) && DexScreen_TryScrollMonsVertical(0))
        {
            RemoveDexPageWindows();
            BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
            sPokedexScreenData->state = 6;
        }
        else
        {
            DexScreen_InputHandler_StartToCry();
        }
        break;
    case 6:
        HideBg(2);
        HideBg(1);
        sPokedexScreenData->dexSpecies = sPokedexScreenData->characteristicMenuInput;
        sPokedexScreenData->state = 2;
        break;
    case 7:
        DexScreen_DrawMonAreaPage();
        sPokedexScreenData->state = 8;
        break;
    case 8:
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);
        sPokedexScreenData->state = 9;
        break;
    case 9:
        if (({(gMain.newKeys) & (0x0001);}))
        {
            BeginNormalPaletteFade(~0x8000, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | (1 << 15)));
            sPokedexScreenData->state = 12;
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            FillBgTilemapBufferRect_Palette0(2, 0x000, 0, 2, 30, 16);
            FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 2, 30, 16);
            FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(2);
            CopyBgTilemapBufferToVram(1);
            CopyBgTilemapBufferToVram(0);
            sPokedexScreenData->state = 10;
        }
        else
        {
            DexScreen_InputHandler_StartToCry();
        }
        break;
    case 10:
        DexScreen_DestroyAreaScreenResources();
        sPokedexScreenData->state = 11;
        break;
    case 11:
        DexScreen_DrawMonDexPage(0);
        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);
        sPokedexScreenData->state = 5;
        break;
    case 12:
        DexScreen_DestroyAreaScreenResources();
        FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 2, 30, 16);
        CopyBgTilemapBufferToVram(0);
        sPokedexScreenData->state = 1;
        break;
    }
}

static bool32 DexScreen_TryScrollMonsVertical(u8 direction)
{
    int selectedIndex;
    u16 *itemsAbove_p, *cursorPos_p;

    switch (sPokedexScreenData->dexOrderId)
    {
    default:
    case 0:
        cursorPos_p = &sPokedexScreenData->kantoOrderMenuCursorPos;
        itemsAbove_p = &sPokedexScreenData->kantoOrderMenuItemsAbove;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        cursorPos_p = &sPokedexScreenData->characteristicOrderMenuCursorPos;
        itemsAbove_p = &sPokedexScreenData->characteristicOrderMenuItemsAbove;
        break;
    case 5:
        cursorPos_p = &sPokedexScreenData->nationalOrderMenuCursorPos;
        itemsAbove_p = &sPokedexScreenData->nationalOrderMenuItemsAbove;
        break;
    }

    selectedIndex = *cursorPos_p + *itemsAbove_p;
    if (direction)
    {
        if (selectedIndex == 0)
            return 0;

        selectedIndex--;
        while (selectedIndex >= 0)
        {
            if ((sPokedexScreenData->listItems[selectedIndex].index >> 16) & 1)
            {
                break;
            }
            selectedIndex--;
        }

        if (selectedIndex < 0)
        {
            return 0;
        }
    }
    else
    {
        if (selectedIndex == sPokedexScreenData->orderedDexCount - 1)
        {
            return 0;
        }

        selectedIndex++;
        while (selectedIndex < sPokedexScreenData->orderedDexCount)
        {
            if ((sPokedexScreenData->listItems[selectedIndex].index >> 16) & 1)
                break;
            selectedIndex++;
        }
        if (selectedIndex >= sPokedexScreenData->orderedDexCount)
        {
            return 0;
        }
    }
    sPokedexScreenData->characteristicMenuInput = sPokedexScreenData->listItems[selectedIndex].index;

    if (sPokedexScreenData->orderedDexCount > 9)
    {
        if (selectedIndex < 4)
        {
            *cursorPos_p = 0;
            *itemsAbove_p = selectedIndex;
        }
        else if (selectedIndex >= (sPokedexScreenData->orderedDexCount - 4))
        {
            *cursorPos_p = (sPokedexScreenData->orderedDexCount - 9);
            *itemsAbove_p = selectedIndex + 9 - (sPokedexScreenData->orderedDexCount);
        }
        else
        {
            *cursorPos_p = selectedIndex - 4;
            *itemsAbove_p = 4;
        }
    }
    else
    {
        *cursorPos_p = 0;
        *itemsAbove_p = selectedIndex;
    }
    return 1;
}

static void DexScreen_RemoveWindow(u8 *windowId_p)
{
    if (*windowId_p != 0xFF)
    {
        RemoveWindow(*windowId_p);
        *windowId_p = 0xFF;
    }
}

static void DexScreen_AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 colorIdx)
{
    u8 textColor[3];
    switch (colorIdx)
    {
    case 0:
        textColor[0] = 0;
        textColor[1] = 1;
        textColor[2] = 3;
        break;
    case 1:
        textColor[0] = 0;
        textColor[1] = 5;
        textColor[2] = 1;
        break;
    case 2:
        textColor[0] = 0;
        textColor[1] = 15;
        textColor[2] = 14;
        break;
    case 3:
        textColor[0] = 0;
        textColor[1] = 11;
        textColor[2] = 1;
        break;
    case 4:
        textColor[0] = 0;
        textColor[1] = 1;
        textColor[2] = 2;
        break;
    }
    AddTextPrinterParameterized4(windowId, fontId, x, y, fontId == FONT_SMALL ? 0 : 1, 0, textColor, -1, str);
}

static void DexScreen_PrintNum3LeadingZeroes(u8 windowId, u8 fontId, u16 num, u8 x, u8 y, u8 colorIdx)
{
    u8 buff[4];
    buff[0] = (num / 100) + 0xA1;
    buff[1] = ((num %= 100) / 10) + 0xA1;
    buff[2] = (num % 10) + 0xA1;
    buff[3] = 0xFF;
    DexScreen_AddTextPrinterParameterized(windowId, fontId, buff, x, y, colorIdx);
}

static void DexScreen_PrintNum3RightAlign(u8 windowId, u8 fontId, u16 num, u8 x, u8 y, u8 colorIdx)
{
    u8 buff[4];
    int i;
    buff[0] = (num / 100) + 0xA1;
    buff[1] = ((num %= 100) / 10) + 0xA1;
    buff[2] = (num % 10) + 0xA1;
    buff[3] = 0xFF;
    for (i = 0; i < 3; i++)
    {
        if (buff[i] != 0xA1)
            break;
        buff[i] = 0x00;
    }
    DexScreen_AddTextPrinterParameterized(windowId, fontId, buff, x, y, colorIdx);
}

static u32 DexScreen_GetDefaultPersonality(int species)
{
    switch (species)
    {
    case 308:
        return gSaveBlock2Ptr->pokedex.spindaPersonality;
    case 201:
        return gSaveBlock2Ptr->pokedex.unownPersonality;
    default:
        return 0;
    }
}

static void DexScreen_LoadMonPicInWindow(u8 windowId, u16 species, u16 paletteOffset)
{
    LoadMonPicInWindow(species, 8, DexScreen_GetDefaultPersonality(species), 1, paletteOffset >> 4, windowId);
}

static void DexScreen_PrintMonDexNo(u8 windowId, u8 fontId, u16 species, u8 x, u8 y)
{
    u16 dexNum = SpeciesToNationalPokedexNum(species);
    DexScreen_AddTextPrinterParameterized(windowId, fontId, gText_PokedexNo, x, y, 0);
    DexScreen_PrintNum3LeadingZeroes(windowId, fontId, dexNum, x + 9, y, 0);
}

s8 DexScreen_GetSetPokedexFlag(u16 nationalDexNo, u8 caseId, bool8 indexIsSpecies)
{
    u8 index;
    u8 bit;
    u8 mask;
    s8 retVal;

    if (indexIsSpecies)
        nationalDexNo = SpeciesToNationalPokedexNum(nationalDexNo);

    nationalDexNo--;
    index = nationalDexNo / 8;
    bit = nationalDexNo % 8;
    mask = 1 << bit;
    retVal = 0;
    switch (caseId)
    {
    case FLAG_GET_SEEN:
        if (gSaveBlock2Ptr->pokedex.seen[index] & mask)
        {

            if ((gSaveBlock2Ptr->pokedex.seen[index] & mask) == (gSaveBlock1Ptr->seen1[index] & mask)
                && (gSaveBlock2Ptr->pokedex.seen[index] & mask) == (gSaveBlock1Ptr->seen2[index] & mask))
                retVal = 1;
        }
        break;
    case FLAG_GET_CAUGHT:
        if (gSaveBlock2Ptr->pokedex.owned[index] & mask)
        {

            if ((gSaveBlock2Ptr->pokedex.owned[index] & mask) == (gSaveBlock2Ptr->pokedex.seen[index] & mask)
                && (gSaveBlock2Ptr->pokedex.owned[index] & mask) == (gSaveBlock1Ptr->seen1[index] & mask)
                && (gSaveBlock2Ptr->pokedex.owned[index] & mask) == (gSaveBlock1Ptr->seen2[index] & mask))
                retVal = 1;
        }
        break;
    case FLAG_SET_SEEN:
        gSaveBlock2Ptr->pokedex.seen[index] |= mask;

        gSaveBlock1Ptr->seen1[index] |= mask;
        gSaveBlock1Ptr->seen2[index] |= mask;
        break;
    case FLAG_SET_CAUGHT:
        gSaveBlock2Ptr->pokedex.owned[index] |= mask;
        break;
    }
    return retVal;
}

static u16 DexScreen_GetDexCount(u8 caseId, bool8 whichDex)
{
    u16 count = 0;
    u16 i;

    switch (whichDex)
    {
    case 0:
        for (i = 0; i < NATIONAL_DEX_MEW; i++)
        {
            if (DexScreen_GetSetPokedexFlag(i + 1, caseId, 0))
                count++;
        }
        break;
    case 1:
        for (i = 0; i < NATIONAL_DEX_LITTEN; i++)
        {
            if (DexScreen_GetSetPokedexFlag(i + 1, caseId, 0))
                count++;

        }
        break;
    }
    return count;
}

static void DexScreen_PrintControlInfo(const u8 *src)
{
    DexScreen_AddTextPrinterParameterized(1, FONT_SMALL, src, 236 - GetStringWidth(FONT_SMALL, src, 0), 2, 4);
}

bool8 DexScreen_DrawMonPicInCategoryPage(u16 species, u8 slot, u8 numSlots)
{
    struct WindowTemplate template;
    numSlots--;
    CopyToBgTilemapBufferRect_ChangePalette(3, sCategoryPageIconWindowBg, sCategoryPageIconCoords[numSlots][slot][0], sCategoryPageIconCoords[numSlots][slot][1], 8, 8, slot + 5);
    if (sPokedexScreenData->categoryMonWindowIds[slot] == 0xFF)
    {
        template = sWindowTemplate_CategoryMonIcon;
        template.tilemapLeft = sCategoryPageIconCoords[numSlots][slot][0];
        template.tilemapTop = sCategoryPageIconCoords[numSlots][slot][1];
        template.paletteNum = slot + 1;
        template.baseBlock = slot * 64 + 8;
        sPokedexScreenData->categoryMonWindowIds[slot] = AddWindow(&template);
        FillWindowPixelBuffer(sPokedexScreenData->categoryMonWindowIds[slot], ((0) | ((0) << 4)));
        DexScreen_LoadMonPicInWindow(sPokedexScreenData->categoryMonWindowIds[slot], species, slot * 16 + 16);
        PutWindowTilemap(sPokedexScreenData->categoryMonWindowIds[slot]);
        CopyWindowToVram(sPokedexScreenData->categoryMonWindowIds[slot], COPYWIN_GFX);
    }
    else
        PutWindowTilemap(sPokedexScreenData->categoryMonWindowIds[slot]);

    if (sPokedexScreenData->categoryMonInfoWindowIds[slot] == 0xFF)
    {
        if (species != 0)
        {
            template = sWindowTemplate_CategoryMonInfo;
            template.tilemapLeft = sCategoryPageIconCoords[numSlots][slot][2];
            template.tilemapTop = sCategoryPageIconCoords[numSlots][slot][3];
            template.baseBlock = slot * 40 + 0x108;
            sPokedexScreenData->categoryMonInfoWindowIds[slot] = AddWindow(&template);
            CopyToWindowPixelBuffer(sPokedexScreenData->categoryMonInfoWindowIds[slot], sCategoryMonInfoBgTiles, 0, 0);
            DexScreen_PrintMonDexNo(sPokedexScreenData->categoryMonInfoWindowIds[slot], FONT_SMALL, species, 12, 0);
            DexScreen_AddTextPrinterParameterized(sPokedexScreenData->categoryMonInfoWindowIds[slot], FONT_NORMAL, gSpeciesNames[species], 2, 13, 0);
            if (DexScreen_GetSetPokedexFlag(species, FLAG_GET_CAUGHT, 1))
                BlitBitmapRectToWindow(sPokedexScreenData->categoryMonInfoWindowIds[slot], sDexScreen_CaughtIcon, 0, 0, 8, 8, 2, 3, 8, 8);
            PutWindowTilemap(sPokedexScreenData->categoryMonInfoWindowIds[slot]);
            CopyWindowToVram(sPokedexScreenData->categoryMonInfoWindowIds[slot], COPYWIN_GFX);
        }
    }
    else
        PutWindowTilemap(sPokedexScreenData->categoryMonInfoWindowIds[slot]);

    return 1;
}

static void DexScreen_DestroyCategoryPageMonIconAndInfoWindows(void)
{
    int i;
    for (i = 0; i < 4; i++)
    {
        DexScreen_RemoveWindow(&sPokedexScreenData->categoryMonWindowIds[i]);
        DexScreen_RemoveWindow(&sPokedexScreenData->categoryMonInfoWindowIds[i]);
    }
}

static void DexScreen_PrintCategoryPageNumbers(u8 windowId, u16 currentPage, u16 totalPages, u16 x, u16 y)
{
    u8 buffer[30];
    u8 *ptr = StringCopy(buffer, gText_Page);
    ptr = ConvertIntToDecimalStringN(ptr, currentPage, STR_CONV_MODE_RIGHT_ALIGN, 2);
    *ptr++ = 0xBA;
    ptr = ConvertIntToDecimalStringN(ptr, totalPages, STR_CONV_MODE_RIGHT_ALIGN, 2);
    DexScreen_PrintStringWithAlignment(buffer, TEXT_RIGHT);
}

static bool8 DexScreen_CreateCategoryListGfx(bool8 justRegistered)
{
    FillBgTilemapBufferRect_Palette0(3, 2, 0, 0, 30, 20);
    FillBgTilemapBufferRect_Palette0(2, 0, 0, 0, 32, 20);
    FillBgTilemapBufferRect_Palette0(1, 0, 0, 0, 32, 20);
    DexScreen_CreateCategoryPageSpeciesList(sPokedexScreenData->category, sPokedexScreenData->pageNum);
    FillWindowPixelBuffer(0, ((15) | ((15) << 4)));
    if (justRegistered)
    {
        DexScreen_PrintStringWithAlignment(sDexCategoryNamePtrs[sPokedexScreenData->category], TEXT_CENTER);
    }
    else
    {
        DexScreen_PrintStringWithAlignment(sDexCategoryNamePtrs[sPokedexScreenData->category], TEXT_LEFT);
        DexScreen_PrintCategoryPageNumbers(0, DexScreen_PageNumberToRenderablePages(sPokedexScreenData->pageNum), DexScreen_PageNumberToRenderablePages(sPokedexScreenData->lastPageInCategory - 1), 160, 2);
    }
    CopyWindowToVram(0, COPYWIN_GFX);
    FillWindowPixelBuffer(1, ((15) | ((15) << 4)));
    if (!justRegistered)
        DexScreen_PrintControlInfo(gText_PickFlipPageCheckCancel);
    CopyWindowToVram(1, COPYWIN_GFX);
    if (sPokedexScreenData->pageSpecies[0] != 0xFFFF)
        DexScreen_DrawMonPicInCategoryPage(sPokedexScreenData->pageSpecies[0], 0, sPokedexScreenData->numMonsOnPage);
    if (sPokedexScreenData->pageSpecies[1] != 0xFFFF)
        DexScreen_DrawMonPicInCategoryPage(sPokedexScreenData->pageSpecies[1], 1, sPokedexScreenData->numMonsOnPage);
    if (sPokedexScreenData->pageSpecies[2] != 0xFFFF)
        DexScreen_DrawMonPicInCategoryPage(sPokedexScreenData->pageSpecies[2], 2, sPokedexScreenData->numMonsOnPage);
    if (sPokedexScreenData->pageSpecies[3] != 0xFFFF)
        DexScreen_DrawMonPicInCategoryPage(sPokedexScreenData->pageSpecies[3], 3, sPokedexScreenData->numMonsOnPage);
    return 0;
}

static void DexScreen_CreateCategoryPageSelectionCursor(u8 cursorPos)
{
    int i;
    u32 palIdx;

    if (cursorPos == 0xFF)
    {
        for (i = 0; i < 4; i++)
        {
            LoadPalette(&sDexScreen_CategoryCursorPals[0], ((i) * 16) + ((5) * 16) + 2 + 0x000, ((1) * sizeof(u16)));
            LoadPalette(&sDexScreen_CategoryCursorPals[1], ((i) * 16) + ((5) * 16) + 8 + 0x000, ((1) * sizeof(u16)));
        }
        LoadPalette(&sDexScreen_CategoryCursorPals[0], 0x141, ((1) * sizeof(u16)));
        sPokedexScreenData->categoryPageSelectionCursorTimer = 0;
    }
    else
    {
        sPokedexScreenData->categoryPageSelectionCursorTimer++;
        if (sPokedexScreenData->categoryPageSelectionCursorTimer == 16)
            sPokedexScreenData->categoryPageSelectionCursorTimer = 0;
        palIdx = sPokedexScreenData->categoryPageSelectionCursorTimer >> 2;
        for (i = 0; i < 4; i++)
        {
            if (i == cursorPos)
            {
                LoadPalette(&sDexScreen_CategoryCursorPals[2 * palIdx + 2], ((i) * 16) + ((5) * 16) + 2 + 0x000, ((1) * sizeof(u16)));
                LoadPalette(&sDexScreen_CategoryCursorPals[2 * palIdx + 3], ((i) * 16) + ((5) * 16) + 8 + 0x000, ((1) * sizeof(u16)));
            }
            else
            {
                LoadPalette(&sDexScreen_CategoryCursorPals[0], ((i) * 16) + ((5) * 16) + 2 + 0x000, ((1) * sizeof(u16)));
                LoadPalette(&sDexScreen_CategoryCursorPals[1], ((i) * 16) + ((5) * 16) + 8 + 0x000, ((1) * sizeof(u16)));
            }
        }
        LoadPalette(&sDexScreen_CategoryCursorPals[2 * palIdx + 2], (0x100 + ((4) * 16)) + 1, ((1) * sizeof(u16)));
    }
}

static void DexScreen_UpdateCategoryPageCursorObject(u8 taskId, u8 cursorPos, u8 numMonsInPage)
{
    numMonsInPage--;
    ListMenuUpdateCursorObject(taskId, sCategoryPageIconCoords[numMonsInPage][cursorPos][2] * 8, sCategoryPageIconCoords[numMonsInPage][cursorPos][3] * 8, 0);
}

bool8 DexPage_TileBuffer_CopyCol(const u16 *srcBuf, u8 srcCol, u16 *dstBuf, u8 dstCol)
{
    int i;
    const u16 *src = &srcBuf[srcCol];
    u16 *dst = &dstBuf[dstCol];
    for (i = 0; i < 20; i++)
    {
        *dst = *src;
        dst += 32;
        src += 32;
    }
    return 0;
}

bool8 DexPage_TileBuffer_FillCol(u16 tileNo, u16 *tileBuf, u8 x)
{
    int i;
    u16 *dst = &tileBuf[x];
    for (i = 0; i < 20; i++)
    {
        *dst = tileNo;
        dst += 32;
    }
    return 0;
}

bool8 DexScreen_TurnCategoryPage_BgEffect(u8 page)
{
    int dstCol;
    int srcCol;
    u16 *bg1buff = GetBgTilemapBuffer(1);
    u16 *bg2buff = GetBgTilemapBuffer(2);
    u16 *bg3buff = GetBgTilemapBuffer(3);
    u16 *bg1mem = sPokedexScreenData->bgBufsMem + 0x800;
    u16 *bg2mem = sPokedexScreenData->bgBufsMem + 0x400;
    u16 *bg3mem = sPokedexScreenData->bgBufsMem + 0x000;
    for (dstCol = 0; dstCol < 30; dstCol++)
    {
        srcCol = sDexScreenPageTurnColumns[page][dstCol];
        if (srcCol == 30)
        {
            DexPage_TileBuffer_FillCol(0x000, bg1buff, dstCol);
            DexPage_TileBuffer_FillCol(0x000, bg2buff, dstCol);
            DexPage_TileBuffer_FillCol(0x00C, bg3buff, dstCol);
        }
        else
        {
            DexPage_TileBuffer_CopyCol(bg1mem, srcCol, bg1buff, dstCol);
            DexPage_TileBuffer_CopyCol(bg2mem, srcCol, bg2buff, dstCol);
            DexPage_TileBuffer_CopyCol(bg3mem, srcCol, bg3buff, dstCol);
        }
    }
    CopyBgTilemapBufferToVram(1);
    CopyBgTilemapBufferToVram(2);
    CopyBgTilemapBufferToVram(3);
    return 0;
}




static bool8 DexScreen_FlipCategoryPageInDirection(u8 direction)
{
    u16 color;
    if (IsNationalPokedexEnabled())
        color = sNationalDexPalette[7];
    else
        color = sKantoDexPalette[7];
    switch (sPokedexScreenData->data[0])
    {
    case 0:
        sPokedexScreenData->bgBufsMem = Alloc(3 * 0x800);
        if (direction)
            sPokedexScreenData->data[0] = 6;
        else
            sPokedexScreenData->data[0] = 2;
        break;
    case 1:
        Free(sPokedexScreenData->bgBufsMem);
        return 1;

    case 2:
        BeginNormalPaletteFade(0x00007FFF, 0, 0, 16, color);
        sPokedexScreenData->data[0]++;
        break;
    case 3:
        FillBgTilemapBufferRect_Palette0(3, 0x00C, 0, 0, 30, 20);
        FillBgTilemapBufferRect_Palette0(2, 0x000, 0, 0, 32, 20);
        FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 0, 32, 20);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(3);
        sPokedexScreenData->data[0]++;
        break;
    case 4:
        BeginNormalPaletteFade(0x00007FFF, 0, 0, 0, color);
        DexScreen_CreateCategoryListGfx(0);
        CpuFastSet(GetBgTilemapBuffer(3), &sPokedexScreenData->bgBufsMem[0 * 0x800 / 2], ((0x800)/(32/8) & 0x1FFFFF));
        CpuFastSet(GetBgTilemapBuffer(2), &sPokedexScreenData->bgBufsMem[1 * 0x800 / 2], ((0x800)/(32/8) & 0x1FFFFF));
        CpuFastSet(GetBgTilemapBuffer(1), &sPokedexScreenData->bgBufsMem[2 * 0x800 / 2], ((0x800)/(32/8) & 0x1FFFFF));
        FillBgTilemapBufferRect_Palette0(3, 0x00C, 0, 0, 30, 20);
        FillBgTilemapBufferRect_Palette0(2, 0x000, 0, 0, 32, 20);
        FillBgTilemapBufferRect_Palette0(1, 0x000, 0, 0, 32, 20);

        sPokedexScreenData->data[1] = 0;
        sPokedexScreenData->data[0]++;
        PlaySE(107);
        break;
    case 5:
        if (sPokedexScreenData->data[1] < 10)
        {
            DexScreen_TurnCategoryPage_BgEffect(sPokedexScreenData->data[1]);
            sPokedexScreenData->data[1]++;
        }
        else
        {
            sPokedexScreenData->data[0] = 1;
        }
        break;

    case 6:
        CpuFastSet(GetBgTilemapBuffer(3), &sPokedexScreenData->bgBufsMem[0 * 0x800 / 2], ((0x800)/(32/8) & 0x1FFFFF));
        CpuFastSet(GetBgTilemapBuffer(2), &sPokedexScreenData->bgBufsMem[1 * 0x800 / 2], ((0x800)/(32/8) & 0x1FFFFF));
        CpuFastSet(GetBgTilemapBuffer(1), &sPokedexScreenData->bgBufsMem[2 * 0x800 / 2], ((0x800)/(32/8) & 0x1FFFFF));

        sPokedexScreenData->data[1] = 9;
        sPokedexScreenData->data[0]++;
        PlaySE(107);
        break;
    case 7:
        if (sPokedexScreenData->data[1] != 0)
        {
            DexScreen_TurnCategoryPage_BgEffect(sPokedexScreenData->data[1]);
            sPokedexScreenData->data[1]--;
        }
        else
        {



            DexScreen_TurnCategoryPage_BgEffect(sPokedexScreenData->data[0]);

            BeginNormalPaletteFade(0x00007FFF, 0, 16, 16, color);
            sPokedexScreenData->data[0]++;
        }
        break;
    case 8:
        gPaletteFade.bufferTransferDisabled = 1;
        DexScreen_CreateCategoryListGfx(0);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(3);
        sPokedexScreenData->data[0]++;
        break;
    case 9:
        gPaletteFade.bufferTransferDisabled = 0;
        BeginNormalPaletteFade(0x00007FFF, 0, 16, 0, color);
        sPokedexScreenData->data[0] = 1;
        break;
    }
    return 0;
}


void DexScreen_DexPageZoomEffectFrame(u8 bg, u8 scale)
{
    u8 tileLeft, tileTop, width, height;
    s16 left, top, divY;

    if (!sPokedexScreenData->numMonsOnPage)
    {
        tileLeft = sCategoryPageIconCoords[0][0][2];
        tileTop = sCategoryPageIconCoords[0][0][3];
    }
    else
    {
        tileLeft = sCategoryPageIconCoords[sPokedexScreenData->numMonsOnPage - 1][sPokedexScreenData->categoryCursorPosInPage][2];
        tileTop = sCategoryPageIconCoords[sPokedexScreenData->numMonsOnPage - 1][sPokedexScreenData->categoryCursorPosInPage][3];
    }

    width = 6 + (scale * 4);
    height = 3 + (scale * 2);
    if (width >= 28)
        width = 28;
    if (height >= 14)
        height = 14;

    left = tileLeft - ((scale * 4) / 2);
    top = tileTop - ((scale * 2) / 2);
    if ((left + width + 2) >= 30)
        left -= ((left + width + 2) - 30);
    else if (left < 0)
        left = 0;
    if ((top + height + 2) >= 18)
        top -= ((top + height + 2) - 18);
    else if (top < 2)
        top = 2;

    divY = (top + 1) + ((height / 2) + 1);


    FillBgTilemapBufferRect_Palette0(bg, 4, left, top, 1, 1);
    FillBgTilemapBufferRect_Palette0(bg, 5, left + 1, top, width, 1);
    FillBgTilemapBufferRect_Palette0(bg, (0x400 + (4)), left + 1 + width, top, 1, 1);


    FillBgTilemapBufferRect_Palette0(bg, 10, left, top + 1 + height, 1, 1);
    FillBgTilemapBufferRect_Palette0(bg, 11, left + 1, top + 1 + height, width, 1);
    FillBgTilemapBufferRect_Palette0(bg, (0x400 + (10)), left + 1 + width, top + 1 + height, 1, 1);


    FillBgTilemapBufferRect_Palette0(bg, 6, left, top + 1, 1, divY - top - 1);
    FillBgTilemapBufferRect_Palette0(bg, 7, left, divY, 1, 1);
    FillBgTilemapBufferRect_Palette0(bg, 9, left, divY + 1, 1, top + height - divY);


    FillBgTilemapBufferRect_Palette0(bg, (0x400 + (6)), left + 1 + width, top + 1, 1, divY - top - 1);
    FillBgTilemapBufferRect_Palette0(bg, (0x400 + (7)), left + 1 + width, divY, 1, 1);
    FillBgTilemapBufferRect_Palette0(bg, (0x400 + (9)), left + 1 + width, divY + 1, 1, top + height - divY);


    FillBgTilemapBufferRect_Palette0(bg, 1, left + 1, top + 1, width, divY - top - 1);
    FillBgTilemapBufferRect_Palette0(bg, 8, left + 1, divY, width, 1);
    FillBgTilemapBufferRect_Palette0(bg, 2, left + 1, divY + 1, width, top + height - divY);
}

void DexScreen_PrintMonCategory(u8 windowId, u16 species, u8 x, u8 y)
{
    u8 * categoryName;
    u8 index, categoryStr[12];

    species = SpeciesToNationalPokedexNum(species);

    categoryName = (u8 *)gPokedexEntries[species].categoryName;
    index = 0;
    if (DexScreen_GetSetPokedexFlag(species, FLAG_GET_CAUGHT, 0))
    {

        while ((categoryName[index] != 0x00) && (index < 11))



        {
            categoryStr[index] = categoryName[index];
            index++;
        }
    }
    else
    {
        while (index < 11)
        {
            categoryStr[index] = 0xAC;
            index++;
        }
    }

    categoryStr[index] = 0xFF;

    DexScreen_AddTextPrinterParameterized(windowId, FONT_SMALL, categoryStr, x, y, 0);
    x += GetStringWidth(FONT_SMALL, categoryStr, 0);
    DexScreen_AddTextPrinterParameterized(windowId, FONT_SMALL, gText_PokedexPokemon, x, y, 0);
}

void DexScreen_PrintMonHeight(u8 windowId, u16 species, u8 x, u8 y)
{
    u16 height;
    u32 inches, feet;
    const u8 *labelText;
    u8 buffer[32];
    u8 i;

    species = SpeciesToNationalPokedexNum(species);
    height = gPokedexEntries[species].height;
    labelText = gText_HT;

    i = 0;
    buffer[i++] = 0xFC;
    buffer[i++] = 0x14;
    buffer[i++] = 5;
    buffer[i++] = 0x00;

    if (DexScreen_GetSetPokedexFlag(species, FLAG_GET_CAUGHT, 0))
    {
        inches = 10000 * height / 254;
        if (inches % 10 >= 5)
            inches += 10;
        feet = inches / 120;
        inches = (inches - (feet * 120)) / 10;
        if (feet / 10 == 0)
        {
            buffer[i++] = 0;
            buffer[i++] = feet + 0xA1;
        }
        else
        {
            buffer[i++] = feet / 10 + 0xA1;
            buffer[i++] = feet % 10 + 0xA1;
        }
        buffer[i++] = 0xB4;
        buffer[i++] = inches / 10 + 0xA1;
        buffer[i++] = inches % 10 + 0xA1;
        buffer[i++] = 0xB2;
        buffer[i++] = 0xFF;
    }
    else
    {
        buffer[i++] = 0xAC;
        buffer[i++] = 0xAC;
        buffer[i++] = 0xB4;
        buffer[i++] = 0xAC;
        buffer[i++] = 0xAC;
        buffer[i++] = 0xB2;
    }

    buffer[i++] = 0xFF;
    DexScreen_AddTextPrinterParameterized(windowId, FONT_SMALL, labelText, x, y, 0);
    x += 30;
    DexScreen_AddTextPrinterParameterized(windowId, FONT_SMALL, buffer, x, y, 0);
}

void DexScreen_PrintMonWeight(u8 windowId, u16 species, u8 x, u8 y)
{
    u16 weight;
    u32 lbs;
    bool8 output;
    const u8 * labelText;
    const u8 * lbsText;
    u8 buffer[32];
    u8 i;
    u32 j;

    species = SpeciesToNationalPokedexNum(species);
    weight = gPokedexEntries[species].weight;
    labelText = gText_WT;
    lbsText = gText_Lbs;

    i = 0;
    buffer[i++] = 0xFC;
    buffer[i++] = 0x14;
    buffer[i++] = 5;

    if (DexScreen_GetSetPokedexFlag(species, FLAG_GET_CAUGHT, 0))
    {
        lbs = (weight * 100000) / 4536;


        if (lbs % 10 >= 5)
            lbs += 10;

        output = 0;

        if ((buffer[i] = (lbs / 100000) + 0xA1) == 0xA1 && !output)
        {
            buffer[i++] = 0x00;
        }
        else
        {
            output = 1;
            i++;
        }

        lbs %= 100000;
        if ((buffer[i] = (lbs / 10000) + 0xA1) == 0xA1 && !output)
        {
            buffer[i++] = 0x00;
        }
        else
        {
            output = 1;
            i++;
        }

        lbs %= 10000;
        if ((buffer[i] = (lbs / 1000) + 0xA1) == 0xA1 && !output)
        {
            buffer[i++] = 0x00;
        }
        else
        {
            output = 1;
            i++;
        }

        lbs %= 1000;
        buffer[i++] = (lbs / 100) + 0xA1;
        lbs %= 100;
        buffer[i++] = 0xAD;
        buffer[i++] = (lbs / 10) + 0xA1;
    }
    else
    {
        buffer[i++] = 0xAC;
        buffer[i++] = 0xAC;
        buffer[i++] = 0xAC;
        buffer[i++] = 0xAC;
        buffer[i++] = 0xAD;
        buffer[i++] = 0xAC;
    }
    buffer[i++] = 0x00;
    buffer[i++] = 0xFC;
    buffer[i++] = 0x14;
    buffer[i++] = 0;

    for (j = 0; j < 33 - i && lbsText[j] != 0xFF; j++)
        buffer[i + j] = lbsText[j];

    buffer[i + j] = 0xFF;
    DexScreen_AddTextPrinterParameterized(windowId, FONT_SMALL, labelText, x, y, 0);
    x += 30;
    DexScreen_AddTextPrinterParameterized(windowId, FONT_SMALL, buffer, x, y, 0);
}

void DexScreen_PrintMonFlavorText(u8 windowId, u16 species, u8 x, u8 y)
{
    struct TextPrinterTemplate printerTemplate;
    u16 length;
    s32 xCenter;

    species = SpeciesToNationalPokedexNum(species);

    if (DexScreen_GetSetPokedexFlag(species, FLAG_GET_CAUGHT, 0))
    {
        printerTemplate.currentChar = gPokedexEntries[species].description;
        printerTemplate.windowId = windowId;
        printerTemplate.fontId = FONT_NORMAL;
        printerTemplate.letterSpacing = 1;
        printerTemplate.lineSpacing = 0;
        printerTemplate.unk = 0;
        printerTemplate.fgColor = 1;
        printerTemplate.bgColor = 0;
        printerTemplate.shadowColor = 2;

        length = GetStringWidth(FONT_NORMAL, gPokedexEntries[species].description, 0);
        xCenter = x + (240 - length) / 2;

        if (xCenter > 0)
            x = xCenter;
        else
            x = 0;

        printerTemplate.x = x;
        printerTemplate.y = y;
        printerTemplate.currentX = x;
        printerTemplate.currentY = y;

        AddTextPrinter(&printerTemplate, 0xFF, ((void *)0));
    }
}

void DexScreen_DrawMonFootprint(u8 windowId, u16 species, u8 x, u8 y)
{
    u16 i, j, unused, tileIdx;
    u8 footprintPixel, footprintTile;
    u8 * buffer;
    u8 * footprint;

    if (!(DexScreen_GetSetPokedexFlag(species, FLAG_GET_CAUGHT, 1)))
        return;
    footprint = (u8 *)(gMonFootprintTable[species]);
    buffer = gDecompressionBuffer;
    unused = 0;
    tileIdx = 0;


    for (i = 0; i < 32; i++)
    {
        footprintPixel = footprint[i];
        for (j = 0; j < 8 / 2; j++)
        {
            footprintTile = 0;
            if (footprintPixel & (1 << (j * 2)))
                footprintTile |= 0x01;
            if (footprintPixel & (2 << (j * 2)))
                footprintTile |= 0x10;
            buffer[tileIdx] = footprintTile;
            tileIdx++;
        }
    }
    BlitBitmapRectToWindow(windowId, buffer, 0, 0, 16, 16, x, y, 16, 16);
}

static u8 DexScreen_DrawMonDexPage(bool8 justRegistered)
{
    DexScreen_DexPageZoomEffectFrame(3, 6);
    FillBgTilemapBufferRect_Palette0(2, 0, 0, 0, 30, 20);
    FillBgTilemapBufferRect_Palette0(1, 0, 0, 0, 30, 20);
    FillBgTilemapBufferRect_Palette0(0, 0, 0, 2, 30, 16);

    sPokedexScreenData->windowIds[0] = AddWindow(&sWindowTemplate_DexEntry_MonPic);
    sPokedexScreenData->windowIds[1] = AddWindow(&sWindowTemplate_DexEntry_SpeciesStats);
    sPokedexScreenData->windowIds[2] = AddWindow(&sWindowTemplate_DexEntry_FlavorText);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[0], ((0) | ((0) << 4)));
    DexScreen_LoadMonPicInWindow(sPokedexScreenData->windowIds[0], sPokedexScreenData->dexSpecies, 144);
    PutWindowTilemap(sPokedexScreenData->windowIds[0]);
    CopyWindowToVram(sPokedexScreenData->windowIds[0], COPYWIN_GFX);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[1], ((0) | ((0) << 4)));
    DexScreen_PrintMonDexNo(sPokedexScreenData->windowIds[1], FONT_SMALL, sPokedexScreenData->dexSpecies, 0, 8);
    DexScreen_AddTextPrinterParameterized(sPokedexScreenData->windowIds[1], FONT_NORMAL, gSpeciesNames[sPokedexScreenData->dexSpecies], 28, 8, 0);
    DexScreen_PrintMonCategory(sPokedexScreenData->windowIds[1], sPokedexScreenData->dexSpecies, 0, 24);
    DexScreen_PrintMonHeight(sPokedexScreenData->windowIds[1], sPokedexScreenData->dexSpecies, 0, 36);
    DexScreen_PrintMonWeight(sPokedexScreenData->windowIds[1], sPokedexScreenData->dexSpecies, 0, 48);
    DexScreen_DrawMonFootprint(sPokedexScreenData->windowIds[1], sPokedexScreenData->dexSpecies, 88, 40);
    PutWindowTilemap(sPokedexScreenData->windowIds[1]);
    CopyWindowToVram(sPokedexScreenData->windowIds[1], COPYWIN_GFX);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[2], ((0) | ((0) << 4)));
    DexScreen_PrintMonFlavorText(sPokedexScreenData->windowIds[2], sPokedexScreenData->dexSpecies, 0, 8);
    PutWindowTilemap(sPokedexScreenData->windowIds[2]);
    CopyWindowToVram(sPokedexScreenData->windowIds[2], COPYWIN_GFX);


    FillWindowPixelBuffer(1, ((15) | ((15) << 4)));
    if (justRegistered == 0)
    {
        DexScreen_AddTextPrinterParameterized(1, FONT_SMALL, gText_Cry, 8, 2, 4);
        DexScreen_PrintControlInfo(gText_NextDataCancel);
    }
    else

        DexScreen_PrintControlInfo(gText_Next);
    PutWindowTilemap(1);
    CopyWindowToVram(1, COPYWIN_GFX);

    return 1;
}

u8 RemoveDexPageWindows(void)
{
    DexScreen_RemoveWindow(&sPokedexScreenData->windowIds[0]);
    DexScreen_RemoveWindow(&sPokedexScreenData->windowIds[1]);
    DexScreen_RemoveWindow(&sPokedexScreenData->windowIds[2]);

    return 0;
}

u8 DexScreen_DrawMonAreaPage(void)
{
    int i;
    u8 width, height;
    bool8 monIsCaught;
    s16 left, top;
    u16 speciesId, species;
    u16 kantoMapVoff;

    species = sPokedexScreenData->dexSpecies;
    speciesId = SpeciesToNationalPokedexNum(species);
    monIsCaught = DexScreen_GetSetPokedexFlag(species, FLAG_GET_CAUGHT, 1);
    width = 28;
    height = 14;
    left = 0;
    top = 2;

    FillBgTilemapBufferRect_Palette0(3, 4, left, top, 1, 1);
    FillBgTilemapBufferRect_Palette0(3, (0x400 + (4)), left + 1 + width, top, 1, 1);
    FillBgTilemapBufferRect_Palette0(3, (0x800 + (4)), left, top + 1 + height, 1, 1);
    FillBgTilemapBufferRect_Palette0(3, (0xC00 + (4)), left + 1 + width, top + 1 + height, 1, 1);
    FillBgTilemapBufferRect_Palette0(3, 5, left + 1, top, width, 1);
    FillBgTilemapBufferRect_Palette0(3, (0x800 + (5)), left + 1, top + 1 + height, width, 1);
    FillBgTilemapBufferRect_Palette0(3, 6, left, top + 1, 1, height);
    FillBgTilemapBufferRect_Palette0(3, (0x400 + (6)), left + 1 + width, top + 1, 1, height);
    FillBgTilemapBufferRect_Palette0(3, 1, left + 1, top + 1, width, height);
    FillBgTilemapBufferRect_Palette0(0, 0, 0, 2, 30, 16);

    width = 10;
    height = 6;
    left = 1;
    top = 9;

    FillBgTilemapBufferRect_Palette0(0, 29, left, top, 1, 1);
    FillBgTilemapBufferRect_Palette0(0, (0x400 + (29)), left + 1 + width, top, 1, 1);
    FillBgTilemapBufferRect_Palette0(0, (0x800 + (29)), left, top + 1 + height, 1, 1);
    FillBgTilemapBufferRect_Palette0(0, (0xC00 + (29)), left + 1 + width, top + 1 + height, 1, 1);
    FillBgTilemapBufferRect_Palette0(0, 30, left + 1, top, width, 1);
    FillBgTilemapBufferRect_Palette0(0, (0x800 + (30)), left + 1, top + 1 + height, width, 1);
    FillBgTilemapBufferRect_Palette0(0, 31, left, top + 1, 1, height);
    FillBgTilemapBufferRect_Palette0(0, (0x400 + (31)), left + 1 + width, top + 1, 1, height);
    FillBgTilemapBufferRect_Palette0(2, 0, 0, 0, 30, 20);
    FillBgTilemapBufferRect_Palette0(1, 0, 0, 0, 30, 20);

    sPokedexScreenData->unlockedSeviiAreas = GetUnlockedSeviiAreas();
    kantoMapVoff = 4;


    for (i = 3; i < 7; i++)
        if ((sPokedexScreenData->unlockedSeviiAreas >> i) & 1)
            kantoMapVoff = 0;

    sPokedexScreenData->windowIds[0] = AddWindow(&sWindowTemplate_AreaMap_Kanto);
    CopyToWindowPixelBuffer(sPokedexScreenData->windowIds[0], (void *)sTilemap_AreaMap_Kanto, 0, 0);
    SetWindowAttribute(sPokedexScreenData->windowIds[0], WINDOW_TILEMAP_TOP,
                       GetWindowAttribute(sPokedexScreenData->windowIds[0], WINDOW_TILEMAP_TOP) + kantoMapVoff);
    PutWindowTilemap(sPokedexScreenData->windowIds[0]);
    for (i = 0; i < 7; i++)
        if ((sPokedexScreenData->unlockedSeviiAreas >> i) & 1)
        {
            sPokedexScreenData->windowIds[i + 1] = AddWindow(sAreaMapStructs_SeviiIslands[i].window);
            CopyToWindowPixelBuffer(sPokedexScreenData->windowIds[i + 1], sAreaMapStructs_SeviiIslands[i].tiles, 0, 0);
            SetWindowAttribute(sPokedexScreenData->windowIds[i + 1], WINDOW_TILEMAP_TOP, GetWindowAttribute(sPokedexScreenData->windowIds[i + 1], WINDOW_TILEMAP_TOP) + kantoMapVoff);
            PutWindowTilemap(sPokedexScreenData->windowIds[i + 1]);
            CopyWindowToVram(sPokedexScreenData->windowIds[i + 1], COPYWIN_GFX);
        }
    sPokedexScreenData->windowIds[8] = AddWindow(&sWindowTemplate_AreaMap_SpeciesName);
    sPokedexScreenData->windowIds[9] = AddWindow(&sWindowTemplate_AreaMap_Size);
    sPokedexScreenData->windowIds[10] = AddWindow(&sWindowTemplate_AreaMap_Area);
    sPokedexScreenData->windowIds[11] = AddWindow(&sWindowTemplate_AreaMap_MonIcon);
    sPokedexScreenData->windowIds[12] = AddWindow(&sWindowTemplate_AreaMap_MonTypes);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[11], ((0) | ((0) << 4)));
    ListMenu_LoadMonIconPalette((0x000 + ((10) * 16)), species);
    ListMenu_DrawMonIconGraphics(sPokedexScreenData->windowIds[11], species, DexScreen_GetDefaultPersonality(species), 0, 0);
    PutWindowTilemap(sPokedexScreenData->windowIds[11]);
    CopyWindowToVram(sPokedexScreenData->windowIds[11], COPYWIN_GFX);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[9], ((0) | ((0) << 4)));
    {
        s32 strWidth = GetStringWidth(FONT_SMALL, gText_Size, 0);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->windowIds[9], FONT_SMALL, gText_Size, (sWindowTemplate_AreaMap_Size.width * 8 - strWidth) / 2, 4, 0);
    }
    PutWindowTilemap(sPokedexScreenData->windowIds[9]);
    CopyWindowToVram(sPokedexScreenData->windowIds[9], COPYWIN_GFX);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[10], ((0) | ((0) << 4)));
    {
        s32 strWidth = GetStringWidth(FONT_SMALL, gText_Area, 0);
        DexScreen_AddTextPrinterParameterized(sPokedexScreenData->windowIds[10], FONT_SMALL, gText_Area, (sWindowTemplate_AreaMap_Area.width * 8 - strWidth) / 2, 4, 0);
    }
    SetWindowAttribute(sPokedexScreenData->windowIds[10], WINDOW_TILEMAP_TOP, GetWindowAttribute(sPokedexScreenData->windowIds[10], WINDOW_TILEMAP_TOP) + kantoMapVoff);
    PutWindowTilemap(sPokedexScreenData->windowIds[10]);
    CopyWindowToVram(sPokedexScreenData->windowIds[10], COPYWIN_GFX);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[8], ((0) | ((0) << 4)));
    DexScreen_PrintMonDexNo(sPokedexScreenData->windowIds[8], FONT_SMALL, species, 0, 0);
    DexScreen_AddTextPrinterParameterized(sPokedexScreenData->windowIds[8], FONT_NORMAL, gSpeciesNames[species], 3, 12, 0);
    PutWindowTilemap(sPokedexScreenData->windowIds[8]);
    CopyWindowToVram(sPokedexScreenData->windowIds[8], COPYWIN_GFX);


    FillWindowPixelBuffer(sPokedexScreenData->windowIds[12], ((0) | ((0) << 4)));
    ListMenuLoadStdPalAt((0x000 + ((11) * 16)), 1);

    if (monIsCaught)
    {
        BlitMenuInfoIcon(sPokedexScreenData->windowIds[12], 1 + gSpeciesInfo[species].types[0], 0, 1);
        if (gSpeciesInfo[species].types[0] != gSpeciesInfo[species].types[1])
            BlitMenuInfoIcon(sPokedexScreenData->windowIds[12], 1 + gSpeciesInfo[species].types[1], 32, 1);
    }
    PutWindowTilemap(sPokedexScreenData->windowIds[12]);
    CopyWindowToVram(sPokedexScreenData->windowIds[12], COPYWIN_GFX);


    ResetAllPicSprites();
    LoadPalette(sPalette_Silhouette, (0x100 + ((2) * 16)), ((16) * sizeof(u16)));

    if (monIsCaught)
    {
        sPokedexScreenData->windowIds[14] = CreateMonPicSprite_HandleDeoxys(species, 8, DexScreen_GetDefaultPersonality(species), 1, 40, 104, 0, 0xFFFF);
        gSprites[sPokedexScreenData->windowIds[14]].oam.paletteNum = 2;
        gSprites[sPokedexScreenData->windowIds[14]].oam.affineMode = 1;
        gSprites[sPokedexScreenData->windowIds[14]].oam.matrixNum = 2;
        gSprites[sPokedexScreenData->windowIds[14]].oam.priority = 1;
        gSprites[sPokedexScreenData->windowIds[14]].y2 = gPokedexEntries[speciesId].pokemonOffset;
        SetOamMatrix(2, gPokedexEntries[speciesId].pokemonScale, 0, 0, gPokedexEntries[speciesId].pokemonScale);
        sPokedexScreenData->windowIds[15] = CreateTrainerPicSprite(PlayerGenderToFrontTrainerPicId(gSaveBlock2Ptr->playerGender, 1), 1, 80, 104, 0, 0xFFFF);
        gSprites[sPokedexScreenData->windowIds[15]].oam.paletteNum = 2;
        gSprites[sPokedexScreenData->windowIds[15]].oam.affineMode = 1;
        gSprites[sPokedexScreenData->windowIds[15]].oam.matrixNum = 1;
        gSprites[sPokedexScreenData->windowIds[15]].oam.priority = 1;
        gSprites[sPokedexScreenData->windowIds[15]].y2 = gPokedexEntries[speciesId].trainerOffset;
        SetOamMatrix(1, gPokedexEntries[speciesId].trainerScale, 0, 0, gPokedexEntries[speciesId].trainerScale);
    }
    else
    {
        sPokedexScreenData->windowIds[14] = 0xff;
        sPokedexScreenData->windowIds[15] = 0xff;
    }


    sPokedexScreenData->areaMarkersTaskId = CreatePokedexAreaMarkers(species, 2001, 3, kantoMapVoff * 8);
    if (GetNumPokedexAreaMarkers(sPokedexScreenData->areaMarkersTaskId) == 0)
    {

        BlitBitmapRectToWindow(sPokedexScreenData->windowIds[0], (void *)sBlitTiles_WideEllipse, 0, 0, 88, 16, 4, 28, 88, 16);
        {
            s32 strWidth = GetStringWidth(FONT_SMALL, gText_AreaUnknown, 0);
            DexScreen_AddTextPrinterParameterized(sPokedexScreenData->windowIds[0], FONT_SMALL, gText_AreaUnknown, (96 - strWidth) / 2, 29, 0);
        }
    }
    CopyWindowToVram(sPokedexScreenData->windowIds[0], COPYWIN_GFX);


    FillWindowPixelBuffer(1, ((15) | ((15) << 4)));
    DexScreen_AddTextPrinterParameterized(1, FONT_SMALL, gText_Cry, 8, 2, 4);
    DexScreen_PrintControlInfo(gText_CancelPreviousData);
    PutWindowTilemap(1);
    CopyWindowToVram(1, COPYWIN_GFX);

    return 1;
}


u8 DexScreen_DestroyAreaScreenResources(void)
{
    int i;

    DestroyPokedexAreaMarkers(sPokedexScreenData->areaMarkersTaskId);

    for (i = 0; i < 13; i++)
        DexScreen_RemoveWindow(&sPokedexScreenData->windowIds[i]);
    if (sPokedexScreenData->windowIds[15] != 0xff)
        FreeAndDestroyTrainerPicSprite(sPokedexScreenData->windowIds[15]);
    if (sPokedexScreenData->windowIds[14] != 0xff)
        FreeAndDestroyMonPicSprite(sPokedexScreenData->windowIds[14]);
    return 0;
}

static int DexScreen_CanShowMonInDex(u16 species)
{
    if (IsNationalPokedexEnabled() == 1)
        return 1;
    if (SpeciesToNationalPokedexNum(species) <= NATIONAL_DEX_MEW)
        return 1;
    return 0;
}

static u8 DexScreen_IsPageUnlocked(u8 categoryNum, u8 pageNum)
{
    int i, count;
    u16 species;

    count = gDexCategories[categoryNum].page[pageNum].count;

    for (i = 0; i < 4; i++)
    {
        if (i < count)
        {
            species = gDexCategories[categoryNum].page[pageNum].species[i];
            if (DexScreen_CanShowMonInDex(species) == 1 && DexScreen_GetSetPokedexFlag(species, FLAG_GET_SEEN, 1))
                return 1;
        }
    }
    return 0;
}

static bool8 DexScreen_IsCategoryUnlocked(u8 categoryNum)
{
    int i;
    u8 count;

    count = gDexCategories[categoryNum].count;

    for (i = 0; i < count; i++)
        if (DexScreen_IsPageUnlocked(categoryNum, i))
            return 1;

    return 0;
}

void DexScreen_CreateCategoryPageSpeciesList(u8 categoryNum, u8 pageNum)
{
    int i, count;
    u16 species;

    count = gDexCategories[categoryNum].page[pageNum].count;
    sPokedexScreenData->numMonsOnPage = 0;

    for (i = 0; i < 4; i++)
        sPokedexScreenData->pageSpecies[i] = 0xffff;
    for (i = 0; i < count; i++)
    {
        species = gDexCategories[categoryNum].page[pageNum].species[i];
        if (DexScreen_CanShowMonInDex(species) == 1 && DexScreen_GetSetPokedexFlag(species, FLAG_GET_SEEN, 1))
        {
            sPokedexScreenData->pageSpecies[sPokedexScreenData->numMonsOnPage] = gDexCategories[categoryNum].page[pageNum].species[i];
            sPokedexScreenData->numMonsOnPage++;
        }
    }
}

static u8 DexScreen_GetPageLimitsForCategory(u8 category)
{
    int i;
    u8 count, firstPage, lastPage;

    count = gDexCategories[category].count;
    firstPage = 0xff;
    lastPage = 0xff;

    for (i = 0; i < count; i++)
        if (DexScreen_IsPageUnlocked(category, i))
        {
            if (firstPage == 0xff)
                firstPage = i;
            lastPage = i;
        }
    if (lastPage != 0xff)
    {
        sPokedexScreenData->firstPageInCategory = firstPage;
        sPokedexScreenData->lastPageInCategory = lastPage + 1;
        return 0;
    }
    else
    {
        sPokedexScreenData->firstPageInCategory = 0;
        sPokedexScreenData->lastPageInCategory = 0;
        return 1;
    }
}

static u8 DexScreen_LookUpCategoryBySpecies(u16 species)
{
    int i, j, k, categoryCount, categoryPageCount, posInPage;
    u16 dexSpecies;

    for (i = 0; i < (sizeof(gDexCategories) / sizeof((gDexCategories)[0])); i++)
    {
        categoryCount = gDexCategories[i].count;
        for (j = 0; j < categoryCount; j++)
        {
            categoryPageCount = gDexCategories[i].page[j].count;
            for (k = 0, posInPage = 0; k < categoryPageCount; k++)
            {
                dexSpecies = gDexCategories[i].page[j].species[k];
                if (species == dexSpecies)
                {
                    sPokedexScreenData->category = i;
                    sPokedexScreenData->pageNum = j;
                    sPokedexScreenData->categoryCursorPosInPage = posInPage;
                    return 0;
                }
                if (DexScreen_CanShowMonInDex(dexSpecies) == 1 && DexScreen_GetSetPokedexFlag(dexSpecies, FLAG_GET_SEEN, 1))
                    posInPage++;
            }
        }
    }
    return 1;
}

static u8 DexScreen_PageNumberToRenderablePages(u16 page)
{
    int i, count;

    for (i = 0, count = 0; i < page; i++)
        if (DexScreen_IsPageUnlocked(sPokedexScreenData->category, i))
            count++;

    return count + 1;
}

void DexScreen_InputHandler_StartToCry(void)
{
    if (({(gMain.newKeys) & (0x0008);}))
        PlayCry_NormalNoDucking(sPokedexScreenData->dexSpecies, 0, 125, 10);
}

u8 DexScreen_RegisterMonToPokedex(u16 species)
{
    DexScreen_GetSetPokedexFlag(species, FLAG_SET_SEEN, 1);
    DexScreen_GetSetPokedexFlag(species, FLAG_SET_CAUGHT, 1);

    if (!IsNationalPokedexEnabled() && SpeciesToNationalPokedexNum(species) > NATIONAL_DEX_MEW)
        return CreateTask(Task_DexScreen_RegisterNonKantoMonBeforeNationalDex, 0);

    DexScreen_LoadResources();
    gTasks[sPokedexScreenData->taskId].func = Task_DexScreen_RegisterMonToPokedex;
    DexScreen_LookUpCategoryBySpecies(species);

    return sPokedexScreenData->taskId;
}

static void Task_DexScreen_RegisterNonKantoMonBeforeNationalDex(u8 taskId)
{
    DestroyTask(taskId);
}

static void Task_DexScreen_RegisterMonToPokedex(u8 taskId)
{
    switch (sPokedexScreenData->state)
    {
    case 0:
        DexScreen_GetPageLimitsForCategory(sPokedexScreenData->category);
        if (sPokedexScreenData->pageNum < sPokedexScreenData->firstPageInCategory)
            sPokedexScreenData->pageNum = sPokedexScreenData->firstPageInCategory;
        sPokedexScreenData->state = 3;
        break;
    case 1:
        RemoveDexPageWindows();
        DexScreen_DestroyCategoryPageMonIconAndInfoWindows();

        gMain.state = 0;
        sPokedexScreenData->state = 2;
        break;
    case 2:
        if (DoClosePokedex())
            DestroyTask(taskId);
        break;
    case 3:
        DexScreen_CreateCategoryListGfx(1);
        PutWindowTilemap(0);
        PutWindowTilemap(1);

        CopyBgTilemapBufferToVram(3);
        CopyBgTilemapBufferToVram(2);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(0);

        DexScreen_CreateCategoryPageSelectionCursor(0xff);

        sPokedexScreenData->state = 4;
        break;
    case 4:
        gPaletteFade.bufferTransferDisabled = 0;
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 16, 0, 0xffff);
        ShowBg(3);
        ShowBg(2);
        ShowBg(1);
        ShowBg(0);

        sPokedexScreenData->state = 5;
        break;
    case 5:
        gTasks[taskId].data[0] = 30;
        sPokedexScreenData->categoryPageCursorTaskId = ListMenuAddCursorObjectInternal(&sCursorStruct_CategoryPage, 0);
        sPokedexScreenData->state = 6;
        break;
    case 6:
        DexScreen_CreateCategoryPageSelectionCursor(sPokedexScreenData->categoryCursorPosInPage);
        DexScreen_UpdateCategoryPageCursorObject(sPokedexScreenData->categoryPageCursorTaskId, sPokedexScreenData->categoryCursorPosInPage, sPokedexScreenData->numMonsOnPage);

        if (gTasks[taskId].data[0])
            gTasks[taskId].data[0]--;
        else
        {
            ListMenuRemoveCursorObject(sPokedexScreenData->categoryPageCursorTaskId, 0);
            sPokedexScreenData->state = 7;
        }
        break;
    case 7:
        sPokedexScreenData->dexSpecies = sPokedexScreenData->pageSpecies[sPokedexScreenData->categoryCursorPosInPage];
        sPokedexScreenData->state = 8;
        break;
    case 8:
        DexScreen_DrawMonDexPage(1);
        sPokedexScreenData->state = 9;
        break;
    case 9:
        sPokedexScreenData->data[0] = 0;
        sPokedexScreenData->data[1] = 0;
        sPokedexScreenData->state++;
    case 10:
        if (sPokedexScreenData->data[1] < 6)
        {
            if (sPokedexScreenData->data[0])
            {
                DexScreen_DexPageZoomEffectFrame(0, sPokedexScreenData->data[1]);
                CopyBgTilemapBufferToVram(0);
                sPokedexScreenData->data[0] = 4;
                sPokedexScreenData->data[1]++;
            }
            else
                sPokedexScreenData->data[0]--;
        }
        else
        {
            FillBgTilemapBufferRect_Palette0(0, 0, 0, 2, 30, 16);
            CopyBgTilemapBufferToVram(3);
            CopyBgTilemapBufferToVram(2);
            CopyBgTilemapBufferToVram(1);
            CopyBgTilemapBufferToVram(0);

            PlayCry_NormalNoDucking(sPokedexScreenData->dexSpecies, 0, 125, 10);
            sPokedexScreenData->data[0] = 0;
            sPokedexScreenData->state = 11;
        }
        break;
    case 11:
        if (({(gMain.newKeys) & (0x0001 | 0x0002);}))
            sPokedexScreenData->state = 2;
        break;
    }
}

void DexScreen_PrintStringWithAlignment(const u8 * str, s32 mode)
{
    u32 x;

    switch (mode)
    {
    case TEXT_LEFT:
        x = 8;
        break;
    case TEXT_CENTER:
        x = (u32)(240 - GetStringWidth(FONT_NORMAL, str, 0)) / 2;
        break;
    case TEXT_RIGHT:
    default:
        x = 232 - GetStringWidth(FONT_NORMAL, str, 0);
        break;
    }

    DexScreen_AddTextPrinterParameterized(0, FONT_NORMAL, str, x, 2, 4);
}
