# 0 "src/dodrio_berry_picking.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/dodrio_berry_picking.c"
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
# 2 "src/dodrio_berry_picking.c" 2
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
# 3 "src/dodrio_berry_picking.c" 2
# 1 "include/dodrio_berry_picking.h" 1
# 10 "include/dodrio_berry_picking.h"
struct DodrioGame_Berries
{
    u8 ids[11];
    u8 fallDist[11];
};

struct DodrioGame_PlayerCommData
{
    u8 pickState;
    bool8 __attribute__((aligned(4))) ateBerry;
    bool8 __attribute__((aligned(4))) missedBerry;
};

struct DodrioGame_Player
{
    u8 name[16];
    bool32 receivedGameStatePacket;
    struct DodrioGame_Berries berries;
    struct DodrioGame_PlayerCommData comm;
    u32 unused;
};


void StartDodrioBerryPicking(u16 partyId, MainCallback exitCallback);
void ShowDodrioBerryPickingRecords(void);
void IsDodrioInParty(void);


void SendPacket_ReadyToStart(bool32 ready);
bool8 RecvPacket_ReadyToStart(s32 playerId);
void SendPacket_GameState(struct DodrioGame_Player *player,
                          struct DodrioGame_PlayerCommData *player1,
                          struct DodrioGame_PlayerCommData *player2,
                          struct DodrioGame_PlayerCommData *player3,
                          struct DodrioGame_PlayerCommData *player4,
                          struct DodrioGame_PlayerCommData *player5,
                          u8 numGraySquares,
                          bool32 berriesFalling,
                          bool32 allReadyToEnd);
bool32 RecvPacket_GameState(u32 playerId,
                            struct DodrioGame_Player *player,
                            struct DodrioGame_PlayerCommData *player1,
                            struct DodrioGame_PlayerCommData *player2,
                            struct DodrioGame_PlayerCommData *player3,
                            struct DodrioGame_PlayerCommData *player4,
                            struct DodrioGame_PlayerCommData *player5,
                            u8 *numGraySquares,
                            bool32 *berriesFalling,
                            bool32 *allReadyToEnd);
void SendPacket_PickState(u8 pickState);
bool32 RecvPacket_PickState(u32 playerId, u8 *pickState);
void SendPacket_ReadyToEnd(bool32 readyToEnd);
bool32 RecvPacket_ReadyToEnd(u32 playerId);
# 4 "src/dodrio_berry_picking.c" 2
# 1 "include/dynamic_placeholder_text_util.h" 1





void DynamicPlaceholderTextUtil_Reset(void);
void DynamicPlaceholderTextUtil_SetPlaceholderPtr(u8 idx, const u8 *ptr);
u8 *DynamicPlaceholderTextUtil_ExpandPlaceholders(u8 *dest, const u8 *src);
const u8 *DynamicPlaceholderTextUtil_GetPlaceholderPtr(u8 idx);
u8 GetColorFromTextColorTable(u16 graphicId);
# 5 "src/dodrio_berry_picking.c" 2
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
# 6 "src/dodrio_berry_picking.c" 2
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
# 7 "src/dodrio_berry_picking.c" 2
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
# 8 "src/dodrio_berry_picking.c" 2
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
# 9 "src/dodrio_berry_picking.c" 2
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
# 10 "src/dodrio_berry_picking.c" 2
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
# 11 "src/dodrio_berry_picking.c" 2
# 1 "include/minigame_countdown.h" 1



void StartMinigameCountdown(u16 tilesTag, u16 palTag, s16 x, s16 y, u8 subpriority);
bool32 IsMinigameCountdownRunning(void);
# 12 "src/dodrio_berry_picking.c" 2
# 1 "include/new_menu_helpers.h" 1





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
# 13 "src/dodrio_berry_picking.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 14 "src/dodrio_berry_picking.c" 2
# 1 "include/save.h" 1
# 45 "include/save.h"
enum
{
    SAVE_NORMAL,
    SAVE_LINK,
    SAVE_EREADER,
    SAVE_HALL_OF_FAME,
    SAVE_OVERWRITE_DIFFERENT_FILE,
    SAVE_HALL_OF_FAME_ERASE_BEFORE,
};



struct SaveSectorLocation
{
    u8 *data;
    u16 size;
};

struct SaveSector
{
    u8 data[3968];
    u8 unused[128 - 12];
    u16 id;
    u16 checksum;
    u32 signature;
    u32 counter;
};





enum
{
    ENABLE,
    DISABLE,
    CHECK
};

extern u32 gDamagedSaveSectors;
extern struct SaveSector *gSaveDataBufferPtr;
extern u16 gSaveFileStatus;
extern void (*gGameContinueCallback)(void);
extern u16 gSaveAttemptStatus;

extern struct SaveSector gSaveDataBuffer;

void ClearSaveData(void);
void Save_ResetSaveCounters(void);
u8 HandleSavingData(u8 saveType);
u8 TrySavingData(u8 saveType);
bool8 LinkFullSave_Init(void);
bool8 LinkFullSave_WriteSector(void);
bool8 LinkFullSave_ReplaceLastSector(void);
bool8 LinkFullSave_SetLastSectorSignature(void);
bool8 WriteSaveBlock2(void);
bool8 WriteSaveBlock1Sector(void);
u8 LoadGameSave(u8 saveType);
u32 TryReadSpecialSaveSector(u8 sector, u8 *dst);
u32 TryWriteSpecialSaveSector(u8 sector, u8 *src);
void Task_LinkFullSave(u8 taskId);
# 15 "src/dodrio_berry_picking.c" 2
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
# 16 "src/dodrio_berry_picking.c" 2
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
# 17 "src/dodrio_berry_picking.c" 2
# 1 "include/task.h" 1
# 18 "src/dodrio_berry_picking.c" 2
# 1 "include/text_window.h" 1





struct TilesPal
{
    u32 *tiles;
    u16 *pal;
};

void rbox_fill_rectangle(u8 windowId);
const u16 *GetTextWindowPalette(u8 id);
const u16 *GetOverworldTextboxPalettePtr(void);
void LoadMenuMessageWindowGfx(u8 windowId, u16 tileStart, u8 palette);
void LoadStdWindowGfx(u8 windowId, u16 tileStart, u8 palette);
void LoadUserWindowGfx(u8 windowId, u16 tileStart, u8 palette);
void LoadUserWindowGfx2(u8 windowId, u16 tileStart, u8 palette);
void LoadStdWindowGfxOnBg(u8 bgId, u16 tileStart, u8 palette);
void DrawTextBorderOuter(u8 windowId, u16 tileStart, u8 palette);
void DrawTextBorderInner(u8 windowId, u16 tileNum, u8 palNum);
void LoadHelpMessageWindowGfx(u8 windowId, u16 destOffset, u8 palIdx);
void LoadSignpostWindowGfx(u8 windowId, u16 destOffset, u8 palIdx);
void LoadStdWindowTiles(u8 windowId, u16 destOffset);
void LoadQuestLogWindowTiles(u8 windowId, u16 destOffset);
# 19 "src/dodrio_berry_picking.c" 2
# 1 "include/text_window_graphics.h" 1



struct TextWindowGraphics
{
    const void *tiles;
    const void *palette;
};

extern const u16 gSignpostWindow_Gfx[];
extern const u16 gStdTextWindow_Gfx[];
extern const u16 gQuestLogWindow_Gfx[];
extern const u16 gTextWindowPalettes[][16];

extern const struct TextWindowGraphics gUserFrames[];

const struct TextWindowGraphics *GetUserWindowGraphics(u8 idx);
# 20 "src/dodrio_berry_picking.c" 2
# 1 "include/constants/songs.h" 1
# 21 "src/dodrio_berry_picking.c" 2
# 1 "include/constants/sound.h" 1
# 22 "src/dodrio_berry_picking.c" 2
# 1 "include/constants/items.h" 1
# 23 "src/dodrio_berry_picking.c" 2
# 40 "src/dodrio_berry_picking.c"
enum {
    BG_INTERFACE,
    BG_TREE_LEFT,
    BG_TREE_RIGHT,
    BG_SCENERY
};

enum {
    FUNC_INTRO,
    FUNC_INIT_COUNTDOWN,
    FUNC_COUNTDOWN,
    FUNC_WAIT_START,
    FUNC_PLAY_GAME,
    FUNC_INIT_RESULTS,
    FUNC_RESULTS,
    FUNC_ASK_PLAY_AGAIN,
    FUNC_END_LINK,
    FUNC_EXIT,
    FUNC_RESET_GAME,
    FUNC_WAIT_END_GAME,
};

enum {
    GFXFUNC_LOAD,
    GFXFUNC_SHOW_NAMES,
    GFXFUNC_SHOW_RESULTS,
    GFXFUNC_MSG_PLAY_AGAIN,
    GFXFUNC_MSG_SAVING,
    GFXFUNC_MSG_COMM_STANDBY,
    GFXFUNC_ERASE_MSG,
    GFXFUNC_MSG_PLAYER_DROPPED,
    GFXFUNC_STOP,
    GFXFUNC_IDLE,
};

enum {
    PLAY_AGAIN_NONE,
    PLAY_AGAIN_YES,
    PLAY_AGAIN_NO,
    PLAY_AGAIN_DROPPED = 5,
};

enum {
    PICK_NONE,
    PICK_RIGHT,
    PICK_MIDDLE,
    PICK_LEFT,
    PICK_DISABLED,
};

enum {
    BERRY_BLUE,
    BERRY_GREEN,
    BERRY_GOLD,
    BERRY_MISSED,
    BERRY_PRIZE,
    BERRY_IN_ROW,
    NUM_BERRY_IDS
};






enum {
    BERRYSTATE_NONE,
    BERRYSTATE_PICKED,
    BERRYSTATE_EATEN,
    BERRYSTATE_SQUISHED,
};

enum {
    INPUTSTATE_NONE,
    INPUTSTATE_TRY_PICK,
    INPUTSTATE_PICKED,
    INPUTSTATE_ATE_BERRY,
    INPUTSTATE_BAD_MISS,
};




enum {
    STATUS_YELLOW,
    STATUS_GRAY,
    STATUS_RED,
};
# 148 "src/dodrio_berry_picking.c"
struct DodrioGame_Gfx
{
    u16 __attribute__((aligned(4))) tilemapBuffers[3][0x800];
    bool32 finished;
    u8 __attribute__((aligned(4))) taskId;
    u8 __attribute__((aligned(4))) windowIds[5 + 5];
    u8 __attribute__((aligned(4))) state;
    u8 __attribute__((aligned(4))) loadState;
    u16 __attribute__((aligned(4))) timer;
    u8 __attribute__((aligned(4))) cursorSelection;
    u8 __attribute__((aligned(4))) playAgainState;
    void (*func)(void);
};

struct StatusBar
{
    u8 unused[12];
    bool8 entered[10];
    s16 yChange[10];
    u16 spriteIds[10];
    u16 flashTimer;
};




struct DodrioGame_MonInfo
{
    bool8 isShiny;
};

struct DodrioGame_ScoreResults
{
    u8 ranking;
    u32 score;
};

struct DodrioGame
{
               void (*exitCallback)(void);
               u8 __attribute__((aligned(4))) taskId;
               u8 __attribute__((aligned(4))) playersReceived;
               u8 __attribute__((aligned(4))) startState;
               u8 __attribute__((aligned(4))) state;
               u8 __attribute__((aligned(4))) timer;
               u8 __attribute__((aligned(4))) funcId;
               u8 __attribute__((aligned(4))) prevFuncId;
               bool8 __attribute__((aligned(4))) isLeader;
               u8 __attribute__((aligned(4))) numPlayers;
               u8 __attribute__((aligned(4))) multiplayerId;
               u8 __attribute__((aligned(8))) countdownEndDelay;
               u8 __attribute__((aligned(4))) posToPlayerId[5];
               u8 __attribute__((aligned(4))) unused2;
               u8 __attribute__((aligned(4))) numGraySquares;
               u8 __attribute__((aligned(4))) berryColStart;
               u8 __attribute__((aligned(4))) berryColEnd;
               u16 berryResults[5][NUM_BERRY_IDS];
               u16 berriesEaten[5];
               u8 __attribute__((aligned(4))) difficulty[5];
               u8 __attribute__((aligned(4))) pickStateQueue[4];
               u8 __attribute__((aligned(4))) eatTimer[11];
               u8 __attribute__((aligned(4))) inputState[5];
               u8 __attribute__((aligned(4))) inputDelay[5];
               u8 __attribute__((aligned(4))) berryEatenBy[11];
               u8 __attribute__((aligned(4))) berryState[11];
               u8 __attribute__((aligned(4))) fallTimer[11];
               u8 __attribute__((aligned(4))) newBerryTimer[11];
               u8 __attribute__((aligned(4))) prevBerryIds[11];
               u8 __attribute__((aligned(4))) playersAttemptingPick[11][2];
               u8 __attribute__((aligned(4))) playAgainStates[5];
               u16 berriesPickedInRow;
               u16 maxBerriesPickedInRow;
               bool32 startCountdown;
               bool32 startGame;
               bool32 berriesFalling;
               u8 __attribute__((aligned(4))) clearRecvCmdTimer;
               u8 __attribute__((aligned(4))) clearRecvCmds;
               bool32 allReadyToEnd;
               bool32 readyToEnd[5];
               bool8 __attribute__((aligned(4))) playingPickSound;
               bool8 __attribute__((aligned(4))) playingSquishSound[11];
               u8 __attribute__((aligned(4))) endSoundState;
               bool8 __attribute__((aligned(4))) readyToStart[5];
               struct DodrioGame_Gfx gfx;
               struct DodrioGame_MonInfo monInfo[5];
               struct DodrioGame_Player players[5];
               struct DodrioGame_Player player;
               struct DodrioGame_ScoreResults scoreResults[5];
};

static __attribute__((section("ewram_data"))) struct DodrioGame * sGame = ((void *)0);
static __attribute__((section("ewram_data"))) u16 *sDodrioSpriteIds[5] = {((void *)0)};
static __attribute__((section("ewram_data"))) u16 *sCloudSpriteIds[2] = {((void *)0)};
static __attribute__((section("ewram_data"))) u16 *sBerrySpriteIds[11] = {((void *)0)};
static __attribute__((section("ewram_data"))) u16 *sBerryIconSpriteIds[4] = {((void *)0)};
static __attribute__((section("ewram_data"))) struct StatusBar * sStatusBar = ((void *)0);
static __attribute__((section("ewram_data"))) struct DodrioGame_Gfx * sGfx = ((void *)0);

static bool32 sExitingGame;

static void ResetTasksAndSprites(void);
static void InitDodrioGame(struct DodrioGame *);
static void Task_StartDodrioGame(u8);
static void DoGameIntro(void);
static void InitCountdown(void);
static void DoCountdown(void);
static void WaitGameStart(void);
static void PlayGame_Leader(void);
static void PlayGame_Member(void);
static void WaitEndGame_Leader(void);
static void WaitEndGame_Member(void);
static void InitResults_Leader(void);
static void InitResults_Member(void);
static void DoResults(void);
static void AskPlayAgain(void);
static void EndLink(void);
static void ExitGame(void);
static void ResetGame(void);
static void Task_NewGameIntro(u8);
static void Task_CommunicateMonInfo(u8);
static void RecvLinkData_Leader(void);
static void SendLinkData_Leader(void);
static void RecvLinkData_Member(void);
static void SendLinkData_Member(void);
static void HandleSound_Leader(void);
static void HandleSound_Member(void);
static void CB2_DodrioGame(void);
static void VBlankCB_DodrioGame(void);
static void InitMonInfo(struct DodrioGame_MonInfo *, struct Pokemon *);
static void CreateTask_(TaskFunc, u8);
static void CreateDodrioGameTask(TaskFunc);
static void SetGameFunc(u8);
static bool32 SlideTreeBordersOut(void);
static void InitFirstWaveOfBerries(void);
static bool32 TryPickBerry(u8, u8, u8);
static void UpdateFallingBerries(void);
static void UpdateGame_Leader(void);
static void UpdateGame_Member(void);
static bool32 AllPlayersReadyToStart(void);
static void ResetReadyToStart(void);
static void GetActiveBerryColumns(u8, u8 *, u8 *);
static bool32 ReadyToEndGame_Leader(void);
static bool32 ReadyToEndGame_Member(void);
static void TryIncrementDifficulty(u8);
static u8 GetPlayerIdAtColumn(u8);
static u8 GetNewBerryId(u8, u8);
static u8 GetNewBerryIdByDifficulty(u8, u8);
static void IncrementBerryResult(u8, u8, u8);
static void UpdateBerriesPickedInRow(bool32);
static void SetMaxBerriesPickedInRow(void);
static void ResetForPlayAgainPrompt(void);
static void SetRandomPrize(void);
static void TryUpdateRecords(void);
static u8 UpdatePickStateQueue(u8);
static void HandleWaitPlayAgainInput(void);
static void ResetPickState(void);
static u32 GetScore(u8);
static void Task_ShowDodrioBerryPickingRecords(u8);
static void PrintRecordsText(u8);
static void SpriteCB_Dodrio(struct Sprite *);
static u32 DoDodrioMissedAnim(struct Sprite *);
static u32 DoDodrioIntroAnim(struct Sprite *);
static void SetDodrioInvisibility(bool8, u8);
static void SpriteCB_Status(struct Sprite *);
static void SetBerryIconsInvisibility(bool8);
static void SpriteCB_Cloud(struct Sprite *);
static s16 GetDodrioXPos(u8, u8);
static void Task_TryRunGfxFunc(u8);
static void LoadGfx(void);
static void ShowNames(void);
static void ShowResults(void);
static void Msg_WantToPlayAgain(void);
static void Msg_SavingDontTurnOff(void);
static void Msg_CommunicationStandby(void);
static void EraseMessage(void);
static void Msg_SomeoneDroppedOut(void);
static void StopGfxFuncs(void);
static void GfxIdle(void);
static void SetGfxFunc(MainCallback);
static MainCallback GetGfxFunc(void);
static void InitBgs(void);
static bool32 LoadBgGfx(void);
static void InitGameGfx(struct DodrioGame_Gfx *);
static void LoadDodrioGfx(void);
static void CreateDodrioSprite(struct DodrioGame_MonInfo *, u8, u8, u8);
static void SetAllDodrioInvisibility(bool8, u8);
static void LoadBerryGfx(void);
static void CreateBerrySprites(void);
static void CreateCloudSprites(void);
static void CreateStatusBarSprites(void);
static void StartDodrioIntroAnim(u8);
static void SetGfxFuncById(u8);
static void SetStatusBarInvisibility(bool8);
static void ResetCloudPos(void);
static void SetCloudInvisibility(bool8);
static u8 GetPlayAgainState(void);
static u32 GetHighestScore(void);
static void ResetBerryAndStatusBarSprites(void);
static void FreeBerrySprites(void);
static void FreeStatusBar(void);
static void FreeDodrioSprites(u8);
static void FreeCloudSprites(void);
static void StartCloudMovement(void);
static void ResetGfxState(void);
static void InitStatusBarPos(void);
static bool32 DoStatusBarIntro(void);
static void StartDodrioMissedAnim(u8);
static void SetBerryInvisibility(u8, bool8);
static void SetBerryAnim(u16, u8);
static void SetBerryYPos(u8, u8);
static void SetDodrioAnim(u8, u8);
static void UpdateStatusBarAnim(u8);
static bool32 IsGfxFuncActive(void);
static u32 IncrementWithLimit(u32, u32);
static u32 Min(u32, u32);


static const struct BgTemplate sBgTemplates_Duplicate[] =
{
    {
        .bg = BG_INTERFACE,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    },
    {
        .bg = BG_TREE_LEFT,
        .charBaseIndex = 2,
        .mapBaseIndex = 12,
        .screenSize = 1,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0
    },
    {
        .bg = BG_TREE_RIGHT,
        .charBaseIndex = 2,
        .mapBaseIndex = 14,
        .screenSize = 1,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0
    },
    {
        .bg = BG_SCENERY,
        .charBaseIndex = 3,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0
    },
};

static const struct WindowTemplate sWindowTemplate_Dummy_Duplicate = { 0xFF, 0, 0, 0, 0, 0, 0, };

static const struct WindowTemplate sWindowTemplates_Results_Duplicate[] =
{
    {
        .bg = BG_INTERFACE,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 28,
        .height = 3,
        .paletteNum = 13,
        .baseBlock = 0x13,
    },
    {
        .bg = BG_INTERFACE,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 28,
        .height = 13,
        .paletteNum = 13,
        .baseBlock = 0x67,
    }
};

static const struct WindowTemplate sWindowTemplate_Prize_Duplicate =
{
    .bg = BG_INTERFACE,
    .tilemapLeft = 1,
    .tilemapTop = 6,
    .width = 28,
    .height = 7,
    .paletteNum = 13,
    .baseBlock = 0x67,
};

static const struct WindowTemplate sWindowTemplates_PlayAgain_Duplicate[] =
{
    {
        .bg = BG_INTERFACE,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 19,
        .height = 3,
        .paletteNum = 13,
        .baseBlock = 0x13,
    },
    {
        .bg = BG_INTERFACE,
        .tilemapLeft = 22,
        .tilemapTop = 7,
        .width = 6,
        .height = 4,
        .paletteNum = 13,
        .baseBlock = 0x4C,
    }
};

static const struct WindowTemplate sWindowTemplate_DroppedOut_Duplicate =
{
    .bg = BG_INTERFACE,
    .tilemapLeft = 4,
    .tilemapTop = 6,
    .width = 22,
    .height = 5,
    .paletteNum = 13,
    .baseBlock = 0x13,
};

static const struct WindowTemplate sWindowTemplate_CommStandby_Duplicate =
{
    .bg = BG_INTERFACE,
    .tilemapLeft = 5,
    .tilemapTop = 8,
    .width = 19,
    .height = 3,
    .paletteNum = 13,
    .baseBlock = 0x13,
};




static const u8 sActiveColumnMap[5][5][11] =
{
    {

        {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
    },
    {
        {0, 1, 2, 3, 4, 5, 6, 3, 8, 9, 0},
        {0, 1, 2, 5, 6, 3, 4, 5, 8, 9, 0},
    },
    {
        {0, 1, 2, 3, 4, 5, 6, 7, 2, 9, 0},
        {0, 1, 4, 5, 6, 7, 2, 3, 4, 9, 0},
        {0, 1, 6, 7, 2, 3, 4, 5, 6, 9, 0},
    },
    {
        {0, 1, 2, 3, 4, 5, 6, 7, 8, 1, 0},
        {0, 3, 4, 5, 6, 7, 8, 1, 2, 3, 0},
        {0, 5, 6, 7, 8, 1, 2, 3, 4, 5, 0},
        {0, 7, 8, 1, 2, 3, 4, 5, 6, 7, 0},
    },
    {
        { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 },
        { 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2 },
        { 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4 },
        { 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6 },
        { 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8 },
    },
};




static const u8 sDodrioHeadToColumnMap[5][5][3] =
{
    {
        {4, 5, 6},
    },
    {
        {3, 4, 5},
        {5, 6, 3},
    },
    {
        {4, 5, 6},
        {6, 7, 2},
        {2, 3, 4},
    },
    {
        {3, 4, 5},
        {5, 6, 7},
        {7, 8, 1},
        {1, 2, 3},
    },
    {
        {4, 5, 6},
        {6, 7, 8},
        {8, 9, 0},
        {0, 1, 2},
        {2, 3, 4},
    },
};



static const u8 sDodrioNeighborMap[5][5][3] =
{
    {
        {1, 0, 1},
    },
    {
        {1, 0, 1},
        {0, 1, 0},
    },
    {
        {2, 0, 1},
        {0, 1, 2},
        {1, 2, 0},
    },
    {
        {3, 0, 1},
        {0, 1, 2},
        {1, 2, 3},
        {2, 3, 0},
    },
    {
        {4, 0, 1},
        {0, 1, 2},
        {1, 2, 3},
        {2, 3, 4},
        {3, 4, 0},
    },
};





__attribute__((aligned(4)))
static const u8 sPlayerIdAtColumn[5][11] =
{
    {9, 9, 9, 9, 1, 1, 1, 9, 9, 9, 9},
    {9, 9, 9, 0, 0, 1, 1, 0, 9, 9, 9},
    {9, 9, 2, 2, 0, 0, 1, 1, 1, 9, 9},
    {9, 3, 3, 0, 0, 1, 1, 2, 2, 3, 9},
    {3, 3, 4, 4, 0, 0, 1, 1, 2, 2, 3},
};
# 601 "src/dodrio_berry_picking.c"
static const u8 sUnsharedColumns[5][5] =
{
    {5},
    {4, 6},
    {3, 5, 7},
    {2, 4, 6, 8},

    {1, 3, 5, 6, 9},



};


static const u32 sDuplicateGfx[] = INCBIN_U32("graphics/dodrio_berry_picking/bg.gbapal",
                                              "graphics/dodrio_berry_picking/tree_border.gbapal",
                                              "graphics/dodrio_berry_picking/dodrio.gbapal",
                                              "graphics/dodrio_berry_picking/shiny.gbapal",
                                              "graphics/dodrio_berry_picking/status.gbapal",
                                              "graphics/dodrio_berry_picking/berries.gbapal",
                                              "graphics/dodrio_berry_picking/berries.4bpp.lz",
                                              "graphics/dodrio_berry_picking/cloud.gbapal",
                                              "graphics/dodrio_berry_picking/bg.4bpp.lz",
                                              "graphics/dodrio_berry_picking/tree_border.4bpp.lz",
                                              "graphics/dodrio_berry_picking/status.4bpp.lz",
                                              "graphics/dodrio_berry_picking/cloud.4bpp.lz",
                                              "graphics/dodrio_berry_picking/dodrio.4bpp.lz",
                                              "graphics/dodrio_berry_picking/bg.bin.lz",
                                              "graphics/dodrio_berry_picking/tree_border_right.bin.lz",
                                              "graphics/dodrio_berry_picking/tree_border_left.bin.lz");

static const u8 sBerryFallDelays[][3] =
{
    { [BERRY_BLUE] = 40, [BERRY_GREEN] = 24, [BERRY_GOLD] = 13 },
    { [BERRY_BLUE] = 32, [BERRY_GREEN] = 19, [BERRY_GOLD] = 10 },
    { [BERRY_BLUE] = 22, [BERRY_GREEN] = 13, [BERRY_GOLD] = 7 },
};





__attribute__((aligned(4)))
static const u8 sTreeBorderXPos[5] = {8, 5, 8, 11, 15};


__attribute__((aligned(4)))
static const u8 sDifficultyThresholds[7] = {5, 10, 20, 30, 50, 70, 100};

__attribute__((aligned(4)))
static const u8 sPrizeBerryIds[][10] =
{
    {
        (((148 - 133) + 1)) - 1,
        (((149 - 133) + 1)) - 1,
        (((150 - 133) + 1)) - 1,
        (((151 - 133) + 1)) - 1,
        (((152 - 133) + 1)) - 1,
        (((152 - 133) + 1)) - 1,
        (((151 - 133) + 1)) - 1,
        (((150 - 133) + 1)) - 1,
        (((149 - 133) + 1)) - 1,
        (((148 - 133) + 1)) - 1
    },
    {
        (((153 - 133) + 1)) - 1,
        (((154 - 133) + 1)) - 1,
        (((155 - 133) + 1)) - 1,
        (((156 - 133) + 1)) - 1,
        (((157 - 133) + 1)) - 1,
        (((158 - 133) + 1)) - 1,
        (((159 - 133) + 1)) - 1,
        (((160 - 133) + 1)) - 1,
        (((161 - 133) + 1)) - 1,
        (((162 - 133) + 1)) - 1
    },
    {
        (((163 - 133) + 1)) - 1,
        (((164 - 133) + 1)) - 1,
        (((165 - 133) + 1)) - 1,
        (((166 - 133) + 1)) - 1,
        (((167 - 133) + 1)) - 1,
        (((167 - 133) + 1)) - 1,
        (((166 - 133) + 1)) - 1,
        (((165 - 133) + 1)) - 1,
        (((164 - 133) + 1)) - 1,
        (((163 - 133) + 1)) - 1
    },
};

static void (*const sLeaderFuncs[])(void) =
{
    [FUNC_INTRO] = DoGameIntro,
    [FUNC_INIT_COUNTDOWN] = InitCountdown,
    [FUNC_COUNTDOWN] = DoCountdown,
    [FUNC_WAIT_START] = WaitGameStart,
    [FUNC_PLAY_GAME] = PlayGame_Leader,
    [FUNC_INIT_RESULTS] = InitResults_Leader,
    [FUNC_RESULTS] = DoResults,
    [FUNC_ASK_PLAY_AGAIN] = AskPlayAgain,
    [FUNC_END_LINK] = EndLink,
    [FUNC_EXIT] = ExitGame,
    [FUNC_RESET_GAME] = ResetGame,
    [FUNC_WAIT_END_GAME] = WaitEndGame_Leader
};

static void (*const sMemberFuncs[])(void) =
{
    [FUNC_INTRO] = DoGameIntro,
    [FUNC_INIT_COUNTDOWN] = InitCountdown,
    [FUNC_COUNTDOWN] = DoCountdown,
    [FUNC_WAIT_START] = WaitGameStart,
    [FUNC_PLAY_GAME] = PlayGame_Member,
    [FUNC_INIT_RESULTS] = InitResults_Member,
    [FUNC_RESULTS] = DoResults,
    [FUNC_ASK_PLAY_AGAIN] = AskPlayAgain,
    [FUNC_END_LINK] = EndLink,
    [FUNC_EXIT] = ExitGame,
    [FUNC_RESET_GAME] = ResetGame,
    [FUNC_WAIT_END_GAME] = WaitEndGame_Member
};

void StartDodrioBerryPicking(u16 partyId, MainCallback exitCallback)
{
    sExitingGame = 0;

    if (gReceivedRemoteLinkPlayers && (sGame = AllocZeroed(sizeof(*sGame))))
    {
        ResetTasksAndSprites();
        InitDodrioGame(sGame);
        sGame->exitCallback = exitCallback;
        sGame->multiplayerId = GetMultiplayerId();
        sGame->player = sGame->players[sGame->multiplayerId];
        InitMonInfo(&sGame->monInfo[sGame->multiplayerId], &gPlayerParty[partyId]);
        CreateTask(Task_StartDodrioGame, 1);
        SetMainCallback2(CB2_DodrioGame);
        SetRandomPrize();
        GetActiveBerryColumns(sGame->numPlayers, &sGame->berryColStart, &sGame->berryColEnd);
        StopMapMusic();
        PlayNewMapMusic(330);
    }
    else
    {

        SetMainCallback2(exitCallback);
        return;
    }
}

static void ResetTasksAndSprites(void)
{
    ResetTasks();
    ResetSpriteData();
    FreeAllSpritePalettes();
}

static void InitDodrioGame(struct DodrioGame * game)
{
    u8 i;

    game->startState = 0;
    game->state = 0;
    game->timer = 0;
    game->funcId = FUNC_INTRO;
    game->prevFuncId = FUNC_INTRO;
    game->startGame = 0;
    game->berriesFalling = 0;
    game->countdownEndDelay = 0;
    game->numGraySquares = 0;
    game->unused2 = 0;
    game->allReadyToEnd = 0;

    for (i = 0; i < (sizeof(game->pickStateQueue) / sizeof((game->pickStateQueue)[0])); i++)
        game->pickStateQueue[i] = PICK_NONE;

    for (i = 0; i < 5; i++)
    {
        game->inputState[i] = INPUTSTATE_NONE;
        game->inputDelay[i] = 0;
        game->berryResults[i][BERRY_BLUE] = 0;
        game->berryResults[i][BERRY_GREEN] = 0;
        game->berryResults[i][BERRY_GOLD] = 0;
        game->berryResults[i][BERRY_MISSED] = 0;
        game->berryResults[i][BERRY_IN_ROW] = 0;
        game->playAgainStates[i] = PLAY_AGAIN_NONE;
        game->readyToEnd[i] = 0;
    }

    for (i = 0; i < 11; i++)
    {
        game->fallTimer[i] = 0;
        game->newBerryTimer[i] = 0;
        game->berryState[i] = BERRYSTATE_NONE;
        game->playersAttemptingPick[i][0] = 0xFF;
        game->playersAttemptingPick[i][1] = 0xFF;
    }

    game->isLeader = GetMultiplayerId() == 0 ? 1 : 0;
    game->numPlayers = GetLinkPlayerCount();
    game->posToPlayerId[0] = GetMultiplayerId();
    for (i = 1; i < game->numPlayers; i++)
    {
        game->posToPlayerId[i] = game->posToPlayerId[i - 1] + 1;
        if (game->posToPlayerId[i] > game->numPlayers - 1)
            game->posToPlayerId[i] %= game->numPlayers;
    }
}

static void Task_StartDodrioGame(u8 taskId)
{
    u8 i, numPlayers;

    switch (sGame->startState)
    {
    case 0:
        SetVBlankCallback(((void *)0));
        CreateTask_(Task_CommunicateMonInfo, 4);
        sGame->startState++;
        break;
    case 1:
        if (!FuncIsActiveTask(Task_CommunicateMonInfo))
        {
            InitGameGfx(&sGame->gfx);
            sGame->startState++;
        }
        break;
    case 2:
        if (!IsGfxFuncActive())
        {
            Rfu_SetLinkStandbyCallback();
            sGame->startState++;
        }
        break;
    case 3:
        if (IsLinkTaskFinished())
        {
            if (gReceivedRemoteLinkPlayers)
            {
                LoadWirelessStatusIndicatorSpriteGfx();
                CreateWirelessStatusIndicatorSprite(0, 0);
            }
            sGame->startState++;
        }
        break;
    case 4:
        numPlayers = sGame->numPlayers;
        LoadDodrioGfx();
        for (i = 0; i < numPlayers; i++)
            CreateDodrioSprite(&sGame->monInfo[sGame->posToPlayerId[i]], i, sGame->posToPlayerId[i], sGame->numPlayers);
        SetAllDodrioInvisibility(0, sGame->numPlayers);
        sGame->startState++;
        break;
    case 5:
        LoadBerryGfx();
        CreateBerrySprites();
        CreateCloudSprites();
        CreateStatusBarSprites();
        sGame->startState++;
        break;
    case 6:
        BlendPalettes((0x0000FFFF | 0xFFFF0000), 16, ((0) | ((0) << 5) | ((0) << 10)));
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
        SetVBlankCallback(VBlankCB_DodrioGame);
        sGame->startState++;
        break;
    case 7:
        UpdatePaletteFade();
        if (!gPaletteFade.active)
            sGame->startState++;
        break;
    default:
        DestroyTask(taskId);
        CreateDodrioGameTask(Task_NewGameIntro);
        break;
    }
}

static void Task_DodrioGame_Leader(u8 taskId)
{
    RecvLinkData_Leader();
    sLeaderFuncs[sGame->funcId]();
    if (!sExitingGame)
        UpdateGame_Leader();
    SendLinkData_Leader();
}

static void Task_DodrioGame_Member(u8 taskId)
{
    RecvLinkData_Member();
    sMemberFuncs[sGame->funcId]();
    if (!sExitingGame)
        UpdateGame_Member();
    SendLinkData_Member();
}

static void DoGameIntro(void)
{
    switch (sGame->state)
    {
    case 0:
        StartDodrioIntroAnim(1);
        SetGfxFuncById(GFXFUNC_SHOW_NAMES);
        sGame->state++;
        break;
    case 1:
        if (!IsGfxFuncActive())
            SetGameFunc(FUNC_INIT_COUNTDOWN);
        break;
    }
}

static void InitCountdown(void)
{
    switch (sGame->state)
    {
    case 0:
        InitFirstWaveOfBerries();
        sGame->state++;
        break;
    default:
        sGame->startCountdown = 1;
        SetGameFunc(FUNC_COUNTDOWN);
        break;
    }
}

static void DoCountdown(void)
{
    switch (sGame->state)
    {
    case 0:
        StartMinigameCountdown(7, 8, 240 / 2, 160 / 2, 0);
        sGame->state++;
        break;
    case 1:
        Rfu_SetLinkStandbyCallback();
        sGame->state++;
        break;
    case 2:
        if (IsLinkTaskFinished())
            sGame->state++;
        break;
    case 3:
        if (!IsMinigameCountdownRunning())
        {
            Rfu_SetLinkStandbyCallback();
            sGame->state++;
        }
        break;
    case 4:
        if (IsLinkTaskFinished())
            SetGameFunc(FUNC_WAIT_START);
        break;
    }
}

static void WaitGameStart(void)
{
    switch (sGame->state)
    {
    case 0:
        if (sGame->startGame)
            SetGameFunc(FUNC_PLAY_GAME);
        break;
    }
}

static void PlayGame_Leader(void)
{
    switch (sGame->state)
    {
    case 0:
        if (sGame->numGraySquares < 10)
        {
            if (sGame->inputState[0] == INPUTSTATE_NONE)
            {
                if (({(gMain.newKeys) & (0x0040);}))
                {
                    if (sGame->players[0].comm.pickState == PICK_NONE)
                    {
                        sGame->players[0].comm.ateBerry = 0;
                        sGame->players[0].comm.pickState = UpdatePickStateQueue(PICK_MIDDLE);
                    }
                }
                else if (({(gMain.newKeys) & (0x0010);}))
                {
                    if (sGame->players[0].comm.pickState == PICK_NONE)
                    {
                        sGame->players[0].comm.ateBerry = 0;
                        sGame->players[0].comm.pickState = UpdatePickStateQueue(PICK_RIGHT);
                    }
                }
                else if (({(gMain.newKeys) & (0x0020);}))
                {
                    if (sGame->players[0].comm.pickState == PICK_NONE)
                    {
                        sGame->players[0].comm.ateBerry = 0;
                        sGame->players[0].comm.pickState = UpdatePickStateQueue(PICK_LEFT);
                    }
                }
                else
                {
                    sGame->players[0].comm.pickState = UpdatePickStateQueue(PICK_NONE);
                }
            }
        }
        else
        {
            SetGameFunc(FUNC_WAIT_END_GAME);
        }
        UpdateFallingBerries();
        HandleSound_Leader();
        break;
    }
}
static void PlayGame_Member(void)
{
    if (sGame->numGraySquares < 10)
    {
        if (({(gMain.newKeys) & (0x0040);}))
        {
            if (sGame->players[sGame->multiplayerId].comm.pickState == PICK_NONE)
                sGame->player.comm.pickState = PICK_MIDDLE;
        }
        else if (({(gMain.newKeys) & (0x0010);}))
        {
            if (sGame->players[sGame->multiplayerId].comm.pickState == PICK_NONE)
                sGame->player.comm.pickState = PICK_RIGHT;
        }
        else if (({(gMain.newKeys) & (0x0020);}))
        {
            if (sGame->players[sGame->multiplayerId].comm.pickState == PICK_NONE)
                sGame->player.comm.pickState = PICK_LEFT;
        }
        else
        {
            sGame->player.comm.pickState = PICK_NONE;
        }
    }
    else
    {
        SetGameFunc(FUNC_WAIT_END_GAME);
    }
    HandleSound_Member();
}

static void WaitEndGame_Leader(void)
{
    u8 i;

    UpdateFallingBerries();
    HandleSound_Leader();
    if (ReadyToEndGame_Leader() == 1)
    {
        SetMaxBerriesPickedInRow();
        SetGameFunc(FUNC_INIT_RESULTS);
    }
    else
    {
        sGame->allReadyToEnd = 1;
        for (i = 1; i < sGame->numPlayers; i++)
        {
            if (sGame->readyToEnd[i] != 1)
            {
                sGame->allReadyToEnd = 0;
                break;
            }
        }
    }
}

static void WaitEndGame_Member(void)
{
    HandleSound_Member();
    if (ReadyToEndGame_Member() == 1)
        SetGameFunc(FUNC_INIT_RESULTS);
}

static void InitResults_Leader(void)
{
    u8 blockReceivedStatus;
    u8 i;
    switch (sGame->state)
    {
    case 0:
        SendBlock(0, sGame->berryResults, sizeof(sGame->berryResults));
        sGame->playersReceived = 0;
        sGame->state++;
        break;
    case 1:
        if (IsLinkTaskFinished())
            sGame->state++;
        break;
    case 2:
        blockReceivedStatus = GetBlockReceivedStatus();
        for (i = 0; i < sGame->numPlayers; blockReceivedStatus >>= 1, i++)
        {
            if (blockReceivedStatus & 1)
            {
                ResetBlockReceivedFlag(i);
                sGame->playersReceived++;
            }
        }
        if (sGame->playersReceived >= sGame->numPlayers)
        {
            sGame->timer++;
            sGame->state++;
        }
        break;
    default:
        if (WaitFanfare(1))
        {
            SetGameFunc(FUNC_RESULTS);
            FadeOutAndPlayNewMapMusic(311, 4);
        }
        break;
    }
}

static void InitResults_Member(void)
{
    u8 i;
    u8 blockReceivedStatus;

    switch (sGame->state) {
    case 0:
        SendBlock(0, sGame->berryResults[sGame->timer], sizeof(sGame->berryResults));
        sGame->playersReceived = 0;
        sGame->state++;
        break;
    case 1:
        if (IsLinkTaskFinished())
            sGame->state++;
        break;
    case 2:
        blockReceivedStatus = GetBlockReceivedStatus();
        for (i = 0; i < sGame->numPlayers; blockReceivedStatus >>= 1, i++)
        {
            if (blockReceivedStatus & 1)
            {
                memcpy(sGame->berryResults, gBlockRecvBuffer, sizeof(sGame->berryResults));
                ResetBlockReceivedFlag(i);
                sGame->playersReceived++;
            }
        }
        if (sGame->playersReceived >= sGame->numPlayers)
        {
            sGame->timer++;
            sGame->state++;
        }
        break;
    default:
        if (WaitFanfare(1))
        {
            sGame->maxBerriesPickedInRow = sGame->berryResults[sGame->multiplayerId][BERRY_IN_ROW];
            SetGameFunc(FUNC_RESULTS);
            FadeOutAndPlayNewMapMusic(311, 4);
        }
        break;
    }
}

static void DoResults(void)
{
    u8 playAgainState;
    u8 i;
    u8 blockReceivedStatus;

    switch (sGame->state)
    {
    case 0:
        TryUpdateRecords();
        SetStatusBarInvisibility(1);
        ResetCloudPos();
        SetCloudInvisibility(1);
        SetGfxFuncById(2);
        sGame->state++;
        break;
    case 1:
        if (!IsGfxFuncActive())
        {
            playAgainState = PLAY_AGAIN_YES;
            SetGfxFuncById(GFXFUNC_MSG_COMM_STANDBY);
            playAgainState = GetPlayAgainState();
            SendBlock(0, &playAgainState, sizeof(playAgainState));
            sGame->state++;
        }
        break;
    case 2:
        if (IsLinkTaskFinished())
        {
            sGame->state++;
            sGame->playersReceived = 0;
        }
        break;
    case 3:
        blockReceivedStatus = GetBlockReceivedStatus();
        for (i = 0; i < sGame->numPlayers; blockReceivedStatus >>= 1, i++)
        {
            if (blockReceivedStatus & 1)
            {
                *(sGame->playAgainStates + i) = *(u8 *)gBlockRecvBuffer[i];
                ResetBlockReceivedFlag(i);
                sGame->playersReceived++;
            }
        }
        if (sGame->playersReceived >= sGame->numPlayers)
        {
            if (++sGame->timer >= 120)
            {
                SetGfxFuncById(GFXFUNC_ERASE_MSG);
                sGame->state++;
            }
        }
        break;
    default:
        if (!IsGfxFuncActive())
            SetGameFunc(FUNC_ASK_PLAY_AGAIN);
        break;
    }
}

static void AskPlayAgain(void)
{
    u8 playAgainState;
    u8 i;
    u8 blockReceivedStatus;

    switch (sGame->state)
    {
    case 0:
        if (GetHighestScore() >= 3000)
            SetGfxFuncById(GFXFUNC_MSG_SAVING);
        sGame->state++;
        break;
    case 1:
        if (!IsGfxFuncActive())
        {
            SetGfxFuncById(GFXFUNC_MSG_PLAY_AGAIN);
            sGame->state++;
        }
        break;
    case 2:
        ResetBerryAndStatusBarSprites();
        ResetForPlayAgainPrompt();
        sGame->state++;
        break;
    case 3:
        if ((playAgainState = GetPlayAgainState()) != PLAY_AGAIN_NONE)
            sGame->state++;
        break;
    case 4:
        if (!IsGfxFuncActive())
        {
            SetGfxFuncById(GFXFUNC_MSG_COMM_STANDBY);
            playAgainState = GetPlayAgainState();
            SendBlock(0, &playAgainState, sizeof(playAgainState));
            sGame->state++;
        }
        break;
    case 5:
        if (IsLinkTaskFinished())
        {
            sGame->state++;
            sGame->playersReceived = 0;
        }
        break;
    case 6:
        blockReceivedStatus = GetBlockReceivedStatus();
        for (i = 0; i < sGame->numPlayers; blockReceivedStatus >>= 1, i++)
        {
            if (blockReceivedStatus & 1)
            {
                *(sGame->playAgainStates + i) = *(u8 *)gBlockRecvBuffer[i];
                ResetBlockReceivedFlag(i);
                sGame->playersReceived++;
            }
        }
        if (sGame->playersReceived >= sGame->numPlayers)
        {
            if (++sGame->timer >= 120)
            {
                ResetPickState();
                SetGfxFuncById(GFXFUNC_ERASE_MSG);
                sGame->state++;
            }
        }
        else
        {
            HandleWaitPlayAgainInput();
        }
        break;
    default:
        if (!IsGfxFuncActive())
        {
            for (i = 0; i < sGame->numPlayers; i++)
            {
                if (sGame->playAgainStates[i] == PLAY_AGAIN_NO)
                {
                    SetGameFunc(FUNC_END_LINK);
                    return;
                }
            }
            SetGameFunc(FUNC_RESET_GAME);
        }
        break;
    }
}

static void EndLink(void)
{
    switch (sGame->state)
    {
    case 0:
        SetCloseLinkCallback();
        SetGfxFuncById(GFXFUNC_MSG_PLAYER_DROPPED);
        sGame->state++;
        break;
    case 1:
        if (!IsGfxFuncActive())
            sGame->state++;
        break;
    case 2:
        if (GetPlayAgainState() == PLAY_AGAIN_DROPPED)
            sGame->state++;
        break;
    default:
        if (!gReceivedRemoteLinkPlayers)
            SetGameFunc(FUNC_EXIT);
        break;
    }
}

static void ExitGame(void)
{
    switch (sGame->state)
    {
    case 0:
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
        sGame->state++;
        break;
    case 1:
        UpdatePaletteFade();
        if (!gPaletteFade.active)
            sGame->state++;
        break;
    case 2:
        FreeBerrySprites();
        FreeStatusBar();
        FreeDodrioSprites(sGame->numPlayers);
        FreeCloudSprites();
        sExitingGame = 1;
        SetGfxFuncById(GFXFUNC_STOP);
        sGame->state++;
        break;
    default:
        if (!IsGfxFuncActive())
        {
            SetMainCallback2(sGame->exitCallback);
            DestroyTask(sGame->taskId);
            Free(sGame);
            FreeAllWindowBuffers();
        }
        break;
    }
}

static void ResetGame(void)
{
    switch (sGame->state)
    {
    case 0:
        SetGfxFuncById(GFXFUNC_IDLE);
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
        sGame->state++;
        break;
    case 1:
        UpdatePaletteFade();
        if (!gPaletteFade.active)
            sGame->state++;
        break;
    case 2:
        ChangeBgX(0, 0, BG_COORD_SET);
        ChangeBgY(0, 0, BG_COORD_SET);
        ChangeBgX(1, 0, BG_COORD_SET);
        ChangeBgY(1, 0, BG_COORD_SET);
        ChangeBgX(2, 0, BG_COORD_SET);
        ChangeBgY(2, 0, BG_COORD_SET);
        ChangeBgX(3, 0, BG_COORD_SET);
        ChangeBgY(3, 0, BG_COORD_SET);
        sGame->state++;
        break;
    case 3:
        StopMapMusic();
        sGame->state++;
        break;
    case 4:
        PlayNewMapMusic(330);
        StartCloudMovement();
        sGame->state++;
        break;
    case 5:
        BlendPalettes((0x0000FFFF | 0xFFFF0000), 16, ((0) | ((0) << 5) | ((0) << 10)));
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
        sGame->state++;
        break;
    case 6:
        UpdatePaletteFade();
        if (!gPaletteFade.active)
            sGame->state++;
        break;
    default:
        DestroyTask(sGame->taskId);
        CreateDodrioGameTask(Task_NewGameIntro);
        ResetGfxState();
        InitDodrioGame(sGame);
        if (!gReceivedRemoteLinkPlayers)
            sGame->numPlayers = 1;
        SetRandomPrize();
        SetCloudInvisibility(0);
        break;
    }
}

static void Task_NewGameIntro(u8 taskId)
{
    switch (sGame->state)
    {
    case 0:
        if (SlideTreeBordersOut() == 1)
            sGame->state++;
        break;
    case 1:
        InitStatusBarPos();
        sGame->state++;
        break;
    case 2:
        if (DoStatusBarIntro() == 1)
            sGame->state++;
        break;
    default:
        if (sGame->isLeader)
            CreateDodrioGameTask(Task_DodrioGame_Leader);
        else
            CreateDodrioGameTask(Task_DodrioGame_Member);
        DestroyTask(taskId);
        break;
    }
}



static void Task_CommunicateMonInfo(u8 taskId)
{
    s16 * data = gTasks[taskId].data;
    u8 i;
    u8 blockReceivedStatus;

    switch (data[0])
    {
    case 0:
        SendBlock(0, &sGame->monInfo[sGame->multiplayerId].isShiny, sizeof(sGame->monInfo[sGame->multiplayerId].isShiny));
        sGame->playersReceived = 0;
        data[0]++;
        break;
    case 1:
        if (IsLinkTaskFinished())
            data[0]++;
        break;
    case 2:
        blockReceivedStatus = GetBlockReceivedStatus();
        for (i = 0; i < sGame->numPlayers; blockReceivedStatus >>= 1, i++)
        {
            if (blockReceivedStatus & 1)
            {
                *(u8 *)&sGame->monInfo[i] = *(u8 *)gBlockRecvBuffer[i];
                ResetBlockReceivedFlag(i);
                sGame->playersReceived++;
            }
        }
        if (sGame->playersReceived >= sGame->numPlayers)
        {
            DestroyTask(taskId);
            SetGfxFuncById(GFXFUNC_ERASE_MSG);
            sGame->state++;
        }
        break;
    }
}



static void RecvLinkData_Gameplay(void)
{
    u8 i;
    u8 numPlayers = sGame->numPlayers;

    sGame->players[0].receivedGameStatePacket = RecvPacket_GameState(0,
                                                    &sGame->players[0],
                                                    &sGame->players[0].comm,
                                                    &sGame->players[1].comm,
                                                    &sGame->players[2].comm,
                                                    &sGame->players[3].comm,
                                                    &sGame->players[4].comm,
                                                    &sGame->numGraySquares,
                                                    &sGame->berriesFalling,
                                                    &sGame->allReadyToEnd);
    sGame->clearRecvCmds = 1;

    for (i = 1; i < numPlayers; i++)
    {
        if (sGame->inputState[i] == INPUTSTATE_NONE && !RecvPacket_PickState(i, &sGame->players[i].comm.pickState))
        {
            sGame->players[i].comm.pickState = PICK_NONE;
            sGame->clearRecvCmds = 0;
        }
    }
    if (++sGame->clearRecvCmdTimer >= 60)
    {
        if (sGame->clearRecvCmds)
        {
            ClearRecvCommands();
            sGame->clearRecvCmdTimer = 0;
        }
        else if (sGame->clearRecvCmdTimer > 70)
        {
            ClearRecvCommands();
            sGame->clearRecvCmdTimer = 0;
        }
    }

    for (i = 0; i < numPlayers; i++)
    {
        if (sGame->players[i].comm.pickState != PICK_NONE && sGame->inputState[i] == INPUTSTATE_NONE)
            sGame->inputState[i] = INPUTSTATE_TRY_PICK;

        switch (sGame->inputState[i])
        {
        case INPUTSTATE_NONE:
        default:
            break;
        case INPUTSTATE_TRY_PICK:
        case INPUTSTATE_PICKED:
        case INPUTSTATE_ATE_BERRY:
            if (++sGame->inputDelay[i] >= 6)
            {
                sGame->inputDelay[i] = 0;
                sGame->inputState[i] = INPUTSTATE_NONE;
                sGame->players[i].comm.pickState = PICK_NONE;
                sGame->players[i].comm.ateBerry = 0;
                sGame->players[i].comm.missedBerry = 0;
            }
            break;
        case INPUTSTATE_BAD_MISS:

            if (++sGame->inputDelay[i] >= 40)
            {
                sGame->inputDelay[i] = 0;
                sGame->inputState[i] = INPUTSTATE_NONE;
                sGame->players[i].comm.pickState = PICK_NONE;
                sGame->players[i].comm.ateBerry = 0;
                sGame->players[i].comm.missedBerry = 0;
            }
            break;
        }
    }
}

static void RecvLinkData_ReadyToEnd(void)
{
    u8 i;
    u8 numPlayers = sGame->numPlayers;

    sGame->players[0].receivedGameStatePacket = RecvPacket_GameState(0,
                                                    &sGame->players[0],
                                                    &sGame->players[0].comm,
                                                    &sGame->players[1].comm,
                                                    &sGame->players[2].comm,
                                                    &sGame->players[3].comm,
                                                    &sGame->players[4].comm,
                                                    &sGame->numGraySquares,
                                                    &sGame->berriesFalling,
                                                    &sGame->allReadyToEnd);
    sGame->clearRecvCmds = 1;

    for (i = 1; i < numPlayers; i++)
    {
        if (RecvPacket_ReadyToEnd(i))
        {
            sGame->readyToEnd[i] = 1;
            sGame->clearRecvCmds = 0;
        }
    }
    if (++sGame->clearRecvCmdTimer >= 60)
    {
        if (sGame->clearRecvCmds)
        {
            ClearRecvCommands();
            sGame->clearRecvCmdTimer = 0;
        }
        else if (sGame->clearRecvCmdTimer > 70)
        {
            ClearRecvCommands();
            sGame->clearRecvCmdTimer = 0;
        }
    }
}

static void RecvLinkData_Leader(void)
{
    switch (sGame->funcId)
    {
    case FUNC_WAIT_START:
        if (AllPlayersReadyToStart() == 1)
        {
            ResetReadyToStart();
            sGame->startGame = 1;
        }
        break;
    case FUNC_PLAY_GAME:
        RecvLinkData_Gameplay();
        break;
    case FUNC_WAIT_END_GAME:
        RecvLinkData_ReadyToEnd();
        break;
    }
}

static void SendLinkData_Leader(void)
{
    switch (sGame->funcId)
    {
    case FUNC_PLAY_GAME:
        SendPacket_GameState(&sGame->player,
                             &sGame->players[0].comm,
                             &sGame->players[1].comm,
                             &sGame->players[2].comm,
                             &sGame->players[3].comm,
                             &sGame->players[4].comm,
                             sGame->numGraySquares,
                             sGame->berriesFalling,
                             sGame->allReadyToEnd);
        break;
    case FUNC_WAIT_END_GAME:
        SendPacket_GameState(&sGame->player,
                             &sGame->players[0].comm,
                             &sGame->players[1].comm,
                             &sGame->players[2].comm,
                             &sGame->players[3].comm,
                             &sGame->players[4].comm,
                             sGame->numGraySquares,
                             sGame->berriesFalling,
                             sGame->allReadyToEnd);
        break;
    }
}

static void RecvLinkData_Member(void)
{
    switch (sGame->funcId)
    {
    case FUNC_PLAY_GAME:
        RecvPacket_GameState(sGame->multiplayerId,
                            &sGame->players[sGame->multiplayerId],
                            &sGame->players[0].comm,
                            &sGame->players[1].comm,
                            &sGame->players[2].comm,
                            &sGame->players[3].comm,
                            &sGame->players[4].comm,
                            &sGame->numGraySquares,
                            &sGame->berriesFalling,
                            &sGame->allReadyToEnd);
        break;
    case FUNC_WAIT_END_GAME:
        RecvPacket_GameState(sGame->multiplayerId,
                            &sGame->players[sGame->multiplayerId],
                            &sGame->players[0].comm,
                            &sGame->players[1].comm,
                            &sGame->players[2].comm,
                            &sGame->players[3].comm,
                            &sGame->players[4].comm,
                            &sGame->numGraySquares,
                            &sGame->berriesFalling,
                            &sGame->allReadyToEnd);
        break;
    }
}

static void SendLinkData_Member(void)
{
    switch (sGame->funcId)
    {
    case FUNC_WAIT_START:
        SendPacket_ReadyToStart(1);
        sGame->startGame = 1;
        break;
    case FUNC_PLAY_GAME:
        if (sGame->player.comm.pickState != PICK_NONE)
            SendPacket_PickState(sGame->player.comm.pickState);
        break;
    case FUNC_WAIT_END_GAME:
        if (!sGame->berriesFalling && !sGame->allReadyToEnd)
            SendPacket_ReadyToEnd(1);
        break;
    }
}

static void HandleSound_Leader(void)
{
    if (sGame->players[sGame->multiplayerId].comm.pickState == PICK_NONE)
    {
        if (!IsSEPlaying())
            sGame->playingPickSound = 0;
    }
    else if (sGame->players[sGame->multiplayerId].comm.ateBerry == 1)
    {
        if (!sGame->playingPickSound)
        {
            m4aSongNumStop(25);
            PlaySE(25);
            sGame->playingPickSound = 1;
        }
    }
    else if (sGame->players[sGame->multiplayerId].comm.missedBerry == 1)
    {
        if (!sGame->playingPickSound && !IsSEPlaying())
        {
            PlaySE(22);
            StartDodrioMissedAnim(1);
            sGame->playingPickSound = 1;
        }
    }

    if (sGame->endSoundState == 0 && sGame->numGraySquares >= 10)
    {

        StopMapMusic();
        sGame->endSoundState = 1;
    }
    else if (sGame->endSoundState == 1)
    {

        PlayFanfareByFanfareNum(10);
        sGame->endSoundState = 2;
    }
}

static void HandleSound_Member(void)
{
    u8 berryStart = sGame->berryColStart;
    u8 berryEnd = sGame->berryColEnd;
    u8 i;
    if (sGame->players[sGame->multiplayerId].comm.pickState == PICK_NONE)
    {
        if (sGame->players[sGame->multiplayerId].comm.ateBerry != 1
         && sGame->players[sGame->multiplayerId].comm.missedBerry != 1)
            sGame->playingPickSound = 0;
    }
    else if (sGame->players[sGame->multiplayerId].comm.ateBerry == 1)
    {
        if (!sGame->playingPickSound)
        {
            m4aSongNumStop(25);
            PlaySE(25);
            sGame->playingPickSound = 1;
        }
    }
    else if (sGame->players[sGame->multiplayerId].comm.missedBerry == 1)
    {
        if (!sGame->playingPickSound && !IsSEPlaying())
        {
            PlaySE(22);
            StartDodrioMissedAnim(1);
            sGame->playingPickSound = 1;
        }
    }
    for (i = berryStart; i < berryEnd; i++)
    {
        struct DodrioGame_Berries * berries = &sGame->players[sGame->multiplayerId].berries;
        if (berries->fallDist[i] >= 10)
        {
            if (sGame->playingSquishSound[i] == 0)
            {
                PlaySE(67 + berries->ids[i]);
                sGame->playingSquishSound[i] = 1;
            }
        }
        else
        {
            sGame->playingSquishSound[i] = 0;
        }
    }
    if (sGame->endSoundState == 0 && sGame->numGraySquares >= 10)
    {

        StopMapMusic();
        sGame->endSoundState = 1;
    }
    else if (sGame->endSoundState == 1)
    {

        PlayFanfareByFanfareNum(10);
        sGame->endSoundState = 2;
    }
}

static void CB2_DodrioGame(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void VBlankCB_DodrioGame(void)
{
    TransferPlttBuffer();
    LoadOam();
    ProcessSpriteCopyRequests();
}

static void InitMonInfo(struct DodrioGame_MonInfo * monInfo, struct Pokemon * mon)
{
    monInfo->isShiny = IsMonShiny(mon);
}

static void CreateTask_(TaskFunc func, u8 priority)
{
    CreateTask(func, priority);
}

static void CreateDodrioGameTask(TaskFunc func)
{
    sGame->taskId = CreateTask(func, 1);
    sGame->state = 0;
    sGame->startState = 0;
    sGame->timer = 0;
}

static void SetGameFunc(u8 funcId)
{
    sGame->prevFuncId = sGame->funcId;
    sGame->funcId = funcId;
    sGame->state = 0;
    sGame->timer = 0;
}

static bool32 SlideTreeBordersOut(void)
{
    u8 x = sGame->timer / 4;
    sGame->timer++;
    if (x != 0 && sGame->timer % 4 == 0)
    {
        if (x < sTreeBorderXPos[sGame->numPlayers - 1])
        {

            SetGpuReg(0x14, (x * 8));
            SetGpuReg(0x18, -(x * 8));
            return 0;
        }
        else
        {

            return 1;
        }
    }
    else
    {
        return 0;
    }
}

static void InitFirstWaveOfBerries(void)
{
    u8 i;
    u8 berryStart = sGame->berryColStart;
    u8 berryEnd = sGame->berryColEnd;

    for (i = berryStart; i < berryEnd; i++)
    {
        struct DodrioGame_Berries * berries = &sGame->player.berries;
        berries->fallDist[i] = (i % 2 == 0) ? 1 : 0;
        berries->ids[i] = BERRY_BLUE;
    }
}




static void HandlePickBerries(void)
{
    u8 berryStart = sGame->berryColStart;
    u8 berryEnd = sGame->berryColEnd;
    u8 numPlayers = sGame->numPlayers;
    u8 i, j, k, column;


    if (sGame->numGraySquares >= 10)
        return;

    for (i = 0; i < numPlayers; i++)
    {
        u8 *pickState = &sGame->players[i].comm.pickState;
        if (*pickState != PICK_NONE && sGame->inputState[i] == INPUTSTATE_TRY_PICK)
        {

            for (j = berryStart; j < berryEnd; j++)
            {
                column = sActiveColumnMap[0][0][j];


                if (sGame->playersAttemptingPick[column][0] == i
                 || sGame->playersAttemptingPick[column][1] == i)
                    break;


                if (TryPickBerry(i, *pickState, column) == 1)
                {
                    for (k = 0; k < (sizeof(sGame->playersAttemptingPick[0]) / sizeof((sGame->playersAttemptingPick[0])[0])); k++)
                    {
                        if (sGame->playersAttemptingPick[column][k] == 0xFF)
                        {
                            sGame->playersAttemptingPick[column][k] = i;
                            sGame->inputState[i] = INPUTSTATE_PICKED;
                            sGame->berryState[column] = BERRYSTATE_PICKED;
                            break;
                        }
                    }
                    break;
                }
                if (sGame->players[i].comm.missedBerry == 1)
                    break;
            }
        }
    }

    for (j = berryStart; j < berryEnd; j++)
    {
        u8 playerIdMissed = 0xFF;
        column = sActiveColumnMap[0][0][j];
        if (sGame->berryState[column] == BERRYSTATE_PICKED)
        {
            s32 delayRemaining;
            u8 playerIdPicked, delayStage = sGame->difficulty[GetPlayerIdAtColumn(column)] / 7;
            if (delayStage >= (sizeof(sBerryFallDelays) / sizeof((sBerryFallDelays)[0])) - 1)
                delayStage = (sizeof(sBerryFallDelays) / sizeof((sBerryFallDelays)[0])) - 1;

            delayRemaining = sBerryFallDelays[delayStage][sGame->players[0].berries.ids[column]] - sGame->fallTimer[column];
            if (delayRemaining < 6)
                sGame->eatTimer[column] += delayRemaining;

            if (++sGame->eatTimer[column] >= 6)
            {
                sGame->eatTimer[column] = 0;
                if (sGame->playersAttemptingPick[column][0] == 0xFF
                 && sGame->playersAttemptingPick[column][1] == 0xFF)
                {

                    continue;
                }
                else if (sGame->playersAttemptingPick[column][0] != 0xFF
                      && sGame->playersAttemptingPick[column][1] == 0xFF)
                {

                    playerIdPicked = sGame->playersAttemptingPick[column][0];
                }
                else
                {


                    u8 playerId1 = sGame->playersAttemptingPick[column][0];
                    i = sGame->playersAttemptingPick[column][1];
                    if (!(Random() & 1))
                    {
                        playerIdPicked = playerId1;
                        playerIdMissed = i;
                    }
                    else
                    {
                        playerIdPicked = i;
                        playerIdMissed = playerId1;
                    }
                }


                sGame->player.berries.fallDist[column] = 7;
                sGame->berryState[column] = BERRYSTATE_EATEN;
                sGame->inputState[playerIdPicked] = INPUTSTATE_ATE_BERRY;
                sGame->berryEatenBy[column] = playerIdPicked;
                sGame->players[playerIdPicked].comm.ateBerry = 1;





                    sGame->players[playerIdMissed].comm.missedBerry = 1;

                sGame->berriesEaten[playerIdPicked]++;
                IncrementBerryResult(0, column, playerIdPicked);
                UpdateBerriesPickedInRow(1);
                TryIncrementDifficulty(playerIdPicked);
                sGame->prevBerryIds[column] = sGame->player.berries.ids[column];
                sGame->player.berries.ids[column] = BERRY_MISSED;
                sGame->playersAttemptingPick[column][0] = 0xFF;
                sGame->playersAttemptingPick[column][1] = 0xFF;
            }
        }
    }
}

static bool32 TryPickBerry(u8 playerId, u8 pickState, u8 column)
{
    s32 pick = 0;
    u8 numPlayersIdx = sGame->numPlayers - 1;
    struct DodrioGame_Berries * berries = &sGame->player.berries;

    switch (pickState)
    {
    case PICK_LEFT:
    default:
        pick = 0;
        break;
    case PICK_MIDDLE:
        pick = 1;
        break;
    case PICK_RIGHT:
        pick = 2;
        break;
    }


    if (berries->fallDist[column] == 7 - 1 || berries->fallDist[column] == 7)
    {

        if (column == sDodrioHeadToColumnMap[numPlayersIdx][playerId][pick])
        {

            if (sGame->berryState[column] == BERRYSTATE_PICKED || sGame->berryState[column] == BERRYSTATE_EATEN)
            {

                sGame->players[playerId].comm.missedBerry = 1;
                return 0;
            }
            else
            {

                return 1;
            }
        }
    }
    else
    {

        if (column == sDodrioHeadToColumnMap[numPlayersIdx][playerId][pick])
        {

            sGame->inputState[playerId] = INPUTSTATE_BAD_MISS;
            sGame->players[playerId].comm.missedBerry = 1;
        }
    }
    return 0;
}

static void UpdateFallingBerries(void)
{
    u8 berryStart = sGame->berryColStart;
    u8 berryEnd = sGame->berryColEnd;
    u8 delayStage = 0;
    u8 otherBerryMissed = 0;
    u8 i;

    sGame->berriesFalling = 0;

    for (i = berryStart; i < berryEnd - 1; i++)
    {
        struct DodrioGame * game = sGame;

        if (sGame->berryState[i] == BERRYSTATE_NONE || sGame->berryState[i] == BERRYSTATE_PICKED)
        {
            sGame->berriesFalling = 1;

            if (game->player.berries.fallDist[i] >= 10)
            {

                game->player.berries.fallDist[i] = 10;
                sGame->berryState[i] = BERRYSTATE_SQUISHED;
                if (!sGame->playingSquishSound[i])
                {
                    sGame->playingSquishSound[i] = 1;
                    PlaySE(67 + game->player.berries.ids[i]);
                }
                if (sGame->numGraySquares < 10 || otherBerryMissed == 1)
                {
                    otherBerryMissed = 1;
                    sGame->playingSquishSound[i] = 0;
                    if (sGame->numGraySquares < 10)
                        sGame->numGraySquares++;
                    IncrementBerryResult(BERRY_MISSED, i, 0);
                    UpdateBerriesPickedInRow(0);
                }
            }
            else
            {

                u8 delay;
                delayStage = sGame->difficulty[GetPlayerIdAtColumn(i)] / 7;
                if (delayStage >= (sizeof(sBerryFallDelays) / sizeof((sBerryFallDelays)[0])) - 1)
                    delayStage = (sizeof(sBerryFallDelays) / sizeof((sBerryFallDelays)[0])) - 1;

                delay = sBerryFallDelays[delayStage][game->player.berries.ids[i]];
                if (++sGame->fallTimer[i] >= delay)
                {
                    game->player.berries.fallDist[i]++;
                    sGame->fallTimer[i] = 0;
                }
                HandlePickBerries();
            }
        }
        else if (sGame->berryState[i] == BERRYSTATE_EATEN)
        {

            if (++sGame->newBerryTimer[i] >= 20)
            {
                sGame->players[sGame->berryEatenBy[i]].comm.ateBerry = 0;
                sGame->newBerryTimer[i] = 0;
                sGame->fallTimer[i] = 0;
                sGame->berryState[i] = BERRYSTATE_NONE;
                game->player.berries.fallDist[i] = 1;
                game->player.berries.ids[i] = GetNewBerryId(GetPlayerIdAtColumn(i), i);
            }
        }
        else if (sGame->berryState[i] == BERRYSTATE_SQUISHED)
        {

            if (++sGame->newBerryTimer[i] >= 20)
            {
                if (sGame->numGraySquares < 10)
                {
                    sGame->newBerryTimer[i] = 0;
                    sGame->fallTimer[i] = 0;
                    sGame->berryState[i] = BERRYSTATE_NONE;
                    game->player.berries.fallDist[i] = 1;
                    sGame->prevBerryIds[i] = game->player.berries.ids[i];
                    game->player.berries.ids[i] = GetNewBerryId(GetPlayerIdAtColumn(i), i);
                }
            }
        }
    }
}

static void UpdateBerrySprites(void)
{
    u8 i;
    u8 berryStart = sGame->berryColStart;
    u8 berryEnd = sGame->berryColEnd;

    for (i = berryStart; i < berryEnd; i++)
    {
        struct DodrioGame_Player * player = &sGame->players[sGame->multiplayerId];
        u8 column = sActiveColumnMap[sGame->numPlayers - 1][sGame->multiplayerId][i];

        if (player->berries.fallDist[column] != 0)
            SetBerryInvisibility(i, 0);
        else
            SetBerryInvisibility(i, 1);

        if (player->berries.fallDist[column] >= 10)
        {

            SetBerryAnim(i, player->berries.ids[column] + BERRY_MISSED);
            SetBerryYPos(i, player->berries.fallDist[column] * 2 - 1);
        }
        else if (player->berries.ids[column] == 3)
        {

            player->berries.fallDist[column] = 7;
            SetBerryAnim(i, (BERRY_MISSED * 2));
            SetBerryYPos(i, player->berries.fallDist[column] * 2 - 1);
        }
        else
        {

            SetBerryAnim(i, player->berries.ids[column]);
            SetBerryYPos(i, player->berries.fallDist[column] * 2);
        }
    }
}

static void UpdateAllDodrioAnims(void)
{
    u8 i;
    u8 numPlayers = sGame->numPlayers;

    for (i = 0; i < numPlayers; i++)
    {
        struct DodrioGame_Player * player = &sGame->players[i];
        SetDodrioAnim(i, player->comm.pickState);
    }
}

static void SetAllDodrioDisabled(void)
{
    u8 i;
    u8 numPlayers = sGame->numPlayers;

    for (i = 0; i < numPlayers; i++)
        SetDodrioAnim(i, PICK_DISABLED);
}

static void UpdateGame_Leader(void)
{
    UpdateBerrySprites();
    if (sGame->numGraySquares >= 10)
        SetAllDodrioDisabled();
    else
        UpdateAllDodrioAnims();

    UpdateStatusBarAnim(sGame->numGraySquares);
}


static void UpdateGame_Member(void)
{
    UpdateBerrySprites();
    if (sGame->numGraySquares >= 10)
        SetAllDodrioDisabled();
    else
        UpdateAllDodrioAnims();

    UpdateStatusBarAnim(sGame->numGraySquares);
}

static void GetActiveBerryColumns(u8 numPlayers, u8 *start, u8 *end)
{
    switch (numPlayers)
    {
    case 1:
        *start = 4, *end = 7;
        break;
    case 2:
        *start = 3, *end = 8;
        break;
    case 3:
        *start = 2, *end = 9;
        break;
    case 4:
        *start = 1, *end = 10;
        break;
    case 5:
        *start = 0, *end = 11;
        break;
    }
}

static bool32 AllPlayersReadyToStart(void)
{
    u8 i;
    u8 numPlayers = sGame->numPlayers;

    for (i = 1; i < numPlayers; i++)
    {
        if (sGame->readyToStart[i] == 0)
            sGame->readyToStart[i] = RecvPacket_ReadyToStart(i);
    }

    numPlayers = numPlayers;




    for (; i < numPlayers; i++)
    {
        if (!sGame->readyToStart[i])
            return 0;
    }

    return 1;
}

static void ResetReadyToStart(void)
{
    u8 i;

    for (i = 0; i < 5; i++)
        sGame->readyToStart[i] = 0;
}

static bool32 ReadyToEndGame_Leader(void)
{
    if (sGame->numGraySquares >= 10 && !sGame->berriesFalling)
    {
        sGame->numGraySquares = 10;
        if (sGame->allReadyToEnd != 0)
            return 1;
    }

    return 0;
}

static bool32 ReadyToEndGame_Member(void)
{
    u8 i, berryStart, berryEnd;

    if (sGame->numGraySquares >= 10)
    {
        berryStart = sGame->berryColStart;
        berryEnd = sGame->berryColEnd;
        sGame->numGraySquares = 10;
        if (sGame->allReadyToEnd)
        {
            for (i = berryStart; i < berryEnd; i++)
            {
                struct DodrioGame_Player * player = &sGame->players[sGame->multiplayerId];
                u8 column = sActiveColumnMap[sGame->numPlayers - 1][sGame->multiplayerId][i];

                if (player->berries.fallDist[column] != 10)
                    return 0;
            }
            return 1;
        }
    }

    return 0;
}

static void TryIncrementDifficulty(u8 playerId)
{
    u8 threshold = sDifficultyThresholds[sGame->difficulty[playerId] % 7] + (sGame->difficulty[playerId] / 7) * 100;
    if (sGame->berriesEaten[playerId] >= threshold)
        sGame->difficulty[playerId]++;
}

static u8 GetPlayerIdAtColumn(u8 column)
{
    return sPlayerIdAtColumn[sGame->numPlayers - 1][column];
}




static u8 GetNewBerryId(u8 playerId, u8 column)
{
    u8 i, highestDifficulty;
    u8 numPlayersIdx = sGame->numPlayers - 1;
    u8 leftPlayer = sDodrioNeighborMap[numPlayersIdx][playerId][0];
    u8 middlePlayer = sDodrioNeighborMap[numPlayersIdx][playerId][1];
    u8 rightPlayer = sDodrioNeighborMap[numPlayersIdx][playerId][2];

    for (i = 0; sUnsharedColumns[numPlayersIdx][i] != 0; i++)
    {

        if (column == sUnsharedColumns[numPlayersIdx][i])
            return GetNewBerryIdByDifficulty(sGame->difficulty[middlePlayer], column);
    }


    if (sGame->difficulty[leftPlayer] > sGame->difficulty[middlePlayer])
        highestDifficulty = sGame->difficulty[leftPlayer];
    else
        highestDifficulty = sGame->difficulty[middlePlayer];

    if (sGame->difficulty[rightPlayer] > highestDifficulty)
        highestDifficulty = sGame->difficulty[rightPlayer];

    return GetNewBerryIdByDifficulty(highestDifficulty, column);
}


static u8 GetNewBerryIdByDifficulty(u8 difficulty, u8 column)
{
    u8 prevBerryId = sGame->prevBerryIds[column];
    switch (difficulty % 7)
    {
    default: return BERRY_BLUE;
    case 0: return BERRY_BLUE;
    case 1: return BERRY_GREEN;
    case 2: return BERRY_GOLD;
    case 3:
        if (prevBerryId == BERRY_BLUE)
            return BERRY_GREEN;
        else
            return BERRY_BLUE;
    case 4:
        if (prevBerryId == BERRY_BLUE)
            return BERRY_GOLD;
        else
            return BERRY_BLUE;
    case 5:
        if (prevBerryId == BERRY_GOLD)
            return BERRY_GREEN;
        else
            return BERRY_GOLD;
    case 6:
        if (prevBerryId == BERRY_BLUE)
            return BERRY_GREEN;
        else if (prevBerryId == BERRY_GREEN)
            return BERRY_GOLD;
        else
            return BERRY_BLUE;
    }
}




static void IncrementBerryResult(u8 berryIdArg, u8 column, u8 playerId)
{
    u8 berryId;
    u8 numPlayers = sGame->numPlayers;
    switch (berryIdArg)
    {
    case BERRY_BLUE:
    case BERRY_GREEN:
    case BERRY_GOLD:
        berryId = sGame->players[0].berries.ids[column];
        sGame->berryResults[playerId][berryId] = IncrementWithLimit(sGame->berryResults[playerId][berryId], 20000);
        break;
    case BERRY_MISSED:
        switch (numPlayers)
        {
        case 5:
            switch (column)
            {
            case 0:
                sGame->berryResults[2][BERRY_MISSED]++;
                sGame->berryResults[3][BERRY_MISSED]++;
                break;
            case 1:
                sGame->berryResults[3][BERRY_MISSED]++;
                break;
            case 2:
                sGame->berryResults[3][BERRY_MISSED]++;
                sGame->berryResults[4][BERRY_MISSED]++;
                break;
            case 3:
                sGame->berryResults[4][BERRY_MISSED]++;
                break;
            case 4:
                sGame->berryResults[4][BERRY_MISSED]++;
                sGame->berryResults[0][BERRY_MISSED]++;
                break;
            case 5:
                sGame->berryResults[0][BERRY_MISSED]++;
                break;
            case 6:
                sGame->berryResults[0][BERRY_MISSED]++;
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            case 7:
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            case 8:
                sGame->berryResults[1][BERRY_MISSED]++;
                sGame->berryResults[2][BERRY_MISSED]++;
                break;
            case 9:
                sGame->berryResults[2][BERRY_MISSED]++;
                break;
            }
            break;
        case 4:
            switch (column)
            {
            case 1:
                sGame->berryResults[2][BERRY_MISSED]++;
                sGame->berryResults[3][BERRY_MISSED]++;
                break;
            case 2:
                sGame->berryResults[3][BERRY_MISSED]++;
                break;
            case 3:
                sGame->berryResults[3][BERRY_MISSED]++;
                sGame->berryResults[0][BERRY_MISSED]++;
                break;
            case 4:
                sGame->berryResults[0][BERRY_MISSED]++;
                break;
            case 5:
                sGame->berryResults[0][BERRY_MISSED]++;
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            case 6:
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            case 7:
                sGame->berryResults[1][BERRY_MISSED]++;
                sGame->berryResults[2][BERRY_MISSED]++;
                break;
            case 8:
                sGame->berryResults[2][BERRY_MISSED]++;
                break;
            }
            break;
        case 3:
            switch (column)
            {
            case 2:
                sGame->berryResults[1][BERRY_MISSED]++;
                sGame->berryResults[2][BERRY_MISSED]++;
                break;
            case 3:
                sGame->berryResults[2][BERRY_MISSED]++;
                break;
            case 4:
                sGame->berryResults[2][BERRY_MISSED]++;
                sGame->berryResults[0][BERRY_MISSED]++;
                break;
            case 5:
                sGame->berryResults[0][BERRY_MISSED]++;
                break;
            case 6:
                sGame->berryResults[0][BERRY_MISSED]++;
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            case 7:
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            }
            break;
        case 2:
            switch (column)
            {
            case 3:
                sGame->berryResults[0][BERRY_MISSED]++;
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            case 4:
                sGame->berryResults[0][BERRY_MISSED]++;
                break;
            case 5:
                sGame->berryResults[0][BERRY_MISSED]++;
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            case 6:
                sGame->berryResults[1][BERRY_MISSED]++;
                break;
            }
            break;
        }
        break;
    }
}

static void UpdateBerriesPickedInRow(bool32 picked)
{


    if (sGame->numPlayers != 5)
        return;

    if (picked == 1)
    {
        if (++sGame->berriesPickedInRow > sGame->maxBerriesPickedInRow)
            sGame->maxBerriesPickedInRow = sGame->berriesPickedInRow;
        if (sGame->berriesPickedInRow > 9999)
            sGame->berriesPickedInRow = 9999;
    }
    else
    {
        if (sGame->berriesPickedInRow > sGame->maxBerriesPickedInRow)
            sGame->maxBerriesPickedInRow = sGame->berriesPickedInRow;
        sGame->berriesPickedInRow = 0;
    }
}

static void SetMaxBerriesPickedInRow(void)
{
    u8 i;
    for (i = 0; i < sGame->numPlayers; i++)
        sGame->berryResults[i][BERRY_IN_ROW] = sGame->maxBerriesPickedInRow;
}

static void ResetForPlayAgainPrompt(void)
{
    u8 i, j;

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 11; j++)
            sGame->players[i].berries.fallDist[j] = 0;
        sGame->players[i].comm.pickState = PICK_NONE;
        sGame->players[i].comm.ateBerry = 0;
        sGame->difficulty[i] = 0;
        sGame->berriesEaten[i] = 0;
        sGame->scoreResults[i].ranking = 0;
        sGame->scoreResults[i].score = 0;
        sGame->berryResults[i][BERRY_BLUE] = 0;
        sGame->berryResults[i][BERRY_GREEN] = 0;
        sGame->berryResults[i][BERRY_GOLD] = 0;
        sGame->berryResults[i][BERRY_MISSED] = 0;
        sGame->berryResults[i][BERRY_PRIZE] = 0;
        sGame->berryResults[i][BERRY_IN_ROW] = 0;
    }
    sGame->endSoundState = 0;
    sGame->berriesPickedInRow = 0;
    sGame->numGraySquares = 0;
    UpdateAllDodrioAnims();
    UpdateBerrySprites();
}

static const s16 sBerryScoreMultipliers[] =
{
    [BERRY_BLUE] = 10,
    [BERRY_GREEN] = 30,
    [BERRY_GOLD] = 50,
    [BERRY_MISSED] = 50
};


static void SetRandomPrize(void)
{
    u8 i, prizeSet = 0, prizeIdx = 0;

    switch (sGame->numPlayers)
    {
    case 4: prizeSet = 1; break;
    case 5: prizeSet = 2; break;
    }

    prizeIdx = Random() % (sizeof(sPrizeBerryIds[0]) / sizeof((sPrizeBerryIds[0])[0]));;
    for (i = 0; i < 5; i++)
        sGame->berryResults[i][BERRY_PRIZE] = sPrizeBerryIds[prizeSet][prizeIdx];
}

static u32 GetBerriesPicked(u8 playerId)
{
    u32 sum = sGame->berryResults[playerId][BERRY_BLUE]
            + sGame->berryResults[playerId][BERRY_GREEN]
            + sGame->berryResults[playerId][BERRY_GOLD];
    return ((sum) < (9999) ? (sum) : (9999));
}

static void TryUpdateRecords(void)
{
    u32 berriesPicked = Min(GetBerriesPicked(sGame->multiplayerId), 9999);
    u32 score = Min(GetScore(sGame->multiplayerId), 999990);

    if (gSaveBlock2Ptr->berryPick.bestScore < score)
        gSaveBlock2Ptr->berryPick.bestScore = score;
    if (gSaveBlock2Ptr->berryPick.berriesPicked < berriesPicked)
        gSaveBlock2Ptr->berryPick.berriesPicked = berriesPicked;
    if (gSaveBlock2Ptr->berryPick.berriesPickedInRow < sGame->maxBerriesPickedInRow)
        gSaveBlock2Ptr->berryPick.berriesPickedInRow = sGame->maxBerriesPickedInRow;
}



static u8 UpdatePickStateQueue(u8 pickState)
{
    u8 i, nextState;

    nextState = sGame->pickStateQueue[(sizeof(sGame->pickStateQueue) / sizeof((sGame->pickStateQueue)[0])) - 1];
    for (i = (sizeof(sGame->pickStateQueue) / sizeof((sGame->pickStateQueue)[0])) - 1; i != 0; i--)
        sGame->pickStateQueue[i] = sGame->pickStateQueue[i - 1];
    sGame->pickStateQueue[0] = pickState;
    return nextState;
}



static void HandleWaitPlayAgainInput(void)
{
    if (sGame->inputDelay[sGame->multiplayerId] == 0)
    {
        if (({(gMain.newKeys) & (0x0040);}))
        {
            sGame->players[sGame->multiplayerId].comm.pickState = PICK_MIDDLE;
            sGame->inputDelay[sGame->multiplayerId] = 6;
            PlaySE(205);
        }
        else if (({(gMain.newKeys) & (0x0020);}))
        {
            sGame->players[sGame->multiplayerId].comm.pickState = PICK_LEFT;
            sGame->inputDelay[sGame->multiplayerId] = 6;
            PlaySE(205);
        }
        else if (({(gMain.newKeys) & (0x0010);}))
        {
            sGame->players[sGame->multiplayerId].comm.pickState = PICK_RIGHT;
            sGame->inputDelay[sGame->multiplayerId] = 6;
            PlaySE(205);
        }
        else
        {
            sGame->players[sGame->multiplayerId].comm.pickState = PICK_NONE;
        }
    }
    else
    {
        sGame->inputDelay[sGame->multiplayerId]--;
    }
}

static void ResetPickState(void)
{
    sGame->players[sGame->multiplayerId].comm.pickState = PICK_NONE;
}

static u16 GetPrizeItemId(void)
{
    return sGame->berryResults[sGame->multiplayerId][BERRY_PRIZE] + 133;
}

static u8 GetNumPlayers(void)
{
    return sGame->numPlayers;
}

static u8 *GetPlayerName(u8 id)
{
    if (gReceivedRemoteLinkPlayers)
        return gLinkPlayers[id].name;
    else
        return sGame->players[id].name;
}

static u16 GetBerryResult(u8 playerId, u8 berryId)
{
    return sGame->berryResults[playerId][berryId];
}

static u32 GetScore(u8 playerId)
{
    u8 i;
    u32 scoreLost, score = 0;


    for (i = 0; i < BERRY_MISSED; i++)
        score += sGame->berryResults[playerId][i] * sBerryScoreMultipliers[i];


    scoreLost = sGame->berryResults[playerId][BERRY_MISSED] * sBerryScoreMultipliers[BERRY_MISSED];

    if (score <= scoreLost)
        return 0;
    else
        return score - scoreLost;
}

static u32 GetHighestScore(void)
{
    u8 i, numPlayers = sGame->numPlayers;
    u32 highestScore = GetScore(0);

    for (i = 1; i < numPlayers; i++)
    {
        u32 score = GetScore(i);
        if (score > highestScore)
            highestScore = score;
    }
    return Min(highestScore, 999990);
}

static u32 GetHighestBerryResult(u8 berryId)
{
    u8 i, numPlayers = sGame->numPlayers;
    u16 highestResult = sGame->berryResults[0][berryId];

    for (i = 0; i < numPlayers; i++)
    {
        u16 result = sGame->berryResults[i][berryId];
        if (result > highestResult)
            highestResult = result;
    }
    return highestResult;
}

static u32 GetScoreByRanking(u8 ranking)
{
    u32 scores[5], temp;
    s16 unsorted = 1;
    u8 i, numPlayers = sGame->numPlayers;

    for (i = 0; i < numPlayers; i++)
        scores[i] = temp = GetScore(i);


    while (unsorted)
    {
        unsorted = 0;
        for (i = 0; i < numPlayers - 1; i++)
        {
            if (scores[i] < scores[i + 1])
            {
                { temp = scores[i]; scores[i] = scores[i + 1]; scores[i + 1] = temp; };
                unsorted = 1;
            }
        }
    }

    return scores[ranking];
}

static u32 SetScoreResults(void)
{
    u8 i, ranking = 0, nextRanking = 0, playersRanked = 0;
    u8 numPlayers = sGame->numPlayers;

    GetHighestScore();

    if (GetHighestScore() == 0)
    {



        for (i = 0; i < numPlayers; i++)
        {
            sGame->scoreResults[i].ranking = 5 - 1;;
            sGame->scoreResults[i].score = 0;
        }
    }


    for (i = 0; i < numPlayers; i++)
        sGame->scoreResults[i].score = Min(GetScore(i), 999990);


    do
    {
        u32 score = GetScoreByRanking(ranking);
        u8 curRanking = nextRanking;




        for (i = 0; i < numPlayers; i++)
        {
            if (score == sGame->scoreResults[i].score)
            {
                sGame->scoreResults[i].ranking = curRanking;
                nextRanking++;
                playersRanked++;
            }
        }
        ranking = nextRanking;
    } while (playersRanked < numPlayers);

    return 0;
}

static void GetScoreResults(struct DodrioGame_ScoreResults * dst, u8 playerId)
{
    *dst = sGame->scoreResults[playerId];
}



static u8 GetScoreRanking(u8 playerId)
{
    u8 i, ranking = 0;
    u8 numPlayers = sGame->numPlayers;
    u32 playersScore, scores[5] = {0};

    for (i = 0; i < numPlayers; i++)
        scores[i] = GetScore(i);

    playersScore = scores[playerId];
    for (i = 0; i < 5; i++)
    {
        if (i != playerId && playersScore < scores[i])
            ranking++;
    }

    return ranking;
}

enum {
    PRIZE_RECEIVED,
    PRIZE_FILLED_BAG,
    PRIZE_NO_ROOM,
    NO_PRIZE,
};

static u8 TryGivePrize(void)
{
    u8 multiplayerId = sGame->multiplayerId;
    u16 itemId = GetPrizeItemId();

    if (GetScore(multiplayerId) != GetHighestScore())
        return NO_PRIZE;
    if (!CheckBagHasSpace(itemId, 1))
        return PRIZE_NO_ROOM;

    AddBagItem(itemId, 1);
    if (!CheckBagHasSpace(itemId, 1))
        return PRIZE_FILLED_BAG;
    return PRIZE_RECEIVED;
}

static u32 IncrementWithLimit(u32 num, u32 max)
{
    if (num < max)
        return num + 1;
    else
        return max;
}

static u32 Min(u32 a, u32 b)
{
    if (a < b)
        return a;
    else
        return b;
}

static u8 GetPlayerIdByPos(u8 id)
{
    return sGame->posToPlayerId[id];
}

void IsDodrioInParty(void)
{
    int i;
    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&gPlayerParty[i], 5)
            && GetMonData(&gPlayerParty[i], 65) == 85)
        {
            gSpecialVar_Result = 1;
            return;
        }
    }

    gSpecialVar_Result = 0;
}



void ShowDodrioBerryPickingRecords(void)
{
    u8 taskId = CreateTask(Task_ShowDodrioBerryPickingRecords, 0);
    Task_ShowDodrioBerryPickingRecords(taskId);
}

static const struct WindowTemplate sWindowTemplates_Records =
{
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 1,
    .width = 28,
    .height = 11,
    .paletteNum = 15,
    .baseBlock = 1,
};

static const u8 *const sRecordsTexts[3 + 1] = {gText_BerryPickingRecords, gText_BerriesPicked, gText_BestScore, gText_BerriesInRowFivePlayers};
static const u8 sRecordNumMaxDigits[3] = {4, 7, 4};

__attribute__((aligned(4)))
static const u8 sRecordTextYCoords[3][2] = {{24}, {40}, {56}};
static const u8 sRecordNumYCoords[3][2] = {{24}, {40}, {70}};




static void Task_ShowDodrioBerryPickingRecords(u8 taskId)
{
    struct WindowTemplate window;
    s32 i, width, widthCurr;
    s16 *data = gTasks[taskId].data;

    switch (data[0])
    {
    case 0:
        data[1] = AddWindow(&sWindowTemplates_Records);
        PrintRecordsText(data[1]);
        CopyWindowToVram(data[1], COPYWIN_FULL);
        data[0]++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
            data[0]++;
        break;
    case 2:
        if (({(gMain.newKeys) & (0x0001 | 0x0002);}))
        {
            rbox_fill_rectangle(data[1]);
            CopyWindowToVram(data[1], COPYWIN_MAP);
            data[0]++;
        }
        break;
    case 3:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            RemoveWindow(data[1]);
            DestroyTask(taskId);
            ScriptContext_Enable();
        }
        break;
    }
}




static void PrintRecordsText(u8 windowId)
{
    s32 i, x, numWidth;
    s32 recordNums[3];
    u8 strbuf[20];
    recordNums[0] = gSaveBlock2Ptr->berryPick.berriesPicked;
    recordNums[1] = gSaveBlock2Ptr->berryPick.bestScore;
    recordNums[2] = gSaveBlock2Ptr->berryPick.berriesPickedInRow;

    LoadStdWindowGfx(windowId, 0x21D, (0x000 + ((13) * 16)));
    DrawTextBorderOuter(windowId, 0x21D, 13);
    FillWindowPixelBuffer(windowId, ((1) | ((1) << 4)));
    AddTextPrinterParameterized(windowId, FONT_NORMAL, sRecordsTexts[0], 1, 1, 0xFF, ((void *)0));
    for (i = 0; i < 3; i++)
    {
        ConvertIntToDecimalStringN(strbuf, recordNums[i], STR_CONV_MODE_LEFT_ALIGN, sRecordNumMaxDigits[i]);
        numWidth = GetStringWidth(FONT_NORMAL, strbuf, -1);
        AddTextPrinterParameterized(windowId, FONT_NORMAL, sRecordsTexts[i + 1], 1, sRecordTextYCoords[i][0], 0xFF, ((void *)0));
        x = 240 - 16 - numWidth;
        AddTextPrinterParameterized(windowId, FONT_NORMAL, strbuf, x, sRecordNumYCoords[i][0], 0xFF, ((void *)0));
    }
    PutWindowTilemap(windowId);
}


static const u16 sDebug_BerryResults[5][4] =
{
    {
        [BERRY_BLUE] = 9999,
        [BERRY_GREEN] = 0,
        [BERRY_GOLD] = 90,
        [BERRY_MISSED] = 9999
    },
    {
        [BERRY_BLUE] = 9999,
        [BERRY_GREEN] = 9999,
        [BERRY_GOLD] = 70,
        [BERRY_MISSED] = 9999
    },
    {
        [BERRY_BLUE] = 9999,
        [BERRY_GREEN] = 0,
        [BERRY_GOLD] = 9999,
        [BERRY_MISSED] = 0
    },
    {
        [BERRY_BLUE] = 9999,
        [BERRY_GREEN] = 9999,
        [BERRY_GOLD] = 60,
        [BERRY_MISSED] = 0
    },
    {
        [BERRY_BLUE] = 9999,
        [BERRY_GREEN] = 9999,
        [BERRY_GOLD] = 9999,
        [BERRY_MISSED] = 0
    },
};

static const u8 sJPText_Vowels[] = _("あいうえおかき");
static const u8 sText_Letters[] = _("ABCDEFG");
static const u8 sText_Digits[] = _("0123456");

static const u8 *const sPlaceholderPlayerNames[] =
{
    sJPText_Vowels,
    sJPText_Vowels,
    sJPText_Vowels,
    sText_Letters,
    sText_Digits
};

static void Debug_UpdateNumPlayers(void)
{
    sGame->numPlayers = GetLinkPlayerCount();
}

static void Debug_SetPlayerNamesAndResults(void)
{
    u8 i, playerId;

    for (playerId = sGame->numPlayers; playerId < (sizeof(sPlaceholderPlayerNames) / sizeof((sPlaceholderPlayerNames)[0])); playerId++)
        StringCopy(gLinkPlayers[playerId].name, sPlaceholderPlayerNames[playerId]);

    sGame->numPlayers = 5;
    for (i = 0; i < 4; i++)
    {
        for (playerId = 0; playerId < sGame->numPlayers; playerId++)
            sGame->berryResults[playerId][i] = sDebug_BerryResults[playerId][i];
    }
}

static const struct BgTemplate sBgTemplates[] =
{
    {
        .bg = BG_INTERFACE,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    },
    {
        .bg = BG_TREE_LEFT,
        .charBaseIndex = 2,
        .mapBaseIndex = 12,
        .screenSize = 1,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0
    },
    {
        .bg = BG_TREE_RIGHT,
        .charBaseIndex = 2,
        .mapBaseIndex = 14,
        .screenSize = 1,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0
    },
    {
        .bg = BG_SCENERY,
        .charBaseIndex = 3,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0
    },
};

static const struct WindowTemplate sWindowTemplate_Dummy = { 0xFF, 0, 0, 0, 0, 0, 0, };

static const struct WindowTemplate sWindowTemplates_Results[] =
{
    {
        .bg = BG_INTERFACE,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 28,
        .height = 3,
        .paletteNum = 13,
        .baseBlock = 0x13,
    },
    {
        .bg = BG_INTERFACE,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 28,
        .height = 13,
        .paletteNum = 13,
        .baseBlock = 0x67,
    }
};

static const struct WindowTemplate sWindowTemplate_Prize =
{
    .bg = BG_INTERFACE,
    .tilemapLeft = 1,
    .tilemapTop = 6,
    .width = 28,
    .height = 7,
    .paletteNum = 13,
    .baseBlock = 0x67,
};

enum {
    WIN_PLAY_AGAIN,
    WIN_YES_NO,
};

static const struct WindowTemplate sWindowTemplates_PlayAgain[] =
{
    [WIN_PLAY_AGAIN] = {
        .bg = BG_INTERFACE,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 19,
        .height = 3,
        .paletteNum = 13,
        .baseBlock = 0x13,
    },
    [WIN_YES_NO] = {
        .bg = BG_INTERFACE,
        .tilemapLeft = 22,
        .tilemapTop = 7,
        .width = 6,
        .height = 4,
        .paletteNum = 13,
        .baseBlock = 0x4C,
    }
};

static const struct WindowTemplate sWindowTemplate_DroppedOut =
{
    .bg = BG_INTERFACE,
    .tilemapLeft = 4,
    .tilemapTop = 6,
    .width = 22,
    .height = 5,
    .paletteNum = 13,
    .baseBlock = 0x13,
};

static const struct WindowTemplate sWindowTemplate_CommStandby =
{
    .bg = BG_INTERFACE,
    .tilemapLeft = 5,
    .tilemapTop = 8,
    .width = 19,
    .height = 3,
    .paletteNum = 13,
    .baseBlock = 0x13,
};


static const u8 sActiveColumnMap_Duplicate[5][5][11] =
{
    {
        {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
    },
    {
        {0, 1, 2, 3, 4, 5, 6, 3, 8, 9, 0},
        {0, 1, 2, 5, 6, 3, 4, 5, 8, 9, 0},
    },
    {
        {0, 1, 2, 3, 4, 5, 6, 7, 2, 9, 0},
        {0, 1, 4, 5, 6, 7, 2, 3, 4, 9, 0},
        {0, 1, 6, 7, 2, 3, 4, 5, 6, 9, 0},
    },
    {
        {0, 1, 2, 3, 4, 5, 6, 7, 8, 1, 0},
        {0, 3, 4, 5, 6, 7, 8, 1, 2, 3, 0},
        {0, 5, 6, 7, 8, 1, 2, 3, 4, 5, 0},
        {0, 7, 8, 1, 2, 3, 4, 5, 6, 7, 0},
    },
    {
        {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
        {2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2},
        {4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4},
        {6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6},
        {8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8},
    },
};


static const u8 sDodrioHeadToColumnMap_Duplicate[5][5][3] =
{
    {
        {4, 5, 6},
    },
    {
        {3, 4, 5},
        {5, 6, 3},
    },
    {
        {4, 5, 6},
        {6, 7, 2},
        {2, 3, 4},
    },
    {
        {3, 4, 5},
        {5, 6, 7},
        {7, 8, 1},
        {1, 2, 3},
    },
    {
        {4, 5, 6},
        {6, 7, 8},
        {8, 9, 0},
        {0, 1, 2},
        {2, 3, 4},
    },
};


static const u8 sDodrioNeighborMap_Duplicate[5][5][3] =
{
    {
        {1, 0, 1},
    },
    {
        {1, 0, 1},
        {0, 1, 0},
    },
    {
        {2, 0, 1},
        {0, 1, 2},
        {1, 2, 0},
    },
    {
        {3, 0, 1},
        {0, 1, 2},
        {1, 2, 3},
        {2, 3, 0},
    },
    {
        {4, 0, 1},
        {0, 1, 2},
        {1, 2, 3},
        {2, 3, 4},
        {3, 4, 0},
    },
};


__attribute__((aligned(4)))
static const u8 sPlayerIdAtColumn_Duplicate[5][11] =
{
    {9, 9, 9, 9, 1, 1, 1, 9, 9, 9, 9},
    {9, 9, 9, 0, 0, 1, 1, 0, 9, 9, 9},
    {9, 9, 2, 2, 0, 0, 1, 1, 1, 9, 9},
    {9, 3, 3, 0, 0, 1, 1, 2, 2, 3, 9},
    {3, 3, 4, 4, 0, 0, 1, 1, 2, 2, 3},
};


static const u8 sUnsharedColumns_Duplicate[5][5] =
{
    {5},
    {4, 6},
    {3, 5, 7},
    {2, 4, 6, 8},
    {1, 3, 5, 6, 9},
};

static const u16 sBg_Pal[] = INCBIN_U16("graphics/dodrio_berry_picking/bg.gbapal",
                                                         "graphics/dodrio_berry_picking/tree_border.gbapal");
static const u16 sDodrioNormal_Pal[] = INCBIN_U16("graphics/dodrio_berry_picking/dodrio.gbapal");
static const u16 sDodrioShiny_Pal[] = INCBIN_U16("graphics/dodrio_berry_picking/shiny.gbapal");
static const u16 sStatus_Pal[] = INCBIN_U16("graphics/dodrio_berry_picking/status.gbapal");
static const u16 sBerries_Pal[] = INCBIN_U16("graphics/dodrio_berry_picking/berries.gbapal");
static const u32 sBerries_Gfx[] = INCBIN_U32("graphics/dodrio_berry_picking/berries.4bpp.lz");
static const u16 sCloud_Pal[] = INCBIN_U16("graphics/dodrio_berry_picking/cloud.gbapal");
static const u32 sBg_Gfx[] = INCBIN_U32("graphics/dodrio_berry_picking/bg.4bpp.lz");
static const u32 sTreeBorder_Gfx[] = INCBIN_U32("graphics/dodrio_berry_picking/tree_border.4bpp.lz");
static const u32 sStatus_Gfx[] = INCBIN_U32("graphics/dodrio_berry_picking/status.4bpp.lz");
static const u32 sCloud_Gfx[] = INCBIN_U32("graphics/dodrio_berry_picking/cloud.4bpp.lz");
static const u32 sDodrio_Gfx[] = INCBIN_U32("graphics/dodrio_berry_picking/dodrio.4bpp.lz");
static const u32 sBg_Tilemap[] = INCBIN_U32("graphics/dodrio_berry_picking/bg.bin.lz");
static const u32 sTreeBorderRight_Tilemap[] = INCBIN_U32("graphics/dodrio_berry_picking/tree_border_right.bin.lz");
static const u32 sTreeBorderLeft_Tilemap[] = INCBIN_U32("graphics/dodrio_berry_picking/tree_border_left.bin.lz");

static const struct OamData sOamData_Dodrio =
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
    .priority = 2,
    .paletteNum = 0,
    .affineParam = 0
};


static const struct OamData sOamData_16x16_Priority0 =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0
};

static const struct OamData sOamData_Berry =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 2,
    .paletteNum = 0,
    .affineParam = 0
};

static const struct OamData sOamData_Cloud =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (1)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (1)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 3,
    .paletteNum = 0,
    .affineParam = 0
};

static const union AnimCmd sAnim_Dodrio_Normal[] =
{
    {.frame = {0, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Dodrio_PickRight[] =
{
    {.frame = {64, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Dodrio_PickMiddle[] =
{
    {.frame = {128, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Dodrio_PickLeft[] =
{
    {.frame = {192, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Dodrio_Down[] =
{
    {.frame = {256, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd *const sAnims_Dodrio[] =
{
    [PICK_NONE] = sAnim_Dodrio_Normal,
    [PICK_RIGHT] = sAnim_Dodrio_PickRight,
    [PICK_MIDDLE] = sAnim_Dodrio_PickMiddle,
    [PICK_LEFT] = sAnim_Dodrio_PickLeft,
    [PICK_DISABLED] = sAnim_Dodrio_Down,

};

static const union AnimCmd sAnims_StatusBar_Yellow[] =
{
    {.frame = {0, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnims_StatusBar_Gray[] =
{
    {.frame = {4, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnims_StatusBar_Red[] =
{
    {.frame = {8, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd *const sAnims_StatusBar[] =
{
    [STATUS_YELLOW] = sAnims_StatusBar_Yellow,
    [STATUS_GRAY] = sAnims_StatusBar_Gray,
    [STATUS_RED] = sAnims_StatusBar_Red
};

static const union AnimCmd sAnim_Berry_Blue[] =
{
    {.frame = {0, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_Green[] =
{
    {.frame = {4, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_Gold[] =
{
    {.frame = {8, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_BlueSquished[] =
{
    {.frame = {12, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_GreenSquished[] =
{
    {.frame = {16, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_GoldSquished[] =
{
    {.frame = {20, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_Eaten[] =
{
    {.frame = {24, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_Empty1[] =
{
    {.frame = {28, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd sAnim_Berry_Empty2[] =
{
    {.frame = {32, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd *const sAnims_Berry[] =
{
    [BERRY_BLUE] = sAnim_Berry_Blue,
    [BERRY_GREEN] = sAnim_Berry_Green,
    [BERRY_GOLD] = sAnim_Berry_Gold,

    [BERRY_BLUE + BERRY_MISSED] = sAnim_Berry_BlueSquished,
    [BERRY_GREEN + BERRY_MISSED] = sAnim_Berry_GreenSquished,
    [BERRY_GOLD + BERRY_MISSED] = sAnim_Berry_GoldSquished,

    [(BERRY_MISSED * 2)] = sAnim_Berry_Eaten,

    sAnim_Berry_Empty1,
    sAnim_Berry_Empty2
};

static const union AnimCmd sAnim_Cloud[] =
{
    {.frame = {0, 20}},
    {.jump = {.type = -2, .target = 0}}
};

static const union AnimCmd *const sAnims_Cloud[] =
{
    sAnim_Cloud
};

static void LoadDodrioGfx(void)
{
    void *ptr = AllocZeroed(0x3000);
    struct SpritePalette normal = {sDodrioNormal_Pal, 0};
    struct SpritePalette shiny = {sDodrioShiny_Pal, 1};

    LZ77UnCompWram(sDodrio_Gfx, ptr);
    if (ptr)
    {
        struct SpriteSheet sheet = {ptr, 0x3000, 0};
        LoadSpriteSheet(&sheet);
        Free(ptr);
    }
    LoadSpritePalette(&normal);
    LoadSpritePalette(&shiny);
}

static void CreateDodrioSprite(struct DodrioGame_MonInfo * monInfo, u8 playerId, u8 id, u8 numPlayers)
{
    struct SpriteTemplate template =
    {
        .tileTag = 0,
        .paletteTag = monInfo->isShiny,
        .oam = &sOamData_Dodrio,
        .anims = sAnims_Dodrio,
        .images = ((void *)0),
        .affineAnims = gDummySpriteAffineAnimTable,
        .callback = SpriteCB_Dodrio,
    };

    sDodrioSpriteIds[id] = AllocZeroed(4);
    *sDodrioSpriteIds[id] = CreateSprite(&template, GetDodrioXPos(playerId, numPlayers), 136, 3);
    SetDodrioInvisibility(1, id);
}







static void SpriteCB_Dodrio(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        break;
    case 1:
        DoDodrioMissedAnim(sprite);
        break;
    case 2:
        DoDodrioIntroAnim(sprite);
        break;
    }
}

static void StartDodrioMissedAnim(u8 unused)
{
    struct Sprite *sprite = &gSprites[*sDodrioSpriteIds[GetMultiplayerId()]];
    sprite->data[0] = 1;
    sprite->data[1] = 0;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
    sprite->data[4] = 0;
}

static void StartDodrioIntroAnim(u8 unused)
{
    struct Sprite *sprite = &gSprites[*sDodrioSpriteIds[GetMultiplayerId()]];
    sprite->data[0] = 2;
    sprite->data[1] = 0;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
    sprite->data[4] = 0;
}


static u32 DoDodrioMissedAnim(struct Sprite *sprite)
{
    s8 x;
    u8 state = (++sprite->data[1] / 2) % 4;

    if (sprite->data[1] >= 3)
    {
        switch (state)
        {
        default:
            x = 1;
            break;
        case 1:
        case 2:
            x = -1;
            break;
        }

        sprite->x += x;
        if (++sprite->data[1] >= 40)
        {
            sprite->data[0] = 0;
            sprite->x = GetDodrioXPos(0, GetNumPlayers());
        }
    }

    return 0;
}






static u32 DoDodrioIntroAnim(struct Sprite *sprite)
{
    u8 pickState = (++sprite->data[1] / 13) % PICK_DISABLED;


    if (sprite->data[1] % 13 == 0 && pickState != PICK_NONE)
        PlaySE(205);

    if (sprite->data[1] >= 13 * PICK_DISABLED * 2)
    {

        sprite->data[0] = 0;
        pickState = PICK_NONE;
    }
    SetDodrioAnim(GetMultiplayerId(), pickState);
    return 0;
}







static void FreeDodrioSprites(u8 numPlayers)
{
    u8 i;
    for (i = 0; i < numPlayers; i++)
    {
        struct Sprite *sprite = &gSprites[*sDodrioSpriteIds[i]];
        if (sprite)
            DestroySpriteAndFreeResources(sprite);



    }
}

static void SetDodrioInvisibility(bool8 invisible, u8 id)
{
    gSprites[*sDodrioSpriteIds[id]].invisible = invisible;
}

static void SetAllDodrioInvisibility(bool8 invisible, u8 numPlayers)
{
    u8 i;
    for (i = 0; i < numPlayers; i++)
        SetDodrioInvisibility(invisible, i);
}

static void SetDodrioAnim(u8 id, u8 pickState)
{
    StartSpriteAnim(&gSprites[*sDodrioSpriteIds[id]], pickState);
}

static void SpriteCB_Status(struct Sprite *sprite)
{

}

static void InitStatusBarPos(void)
{
    u8 i;
    for (i = 0; i < 10; i++)
    {
        struct Sprite *sprite = &gSprites[sStatusBar->spriteIds[i]];
        sprite->x = (i * 16) + 48;
        sprite->y = -8 - (i * 8);
        sStatusBar->entered[i] = 0;
    }
}

static void CreateStatusBarSprites(void)
{
    u8 i;
    void *ptr = AllocZeroed(0x180);
    struct SpritePalette pal = {sStatus_Pal, 2};

    LZ77UnCompWram(sStatus_Gfx, ptr);

    if (ptr)
    {
        struct SpriteSheet sheet = {ptr, 0x180, 1};
        struct SpriteTemplate template =
        {
            .tileTag = 1,
            .paletteTag = 2,
            .oam = &sOamData_16x16_Priority0,
            .anims = sAnims_StatusBar,
            .images = ((void *)0),
            .affineAnims = gDummySpriteAffineAnimTable,
            .callback = SpriteCB_Status,
        };

        sStatusBar = AllocZeroed(sizeof(*sStatusBar));
        LoadSpriteSheet(&sheet);
        LoadSpritePalette(&pal);
        for (i = 0; i < 10; i++)
            sStatusBar->spriteIds[i] = CreateSprite(&template, (i * 16) + 48, -8 - (i * 8), 0);
    }

    Free(ptr);
}

static void FreeStatusBar(void)
{
    u8 i;
    for (i = 0; i < 10; i++)
    {
        struct Sprite *sprite = &gSprites[sStatusBar->spriteIds[i]];
        if (sprite)
            DestroySpriteAndFreeResources(sprite);
    }
    { Free(sStatusBar); sStatusBar = ((void *)0); };
}





static bool32 DoStatusBarIntro(void)
{
    u8 i;
    bool32 animActive = 0;
    for (i = 0; i < 10; i++)
    {
        struct Sprite *sprite = &gSprites[sStatusBar->spriteIds[i]];
        sStatusBar->yChange[i] = 2;
        if (sStatusBar->entered[i] != 0 && sprite->y == 8)
            continue;

        animActive = 1;
        if (sprite->y == 8)
        {
            if (sStatusBar->entered[i])
                continue;



            sStatusBar->entered[i] = 1;
            sStatusBar->yChange[i] = -16;
            PlaySE(30);
        }
        sprite->y += sStatusBar->yChange[i];
    }

    if (animActive)
        return 0;
    else
        return 1;
}




static void UpdateStatusBarAnim(u8 numEmpty)
{
    u8 i;

    if (numEmpty > 10)
    {

        for (i = 0; i < 10; i++)
            StartSpriteAnim(&gSprites[sStatusBar->spriteIds[i]], STATUS_GRAY);
    }
    else
    {

        for (i = 0; i < 10 - numEmpty; i++)
        {
            if (numEmpty > 6)
            {


                sStatusBar->flashTimer += numEmpty - 6;
                if (sStatusBar->flashTimer > 30)
                    sStatusBar->flashTimer = 0;
                else if (sStatusBar->flashTimer > 10)
                    StartSpriteAnim(&gSprites[sStatusBar->spriteIds[i]], STATUS_RED);
                else
                    StartSpriteAnim(&gSprites[sStatusBar->spriteIds[i]], STATUS_YELLOW);
            }
            else
            {
                StartSpriteAnim(&gSprites[sStatusBar->spriteIds[i]], STATUS_YELLOW);
            }
        }


        for (; i < 10; i++)
            StartSpriteAnim(&gSprites[sStatusBar->spriteIds[i]], STATUS_GRAY);
    }
}

static void SetStatusBarInvisibility(bool8 invisible)
{
    u8 i;
    for (i = 0; i < 10; i++)
        gSprites[sStatusBar->spriteIds[i]].invisible = invisible;
}

static const u8 sUnusedSounds[] = {
    205,
    55,
    56,
    57,
    58,
    59,
    60,
    61,
    62,
    244
};

static void LoadBerryGfx(void)
{
    void *ptr = AllocZeroed(0x480);
    struct SpritePalette pal = {sBerries_Pal, 3};

    LZ77UnCompWram(sBerries_Gfx, ptr);
    if (ptr)
    {
        struct SpriteSheet sheet = {ptr, 0x480, 2};
        LoadSpriteSheet(&sheet);
    }

    LoadSpritePalette(&pal);
    Free(ptr);
}

static const s16 sBerryIconXCoords[] = {88, 128, 168, 208};

static void CreateBerrySprites(void)
{
    u8 i;
    s16 x;

    struct SpriteTemplate berry =
    {
        .tileTag = 2,
        .paletteTag = 3,
        .oam = &sOamData_Berry,
        .anims = sAnims_Berry,
        .images = ((void *)0),
        .affineAnims = gDummySpriteAffineAnimTable,
        .callback = SpriteCallbackDummy,
    };
    struct SpriteTemplate berryIcon =
    {
        .tileTag = 2,
        .paletteTag = 3,
        .oam = &sOamData_16x16_Priority0,
        .anims = sAnims_Berry,
        .images = ((void *)0),
        .affineAnims = gDummySpriteAffineAnimTable,
        .callback = SpriteCallbackDummy,
    };


    for (i = 0; i < 11; i++)
    {
        sBerrySpriteIds[i] = AllocZeroed(4);
        x = i * 16;
        *sBerrySpriteIds[i] = CreateSprite(&berry, x + (i * 8), 8, 1);
        SetBerryInvisibility(i, 1);
    }


    for (i = 0; i < 4; i++)
    {
        sBerryIconSpriteIds[i] = AllocZeroed(4);
        if (i == BERRY_MISSED)
            *sBerryIconSpriteIds[i] = CreateSprite(&berryIcon, sBerryIconXCoords[i], 57, 0);
        else
            *sBerryIconSpriteIds[i] = CreateSprite(&berryIcon, sBerryIconXCoords[i], 60, 0);
        StartSpriteAnim(&gSprites[*sBerryIconSpriteIds[i]], i);
    }
    SetBerryIconsInvisibility(1);
}

static void FreeBerrySprites(void)
{
    struct Sprite *sprite;
    u8 i;

    for (i = 0; i < 11; i++)
    {
        sprite = &gSprites[*sBerrySpriteIds[i]];
        if (sprite)
            DestroySprite(sprite);
        { Free(sBerrySpriteIds[i]); sBerrySpriteIds[i] = ((void *)0); };
    }
    for (i = 0; i < 4; i++)
    {
        sprite = &gSprites[*sBerryIconSpriteIds[i]];
        if (sprite)
            DestroySprite(sprite);
        { Free(sBerryIconSpriteIds[i]); sBerryIconSpriteIds[i] = ((void *)0); };
    }
}

static void SetBerryInvisibility(u8 id, bool8 invisible)
{
    gSprites[*sBerrySpriteIds[id]].invisible = invisible;
}

static void SetBerryIconsInvisibility(bool8 invisible)
{
    u8 i;
    for (i = 0; i < 4; i++)
        gSprites[*sBerryIconSpriteIds[i]].invisible = invisible;
}

static void SetBerryYPos(u8 id, u8 y)
{
    gSprites[*sBerrySpriteIds[id]].y = y * 8;
}

static void SetBerryAnim(u16 id, u8 animNum)
{
    StartSpriteAnim(&gSprites[*sBerrySpriteIds[id]], animNum);
}


static void UnusedSetSpritePos(u8 spriteId)
{
    gSprites[spriteId].x = 20 * spriteId + 50;
    gSprites[spriteId].y = 50;
}
# 4004 "src/dodrio_berry_picking.c"
static void SpriteCB_Cloud(struct Sprite *sprite)
{
    u8 i;
    static const u8 moveDelays[] = {30, 20};

    if (sprite->data[10] != 1)
    {
        for (i = 0; i < 2; i++)
        {
            if (++sCloudSpriteIds[i][1] > moveDelays[i])
            {
                sprite->x--;
                sCloudSpriteIds[i][1] = 0;
            }
        }
    }
}

static const s16 sCloudStartCoords[2][2] =
{
    {230, 55},
    { 30, 74}
};

static void CreateCloudSprites(void)
{
    u8 i;
    void *ptr = AllocZeroed(0x400);
    struct SpritePalette pal = {sCloud_Pal, 6};

    LZ77UnCompWram(sCloud_Gfx, ptr);
    if (ptr)
    {
        struct SpriteSheet sheet = {ptr, 0x400, 5};
        struct SpriteTemplate template =
        {
            .tileTag = 5,
            .paletteTag = 6,
            .oam = &sOamData_Cloud,
            .anims = sAnims_Cloud,
            .images = ((void *)0),
            .affineAnims = gDummySpriteAffineAnimTable,
            .callback = SpriteCB_Cloud,
        };

        LoadSpriteSheet(&sheet);
        LoadSpritePalette(&pal);
        for (i = 0; i < 2; i++)
        {
            sCloudSpriteIds[i] = AllocZeroed(4);
            *sCloudSpriteIds[i] = CreateSprite(&template, sCloudStartCoords[i][0], sCloudStartCoords[i][1], 4);
        }
    }
    Free(ptr);
}

static void ResetCloudPos(void)
{
    u8 i;
    for (i = 0; i < 2; i++)
    {
        struct Sprite *sprite = &gSprites[*sCloudSpriteIds[i]];
        sprite->data[10] = 1;
        sprite->x = sCloudStartCoords[i][0];
        sprite->y = sCloudStartCoords[i][1];
    }
}

static void StartCloudMovement(void)
{
    u8 i;
    for (i = 0; i < 2; i++)
    {
        struct Sprite *sprite = &gSprites[*sCloudSpriteIds[i]];
        sprite->data[10] = 0;
    }
}

static void FreeCloudSprites(void)
{
    u8 i;
    for (i = 0; i < 2; i++)
    {
        struct Sprite *sprite = &gSprites[*sCloudSpriteIds[i]];
        if (sprite)
            DestroySprite(sprite);
        { Free(sCloudSpriteIds[i]); sCloudSpriteIds[i] = ((void *)0); };
    }
}

static void SetCloudInvisibility(bool8 invisible)
{
    u8 i;
    for (i = 0; i < 2; i++)
        gSprites[*sCloudSpriteIds[i]].invisible = invisible;
}



static s16 GetDodrioXPos(u8 playerId, u8 numPlayers)
{
    s16 x = 0;
    switch (numPlayers)
    {
    case 1:
        x = 15;
        break;
    case 2:
        switch (playerId)
        {
        case 0: x = 12; break;
        case 1: x = 18; break;
        }
        break;
    case 3:
        switch (playerId)
        {
        case 0: x = 15; break;
        case 1: x = 21; break;
        case 2: x = 9; break;
        }
        break;
    case 4:
        switch (playerId)
        {
        case 0: x = 12; break;
        case 1: x = 18; break;
        case 2: x = 24; break;
        case 3: x = 6; break;
        }
        break;
    case 5:
        switch (playerId)
        {
        case 0: x = 15; break;
        case 1: x = 21; break;
        case 2: x = 27; break;
        case 3: x = 3; break;
        case 4: x = 9; break;
        }
        break;
    }

    return x * 8;
}

static void ResetBerryAndStatusBarSprites(void)
{
    u8 i;
    for (i = 0; i < 11; i++)
    {
        SetBerryInvisibility(i, 1);
        SetBerryYPos(i, 1);
    }
    SetStatusBarInvisibility(0);
}

static void LoadWindowFrameGfx(u8 frameId)
{
    LoadBgTiles(BG_INTERFACE, GetUserWindowGraphics(frameId)->tiles, 0x120, 1);
    LoadPalette(GetUserWindowGraphics(frameId)->palette, (0x000 + ((10) * 16)), ((16) * sizeof(u16)));
}

static void DBP_LoadStdWindowGfx(void)
{
    LoadStdWindowGfx(0, 0xA, (0x000 + ((11) * 16)));
}

static void ResetGfxState(void)
{
    sGfx->finished = 0;
    sGfx->state = 0;
    sGfx->loadState = 0;
    sGfx->cursorSelection = 0;
    sGfx->playAgainState = PLAY_AGAIN_NONE;
}

static void DrawYesNoMessageWindow(const struct WindowTemplate * template)
{
    u8 pal = 10;

    FillBgTilemapBufferRect(BG_INTERFACE, 1, template->tilemapLeft - 1, template->tilemapTop - 1, 1, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 2, template->tilemapLeft, template->tilemapTop - 1, template->width, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 3, template->tilemapLeft + template->width, template->tilemapTop - 1, 1, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 4, template->tilemapLeft - 1, template->tilemapTop, 1, template->height, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 6, template->tilemapLeft + template->width, template->tilemapTop, 1, template->height, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 7, template->tilemapLeft - 1, template->tilemapTop + template->height, 1, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 8, template->tilemapLeft, template->tilemapTop + template->height, template->width, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 9, template->tilemapLeft + template->width, template->tilemapTop + template->height, 1, 1, pal);
}

static void DrawMessageWindow(const struct WindowTemplate * template)
{
    u8 pal = 11;

    FillBgTilemapBufferRect(BG_INTERFACE, 10, template->tilemapLeft - 1, template->tilemapTop - 1, 1, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 11, template->tilemapLeft, template->tilemapTop - 1, template->width, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 12, template->tilemapLeft + template->width, template->tilemapTop - 1, 1, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 13, template->tilemapLeft - 1, template->tilemapTop, 1, template->height, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 15, template->tilemapLeft + template->width, template->tilemapTop, 1, template->height, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 16, template->tilemapLeft - 1, template->tilemapTop + template->height, 1, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 17, template->tilemapLeft, template->tilemapTop + template->height, template->width, 1, pal);
    FillBgTilemapBufferRect(BG_INTERFACE, 18, template->tilemapLeft + template->width, template->tilemapTop + template->height, 1, 1, pal);
}

static void InitGameGfx(struct DodrioGame_Gfx * ptr)
{
    sGfx = ptr;
    sGfx->finished = 0;
    sGfx->state = 0;
    sGfx->loadState = 0;
    sGfx->cursorSelection = 0;
    sGfx->playAgainState = PLAY_AGAIN_NONE;
    sGfx->taskId = CreateTask(Task_TryRunGfxFunc, 3);
    SetGfxFunc(LoadGfx);
}


static void FreeAllWindowBuffers_(void)
{
    FreeAllWindowBuffers();
}

struct WinCoords
{
    u8 left;
    u8 top;
};

enum {
    COLORID_GRAY,
    COLORID_RED,
    COLORID_BLUE,
    COLORID_GREEN,
};

static const u8 sTextColorTable[][3] =
{
    [COLORID_GRAY] = {0x1, 0x2, 0x3},
    [COLORID_RED] = {0x1, 0x4, 0x5},
    [COLORID_BLUE] = {0x1, 0x8, 0x9},
    [COLORID_GREEN] = {0x1, 0x6, 0x7},
};

static const struct WinCoords sNameWindowCoords_1Player[] = {{12, 6}};
static const struct WinCoords sNameWindowCoords_2Players[] = {{9, 10}, {15, 6}};
static const struct WinCoords sNameWindowCoords_3Players[] = {{12, 6}, {18, 10}, {6, 10}};
static const struct WinCoords sNameWindowCoords_4Players[] = {{9, 10}, {15, 6}, {21, 10}, {3, 6}};
static const struct WinCoords sNameWindowCoords_5Players[] = {{12, 6}, {18, 10}, {23, 6}, {1, 6}, {6, 10}};

static const struct WinCoords * const sNameWindowCoords[5] =
{
    sNameWindowCoords_1Player,
    sNameWindowCoords_2Players,
    sNameWindowCoords_3Players,
    sNameWindowCoords_4Players,
    sNameWindowCoords_5Players,
};

static const u8 *const sRankingTexts[5] =
{
    gText_1Colon,
    gText_2Colon,
    gText_3Colon,
    gText_4Colon,
    gText_5Colon,
};

static const u16 sResultsXCoords[] = {92, 132, 172, 212};
static const u16 sResultsYCoords[] = {30, 45, 60, 75, 90};
static const u16 sRankingYCoords[] = {12, 28, 44, 60, 76};

struct
{
    u8 id;
    void (*func)(void);
} const sGfxFuncs[] =
{
    {GFXFUNC_LOAD, LoadGfx},
    {GFXFUNC_SHOW_NAMES, ShowNames},
    {GFXFUNC_SHOW_RESULTS, ShowResults},
    {GFXFUNC_MSG_PLAY_AGAIN, Msg_WantToPlayAgain},
    {GFXFUNC_MSG_SAVING, Msg_SavingDontTurnOff},
    {GFXFUNC_MSG_COMM_STANDBY, Msg_CommunicationStandby},
    {GFXFUNC_ERASE_MSG, EraseMessage},
    {GFXFUNC_MSG_PLAYER_DROPPED, Msg_SomeoneDroppedOut},
    {GFXFUNC_STOP, StopGfxFuncs},
    {GFXFUNC_IDLE, GfxIdle},
};

static void SetGfxFuncById(u8 funcId)
{
    u8 i;
    for (i = 0; i < (sizeof(sGfxFuncs) / sizeof((sGfxFuncs)[0])); i++)
    {
        if (sGfxFuncs[i].id == funcId)
            SetGfxFunc(sGfxFuncs[i].func);
    }
}

static void Task_TryRunGfxFunc(u8 taskId)
{




    if (!sGfx->finished)
        GetGfxFunc()();
}

static void LoadGfx(void)
{
    switch (sGfx->state)
    {
    case 0:
        InitBgs();
        sGfx->state++;
        break;
    case 1:
        if (LoadBgGfx() == 1)
            sGfx->state++;
        break;
    case 2:
        CopyToBgTilemapBuffer(BG_SCENERY, sBg_Tilemap, 0, 0);
        CopyToBgTilemapBuffer(BG_TREE_LEFT, sTreeBorderLeft_Tilemap, 0, 0);
        CopyToBgTilemapBuffer(BG_TREE_RIGHT, sTreeBorderRight_Tilemap, 0, 0);
        CopyBgTilemapBufferToVram(BG_SCENERY);
        CopyBgTilemapBufferToVram(BG_TREE_LEFT);
        CopyBgTilemapBufferToVram(BG_TREE_RIGHT);
        sGfx->state++;
        break;
    case 3:
        ShowBg(BG_INTERFACE);
        ShowBg(BG_SCENERY);
        ShowBg(BG_TREE_LEFT);
        ShowBg(BG_TREE_RIGHT);
        sGfx->state++;
        break;
    case 4:
        LoadWindowFrameGfx(gSaveBlock2Ptr->optionsWindowFrameType);
        DBP_LoadStdWindowGfx();
        sGfx->state++;
        break;
    default:
        sGfx->finished = 1;
        break;
    }
}

static void ShowNames(void)
{
    u8 i, numPlayers, playerId, colorsId, *name;
    u32 left;
    struct WindowTemplate window;
    const struct WinCoords * coords;

    switch (sGfx->state)
    {
    case 0:
        numPlayers = GetNumPlayers();
        coords = sNameWindowCoords[numPlayers - 1];
        window.bg = BG_INTERFACE;
        window.width = 7;
        window.height = 2;
        window.paletteNum = 13;
        window.baseBlock = 0x13;
        for (i = 0; i < numPlayers; coords++, i++)
        {
            colorsId = 0;
            playerId = GetPlayerIdByPos(i);
            left = (56 - GetStringWidth(FONT_SMALL, GetPlayerName(playerId), -1)) / 2u;
            window.tilemapLeft = coords->left;
            window.tilemapTop = coords->top;
            sGfx->windowIds[i] = AddWindow(&window);
            ClearWindowTilemap(sGfx->windowIds[i]);
            FillWindowPixelBuffer(sGfx->windowIds[i], ((1) | ((1) << 4)));
            if (playerId == GetMultiplayerId())
                colorsId = COLORID_BLUE;
            name = GetPlayerName(playerId);
            AddTextPrinterParameterized3(sGfx->windowIds[i], FONT_SMALL, left, 1, sTextColorTable[colorsId], 0xFF, name);
            CopyWindowToVram(sGfx->windowIds[i], COPYWIN_GFX);
            window.baseBlock += 0xE;
            DrawMessageWindow(&window);
        }
        sGfx->state++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            numPlayers = GetNumPlayers();
            for (i = 0; i < numPlayers; i++)
                PutWindowTilemap(sGfx->windowIds[i]);
            CopyBgTilemapBufferToVram(BG_INTERFACE);
            sGfx->state++;
        }
        break;
    default:
        if (++sGfx->state > 180)
        {
            numPlayers = GetNumPlayers();
            for (i = 0; i < numPlayers; i++)
            {
                ClearWindowTilemap(sGfx->windowIds[i]);
                RemoveWindow(sGfx->windowIds[i]);
            }
            FillBgTilemapBufferRect_Palette0(BG_INTERFACE, 0, 0, 0, 30, 20);
            CopyBgTilemapBufferToVram(BG_INTERFACE);
            sGfx->finished = 1;
        }
        break;
    }
}

static void PrintRankedScores(u8 numPlayers_)
{
    u8 i, ranking = 0, rankedPlayers = 0;
    u8 numPlayers = numPlayers_;
    u8 *name;
    u32 x, numWidth;
    u8 numString[32];
    u8 playersByRanking[5] = {0, 1, 2, 3, 4};
    struct DodrioGame_ScoreResults temp, scoreResults[5];


    for (i = 0; i < numPlayers; i++)
    {
        playersByRanking[i] = i;
        GetScoreResults(&temp, i);
        scoreResults[i] = temp;
    }


    if (GetHighestScore() != 0)
    {
        do
        {
            for (i = 0; i < numPlayers; i++)
            {
                if (scoreResults[i].ranking == ranking)
                {
                    playersByRanking[rankedPlayers] = i;
                    rankedPlayers++;
                }
            }
            ranking = rankedPlayers;
        } while (rankedPlayers < numPlayers);
    }


    for (i = 0; i < numPlayers; i++)
    {
        if (scoreResults[i].score == 0)
            scoreResults[i].ranking = numPlayers - 1;
    }


    x = 216 - GetStringWidth(FONT_SMALL, gText_SpacePoints, 0);
    for (i = 0; i < numPlayers; i++)
    {
        u8 colorsId = COLORID_GRAY;
        u8 playerId = playersByRanking[i];
        u32 points = scoreResults[playerId].score;

        AddTextPrinterParameterized(sGfx->windowIds[1], FONT_SMALL, sRankingTexts[scoreResults[playerId].ranking], 8, sRankingYCoords[i], 0xFF, ((void *)0));
        if (playerId == GetMultiplayerId())
            colorsId =COLORID_BLUE;
        name = GetPlayerName(playerId);
        AddTextPrinterParameterized3(sGfx->windowIds[1], FONT_SMALL, 28, sRankingYCoords[i], sTextColorTable[colorsId], 0xFF, name);
        ConvertIntToDecimalStringN(numString, points, STR_CONV_MODE_RIGHT_ALIGN, 7);
        numWidth = GetStringWidth(FONT_SMALL, numString, -1);
        AddTextPrinterParameterized(sGfx->windowIds[1], FONT_SMALL, numString, x - 35, sRankingYCoords[i], 0xFF, ((void *)0));
        AddTextPrinterParameterized(sGfx->windowIds[1], FONT_SMALL, gText_SpacePoints, x, sRankingYCoords[i], 0xFF, ((void *)0));
    }
}

static void ShowResults(void)
{
    u8 i, j, prizeState, numPlayers = GetNumPlayers();
    u8 *name;
    u32 strWidth, x;
    u8 strBuff_Large[100];
    u8 strBuff_Small[20];

    switch (sGfx->state)
    {
    case 0:
        SetScoreResults();
        sGfx->timer = 0;
        sGfx->state++;
        break;
    case 1:
        sGfx->windowIds[0] = AddWindow(&sWindowTemplates_Results[0]);
        sGfx->windowIds[1] = AddWindow(&sWindowTemplates_Results[1]);
        ClearWindowTilemap(sGfx->windowIds[0]);
        ClearWindowTilemap(sGfx->windowIds[1]);
        DrawMessageWindow(&sWindowTemplates_Results[0]);
        DrawMessageWindow(&sWindowTemplates_Results[1]);
        sGfx->state++;
        break;
    case 2:
        FillWindowPixelBuffer(sGfx->windowIds[0], ((1) | ((1) << 4)));
        FillWindowPixelBuffer(sGfx->windowIds[1], ((1) | ((1) << 4)));
        strWidth = GetStringWidth(FONT_SMALL, gText_BerryPickingResults, -1);
        x = (240 - 16 - strWidth) / 2;
        AddTextPrinterParameterized(sGfx->windowIds[0], FONT_SMALL, gText_BerryPickingResults, x, 2, 0xFF, ((void *)0));
        AddTextPrinterParameterized(sGfx->windowIds[1], FONT_SMALL, gText_10P30P50P50P, 68, 16, 0xFF, ((void *)0));
        for (i = 0; i < numPlayers; i++)
        {
            u8 colorsId = COLORID_GRAY;
            if (i == GetMultiplayerId())
                colorsId = COLORID_BLUE;

            name = GetPlayerName(i);
            AddTextPrinterParameterized3(sGfx->windowIds[1], FONT_SMALL, 2, sResultsYCoords[i], sTextColorTable[colorsId], 0xFF, name);
            for (j = 0; j < 4; j++)
            {
                u32 width;
                u16 berriesPicked = Min(GetBerryResult(i, j), 9999);
                u16 maxBerriesPicked = Min(GetHighestBerryResult(j), 9999);

                ConvertIntToDecimalStringN(strBuff_Large, berriesPicked, STR_CONV_MODE_LEFT_ALIGN, 4);
                width = GetStringWidth(FONT_SMALL, strBuff_Large, -1);


                if (maxBerriesPicked == berriesPicked && maxBerriesPicked != 0)
                    AddTextPrinterParameterized3(sGfx->windowIds[1], FONT_SMALL, sResultsXCoords[j] - width, sResultsYCoords[i], sTextColorTable[1], 0xFF, strBuff_Large);
                else
                    AddTextPrinterParameterized(sGfx->windowIds[1], FONT_SMALL, strBuff_Large, sResultsXCoords[j] - width, sResultsYCoords[i], 0xFF, ((void *)0));
            }
        }
        CopyWindowToVram(sGfx->windowIds[0], COPYWIN_GFX);
        CopyWindowToVram(sGfx->windowIds[1], COPYWIN_GFX);
        sGfx->state++;
        break;
    case 3:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            PutWindowTilemap(sGfx->windowIds[0]);
            PutWindowTilemap(sGfx->windowIds[1]);
        }
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        SetBerryIconsInvisibility(0);
        sGfx->state++;
        break;
    case 4:
        if (++sGfx->timer >= 30 && ({(gMain.newKeys) & (0x0001);}))
        {
            sGfx->timer = 0;
            PlaySE(5);
            SetBerryIconsInvisibility(1);
            sGfx->state++;
        }
        break;
    case 5:
        FillWindowPixelBuffer(sGfx->windowIds[0], ((1) | ((1) << 4)));
        FillWindowPixelBuffer(sGfx->windowIds[1], ((1) | ((1) << 4)));
        strWidth = GetStringWidth(FONT_SMALL, gText_AnnouncingRankings, -1);
        x = (240 - 16 - strWidth) / 2;
        AddTextPrinterParameterized(sGfx->windowIds[0], FONT_SMALL, gText_AnnouncingRankings, x, 2, 0xFF, ((void *)0));
        sGfx->state++;
        break;
    case 6:
        PrintRankedScores(numPlayers);
        CopyWindowToVram(sGfx->windowIds[0], COPYWIN_GFX);
        CopyWindowToVram(sGfx->windowIds[1], COPYWIN_GFX);
        sGfx->state++;
        break;
    case 7:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            PutWindowTilemap(sGfx->windowIds[0]);
            PutWindowTilemap(sGfx->windowIds[1]);
        }
        CopyBgTilemapBufferToVram(0);
        sGfx->state++;
        break;
    case 8:
        if (++sGfx->timer >= 30 && ({(gMain.newKeys) & (0x0001);}))
        {
            sGfx->timer = 0;
            PlaySE(5);
            if (GetHighestScore() < 3000)
            {
                sGfx->state = 127;
            }
            else
            {
                StopMapMusic();
                sGfx->state++;
            }

            FillBgTilemapBufferRect_Palette0(BG_INTERFACE, 0, 0, 5, 30, 15);
            RemoveWindow(sGfx->windowIds[1]);
            sGfx->windowIds[1] = AddWindow(&sWindowTemplate_Prize);
            ClearWindowTilemap(sGfx->windowIds[1]);
            DrawMessageWindow(&sWindowTemplate_Prize);
        }
        break;
    case 9:
        PlayNewMapMusic(257);
        FillWindowPixelBuffer(sGfx->windowIds[0], ((1) | ((1) << 4)));
        FillWindowPixelBuffer(sGfx->windowIds[1], ((1) | ((1) << 4)));
        strWidth = GetStringWidth(FONT_SMALL, gText_AnnouncingPrizes, -1);
        x = (240 - 16 - strWidth) / 2;
        AddTextPrinterParameterized(sGfx->windowIds[0], FONT_SMALL, gText_AnnouncingPrizes, x, 2, 0xFF, ((void *)0));
        DynamicPlaceholderTextUtil_Reset();
        CopyItemName(GetPrizeItemId(), strBuff_Small);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, strBuff_Small);
        DynamicPlaceholderTextUtil_ExpandPlaceholders(strBuff_Large, gText_FirstPlacePrize);
        AddTextPrinterParameterized(sGfx->windowIds[1], FONT_SMALL, strBuff_Large, 8, 2, 0xFF, ((void *)0));
        prizeState = TryGivePrize();
        if (prizeState != PRIZE_RECEIVED && prizeState != NO_PRIZE)
        {
            DynamicPlaceholderTextUtil_Reset();
            CopyItemName(GetPrizeItemId(), strBuff_Small);
            DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, strBuff_Small);
            if (prizeState == PRIZE_NO_ROOM)
                DynamicPlaceholderTextUtil_ExpandPlaceholders(strBuff_Large, gText_CantHoldAnyMore);
            else if (prizeState == PRIZE_FILLED_BAG)
                DynamicPlaceholderTextUtil_ExpandPlaceholders(strBuff_Large, gText_FilledStorageSpace);
            AddTextPrinterParameterized(sGfx->windowIds[1], FONT_SMALL, strBuff_Large, 8, 40, 0xFF, ((void *)0));
        }
        CopyWindowToVram(sGfx->windowIds[0], COPYWIN_GFX);
        CopyWindowToVram(sGfx->windowIds[1], COPYWIN_GFX);
        sGfx->state++;
        break;
    case 10:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            PutWindowTilemap(sGfx->windowIds[0]);
            PutWindowTilemap(sGfx->windowIds[1]);
        }
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        FadeOutAndFadeInNewMapMusic(311, 20, 10);
        sGfx->state++;
        break;
    case 11:
        if (++sGfx->timer >= 30 && ({(gMain.newKeys) & (0x0001);}))
        {
            sGfx->timer = 0;
            PlaySE(5);
            sGfx->state++;
        }
        break;
    default:
        ClearWindowTilemap(sGfx->windowIds[0]);
        ClearWindowTilemap(sGfx->windowIds[1]);
        RemoveWindow(sGfx->windowIds[0]);
        RemoveWindow(sGfx->windowIds[1]);
        FillBgTilemapBufferRect_Palette0(BG_INTERFACE, 0, 0, 0, 30, 20);
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        sGfx->finished = 1;
        break;
    }
}

static void Msg_WantToPlayAgain(void)
{
    u8 y;

    switch (sGfx->state)
    {
    case 0:

        sGfx->windowIds[WIN_PLAY_AGAIN] = AddWindow(&sWindowTemplates_PlayAgain[0]);
        sGfx->windowIds[WIN_YES_NO] = AddWindow(&sWindowTemplates_PlayAgain[1]);
        ClearWindowTilemap(sGfx->windowIds[WIN_PLAY_AGAIN]);
        ClearWindowTilemap(sGfx->windowIds[WIN_YES_NO]);
        DrawMessageWindow(&sWindowTemplates_PlayAgain[WIN_PLAY_AGAIN]);
        DrawYesNoMessageWindow(&sWindowTemplates_PlayAgain[WIN_YES_NO]);
        sGfx->state++;
        sGfx->cursorSelection = PLAY_AGAIN_NONE;
        sGfx->playAgainState = PLAY_AGAIN_NONE;
        break;
    case 1:

        FillWindowPixelBuffer(sGfx->windowIds[WIN_PLAY_AGAIN], ((1) | ((1) << 4)));
        FillWindowPixelBuffer(sGfx->windowIds[WIN_YES_NO], ((1) | ((1) << 4)));
        AddTextPrinterParameterized(sGfx->windowIds[WIN_PLAY_AGAIN], FONT_NORMAL, gText_WantToPlayAgain, 0, 6, 0xFF, ((void *)0));
        AddTextPrinterParameterized(sGfx->windowIds[WIN_YES_NO], FONT_NORMAL, gText_Yes, 8, 2, 0xFF, ((void *)0));
        AddTextPrinterParameterized(sGfx->windowIds[WIN_YES_NO], FONT_NORMAL, gText_No, 8, 16, 0xFF, ((void *)0));
        AddTextPrinterParameterized(sGfx->windowIds[WIN_YES_NO], FONT_NORMAL, gText_SelectorArrow2, 0, 2, 0xFF, ((void *)0));
        CopyWindowToVram(sGfx->windowIds[WIN_PLAY_AGAIN], COPYWIN_GFX);
        CopyWindowToVram(sGfx->windowIds[WIN_YES_NO], COPYWIN_GFX);
        sGfx->state++;
        break;
    case 2:

        if (!IsDma3ManagerBusyWithBgCopy())
        {
            PutWindowTilemap(sGfx->windowIds[WIN_PLAY_AGAIN]);
            PutWindowTilemap(sGfx->windowIds[WIN_YES_NO]);
        }
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        sGfx->state++;
        break;
    case 3:

        y = sGfx->cursorSelection;
        if (y == PLAY_AGAIN_NONE)
            y = PLAY_AGAIN_YES;
        FillWindowPixelBuffer(sGfx->windowIds[WIN_YES_NO], ((1) | ((1) << 4)));
        AddTextPrinterParameterized(sGfx->windowIds[WIN_YES_NO], FONT_NORMAL, gText_Yes, 8, 2, 0xFF, ((void *)0));
        AddTextPrinterParameterized(sGfx->windowIds[WIN_YES_NO], FONT_NORMAL, gText_No, 8, 16, 0xFF, ((void *)0));
        AddTextPrinterParameterized(sGfx->windowIds[WIN_YES_NO], FONT_NORMAL, gText_SelectorArrow2, 0, y == 1 ? 2 : 16, 0xFF, ((void *)0));
        CopyWindowToVram(sGfx->windowIds[WIN_YES_NO], COPYWIN_FULL);


        if (({(gMain.newKeys) & (0x0001);}))
        {
            PlaySE(5);
            if (sGfx->cursorSelection == PLAY_AGAIN_NONE)
                sGfx->cursorSelection = PLAY_AGAIN_YES;
            sGfx->state++;
        }
        else if (({(gMain.newKeys) & (0x0040 | 0x0080);}))
        {
            PlaySE(5);
            switch (sGfx->cursorSelection)
            {
            case PLAY_AGAIN_NONE:
                sGfx->cursorSelection = PLAY_AGAIN_NO;
                break;
            case PLAY_AGAIN_YES:
                sGfx->cursorSelection = PLAY_AGAIN_NO;
                break;
            case PLAY_AGAIN_NO:
                sGfx->cursorSelection = PLAY_AGAIN_YES;
                break;
            }
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            PlaySE(5);
            sGfx->cursorSelection = PLAY_AGAIN_NO;
            sGfx->state++;
        }
        break;
    default:
        sGfx->playAgainState = sGfx->cursorSelection;
        ClearWindowTilemap(sGfx->windowIds[WIN_PLAY_AGAIN]);
        ClearWindowTilemap(sGfx->windowIds[WIN_YES_NO]);
        RemoveWindow(sGfx->windowIds[WIN_PLAY_AGAIN]);
        RemoveWindow(sGfx->windowIds[WIN_YES_NO]);
        FillBgTilemapBufferRect_Palette0(BG_INTERFACE, 0, 0, 0, 30, 20);
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        sGfx->finished = 1;
        break;
    }
}

static void Msg_SavingDontTurnOff(void)
{
    switch (sGfx->state)
    {
    case 0:
        DrawDialogueFrame(0, 0);
        AddTextPrinterParameterized2(0, FONT_NORMAL, gText_SavingDontTurnOffThePower2, 0, ((void *)0), 0x2, 0x1, 0x3);
        sGfx->state++;
        break;
    case 1:
        CopyWindowToVram(0, COPYWIN_FULL);
        sGfx->state++;
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            CreateTask(Task_LinkFullSave, 0);
            sGfx->state++;
        }
        break;
    case 3:
        if (!FuncIsActiveTask(Task_LinkFullSave))
            sGfx->state++;
        break;
    default:
        FillBgTilemapBufferRect_Palette0(BG_INTERFACE, 0, 0, 0, 30, 20);
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        sGfx->finished = 1;
        break;
    }
}

static void Msg_CommunicationStandby(void)
{
    switch (sGfx->state)
    {
    case 0:
        sGfx->windowIds[0] = AddWindow(&sWindowTemplate_CommStandby);
        ClearWindowTilemap(sGfx->windowIds[0]);
        DrawMessageWindow(&sWindowTemplate_CommStandby);
        sGfx->state++;
        break;
    case 1:
        FillWindowPixelBuffer(sGfx->windowIds[0], ((1) | ((1) << 4)));
        AddTextPrinterParameterized(sGfx->windowIds[0], FONT_NORMAL, gText_CommunicationStandby3, 0, 6, 0xFF, ((void *)0));
        CopyWindowToVram(sGfx->windowIds[0], COPYWIN_GFX);
        sGfx->state++;
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy())
            PutWindowTilemap(sGfx->windowIds[0]);
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        sGfx->state++;
        break;
    default:
        sGfx->finished = 1;
        break;
    }
}

static void EraseMessage(void)
{
    ClearWindowTilemap(sGfx->windowIds[0]);
    RemoveWindow(sGfx->windowIds[0]);
    FillBgTilemapBufferRect_Palette0(BG_INTERFACE, 0, 0, 0, 30, 20);
    CopyBgTilemapBufferToVram(BG_INTERFACE);
    sGfx->finished = 1;
}

static void Msg_SomeoneDroppedOut(void)
{
    switch (sGfx->state)
    {
    case 0:
        sGfx->windowIds[0] = AddWindow(&sWindowTemplate_DroppedOut);
        ClearWindowTilemap(sGfx->windowIds[0]);
        DrawMessageWindow(&sWindowTemplate_DroppedOut);
        sGfx->state++;
        sGfx->timer = 0;
        sGfx->cursorSelection = 0;
        sGfx->playAgainState = PLAY_AGAIN_NONE;
        break;
    case 1:
        FillWindowPixelBuffer(sGfx->windowIds[0], ((1) | ((1) << 4)));
        AddTextPrinterParameterized(sGfx->windowIds[0], FONT_NORMAL, gText_SomeoneDroppedOut, 0, 6, 0xFF, ((void *)0));
        CopyWindowToVram(sGfx->windowIds[0], COPYWIN_GFX);
        sGfx->state++;
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy())
            PutWindowTilemap(sGfx->windowIds[0]);
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        sGfx->state++;
        break;
    case 3:
        if (++sGfx->timer >= 120)
            sGfx->state++;
        break;
    default:
        sGfx->playAgainState = PLAY_AGAIN_DROPPED;
        ClearWindowTilemap(sGfx->windowIds[0]);
        RemoveWindow(sGfx->windowIds[0]);
        FillBgTilemapBufferRect_Palette0(BG_INTERFACE, 0, 0, 0, 30, 20);
        CopyBgTilemapBufferToVram(BG_INTERFACE);
        sGfx->finished = 1;
        break;
    }
}

static void StopGfxFuncs(void)
{
    DestroyTask(sGfx->taskId);
    sGfx->finished = 1;
}

static void GfxIdle(void)
{

}

static void SetGfxFunc(void (*func)(void))
{
    sGfx->state = 0;
    sGfx->finished = 0;
    sGfx->func = func;
}

static void (*GetGfxFunc(void))(void)
{
    return sGfx->func;
}

static bool32 IsGfxFuncActive(void)
{
    if (sGfx->finished == 1)
        return 0;
    else
        return 1;
}

static u8 GetPlayAgainState(void)
{
    return sGfx->playAgainState;
}

static void InitBgs(void)
{
    { void *_dest = (void *)0x6000000; u32 _size = 0x18000; while (1) { { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((0x1000))/(16/8))); dmaRegs[2]; }; }; _dest += (0x1000); _size -= (0x1000); if (_size <= (0x1000)) { { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; break; } } };
    { vu32 *_dest = (vu32 *)((void *)0x7000000); u32 _size = 0x400; { vu32 tmp = (vu32)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0400 | 0x0100 | 0x0000) << 16 | ((_size)/(32/8))); dmaRegs[2]; }; }; };
    { vu16 *_dest = (vu16 *)((void *)0x5000000); u32 _size = (0x200 + 0x200); { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; };
    SetGpuReg(0x0, 0);
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sBgTemplates, (sizeof(sBgTemplates) / sizeof((sBgTemplates)[0])));
    ChangeBgX(BG_INTERFACE, 0, BG_COORD_SET);
    ChangeBgY(BG_INTERFACE, 0, BG_COORD_SET);
    ChangeBgX(BG_TREE_LEFT, 0, BG_COORD_SET);
    ChangeBgY(BG_TREE_LEFT, 0, BG_COORD_SET);
    ChangeBgX(BG_TREE_RIGHT, 0, BG_COORD_SET);
    ChangeBgY(BG_TREE_RIGHT, 0, BG_COORD_SET);
    ChangeBgX(BG_SCENERY, 0, BG_COORD_SET);
    ChangeBgY(BG_SCENERY, 0, BG_COORD_SET);
    InitStandardTextBoxWindows();
    InitTextBoxGfxAndPrinters();
    SetGpuReg(0x0, 0x1000 | 0x0040);
    SetBgTilemapBuffer(BG_SCENERY, sGfx->tilemapBuffers[0]);
    SetBgTilemapBuffer(BG_TREE_LEFT, sGfx->tilemapBuffers[1]);
    SetBgTilemapBuffer(BG_TREE_RIGHT, sGfx->tilemapBuffers[2]);
}

static bool32 LoadBgGfx(void)
{
    switch (sGfx->loadState)
    {
    case 0:
        LoadPalette(sBg_Pal, (0x000 + ((0) * 16)), sizeof(sBg_Pal));
        break;
    case 1:
        ResetTempTileDataBuffers();
        break;
    case 2:
        DecompressAndCopyTileDataToVram(BG_SCENERY, sBg_Gfx, 0, 0, 0);
        break;
    case 3:
        DecompressAndCopyTileDataToVram(BG_TREE_LEFT, sTreeBorder_Gfx, 0, 0, 0);
        break;
    case 4:
        if (FreeTempTileDataBuffersIfPossible() == 1)
            return 0;
        break;
    case 5:
        LoadPalette(GetTextWindowPalette(3), (0x000 + ((13) * 16)), ((16) * sizeof(u16)));
        break;
    default:
        sGfx->loadState = 0;
        return 1;
    }

    sGfx->loadState++;
    return 0;
}
