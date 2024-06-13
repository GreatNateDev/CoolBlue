# 0 "src/move_descriptions.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/move_descriptions.c"
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
# 2 "src/move_descriptions.c" 2
# 1 "include/constants/moves.h" 1
# 3 "src/move_descriptions.c" 2

const u8 gMoveDescription_Pound[] = _("A physical attack\ndelivered with a\nlong tail or a\nforeleg, etc.");
const u8 gMoveDescription_KarateChop[] = _("The foe is attacked\nwith a sharp chop.\nIt has a high\ncritical-hit ratio.");
const u8 gMoveDescription_DoubleSlap[] = _("The foe is slapped\nrepeatedly, back\nand forth, two to\nfive times.");
const u8 gMoveDescription_CometPunch[] = _("The foe is hit with\na flurry of punches\nthat strike two to\nfive times.");
const u8 gMoveDescription_MegaPunch[] = _("The foe is slugged\nby a punch thrown\nwith muscle-packed\npower.");
const u8 gMoveDescription_PayDay[] = _("Numerous coins are\nhurled at the foe.\nMoney is earned\nafter battle.");
const u8 gMoveDescription_FirePunch[] = _("The foe is punched\nwith a fiery fist.\nIt may leave the\nfoe with a burn.");
const u8 gMoveDescription_IcePunch[] = _("The foe is punched\nwith an icy fist.\nIt may leave the\nfoe frozen.");
const u8 gMoveDescription_ThunderPunch[] = _("The foe is punched\nwith an electrified\nfist. It may leave\nthe foe paralyzed.");
const u8 gMoveDescription_Scratch[] = _("Hard, pointed, and\nsharp claws rake\nthe foe.");
const u8 gMoveDescription_ViceGrip[] = _("Huge, impressive\npincers grip and\nsqueeze the foe.");
const u8 gMoveDescription_Guillotine[] = _("A vicious tearing\nattack with pincers.\nThe foe will faint\nif it hits.");
const u8 gMoveDescription_RazorWind[] = _("Blades of wind hit\nthe foe on the 2nd\nturn. It has a high\ncritical-hit ratio.");
const u8 gMoveDescription_SwordsDance[] = _("A frenetic dance of\nfighting. It sharply\nraises the ATTACK\nstat.");
const u8 gMoveDescription_Cut[] = _("A basic attack.\nIt can be used to\ncut down thin trees\nand grass.");
const u8 gMoveDescription_Gust[] = _("Strikes the foe\nwith a gust of wind\nwhipped up by\nwings.");
const u8 gMoveDescription_WingAttack[] = _("The foe is struck\nwith large, imposing\nwings spread wide.");
const u8 gMoveDescription_Whirlwind[] = _("The foe is made to\nswitch out with an\nally. In the wild,\nthe battle ends.");
const u8 gMoveDescription_Fly[] = _("A 2-turn move that\nhits on the 2nd\nturn. Use it to fly\nto any known town.");
const u8 gMoveDescription_Bind[] = _("A long body or\ntentacles are used\nto bind the foe for\ntwo to five turns.");
const u8 gMoveDescription_Slam[] = _("The foe is struck\nwith a long tail,\nvines, etc.");
const u8 gMoveDescription_VineWhip[] = _("The foe is struck\nwith slender, whip-\nlike vines.");
const u8 gMoveDescription_Stomp[] = _("The foe is stomped\nwith a big foot.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_DoubleKick[] = _("Two legs are used\nto quickly kick the\nfoe twice in one\nturn.");
const u8 gMoveDescription_MegaKick[] = _("The foe is attacked\nby a kick fired\nwith muscle-packed\npower.");
const u8 gMoveDescription_JumpKick[] = _("The user jumps up\nhigh, then kicks.\nIf it misses, the\nuser hurts itself.");
const u8 gMoveDescription_RollingKick[] = _("A quick kick from a\nrolling spin.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_SandAttack[] = _("A lot of sand is\nhurled in the foe's\nface, reducing its\naccuracy.");
const u8 gMoveDescription_Headbutt[] = _("The user sticks its\nhead out and rams.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_HornAttack[] = _("The foe is jabbed\nwith a sharply\npointed horn to\ninflict damage.");
const u8 gMoveDescription_FuryAttack[] = _("The foe is jabbed\nrepeatedly with a\nhorn or beak two to\nfive times.");
const u8 gMoveDescription_HornDrill[] = _("The horn is rotated\nlike a drill to ram.\nThe foe will faint\nif it hits.");
const u8 gMoveDescription_Tackle[] = _("A physical attack\nin which the user\ncharges, full body,\ninto the foe.");
const u8 gMoveDescription_BodySlam[] = _("The user drops its\nfull body on the\nfoe. It may leave\nthe foe paralyzed.");
const u8 gMoveDescription_Wrap[] = _("A long body or\nvines are used to\nwrap the foe for\ntwo to five turns.");
const u8 gMoveDescription_TakeDown[] = _("A reckless, full-\nbody charge attack\nthat also hurts the\nuser a little.");
const u8 gMoveDescription_Thrash[] = _("The user rampages\nabout for two to\nthree turns, then\nbecomes confused.");
const u8 gMoveDescription_DoubleEdge[] = _("A reckless, life-\nrisking tackle that\nalso hurts the user\na little.");
const u8 gMoveDescription_TailWhip[] = _("The user wags its\ntail cutely, making\nthe foe lower its\nDEFENSE stat.");
const u8 gMoveDescription_PoisonSting[] = _("The foe is stabbed\nwith a toxic barb,\netc. It may poison\nthe foe.");
const u8 gMoveDescription_Twineedle[] = _("The foe is stabbed\ntwice with foreleg\nstingers. It may\npoison the foe.");
const u8 gMoveDescription_PinMissile[] = _("Sharp pins are shot\nat the foe and hit\ntwo to five times\nat once.");
const u8 gMoveDescription_Leer[] = _("The foe is given an\nintimidating look\nthat lowers its\nDEFENSE stat.");
const u8 gMoveDescription_Bite[] = _("The user bites with\nvicious fangs.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_Growl[] = _("The user growls in\na cute way, making\nthe foe lower its\nATTACK stat.");
const u8 gMoveDescription_Roar[] = _("The foe is made to\nswitch out with an\nally. In the wild,\nthe battle ends.");
const u8 gMoveDescription_Sing[] = _("A soothing song\nin a calming voice\nlulls the foe into\na deep slumber.");
const u8 gMoveDescription_Supersonic[] = _("The user generates\nodd sound waves.\nIt may confuse the\nfoe.");
const u8 gMoveDescription_SonicBoom[] = _("The foe is hit with\na shock wave that\nalways inflicts 20-\nHP damage.");
const u8 gMoveDescription_Disable[] = _("For a few turns,\nit prevents the foe\nfrom using the move\nit last used.");
const u8 gMoveDescription_Acid[] = _("The foe is sprayed\nwith a harsh, hide-\nmelting acid that\nmay lower DEFENSE.");
const u8 gMoveDescription_Ember[] = _("The foe is attacked\nwith small flames.\nThe foe may suffer\na burn.");
const u8 gMoveDescription_Flamethrower[] = _("The foe is scorched\nwith intense flames.\nThe foe may suffer\na burn.");
const u8 gMoveDescription_Mist[] = _("The ally party is\nprotected by a\nmist that prevents\nstat reductions.");
const u8 gMoveDescription_WaterGun[] = _("The foe is struck\nwith a lot of water\nexpelled forcibly\nfrom the mouth.");
const u8 gMoveDescription_HydroPump[] = _("A high volume of\nwater is blasted at\nthe foe under great\npressure.");
const u8 gMoveDescription_Surf[] = _("A big wave crashes\ndown on the foe.\nCan also be used\nfor crossing water.");
const u8 gMoveDescription_IceBeam[] = _("The foe is struck\nwith an icy beam.\nIt may freeze the\nfoe solid.");
const u8 gMoveDescription_Blizzard[] = _("The foe is blasted\nwith a blizzard.\nIt may freeze the\nfoe solid.");
const u8 gMoveDescription_Psybeam[] = _("A peculiar ray is\nshot at the foe.\nIt may leave the\nfoe confused.");
const u8 gMoveDescription_BubbleBeam[] = _("A spray of bubbles\nstrikes the foe.\nIt may lower the\nfoe's SPEED stat.");
const u8 gMoveDescription_AuroraBeam[] = _("A rainbow-colored\nattack beam.\nIt may lower the\nfoe's ATTACK stat.");
const u8 gMoveDescription_HyperBeam[] = _("A severely damaging\nattack that makes\nthe user rest on\nthe next turn.");
const u8 gMoveDescription_Peck[] = _("The foe is jabbed\nwith a sharply\npointed beak or\nhorn.");
const u8 gMoveDescription_DrillPeck[] = _("A corkscrewing\nattack with the\nsharp beak acting\nas a drill.");
const u8 gMoveDescription_Submission[] = _("A reckless, full-\nbody throw attack\nthat also hurts the\nuser a little.");
const u8 gMoveDescription_LowKick[] = _("A low, tripping kick\nthat inflicts more\ndamage on heavier\nfoes.");
const u8 gMoveDescription_Counter[] = _("A retaliation move\nthat counters any\nphysical hit with\ndouble the damage.");
const u8 gMoveDescription_SeismicToss[] = _("A gravity-fed throw\nthat causes damage\nmatching the user's\nlevel.");
const u8 gMoveDescription_Strength[] = _("The foe is slugged\nat maximum power.\nCan also be used\nto move boulders.");
const u8 gMoveDescription_Absorb[] = _("An attack that\nabsorbs half the\ndamage it inflicted\nto restore HP.");
const u8 gMoveDescription_MegaDrain[] = _("A tough attack that\ndrains half the\ndamage it inflicted\nto restore HP.");
const u8 gMoveDescription_LeechSeed[] = _("A seed is planted\non the foe to steal\nsome HP for the \nuser on every turn.");
const u8 gMoveDescription_Growth[] = _("The user's body is\nforced to grow,\nraising the SP.\nATK stat.");
const u8 gMoveDescription_RazorLeaf[] = _("The foe is hit with\na cutting leaf.\nIt has a high\ncritical-hit ratio.");
const u8 gMoveDescription_SolarBeam[] = _("A 2-turn move that\nblasts the foe with\nabsorbed energy in\nthe 2nd turn.");
const u8 gMoveDescription_PoisonPowder[] = _("A cloud of toxic\ndust is scattered.\nIt may poison the\nfoe.");
const u8 gMoveDescription_StunSpore[] = _("Paralyzing dust is\nscattered wildly.\nIt may paralyze\nthe foe.");
const u8 gMoveDescription_SleepPowder[] = _("A sleep-inducing\ndust is scattered\nin high volume\naround a foe.");
const u8 gMoveDescription_PetalDance[] = _("The user attacks\nwith petals for two\nto three turns,\nthen gets confused.");
const u8 gMoveDescription_StringShot[] = _("The foe is bound\nwith strings shot\nfrom the mouth to\nreduce its SPEED.");
const u8 gMoveDescription_DragonRage[] = _("The foe is hit with\na shock wave that\nalways inflicts 40-\nHP damage.");
const u8 gMoveDescription_FireSpin[] = _("The foe is trapped\nin an intense spiral\nof fire that rages\ntwo to five turns.");
const u8 gMoveDescription_ThunderShock[] = _("An electric shock\nattack that may\nalso leave the foe\nparalyzed.");
const u8 gMoveDescription_Thunderbolt[] = _("A strong electrical\nattack that may\nalso leave the foe\nparalyzed.");
const u8 gMoveDescription_ThunderWave[] = _("A weak electric\nshock that is sure\nto cause paralysis\nif it hits.");
const u8 gMoveDescription_Thunder[] = _("A brutal lightning\nattack that may\nalso leave the foe\nparalyzed.");
const u8 gMoveDescription_RockThrow[] = _("The foe is attacked\nwith a shower of\nsmall, easily\nthrown rocks.");
const u8 gMoveDescription_Earthquake[] = _("An earthquake that\nstrikes all POKéMON\nin battle excluding\nthe user.");
const u8 gMoveDescription_Fissure[] = _("The foe is dropped\ninto a fissure.\nThe foe faints if it\nhits.");
const u8 gMoveDescription_Dig[] = _("An attack that hits\non the 2nd turn.\nCan also be used\nto exit dungeons.");
const u8 gMoveDescription_Toxic[] = _("A move that badly\npoisons the foe.\nIts poison damage\nworsens every turn.");
const u8 gMoveDescription_Confusion[] = _("A weak telekinetic\nattack that may\nalso leave the foe\nconfused.");
const u8 gMoveDescription_Psychic[] = _("A strong telekinetic\nattack. It may also\nlower the foe's\nSP. DEF stat.");
const u8 gMoveDescription_Hypnosis[] = _("Hypnotic suggestion\nis used to make the\nfoe fall into a\ndeep sleep.");
const u8 gMoveDescription_Meditate[] = _("The user meditates\nto awaken its power\nand raise its\nATTACK stat.");
const u8 gMoveDescription_Agility[] = _("The user relaxes\nand lightens its\nbody to sharply\nboost its SPEED.");
const u8 gMoveDescription_QuickAttack[] = _("An almost invisibly\nfast attack that\nis certain to strike\nfirst.");
const u8 gMoveDescription_Rage[] = _("An attack that\nbecomes stronger\neach time the user\nis hit in battle.");
const u8 gMoveDescription_Teleport[] = _("Use it to flee from\nany wild POKéMON.\nAlso warps to the\nlast POKé CENTER.");
const u8 gMoveDescription_NightShade[] = _("An attack with a\nmirage that inflicts\ndamage matching\nthe user's level.");
const u8 gMoveDescription_Mimic[] = _("The user copies the\nmove last used by\nthe foe for the\nrest of the battle.");
const u8 gMoveDescription_Screech[] = _("An ear-splitting\nscreech is emitted\nto sharply reduce\nthe foe's DEFENSE.");
const u8 gMoveDescription_DoubleTeam[] = _("The user creates\nillusory copies of\nitself to raise its\nevasiveness.");
const u8 gMoveDescription_Recover[] = _("A self-healing move\nthat restores HP by\nup to half of the\nuser's maximum HP.");
const u8 gMoveDescription_Harden[] = _("The user stiffens\nall the muscles in\nits body to raise\nits DEFENSE stat.");
const u8 gMoveDescription_Minimize[] = _("The user compresses\nall the cells in its\nbody to raise its\nevasiveness.");
const u8 gMoveDescription_Smokescreen[] = _("An obscuring cloud\nof smoke or ink\nreduces the foe's\naccuracy.");
const u8 gMoveDescription_ConfuseRay[] = _("The foe is exposed\nto a sinister ray\nthat triggers\nconfusion.");
const u8 gMoveDescription_Withdraw[] = _("The user withdraws\nits body in its hard\nshell, raising its\nDEFENSE stat.");
const u8 gMoveDescription_DefenseCurl[] = _("The user curls up\nto conceal weak\nspots and raise its\nDEFENSE stat.");
const u8 gMoveDescription_Barrier[] = _("The user creates a\nsturdy wall that\nsharply raises its\nDEFENSE stat.");
const u8 gMoveDescription_LightScreen[] = _("A wall of light\ncuts damage from\nSP. ATK attacks\nfor five turns.");
const u8 gMoveDescription_Haze[] = _("Eliminates all stat\nchanges among all\nPOKéMON engaged in\nbattle.");
const u8 gMoveDescription_Reflect[] = _("A wall of light\ncuts damage from\nphysical attacks\nfor five turns.");
const u8 gMoveDescription_FocusEnergy[] = _("The user takes a\ndeep breath and\nfocuses to raise its\ncritical-hit ratio.");
const u8 gMoveDescription_Bide[] = _("The user endures\nattacks for two\nturns, then strikes\nback double.");
const u8 gMoveDescription_Metronome[] = _("Waggles a finger\nand stimulates the\nbrain into using any\nmove at random.");
const u8 gMoveDescription_MirrorMove[] = _("The user counters\nthe move last used\nby the foe with the\nsame move.");
const u8 gMoveDescription_SelfDestruct[] = _("The user blows up\nto inflict severe\ndamage, even\nmaking itself faint.");
const u8 gMoveDescription_EggBomb[] = _("A large egg is\nhurled with great\nforce at the foe to\ninflict damage.");
const u8 gMoveDescription_Lick[] = _("The foe is licked\nand hit with a long\ntongue. It may\nalso paralyze.");
const u8 gMoveDescription_Smog[] = _("The foe is attacked\nwith exhaust gases.\nIt may also poison\nthe foe.");
const u8 gMoveDescription_Sludge[] = _("Toxic sludge is\nhurled at the foe.\nIt may poison the\ntarget.");
const u8 gMoveDescription_BoneClub[] = _("The foe is clubbed\nwith a bone held in\nhand. It may make\nthe foe flinch.");
const u8 gMoveDescription_FireBlast[] = _("The foe is hit with\nan intense flame.\nIt may leave the\ntarget with a burn.");
const u8 gMoveDescription_Waterfall[] = _("A powerful charge\nattack. It can also\nbe used to climb\na waterfall.");
const u8 gMoveDescription_Clamp[] = _("The foe is clamped\nand squeezed by\nthe user's shell for\ntwo to five turns.");
const u8 gMoveDescription_Swift[] = _("Star-shaped rays\nthat never miss are\nfired at all foes in\nbattle.");
const u8 gMoveDescription_SkullBash[] = _("The user raises its\nDEFENSE in the 1st\nturn, then attacks\nin the 2nd turn.");
const u8 gMoveDescription_SpikeCannon[] = _("Sharp spikes are\nfired at the foe to\nstrike two to five\ntimes.");
const u8 gMoveDescription_Constrict[] = _("The foe is attacked\nwith long tentacles\nor vines. It may\nlower SPEED.");
const u8 gMoveDescription_Amnesia[] = _("Forgets about\nsomething and\nsharply raises\nSP. DEF.");
const u8 gMoveDescription_Kinesis[] = _("The user distracts\nthe foe by bending\na spoon. It may\nlower accuracy.");
const u8 gMoveDescription_SoftBoiled[] = _("Heals the user by\nup to half its full\nHP. It can be used\nto heal an ally.");
const u8 gMoveDescription_HiJumpKick[] = _("A strong jumping\nknee kick. If it\nmisses, the user is\nhurt.");
const u8 gMoveDescription_Glare[] = _("The user intimidates\nthe foe with the\ndesign on its belly\nto cause paralysis.");
const u8 gMoveDescription_DreamEater[] = _("Absorbs half the\ndamage it inflicted\non a sleeping foe\nto restore HP.");
const u8 gMoveDescription_PoisonGas[] = _("The foe is sprayed\nwith a cloud of\ntoxic gas that may\npoison the foe.");
const u8 gMoveDescription_Barrage[] = _("Round objects are\nhurled at the foe\nto strike two to\nfive times.");
const u8 gMoveDescription_LeechLife[] = _("An attack that\nabsorbs half the\ndamage it inflicted\nto restore HP.");
const u8 gMoveDescription_LovelyKiss[] = _("The user forces a\nkiss on the foe\nwith a scary face\nthat induces sleep.");
const u8 gMoveDescription_SkyAttack[] = _("A 2nd-turn attack\nmove with a high\ncritical-hit ratio.\nThe foe may flinch.");
const u8 gMoveDescription_Transform[] = _("The user transforms\ninto a copy of the\nfoe with even the\nsame move set.");
const u8 gMoveDescription_Bubble[] = _("A spray of bubbles\nhits the foe.\nIt may lower the\nfoe's SPEED stat.");
const u8 gMoveDescription_DizzyPunch[] = _("The foe is hit with\na rhythmic punch\nthat may leave it\nconfused.");
const u8 gMoveDescription_Spore[] = _("The user scatters\nbursts of fine\nspores that induce\nsleep.");
const u8 gMoveDescription_Flash[] = _("A blast of light\nthat cuts the foe's\naccuracy. It also\nilluminates caves.");
const u8 gMoveDescription_Psywave[] = _("The foe is attacked\nwith an odd, hot\nenergy wave that\nvaries in intensity.");
const u8 gMoveDescription_Splash[] = _("The user just flops\nand splashes around\nwithout having any\neffect.");
const u8 gMoveDescription_AcidArmor[] = _("The user alters its\ncells to liquefy\nitself and sharply\nraise DEFENSE.");
const u8 gMoveDescription_Crabhammer[] = _("A large pincer is\nused to hammer the\nfoe. It has a high\ncritical-hit ratio.");
const u8 gMoveDescription_Explosion[] = _("The user explodes\nto inflict terrible\ndamage even while\nfainting itself.");
const u8 gMoveDescription_FurySwipes[] = _("The foe is raked\nwith sharp claws or\nscythes two to five\ntimes.");
const u8 gMoveDescription_Bonemerang[] = _("The user throws a\nbone that hits the\nfoe once, then once\nagain on return.");
const u8 gMoveDescription_Rest[] = _("The user sleeps for\ntwo turns to fully\nrestore HP and heal\nany status problem.");
const u8 gMoveDescription_RockSlide[] = _("Large boulders are\nhurled at the foe.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_HyperFang[] = _("The foe is attacked\nwith sharp fangs.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_Sharpen[] = _("The user reduces\nits polygon count\nto sharpen edges\nand raise ATTACK.");
const u8 gMoveDescription_Conversion[] = _("The user changes\nits type to match\nthe type of one of\nits moves.");
const u8 gMoveDescription_TriAttack[] = _("A simultaneous\n3-beam attack that\nmay paralyze, burn,\nor freeze the foe.");
const u8 gMoveDescription_SuperFang[] = _("The user attacks\nwith sharp fangs\nand halves the\nfoe's HP.");
const u8 gMoveDescription_Slash[] = _("The foe is slashed\nwith claws, etc.\nIt has a high\ncritical-hit ratio.");
const u8 gMoveDescription_Substitute[] = _("The user creates a\ndecoy using one-\nquarter of its full\nHP.");
const u8 gMoveDescription_Struggle[] = _("An attack that is\nused only if there\nis no PP. It also\nhurts the user.");
const u8 gMoveDescription_Sketch[] = _("This move copies\nthe move last used\nby the foe, then\ndisappears.");
const u8 gMoveDescription_TripleKick[] = _("A 3-kick attack\nthat becomes more\npowerful with each\nsuccessive hit.");
const u8 gMoveDescription_Thief[] = _("An attack that may\ntake the foe's held\nitem if the user\nisn't holding one.");
const u8 gMoveDescription_SpiderWeb[] = _("Ensnares the foe \nwith sticky string\nso it doesn't flee\nor switch out.");
const u8 gMoveDescription_MindReader[] = _("The user predicts\nthe foe's action to\nensure its next\nattack hits.");
const u8 gMoveDescription_Nightmare[] = _("A sleeping foe is\nshown a nightmare\nthat inflicts some\ndamage every turn.");
const u8 gMoveDescription_FlameWheel[] = _("The user makes a\nfiery charge at the\nfoe. It may cause\na burn.");
const u8 gMoveDescription_Snore[] = _("An attack that can\nbe used only while\nasleep. It may\ncause flinching.");
const u8 gMoveDescription_Curse[] = _("A move that works\ndifferently for the\nGHOST-type and all\nthe other types.");
const u8 gMoveDescription_Flail[] = _("A desperate attack\nthat becomes more\npowerful the less\nHP the user has.");
const u8 gMoveDescription_Conversion2[] = _("The user changes\ntype to make itself\nresistant to the\nlast attack it took.");
const u8 gMoveDescription_Aeroblast[] = _("A vortex of air is\nshot at the foe.\nIt has a high\ncritical-hit ratio.");
const u8 gMoveDescription_CottonSpore[] = _("Cotton-like spores\ncling to the foe,\nsharply reducing\nits SPEED stat.");
const u8 gMoveDescription_Reversal[] = _("An all-out attack\nthat becomes more\npowerful the less\nHP the user has.");
const u8 gMoveDescription_Spite[] = _("A move that cuts\n2 to 5 PP from the\nmove last used by\nthe foe.");
const u8 gMoveDescription_PowderSnow[] = _("Blasts the foe with\na snowy gust.\nIt may cause\nfreezing.");
const u8 gMoveDescription_Protect[] = _("Enables the user to\nevade all attacks.\nIt may fail if used\nin succession.");
const u8 gMoveDescription_MachPunch[] = _("A punch thrown at\nblinding speed.\nIt is certain to\nstrike first.");
const u8 gMoveDescription_ScaryFace[] = _("Frightens the foe\nwith a scary face\nto sharply reduce\nits SPEED.");
const u8 gMoveDescription_FaintAttack[] = _("The user draws up\nclose to the foe\ndisarmingly, then\nhits without fail.");
const u8 gMoveDescription_SweetKiss[] = _("The user kisses\nthe foe with sweet\ncuteness that\ncauses confusion.");
const u8 gMoveDescription_BellyDrum[] = _("The user maximizes\nits ATTACK stat at\nthe cost of half\nits full HP.");
const u8 gMoveDescription_SludgeBomb[] = _("Filthy sludge is\nhurled at the foe.\nIt may poison the\ntarget.");
const u8 gMoveDescription_MudSlap[] = _("Mud is hurled in\nthe foe's face to\ninflict damage and\nlower its accuracy.");
const u8 gMoveDescription_Octazooka[] = _("Ink is blasted in\nthe foe's face or\neyes to damage and\nlower accuracy.");
const u8 gMoveDescription_Spikes[] = _("A trap of spikes is\nlaid around the\nfoe's party to hurt\nfoes switching in.");
const u8 gMoveDescription_ZapCannon[] = _("An electric blast is\nfired like a cannon\nto inflict damage\nand paralyze.");
const u8 gMoveDescription_Foresight[] = _("Completely negates\nthe foe's efforts to\nheighten its ability\nto evade.");
const u8 gMoveDescription_DestinyBond[] = _("If the user faints,\nthe foe delivering\nthe final hit also\nfaints.");
const u8 gMoveDescription_PerishSong[] = _("Any battler that\nhears this faints\nin three turns\nunless it switches.");
const u8 gMoveDescription_IcyWind[] = _("A chilling wind is\nused to attack.\nIt also lowers the\nSPEED stat.");
const u8 gMoveDescription_Detect[] = _("Enables the user to\nevade all attacks.\nIt may fail if used\nin succession.");
const u8 gMoveDescription_BoneRush[] = _("The user strikes\nthe foe with a bone\nin hand two to five\ntimes.");
const u8 gMoveDescription_LockOn[] = _("The user locks on\nto the foe, making\nthe next move sure\nto hit.");
const u8 gMoveDescription_Outrage[] = _("The user thrashes\nabout for two to\nthree turns, then\nbecomes confused.");
const u8 gMoveDescription_Sandstorm[] = _("A 5-turn sandstorm\nthat damages all\ntypes except ROCK,\nGROUND, and STEEL.");
const u8 gMoveDescription_GigaDrain[] = _("A harsh attack that\nabsorbs half the\ndamage it inflicted\nto restore HP.");
const u8 gMoveDescription_Endure[] = _("The user endures\nany hit with 1 HP\nleft. It may fail if\nused in succession.");
const u8 gMoveDescription_Charm[] = _("The foe is charmed\nby the user's cute\nappeals, sharply\ncutting its ATTACK.");
const u8 gMoveDescription_Rollout[] = _("A 5-turn rolling\nattack that becomes\nstronger each time\nit hits.");
const u8 gMoveDescription_FalseSwipe[] = _("A restrained attack\nthat always leaves\nthe foe with at\nleast 1 HP.");
const u8 gMoveDescription_Swagger[] = _("A move that makes\nthe foe confused,\nbut also sharply\nraises its ATTACK.");
const u8 gMoveDescription_MilkDrink[] = _("Heals the user by\nup to half its full\nHP. It can be used\nto heal an ally.");
const u8 gMoveDescription_Spark[] = _("An electrically\ncharged tackle that\nmay also paralyze\nthe foe.");
const u8 gMoveDescription_FuryCutter[] = _("An attack that\ngrows stronger on\neach successive\nhit.");
const u8 gMoveDescription_SteelWing[] = _("The foe is hit with\nwings of steel.\nIt may also raise\nthe user's DEFENSE.");
const u8 gMoveDescription_MeanLook[] = _("The foe is fixed\nwith a mean look\nthat prevents it\nfrom escaping.");
const u8 gMoveDescription_Attract[] = _("If it is the other\ngender, the foe is\nmade infatuated and\nunlikely to attack.");
const u8 gMoveDescription_SleepTalk[] = _("While asleep, the\nuser randomly uses\none of the moves it\nknows.");
const u8 gMoveDescription_HealBell[] = _("A soothing bell\nchimes to heal the\nstatus problems of\nall allies.");
const u8 gMoveDescription_Return[] = _("This attack move\ngrows more powerful\nthe more the user\nlikes its TRAINER.");
const u8 gMoveDescription_Present[] = _("The foe is given a\nbooby-trapped gift.\nIt restores HP\nsometimes, however.");
const u8 gMoveDescription_Frustration[] = _("This attack move\ngrows more powerful\nthe less the user\nlikes its TRAINER.");
const u8 gMoveDescription_Safeguard[] = _("It protects the\nuser's party from\nall status problems\nfor five turns.");
const u8 gMoveDescription_PainSplit[] = _("The user adds its\nHP to the foe's HP,\nthen equally shares\nthe total HP.");
const u8 gMoveDescription_SacredFire[] = _("A mystical and\npowerful fire\nattack that may\ninflict a burn.");
const u8 gMoveDescription_Magnitude[] = _("A ground-shaking\nattack against all\nstanding POKéMON.\nIts power varies.");
const u8 gMoveDescription_DynamicPunch[] = _("The foe is punched\nwith the user's full\npower. It confuses\nthe foe if it hits.");
const u8 gMoveDescription_Megahorn[] = _("A brutal ramming\nattack delivered\nwith a tough and\nimpressive horn.");
const u8 gMoveDescription_DragonBreath[] = _("The foe is hit with\nan incredible blast\nof breath that may\nalso paralyze.");
const u8 gMoveDescription_BatonPass[] = _("The user switches\nout, passing along\nany stat changes\nto the new battler.");
const u8 gMoveDescription_Encore[] = _("Makes the foe use\nthe move it last\nused repeatedly for\ntwo to six turns.");
const u8 gMoveDescription_Pursuit[] = _("An attack move that\nworks especially\nwell on a foe that\nis switching out.");
const u8 gMoveDescription_RapidSpin[] = _("An attack that\nfrees the user from\nBIND, WRAP, LEECH\nSEED, and SPIKES.");
const u8 gMoveDescription_SweetScent[] = _("Allures the foe to\nreduce evasiveness.\nIt also attracts\nwild POKéMON.");
const u8 gMoveDescription_IronTail[] = _("An attack with a\nsteel-hard tail.\nIt may lower the\nfoe's DEFENSE stat.");
const u8 gMoveDescription_MetalClaw[] = _("The foe is attacked\nwith steel claws.\nIt may also raise\nthe user's ATTACK.");
const u8 gMoveDescription_VitalThrow[] = _("Makes the user\nattack after the\nfoe. In return,\nit will not miss.");
const u8 gMoveDescription_MorningSun[] = _("Restores the user's\nHP. The amount of\nHP regained varies\nwith the weather.");
const u8 gMoveDescription_Synthesis[] = _("Restores the user's\nHP. The amount of\nHP regained varies\nwith the weather.");
const u8 gMoveDescription_Moonlight[] = _("Restores the user's\nHP. The amount of\nHP regained varies\nwith the weather.");
const u8 gMoveDescription_HiddenPower[] = _("An attack that\nvaries in type and\nintensity depending\non the user.");
const u8 gMoveDescription_CrossChop[] = _("The foe is hit with\ndouble chops.\nIt has a high\ncritical-hit ratio.");
const u8 gMoveDescription_Twister[] = _("A vicious twister\nattacks the foe.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_RainDance[] = _("A heavy rain falls\nfor five turns,\npowering up WATER-\ntype moves.");
const u8 gMoveDescription_SunnyDay[] = _("The sun blazes for\nfive turns, powering\nup FIRE-type\nmoves.");
const u8 gMoveDescription_Crunch[] = _("The foe is crunched\nwith sharp fangs.\nIt may lower the\nfoe's SP. DEF.");
const u8 gMoveDescription_MirrorCoat[] = _("A retaliation move\nthat pays back the\nfoe's special attack\ndouble.");
const u8 gMoveDescription_PsychUp[] = _("The user hypnotizes\nitself into copying\nany stat change\nmade by the foe.");
const u8 gMoveDescription_ExtremeSpeed[] = _("A blindingly speedy\ncharge attack that\nalways goes before\nany other.");
const u8 gMoveDescription_AncientPower[] = _("An ancient power is\nused to attack. It\nmay also raise all\nthe user's stats.");
const u8 gMoveDescription_ShadowBall[] = _("A shadowy blob is\nhurled at the foe.\nMay also lower the\nfoe's SP. DEF.");
const u8 gMoveDescription_FutureSight[] = _("Two turns after\nthis move is used,\nthe foe is attacked\npsychically.");
const u8 gMoveDescription_RockSmash[] = _("An attack that may\nalso cut DEFENSE.\nIt can also smash\ncracked boulders.");
const u8 gMoveDescription_Whirlpool[] = _("The foe is trapped\nin a fast, vicious\nwhirlpool for two\nto five turns.");
const u8 gMoveDescription_BeatUp[] = _("All party POKéMON\njoin in the attack.\nThe more allies,\nthe more damage.");
const u8 gMoveDescription_FakeOut[] = _("An attack that hits\nfirst and causes\nflinching. Usable\nonly on 1st turn.");
const u8 gMoveDescription_Uproar[] = _("The user attacks in\nan uproar that\nprevents sleep for\ntwo to five turns.");
const u8 gMoveDescription_Stockpile[] = _("The user charges\nup power for use\nlater. It can be\nused three times.");
const u8 gMoveDescription_SpitUp[] = _("The power built\nusing STOCKPILE is\nreleased at once\nfor attack.");
const u8 gMoveDescription_Swallow[] = _("The energy it built\nusing STOCKPILE is\nabsorbed to restore\nHP.");
const u8 gMoveDescription_HeatWave[] = _("The user exhales a\nheated breath to\nattack. It may also\ninflict a burn.");
const u8 gMoveDescription_Hail[] = _("A hailstorm lasting\nfive turns damages\nall POKéMON except\nthe ICE-type.");
const u8 gMoveDescription_Torment[] = _("It enrages the foe,\nmaking it incapable\nof using the same\nmove successively.");
const u8 gMoveDescription_Flatter[] = _("Flattery is used to\nconfuse the foe,\nbut its SP. ATK\nalso rises.");
const u8 gMoveDescription_WillOWisp[] = _("A sinister, bluish\nwhite flame is shot\nat the foe to\ninflict a burn.");
const u8 gMoveDescription_Memento[] = _("The user faints,\nbut sharply lowers\nthe foe's ATTACK\nand SP. ATK.");
const u8 gMoveDescription_Facade[] = _("An attack that is\nboosted if user is\nburned, poisoned,\nor paralyzed.");
const u8 gMoveDescription_FocusPunch[] = _("An attack that is\nexecuted last.\nThe user flinches\nif hit beforehand.");
const u8 gMoveDescription_SmellingSalt[] = _("Doubly effective on\na paralyzed foe,\nbut it also cures\nthe foe's paralysis.");
const u8 gMoveDescription_FollowMe[] = _("The user draws\nattention to itself,\nmaking foes attack\nonly the user.");
const u8 gMoveDescription_NaturePower[] = _("An attack that\nchanges type\ndepending on the\nuser's location.");
const u8 gMoveDescription_Charge[] = _("The user charges\npower to boost the\nELECTRIC move it\nuses next.");
const u8 gMoveDescription_Taunt[] = _("The foe is taunted\ninto a rage that\nallows it to use\nonly attack moves.");
const u8 gMoveDescription_HelpingHand[] = _("A move that boosts\nthe power of the\nally's attack in a\nbattle.");
const u8 gMoveDescription_Trick[] = _("A move that tricks\nthe foe into\ntrading held items\nwith the user.");
const u8 gMoveDescription_RolePlay[] = _("The user mimics the\nfoe completely and\ncopies the foe's\nability.");
const u8 gMoveDescription_Wish[] = _("A self-healing move\nthat restores half\nthe full HP on the\nnext turn.");
const u8 gMoveDescription_Assist[] = _("The user randomly\npicks and uses a\nmove of an allied\nPOKéMON.");
const u8 gMoveDescription_Ingrain[] = _("The user lays roots\nthat restore HP on\nevery turn.\nIt can't switch out.");
const u8 gMoveDescription_Superpower[] = _("A powerful attack,\nbut it also lowers\nthe user's ATTACK\nand DEFENSE stats.");
const u8 gMoveDescription_MagicCoat[] = _("Reflects back the\nfoe's LEECH SEED\nand any status-\ndamaging move.");
const u8 gMoveDescription_Recycle[] = _("A move that\nrecycles a used\nitem for use once\nmore.");
const u8 gMoveDescription_Revenge[] = _("An attack move that\ngains in intensity if\nthe target has hurt\nthe user.");
const u8 gMoveDescription_BrickBreak[] = _("An attack that also\nbreaks any barrier\nlike LIGHT SCREEN\nand REFLECT.");
const u8 gMoveDescription_Yawn[] = _("A huge yawn lulls\nthe foe into falling\nasleep on the next\nturn.");
const u8 gMoveDescription_KnockOff[] = _("Knocks down the\nfoe's held item to\nprevent its use\nduring the battle.");
const u8 gMoveDescription_Endeavor[] = _("Gains power the\nfewer HP the user\nhas compared with\nthe foe.");
const u8 gMoveDescription_Eruption[] = _("The higher the\nuser's HP, the more\npowerful this\nattack becomes.");
const u8 gMoveDescription_SkillSwap[] = _("The user employs\nits psychic power\nto swap abilities\nwith the foe.");
const u8 gMoveDescription_Imprison[] = _("Prevents foes from\nusing any move\nthat is also known\nby the user.");
const u8 gMoveDescription_Refresh[] = _("A self-healing move\nthat cures the user\nof a poisoning,\nburn, or paralysis.");
const u8 gMoveDescription_Grudge[] = _("If the user faints,\nthis move deletes\nthe PP of the move\nthat finished it.");
const u8 gMoveDescription_Snatch[] = _("Steals the effects\nof the foe's\nhealing or status-\nchanging move.");
const u8 gMoveDescription_SecretPower[] = _("An attack that may\nhave an additional\neffect that varies\nwith the terrain.");
const u8 gMoveDescription_Dive[] = _("The user dives\nunderwater on the\nfirst turn and\nstrikes next turn.");
const u8 gMoveDescription_ArmThrust[] = _("A quick flurry of\nstraight-arm\npunches that hit\ntwo to five times.");
const u8 gMoveDescription_Camouflage[] = _("Alters the user's\ntype depending on\nthe location's\nterrain.");
const u8 gMoveDescription_TailGlow[] = _("The user flashes a\nlight that sharply\nraises its SP. ATK\nstat.");
const u8 gMoveDescription_LusterPurge[] = _("A burst of light\ninjures the foe. It\nmay also lower the\nfoe's SP. DEF.");
const u8 gMoveDescription_MistBall[] = _("A flurry of down\nhits the foe. It\nmay also lower the\nfoe's SP. ATK.");
const u8 gMoveDescription_FeatherDance[] = _("The foe is covered\nwith a mass of down\nthat sharply cuts\nthe ATTACK stat.");
const u8 gMoveDescription_TeeterDance[] = _("A wobbly dance\nthat confuses all\nthe POKéMON in\nbattle.");
const u8 gMoveDescription_BlazeKick[] = _("A fiery kick with a\nhigh critical-hit\nratio. It may also\nburn the foe.");
const u8 gMoveDescription_MudSport[] = _("Weakens ELECTRIC-\ntype attacks while\nthe user is in the\nbattle.");
const u8 gMoveDescription_IceBall[] = _("A 5-turn rolling\nattack that becomes\nstronger each time\nit rolls.");
const u8 gMoveDescription_NeedleArm[] = _("An attack using\nthorny arms.\nIt may make the\nfoe flinch.");
const u8 gMoveDescription_SlackOff[] = _("The user slacks off\nand restores its HP\nby half its full\nHP.");
const u8 gMoveDescription_HyperVoice[] = _("The user lets loose\na horribly loud\nshout with the\npower to damage.");
const u8 gMoveDescription_PoisonFang[] = _("The foe is bitten\nwith toxic fangs.\nIt may also badly\npoison the foe.");
const u8 gMoveDescription_CrushClaw[] = _("The foe is attacked\nwith sharp claws.\nIt may also lower\nthe foe's DEFENSE.");
const u8 gMoveDescription_BlastBurn[] = _("The foe is hit with\na huge explosion.\nThe user can't move\non the next turn.");
const u8 gMoveDescription_HydroCannon[] = _("The foe is hit with\na watery cannon.\nThe user can't move\non the next turn.");
const u8 gMoveDescription_MeteorMash[] = _("The foe is hit with\na hard, fast punch.\nIt may also raise\nthe user's ATTACK.");
const u8 gMoveDescription_Astonish[] = _("An attack using a\nstartling shout.\nIt also may make\nthe foe flinch.");
const u8 gMoveDescription_WeatherBall[] = _("An attack that\nvaries in power and\ntype depending on\nthe weather.");
const u8 gMoveDescription_Aromatherapy[] = _("A soothing scent is\nreleased to heal\nall status problems\nin the user's party.");
const u8 gMoveDescription_FakeTears[] = _("The user feigns\ncrying to sharply\nlower the foe's\nSP. DEF stat.");
const u8 gMoveDescription_AirCutter[] = _("The foe is hit with\nrazor-like wind.\nIt has a high\ncritical-hit ratio.");
const u8 gMoveDescription_Overheat[] = _("An intense attack\nthat also sharply\nreduces the user's\nSP. ATK stat.");
const u8 gMoveDescription_OdorSleuth[] = _("Completely negates\nthe foe's efforts to\nheighten its ability\nto evade.");
const u8 gMoveDescription_RockTomb[] = _("Boulders are hurled\nat the foe. It also\nlowers the foe's\nSPEED if it hits.");
const u8 gMoveDescription_SilverWind[] = _("The foe is attacked\nwith a silver dust.\nIt may raise all\nthe user's stats.");
const u8 gMoveDescription_MetalSound[] = _("A horrible metallic\nscreech is used to\nsharply lower the\nfoe's SP. DEF.");
const u8 gMoveDescription_GrassWhistle[] = _("A pleasant melody\nis played to lull\nthe foe into a deep\nsleep.");
const u8 gMoveDescription_Tickle[] = _("The foe is made to\nlaugh, reducing its\nATTACK and DEFENSE\nstats.");
const u8 gMoveDescription_CosmicPower[] = _("The user absorbs a\nmystic power to\nraise its DEFENSE\nand SP. DEF.");
const u8 gMoveDescription_WaterSpout[] = _("The higher the\nuser's HP, the more\npowerful this\nattack becomes.");
const u8 gMoveDescription_SignalBeam[] = _("The foe is hit with\na flashing beam\nthat may also\ncause confusion.");
const u8 gMoveDescription_ShadowPunch[] = _("The user throws a\npunch from the\nshadows. It cannot\nbe evaded.");
const u8 gMoveDescription_Extrasensory[] = _("The user attacks\nwith an odd power\nthat may make the\nfoe flinch.");
const u8 gMoveDescription_SkyUppercut[] = _("The user attacks\nwith an uppercut\nthrown skywards\nwith force.");
const u8 gMoveDescription_SandTomb[] = _("The foe is trapped\ninside a painful\nsandstorm for two\nto five turns.");
const u8 gMoveDescription_SheerCold[] = _("The foe is attacked\nwith ultimate cold\nthat causes fainting\nif it hits.");
const u8 gMoveDescription_MuddyWater[] = _("The user attacks\nwith muddy water.\nIt may also lower\nthe foe's accuracy.");
const u8 gMoveDescription_BulletSeed[] = _("The user shoots\nseeds at the foe.\nTwo to five seeds\nare shot at once.");
const u8 gMoveDescription_AerialAce[] = _("An extremely fast\nattack against one\ntarget. It can't be\nevaded.");
const u8 gMoveDescription_IcicleSpear[] = _("Sharp icicles are\nfired at the foe.\nIt strikes two to\nfive times.");
const u8 gMoveDescription_IronDefense[] = _("The user hardens\nits body's surface\nto sharply raise its\nDEFENSE stat.");
const u8 gMoveDescription_Block[] = _("The user blocks the\nfoe's way with arms\nspread wide to\nprevent escape.");
const u8 gMoveDescription_Howl[] = _("The user howls to\nraise its spirit and\nboost its ATTACK\nstat.");
const u8 gMoveDescription_DragonClaw[] = _("Sharp, huge claws\nhook and slash the\nfoe quickly and\nwith great power.");
const u8 gMoveDescription_FrenzyPlant[] = _("The foe is hit with\nan enormous branch.\nThe user can't move\non the next turn.");
const u8 gMoveDescription_BulkUp[] = _("The user bulks up\nits body to boost\nboth its ATTACK and\nDEFENSE stats.");
const u8 gMoveDescription_Bounce[] = _("The user bounces\non the foe on the\n2nd turn. It may\nparalyze the foe.");
const u8 gMoveDescription_MudShot[] = _("The user attacks by\nhurling mud.\nIt also reduces the\nfoe's SPEED.");
const u8 gMoveDescription_PoisonTail[] = _("An attack with a\nhigh critical-hit\nratio. It may also\npoison the foe.");
const u8 gMoveDescription_Covet[] = _("A cutely executed\nattack that also\nsteals the foe's\nhold item.");
const u8 gMoveDescription_VoltTackle[] = _("The user throws an\nelectrified tackle.\nIt hurts the user\na little.");
const u8 gMoveDescription_MagicalLeaf[] = _("The foe is attacked\nwith a strange leaf\nthat cannot be\nevaded.");
const u8 gMoveDescription_WaterSport[] = _("Weakens FIRE-type\nattacks while the\nuser is in the\nbattle.");
const u8 gMoveDescription_CalmMind[] = _("The user focuses\nits mind to raise\nthe SP. ATK and\nSP. DEF stats.");
const u8 gMoveDescription_LeafBlade[] = _("The foe is slashed\nwith a sharp leaf.\nIt has a high\ncritical-hit ratio.");
const u8 gMoveDescription_DragonDance[] = _("A mystic, powerful\ndance that boosts\nthe user's ATTACK\nand SPEED stats.");
const u8 gMoveDescription_RockBlast[] = _("The user hurls two\nto five hard rocks\nat the foe to\nattack.");
const u8 gMoveDescription_ShockWave[] = _("A rapid jolt of\nelectricity strikes\nthe foe. It can't\nbe evaded.");
const u8 gMoveDescription_WaterPulse[] = _("An attack with a\npulsing blast of\nwater. It may also\nconfuse the foe.");
const u8 gMoveDescription_DoomDesire[] = _("A move that attacks\nthe foe with a\nblast of light two\nturns after use.");
const u8 gMoveDescription_PsychoBoost[] = _("An intense attack\nthat also sharply\nreduces the user's\nSP. ATK stat.");

const u8 *const gMoveDescriptionPointers[355 - 1] = {
    [1 - 1] = gMoveDescription_Pound,
    [2 - 1] = gMoveDescription_KarateChop,
    [3 - 1] = gMoveDescription_DoubleSlap,
    [4 - 1] = gMoveDescription_CometPunch,
    [5 - 1] = gMoveDescription_MegaPunch,
    [6 - 1] = gMoveDescription_PayDay,
    [7 - 1] = gMoveDescription_FirePunch,
    [8 - 1] = gMoveDescription_IcePunch,
    [9 - 1] = gMoveDescription_ThunderPunch,
    [10 - 1] = gMoveDescription_Scratch,
    [11 - 1] = gMoveDescription_ViceGrip,
    [12 - 1] = gMoveDescription_Guillotine,
    [13 - 1] = gMoveDescription_RazorWind,
    [14 - 1] = gMoveDescription_SwordsDance,
    [15 - 1] = gMoveDescription_Cut,
    [16 - 1] = gMoveDescription_Gust,
    [17 - 1] = gMoveDescription_WingAttack,
    [18 - 1] = gMoveDescription_Whirlwind,
    [19 - 1] = gMoveDescription_Fly,
    [20 - 1] = gMoveDescription_Bind,
    [21 - 1] = gMoveDescription_Slam,
    [22 - 1] = gMoveDescription_VineWhip,
    [23 - 1] = gMoveDescription_Stomp,
    [24 - 1] = gMoveDescription_DoubleKick,
    [25 - 1] = gMoveDescription_MegaKick,
    [26 - 1] = gMoveDescription_JumpKick,
    [27 - 1] = gMoveDescription_RollingKick,
    [28 - 1] = gMoveDescription_SandAttack,
    [29 - 1] = gMoveDescription_Headbutt,
    [30 - 1] = gMoveDescription_HornAttack,
    [31 - 1] = gMoveDescription_FuryAttack,
    [32 - 1] = gMoveDescription_HornDrill,
    [33 - 1] = gMoveDescription_Tackle,
    [34 - 1] = gMoveDescription_BodySlam,
    [35 - 1] = gMoveDescription_Wrap,
    [36 - 1] = gMoveDescription_TakeDown,
    [37 - 1] = gMoveDescription_Thrash,
    [38 - 1] = gMoveDescription_DoubleEdge,
    [39 - 1] = gMoveDescription_TailWhip,
    [40 - 1] = gMoveDescription_PoisonSting,
    [41 - 1] = gMoveDescription_Twineedle,
    [42 - 1] = gMoveDescription_PinMissile,
    [43 - 1] = gMoveDescription_Leer,
    [44 - 1] = gMoveDescription_Bite,
    [45 - 1] = gMoveDescription_Growl,
    [46 - 1] = gMoveDescription_Roar,
    [47 - 1] = gMoveDescription_Sing,
    [48 - 1] = gMoveDescription_Supersonic,
    [49 - 1] = gMoveDescription_SonicBoom,
    [50 - 1] = gMoveDescription_Disable,
    [51 - 1] = gMoveDescription_Acid,
    [52 - 1] = gMoveDescription_Ember,
    [53 - 1] = gMoveDescription_Flamethrower,
    [54 - 1] = gMoveDescription_Mist,
    [55 - 1] = gMoveDescription_WaterGun,
    [56 - 1] = gMoveDescription_HydroPump,
    [57 - 1] = gMoveDescription_Surf,
    [58 - 1] = gMoveDescription_IceBeam,
    [59 - 1] = gMoveDescription_Blizzard,
    [60 - 1] = gMoveDescription_Psybeam,
    [61 - 1] = gMoveDescription_BubbleBeam,
    [62 - 1] = gMoveDescription_AuroraBeam,
    [63 - 1] = gMoveDescription_HyperBeam,
    [64 - 1] = gMoveDescription_Peck,
    [65 - 1] = gMoveDescription_DrillPeck,
    [66 - 1] = gMoveDescription_Submission,
    [67 - 1] = gMoveDescription_LowKick,
    [68 - 1] = gMoveDescription_Counter,
    [69 - 1] = gMoveDescription_SeismicToss,
    [70 - 1] = gMoveDescription_Strength,
    [71 - 1] = gMoveDescription_Absorb,
    [72 - 1] = gMoveDescription_MegaDrain,
    [73 - 1] = gMoveDescription_LeechSeed,
    [74 - 1] = gMoveDescription_Growth,
    [75 - 1] = gMoveDescription_RazorLeaf,
    [76 - 1] = gMoveDescription_SolarBeam,
    [77 - 1] = gMoveDescription_PoisonPowder,
    [78 - 1] = gMoveDescription_StunSpore,
    [79 - 1] = gMoveDescription_SleepPowder,
    [80 - 1] = gMoveDescription_PetalDance,
    [81 - 1] = gMoveDescription_StringShot,
    [82 - 1] = gMoveDescription_DragonRage,
    [83 - 1] = gMoveDescription_FireSpin,
    [84 - 1] = gMoveDescription_ThunderShock,
    [85 - 1] = gMoveDescription_Thunderbolt,
    [86 - 1] = gMoveDescription_ThunderWave,
    [87 - 1] = gMoveDescription_Thunder,
    [88 - 1] = gMoveDescription_RockThrow,
    [89 - 1] = gMoveDescription_Earthquake,
    [90 - 1] = gMoveDescription_Fissure,
    [91 - 1] = gMoveDescription_Dig,
    [92 - 1] = gMoveDescription_Toxic,
    [93 - 1] = gMoveDescription_Confusion,
    [94 - 1] = gMoveDescription_Psychic,
    [95 - 1] = gMoveDescription_Hypnosis,
    [96 - 1] = gMoveDescription_Meditate,
    [97 - 1] = gMoveDescription_Agility,
    [98 - 1] = gMoveDescription_QuickAttack,
    [99 - 1] = gMoveDescription_Rage,
    [100 - 1] = gMoveDescription_Teleport,
    [101 - 1] = gMoveDescription_NightShade,
    [102 - 1] = gMoveDescription_Mimic,
    [103 - 1] = gMoveDescription_Screech,
    [104 - 1] = gMoveDescription_DoubleTeam,
    [105 - 1] = gMoveDescription_Recover,
    [106 - 1] = gMoveDescription_Harden,
    [107 - 1] = gMoveDescription_Minimize,
    [108 - 1] = gMoveDescription_Smokescreen,
    [109 - 1] = gMoveDescription_ConfuseRay,
    [110 - 1] = gMoveDescription_Withdraw,
    [111 - 1] = gMoveDescription_DefenseCurl,
    [112 - 1] = gMoveDescription_Barrier,
    [113 - 1] = gMoveDescription_LightScreen,
    [114 - 1] = gMoveDescription_Haze,
    [115 - 1] = gMoveDescription_Reflect,
    [116 - 1] = gMoveDescription_FocusEnergy,
    [117 - 1] = gMoveDescription_Bide,
    [118 - 1] = gMoveDescription_Metronome,
    [119 - 1] = gMoveDescription_MirrorMove,
    [120 - 1] = gMoveDescription_SelfDestruct,
    [121 - 1] = gMoveDescription_EggBomb,
    [122 - 1] = gMoveDescription_Lick,
    [123 - 1] = gMoveDescription_Smog,
    [124 - 1] = gMoveDescription_Sludge,
    [125 - 1] = gMoveDescription_BoneClub,
    [126 - 1] = gMoveDescription_FireBlast,
    [127 - 1] = gMoveDescription_Waterfall,
    [128 - 1] = gMoveDescription_Clamp,
    [129 - 1] = gMoveDescription_Swift,
    [130 - 1] = gMoveDescription_SkullBash,
    [131 - 1] = gMoveDescription_SpikeCannon,
    [132 - 1] = gMoveDescription_Constrict,
    [133 - 1] = gMoveDescription_Amnesia,
    [134 - 1] = gMoveDescription_Kinesis,
    [135 - 1] = gMoveDescription_SoftBoiled,
    [136 - 1] = gMoveDescription_HiJumpKick,
    [137 - 1] = gMoveDescription_Glare,
    [138 - 1] = gMoveDescription_DreamEater,
    [139 - 1] = gMoveDescription_PoisonGas,
    [140 - 1] = gMoveDescription_Barrage,
    [141 - 1] = gMoveDescription_LeechLife,
    [142 - 1] = gMoveDescription_LovelyKiss,
    [143 - 1] = gMoveDescription_SkyAttack,
    [144 - 1] = gMoveDescription_Transform,
    [145 - 1] = gMoveDescription_Bubble,
    [146 - 1] = gMoveDescription_DizzyPunch,
    [147 - 1] = gMoveDescription_Spore,
    [148 - 1] = gMoveDescription_Flash,
    [149 - 1] = gMoveDescription_Psywave,
    [150 - 1] = gMoveDescription_Splash,
    [151 - 1] = gMoveDescription_AcidArmor,
    [152 - 1] = gMoveDescription_Crabhammer,
    [153 - 1] = gMoveDescription_Explosion,
    [154 - 1] = gMoveDescription_FurySwipes,
    [155 - 1] = gMoveDescription_Bonemerang,
    [156 - 1] = gMoveDescription_Rest,
    [157 - 1] = gMoveDescription_RockSlide,
    [158 - 1] = gMoveDescription_HyperFang,
    [159 - 1] = gMoveDescription_Sharpen,
    [160 - 1] = gMoveDescription_Conversion,
    [161 - 1] = gMoveDescription_TriAttack,
    [162 - 1] = gMoveDescription_SuperFang,
    [163 - 1] = gMoveDescription_Slash,
    [164 - 1] = gMoveDescription_Substitute,
    [165 - 1] = gMoveDescription_Struggle,
    [166 - 1] = gMoveDescription_Sketch,
    [167 - 1] = gMoveDescription_TripleKick,
    [168 - 1] = gMoveDescription_Thief,
    [169 - 1] = gMoveDescription_SpiderWeb,
    [170 - 1] = gMoveDescription_MindReader,
    [171 - 1] = gMoveDescription_Nightmare,
    [172 - 1] = gMoveDescription_FlameWheel,
    [173 - 1] = gMoveDescription_Snore,
    [174 - 1] = gMoveDescription_Curse,
    [175 - 1] = gMoveDescription_Flail,
    [176 - 1] = gMoveDescription_Conversion2,
    [177 - 1] = gMoveDescription_Aeroblast,
    [178 - 1] = gMoveDescription_CottonSpore,
    [179 - 1] = gMoveDescription_Reversal,
    [180 - 1] = gMoveDescription_Spite,
    [181 - 1] = gMoveDescription_PowderSnow,
    [182 - 1] = gMoveDescription_Protect,
    [183 - 1] = gMoveDescription_MachPunch,
    [184 - 1] = gMoveDescription_ScaryFace,
    [185 - 1] = gMoveDescription_FaintAttack,
    [186 - 1] = gMoveDescription_SweetKiss,
    [187 - 1] = gMoveDescription_BellyDrum,
    [188 - 1] = gMoveDescription_SludgeBomb,
    [189 - 1] = gMoveDescription_MudSlap,
    [190 - 1] = gMoveDescription_Octazooka,
    [191 - 1] = gMoveDescription_Spikes,
    [192 - 1] = gMoveDescription_ZapCannon,
    [193 - 1] = gMoveDescription_Foresight,
    [194 - 1] = gMoveDescription_DestinyBond,
    [195 - 1] = gMoveDescription_PerishSong,
    [196 - 1] = gMoveDescription_IcyWind,
    [197 - 1] = gMoveDescription_Detect,
    [198 - 1] = gMoveDescription_BoneRush,
    [199 - 1] = gMoveDescription_LockOn,
    [200 - 1] = gMoveDescription_Outrage,
    [201 - 1] = gMoveDescription_Sandstorm,
    [202 - 1] = gMoveDescription_GigaDrain,
    [203 - 1] = gMoveDescription_Endure,
    [204 - 1] = gMoveDescription_Charm,
    [205 - 1] = gMoveDescription_Rollout,
    [206 - 1] = gMoveDescription_FalseSwipe,
    [207 - 1] = gMoveDescription_Swagger,
    [208 - 1] = gMoveDescription_MilkDrink,
    [209 - 1] = gMoveDescription_Spark,
    [210 - 1] = gMoveDescription_FuryCutter,
    [211 - 1] = gMoveDescription_SteelWing,
    [212 - 1] = gMoveDescription_MeanLook,
    [213 - 1] = gMoveDescription_Attract,
    [214 - 1] = gMoveDescription_SleepTalk,
    [215 - 1] = gMoveDescription_HealBell,
    [216 - 1] = gMoveDescription_Return,
    [217 - 1] = gMoveDescription_Present,
    [218 - 1] = gMoveDescription_Frustration,
    [219 - 1] = gMoveDescription_Safeguard,
    [220 - 1] = gMoveDescription_PainSplit,
    [221 - 1] = gMoveDescription_SacredFire,
    [222 - 1] = gMoveDescription_Magnitude,
    [223 - 1] = gMoveDescription_DynamicPunch,
    [224 - 1] = gMoveDescription_Megahorn,
    [225 - 1] = gMoveDescription_DragonBreath,
    [226 - 1] = gMoveDescription_BatonPass,
    [227 - 1] = gMoveDescription_Encore,
    [228 - 1] = gMoveDescription_Pursuit,
    [229 - 1] = gMoveDescription_RapidSpin,
    [230 - 1] = gMoveDescription_SweetScent,
    [231 - 1] = gMoveDescription_IronTail,
    [232 - 1] = gMoveDescription_MetalClaw,
    [233 - 1] = gMoveDescription_VitalThrow,
    [234 - 1] = gMoveDescription_MorningSun,
    [235 - 1] = gMoveDescription_Synthesis,
    [236 - 1] = gMoveDescription_Moonlight,
    [237 - 1] = gMoveDescription_HiddenPower,
    [238 - 1] = gMoveDescription_CrossChop,
    [239 - 1] = gMoveDescription_Twister,
    [240 - 1] = gMoveDescription_RainDance,
    [241 - 1] = gMoveDescription_SunnyDay,
    [242 - 1] = gMoveDescription_Crunch,
    [243 - 1] = gMoveDescription_MirrorCoat,
    [244 - 1] = gMoveDescription_PsychUp,
    [245 - 1] = gMoveDescription_ExtremeSpeed,
    [246 - 1] = gMoveDescription_AncientPower,
    [247 - 1] = gMoveDescription_ShadowBall,
    [248 - 1] = gMoveDescription_FutureSight,
    [249 - 1] = gMoveDescription_RockSmash,
    [250 - 1] = gMoveDescription_Whirlpool,
    [251 - 1] = gMoveDescription_BeatUp,
    [252 - 1] = gMoveDescription_FakeOut,
    [253 - 1] = gMoveDescription_Uproar,
    [254 - 1] = gMoveDescription_Stockpile,
    [255 - 1] = gMoveDescription_SpitUp,
    [256 - 1] = gMoveDescription_Swallow,
    [257 - 1] = gMoveDescription_HeatWave,
    [258 - 1] = gMoveDescription_Hail,
    [259 - 1] = gMoveDescription_Torment,
    [260 - 1] = gMoveDescription_Flatter,
    [261 - 1] = gMoveDescription_WillOWisp,
    [262 - 1] = gMoveDescription_Memento,
    [263 - 1] = gMoveDescription_Facade,
    [264 - 1] = gMoveDescription_FocusPunch,
    [265 - 1] = gMoveDescription_SmellingSalt,
    [266 - 1] = gMoveDescription_FollowMe,
    [267 - 1] = gMoveDescription_NaturePower,
    [268 - 1] = gMoveDescription_Charge,
    [269 - 1] = gMoveDescription_Taunt,
    [270 - 1] = gMoveDescription_HelpingHand,
    [271 - 1] = gMoveDescription_Trick,
    [272 - 1] = gMoveDescription_RolePlay,
    [273 - 1] = gMoveDescription_Wish,
    [274 - 1] = gMoveDescription_Assist,
    [275 - 1] = gMoveDescription_Ingrain,
    [276 - 1] = gMoveDescription_Superpower,
    [277 - 1] = gMoveDescription_MagicCoat,
    [278 - 1] = gMoveDescription_Recycle,
    [279 - 1] = gMoveDescription_Revenge,
    [280 - 1] = gMoveDescription_BrickBreak,
    [281 - 1] = gMoveDescription_Yawn,
    [282 - 1] = gMoveDescription_KnockOff,
    [283 - 1] = gMoveDescription_Endeavor,
    [284 - 1] = gMoveDescription_Eruption,
    [285 - 1] = gMoveDescription_SkillSwap,
    [286 - 1] = gMoveDescription_Imprison,
    [287 - 1] = gMoveDescription_Refresh,
    [288 - 1] = gMoveDescription_Grudge,
    [289 - 1] = gMoveDescription_Snatch,
    [290 - 1] = gMoveDescription_SecretPower,
    [291 - 1] = gMoveDescription_Dive,
    [292 - 1] = gMoveDescription_ArmThrust,
    [293 - 1] = gMoveDescription_Camouflage,
    [294 - 1] = gMoveDescription_TailGlow,
    [295 - 1] = gMoveDescription_LusterPurge,
    [296 - 1] = gMoveDescription_MistBall,
    [297 - 1] = gMoveDescription_FeatherDance,
    [298 - 1] = gMoveDescription_TeeterDance,
    [299 - 1] = gMoveDescription_BlazeKick,
    [300 - 1] = gMoveDescription_MudSport,
    [301 - 1] = gMoveDescription_IceBall,
    [302 - 1] = gMoveDescription_NeedleArm,
    [303 - 1] = gMoveDescription_SlackOff,
    [304 - 1] = gMoveDescription_HyperVoice,
    [305 - 1] = gMoveDescription_PoisonFang,
    [306 - 1] = gMoveDescription_CrushClaw,
    [307 - 1] = gMoveDescription_BlastBurn,
    [308 - 1] = gMoveDescription_HydroCannon,
    [309 - 1] = gMoveDescription_MeteorMash,
    [310 - 1] = gMoveDescription_Astonish,
    [311 - 1] = gMoveDescription_WeatherBall,
    [312 - 1] = gMoveDescription_Aromatherapy,
    [313 - 1] = gMoveDescription_FakeTears,
    [314 - 1] = gMoveDescription_AirCutter,
    [315 - 1] = gMoveDescription_Overheat,
    [316 - 1] = gMoveDescription_OdorSleuth,
    [317 - 1] = gMoveDescription_RockTomb,
    [318 - 1] = gMoveDescription_SilverWind,
    [319 - 1] = gMoveDescription_MetalSound,
    [320 - 1] = gMoveDescription_GrassWhistle,
    [321 - 1] = gMoveDescription_Tickle,
    [322 - 1] = gMoveDescription_CosmicPower,
    [323 - 1] = gMoveDescription_WaterSpout,
    [324 - 1] = gMoveDescription_SignalBeam,
    [325 - 1] = gMoveDescription_ShadowPunch,
    [326 - 1] = gMoveDescription_Extrasensory,
    [327 - 1] = gMoveDescription_SkyUppercut,
    [328 - 1] = gMoveDescription_SandTomb,
    [329 - 1] = gMoveDescription_SheerCold,
    [330 - 1] = gMoveDescription_MuddyWater,
    [331 - 1] = gMoveDescription_BulletSeed,
    [332 - 1] = gMoveDescription_AerialAce,
    [333 - 1] = gMoveDescription_IcicleSpear,
    [334 - 1] = gMoveDescription_IronDefense,
    [335 - 1] = gMoveDescription_Block,
    [336 - 1] = gMoveDescription_Howl,
    [337 - 1] = gMoveDescription_DragonClaw,
    [338 - 1] = gMoveDescription_FrenzyPlant,
    [339 - 1] = gMoveDescription_BulkUp,
    [340 - 1] = gMoveDescription_Bounce,
    [341 - 1] = gMoveDescription_MudShot,
    [342 - 1] = gMoveDescription_PoisonTail,
    [343 - 1] = gMoveDescription_Covet,
    [344 - 1] = gMoveDescription_VoltTackle,
    [345 - 1] = gMoveDescription_MagicalLeaf,
    [346 - 1] = gMoveDescription_WaterSport,
    [347 - 1] = gMoveDescription_CalmMind,
    [348 - 1] = gMoveDescription_LeafBlade,
    [349 - 1] = gMoveDescription_DragonDance,
    [350 - 1] = gMoveDescription_RockBlast,
    [351 - 1] = gMoveDescription_ShockWave,
    [352 - 1] = gMoveDescription_WaterPulse,
    [353 - 1] = gMoveDescription_DoomDesire,
    [354 - 1] = gMoveDescription_PsychoBoost,
};
