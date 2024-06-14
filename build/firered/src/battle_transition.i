# 0 "src/battle_transition.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/battle_transition.c"
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
# 2 "src/battle_transition.c" 2
# 1 "include/sprite.h" 1
# 3 "src/battle_transition.c" 2
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
# 4 "src/battle_transition.c" 2
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
# 5 "src/battle_transition.c" 2
# 1 "include/malloc.h" 1
# 19 "include/malloc.h"
extern u8 gHeap[];
void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 6 "src/battle_transition.c" 2
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
# 7 "src/battle_transition.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[];

s16 Sin(s16 index, s16 amplitude);
s16 Cos(s16 index, s16 amplitude);
s16 Sin2(u16 angle);
s16 Cos2(u16 angle);
# 8 "src/battle_transition.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 9 "src/battle_transition.c" 2
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
# 10 "src/battle_transition.c" 2
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
# 11 "src/battle_transition.c" 2
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
# 12 "src/battle_transition.c" 2
# 1 "include/battle_transition.h" 1





enum
{
    MUGSHOT_LORELEI,
    MUGSHOT_BRUNO,
    MUGSHOT_AGATHA,
    MUGSHOT_LANCE,
    MUGSHOT_BLUE,
    MUGSHOTS_COUNT
};

enum {
    B_TRANSITION_BLUR,
    B_TRANSITION_SWIRL,
    B_TRANSITION_SHUFFLE,
    B_TRANSITION_BIG_POKEBALL,
    B_TRANSITION_POKEBALLS_TRAIL,
    B_TRANSITION_CLOCKWISE_WIPE,
    B_TRANSITION_RIPPLE,
    B_TRANSITION_WAVE,
    B_TRANSITION_SLICE,
    B_TRANSITION_WHITE_BARS_FADE,
    B_TRANSITION_GRID_SQUARES,
    B_TRANSITION_ANGLED_WIPES,
    B_TRANSITION_LORELEI,
    B_TRANSITION_BRUNO,
    B_TRANSITION_AGATHA,
    B_TRANSITION_LANCE,
    B_TRANSITION_BLUE,
    B_TRANSITION_SPIRAL,
    B_TRANSITION_COUNT
};

extern const struct SpritePalette gSpritePalette_Pokeball;

bool8 IsBattleTransitionDone(void);
void BattleTransition_StartOnField(u8 transitionId);
bool8 FldEff_PokeballTrail(void);
# 13 "src/battle_transition.c" 2
# 1 "include/field_effect.h" 1




# 1 "include/constants/field_effects.h" 1
# 6 "include/field_effect.h" 2

extern u32 gFieldEffectArguments[8];
extern void (*gPostMenuFieldCallback)(void);
extern bool8 (*gFieldCallback2)(void);

u32 FieldEffectStart(u8);
bool8 FieldEffectActiveListContains(u8 id);
void CreateTeleportFieldEffectTask(void);
void FieldEffectActiveListRemove(u8 id);
void StartEscapeRopeFieldEffect(void);
void FieldEffectStop(struct Sprite *sprite, u8 id);
u8 CreateTrainerSprite(u8 trainerSpriteID, s16 x, s16 y, u8 subpriority, u8 *buffer);
void FieldCB_FallWarpExit(void);
void StartEscalatorWarp(u8 metatileBehavior, u8 priority);
void StartLavaridgeGymB1FWarp(u8 a0);
void StartLavaridgeGym1FWarp(u8 a0);
void ApplyGlobalFieldPaletteTint(u8 paletteIdx);
void FreeResourcesAndDestroySprite(struct Sprite *sprite, u8 spriteId);
u8 CreateMonSprite_PicBox(u16 species, s16 x, s16 y, bool8 unused);
void ReturnToFieldFromFlyMapSelect(void);
void MultiplyInvertedPaletteRGBComponents(u16 i, u8 r, u8 g, u8 b);
void SpriteCB_PopOutOfAsh(struct Sprite *sprite);
void SpriteCB_AshLaunch(struct Sprite *sprite);
void FieldEffectActiveListClear(void);
# 14 "src/battle_transition.c" 2
# 1 "include/field_weather.h" 1




# 1 "include/constants/field_weather.h" 1
# 6 "include/field_weather.h" 2


enum {
    GFXTAG_CLOUD = 0x1200,
    GFXTAG_FOG_H,
    GFXTAG_ASH,
    GFXTAG_FOG_D,
    GFXTAG_SANDSTORM,
    GFXTAG_BUBBLE,
    GFXTAG_RAIN,
};
enum {
    PALTAG_WEATHER = 0x1200,
};

struct Weather
{
    union
    {
        struct
        {
            struct Sprite *rainSprites[24];
            struct Sprite *snowflakeSprites[101];
            struct Sprite *cloudSprites[3];
        } s1;
        struct
        {
            u8 filler0[0xA0];
            struct Sprite *fogHSprites[20];
            struct Sprite *ashSprites[20];
            struct Sprite *fogDSprites[20];
            struct Sprite *sandstormSprites1[20];
            struct Sprite *sandstormSprites2[5];
        } s2;
    } sprites;
    u8 gammaShifts[19][32];
    u8 altGammaShifts[19][32];
    s8 gammaIndex;
    s8 gammaTargetIndex;
    u8 gammaStepDelay;
    u8 gammaStepFrameCounter;
    u16 fadeDestColor;
    u8 palProcessingState;
    u8 fadeScreenCounter;
    bool8 readyForInit;
    u8 taskId;
    u8 fadeInActive;
    u8 fadeInCounter;
    u16 initStep;
    u16 finishStep;
    u8 currWeather;
    u8 nextWeather;
    u8 weatherGfxLoaded;
    bool8 weatherChangeComplete;
    u8 weatherPicSpritePalIndex;
    u8 altGammaSpritePalIndex;
    u16 rainSpriteVisibleCounter;
    u8 curRainSpriteIndex;
    u8 targetRainSpriteCount;
    u8 rainSpriteCount;
    u8 rainSpriteVisibleDelay;
    u8 isDownpour;
    u8 rainStrength;
    bool8 cloudSpritesCreated;
    u16 snowflakeVisibleCounter;
    u16 snowflakeTimer;
    u8 snowflakeSpriteCount;
    u8 targetSnowflakeSpriteCount;
    u16 thunderDelay;
    u16 thunderCounter;
    bool8 thunderAllowEnd;
    bool8 thunderSkipShort;
    u8 thunderShortRetries;
    bool8 thunderTriggered;
    u16 fogHScrollPosX;
    u16 fogHScrollCounter;
    u16 fogHScrollOffset;
    u8 lightenedFogSpritePals[6];
    u8 lightenedFogSpritePalsCount;
    bool8 fogHSpritesCreated;
    u16 ashBaseSpritesX;
    u16 ashUnused;
    bool8 ashSpritesCreated;
    u32 sandstormXOffset;
    u32 sandstormYOffset;
    u8 filler_70C[2];
    u16 sandstormBaseSpritesX;
    u16 sandstormPosY;
    u16 sandstormWaveIndex;
    u16 sandstormWaveCounter;
    bool8 sandstormSpritesCreated;
    bool8 sandstormSwirlSpritesCreated;
    u16 fogDBaseSpritesX;
    u16 fogDPosY;
    u16 fogDScrollXCounter;
    u16 fogDScrollYCounter;
    u16 fogDXOffset;
    u16 fogDYOffset;
    bool8 fogDSpritesCreated;
    u16 bubblesDelayCounter;
    u16 bubblesDelayIndex;
    u16 bubblesCoordsIndex;
    u16 bubblesSpriteCount;
    bool8 bubblesSpritesCreated;
    u16 currBlendEVA;
    u16 currBlendEVB;
    u16 targetBlendEVA;
    u16 targetBlendEVB;
    u8 blendUpdateCounter;
    u8 blendFrameCounter;
    u8 blendDelay;
    s16 droughtBrightnessStage;
    s16 droughtLastBrightnessStage;
    s16 droughtTimer;
    s16 droughtState;
    u8 filler_744[0xD-4];
    s8 loadDroughtPalsIndex;
    u8 loadDroughtPalsOffset;
};

extern struct Weather *const gWeatherPtr;

void FadeScreen(u8 mode, s8 delay);

void SetSavedWeather(u32);
u8 GetSav1Weather(void);

void DoCurrentWeather(void);
void SetSavedWeatherFromCurrMapHeader(void);
void SlightlyDarkenPalsInWeather(u16 *, u16 *, u32);
void PlayRainStoppingSoundEffect(void);
bool8 IsWeatherNotFadingIn(void);
void SetWeatherScreenFadeOut(void);
void WeatherProcessingIdle(void);
u8 GetCurrentWeather(void);
void delay(u8, u8, u32);
void UpdateSpritePaletteWithWeather(u8 palIdx);
void ResetPreservedPalettesInWeather(void);
void PreservePaletteInWeather(u8 palIdx);

void SetNextWeather(u8 weather);
void SetCurrentAndNextWeather(u8 weather);
void Weather_SetBlendCoeffs(u8 eva, u8 evb);
void Weather_SetTargetBlendCoeffs(u8 eva, u8 evb, int delay);
bool8 Weather_UpdateBlend(void);
void LoadCustomWeatherSpritePalette(const u16 *palette);
void ResetDroughtWeatherPaletteLoading(void);
bool8 LoadDroughtWeatherPalettes(void);
void DroughtStateInit(void);
void DroughtStateRun(void);
void SetRainStrengthFromSoundEffect(u16 soundEffect);
void WeatherShiftGammaIfPalStateIdle(s8 gammaIndex);
void WeatherBeginGammaFade(u8 gammaIndex, u8 gammaTargetIndex, u8 gammaStepDelay);
void ApplyWeatherGammaShiftToPal(u8 paletteIndex);
void StartWeather(void);
void ResumePausedWeather(void);
void FadeSelectedPals(u8 mode, s8 delay, u32 selectedPalettes);

extern const u16 gCloudsWeatherPalette[];
extern const u16 gSandstormWeatherPalette[];
extern const u8 gWeatherFogDiagonalTiles[];
extern const u8 gWeatherFogHorizontalTiles[];
extern const u8 gWeatherCloudTiles[];
extern const u8 gWeatherSnow1Tiles[];
extern const u8 gWeatherSnow2Tiles[];
extern const u8 gWeatherBubbleTiles[];
extern const u8 gWeatherAshTiles[];
extern const u8 gWeatherRainTiles[];
extern const u8 gWeatherSandstormTiles[];
# 15 "src/battle_transition.c" 2
# 1 "include/field_camera.h" 1







struct CameraObject
{
    void (*callback)(struct CameraObject *);
    u32 spriteId;
    s32 movementSpeedX;
    s32 movementSpeedY;
    s32 x;
    s32 y;
};



extern struct CameraObject gFieldCamera;
extern u16 gTotalCameraPixelOffsetX;
extern u16 gTotalCameraPixelOffsetY;
extern bool8 gBikeCameraAheadPanback;



void DrawWholeMapView(void);
void CurrentMapDrawMetatileAt(int x, int y);
void FieldCameraGetPixelOffsetAtGround(s16 *x, s16 *y);
void SetCameraPanningCallback(void (*cb)(void));
void SetCameraPanning(s16 x, s16 y);
void UpdateCameraPanning(void);
void InstallCameraPanAheadCallback(void);
void DrawDoorMetatileAt(int x, int y, const u16 *data);
void move_tilemap_camera_to_upper_left_corner(void);
void CameraUpdate(void);
void FieldUpdateBgTilemapScroll(void);
void ResetCameraUpdateInfo(void);
u32 InitCameraUpdateCallback(u8 trackedSpriteId);
void CameraUpdateNoObjectRefresh(void);
# 16 "src/battle_transition.c" 2
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
# 17 "src/battle_transition.c" 2
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
# 18 "src/battle_transition.c" 2
# 1 "include/event_object_movement.h" 1
# 9 "include/event_object_movement.h"
enum {
    PALSLOT_PLAYER,
    PALSLOT_PLAYER_REFLECTION,
    PALSLOT_NPC_1,
    PALSLOT_NPC_2,
    PALSLOT_NPC_3,
    PALSLOT_NPC_4,
    PALSLOT_NPC_1_REFLECTION,
    PALSLOT_NPC_2_REFLECTION,
    PALSLOT_NPC_3_REFLECTION,
    PALSLOT_NPC_4_REFLECTION,
    PALSLOT_NPC_SPECIAL,
    PALSLOT_NPC_SPECIAL_REFLECTION,
    OBJ_PALSLOT_COUNT

};

enum SpinnerRunnerFollowPatterns
{
    RUNFOLLOW_ANY,
    RUNFOLLOW_NORTH_SOUTH,
    RUNFOLLOW_EAST_WEST,
    RUNFOLLOW_NORTH_WEST,
    RUNFOLLOW_NORTH_EAST,
    RUNFOLLOW_SOUTH_WEST,
    RUNFOLLOW_SOUTH_EAST,
    RUNFOLLOW_NORTH_SOUTH_WEST,
    RUNFOLLOW_NORTH_SOUTH_EAST,
    RUNFOLLOW_NORTH_EAST_WEST,
    RUNFOLLOW_SOUTH_EAST_WEST
};

struct StepAnimTable
{
    const union AnimCmd *const *anims;
    u8 animPos[4];
};

typedef void (*MovementAction)(u8 direction);
# 70 "include/event_object_movement.h"
struct PairedPalettes
{
    u16 tag;
    const u16 *data;
};





u8 GetObjectEventIdByLocalIdAndMap(u8, u8, u8);
bool8 TryGetObjectEventIdByLocalIdAndMap(u8, u8, u8, u8 *);
u8 GetObjectEventIdByXY(s16, s16);
void SetObjectEventDirection(struct ObjectEvent *, u8);
void RemoveObjectEventByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup);
u16 GetBoulderRevealFlagByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup);
void LoadPlayerObjectReflectionPalette(u16, u8);
void LoadSpecialObjectReflectionPalette(u16, u8);
void TryMoveObjectEventToMapCoords(u8, u8, u8, s16, s16);
void PatchObjectPalette(u16, u8);
void SpawnObjectEventsOnReturnToField(s16 x, s16 y);
void GetMapCoordsFromSpritePos(s16, s16, s16 *, s16 *);
u8 GetFaceDirectionAnimNum(u8);
void SetSpritePosToOffsetMapCoords(s16 *, s16 *, s16, s16);
void ObjectEventClearHeldMovement(struct ObjectEvent *);
void ObjectEventClearHeldMovementIfActive(struct ObjectEvent *);
u8 CreateVirtualObject(u8 graphicsId, u8 virtualObjId, s16 x, s16 y, u8 elevation, u8 direction);
u8 CreateObjectGraphicsSprite(u16 graphicsId, SpriteCallback callback, s16 x, s16 y, u8 subpriority);
u8 TrySpawnObjectEvent(u8 localId, u8 mapNum, u8 mapGroup);
int SpawnSpecialObjectEventParameterized(u8, u8, u8, s16, s16, u8);
u8 SpawnSpecialObjectEvent(struct ObjectEventTemplate *);
void CameraObjectReset1(void);
void CameraObjectReset2(void);
void ObjectEventSetGraphicsId(struct ObjectEvent *, u8);
void ObjectEventTurn(struct ObjectEvent *, u8);
void ObjectEventTurnByLocalIdAndMap(u8, u8, u8, u8);
void ObjectEventForceSetHeldMovement(struct ObjectEvent *, u8);
const struct ObjectEventGraphicsInfo *GetObjectEventGraphicsInfo(u8);
void SetObjectInvisibility(u8 localId, u8 mapNum, u8 mapGroup, u8 state);
void FreeAndReserveObjectSpritePalettes(void);
void SetObjectPositionByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y);
void ResetObjectSubpriority(u8 localId, u8 mapNum, u8 mapGroup);
void SetObjectSubpriority(u8 localId, u8 mapNum, u8 mapGroup, u8 subpriority);
void ObjectEventGetLocalIdAndMap(struct ObjectEvent *objectEvent, void *localId, void *mapNum, void *mapGroup);
void ShiftObjectEventCoords(struct ObjectEvent *, s16, s16);
void TryOverrideObjectEventTemplateCoords(u8, u8, u8);
void UpdateObjectEventCurrentMovement(struct ObjectEvent *, struct Sprite *, bool8(struct ObjectEvent *, struct Sprite *));
u8 ObjectEventFaceOppositeDirection(struct ObjectEvent *, u8);
u8 GetOppositeDirection(u8);
u8 GetWalkInPlaceFasterMovementAction(u32);
u8 GetStepInPlaceDelay8AnimId(u32);
u8 GetWalkInPlaceNormalMovementAction(u32);
u8 GetWalkInPlaceSlowMovementAction(u32);
u8 GetWalkInPlaceFastMovementAction(u32);
u8 GetCollisionAtCoords(struct ObjectEvent *, s16, s16, u32);
void MoveCoords(u8, s16 *, s16 *);
bool8 ObjectEventIsHeldMovementActive(struct ObjectEvent *);
u8 ObjectEventClearHeldMovementIfFinished(struct ObjectEvent *);
u8 GetObjectEventIdByPosition(u16 x, u16 y, u8 elevation);
void QL_UpdateObjectEventCurrentMovement(struct ObjectEvent *, struct Sprite *);
bool8 ObjectEventSetHeldMovement(struct ObjectEvent *, u8);
void ShiftStillObjectEventCoords(struct ObjectEvent *);
void OverrideMovementTypeForObjectEvent(const struct ObjectEvent *, u8);
void SetTrainerMovementType(struct ObjectEvent *, u8);
u8 GetFishingDirectionAnimNum(u8 direction);
u8 GetFishingNoCatchDirectionAnimNum(u8 a0);
void ObjectEventSetGraphicsId(struct ObjectEvent *objectEvent, u8 a1);
u8 CreateFameCheckerObject(u8 graphicsId, u8 localId, s16 x, s16 y);
void InitObjectEventPalettes(u8 mode);
bool8 ObjectEventIsMovementOverridden(struct ObjectEvent *objectEvent);
u8 ObjectEventCheckHeldMovementStatus(struct ObjectEvent *objectEvent);
u8 GetWalkNormalMovementAction(u32);
u8 GetWalkFastMovementAction(u32);
u8 GetWalkFasterMovementAction(u32);
u8 GetWalkSlowerMovementAction(u32 direction);
u8 GetTrainerFacingDirectionMovementType(u8 direction);
u8 GetFaceDirectionMovementAction(u32);
u8 GetFaceDirectionFastMovementAction(u32);
void CameraObjectSetFollowedObjectId(u8 objectId);
void UnfreezeObjectEvents(void);
u8 GetSlideMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetJumpMovementAction(u32);
u8 GetJump2MovementAction(u32);
bool8 UpdateWalkSlowerAnim(struct Sprite *sprite);
void SetJumpSpriteData(struct Sprite *, u8, u8, u8);
u8 DoJumpSpriteMovement(struct Sprite *);
u8 DoJumpSpecialSpriteMovement(struct Sprite *);
void TurnVirtualObject(u8 virtualObjId, u8 direction);
const u8 *GetObjectEventScriptPointerByObjectEventId(u8 objectEventId);
u8 GetFirstInactiveObjectEventId(void);
u8 GetCollisionFlagsAtCoords(struct ObjectEvent * objectEvent, s16 x, s16 y, u8 direction);
void OverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent);
void CancelPlayerForcedMovement(void);
void FreezeObjectEvents(void);
bool8 FreezeObjectEvent(struct ObjectEvent *);
void UnfreezeObjectEvent(struct ObjectEvent *);
void FreezeObjectEventsExceptOne(u8 objEventId);
void SetVirtualObjectGraphics(u8 virtualObjId, u8 direction);
void SetVirtualObjectInvisibility(u8 virtualObjId, bool32 invisible);
bool32 IsVirtualObjectInvisible(u8 virtualObjId);
void SetVirtualObjectSpriteAnim(u8 virtualObjId, u8 animNo);
bool32 IsVirtualObjectAnimating(u8 virtualObjId);
u8 GetJumpSpecialMovementAction(u32 direction);
void EnableObjectGroundEffectsByXY(s16 x, s16 y);
void MoveObjectEventToMapCoords(struct ObjectEvent *objectEvent, s16 x, s16 y);
u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority);
u16 GetObjectPaletteTag(u8 paletteIndex);
void SetSpritePosToMapCoords(s16 x, s16 y, s16 *x2, s16 *y2);
void UpdateObjectEventSpriteInvisibility(struct Sprite *sprite, bool8 invisible);
u8 ElevationToPriority(u8 elevation);
void ObjectEventUpdateElevation(struct ObjectEvent *pObject);
void SetObjectSubpriorityByElevation(u8 elevation, struct Sprite *sprite, u8 offset);
void CopyObjectGraphicsInfoToSpriteTemplate(u16 graphicsId, void (*callback)(struct Sprite *), struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables);
u8 AddCameraObject(u8 trackedSpriteId);
void UpdateObjectEventsForCameraUpdate(s16 x, s16 y);
void SpriteCB_VirtualObject(struct Sprite *);
void SetMovementDelay(struct Sprite *, s16);
bool8 WaitForMovementDelay(struct Sprite *);
void SetSpriteDataForNormalStep(struct Sprite *, u8, u8);
bool8 NpcTakeStep(struct Sprite *sprite);
void SetWalkSlowerSpriteData(struct Sprite *, u8);
void SetWalkSlowestSpriteData(struct Sprite *, u8);
bool8 UpdateWalkSlowestAnim(struct Sprite *sprite);
void SetWalkSlowSpriteData(struct Sprite *, u8);
bool8 UpdateWalkSlowAnim(struct Sprite *sprite);
void DoShadowFieldEffect(struct ObjectEvent *);
void SetRunSlowSpriteData(struct Sprite *, u8);
bool8 UpdateRunSlowAnim(struct Sprite *sprite);
void SetAndStartSpriteAnim(struct Sprite *, u8, u8);
bool8 SpriteAnimEnded(struct Sprite *);
u8 ObjectEventGetHeldMovementActionId(struct ObjectEvent *objectEvent);
u8 GetMoveDirectionAnimNum(u8 direction);



extern const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[];
extern const struct SpritePalette gSpritePalette_GeneralFieldEffect1;
extern const struct SpriteTemplate * const gFieldEffectObjectTemplatePointers[];
extern const struct OamData gObjectEventBaseOam_32x32;
extern const u16 gFieldEffectObjectPic_CutGrass[];
extern const u16 gFieldEffectPal_CutGrass[];
extern const u8 gReflectionEffectPaletteMap[];
u8 GetLedgeJumpDirection(s16 x, s16 y, u8 direction);
u8 GetGlideMovementAction(u32 direction);
u8 GetRideWaterCurrentMovementAction(u32 direction);
u8 GetPlayerRunMovementAction(u32 direction);
u8 GetPlayerRunSlowMovementAction(u32 direction);
u8 GetWalkSlowMovementAction(u32 direction);
u8 GetSpinMovementAction(u32 direction);
u8 GetAcroWheelieFaceDirectionMovementAction(u32 direction);
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32 direction);
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32 direction);
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32 direction);
u8 GetAcroWheelieHopMovementAction(u32 direction);
u8 GetAcroPopWheelieMoveMovementAction(u32 direction);
u8 GetAcroWheelieJumpMovementAction(u32 direction);
u8 GetJumpInPlaceTurnAroundMovementAction(u32 direction);
u8 GetAcroWheelieInPlaceMovementAction(u32 direction);
u8 GetAcroPopWheelieMoveMovementAction(u32 direction);
u8 GetAcroWheelieMoveMovementAction(u32 direction);
u8 GetJumpSpecialWithEffectMovementAction(u32 direction);
u8 GetFishingBiteDirectionAnimNum(u8 direction);
void TrySpawnObjectEvents(s16 cameraX, s16 cameraY);
void ResetObjectEvents(void);
# 19 "src/battle_transition.c" 2
# 1 "include/constants/songs.h" 1
# 20 "src/battle_transition.c" 2
# 48 "src/battle_transition.c"
typedef bool8 (*TransitionStateFunc)(struct Task *task);
typedef bool8 (*TransitionSpriteCallback)(struct Sprite *sprite);

struct TransitionData
{
    vu8 vblankDma;
    u16 winIn;
    u16 winOut;
    u16 win0H;
    u16 win0V;
    u16 win1H;
    u16 win1V;
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
    s16 cameraX;
    s16 cameraY;
    s16 bg0HOfsOpponent;
    s16 bg0HOfsPlayer;
    s16 bg0VOfs;
    s16 unused_1E;
    s16 counter;
    s16 unused_22;
    s16 data[11];
};

static __attribute__((section("ewram_data"))) struct TransitionData *sTransitionData = ((void *)0);

static bool8 TransitionIntro_FadeToGray(struct Task *task);
static bool8 TransitionIntro_FadeFromGray(struct Task *task);
static bool8 AngledWipes_Init(struct Task *task);
static bool8 AngledWipes_SetWipeData(struct Task *task);
static bool8 AngledWipes_DoWipe(struct Task *task);
static bool8 AngledWipes_TryEnd(struct Task *task);
static bool8 AngledWipes_StartNext(struct Task *task);
static bool8 GridSquares_Init(struct Task *task);
static bool8 GridSquares_Main(struct Task *task);
static bool8 GridSquares_End(struct Task *task);
static bool8 WhiteBarsFade_Init(struct Task *task);
static bool8 WhiteBarsFade_StartBars(struct Task *task);
static bool8 WhiteBarsFade_WaitBars(struct Task *task);
static bool8 WhiteBarsFade_BlendToBlack(struct Task *task);
static bool8 WhiteBarsFade_End(struct Task *task);
static bool8 Slice_Init(struct Task *task);
static bool8 Slice_Main(struct Task *task);
static bool8 Slice_End(struct Task *task);
static bool8 Mugshot_Init(struct Task *task);
static bool8 Mugshot_SetGfx(struct Task *task);
static bool8 Mugshot_ShowBanner(struct Task *task);
static bool8 Mugshot_StartOpponentSlide(struct Task *task);
static bool8 Mugshot_WaitStartPlayerSlide(struct Task *task);
static bool8 Mugshot_WaitPlayerSlide(struct Task *task);
static bool8 Mugshot_GradualWhiteFade(struct Task *task);
static bool8 Mugshot_InitFadeWhiteToBlack(struct Task *task);
static bool8 Mugshot_FadeToBlack(struct Task *task);
static bool8 Mugshot_End(struct Task *task);
static bool8 Spiral_Init(struct Task *task);
static bool8 Spiral_End(struct Task *task);
static bool8 Wave_Init(struct Task *task);
static bool8 Wave_Main(struct Task *task);
static bool8 Wave_End(struct Task *task);
static bool8 Ripple_Init(struct Task *task);
static bool8 Ripple_Main(struct Task *task);
static bool8 ClockwiseWipe_Init(struct Task *task);
static bool8 ClockwiseWipe_TopRight(struct Task *task);
static bool8 ClockwiseWipe_Right(struct Task *task);
static bool8 ClockwiseWipe_Bottom(struct Task *task);
static bool8 ClockwiseWipe_Left(struct Task *task);
static bool8 ClockwiseWipe_TopLeft(struct Task *task);
static bool8 ClockwiseWipe_End(struct Task *task);
static bool8 PokeballsTrail_Init(struct Task *task);
static bool8 PokeballsTrail_Main(struct Task *task);
static bool8 PokeballsTrail_End(struct Task *task);
static bool8 BigPokeball_Init(struct Task *task);
static bool8 BigPokeball_SetGfx(struct Task *task);
static bool8 PatternWeave_Blend1(struct Task *task);
static bool8 PatternWeave_Blend2(struct Task *task);
static bool8 PatternWeave_FinishAppear(struct Task *task);
static bool8 PatternWeave_CircularMask(struct Task *task);
static bool8 Shuffle_Init(struct Task *task);
static bool8 Shuffle_End(struct Task *task);
static bool8 Swirl_Init(struct Task *task);
static bool8 Swirl_End(struct Task *task);
static bool8 Blur_Init(struct Task *task);
static bool8 Blur_Main(struct Task *task);
static bool8 Blur_End(struct Task *task);
static bool8 Transition_StartIntro(struct Task *task);
static bool8 Transition_WaitForIntro(struct Task *task);
static bool8 Transition_StartMain(struct Task *task);
static bool8 Transition_WaitForMain(struct Task *task);

static void Task_Blur(u8 taskId);
static void Task_Swirl(u8 taskId);
static void Task_Shuffle(u8 taskId);
static void Task_BigPokeball(u8 taskId);
static void Task_PokeballsTrail(u8 taskId);
static void Task_ClockwiseWipe(u8 taskId);
static void Task_Ripple(u8 taskId);
static void Task_Wave(u8 taskId);
static void Task_Slice(u8 taskId);
static void Task_WhiteBarsFade(u8 taskId);
static void Task_GridSquares(u8 taskId);
static void Task_AngledWipes(u8 taskId);
static void Task_Lorelei(u8 taskId);
static void Task_Bruno(u8 taskId);
static void Task_Agatha(u8 taskId);
static void Task_Lance(u8 taskId);
static void Task_Blue(u8 taskId);
static void Task_Spiral(u8 taskId);
static void Task_Intro(u8 taskId);
static void DoMugshotTransition(u8 taskId);
static void Task_BattleTransition_Intro(u8 taskId);

static void SpriteCB_MugshotTrainerPic(struct Sprite *sprite);
static void SpriteCB_FldEffPokeballTrail(struct Sprite *sprite);
static void SpriteCB_WhiteBarFade(struct Sprite *sprite);

static bool8 MugshotTrainerPic_Pause(struct Sprite *sprite);
static bool8 MugshotTrainerPic_Init(struct Sprite *sprite);
static bool8 MugshotTrainerPic_Slide(struct Sprite *sprite);
static bool8 MugshotTrainerPic_SlideSlow(struct Sprite *sprite);
static bool8 MugshotTrainerPic_SlideOffscreen(struct Sprite *sprite);

static void VBlankCB_Swirl(void);
static void HBlankCB_Swirl(void);
static void VBlankCB_Shuffle(void);
static void HBlankCB_Shuffle(void);
static void VBlankCB_PatternWeave(void);
static void VBlankCB_CircularMask(void);
static void VBlankCB_ClockwiseWipe(void);
static void VBlankCB_Ripple(void);
static void HBlankCB_Ripple(void);
static void VBlankCB_Wave(void);
static void VBlankCB_Spiral(void);
static void VBlankCB_Mugshots(void);
static void VBlankCB_MugshotsFadeOut(void);
static void HBlankCB_Mugshots(void);
static void VBlankCB_Slice(void);
static void HBlankCB_Slice(void);
static void VBlankCB_WhiteBarsFade(void);
static void VBlankCB_WhiteBarsFade_Blend(void);
static void HBlankCB_WhiteBarsFade(void);
static void VBlankCB_AngledWipes(void);

static void LaunchBattleTransitionTask(u8 transitionId);
static void Task_BattleTransition(u8 taskId);
static void InitTransitionData(void);
static void CreateIntroTask(s16 fadeOutDelay, s16 fadeInDelay, s16 blinkTimes, s16 fadeOutSpeed, s16 fadeInSpeed);
static bool8 IsIntroTaskDone(void);
static void VBlankCB_BattleTransition(void);
static void GetBg0TilemapDst(u16 **tilesetPtr);
static void GetBg0TilesDst(u16 **tilemapPtr, u16 **tilesetPtr);
static void SetSinWave(s16 *buffer, s16 offset, s16 sinIndex, s16 frequency, s16 amplitude, s16 bufSize);
static void SetCircularMask(s16 *buffer, s16 x, s16 y, s16 radius);
static void FadeScreenBlack(void);
static void InitBlackWipe(s16 *data, s16 startX, s16 startY, s16 endX, s16 endY, s16 stepX, s16 stepY);
static bool8 UpdateBlackWipe(s16 *data, bool8 xExact, bool8 yExact);
static void SetTrainerPicSlideDirection(s16 spriteId, bool16 value);
static void IncrementTrainerPicState(s16 spriteId);
static s16 IsTrainerPicSlideDone(s16 spriteId);
static void Mugshots_CreateTrainerPics(struct Task *task);

static const u32 sBigPokeball_Gfx[] = INCBIN_U32("graphics/battle_transitions/big_pokeball.4bpp");
static const u32 sSlidingPokeball_Tilemap[] = INCBIN_U32("graphics/battle_transitions/sliding_pokeball.bin");
static const u8 sSlidingPokeball_Gfx[] = INCBIN_U8("graphics/battle_transitions/sliding_pokeball.4bpp");
static const u32 sMugshotBanner_Gfx[] = INCBIN_U32("graphics/battle_transitions/mugshot_banner.4bpp");
static const u8 sUnusedBrendan_Gfx[] = INCBIN_U8("graphics/battle_transitions/unused_brendan.4bpp");
static const u8 sUnusedLass_Gfx[] = INCBIN_U8("graphics/battle_transitions/unused_lass.4bpp");
static const u32 sGridSquare_Gfx[] = INCBIN_U32("graphics/battle_transitions/grid_square.4bpp");


static const TaskFunc sTasks_Intro[] =
{
    [0 ... B_TRANSITION_COUNT - 1] = &Task_Intro,
};



static const TaskFunc sTasks_Main[] =
{
    [B_TRANSITION_BLUR] = Task_Blur,
    [B_TRANSITION_SWIRL] = Task_Swirl,
    [B_TRANSITION_SHUFFLE] = Task_Shuffle,
    [B_TRANSITION_BIG_POKEBALL] = Task_BigPokeball,
    [B_TRANSITION_POKEBALLS_TRAIL] = Task_PokeballsTrail,
    [B_TRANSITION_CLOCKWISE_WIPE] = Task_ClockwiseWipe,
    [B_TRANSITION_RIPPLE] = Task_Ripple,
    [B_TRANSITION_WAVE] = Task_Wave,
    [B_TRANSITION_SLICE] = Task_Slice,
    [B_TRANSITION_WHITE_BARS_FADE] = Task_WhiteBarsFade,
    [B_TRANSITION_GRID_SQUARES] = Task_GridSquares,
    [B_TRANSITION_ANGLED_WIPES] = Task_AngledWipes,
    [B_TRANSITION_LORELEI] = Task_Lorelei,
    [B_TRANSITION_BRUNO] = Task_Bruno,
    [B_TRANSITION_AGATHA] = Task_Agatha,
    [B_TRANSITION_LANCE] = Task_Lance,
    [B_TRANSITION_BLUE] = Task_Blue,
    [B_TRANSITION_SPIRAL] = Task_Spiral,
};

static const TransitionStateFunc sTaskHandlers[] =
{
    Transition_StartIntro,
    Transition_WaitForIntro,
    Transition_StartMain,
    Transition_WaitForMain,
};

static const TransitionStateFunc sBlur_Funcs[] =
{
    Blur_Init,
    Blur_Main,
    Blur_End,
};

static const TransitionStateFunc sSwirl_Funcs[] =
{
    Swirl_Init,
    Swirl_End,
};

static const TransitionStateFunc sShuffle_Funcs[] =
{
    Shuffle_Init,
    Shuffle_End,
};

static const TransitionStateFunc sBigPokeball_Funcs[] =
{
    BigPokeball_Init,
    BigPokeball_SetGfx,
    PatternWeave_Blend1,
    PatternWeave_Blend2,
    PatternWeave_FinishAppear,
    PatternWeave_CircularMask,
};

static const TransitionStateFunc sPokeballsTrail_Funcs[] =
{
    PokeballsTrail_Init,
    PokeballsTrail_Main,
    PokeballsTrail_End,
};


static const s16 sPokeballsTrail_StartXCoords[] = { -16, 240 + 16 };
static const s16 sPokeballsTrail_Delays[5] = { 0, 16, 32, 8, 24 };
static const s16 sPokeballsTrail_Speeds[] = { 8, -8 };

static const TransitionStateFunc sClockwiseWipe_Funcs[] =
{
    ClockwiseWipe_Init,
    ClockwiseWipe_TopRight,
    ClockwiseWipe_Right,
    ClockwiseWipe_Bottom,
    ClockwiseWipe_Left,
    ClockwiseWipe_TopLeft,
    ClockwiseWipe_End,
};

static const TransitionStateFunc sRipple_Funcs[] =
{
    Ripple_Init,
    Ripple_Main,
};

static const TransitionStateFunc sWave_Funcs[] =
{
    Wave_Init,
    Wave_Main,
    Wave_End,
};
static const s16 sSpiral_AngleData[] =
{
    0x0,
    0x26E,
    0x100,
    0x69,
    0x0,
    -0x69,
    -0x100,
    -0x266E,
    0x0,
    0x26E,
    0x100,
    0x69,
    0x0,
    -0x69,
    -0x100,
    -0x266E,
};

static const TransitionStateFunc sSpiral_Funcs[] =
{
    Spiral_Init,
    Spiral_End,
};

static const TransitionStateFunc sMugshot_Funcs[] =
{
    Mugshot_Init,
    Mugshot_SetGfx,
    Mugshot_ShowBanner,
    Mugshot_StartOpponentSlide,
    Mugshot_WaitStartPlayerSlide,
    Mugshot_WaitPlayerSlide,
    Mugshot_GradualWhiteFade,
    Mugshot_InitFadeWhiteToBlack,
    Mugshot_FadeToBlack,
    Mugshot_End,
};

static const u8 sMugshotsTrainerPicIDsTable[MUGSHOTS_COUNT] =
{
    [MUGSHOT_LORELEI] = 112,
    [MUGSHOT_BRUNO] = 113,
    [MUGSHOT_AGATHA] = 114,
    [MUGSHOT_LANCE] = 115,
    [MUGSHOT_BLUE] = 125,
};

static const s16 sMugshotsOpponentRotationScales[MUGSHOTS_COUNT][2] =
{
    [MUGSHOT_LORELEI] = {0x200, 0x200},
    [MUGSHOT_BRUNO] = {0x200, 0x200},
    [MUGSHOT_AGATHA] = {0x200, 0x200},
    [MUGSHOT_LANCE] = {0x200, 0x200},
    [MUGSHOT_BLUE] = {0x200, 0x200},
};

static const s16 sMugshotsOpponentCoords[MUGSHOTS_COUNT][2] =
{
    [MUGSHOT_LORELEI] = { -8, 0 },
    [MUGSHOT_BRUNO] = { -10, 0 },
    [MUGSHOT_AGATHA] = { 0, 0 },
    [MUGSHOT_LANCE] = { -32, 0 },
    [MUGSHOT_BLUE] = { 0, 0 },
};

static const TransitionSpriteCallback sMugshotTrainerPicFuncs[] =
{
    MugshotTrainerPic_Pause,
    MugshotTrainerPic_Init,
    MugshotTrainerPic_Slide,
    MugshotTrainerPic_SlideSlow,
    MugshotTrainerPic_Pause,
    MugshotTrainerPic_SlideOffscreen,
    MugshotTrainerPic_Pause,
};



static const s16 sTrainerPicSlideSpeeds[] = {12, -12};
static const s16 sTrainerPicSlideAccels[] = {-1, 1};

static const TransitionStateFunc sSlice_Funcs[] =
{
    Slice_Init,
    Slice_Main,
    Slice_End,
};

static const TransitionStateFunc sWhiteBarsFade_Funcs[] =
{
    WhiteBarsFade_Init,
    WhiteBarsFade_StartBars,
    WhiteBarsFade_WaitBars,
    WhiteBarsFade_BlendToBlack,
    WhiteBarsFade_End,
};



static const u16 sWhiteBarsFade_StartDelays[6] = {0, 9, 15, 6, 12, 3};

static const TransitionStateFunc sGridSquares_Funcs[] =
{
    GridSquares_Init,
    GridSquares_Main,
    GridSquares_End,
};

static const TransitionStateFunc sAngledWipes_Funcs[] =
{
    AngledWipes_Init,
    AngledWipes_SetWipeData,
    AngledWipes_DoWipe,
    AngledWipes_TryEnd,
    AngledWipes_StartNext,
};



static const s16 sAngledWipes_MoveData[7][5] =
{

    {56, 0, 0, 160, 0},
    {104, 160, 240, 88, 1},
    {240, 72, 56, 0, 1},
    {0, 32, 144, 160, 0},
    {144, 160, 184, 0, 1},
    {56, 0, 168, 160, 0},
    {168, 160, 48, 0, 1},
};

static const s16 sAngledWipes_EndDelays[7] = { 1, 1, 1, 1, 1, 1, 0 };

static const TransitionStateFunc sTransitionIntroFuncs[] =
{
    TransitionIntro_FadeToGray,
    TransitionIntro_FadeFromGray,
};

static const struct SpriteFrameImage sSpriteImage_Pokeball[] =
{
    {
        .data = sSlidingPokeball_Gfx,
        .size = sizeof(sSlidingPokeball_Gfx),
    },
};

static const union AnimCmd sSpriteAnim_Pokeball[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

static const union AnimCmd *const sSpriteAnimTable_Pokeball[] = { sSpriteAnim_Pokeball };

static const union AffineAnimCmd sSpriteAffineAnim_Pokeball1[] =
{
    {.frame = {.xScale = 0, .yScale = 0, .rotation = -4, .duration = 1}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};

static const union AffineAnimCmd sSpriteAffineAnim_Pokeball2[] =
{
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 4, .duration = 1}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};

static const union AffineAnimCmd *const sSpriteAffineAnimTable_Pokeball[] =
{
    sSpriteAffineAnim_Pokeball1,
    sSpriteAffineAnim_Pokeball2,
};

static const struct SpriteTemplate sSpriteTemplate_Pokeball =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1009,
    .oam = &gObjectEventBaseOam_32x32,
    .anims = sSpriteAnimTable_Pokeball,
    .images = sSpriteImage_Pokeball,
    .affineAnims = sSpriteAffineAnimTable_Pokeball,
    .callback = SpriteCB_FldEffPokeballTrail,
};

static const struct OamData sOam_UnusedBrendanLass =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};

static const struct SpriteFrameImage sImageTable_UnusedBrendan[] =
{
    {
        .data = sUnusedBrendan_Gfx,
        .size = sizeof(sUnusedBrendan_Gfx),
    },
};

static const struct SpriteFrameImage sImageTable_UnusedLass[] =
{
    {
        .data = sUnusedLass_Gfx,
        .size = sizeof(sUnusedLass_Gfx),
    },
};

static const union AnimCmd sSpriteAnim_UnusedBrendanLass[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

static const union AnimCmd *const sSpriteAnimTable_UnusedBrendanLass[] = { sSpriteAnim_UnusedBrendanLass };

static const struct SpriteTemplate sSpriteTemplate_UnusedBrendanLass[] =
{
    {
        .tileTag = 0xFFFF,
        .paletteTag = 0x100A,
        .oam = &sOam_UnusedBrendanLass,
        .anims = sSpriteAnimTable_UnusedBrendanLass,
        .images = sImageTable_UnusedBrendan,
        .affineAnims = gDummySpriteAffineAnimTable,
        .callback = SpriteCB_MugshotTrainerPic,
    },
    {
        .tileTag = 0xFFFF,
        .paletteTag = 0x100A,
        .oam = &sOam_UnusedBrendanLass,
        .anims = sSpriteAnimTable_UnusedBrendanLass,
        .images = sImageTable_UnusedLass,
        .affineAnims = gDummySpriteAffineAnimTable,
        .callback = SpriteCB_MugshotTrainerPic,
    },
};


static const u16 sFieldEffectPal_Pokeball[] = INCBIN_U16("graphics/battle_transitions/sliding_pokeball.gbapal");

const struct SpritePalette gSpritePalette_Pokeball =
{
    .data = sFieldEffectPal_Pokeball,
    .tag = 0x1009,
};

static const u16 sMugshotPal_Lorelei[] = INCBIN_U16("graphics/battle_transitions/lorelei_bg.gbapal");
static const u16 sMugshotPal_Bruno[] = INCBIN_U16("graphics/battle_transitions/bruno_bg.gbapal");
static const u16 sMugshotPal_Agatha[] = INCBIN_U16("graphics/battle_transitions/agatha_bg.gbapal");
static const u16 sMugshotPal_Lance[] = INCBIN_U16("graphics/battle_transitions/lance_bg.gbapal");
static const u16 sMugshotPal_Blue[] = INCBIN_U16("graphics/battle_transitions/blue_bg.gbapal");
static const u16 sMugshotPal_Red[] = INCBIN_U16("graphics/battle_transitions/red_bg.gbapal");
static const u16 sMugshotPal_Green[] = INCBIN_U16("graphics/battle_transitions/green_bg.gbapal");

static const u16 *const sOpponentMugshotsPals[MUGSHOTS_COUNT] =
{
    [MUGSHOT_LORELEI] = sMugshotPal_Lorelei,
    [MUGSHOT_BRUNO] = sMugshotPal_Bruno,
    [MUGSHOT_AGATHA] = sMugshotPal_Agatha,
    [MUGSHOT_LANCE] = sMugshotPal_Lance,
    [MUGSHOT_BLUE] = sMugshotPal_Blue,
};

static const u16 *const sPlayerMugshotsPals[2] =
{
    [0] = sMugshotPal_Red,
    [1] = sMugshotPal_Green,
};

static const u16 sUnusedTrainerPalette[] = INCBIN_U16("graphics/battle_transitions/unused_trainer.gbapal");

static const struct SpritePalette sSpritePalette_UnusedTrainer =
{
    .data = sUnusedTrainerPalette,
    .tag = 0x100A,
};

static const u16 sBigPokeball_Tilemap[] = INCBIN_U16("graphics/battle_transitions/big_pokeball_tilemap.bin");
static const u16 sMugshotsTilemap[] = INCBIN_U16("graphics/battle_transitions/vsbar_tilemap.bin");

void BattleTransition_StartOnField(u8 transitionId)
{
    sTransitionData = AllocZeroed(sizeof(*sTransitionData));
    gMain.callback2 = CB2_OverworldBasic;
    LaunchBattleTransitionTask(transitionId);
}


static void BattleTransition_Start(u8 transitionId)
{
    LaunchBattleTransitionTask(transitionId);
}




bool8 IsBattleTransitionDone(void)
{
    u8 taskId = FindTaskIdByFunc(Task_BattleTransition);
    if (gTasks[taskId].data[15])
    {
        InitTransitionData();
        { Free(sTransitionData); sTransitionData = ((void *)0); };
        DestroyTask(taskId);
        return 1;
    }
    else
    {
        return 0;
    }
}

static void LaunchBattleTransitionTask(u8 transitionId)
{
    u8 taskId = CreateTask(Task_BattleTransition, 2);
    gTasks[taskId].data[1] = transitionId;
}

static void Task_BattleTransition(u8 taskId)
{
    while (sTaskHandlers[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Transition_StartIntro(struct Task *task)
{
    SetWeatherScreenFadeOut();
    CpuSet(gPlttBufferFaded, gPlttBufferUnfaded, 0x04000000 | (((0x200 + 0x200))/(32/8) & 0x1FFFFF));
    if (sTasks_Intro[task->data[1]] != ((void *)0))
    {
        CreateTask(sTasks_Intro[task->data[1]], 4);
        task->data[0]++;
        return 0;
    }
    else
    {
        task->data[0] = 2;
        return 1;
    }
}

static bool8 Transition_WaitForIntro(struct Task *task)
{
    if (FindTaskIdByFunc(sTasks_Intro[task->data[1]]) == 0xFF)
    {
        task->data[0]++;
        return 1;
    }
    else
    {
        return 0;
    }
}

static bool8 Transition_StartMain(struct Task *task)
{
    CreateTask(sTasks_Main[task->data[1]], 0);
    task->data[0]++;
    return 0;
}

static bool8 Transition_WaitForMain(struct Task *task)
{
    task->data[15] = 0;
    if (FindTaskIdByFunc(sTasks_Main[task->data[1]]) == 0xFF)
        task->data[15] = 1;
    return 0;
}




static void Task_Intro(u8 taskId)
{
    if (gTasks[taskId].data[0] == 0)
    {
        gTasks[taskId].data[0]++;
        CreateIntroTask(0, 0, 2, 2, 2);
    }
    else if (IsIntroTaskDone())
    {
        DestroyTask(taskId);
    }
}
# 723 "src/battle_transition.c"
static void Task_Blur(u8 taskId)
{
    while (sBlur_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Blur_Init(struct Task *task)
{
    SetGpuReg(0x4c, 0);
    SetGpuRegBits(0xa, 0x0040);
    SetGpuRegBits(0xc, 0x0040);
    SetGpuRegBits(0xe, 0x0040);
    task->data[0]++;
    return 1;
}

static bool8 Blur_Main(struct Task *task)
{
    if (task->data[1] != 0)
    {
        task->data[1]--;
    }
    else
    {
        task->data[1] = 2;
        if (++task->data[2] == 10)
            BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), -1, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
        SetGpuReg(0x4c, (task->data[2] & 0xF) + ((task->data[2] & 0xF) << 4));
        if (task->data[2] > 14)
            task->data[0]++;
    }
    return 0;
}

static bool8 Blur_End(struct Task *task)
{
    if (!gPaletteFade.active)
        DestroyTask(FindTaskIdByFunc(Task_Blur));
    return 0;
}
# 773 "src/battle_transition.c"
static void Task_Swirl(u8 taskId)
{
    while (sSwirl_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Swirl_Init(struct Task *task)
{
    InitTransitionData();
    ScanlineEffect_Clear();
    BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 4, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
    SetSinWave(gScanlineEffectRegBuffers[1], sTransitionData->cameraX, 0, 2, 0, 160);
    SetVBlankCallback(VBlankCB_Swirl);
    SetHBlankCallback(HBlankCB_Swirl);
    EnableInterrupts((1 << 0) | (1 << 1));
    task->data[0]++;
    return 0;
}

static bool8 Swirl_End(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    task->data[1] += 4;
    task->data[2] += 8;
    SetSinWave(gScanlineEffectRegBuffers[0], sTransitionData->cameraX, task->data[1], 2, task->data[2], 160);
    if (!gPaletteFade.active)
        DestroyTask(FindTaskIdByFunc(Task_Swirl));
    sTransitionData->vblankDma++;
    return 0;
}

static void VBlankCB_Swirl(void)
{
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((320)/(16/8))); dmaRegs[2]; };
}

static void HBlankCB_Swirl(void)
{
    s16 offset = gScanlineEffectRegBuffers[1][(*(vu16 *)(0x4000000 + 0x6))];

    (*(vu16 *)(0x4000000 + 0x14)) = offset;
    (*(vu16 *)(0x4000000 + 0x18)) = offset;
    (*(vu16 *)(0x4000000 + 0x1c)) = offset;
}
# 829 "src/battle_transition.c"
static void Task_Shuffle(u8 taskId)
{
    while (sShuffle_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Shuffle_Init(struct Task *task)
{
    InitTransitionData();
    ScanlineEffect_Clear();
    BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 4, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
    memset(gScanlineEffectRegBuffers[1], sTransitionData->cameraY, 160 * 2);
    SetVBlankCallback(VBlankCB_Shuffle);
    SetHBlankCallback(HBlankCB_Shuffle);
    EnableInterrupts((1 << 0) | (1 << 1));
    task->data[0]++;
    return 0;
}

static bool8 Shuffle_End(struct Task *task)
{
    u8 i;
    u16 sinVal, amplitude;

    sTransitionData->vblankDma = 0;
    sinVal = task->data[1];
    amplitude = task->data[2] >> 8;
    task->data[1] += 4224;
    task->data[2] += 384;

    for (i = 0; i < 160; i++, sinVal += 4224)
        gScanlineEffectRegBuffers[0][i] = sTransitionData->cameraY + Sin(sinVal / 256, amplitude);

    if (!gPaletteFade.active)
        DestroyTask(FindTaskIdByFunc(Task_Shuffle));
    sTransitionData->vblankDma++;
    return 0;
}

static void VBlankCB_Shuffle(void)
{
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((320)/(16/8))); dmaRegs[2]; };
}

static void HBlankCB_Shuffle(void)
{
    s16 offset = gScanlineEffectRegBuffers[1][(*(vu16 *)(0x4000000 + 0x6))];

    (*(vu16 *)(0x4000000 + 0x16)) = offset;
    (*(vu16 *)(0x4000000 + 0x1a)) = offset;
    (*(vu16 *)(0x4000000 + 0x1e)) = offset;
}
# 906 "src/battle_transition.c"
static void Task_BigPokeball(u8 taskId)
{
    while (sBigPokeball_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}
# 932 "src/battle_transition.c"
static bool8 BigPokeball_Init(struct Task *task)
{
    u16 *tilemap, *tileset;

    { u16 i; InitTransitionData(); ScanlineEffect_Clear(); (task)->data[1] = 16; (task)->data[2] = 0; (task)->data[4] = 0; (task)->data[5] = 0x4000; sTransitionData->winIn = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5)); sTransitionData->winOut = 0; sTransitionData->win0H = 240; sTransitionData->win0V = 160; sTransitionData->bldCnt = (1 << 0) | (1 << 6) | (((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11)) | (1 << 12) | (1 << 13)); sTransitionData->bldAlpha = ((((task)->data[1]) << 8) | ((task)->data[2])); for (i = 0; i < 160; i++) gScanlineEffectRegBuffers[1][i] = 240; SetVBlankCallback(VBlankCB_PatternWeave); };
    GetBg0TilesDst(&tilemap, &tileset);
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, tilemap, 0x00000000 | 0x01000000 | ((0x800)/(16/8) & 0x1FFFFF)); };
    CpuSet(sBigPokeball_Gfx, tileset, 0x00000000 | ((sizeof(sBigPokeball_Gfx))/(16/8) & 0x1FFFFF));
    LoadPalette(sFieldEffectPal_Pokeball, (0x000 + ((15) * 16)), sizeof(sFieldEffectPal_Pokeball));
    task->data[0]++;
    return 0;
}

static bool8 BigPokeball_SetGfx(struct Task *task)
{
    s16 i, j;
    u16 *tilemap, *tileset;
    const u16 *bigPokeballMap = sBigPokeball_Tilemap;

    GetBg0TilesDst(&tilemap, &tileset);
    for (i = 0; i < 20; i++)
        for (j = 0; j < 30; j++, bigPokeballMap++)
            { u32 index = (i) * 32 + j; tilemap[index] = *bigPokeballMap | (15 << 12); };

    SetSinWave(gScanlineEffectRegBuffers[0], 0, task->data[4], 132, task->data[5], 160);
    task->data[0]++;
    return 1;
}

static bool8 PatternWeave_Blend1(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    if (task->data[3] == 0 || --task->data[3] == 0)
    {
        task->data[2]++;
        task->data[3] = 1;
    }
    sTransitionData->bldAlpha = (((task->data[1]) << 8) | (task->data[2]));

    if (task->data[2] > 15)
        task->data[0]++;
    task->data[4] += 12;
    task->data[5] -= 384;

    SetSinWave(gScanlineEffectRegBuffers[0], 0, task->data[4], 132, task->data[5] >> 8, 160);
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 PatternWeave_Blend2(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    if (task->data[3] == 0 || --task->data[3] == 0)
    {
        task->data[1]--;
        task->data[3] = 2;
    }
    sTransitionData->bldAlpha = (((task->data[1]) << 8) | (task->data[2]));
    if (task->data[1] == 0)
        task->data[0]++;
    if (task->data[5] > 0)
    {
        task->data[4] += 12;
        task->data[5] -= 384;
    }
    else
    {
        task->data[5] = 0;
    }
    SetSinWave(gScanlineEffectRegBuffers[0], 0, task->data[4], 132, task->data[5] >> 8, 160);
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 PatternWeave_FinishAppear(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    if (task->data[5] > 0)
    {
        task->data[4] += 12;
        task->data[5] -= 384;
    }
    else
    {
        task->data[5] = 0;
    }
    SetSinWave(gScanlineEffectRegBuffers[0], 0, task->data[4], 132, task->data[5] >> 8, 160);
    if (task->data[5] <= 0)
    {
        task->data[0]++;
        task->data[1] = 160;
        task->data[2] = 1 << 8;
        task->data[3] = 0;
    }
    sTransitionData->vblankDma++;
    return 0;
}


static bool8 PatternWeave_CircularMask(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    if (task->data[2] < (8 << 8))
        task->data[2] += (1 << 8);
    if (task->data[1] != 0)
    {
        task->data[1] -= (task->data[2] >> 8);
        if (task->data[1] < 0)
            task->data[1] = 0;
    }
    SetCircularMask(gScanlineEffectRegBuffers[0], 240 / 2, 160 / 2, task->data[1]);
    if (task->data[1] == 0)
    {
        { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
        FadeScreenBlack();
        DestroyTask(FindTaskIdByFunc(Task_BigPokeball));
    }
    if (!task->data[3])
    {
        task->data[3]++;
        SetVBlankCallback(VBlankCB_CircularMask);
    }
    sTransitionData->vblankDma++;
    return 0;
}

static void VBlankCB_SetWinAndBlend(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((320)/(16/8))); dmaRegs[2]; };
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x44, sTransitionData->win0V);
    SetGpuReg(0x50, sTransitionData->bldCnt);
    SetGpuReg(0x52, sTransitionData->bldAlpha);
}

static void VBlankCB_PatternWeave(void)
{
    VBlankCB_SetWinAndBlend();
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x10))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}

static void VBlankCB_CircularMask(void)
{
    VBlankCB_SetWinAndBlend();
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}
# 1099 "src/battle_transition.c"
static void Task_PokeballsTrail(u8 taskId)
{
    while (sPokeballsTrail_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 PokeballsTrail_Init(struct Task *task)
{
    u16 *tilemap, *tileset;

    GetBg0TilesDst(&tilemap, &tileset);
    CpuSet(sSlidingPokeball_Tilemap, tileset, 0x00000000 | ((sizeof(sSlidingPokeball_Tilemap))/(16/8) & 0x1FFFFF));
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, tilemap, 0x04000000 | 0x01000000 | ((0x800)/(32/8) & 0x1FFFFF)); };
    LoadPalette(sFieldEffectPal_Pokeball, (0x000 + ((15) * 16)), sizeof(sFieldEffectPal_Pokeball));
    task->data[0]++;
    return 0;
}

static bool8 PokeballsTrail_Main(struct Task *task)
{
    s16 i, side;
    s16 startX[(sizeof(sPokeballsTrail_StartXCoords) / sizeof((sPokeballsTrail_StartXCoords)[0]))];
    s16 delays[(sizeof(sPokeballsTrail_Delays) / sizeof((sPokeballsTrail_Delays)[0]))];
    memcpy(startX, sPokeballsTrail_StartXCoords, sizeof(sPokeballsTrail_StartXCoords));
    memcpy(delays, sPokeballsTrail_Delays, sizeof(sPokeballsTrail_Delays));



    side = Random() & 1;
    for (i = 0; i < 5; i++, side ^= 1)
    {
        gFieldEffectArguments[0] = startX[side];
        gFieldEffectArguments[1] = (i * 32) + 16;
        gFieldEffectArguments[2] = side;
        gFieldEffectArguments[3] = delays[i];
        FieldEffectStart(45);
    }
    task->data[0]++;
    return 0;
}

static bool8 PokeballsTrail_End(struct Task *task)
{
    if (!FieldEffectActiveListContains(45))
    {
        FadeScreenBlack();
        DestroyTask(FindTaskIdByFunc(Task_PokeballsTrail));
    }
    return 0;
}

bool8 FldEff_PokeballTrail(void)
{
    u8 spriteId = CreateSpriteAtEnd(&sSpriteTemplate_Pokeball, gFieldEffectArguments[0], gFieldEffectArguments[1], 0);

    gSprites[spriteId].oam.priority = 0;
    gSprites[spriteId].oam.affineMode = 1;
    gSprites[spriteId].data[0] = gFieldEffectArguments[2];
    gSprites[spriteId].data[1] = gFieldEffectArguments[3];
    gSprites[spriteId].data[2] = -1;
    InitSpriteAffineAnim(&gSprites[spriteId]);
    StartSpriteAffineAnim(&gSprites[spriteId], gFieldEffectArguments[2]);
    return 0;
}

static void SpriteCB_FldEffPokeballTrail(struct Sprite *sprite)
{
    s16 speeds[(sizeof(sPokeballsTrail_Speeds) / sizeof((sPokeballsTrail_Speeds)[0]))];
    memcpy(speeds, sPokeballsTrail_Speeds, sizeof(sPokeballsTrail_Speeds));

    if (sprite->data[1])
    {
        sprite->data[1]--;
    }
    else
    {
        if (sprite->x >= 0 && sprite->x <= 240)
        {

            s16 posX = sprite->x >> 3;
            s16 posY = sprite->y >> 3;


            if (posX != sprite->data[2])
            {
                u16 *ptr;

                sprite->data[2] = posX;
                ptr = (u16 *)(void *)(0x6000000 + (0x800 * ((GetGpuReg(0x8) >> 8) & 0x1F)));
                { u32 index = (posY - 2) * 32 + posX; ptr[index] = 1 | (15 << 12); };
                { u32 index = (posY - 1) * 32 + posX; ptr[index] = 1 | (15 << 12); };
                { u32 index = (posY - 0) * 32 + posX; ptr[index] = 1 | (15 << 12); };
                { u32 index = (posY + 1) * 32 + posX; ptr[index] = 1 | (15 << 12); };
            }
        }
        sprite->x += speeds[sprite->data[0]];
        if (sprite->x < -15 || sprite->x > 240 + 15)
            FieldEffectStop(sprite, 45);
    }
}
# 1207 "src/battle_transition.c"
static void Task_ClockwiseWipe(u8 taskId)
{
    while (sClockwiseWipe_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 ClockwiseWipe_Init(struct Task *task)
{
    u16 i;

    InitTransitionData();
    ScanlineEffect_Clear();
    sTransitionData->winIn = 0;
    sTransitionData->winOut = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    sTransitionData->win0H = (((240) << 8) | (240 + 1));
    sTransitionData->win0V = 160;
    for (i = 0; i < 160; i++)
        gScanlineEffectRegBuffers[1][i] = (((240 + 3) << 8) | (240 + 4));
    SetVBlankCallback(VBlankCB_ClockwiseWipe);
    sTransitionData->data[4] = 240 / 2;
    task->data[0]++;
    return 1;
}

static bool8 ClockwiseWipe_TopRight(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    InitBlackWipe(sTransitionData->data, 240 / 2, 160 / 2, sTransitionData->data[4], -1, 1, 1);
    do
    {
        gScanlineEffectRegBuffers[0][sTransitionData->data[3]] = (((240 / 2) << 8) | (sTransitionData->data[2] + 1));
    }
    while (!UpdateBlackWipe(sTransitionData->data, 1, 1));

    sTransitionData->data[4] += 32;
    if (sTransitionData->data[4] >= 240)
    {
        sTransitionData->data[5] = 0;
        task->data[0]++;
    }
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 ClockwiseWipe_Right(struct Task *task)
{
    s16 start, end;
    vu8 finished = 0;

    sTransitionData->vblankDma = 0;
    InitBlackWipe(sTransitionData->data, 240 / 2, 160 / 2, 240, sTransitionData->data[5], 1, 1);
    while (1)
    {
        start = 240 / 2;
        end = sTransitionData->data[2] + 1;
        if (sTransitionData->data[5] >= 160 / 2)
        {
            start = sTransitionData->data[2];
            end = 240;
        }
        gScanlineEffectRegBuffers[0][sTransitionData->data[3]] = ((end) | ((start) << 8));
        if (finished)
            break;
        finished = UpdateBlackWipe(sTransitionData->data, 1, 1);
    }
    sTransitionData->data[5] += 16;
    if (sTransitionData->data[5] >= 160)
    {
        sTransitionData->data[4] = 240;
        task->data[0]++;
    }
    else
    {
        while (sTransitionData->data[3] < sTransitionData->data[5])
            gScanlineEffectRegBuffers[0][++sTransitionData->data[3]] = ((end) | ((start) << 8));
    }
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 ClockwiseWipe_Bottom(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    InitBlackWipe(sTransitionData->data, 240 / 2, 160 / 2, sTransitionData->data[4], 160, 1, 1);
    do
    {
        gScanlineEffectRegBuffers[0][sTransitionData->data[3]] = (sTransitionData->data[2] << 8) | 240;
    }
    while (!UpdateBlackWipe(sTransitionData->data, 1, 1));
    sTransitionData->data[4] -= 32;
    if (sTransitionData->data[4] <= 0)
    {
        sTransitionData->data[5] = 160;
        task->data[0]++;
    }
    sTransitionData->vblankDma++;
    return 0;
}
# 1317 "src/battle_transition.c"
static bool8 ClockwiseWipe_Left(struct Task *task)
{
    s16 end, start;
    u16 win0H;
    vu8 finished = 0;

    sTransitionData->vblankDma = 0;
    InitBlackWipe(sTransitionData->data, 240 / 2, 160 / 2, 0, sTransitionData->data[5], 1, 1);
    while (1)
    {
        end = (gScanlineEffectRegBuffers[0][sTransitionData->data[3]]) & 0xFF;
        start = sTransitionData->data[2];
        if (sTransitionData->data[5] <= 160 / 2)
        {
            start = 240 / 2;
            end = sTransitionData->data[2];
        }
        win0H = ((end) | ((start) << 8));
        gScanlineEffectRegBuffers[0][sTransitionData->data[3]] = win0H;
        if (finished)
            break;
        finished = UpdateBlackWipe(sTransitionData->data, 1, 1);
    }
    sTransitionData->data[5] -= 16;
    if (sTransitionData->data[5] <= 0)
    {
        sTransitionData->data[4] = 0;
        task->data[0]++;
    }
    else
    {
        while (sTransitionData->data[3] > sTransitionData->data[5])
            gScanlineEffectRegBuffers[0][--sTransitionData->data[3]] = ((end) | ((start) << 8));
    }
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 ClockwiseWipe_TopLeft(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    InitBlackWipe(sTransitionData->data, 120, 80, sTransitionData->data[4], 0, 1, 1);
    do
    {
        s16 start = 240 / 2;
        s16 end = sTransitionData->data[2];
        if (sTransitionData->data[2] >= 120)
        {
            start = 0;
            end = 240;
        }
        gScanlineEffectRegBuffers[0][sTransitionData->data[3]] = ((end) | ((start) << 8));
    }
    while (!UpdateBlackWipe(sTransitionData->data, 1, 1));
    sTransitionData->data[4] += 32;
    if (sTransitionData->data[2] > 240 / 2)
        task->data[0]++;
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 ClockwiseWipe_End(struct Task *task)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    FadeScreenBlack();
    DestroyTask(FindTaskIdByFunc(Task_ClockwiseWipe));
    return 0;
}

static void VBlankCB_ClockwiseWipe(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 2)/(16/8))); dmaRegs[2]; };
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x44, sTransitionData->win0V);
    SetGpuReg(0x40, gScanlineEffectRegBuffers[1][0]);
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}
# 1408 "src/battle_transition.c"
static void Task_Ripple(u8 taskId)
{
    while (sRipple_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Ripple_Init(struct Task *task)
{
    u8 i;

    InitTransitionData();
    ScanlineEffect_Clear();
    for (i = 0; i < 160; i++)
        gScanlineEffectRegBuffers[1][i] = sTransitionData->cameraY;
    SetVBlankCallback(VBlankCB_Ripple);
    SetHBlankCallback(HBlankCB_Ripple);
    EnableInterrupts((1 << 1));
    task->data[0]++;
    return 1;
}

static bool8 Ripple_Main(struct Task *task)
{
    u8 i;
    s16 amplitude;
    u16 sinVal, speed;

    sTransitionData->vblankDma = 0;
    amplitude = task->data[2] >> 8;
    sinVal = task->data[1];
    speed = 384;
    task->data[1] += 0x400;
    if (task->data[2] <= 0x1FFF)
        task->data[2] += 384;
    for (i = 0; i < 160; i++, sinVal += speed)
    {
        s16 sinIndex = sinVal >> 8;
        gScanlineEffectRegBuffers[0][i] = sTransitionData->cameraY + Sin(sinIndex & 0xFFFF, amplitude);
    }
    if (++task->data[3] == 41)
    {
        task->data[4]++;
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), -8, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
    }
    if (task->data[4] && !gPaletteFade.active)
        DestroyTask(FindTaskIdByFunc(Task_Ripple));
    sTransitionData->vblankDma++;
    return 0;
}

static void VBlankCB_Ripple(void)
{
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((320)/(16/8))); dmaRegs[2]; };
}

static void HBlankCB_Ripple(void)
{
    s16 offset = gScanlineEffectRegBuffers[1][(*(vu16 *)(0x4000000 + 0x6))];

    (*(vu16 *)(0x4000000 + 0x16)) = offset;
    (*(vu16 *)(0x4000000 + 0x1a)) = offset;
    (*(vu16 *)(0x4000000 + 0x1e)) = offset;
}
# 1485 "src/battle_transition.c"
static void Task_Wave(u8 taskId)
{
    while (sWave_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Wave_Init(struct Task *task)
{
    u8 i;

    InitTransitionData();
    ScanlineEffect_Clear();
    sTransitionData->winIn = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    sTransitionData->winOut = 0;
    sTransitionData->win0H = 240;
    sTransitionData->win0V = 160;
    for (i = 0; i < 160; i++)
        gScanlineEffectRegBuffers[1][i] = 240 + 2;
    SetVBlankCallback(VBlankCB_Wave);
    task->data[0]++;
    return 1;
}

static bool8 Wave_Main(struct Task *task)
{
    u8 i, sinIndex;
    u16 *winVal;
    bool8 finished;

    sTransitionData->vblankDma = 0;
    winVal = gScanlineEffectRegBuffers[0];
    sinIndex = task->data[2];
    task->data[2] += 16;
    task->data[1] += 8;
    for (i = 0, finished = 1; i < 160; i++, sinIndex += 4, winVal++)
    {
        s16 x = task->data[1] + Sin(sinIndex, 40);
        if (x < 0)
            x = 0;
        if (x > 240)
            x = 240;
        *winVal = (((x) << 8) | (240 + 1));
        if (x < 240)
            finished = 0;
    }
    if (finished)
        task->data[0]++;
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 Wave_End(struct Task *task)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    FadeScreenBlack();
    DestroyTask(FindTaskIdByFunc(Task_Wave));
    return 0;
}

static void VBlankCB_Wave(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 2)/(16/8))); dmaRegs[2]; };
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x44, sTransitionData->win0V);
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}
# 1562 "src/battle_transition.c"
static void Task_Spiral(u8 taskId)
{
    while (sSpiral_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static void Spiral_UpdateFrame(s16 initRadius, s16 deltaAngleMax, u8 offsetMaybe)
{
    u8 sinIndex = 0;
    s16 i, amplitude1, amplitude2;
    s16 y1, x1, y2, x2;

    for (i = 160 * 2; i < 160 * 6; i++)
        gScanlineEffectRegBuffers[1][i] = 240 / 2;

    for (i = 0; i < (deltaAngleMax * 16); i++, sinIndex++)
    {
        amplitude1 = initRadius + (sinIndex >> 3);
        if ((sinIndex >> 3) != ((sinIndex + 1) >> 3))
        {
            amplitude2 = amplitude1 + 1;
        }
        else
        {
            amplitude2 = amplitude1;
        }

        y1 = 160 / 2 - Sin(sinIndex, amplitude1);
        x1 = Cos(sinIndex, amplitude1) + 240 / 2;
        y2 = 160 / 2 - Sin(sinIndex + 1, amplitude2);
        x2 = Cos(sinIndex + 1, amplitude2) + 240 / 2;

        if (y1 < 0 && y2 < 0)
            continue;
        if (y1 > 160 - 1 && y2 > 160 - 1)
            continue;

        if (y1 < 0)
            y1 = 0;
        if (y1 > 160 - 1)
            y1 = 160 - 1;
        if (x1 < 0)
            x1 = 0;
        if (x1 > 255)
            x1 = 255;
        if (y2 < 0)
            y2 = 0;
        if (y2 > 160 - 1)
            y2 = 160 - 1;
        if (x2 < 0)
            x2 = 0;
        if (x2 > 255)
            x2 = 255;

        y2 -= y1;

        if (sinIndex >= 64 && sinIndex < 64 * 3)
        {
            gScanlineEffectRegBuffers[1][y1 + 160 * 2] = x1;

            if (y2 == 0)
                continue;

            x2 -= x1;
            if (x2 < -1 && x1 > 1)
                x1--;
            else if (x2 > 1 && x1 < 255)
                x1++;

            if (y2 < 0)
                for (; y2 < 0; y2++)
                    gScanlineEffectRegBuffers[1][y1 + y2 + 160 * 2] = x1;
            else
                for (; y2 > 0; y2--)
                    gScanlineEffectRegBuffers[1][y1 + y2 + 160 * 2] = x1;
        }
        else
        {
            gScanlineEffectRegBuffers[1][y1 + 160 * 3] = x1;

            if (y2 == 0)
                continue;

            x2 -= x1;
            if (x2 < -1 && x1 > 1)
                x1--;
            else if (x2 > 1 && x1 < 255)
                x1++;

            if (y2 < 0)
                for (; y2 < 0; y2++)
                    gScanlineEffectRegBuffers[1][y1 + y2 + 160 * 3] = x1;
            else
                for (; y2 > 0; y2--)
                    gScanlineEffectRegBuffers[1][y1 + y2 + 160 * 3] = x1;
        }
    }

    if (offsetMaybe == 0 || deltaAngleMax % 4 == 0)
    {
        for (i = 0; i < 160; i++)
            gScanlineEffectRegBuffers[1][i * 2 + offsetMaybe] = gScanlineEffectRegBuffers[1][i + 160 * 2] << 8
                                                              | gScanlineEffectRegBuffers[1][i + 160 * 3];
        return;
    }

    y1 = Sin(deltaAngleMax * 16, initRadius + (deltaAngleMax << 1));

    switch (deltaAngleMax / 4)
    {
    case 0:
        if (y1 > 160 / 2)
            y1 = 160 / 2;
        for (i = y1; i > 0; i--)
        {
            sTransitionData->data[2] = x1 = ((i * sSpiral_AngleData[deltaAngleMax]) >> 8) + 240 / 2;
            if (x1 < 0 || x1 > 255)
                continue;
            sTransitionData->cameraX = 400 - i;
            sTransitionData->data[10] = gScanlineEffectRegBuffers[1][400 - i];
            if (gScanlineEffectRegBuffers[1][560 - i] < x1)
                gScanlineEffectRegBuffers[1][560 - i] = 240 / 2;
            else if (gScanlineEffectRegBuffers[1][400 - i] < x1)
                gScanlineEffectRegBuffers[1][400 - i] = x1;
        }
        break;
    case 1:
        if (y1 > 160 / 2)
            y1 = 160 / 2;
        for (i = y1; i > 0; i--)
        {
            sTransitionData->data[2] = x1 = ((i * sSpiral_AngleData[deltaAngleMax]) >> 8) + 240 / 2;
            if (x1 < 0 || x1 > 255)
                continue;
            sTransitionData->cameraX = 400 - i;
            sTransitionData->data[10] = gScanlineEffectRegBuffers[1][400 - i];
            if (gScanlineEffectRegBuffers[1][400 - i] < x1)
                gScanlineEffectRegBuffers[1][400 - i] = x1;
        }
        break;
    case 2:
        if (y1 < -(160 / 2 - 1))
            y1 = -(160 / 2 - 1);
        for (i = y1; i <= 0; i++)
        {
            sTransitionData->data[2] = x1 = ((i * sSpiral_AngleData[deltaAngleMax]) >> 8) + 240 / 2;
            if (x1 < 0 || x1 > 255)
                continue;
            sTransitionData->cameraX = 560 - i;
            sTransitionData->data[10] = gScanlineEffectRegBuffers[1][560 - i];
            if (gScanlineEffectRegBuffers[1][400 - i] >= x1)
                gScanlineEffectRegBuffers[1][400 - i] = 240 / 2;
            else if (gScanlineEffectRegBuffers[1][560 - i] > x1)
                gScanlineEffectRegBuffers[1][560 - i] = x1;
        }
        break;
    case 3:
        if (y1 < -(160 / 2 - 1))
            y1 = -(160 / 2 - 1);
        for (i = y1; i <= 0; i++)
        {
            sTransitionData->data[2] = x1 = ((i * sSpiral_AngleData[deltaAngleMax]) >> 8) + 120;
            if (x1 < 0 || x1 > 255)
                continue;
            sTransitionData->cameraX = 560 - i;
            sTransitionData->data[10] = gScanlineEffectRegBuffers[1][560 - i];
            if (gScanlineEffectRegBuffers[1][560 - i] > x1)
                gScanlineEffectRegBuffers[1][560 - i] = x1;
        }
        break;
    default:
        break;
    }

    for (i = 0; i < 160; i++)
        gScanlineEffectRegBuffers[1][i * 2 + offsetMaybe] = (gScanlineEffectRegBuffers[1][i + 160 * 2] << 8)
                                                           | gScanlineEffectRegBuffers[1][i + 160 * 3];
}

static bool8 Spiral_Init(struct Task *task)
{
    InitTransitionData();
    ScanlineEffect_Clear();
    sTransitionData->winIn = 0;
    sTransitionData->winOut = ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5);
    sTransitionData->win0H = (((240 / 2) << 8) | (240 / 2));
    sTransitionData->win0V = (((48) << 8) | (160 - 48));
    sTransitionData->win1V = (((16) << 8) | (160 - 16));
    sTransitionData->counter = 0;
    Spiral_UpdateFrame(0, 0, 0);
    Spiral_UpdateFrame(0, 0, 1);
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 4)/(16/8))); dmaRegs[2]; };
    SetVBlankCallback(VBlankCB_Spiral);
    task->data[0]++;
    task->data[1] = 0;
    task->data[2] = 0;
    return 0;
}

static bool8 Spiral_End(struct Task *task)
{
    s16 win_top, win_bottom;

    Spiral_UpdateFrame(task->data[2], task->data[1], 1);
    sTransitionData->vblankDma |= 1;
    if (++task->data[1] == (int)(sizeof(sSpiral_AngleData) / sizeof((sSpiral_AngleData)[0])) + 1)
    {
        Spiral_UpdateFrame(task->data[2], 16, 0);
        win_top = 48 - task->data[2];
        if (win_top < 0)
            win_top = 0;
        win_bottom = task->data[2] + 112;
        if (win_bottom > 255)
            win_bottom = 255;
        sTransitionData->win0V = win_top | win_bottom;
        task->data[2] += 32;
        task->data[1] = 0;
        Spiral_UpdateFrame(task->data[2], 0, 1);
        win_top = 48 - task->data[2];
        if (win_top < 0)
            win_top = 0;
        win_bottom = task->data[2] + 112;
        if (win_bottom > 255)
            win_bottom = 255;
        sTransitionData->win1V = win_top | win_bottom;
        sTransitionData->vblankDma |= 1;
        if (task->data[2] >= 160)
        {
            sTransitionData->counter = 1;
            FadeScreenBlack();
        }
    }
    return 0;
}

static void VBlankCB_Spiral(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    if (sTransitionData->counter)
    {
        DestroyTask(FindTaskIdByFunc(Task_Spiral));
    }
    else
    {
        if (sTransitionData->vblankDma)
        {
            { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 4)/(16/8))); dmaRegs[2]; };
            sTransitionData->vblankDma = 0;
        }
        SetGpuReg(0x48, sTransitionData->winIn);
        SetGpuReg(0x4a, sTransitionData->winOut);
        SetGpuReg(0x44, sTransitionData->win0V);
        SetGpuReg(0x46, sTransitionData->win1V);
        SetGpuReg(0x40, gScanlineEffectRegBuffers[0][0]);
        SetGpuReg(0x42, gScanlineEffectRegBuffers[0][1]);
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((0x0400 << 16) | (1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
    }
}
# 1845 "src/battle_transition.c"
static void Task_Lorelei(u8 taskId)
{
    gTasks[taskId].data[15] = MUGSHOT_LORELEI;
    DoMugshotTransition(taskId);
}

static void Task_Bruno(u8 taskId)
{
    gTasks[taskId].data[15] = MUGSHOT_BRUNO;
    DoMugshotTransition(taskId);
}

static void Task_Agatha(u8 taskId)
{
    gTasks[taskId].data[15] = MUGSHOT_AGATHA;
    DoMugshotTransition(taskId);
}

static void Task_Lance(u8 taskId)
{
    gTasks[taskId].data[15] = MUGSHOT_LANCE;
    DoMugshotTransition(taskId);
}

static void Task_Blue(u8 taskId)
{
    gTasks[taskId].data[15] = MUGSHOT_BLUE;
    DoMugshotTransition(taskId);
}

static void DoMugshotTransition(u8 taskId)
{
    while (sMugshot_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Mugshot_Init(struct Task *task)
{
    u8 i;

    InitTransitionData();
    ScanlineEffect_Clear();
    Mugshots_CreateTrainerPics(task);

    task->data[1] = 0;
    task->data[2] = 1;
    task->data[3] = 240 - 1;
    sTransitionData->winIn = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    sTransitionData->winOut = (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5);
    sTransitionData->win0V = 160;
    for (i = 0; i < 160; i++)
        gScanlineEffectRegBuffers[1][i] = (((240) << 8) | (240 + 1));
    SetVBlankCallback(VBlankCB_Mugshots);
    task->data[0]++;
    return 0;
}

static bool8 Mugshot_SetGfx(struct Task *task)
{
    s16 i, j;
    u16 *tilemap, *tileset;
    const u16 *mugshotsMap = sMugshotsTilemap;

    GetBg0TilesDst(&tilemap, &tileset);
    CpuSet(sMugshotBanner_Gfx, tileset, 0x00000000 | ((sizeof(sMugshotBanner_Gfx))/(16/8) & 0x1FFFFF));
    LoadPalette(sOpponentMugshotsPals[task->data[15]], (0x000 + ((15) * 16)), ((16) * sizeof(u16)));
    LoadPalette(sPlayerMugshotsPals[gSaveBlock2Ptr->playerGender], (0x000 + ((15) * 16)) + 10, ((16 - 10) * sizeof(u16)));

    for (i = 0; i < 20; i++)
        for (j = 0; j < 32; j++, mugshotsMap++)
            { u32 index = (i) * 32 + j; tilemap[index] = *mugshotsMap | (15 << 12); };

    EnableInterrupts((1 << 1));
    SetHBlankCallback(HBlankCB_Mugshots);
    task->data[0]++;
    return 0;
}

static bool8 Mugshot_ShowBanner(struct Task *task)
{
    u8 i, sinIndex;
    u16 *winVal;
    s16 x;
    s32 mergedValue;

    sTransitionData->vblankDma = 0;

    winVal = gScanlineEffectRegBuffers[0];
    sinIndex = task->data[1];
    task->data[1] += 16;


    for (i = 0; i < 160 / 2; i++, winVal++, sinIndex += 16)
    {
        x = task->data[2] + Sin(sinIndex, 16);
        if (x < 0)
            x = 1;
        if (x > 240)
            x = 240;
        *winVal = x;
    }


    for (; i < 160; i++, winVal++, sinIndex += 16)
    {
        x = task->data[3] - Sin(sinIndex, 16);
        if (x < 0)
            x = 0;
        if (x > 240 - 1)
            x = 240 - 1;
        *winVal = (x << 8) | (240);
    }


    task->data[2] += 8;
    task->data[3] -= 8;

    if (task->data[2] > 240)
        task->data[2] = 240;
    if (task->data[3] < 0)
        task->data[3] = 0;

    mergedValue = *(s32 *)(&task->data[2]);
    if (mergedValue == 240)
        task->data[0]++;

    sTransitionData->bg0HOfsOpponent -= 8;
    sTransitionData->bg0HOfsPlayer += 8;
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 Mugshot_StartOpponentSlide(struct Task *task)
{
    u8 i;
    u16 *winVal;

    sTransitionData->vblankDma = 0;
    for (i = 0, winVal = gScanlineEffectRegBuffers[0]; i < 160; i++, winVal++)
        *winVal = 240;
    task->data[0]++;


    task->data[1] = 0;
    task->data[2] = 0;
    task->data[3] = 0;

    sTransitionData->bg0HOfsOpponent -= 8;
    sTransitionData->bg0HOfsPlayer += 8;

    SetTrainerPicSlideDirection(task->data[13], 0);
    SetTrainerPicSlideDirection(task->data[14], 1);


    IncrementTrainerPicState(task->data[13]);
    PlaySE(97);
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 Mugshot_WaitStartPlayerSlide(struct Task *task)
{
    sTransitionData->bg0HOfsOpponent -= 8;
    sTransitionData->bg0HOfsPlayer += 8;


    if (IsTrainerPicSlideDone(task->data[13]))
    {
        task->data[0]++;
        IncrementTrainerPicState(task->data[14]);
    }
    return 0;
}

static bool8 Mugshot_WaitPlayerSlide(struct Task *task)
{
    sTransitionData->bg0HOfsOpponent -= 8;
    sTransitionData->bg0HOfsPlayer += 8;

    if (IsTrainerPicSlideDone(task->data[14]))
    {
        sTransitionData->vblankDma = 0;
        SetVBlankCallback(((void *)0));
        { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
        memset(gScanlineEffectRegBuffers[0], 0, 160 * 2);
        memset(gScanlineEffectRegBuffers[1], 0, 160 * 2);
        SetGpuReg(0x40, 240);
        SetGpuReg(0x54, 0);
        task->data[0]++;
        task->data[3] = 0;
        task->data[4] = 0;
        sTransitionData->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5)) | (2 << 6);
        SetVBlankCallback(VBlankCB_MugshotsFadeOut);
    }
    return 0;
}

static bool8 Mugshot_GradualWhiteFade(struct Task *task)
{
    bool32 active;

    sTransitionData->vblankDma = 0;
    active = 1;
    sTransitionData->bg0HOfsOpponent -= 8;
    sTransitionData->bg0HOfsPlayer += 8;

    if (task->data[4] < 160 / 2)
        task->data[4] += 2;
    if (task->data[4] > 160 / 2)
        task->data[4] = 160 / 2;

    if (++task->data[3] & 1)
    {
        s16 i;
        for (i = 0, active = 0; i <= task->data[4]; i++)
        {


            s16 y1 = 160 / 2 - i;
            s16 y2 = 160 / 2 + i;
            if (gScanlineEffectRegBuffers[0][y1] <= 15)
            {
                active = 1;
                gScanlineEffectRegBuffers[0][y1]++;
            }
            if (gScanlineEffectRegBuffers[0][y2] <= 15)
            {
                active = 1;
                gScanlineEffectRegBuffers[0][y2]++;
            }
        }
    }
    if (task->data[4] == 160 / 2 && !active)
        task->data[0]++;
    sTransitionData->vblankDma++;
    return 0;
}



static bool8 Mugshot_InitFadeWhiteToBlack(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    BlendPalettes((0x0000FFFF | 0xFFFF0000), 16, ((31) | ((31) << 5) | ((31) << 10)));
    sTransitionData->bldCnt = (1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5) | (3 << 6);
    task->data[3] = 0;
    task->data[0]++;
    return 1;
}

static bool8 Mugshot_FadeToBlack(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    task->data[3]++;
    memset(gScanlineEffectRegBuffers[0], task->data[3], 160 * 2);
    if (task->data[3] > 15)
        task->data[0]++;
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 Mugshot_End(struct Task *task)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    FadeScreenBlack();
    DestroyTask(FindTaskIdByFunc(task->func));
    return 0;
}

static void VBlankCB_Mugshots(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 2)/(16/8))); dmaRegs[2]; };
    SetGpuReg(0x12, sTransitionData->bg0VOfs);
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x44, sTransitionData->win0V);
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}

static void VBlankCB_MugshotsFadeOut(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 2)/(16/8))); dmaRegs[2]; };
    SetGpuReg(0x50, sTransitionData->bldCnt);
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x54))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}

static void HBlankCB_Mugshots(void)
{
    if ((*(vu16 *)(0x4000000 + 0x6)) < 160 / 2)
        (*(vu16 *)(0x4000000 + 0x10)) = sTransitionData->bg0HOfsOpponent;
    else
        (*(vu16 *)(0x4000000 + 0x10)) = sTransitionData->bg0HOfsPlayer;
}


static void Mugshots_CreateTrainerPics(struct Task *task)
{
    struct Sprite *opponentSprite, *playerSprite;
    s16 mugshotId;

    gReservedSpritePaletteCount = 10;
    mugshotId = task->data[15];
    task->data[13] = CreateTrainerSprite(sMugshotsTrainerPicIDsTable[mugshotId],
                                                  sMugshotsOpponentCoords[mugshotId][0] - 32,
                                                  sMugshotsOpponentCoords[mugshotId][1] + 42,
                                                  0, gDecompressionBuffer);
    task->data[14] = CreateTrainerSprite(PlayerGenderToFrontTrainerPicId(gSaveBlock2Ptr->playerGender, 1),
                                                240 + 32,
                                                106,
                                                0, gDecompressionBuffer);
    gReservedSpritePaletteCount = 12;

    opponentSprite = &gSprites[task->data[13]];
    playerSprite = &gSprites[task->data[14]];

    opponentSprite->callback = SpriteCB_MugshotTrainerPic;
    playerSprite->callback = SpriteCB_MugshotTrainerPic;

    opponentSprite->oam.affineMode = 3;
    playerSprite->oam.affineMode = 3;

    opponentSprite->oam.matrixNum = AllocOamMatrix();
    playerSprite->oam.matrixNum = AllocOamMatrix();

    opponentSprite->oam.shape = (((3 << 2) | (1)) & 0x03);
    playerSprite->oam.shape = (((3 << 2) | (1)) & 0x03);

    opponentSprite->oam.size = ((((3 << 2) | (1)) >> 2) & 0x03);
    playerSprite->oam.size = ((((3 << 2) | (1)) >> 2) & 0x03);

    CalcCenterToCornerVec(opponentSprite, (((3 << 2) | (1)) & 0x03), ((((3 << 2) | (1)) >> 2) & 0x03), 3);
    CalcCenterToCornerVec(playerSprite, (((3 << 2) | (1)) & 0x03), ((((3 << 2) | (1)) >> 2) & 0x03), 3);

    SetOamMatrixRotationScaling(opponentSprite->oam.matrixNum, sMugshotsOpponentRotationScales[mugshotId][0], sMugshotsOpponentRotationScales[mugshotId][1], 0);
    SetOamMatrixRotationScaling(playerSprite->oam.matrixNum, -512, 512, 0);
}

static void SpriteCB_MugshotTrainerPic(struct Sprite *sprite)
{
    while (sMugshotTrainerPicFuncs[sprite->data[0]](sprite));
}


static bool8 MugshotTrainerPic_Pause(struct Sprite *sprite)
{
    return 0;
}

static bool8 MugshotTrainerPic_Init(struct Sprite *sprite)
{
    s16 speeds[(sizeof(sTrainerPicSlideSpeeds) / sizeof((sTrainerPicSlideSpeeds)[0]))];
    s16 accels[(sizeof(sTrainerPicSlideAccels) / sizeof((sTrainerPicSlideAccels)[0]))];

    memcpy(speeds, sTrainerPicSlideSpeeds, sizeof(sTrainerPicSlideSpeeds));
    memcpy(accels, sTrainerPicSlideAccels, sizeof(sTrainerPicSlideAccels));
    sprite->data[0]++;
    sprite->data[1] = speeds[sprite->data[7]];
    sprite->data[2] = accels[sprite->data[7]];
    return 1;
}

static bool8 MugshotTrainerPic_Slide(struct Sprite *sprite)
{
    sprite->x += sprite->data[1];


    if (sprite->data[7] && sprite->x < 240 - 107)
        sprite->data[0]++;
    else if (!sprite->data[7] && sprite->x > 103)
        sprite->data[0]++;
    return 0;
}

static bool8 MugshotTrainerPic_SlideSlow(struct Sprite *sprite)
{


    sprite->data[1] += sprite->data[2];
    sprite->x += sprite->data[1];


    if (sprite->data[1] == 0)
    {
        sprite->data[0]++;
        sprite->data[2] = -sprite->data[2];
        sprite->data[6] = 1;
    }
    return 0;
}




static bool8 MugshotTrainerPic_SlideOffscreen(struct Sprite *sprite)
{
    sprite->data[1] += sprite->data[2];
    sprite->x += sprite->data[1];
    if (sprite->x < -31 || sprite->x > 240 + 31)
        sprite->data[0]++;
    return 0;
}

static void SetTrainerPicSlideDirection(s16 spriteId, bool16 dirId)
{
    gSprites[spriteId].data[7] = dirId;
}

static void IncrementTrainerPicState(s16 spriteId)
{
    gSprites[spriteId].data[0]++;
}

static s16 IsTrainerPicSlideDone(s16 spriteId)
{
    return gSprites[spriteId].data[6];
}
# 2289 "src/battle_transition.c"
static void Task_Slice(u8 taskId)
{
    while (sSlice_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 Slice_Init(struct Task *task)
{
    u16 i;

    InitTransitionData();
    ScanlineEffect_Clear();
    task->data[2] = 1 << 8;
    task->data[3] = 1;
    sTransitionData->winIn = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    sTransitionData->winOut = 0;
    sTransitionData->win0V = 160;
    for (i = 0; i < 160; i++)
    {
        gScanlineEffectRegBuffers[1][i] = sTransitionData->cameraX;
        gScanlineEffectRegBuffers[1][160 + i] = 240;
    }
    EnableInterrupts((1 << 1));
    SetVBlankCallback(VBlankCB_Slice);
    SetHBlankCallback(HBlankCB_Slice);
    task->data[0]++;
    return 1;
}

static bool8 Slice_Main(struct Task *task)
{
    u16 i;

    sTransitionData->vblankDma = 0;
    task->data[1] += (task->data[2] >> 8);
    if (task->data[1] > 240)
        task->data[1] = 240;
    if (task->data[2] <= 0xFFF)
        task->data[2] += task->data[3];
    if (task->data[3] < 128)
        task->data[3] <<= 1;

    for (i = 0; i < 160; i++)
    {
        u16 *ofsBuffer = &gScanlineEffectRegBuffers[0][i];
        u16 *win0HBuffer = &gScanlineEffectRegBuffers[0][i + 160];


        if (i & 1)
        {
            *ofsBuffer = sTransitionData->cameraX + task->data[1];
            *win0HBuffer = 240 - task->data[1];
        }
        else
        {
            *ofsBuffer = sTransitionData->cameraX - task->data[1];
            *win0HBuffer = (((task->data[1]) << 8) | (240 + 1));
        }
    }
    if (task->data[1] >= 240)
        task->data[0]++;
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 Slice_End(struct Task *task)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    FadeScreenBlack();
    DestroyTask(FindTaskIdByFunc(Task_Slice));
    return 0;
}

static void VBlankCB_Slice(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x44, sTransitionData->win0V);
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 4)/(16/8))); dmaRegs[2]; };
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(&gScanlineEffectRegBuffers[1][160]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}

static void HBlankCB_Slice(void)
{
    s16 offset = gScanlineEffectRegBuffers[1][(*(vu16 *)(0x4000000 + 0x6))];

    (*(vu16 *)(0x4000000 + 0x14)) = offset;
    (*(vu16 *)(0x4000000 + 0x18)) = offset;
    (*(vu16 *)(0x4000000 + 0x1c)) = offset;
}
# 2398 "src/battle_transition.c"
static void Task_WhiteBarsFade(u8 taskId)
{
    while (sWhiteBarsFade_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 WhiteBarsFade_Init(struct Task *task)
{
    u16 i;

    InitTransitionData();
    ScanlineEffect_Clear();
    sTransitionData->bldCnt = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5)) | (2 << 6);
    sTransitionData->bldY = 0;
    sTransitionData->winIn = (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4);
    sTransitionData->winOut = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    sTransitionData->win0V = 160;
    for (i = 0; i < 160; i++)
    {
        gScanlineEffectRegBuffers[1][i] = 0;
        gScanlineEffectRegBuffers[1][i + 160] = 240;
    }
    EnableInterrupts((1 << 1));
    SetHBlankCallback(HBlankCB_WhiteBarsFade);
    SetVBlankCallback(VBlankCB_WhiteBarsFade);
    task->data[0]++;
    return 0;
}

static bool8 WhiteBarsFade_StartBars(struct Task *task)
{
    s16 i, posY;
    s16 delays[(sizeof(sWhiteBarsFade_StartDelays) / sizeof((sWhiteBarsFade_StartDelays)[0]))];
    struct Sprite *sprite;
    memcpy(delays, sWhiteBarsFade_StartDelays, sizeof(sWhiteBarsFade_StartDelays));

    for (i = 0, posY = 0; i < 6; i++, posY += (1 + 160 / 6))
    {
        sprite = &gSprites[CreateInvisibleSprite(SpriteCB_WhiteBarFade)];
        sprite->x = 240;
        sprite->y = posY;
        sprite->data[5] = delays[i];
    }



    sprite->data[6]++;

    task->data[0]++;
    return 0;
}

static bool8 WhiteBarsFade_WaitBars(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    if (sTransitionData->counter >= 6)
    {
        BlendPalettes((0x0000FFFF | 0xFFFF0000), 16, ((31) | ((31) << 5) | ((31) << 10)));
        task->data[0]++;
    }
    return 0;
}

static bool8 WhiteBarsFade_BlendToBlack(struct Task *task)
{
    sTransitionData->vblankDma = 0;
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    SetVBlankCallback(((void *)0));
    SetHBlankCallback(((void *)0));
    sTransitionData->win0H = 240;
    sTransitionData->bldY = 0;
    sTransitionData->bldCnt = (1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5) | (3 << 6);
    sTransitionData->winIn = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    sTransitionData->counter = 0;
    SetVBlankCallback(VBlankCB_WhiteBarsFade_Blend);
    task->data[0]++;
    return 0;
}

static bool8 WhiteBarsFade_End(struct Task *task)
{
   sTransitionData->counter += 480;
   sTransitionData->bldY = sTransitionData->counter >> 8;
   if (sTransitionData->bldY > 16)
   {
       FadeScreenBlack();
       DestroyTask(FindTaskIdByFunc(Task_WhiteBarsFade));
   }
   return 0;
}

static void VBlankCB_WhiteBarsFade(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    SetGpuReg(0x50, sTransitionData->bldCnt);
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x44, sTransitionData->win0H);
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 4)/(16/8))); dmaRegs[2]; };
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(&gScanlineEffectRegBuffers[1][160]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}

static void VBlankCB_WhiteBarsFade_Blend(void)
{
    VBlankCB_BattleTransition();
    SetGpuReg(0x54, sTransitionData->bldY);
    SetGpuReg(0x50, sTransitionData->bldCnt);
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x40, sTransitionData->win0H);
    SetGpuReg(0x44, sTransitionData->win0V);
}


static void HBlankCB_WhiteBarsFade(void)
{
    vu16 index = (*(vu16 *)(0x4000000 + 0x6));

    if (index == 227)
        index = 0;
    (*(vu16 *)(0x4000000 + 0x54)) = gScanlineEffectRegBuffers[1][index];
}

static void SpriteCB_WhiteBarFade(struct Sprite *sprite)
{
    if (sprite->data[5])
    {
        sprite->data[5]--;
        if (sprite->data[6])
            sTransitionData->vblankDma = 1;
    }
    else
    {
        u16 i;
        u16 *bldY = &gScanlineEffectRegBuffers[0][sprite->y];
        u16 *win0H = &gScanlineEffectRegBuffers[0][sprite->y + 160];



        u32 stripeWidth = sprite->data[6] ? ((1 + 160 / 6) - 2) : (1 + 160 / 6);

        for (i = 0; i < stripeWidth; i++)
        {
            bldY[i] = sprite->data[0] >> 8;
            win0H[i] = (u8)(sprite->x);
        }
        if (sprite->x == 0 && sprite->data[0] == (16 << 8))
            sprite->data[1] = 1;
        sprite->x -= 24;
        sprite->data[0] += 192;
        if (sprite->x < 0)
            sprite->x = 0;
        if (sprite->data[0] > (16 << 8))
            sprite->data[0] = (16 << 8);
        if (sprite->data[6])
            sTransitionData->vblankDma = 1;
        if (sprite->data[1])
        {
            if (sprite->data[6] == 0 || (sTransitionData->counter > 4))
            {
                sTransitionData->counter++;
                DestroySprite(sprite);
            }
        }
    }
}
# 2579 "src/battle_transition.c"
static void Task_GridSquares(u8 taskId)
{
    while (sGridSquares_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 GridSquares_Init(struct Task *task)
{
    u16 *tilemap, *tileset;

    GetBg0TilesDst(&tilemap, &tileset);
    CpuSet(sGridSquare_Gfx, tileset, 0x00000000 | ((0x20)/(16/8) & 0x1FFFFF));
    { vu16 tmp = (vu16)(0xF0 << 8); CpuSet((void *)&tmp, tilemap, 0x00000000 | 0x01000000 | ((0x800)/(16/8) & 0x1FFFFF)); };
    LoadPalette(sFieldEffectPal_Pokeball, (0x000 + ((15) * 16)), sizeof(sFieldEffectPal_Pokeball));
    task->data[0]++;
    return 0;
}

static bool8 GridSquares_Main(struct Task *task)
{
    u16 *tileset;

    if (task->data[1] == 0)
    {
        GetBg0TilemapDst(&tileset);
        task->data[1] = 3;
        task->data[2]++;
        CpuSet(&sGridSquare_Gfx[task->data[2] * 8], tileset, 0x00000000 | ((0x20)/(16/8) & 0x1FFFFF));
        if (task->data[2] > 13)
        {
            task->data[0]++;
            task->data[1] = 16;
        }
    }
    task->data[1]--;
    return 0;
}

static bool8 GridSquares_End(struct Task *task)
{
    if (--task->data[1] == 0)
    {
        FadeScreenBlack();
        DestroyTask(FindTaskIdByFunc(Task_GridSquares));
    }
    return 0;
}
# 2637 "src/battle_transition.c"
static void Task_AngledWipes(u8 taskId)
{
    while (sAngledWipes_Funcs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 AngledWipes_Init(struct Task *task)
{
    u16 i;

    InitTransitionData();
    ScanlineEffect_Clear();
    sTransitionData->winIn = (((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
    sTransitionData->winOut = 0;
    sTransitionData->win0V = 160;
    for (i = 0; i < 160; i++)
        gScanlineEffectRegBuffers[0][i] = (((0) << 8) | (240));
    CpuSet(gScanlineEffectRegBuffers[0], gScanlineEffectRegBuffers[1], 0x00000000 | ((160 * 2)/(16/8) & 0x1FFFFF));
    SetVBlankCallback(VBlankCB_AngledWipes);
    task->data[0]++;
    return 1;
}

static bool8 AngledWipes_SetWipeData(struct Task *task)
{
    InitBlackWipe(sTransitionData->data,
                  sAngledWipes_MoveData[task->data[1]][0],
                  sAngledWipes_MoveData[task->data[1]][1],
                  sAngledWipes_MoveData[task->data[1]][2],
                  sAngledWipes_MoveData[task->data[1]][3],
                  1, 1);
    task->data[2] = sAngledWipes_MoveData[task->data[1]][4];
    task->data[0]++;
    return 1;
}

static bool8 AngledWipes_DoWipe(struct Task *task)
{
    s16 i;
    bool8 finished;

    sTransitionData->vblankDma = 0;
    for (i = 0, finished = 0; i < 16; i++)
    {
        s16 left = gScanlineEffectRegBuffers[0][sTransitionData->data[3]] >> 8;
        s16 right = gScanlineEffectRegBuffers[0][sTransitionData->data[3]] & 0xFF;
        if (task->data[2] == 0)
        {

            if (left < sTransitionData->data[2])
                left = sTransitionData->data[2];
            if (left > right)
                left = right;
        }
        else
        {

            if (right > sTransitionData->data[2])
                right = sTransitionData->data[2];
            if (right <= left)
                right = left;
        }
        gScanlineEffectRegBuffers[0][sTransitionData->data[3]] = ((right) | ((left) << 8));
        if (finished)
        {
            task->data[0]++;
            break;
        }
        finished = UpdateBlackWipe(sTransitionData->data, 1, 1);
    }
    sTransitionData->vblankDma++;
    return 0;
}

static bool8 AngledWipes_TryEnd(struct Task *task)
{
    if (++task->data[1] < 7)
    {

        task->data[0]++;
        task->data[3] = sAngledWipes_EndDelays[task->data[1] - 1];
        return 1;
    }
    else
    {

        { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
        FadeScreenBlack();
        DestroyTask(FindTaskIdByFunc(Task_AngledWipes));
        return 0;
    }
}

static bool8 AngledWipes_StartNext(struct Task *task)
{
    if (--task->data[3] == 0)
    {

        task->data[0] = 1;
        return 1;
    }
    else
        return 0;
}

static void VBlankCB_AngledWipes(void)
{
    { vu16 *dmaRegs = (vu16 *)(0x4000000 + 0xb0); dmaRegs[5] &= ~(0x3000 | 0x0800 | 0x0200); dmaRegs[5] &= ~0x8000; dmaRegs[5]; };
    VBlankCB_BattleTransition();
    if (sTransitionData->vblankDma)
        { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[0]); dmaRegs[1] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | ((160 * 2)/(16/8))); dmaRegs[2]; };
    SetGpuReg(0x48, sTransitionData->winIn);
    SetGpuReg(0x4a, sTransitionData->winOut);
    SetGpuReg(0x44, sTransitionData->win0V);
    SetGpuReg(0x40, gScanlineEffectRegBuffers[1][0]);
    { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xb0); dmaRegs[0] = (vu32)(gScanlineEffectRegBuffers[1]); dmaRegs[1] = (vu32)(&(*(vu16 *)(0x4000000 + 0x40))); dmaRegs[2] = (vu32)((1 | ((0x0000 | 0x0040 | 0x0200 | 0x0000 | 0x2000 | 0x8000) << 16))); dmaRegs[2]; };
}
# 2770 "src/battle_transition.c"
static void CreateIntroTask(s16 fadeToGrayDelay, s16 fadeFromGrayDelay, s16 numFades, s16 fadeToGraySpeed, s16 fadeFromGraySpeed)
{
    u8 taskId = CreateTask(Task_BattleTransition_Intro, 3);
    gTasks[taskId].data[1] = fadeToGrayDelay;
    gTasks[taskId].data[2] = fadeFromGrayDelay;
    gTasks[taskId].data[3] = numFades;
    gTasks[taskId].data[4] = fadeToGraySpeed;
    gTasks[taskId].data[5] = fadeFromGraySpeed;
    gTasks[taskId].data[6] = fadeToGrayDelay;
}

static bool8 IsIntroTaskDone(void)
{
    if (FindTaskIdByFunc(Task_BattleTransition_Intro) == 0xFF)
        return 1;
    else
        return 0;
}

static void Task_BattleTransition_Intro(u8 taskId)
{
    while (sTransitionIntroFuncs[gTasks[taskId].data[0]](&gTasks[taskId]));
}

static bool8 TransitionIntro_FadeToGray(struct Task *task)
{
    if (task->data[6] == 0 || --task->data[6] == 0)
    {
        task->data[6] = task->data[1];
        task->data[7] += task->data[4];
        if (task->data[7] > 16)
            task->data[7] = 16;
        BlendPalettes(-1, task->data[7], ((11) | ((11) << 5) | ((11) << 10)));
    }
    if (task->data[7] >= 16)
    {

        task->data[0]++;
        task->data[6] = task->data[2];
    }
    return 0;
}

static bool8 TransitionIntro_FadeFromGray(struct Task *task)
{
    if (task->data[6] == 0 || --task->data[6] == 0)
    {
        task->data[6] = task->data[2];
        task->data[7] -= task->data[5];
        if (task->data[7] < 0)
            task->data[7] = 0;
        BlendPalettes((0x0000FFFF | 0xFFFF0000), task->data[7], ((11) | ((11) << 5) | ((11) << 10)));
    }
    if (task->data[7] == 0)
    {
        if (--task->data[3] == 0)
        {

            DestroyTask(FindTaskIdByFunc(Task_BattleTransition_Intro));
        }
        else
        {

            task->data[6] = task->data[1];
            task->data[0] = 0;
        }
    }
    return 0;
}
# 2852 "src/battle_transition.c"
static void InitTransitionData(void)
{
    memset(sTransitionData, 0, sizeof(*sTransitionData));
    FieldCameraGetPixelOffsetAtGround(&sTransitionData->cameraX, &sTransitionData->cameraY);
}

static void VBlankCB_BattleTransition(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void GetBg0TilemapDst(u16 **tilesetPtr)
{
    u16 charBase;

    charBase = GetGpuReg(0x8) >> 2;
    charBase <<= 14;
    *tilesetPtr = (u16 *)(0x6000000 + charBase);
}

static void GetBg0TilesDst(u16 **tilemapPtr, u16 **tilesetPtr)
{
    u16 screenBase, charBase;

    screenBase = (GetGpuReg(0x8) >> 8) & 0x1F;
    charBase = GetGpuReg(0x8) >> 2;
    screenBase <<= 11;
    charBase <<= 14;
    *tilemapPtr = (u16 *)(0x6000000 + screenBase);
    *tilesetPtr = (u16 *)(0x6000000 + charBase);
}

static void FadeScreenBlack(void)
{
    BlendPalettes((0x0000FFFF | 0xFFFF0000), 16, ((0) | ((0) << 5) | ((0) << 10)));
}

static void SetSinWave(s16 *buffer, s16 offset, s16 index, s16 frequency, s16 amplitude, s16 bufSize)
{
    u8 i;

    for (i = 0; bufSize > 0; bufSize--, i++, index += frequency)
        buffer[i] = offset + Sin(index & 0xFF, amplitude);
}

static void SetCircularMask(s16 *buffer, s16 x, s16 y, s16 radius)
{
    s16 i;

    memset(buffer, 10, 160 * sizeof(u16));

    for (i = 0; i < 64; i++)
    {
        s16 sinResult, cosResult, leftX, topY, bottomY, nextTopY, nextBottomY, winVal;




        sinResult = Sin(i, radius);
        cosResult = Cos(i, radius);
        leftX = x - sinResult;
        winVal = x + sinResult;
        topY = y - cosResult;
        bottomY = y + cosResult;
        if (leftX < 0)
            leftX = 0;
        if (winVal > 240)
            winVal = 240;
        if (topY < 0)
            topY = 0;
        if (bottomY > 160 - 1)
            bottomY = 160 - 1;
        winVal |= (leftX << 8);
        buffer[topY] = winVal;
        buffer[bottomY] = winVal;
        cosResult = Cos(i + 1, radius);
        nextTopY = y - cosResult;
        nextBottomY = y + cosResult;
        if (nextTopY < 0)
            nextTopY = 0;
        if (nextBottomY > 160 - 1)
            nextBottomY = 160 - 1;

        while (topY > nextTopY)
            buffer[--topY] = winVal;
        while (topY < nextTopY)
            buffer[++topY] = winVal;
        while (bottomY > nextBottomY)
            buffer[--bottomY] = winVal;
        while (bottomY < nextBottomY)
            buffer[++bottomY] = winVal;
    }
}

static void InitBlackWipe(s16 *data, s16 startX, s16 startY, s16 endX, s16 endY, s16 stepX, s16 stepY)
{
    data[0] = startX;
    data[1] = startY;
    data[2] = startX;
    data[3] = startY;
    data[4] = endX;
    data[5] = endY;
    data[6] = stepX;
    data[7] = stepY;
    data[8] = endX - startX;
    if (data[8] < 0)
    {

        data[8] = -data[8];
        data[6] = -stepX;
    }
    data[9] = endY - startY;
    if (data[9] < 0)
    {

        data[9] = -data[9];
        data[7] = -stepY;
    }
    data[10] = 0;
}

static bool8 UpdateBlackWipe(s16 *data, bool8 xExact, bool8 yExact)
{
    u8 numFinished;

    if (data[8] > data[9])
    {

        data[2] += data[6];



        data[10] += data[9];
        if (data[10] > data[8])
        {
            data[3] += data[7];
            data[10] -= data[8];
        }
    }
    else
    {

        data[3] += data[7];



        data[10] += data[8];
        if (data[10] > data[9])
        {
            data[2] += data[6];
            data[10] -= data[9];
        }
    }

    numFinished = 0;


    if ((data[6] > 0 && data[2] >= data[4])
     || (data[6] < 0 && data[2] <= data[4]))
    {
        numFinished++;
        if (xExact)
            data[2] = data[4];
    }


    if ((data[7] > 0 && data[3] >= data[5])
     || (data[7] < 0 && data[3] <= data[5]))
    {
        numFinished++;
        if (yExact)
            data[3] = data[5];
    }


    if (numFinished == 2)
        return 1;
    else
        return 0;
}
