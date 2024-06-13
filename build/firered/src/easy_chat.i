# 0 "src/easy_chat.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/easy_chat.c"
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
# 2 "src/easy_chat.c" 2
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
# 3 "src/easy_chat.c" 2
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
# 4 "src/easy_chat.c" 2
# 1 "include/easy_chat.h" 1
# 10 "include/easy_chat.h"
struct EasyChatWordInfo
{
    const u8 *text;
    int alphabeticalOrder;
    int enabled;
};

typedef union
{
    const u16 *valueList;
    const struct EasyChatWordInfo *words;
} EasyChatGroupWordData;

struct EasyChatGroup
{
    EasyChatGroupWordData wordData;
    u16 numWords;
    u16 numEnabledWords;
};

struct EasyChatWordsByLetter
{
    const u16 *words;
    int numWords;
};

u8 *CopyEasyChatWord(u8 *dest, u16 word);
u8 *ConvertEasyChatWordsToString(u8 *dest, const u16 *src, u16 columns, u16 rows);
bool8 EC_DoesEasyChatStringFitOnLine(const u16 *easyChatWords, u8 columns, u8 rows, u16 maxLength);
void InitQuestionnaireWords(void);
void InitEasyChatPhrases(void);
void EnableRareWord(u8);
bool8 InitEasyChatSelection(void);
void DestroyEasyChatSelectionData(void);
u8 GetSelectedGroupByIndex(u8);
void GetUnlockedECWords(bool32 isAlphabetical, u16 groupId);
u16 GetDisplayedWordByIndex(u16 index);
u16 GetNumDisplayedWords(void);
const u8 *GetEasyChatWordGroupName(u8);
u8 *CopyEasyChatWordPadded(u8 *, u16, u16);
void DoEasyChatScreen(u8 type, u16 *words, MainCallback callback);
u8 GetNumDisplayableGroups(void);
bool8 InitEasyChatGraphicsWork(void);
bool8 LoadEasyChatGraphics(void);
void DestroyEasyChatGraphicsResources(void);
void EasyChatInterfaceCommand_Setup(u16 id);
bool8 EasyChatInterfaceCommand_Run(void);
u8 GetEasyChatScreenFrameId(void);
const u8 *GetTitleText(void);
u16 *GetEasyChatWordBuffer(void);
u8 GetNumRows(void);
u8 GetNumColumns(void);
u8 GetMainCursorColumn(void);
u8 GetMainCursorRow(void);
void GetEasyChatInstructionsText(const u8 **str1, const u8 **str2);
void GetEasyChatConfirmText(const u8 **str1, const u8 **str2);
void GetEasyChatConfirmCancelText(const u8 **str1, const u8 **str2);
void GetEasyChatConfirmDeletionText(const u8 **str1, const u8 **str2);
void GetECSelectGroupCursorCoords(u8 *Xp, u8 *Yp);
bool8 IsEasyChatAlphaMode(void);
u8 GetECSelectGroupRowsAbove(void);
void GetECSelectWordCursorCoords(s8 *arg0, s8 *arg1);
u8 GetECSelectWordRowsAbove(void);
u8 GetECSelectWordNumRows(void);
bool32 ShouldDrawECUpArrow(void);
bool32 ShouldDrawECDownArrow(void);
# 5 "src/easy_chat.c" 2
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
# 6 "src/easy_chat.c" 2
# 1 "include/field_message_box.h" 1





enum {
    FIELD_MESSAGE_BOX_HIDDEN,
    FIELD_MESSAGE_BOX_UNUSED,
    FIELD_MESSAGE_BOX_NORMAL,
    FIELD_MESSAGE_BOX_AUTO_SCROLL,
};

bool8 ShowFieldMessage(const u8 *message);
bool8 ShowFieldAutoScrollMessage(const u8 *message);
void HideFieldMessageBox(void);
bool8 IsFieldMessageBoxHidden(void);
u8 GetFieldMessageBoxType(void);
void InitFieldMessageBox(void);
# 7 "src/easy_chat.c" 2
# 1 "include/mystery_gift.h" 1





# 1 "include/constants/mystery_gift.h" 1
# 7 "include/mystery_gift.h" 2







enum {
    NEWS_INPUT_A,
    NEWS_INPUT_B,
    NEWS_INPUT_SCROLL_UP,
    NEWS_INPUT_SCROLL_DOWN,
    NEWS_INPUT_NONE = 0xFF
};

struct MysteryGiftLinkGameData
{
    u32 unk_00;
    u16 unk_04;
    u32 unk_08;
    u16 unk_0C;
    u32 unk_10;
    u16 flagId;
    u16 questionnaireWords[4];
    struct WonderCardMetadata cardMetadata;
    u8 maxStamps;
    u8 playerName[7];
    u8 playerTrainerId[4];
    u16 easyChatProfile[6];
    u8 gameCode[4];
    u8 version;
};

struct WonderGraphics
{
    u8 titleTextPal:4;
    u8 bodyTextPal:4;
    u8 footerTextPal:4;
    u8 stampShadowPal:4;
    const u8 * tiles;
    const u8 * map;
    const u16 * pal;
};

extern const u16 gCard1Pal[];
extern const u16 gCard2Pal[];
extern const u16 gCard3Pal[];
extern const u16 gCard4Pal[];
extern const u16 gCard5Pal[];

struct WonderNews * GetSavedWonderNews(void);
struct WonderCard * GetSavedWonderCard(void);
struct WonderCardMetadata * GetSavedWonderCardMetadata(void);
struct WonderNewsMetadata * GetSavedWonderNewsMetadata(void);
bool32 SaveWonderNews(const struct WonderNews * news);
bool32 ValidateSavedWonderNews(void);
bool32 ValidateSavedWonderCard(void);
bool32 IsWonderNewsSameAsSaved(const u8 * news);
bool32 SaveWonderCard(const struct WonderCard * card);
void DisableWonderCardSending(struct WonderCard * card);
bool32 MysteryGift_TrySaveStamp(const u16 * stamp);
void MysteryGift_LoadLinkGameData(struct MysteryGiftLinkGameData * data);
bool32 MysteryGift_ValidateLinkGameData(const struct MysteryGiftLinkGameData * data);
u32 MysteryGift_CompareCardFlags(const u16 * flagId, const struct MysteryGiftLinkGameData * data, const void *unused);
u32 MysteryGift_CheckStamps(const u16 * stamp, const struct MysteryGiftLinkGameData * data, const void *unused);
bool32 MysteryGift_DoesQuestionnaireMatch(const struct MysteryGiftLinkGameData * data, const u16 * words);
u16 MysteryGift_GetCardStatFromLinkData(const struct MysteryGiftLinkGameData * data, u32 stat);
bool32 WonderCard_Init(struct WonderCard * card, struct WonderCardMetadata * metadata);
bool32 WonderNews_Init(const struct WonderNews * news);
s32 WonderCard_Enter(void);
s32 WonderNews_Enter(void);
void ClearSavedWonderCardAndRelated(void);
void ClearSavedWonderNewsAndRelated(void);
void WonderCard_Destroy(void);
void WonderNews_Destroy(void);
s32 WonderCard_Exit(bool32 flag);
s32 WonderNews_Exit(bool32 flag);
bool32 IsSavedWonderCardGiftNotReceived(void);
void WonderNews_AddScrollIndicatorArrowPair(void);
void WonderNews_RemoveScrollIndicatorArrowPair(void);
bool32 IsSendingSavedWonderNewsAllowed(void);
bool32 IsSendingSavedWonderCardAllowed(void);
u32 WonderNews_GetInput(u16 input);
void ClearMysteryGift(void);
u16 MysteryGift_GetCardStat(u32 stat);
void MysteryGift_TryIncrementStat(u32 stat, u32 trainerId);
u16 *GetQuestionnaireWordsPtr(void);
void MysteryGift_DisableStats(void);
bool32 MysteryGift_TryEnableStatsByFlagId(u16 flagId);
u16 GetWonderCardFlagId(void);
# 8 "src/easy_chat.c" 2
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
# 9 "src/easy_chat.c" 2
# 1 "include/mail.h" 1
# 25 "include/mail.h"
void ReadMail(struct Mail * mail, void (*savedCallback)(void), bool8 messageExists);
# 10 "src/easy_chat.c" 2
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
# 11 "src/easy_chat.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 12 "src/easy_chat.c" 2
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
# 13 "src/easy_chat.c" 2
# 1 "include/constants/easy_chat.h" 1
# 14 "src/easy_chat.c" 2

struct Unk203A120
{
    u16 numGroups;
    u16 groups[0x16];
    u16 alphabeticalGroups[27];
    u16 alphabeticalWordsByGroup[27][270];
    u8 filler3958[0x2C];
    u16 allWords[270];
    u16 totalWords;
};

static __attribute__((section("ewram_data"))) struct Unk203A120 * sEasyChatSelectionData = ((void *)0);

static bool8 EC_IsNationalPokedexEnabled(void);
static u16 GetRandomECPokemon(void);
static void PopulateECGroups(void);
static void PopulateAlphabeticalGroups(void);
static u16 GetUnlockedWordsInECGroup(u16);
static u16 GetUnlockedWordsInAlphabeticalGroup(u16);
static bool8 UnlockedECMonOrMove(u16, u8);
static bool32 EC_IsDeoxys(u16 species);
static bool8 IsWordUnlocked(u16 word);

# 1 "src/data/easy_chat/easy_chat_groups.h" 1


# 1 "src/data/easy_chat/easy_chat_group_pokemon.h" 1
static const u16 sEasyChatGroup_Pokemon[] = {
    63,
    376,
    384,
    65,
    359,
    390,
    391,
    382,
    184,
    350,
    395,
    318,
    378,
    323,
    292,
    398,
    182,
    282,
    307,
    344,
    345,
    340,
    330,
    293,
    385,
    411,
    170,
    373,
    319,
    281,
    326,
    222,
    389,
    327,
    169,
    316,
    410,
    85,
    84,
    232,
    362,
    361,
    294,
    337,
    101,
    372,
    328,
    334,
    394,
    74,
    203,
    347,
    44,
    42,
    118,
    55,
    76,
    375,
    75,
    88,
    405,
    278,
    352,
    367,
    130,
    336,
    214,
    116,
    374,
    174,
    387,
    39,
    409,
    64,
    317,
    230,
    393,
    109,
    404,
    383,
    171,
    407,
    408,
    388,
    289,
    296,
    295,
    371,
    297,
    348,
    325,
    68,
    67,
    66,
    219,
    129,
    81,
    82,
    335,
    338,
    183,
    284,
    312,
    355,
    357,
    356,
    400,
    399,
    287,
    329,
    354,
    283,
    89,
    177,
    301,
    38,
    302,
    320,
    339,
    299,
    43,
    310,
    231,
    172,
    25,
    127,
    353,
    286,
    54,
    26,
    392,
    406,
    402,
    401,
    403,
    381,
    112,
    111,
    363,
    322,
    397,
    27,
    28,
    279,
    117,
    119,
    342,
    298,
    379,
    331,
    303,
    396,
    300,
    306,
    377,
    291,
    227,
    315,
    366,
    364,
    218,
    346,
    349,
    341,
    308,
    351,
    121,
    120,
    311,
    358,
    368,
    285,
    305,
    304,
    72,
    73,
    280,
    321,
    332,
    277,
    369,
    333,
    365,
    45,
    386,
    100,
    37,
    313,
    314,
    343,
    110,
    324,
    370,
    40,
    309,
    202,
    290,
    360,
    178,
    380,
    288,
    41,
};
# 4 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_trainer.h" 1

static const u8 sEasyChatWord_IChooseYou[] = _("I CHOOSE YOU");
static const u8 sEasyChatWord_Gotcha[] = _("GOTCHA");
static const u8 sEasyChatWord_Trade[] = _("TRADE");
static const u8 sEasyChatWord_Sapphire[] = _("SAPPHIRE");
static const u8 sEasyChatWord_Evolve[] = _("EVOLVE");
static const u8 sEasyChatWord_Encyclopedia[] = _("ENCYCLOPEDIA");
static const u8 sEasyChatWord_Nature[] = _("NATURE");
static const u8 sEasyChatWord_Center[] = _("CENTER");
static const u8 sEasyChatWord_Egg[] = _("EGG");
static const u8 sEasyChatWord_Link[] = _("LINK");
static const u8 sEasyChatWord_SpAbility[] = _("SP. ABILITY");
static const u8 sEasyChatWord_Trainer[] = _("TRAINER");
static const u8 sEasyChatWord_Version[] = _("VERSION");
static const u8 sEasyChatWord_Pokenav[] = _("POKéNAV");
static const u8 sEasyChatWord_Pokemon[] = _("POKéMON");
static const u8 sEasyChatWord_Get[] = _("GET");
static const u8 sEasyChatWord_Pokedex[] = _("POKéDEX");
static const u8 sEasyChatWord_Ruby[] = _("RUBY");
static const u8 sEasyChatWord_Level[] = _("LEVEL");
static const u8 sEasyChatWord_Red[] = _("RED");
static const u8 sEasyChatWord_Green[] = _("GREEN");
static const u8 sEasyChatWord_Bag[] = _("BAG");
static const u8 sEasyChatWord_Flame[] = _("FLAME");
static const u8 sEasyChatWord_Gold[] = _("GOLD");
static const u8 sEasyChatWord_Leaf[] = _("LEAF");
static const u8 sEasyChatWord_Silver[] = _("SILVER");

static const struct EasyChatWordInfo sEasyChatGroup_Trainer[] = {
    {
        .text = sEasyChatWord_IChooseYou,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gotcha,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Trade,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sapphire,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Evolve,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Encyclopedia,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nature,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Center,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Egg,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Link,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SpAbility,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Trainer,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Version,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pokenav,
        .alphabeticalOrder = 9,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Pokemon,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Get,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pokedex,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ruby,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Level,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Red,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Green,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Bag,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Flame,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gold,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Leaf,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Silver,
        .alphabeticalOrder = 12,
        .enabled = 1
    }
};
# 5 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_status.h" 1

static const u8 sEasyChatWord_Dark[] = _("DARK");
static const u8 sEasyChatWord_Stench[] = _("STENCH");
static const u8 sEasyChatWord_ThickFat[] = _("THICK FAT");
static const u8 sEasyChatWord_RainDish[] = _("RAIN DISH");
static const u8 sEasyChatWord_Drizzle[] = _("DRIZZLE");
static const u8 sEasyChatWord_ArenaTrap[] = _("ARENA TRAP");
static const u8 sEasyChatWord_Intimidate[] = _("INTIMIDATE");
static const u8 sEasyChatWord_RockHead[] = _("ROCK HEAD");
static const u8 sEasyChatWord_Color[] = _("COLOR");
static const u8 sEasyChatWord_AltColor[] = _("ALT. COLOR");
static const u8 sEasyChatWord_Rock[] = _("ROCK");
static const u8 sEasyChatWord_Beautiful[] = _("BEAUTIFUL");
static const u8 sEasyChatWord_Beauty[] = _("BEAUTY");
static const u8 sEasyChatWord_AirLock[] = _("AIR LOCK");
static const u8 sEasyChatWord_Psychic[] = _("PSYCHIC");
static const u8 sEasyChatWord_HyperCutter[] = _("HYPER CUTTER");
static const u8 sEasyChatWord_Fighting[] = _("FIGHTING");
static const u8 sEasyChatWord_ShadowTag[] = _("SHADOW TAG");
static const u8 sEasyChatWord_Smart[] = _("SMART");
static const u8 sEasyChatWord_Smartness[] = _("SMARTNESS");
static const u8 sEasyChatWord_SpeedBoost[] = _("SPEED BOOST");
static const u8 sEasyChatWord_Cool[] = _("COOL");
static const u8 sEasyChatWord_Coolness[] = _("COOLNESS");
static const u8 sEasyChatWord_BattleArmor[] = _("BATTLE ARMOR");
static const u8 sEasyChatWord_Cute[] = _("CUTE");
static const u8 sEasyChatWord_Cuteness[] = _("CUTENESS");
static const u8 sEasyChatWord_Sturdy[] = _("STURDY");
static const u8 sEasyChatWord_SuctionCups[] = _("SUCTION CUPS");
static const u8 sEasyChatWord_Grass[] = _("GRASS");
static const u8 sEasyChatWord_ClearBody[] = _("CLEAR BODY");
static const u8 sEasyChatWord_Torrent[] = _("TORRENT");
static const u8 sEasyChatWord_Ghost[] = _("GHOST");
static const u8 sEasyChatWord_Ice[] = _("ICE");
static const u8 sEasyChatWord_Guts[] = _("GUTS");
static const u8 sEasyChatWord_RoughSkin[] = _("ROUGH SKIN");
static const u8 sEasyChatWord_ShellArmor[] = _("SHELL ARMOR");
static const u8 sEasyChatWord_NaturalCure[] = _("NATURAL CURE");
static const u8 sEasyChatWord_Damp[] = _("DAMP");
static const u8 sEasyChatWord_Ground[] = _("GROUND");
static const u8 sEasyChatWord_Limber[] = _("LIMBER");
static const u8 sEasyChatWord_MagnetPull[] = _("MAGNET PULL");
static const u8 sEasyChatWord_WhiteSmoke[] = _("WHITE SMOKE");
static const u8 sEasyChatWord_Synchronize[] = _("SYNCHRONIZE");
static const u8 sEasyChatWord_Overgrow[] = _("OVERGROW");
static const u8 sEasyChatWord_SwiftSwim[] = _("SWIFT SWIM");
static const u8 sEasyChatWord_SandStream[] = _("SAND STREAM");
static const u8 sEasyChatWord_SandVeil[] = _("SAND VEIL");
static const u8 sEasyChatWord_KeenEye[] = _("KEEN EYE");
static const u8 sEasyChatWord_InnerFocus[] = _("INNER FOCUS");
static const u8 sEasyChatWord_Static[] = _("STATIC");
static const u8 sEasyChatWord_Type[] = _("TYPE");
static const u8 sEasyChatWord_Tough[] = _("TOUGH");
static const u8 sEasyChatWord_Toughness[] = _("TOUGHNESS");
static const u8 sEasyChatWord_ShedSkin[] = _("SHED SKIN");
static const u8 sEasyChatWord_HugePower[] = _("HUGE POWER");
static const u8 sEasyChatWord_VoltAbsorb[] = _("VOLT ABSORB");
static const u8 sEasyChatWord_WaterAbsorb[] = _("WATER ABSORB");
static const u8 sEasyChatWord_Electric[] = _("ELECTRIC");
static const u8 sEasyChatWord_Forecast[] = _("FORECAST");
static const u8 sEasyChatWord_SereneGrace[] = _("SERENE GRACE");
static const u8 sEasyChatWord_Poison[] = _("POISON");
static const u8 sEasyChatWord_PoisonPoint[] = _("POISON POINT");
static const u8 sEasyChatWord_Dragon[] = _("DRAGON");
static const u8 sEasyChatWord_Trace[] = _("TRACE");
static const u8 sEasyChatWord_Oblivious[] = _("OBLIVIOUS");
static const u8 sEasyChatWord_Truant[] = _("TRUANT");
static const u8 sEasyChatWord_RunAway[] = _("RUN AWAY");
static const u8 sEasyChatWord_StickyHold[] = _("STICKY HOLD");
static const u8 sEasyChatWord_CloudNine[] = _("CLOUD NINE");
static const u8 sEasyChatWord_Normal[] = _("NORMAL");
static const u8 sEasyChatWord_Steel[] = _("STEEL");
static const u8 sEasyChatWord_Illuminate[] = _("ILLUMINATE");
static const u8 sEasyChatWord_EarlyBird[] = _("EARLY BIRD");
static const u8 sEasyChatWord_Hustle[] = _("HUSTLE");
static const u8 sEasyChatWord_Shine[] = _("SHINE");
static const u8 sEasyChatWord_Flying[] = _("FLYING");
static const u8 sEasyChatWord_Drought[] = _("DROUGHT");
static const u8 sEasyChatWord_Lightningrod[] = _("LIGHTNINGROD");
static const u8 sEasyChatWord_Compoundeyes[] = _("COMPOUNDEYES");
static const u8 sEasyChatWord_MarvelScale[] = _("MARVEL SCALE");
static const u8 sEasyChatWord_WonderGuard[] = _("WONDER GUARD");
static const u8 sEasyChatWord_Insomnia[] = _("INSOMNIA");
static const u8 sEasyChatWord_Levitate[] = _("LEVITATE");
static const u8 sEasyChatWord_Plus[] = _("PLUS");
static const u8 sEasyChatWord_Pressure[] = _("PRESSURE");
static const u8 sEasyChatWord_LiquidOoze[] = _("LIQUID OOZE");
static const u8 sEasyChatWord_ColorChange[] = _("COLOR CHANGE");
static const u8 sEasyChatWord_Soundproof[] = _("SOUNDPROOF");
static const u8 sEasyChatWord_EffectSpore[] = _("EFFECT SPORE");
static const u8 sEasyChatWord_Pkrs[] = _("{PK}RS");
static const u8 sEasyChatWord_Fire[] = _("FIRE");
static const u8 sEasyChatWord_FlameBody[] = _("FLAME BODY");
static const u8 sEasyChatWord_Minus[] = _("MINUS");
static const u8 sEasyChatWord_OwnTempo[] = _("OWN TEMPO");
static const u8 sEasyChatWord_MagmaArmor[] = _("MAGMA ARMOR");
static const u8 sEasyChatWord_Water[] = _("WATER");
static const u8 sEasyChatWord_WaterVeil[] = _("WATER VEIL");
static const u8 sEasyChatWord_Bug[] = _("BUG");
static const u8 sEasyChatWord_Swarm[] = _("SWARM");
static const u8 sEasyChatWord_CuteCharm[] = _("CUTE CHARM");
static const u8 sEasyChatWord_Immunity[] = _("IMMUNITY");
static const u8 sEasyChatWord_Blaze[] = _("BLAZE");
static const u8 sEasyChatWord_Pickup[] = _("PICKUP");
static const u8 sEasyChatWord_Pattern[] = _("PATTERN");
static const u8 sEasyChatWord_FlashFire[] = _("FLASH FIRE");
static const u8 sEasyChatWord_VitalSpirit[] = _("VITAL SPIRIT");
static const u8 sEasyChatWord_Chlorophyll[] = _("CHLOROPHYLL");
static const u8 sEasyChatWord_PurePower[] = _("PURE POWER");
static const u8 sEasyChatWord_ShieldDust[] = _("SHIELD DUST");

static const struct EasyChatWordInfo sEasyChatGroup_Status[] = {
    {
        .text = sEasyChatWord_Dark,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Stench,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ThickFat,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_RainDish,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Drizzle,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ArenaTrap,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Intimidate,
        .alphabeticalOrder = 101,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_RockHead,
        .alphabeticalOrder = 97,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Color,
        .alphabeticalOrder = 106,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_AltColor,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rock,
        .alphabeticalOrder = 68,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Beautiful,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Beauty,
        .alphabeticalOrder = 86,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_AirLock,
        .alphabeticalOrder = 78,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Psychic,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HyperCutter,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fighting,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ShadowTag,
        .alphabeticalOrder = 99,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Smart,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Smartness,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SpeedBoost,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cool,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Coolness,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_BattleArmor,
        .alphabeticalOrder = 76,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cute,
        .alphabeticalOrder = 72,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cuteness,
        .alphabeticalOrder = 88,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sturdy,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SuctionCups,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Grass,
        .alphabeticalOrder = 90,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ClearBody,
        .alphabeticalOrder = 91,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Torrent,
        .alphabeticalOrder = 104,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ghost,
        .alphabeticalOrder = 75,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ice,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Guts,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_RoughSkin,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ShellArmor,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_NaturalCure,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Damp,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ground,
        .alphabeticalOrder = 73,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Limber,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_MagnetPull,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WhiteSmoke,
        .alphabeticalOrder = 71,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Synchronize,
        .alphabeticalOrder = 100,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Overgrow,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SwiftSwim,
        .alphabeticalOrder = 81,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SandStream,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SandVeil,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_KeenEye,
        .alphabeticalOrder = 82,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_InnerFocus,
        .alphabeticalOrder = 77,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Static,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Type,
        .alphabeticalOrder = 85,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tough,
        .alphabeticalOrder = 94,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Toughness,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ShedSkin,
        .alphabeticalOrder = 79,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HugePower,
        .alphabeticalOrder = 92,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_VoltAbsorb,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WaterAbsorb,
        .alphabeticalOrder = 69,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Electric,
        .alphabeticalOrder = 64,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Forecast,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SereneGrace,
        .alphabeticalOrder = 93,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Poison,
        .alphabeticalOrder = 103,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_PoisonPoint,
        .alphabeticalOrder = 102,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dragon,
        .alphabeticalOrder = 89,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Trace,
        .alphabeticalOrder = 83,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Oblivious,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Truant,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_RunAway,
        .alphabeticalOrder = 84,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_StickyHold,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_CloudNine,
        .alphabeticalOrder = 107,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Normal,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Steel,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Illuminate,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_EarlyBird,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hustle,
        .alphabeticalOrder = 66,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Shine,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Flying,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Drought,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lightningrod,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Compoundeyes,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_MarvelScale,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WonderGuard,
        .alphabeticalOrder = 108,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Insomnia,
        .alphabeticalOrder = 74,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Levitate,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Plus,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pressure,
        .alphabeticalOrder = 87,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_LiquidOoze,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ColorChange,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Soundproof,
        .alphabeticalOrder = 70,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_EffectSpore,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pkrs,
        .alphabeticalOrder = 67,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fire,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_FlameBody,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Minus,
        .alphabeticalOrder = 98,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_OwnTempo,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_MagmaArmor,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Water,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WaterVeil,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Bug,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Swarm,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_CuteCharm,
        .alphabeticalOrder = 63,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Immunity,
        .alphabeticalOrder = 65,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Blaze,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pickup,
        .alphabeticalOrder = 105,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pattern,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_FlashFire,
        .alphabeticalOrder = 95,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_VitalSpirit,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Chlorophyll,
        .alphabeticalOrder = 96,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_PurePower,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ShieldDust,
        .alphabeticalOrder = 80,
        .enabled = 1
    }
};
# 6 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_battle.h" 1

static const u8 sEasyChatWord_MatchUp[] = _("MATCH UP");
static const u8 sEasyChatWord_Go[] = _("GO");
static const u8 sEasyChatWord_No1[] = _("NO. 1");
static const u8 sEasyChatWord_Decide[] = _("DECIDE");
static const u8 sEasyChatWord_LetMeWin[] = _("LET ME WIN");
static const u8 sEasyChatWord_Wins[] = _("WINS");
static const u8 sEasyChatWord_Win[] = _("WIN");
static const u8 sEasyChatWord_Won[] = _("WON");
static const u8 sEasyChatWord_IfIWin[] = _("IF I WIN");
static const u8 sEasyChatWord_WhenIWin[] = _("WHEN I WIN");
static const u8 sEasyChatWord_CantWin[] = _("CAN'T WIN");
static const u8 sEasyChatWord_CanWin[] = _("CAN WIN");
static const u8 sEasyChatWord_NoMatch[] = _("NO MATCH");
static const u8 sEasyChatWord_Spirit[] = _("SPIRIT");
static const u8 sEasyChatWord_Decided[] = _("DECIDED");
static const u8 sEasyChatWord_TrumpCard[] = _("TRUMP CARD");
static const u8 sEasyChatWord_TakeThat[] = _("TAKE THAT");
static const u8 sEasyChatWord_ComeOn[] = _("COME ON");
static const u8 sEasyChatWord_Attack[] = _("ATTACK");
static const u8 sEasyChatWord_Surrender[] = _("SURRENDER");
static const u8 sEasyChatWord_Gutsy[] = _("GUTSY");
static const u8 sEasyChatWord_Talent[] = _("TALENT");
static const u8 sEasyChatWord_Strategy[] = _("STRATEGY");
static const u8 sEasyChatWord_Smite[] = _("SMITE");
static const u8 sEasyChatWord_Match[] = _("MATCH");
static const u8 sEasyChatWord_Victory[] = _("VICTORY");
static const u8 sEasyChatWord_Offensive[] = _("OFFENSIVE");
static const u8 sEasyChatWord_Sense[] = _("SENSE");
static const u8 sEasyChatWord_Versus[] = _("VERSUS");
static const u8 sEasyChatWord_Fights[] = _("FIGHTS");
static const u8 sEasyChatWord_Power[] = _("POWER");
static const u8 sEasyChatWord_Challenge[] = _("CHALLENGE");
static const u8 sEasyChatWord_Strong[] = _("STRONG");
static const u8 sEasyChatWord_TooStrong[] = _("TOO STRONG");
static const u8 sEasyChatWord_GoEasy[] = _("GO EASY");
static const u8 sEasyChatWord_Foe[] = _("FOE");
static const u8 sEasyChatWord_Genius[] = _("GENIUS");
static const u8 sEasyChatWord_Legend[] = _("LEGEND");
static const u8 sEasyChatWord_Escape[] = _("ESCAPE");
static const u8 sEasyChatWord_Aim[] = _("AIM");
static const u8 sEasyChatWord_Battle[] = _("BATTLE");
static const u8 sEasyChatWord_Fight[] = _("FIGHT");
static const u8 sEasyChatWord_Resuscitate[] = _("RESUSCITATE");
static const u8 sEasyChatWord_Points[] = _("POINTS");
static const u8 sEasyChatWord_Serious[] = _("SERIOUS");
static const u8 sEasyChatWord_GiveUp[] = _("GIVE UP");
static const u8 sEasyChatWord_Loss[] = _("LOSS");
static const u8 sEasyChatWord_IfILose[] = _("IF I LOSE");
static const u8 sEasyChatWord_Lost[] = _("LOST");
static const u8 sEasyChatWord_Lose[] = _("LOSE");
static const u8 sEasyChatWord_Guard[] = _("GUARD");
static const u8 sEasyChatWord_Partner[] = _("PARTNER");
static const u8 sEasyChatWord_Reject[] = _("REJECT");
static const u8 sEasyChatWord_Accept[] = _("ACCEPT");
static const u8 sEasyChatWord_Invincible[] = _("INVINCIBLE");
static const u8 sEasyChatWord_Received[] = _("RECEIVED");
static const u8 sEasyChatWord_Easy[] = _("EASY");
static const u8 sEasyChatWord_Weak[] = _("WEAK");
static const u8 sEasyChatWord_TooWeak[] = _("TOO WEAK");
static const u8 sEasyChatWord_Pushover[] = _("PUSHOVER");
static const u8 sEasyChatWord_Leader[] = _("LEADER");
static const u8 sEasyChatWord_Rule[] = _("RULE");
static const u8 sEasyChatWord_Move[] = _("MOVE");

static const struct EasyChatWordInfo sEasyChatGroup_Battle[] = {
    {
        .text = sEasyChatWord_MatchUp,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Go,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_No1,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Decide,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_LetMeWin,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wins,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Win,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Won,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_IfIWin,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WhenIWin,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_CantWin,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_CanWin,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_NoMatch,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Spirit,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Decided,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_TrumpCard,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_TakeThat,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ComeOn,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Attack,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Surrender,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gutsy,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Talent,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Strategy,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Smite,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Match,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Victory,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Offensive,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sense,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Versus,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fights,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Power,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Challenge,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Strong,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_TooStrong,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_GoEasy,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Foe,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Genius,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Legend,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Escape,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Aim,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Battle,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fight,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Resuscitate,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Points,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Serious,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_GiveUp,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Loss,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_IfILose,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lost,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lose,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Guard,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Partner,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Reject,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Accept,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Invincible,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Received,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Easy,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Weak,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_TooWeak,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pushover,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Leader,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rule,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Move,
        .alphabeticalOrder = 7,
        .enabled = 1
    }
};
# 7 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_greetings.h" 1

static const u8 sEasyChatWord_Thanks[] = _("THANKS");
static const u8 sEasyChatWord_Yes[] = _("YES");
static const u8 sEasyChatWord_HereGoes[] = _("HERE GOES");
static const u8 sEasyChatWord_HereICome[] = _("HERE I COME");
static const u8 sEasyChatWord_HereItIs[] = _("HERE IT IS");
static const u8 sEasyChatWord_Yeah[] = _("YEAH");
static const u8 sEasyChatWord_Welcome[] = _("WELCOME");
static const u8 sEasyChatWord_Oi[] = _("OI");
static const u8 sEasyChatWord_HowDo[] = _("HOW DO");
static const u8 sEasyChatWord_Congrats[] = _("CONGRATS");
static const u8 sEasyChatWord_GiveMe[] = _("GIVE ME");
static const u8 sEasyChatWord_Sorry[] = _("SORRY");
static const u8 sEasyChatWord_Apologize[] = _("APOLOGIZE");
static const u8 sEasyChatWord_Forgive[] = _("FORGIVE");
static const u8 sEasyChatWord_HeyThere[] = _("HEY, THERE");
static const u8 sEasyChatWord_Hello[] = _("HELLO");
static const u8 sEasyChatWord_GoodBye[] = _("GOOD-BYE");
static const u8 sEasyChatWord_ThankYou[] = _("THANK YOU");
static const u8 sEasyChatWord_IveArrived[] = _("I'VE ARRIVED");
static const u8 sEasyChatWord_Pardon[] = _("PARDON");
static const u8 sEasyChatWord_Excuse[] = _("EXCUSE");
static const u8 sEasyChatWord_SeeYa[] = _("SEE YA");
static const u8 sEasyChatWord_ExcuseMe[] = _("EXCUSE ME");
static const u8 sEasyChatWord_WellThen[] = _("WELL, THEN");
static const u8 sEasyChatWord_GoAhead[] = _("GO AHEAD");
static const u8 sEasyChatWord_Appreciate[] = _("APPRECIATE");
static const u8 sEasyChatWord_HeyQues[] = _("HEY?");
static const u8 sEasyChatWord_WhatsUpQues[] = _("WHAT'S UP?");
static const u8 sEasyChatWord_HuhQues[] = _("HUH?");
static const u8 sEasyChatWord_No[] = _("NO");
static const u8 sEasyChatWord_Hi[] = _("HI");
static const u8 sEasyChatWord_YeahYeah[] = _("YEAH, YEAH");
static const u8 sEasyChatWord_ByeBye[] = _("BYE-BYE");
static const u8 sEasyChatWord_MeetYou[] = _("MEET YOU");
static const u8 sEasyChatWord_Hey[] = _("HEY");
static const u8 sEasyChatWord_Smell[] = _("SMELL");
static const u8 sEasyChatWord_Listening[] = _("LISTENING");
static const u8 sEasyChatWord_HooHah[] = _("HOO-HAH");
static const u8 sEasyChatWord_Yahoo[] = _("YAHOO");
static const u8 sEasyChatWord_Yo[] = _("YO");
static const u8 sEasyChatWord_ComeOver[] = _("COME OVER");
static const u8 sEasyChatWord_CountOn[] = _("COUNT ON");

static const struct EasyChatWordInfo sEasyChatGroup_Greetings[] = {
    {
        .text = sEasyChatWord_Thanks,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yes,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HereGoes,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HereICome,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HereItIs,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yeah,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Welcome,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Oi,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HowDo,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Congrats,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_GiveMe,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sorry,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Apologize,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Forgive,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HeyThere,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hello,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_GoodBye,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ThankYou,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_IveArrived,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pardon,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Excuse,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SeeYa,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ExcuseMe,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WellThen,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_GoAhead,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Appreciate,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HeyQues,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WhatsUpQues,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HuhQues,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_No,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hi,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_YeahYeah,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ByeBye,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_MeetYou,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hey,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Smell,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Listening,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HooHah,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yahoo,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yo,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ComeOver,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_CountOn,
        .alphabeticalOrder = 39,
        .enabled = 1
    }
};
# 8 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_people.h" 1

static const u8 sEasyChatWord_Opponent[] = _("OPPONENT");
static const u8 sEasyChatWord_I[] = _("I");
static const u8 sEasyChatWord_You[] = _("YOU");
static const u8 sEasyChatWord_Yours[] = _("YOURS");
static const u8 sEasyChatWord_Son[] = _("SON");
static const u8 sEasyChatWord_Your[] = _("YOUR");
static const u8 sEasyChatWord_Youre[] = _("YOU'RE");
static const u8 sEasyChatWord_Youve[] = _("YOU'VE");
static const u8 sEasyChatWord_Mother[] = _("MOTHER");
static const u8 sEasyChatWord_Grandfather[] = _("GRANDFATHER");
static const u8 sEasyChatWord_Uncle[] = _("UNCLE");
static const u8 sEasyChatWord_Father[] = _("FATHER");
static const u8 sEasyChatWord_Boy[] = _("BOY");
static const u8 sEasyChatWord_Adult[] = _("ADULT");
static const u8 sEasyChatWord_Brother[] = _("BROTHER");
static const u8 sEasyChatWord_Sister[] = _("SISTER");
static const u8 sEasyChatWord_Grandmother[] = _("GRANDMOTHER");
static const u8 sEasyChatWord_Aunt[] = _("AUNT");
static const u8 sEasyChatWord_Parent[] = _("PARENT");
static const u8 sEasyChatWord_Man[] = _("MAN");
static const u8 sEasyChatWord_Me[] = _("ME");
static const u8 sEasyChatWord_Girl[] = _("GIRL");
static const u8 sEasyChatWord_Babe[] = _("BABE");
static const u8 sEasyChatWord_Family[] = _("FAMILY");
static const u8 sEasyChatWord_Her[] = _("HER");
static const u8 sEasyChatWord_Him[] = _("HIM");
static const u8 sEasyChatWord_He[] = _("HE");
static const u8 sEasyChatWord_Place[] = _("PLACE");
static const u8 sEasyChatWord_Daughter[] = _("DAUGHTER");
static const u8 sEasyChatWord_His[] = _("HIS");
static const u8 sEasyChatWord_Hes[] = _("HE'S");
static const u8 sEasyChatWord_Arent[] = _("AREN'T");
static const u8 sEasyChatWord_Siblings[] = _("SIBLINGS");
static const u8 sEasyChatWord_Kid[] = _("KID");
static const u8 sEasyChatWord_Children[] = _("CHILDREN");
static const u8 sEasyChatWord_Mr[] = _("MR.");
static const u8 sEasyChatWord_Mrs[] = _("MRS.");
static const u8 sEasyChatWord_Myself[] = _("MYSELF");
static const u8 sEasyChatWord_IWas[] = _("I WAS");
static const u8 sEasyChatWord_ToMe[] = _("TO ME");
static const u8 sEasyChatWord_My[] = _("MY");
static const u8 sEasyChatWord_IAm[] = _("I AM");
static const u8 sEasyChatWord_Ive[] = _("I'VE");
static const u8 sEasyChatWord_Who[] = _("WHO");
static const u8 sEasyChatWord_Someone[] = _("SOMEONE");
static const u8 sEasyChatWord_WhoWas[] = _("WHO WAS");
static const u8 sEasyChatWord_ToWhom[] = _("TO WHOM");
static const u8 sEasyChatWord_Whose[] = _("WHOSE");
static const u8 sEasyChatWord_WhoIs[] = _("WHO IS");
static const u8 sEasyChatWord_Its[] = _("IT'S");
static const u8 sEasyChatWord_Lady[] = _("LADY");
static const u8 sEasyChatWord_Friend[] = _("FRIEND");
static const u8 sEasyChatWord_Ally[] = _("ALLY");
static const u8 sEasyChatWord_Person[] = _("PERSON");
static const u8 sEasyChatWord_Dude[] = _("DUDE");
static const u8 sEasyChatWord_They[] = _("THEY");
static const u8 sEasyChatWord_TheyWere[] = _("THEY WERE");
static const u8 sEasyChatWord_ToThem[] = _("TO THEM");
static const u8 sEasyChatWord_Their[] = _("THEIR");
static const u8 sEasyChatWord_Theyre[] = _("THEY'RE");
static const u8 sEasyChatWord_Theyve[] = _("THEY'VE");
static const u8 sEasyChatWord_We[] = _("WE");
static const u8 sEasyChatWord_Been[] = _("BEEN");
static const u8 sEasyChatWord_ToUs[] = _("TO US");
static const u8 sEasyChatWord_Our[] = _("OUR");
static const u8 sEasyChatWord_WeAre[] = _("WE'RE");
static const u8 sEasyChatWord_Rival[] = _("RIVAL");
static const u8 sEasyChatWord_Weve[] = _("WE'VE");
static const u8 sEasyChatWord_Woman[] = _("WOMAN");
static const u8 sEasyChatWord_She[] = _("SHE");
static const u8 sEasyChatWord_SheWas[] = _("SHE WAS");
static const u8 sEasyChatWord_ToHer[] = _("TO HER");
static const u8 sEasyChatWord_Hers[] = _("HERS");
static const u8 sEasyChatWord_SheIs[] = _("SHE IS");
static const u8 sEasyChatWord_Some[] = _("SOME");

static const struct EasyChatWordInfo sEasyChatGroup_People[] = {
    {
        .text = sEasyChatWord_Opponent,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_I,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_You,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yours,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Son,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Your,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Youre,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Youve,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mother,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Grandfather,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Uncle,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Father,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Boy,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Adult,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Brother,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sister,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Grandmother,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Aunt,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Parent,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Man,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Me,
        .alphabeticalOrder = 72,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Girl,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Babe,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Family,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Her,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Him,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_He,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Place,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Daughter,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_His,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hes,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Arent,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Siblings,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Kid,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Children,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mr,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mrs,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Myself,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_IWas,
        .alphabeticalOrder = 64,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ToMe,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_My,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_IAm,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ive,
        .alphabeticalOrder = 66,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Who,
        .alphabeticalOrder = 69,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Someone,
        .alphabeticalOrder = 73,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WhoWas,
        .alphabeticalOrder = 70,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ToWhom,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Whose,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WhoIs,
        .alphabeticalOrder = 74,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Its,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lady,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Friend,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ally,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Person,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dude,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_They,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_TheyWere,
        .alphabeticalOrder = 71,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ToThem,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Their,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Theyre,
        .alphabeticalOrder = 63,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Theyve,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_We,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Been,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ToUs,
        .alphabeticalOrder = 65,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Our,
        .alphabeticalOrder = 67,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WeAre,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rival,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Weve,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Woman,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_She,
        .alphabeticalOrder = 68,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SheWas,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ToHer,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hers,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SheIs,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Some,
        .alphabeticalOrder = 3,
        .enabled = 1
    }
};
# 9 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_voices.h" 1

static const u8 sEasyChatWord_Excl[] = _("!");
static const u8 sEasyChatWord_ExclExcl[] = _("!!");
static const u8 sEasyChatWord_QuesExcl[] = _("?!");
static const u8 sEasyChatWord_Ques[] = _("?");
static const u8 sEasyChatWord_Ellipsis[] = _("…");
static const u8 sEasyChatWord_EllipsisExcl[] = _("…!");
static const u8 sEasyChatWord_EllipsisEllipsisEllipsis[] = _("………");
static const u8 sEasyChatWord_Dash[] = _("-");
static const u8 sEasyChatWord_DashDashDash[] = _("- - -");
static const u8 sEasyChatWord_UhOh[] = _("UH-OH");
static const u8 sEasyChatWord_Waaah[] = _("WAAAH");
static const u8 sEasyChatWord_Ahaha[] = _("AHAHA");
static const u8 sEasyChatWord_OhQues[] = _("OH?");
static const u8 sEasyChatWord_Nope[] = _("NOPE");
static const u8 sEasyChatWord_Urgh[] = _("URGH");
static const u8 sEasyChatWord_Hmm[] = _("HMM");
static const u8 sEasyChatWord_Whoah[] = _("WHOAH");
static const u8 sEasyChatWord_WroooaarExcl[] = _("WROOOAAR!");
static const u8 sEasyChatWord_Wow[] = _("WOW");
static const u8 sEasyChatWord_Giggle[] = _("GIGGLE");
static const u8 sEasyChatWord_Sigh[] = _("SIGH");
static const u8 sEasyChatWord_Unbelievable[] = _("UNBELIEVABLE");
static const u8 sEasyChatWord_Cries[] = _("CRIES");
static const u8 sEasyChatWord_Agree[] = _("AGREE");
static const u8 sEasyChatWord_EhQues[] = _("EH?");
static const u8 sEasyChatWord_Cry[] = _("CRY");
static const u8 sEasyChatWord_Ehehe[] = _("EHEHE");
static const u8 sEasyChatWord_OiOiOi[] = _("OI, OI, OI");
static const u8 sEasyChatWord_OhYeah[] = _("OH, YEAH");
static const u8 sEasyChatWord_Oh[] = _("OH");
static const u8 sEasyChatWord_Oops[] = _("OOPS");
static const u8 sEasyChatWord_Shocked[] = _("SHOCKED");
static const u8 sEasyChatWord_Eek[] = _("EEK");
static const u8 sEasyChatWord_Graaah[] = _("GRAAAH");
static const u8 sEasyChatWord_Gwahahaha[] = _("GWAHAHAHA");
static const u8 sEasyChatWord_Way[] = _("WAY");
static const u8 sEasyChatWord_Tch[] = _("TCH");
static const u8 sEasyChatWord_Hehe[] = _("HEHE");
static const u8 sEasyChatWord_Hah[] = _("HAH");
static const u8 sEasyChatWord_Yup[] = _("YUP");
static const u8 sEasyChatWord_Hahaha[] = _("HAHAHA");
static const u8 sEasyChatWord_Aiyeeh[] = _("AIYEEH");
static const u8 sEasyChatWord_Hiyah[] = _("HIYAH");
static const u8 sEasyChatWord_Fufufu[] = _("FUFUFU");
static const u8 sEasyChatWord_Lol[] = _("LOL");
static const u8 sEasyChatWord_Snort[] = _("SNORT");
static const u8 sEasyChatWord_Humph[] = _("HUMPH");
static const u8 sEasyChatWord_Hehehe[] = _("HEHEHE");
static const u8 sEasyChatWord_Heh[] = _("HEH");
static const u8 sEasyChatWord_Hohoho[] = _("HOHOHO");
static const u8 sEasyChatWord_UhHuh[] = _("UH-HUH");
static const u8 sEasyChatWord_OhDear[] = _("OH, DEAR");
static const u8 sEasyChatWord_Arrgh[] = _("ARRGH");
static const u8 sEasyChatWord_Mufufu[] = _("MUFUFU");
static const u8 sEasyChatWord_Mmm[] = _("MMM");
static const u8 sEasyChatWord_OhKay[] = _("OH-KAY");
static const u8 sEasyChatWord_Okay[] = _("OKAY");
static const u8 sEasyChatWord_Lalala[] = _("LALALA");
static const u8 sEasyChatWord_Yay[] = _("YAY");
static const u8 sEasyChatWord_Aww[] = _("AWW");
static const u8 sEasyChatWord_Wowee[] = _("WOWEE");
static const u8 sEasyChatWord_Gwah[] = _("GWAH");
static const u8 sEasyChatWord_Wahahaha[] = _("WAHAHAHA");

static const struct EasyChatWordInfo sEasyChatGroup_Voices[] = {
    {
        .text = sEasyChatWord_Excl,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ExclExcl,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_QuesExcl,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ques,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ellipsis,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_EllipsisExcl,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_EllipsisEllipsisEllipsis,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dash,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_DashDashDash,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_UhOh,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Waaah,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ahaha,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_OhQues,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nope,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Urgh,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hmm,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Whoah,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WroooaarExcl,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wow,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Giggle,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sigh,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Unbelievable,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cries,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Agree,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_EhQues,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cry,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ehehe,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_OiOiOi,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_OhYeah,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Oh,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Oops,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Shocked,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Eek,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Graaah,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gwahahaha,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Way,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tch,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hehe,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hah,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yup,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hahaha,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Aiyeeh,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hiyah,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fufufu,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lol,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Snort,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Humph,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hehehe,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Heh,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hohoho,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_UhHuh,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_OhDear,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Arrgh,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mufufu,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mmm,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_OhKay,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Okay,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lalala,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yay,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Aww,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wowee,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gwah,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wahahaha,
        .alphabeticalOrder = 39,
        .enabled = 1
    }
};
# 10 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_speech.h" 1

static const u8 sEasyChatWord_Listen[] = _("LISTEN");
static const u8 sEasyChatWord_NotVery[] = _("NOT VERY");
static const u8 sEasyChatWord_Mean[] = _("MEAN");
static const u8 sEasyChatWord_Lie[] = _("LIE");
static const u8 sEasyChatWord_Lay[] = _("LAY");
static const u8 sEasyChatWord_Recommend[] = _("RECOMMEND");
static const u8 sEasyChatWord_Nitwit[] = _("NITWIT");
static const u8 sEasyChatWord_Quite[] = _("QUITE");
static const u8 sEasyChatWord_From[] = _("FROM");
static const u8 sEasyChatWord_Feeling[] = _("FEELING");
static const u8 sEasyChatWord_But[] = _("BUT");
static const u8 sEasyChatWord_However[] = _("HOWEVER");
static const u8 sEasyChatWord_Case[] = _("CASE");
static const u8 sEasyChatWord_The[] = _("THE");
static const u8 sEasyChatWord_Miss[] = _("MISS");
static const u8 sEasyChatWord_How[] = _("HOW");
static const u8 sEasyChatWord_Hit[] = _("HIT");
static const u8 sEasyChatWord_Enough[] = _("ENOUGH");
static const u8 sEasyChatWord_ALot[] = _("A LOT");
static const u8 sEasyChatWord_ALittle[] = _("A LITTLE");
static const u8 sEasyChatWord_Absolutely[] = _("ABSOLUTELY");
static const u8 sEasyChatWord_And[] = _("AND");
static const u8 sEasyChatWord_Only[] = _("ONLY");
static const u8 sEasyChatWord_Around[] = _("AROUND");
static const u8 sEasyChatWord_Probably[] = _("PROBABLY");
static const u8 sEasyChatWord_If[] = _("IF");
static const u8 sEasyChatWord_Very[] = _("VERY");
static const u8 sEasyChatWord_ATinyBit[] = _("A TINY BIT");
static const u8 sEasyChatWord_Wild[] = _("WILD");
static const u8 sEasyChatWord_Thats[] = _("THAT'S");
static const u8 sEasyChatWord_Just[] = _("JUST");
static const u8 sEasyChatWord_EvenSo[] = _("EVEN SO,");
static const u8 sEasyChatWord_MustBe[] = _("MUST BE");
static const u8 sEasyChatWord_Naturally[] = _("NATURALLY");
static const u8 sEasyChatWord_ForNow[] = _("FOR NOW,");
static const u8 sEasyChatWord_Understood[] = _("UNDERSTOOD");
static const u8 sEasyChatWord_Joking[] = _("JOKING");
static const u8 sEasyChatWord_Ready[] = _("READY");
static const u8 sEasyChatWord_Something[] = _("SOMETHING");
static const u8 sEasyChatWord_Somehow[] = _("SOMEHOW");
static const u8 sEasyChatWord_Although[] = _("ALTHOUGH");
static const u8 sEasyChatWord_Also[] = _("ALSO");
static const u8 sEasyChatWord_Perfect[] = _("PERFECT");
static const u8 sEasyChatWord_AsMuchAs[] = _("AS MUCH AS");
static const u8 sEasyChatWord_Really[] = _("REALLY");
static const u8 sEasyChatWord_Truly[] = _("TRULY");
static const u8 sEasyChatWord_Seriously[] = _("SERIOUSLY");
static const u8 sEasyChatWord_Totally[] = _("TOTALLY");
static const u8 sEasyChatWord_Until[] = _("UNTIL");
static const u8 sEasyChatWord_AsIf[] = _("AS IF");
static const u8 sEasyChatWord_Mood[] = _("MOOD");
static const u8 sEasyChatWord_Rather[] = _("RATHER");
static const u8 sEasyChatWord_Awfully[] = _("AWFULLY");
static const u8 sEasyChatWord_Mode[] = _("MODE");
static const u8 sEasyChatWord_More[] = _("MORE");
static const u8 sEasyChatWord_TooLate[] = _("TOO LATE");
static const u8 sEasyChatWord_Finally[] = _("FINALLY");
static const u8 sEasyChatWord_Any[] = _("ANY");
static const u8 sEasyChatWord_Instead[] = _("INSTEAD");
static const u8 sEasyChatWord_Fantastic[] = _("FANTASTIC");

static const struct EasyChatWordInfo sEasyChatGroup_Speech[] = {
    {
        .text = sEasyChatWord_Listen,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_NotVery,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mean,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lie,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lay,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Recommend,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nitwit,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Quite,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_From,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Feeling,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_But,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_However,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Case,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_The,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Miss,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_How,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hit,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Enough,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ALot,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ALittle,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Absolutely,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_And,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Only,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Around,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Probably,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_If,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Very,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ATinyBit,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wild,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Thats,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Just,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_EvenSo,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_MustBe,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Naturally,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ForNow,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Understood,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Joking,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ready,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Something,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Somehow,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Although,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Also,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Perfect,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_AsMuchAs,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Really,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Truly,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Seriously,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Totally,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Until,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_AsIf,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mood,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rather,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Awfully,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mode,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_More,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_TooLate,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Finally,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Any,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Instead,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fantastic,
        .alphabeticalOrder = 28,
        .enabled = 1
    }
};
# 11 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_endings.h" 1

static const u8 sEasyChatWord_Will[] = _("WILL");
static const u8 sEasyChatWord_WillBeHere[] = _("WILL BE HERE");
static const u8 sEasyChatWord_Or[] = _("OR");
static const u8 sEasyChatWord_Times[] = _("TIMES");
static const u8 sEasyChatWord_Wonder[] = _("WONDER");
static const u8 sEasyChatWord_IsItQues[] = _("IS IT?");
static const u8 sEasyChatWord_Be[] = _("BE");
static const u8 sEasyChatWord_Gimme[] = _("GIMME");
static const u8 sEasyChatWord_Could[] = _("COULD");
static const u8 sEasyChatWord_LikelyTo[] = _("LIKELY TO");
static const u8 sEasyChatWord_Would[] = _("WOULD");
static const u8 sEasyChatWord_Is[] = _("IS");
static const u8 sEasyChatWord_IsntItQues[] = _("ISN'T IT?");
static const u8 sEasyChatWord_Lets[] = _("LET'S");
static const u8 sEasyChatWord_Other[] = _("OTHER");
static const u8 sEasyChatWord_Are[] = _("ARE");
static const u8 sEasyChatWord_Was[] = _("WAS");
static const u8 sEasyChatWord_Were[] = _("WERE");
static const u8 sEasyChatWord_Those[] = _("THOSE");
static const u8 sEasyChatWord_Isnt[] = _("ISN'T");
static const u8 sEasyChatWord_Wont[] = _("WON'T");
static const u8 sEasyChatWord_Cant[] = _("CAN'T");
static const u8 sEasyChatWord_Can[] = _("CAN");
static const u8 sEasyChatWord_Dont[] = _("DON'T");
static const u8 sEasyChatWord_Do[] = _("DO");
static const u8 sEasyChatWord_Does[] = _("DOES");
static const u8 sEasyChatWord_Whom[] = _("WHOM");
static const u8 sEasyChatWord_Which[] = _("WHICH");
static const u8 sEasyChatWord_Wasnt[] = _("WASN'T");
static const u8 sEasyChatWord_Werent[] = _("WEREN'T");
static const u8 sEasyChatWord_Have[] = _("HAVE");
static const u8 sEasyChatWord_Havent[] = _("HAVEN'T");
static const u8 sEasyChatWord_A[] = _("A");
static const u8 sEasyChatWord_An[] = _("AN");
static const u8 sEasyChatWord_Not[] = _("NOT");
static const u8 sEasyChatWord_There[] = _("THERE");
static const u8 sEasyChatWord_OkQues[] = _("OK?");
static const u8 sEasyChatWord_So[] = _("SO");
static const u8 sEasyChatWord_Maybe[] = _("MAYBE");
static const u8 sEasyChatWord_About[] = _("ABOUT");
static const u8 sEasyChatWord_Over[] = _("OVER");
static const u8 sEasyChatWord_It[] = _("IT");
static const u8 sEasyChatWord_All[] = _("ALL");
static const u8 sEasyChatWord_For[] = _("FOR");
static const u8 sEasyChatWord_On[] = _("ON");
static const u8 sEasyChatWord_Off[] = _("OFF");
static const u8 sEasyChatWord_As[] = _("AS");
static const u8 sEasyChatWord_To[] = _("TO");
static const u8 sEasyChatWord_With[] = _("WITH");
static const u8 sEasyChatWord_Better[] = _("BETTER");
static const u8 sEasyChatWord_Ever[] = _("EVER");
static const u8 sEasyChatWord_Since[] = _("SINCE");
static const u8 sEasyChatWord_Of[] = _("OF");
static const u8 sEasyChatWord_BelongsTo[] = _("BELONGS TO");
static const u8 sEasyChatWord_At[] = _("AT");
static const u8 sEasyChatWord_In[] = _("IN");
static const u8 sEasyChatWord_Out[] = _("OUT");
static const u8 sEasyChatWord_Too[] = _("TOO");
static const u8 sEasyChatWord_Like[] = _("LIKE");
static const u8 sEasyChatWord_Did[] = _("DID");
static const u8 sEasyChatWord_Didnt[] = _("DIDN'T");
static const u8 sEasyChatWord_Doesnt[] = _("DOESN'T");
static const u8 sEasyChatWord_Without[] = _("WITHOUT");
static const u8 sEasyChatWord_After[] = _("AFTER");
static const u8 sEasyChatWord_Before[] = _("BEFORE");
static const u8 sEasyChatWord_While[] = _("WHILE");
static const u8 sEasyChatWord_Than[] = _("THAN");
static const u8 sEasyChatWord_Once[] = _("ONCE");
static const u8 sEasyChatWord_Anywhere[] = _("ANYWHERE");

static const struct EasyChatWordInfo sEasyChatGroup_Endings[] = {
    {
        .text = sEasyChatWord_Will,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WillBeHere,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Or,
        .alphabeticalOrder = 63,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Times,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wonder,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_IsItQues,
        .alphabeticalOrder = 68,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Be,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gimme,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Could,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_LikelyTo,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Would,
        .alphabeticalOrder = 64,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Is,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_IsntItQues,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lets,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Other,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Are,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Was,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Were,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Those,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Isnt,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wont,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cant,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Can,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dont,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Do,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Does,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Whom,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Which,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wasnt,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Werent,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Have,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Havent,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_A,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_An,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Not,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_There,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_OkQues,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_So,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Maybe,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_About,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Over,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_It,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_All,
        .alphabeticalOrder = 67,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_For,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_On,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Off,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_As,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_To,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_With,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Better,
        .alphabeticalOrder = 66,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ever,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Since,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Of,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_BelongsTo,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_At,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_In,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Out,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Too,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Like,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Did,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Didnt,
        .alphabeticalOrder = 65,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Doesnt,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Without,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_After,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Before,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_While,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Than,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Once,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Anywhere,
        .alphabeticalOrder = 10,
        .enabled = 1
    }
};
# 12 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_feelings.h" 1

static const u8 sEasyChatWord_Meet[] = _("MEET");
static const u8 sEasyChatWord_Play[] = _("PLAY");
static const u8 sEasyChatWord_Hurried[] = _("HURRIED");
static const u8 sEasyChatWord_Goes[] = _("GOES");
static const u8 sEasyChatWord_Giddy[] = _("GIDDY");
static const u8 sEasyChatWord_Happy[] = _("HAPPY");
static const u8 sEasyChatWord_Happiness[] = _("HAPPINESS");
static const u8 sEasyChatWord_Excite[] = _("EXCITE");
static const u8 sEasyChatWord_Important[] = _("IMPORTANT");
static const u8 sEasyChatWord_Funny[] = _("FUNNY");
static const u8 sEasyChatWord_Got[] = _("GOT");
static const u8 sEasyChatWord_GoHome[] = _("GO HOME");
static const u8 sEasyChatWord_Disappointed[] = _("DISAPPOINTED");
static const u8 sEasyChatWord_Disappoints[] = _("DISAPPOINTS");
static const u8 sEasyChatWord_Sad[] = _("SAD");
static const u8 sEasyChatWord_Try[] = _("TRY");
static const u8 sEasyChatWord_Tries[] = _("TRIES");
static const u8 sEasyChatWord_Hears[] = _("HEARS");
static const u8 sEasyChatWord_Think[] = _("THINK");
static const u8 sEasyChatWord_Hear[] = _("HEAR");
static const u8 sEasyChatWord_Wants[] = _("WANTS");
static const u8 sEasyChatWord_Misheard[] = _("MISHEARD");
static const u8 sEasyChatWord_Dislike[] = _("DISLIKE");
static const u8 sEasyChatWord_Angry[] = _("ANGRY");
static const u8 sEasyChatWord_Anger[] = _("ANGER");
static const u8 sEasyChatWord_Scary[] = _("SCARY");
static const u8 sEasyChatWord_Lonesome[] = _("LONESOME");
static const u8 sEasyChatWord_Disappoint[] = _("DISAPPOINT");
static const u8 sEasyChatWord_Joy[] = _("JOY");
static const u8 sEasyChatWord_Gets[] = _("GETS");
static const u8 sEasyChatWord_Never[] = _("NEVER");
static const u8 sEasyChatWord_Darn[] = _("DARN");
static const u8 sEasyChatWord_Downcast[] = _("DOWNCAST");
static const u8 sEasyChatWord_Incredible[] = _("INCREDIBLE");
static const u8 sEasyChatWord_Likes[] = _("LIKES");
static const u8 sEasyChatWord_Dislikes[] = _("DISLIKES");
static const u8 sEasyChatWord_Boring[] = _("BORING");
static const u8 sEasyChatWord_Care[] = _("CARE");
static const u8 sEasyChatWord_Cares[] = _("CARES");
static const u8 sEasyChatWord_AllRight[] = _("ALL RIGHT");
static const u8 sEasyChatWord_Adore[] = _("ADORE");
static const u8 sEasyChatWord_Disaster[] = _("DISASTER");
static const u8 sEasyChatWord_Enjoy[] = _("ENJOY");
static const u8 sEasyChatWord_Enjoys[] = _("ENJOYS");
static const u8 sEasyChatWord_Eat[] = _("EAT");
static const u8 sEasyChatWord_Lacking[] = _("LACKING");
static const u8 sEasyChatWord_Bad[] = _("BAD");
static const u8 sEasyChatWord_Hard[] = _("HARD");
static const u8 sEasyChatWord_Terrible[] = _("TERRIBLE");
static const u8 sEasyChatWord_Should[] = _("SHOULD");
static const u8 sEasyChatWord_Nice[] = _("NICE");
static const u8 sEasyChatWord_Drink[] = _("DRINK");
static const u8 sEasyChatWord_Surprise[] = _("SURPRISE");
static const u8 sEasyChatWord_Fear[] = _("FEAR");
static const u8 sEasyChatWord_Want[] = _("WANT");
static const u8 sEasyChatWord_Wait[] = _("WAIT");
static const u8 sEasyChatWord_Satisfied[] = _("SATISFIED");
static const u8 sEasyChatWord_See[] = _("SEE");
static const u8 sEasyChatWord_Rare[] = _("RARE");
static const u8 sEasyChatWord_Negative[] = _("NEGATIVE");
static const u8 sEasyChatWord_Done[] = _("DONE");
static const u8 sEasyChatWord_Danger[] = _("DANGER");
static const u8 sEasyChatWord_Defeated[] = _("DEFEATED");
static const u8 sEasyChatWord_Beat[] = _("BEAT");
static const u8 sEasyChatWord_Great[] = _("GREAT");
static const u8 sEasyChatWord_Romantic[] = _("ROMANTIC");
static const u8 sEasyChatWord_Question[] = _("QUESTION");
static const u8 sEasyChatWord_Understand[] = _("UNDERSTAND");
static const u8 sEasyChatWord_Understands[] = _("UNDERSTANDS");

static const struct EasyChatWordInfo sEasyChatGroup_Feelings[] = {
    {
        .text = sEasyChatWord_Meet,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Play,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hurried,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Goes,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Giddy,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Happy,
        .alphabeticalOrder = 63,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Happiness,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Excite,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Important,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Funny,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Got,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_GoHome,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Disappointed,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Disappoints,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sad,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Try,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tries,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hears,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Think,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hear,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wants,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Misheard,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dislike,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Angry,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Anger,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Scary,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lonesome,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Disappoint,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Joy,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gets,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Never,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Darn,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Downcast,
        .alphabeticalOrder = 64,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Incredible,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Likes,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dislikes,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Boring,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Care,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cares,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_AllRight,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Adore,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Disaster,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Enjoy,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Enjoys,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Eat,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lacking,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Bad,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hard,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Terrible,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Should,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nice,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Drink,
        .alphabeticalOrder = 66,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Surprise,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fear,
        .alphabeticalOrder = 65,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Want,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wait,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Satisfied,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_See,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rare,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Negative,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Done,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Danger,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Defeated,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Beat,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Great,
        .alphabeticalOrder = 67,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Romantic,
        .alphabeticalOrder = 68,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Question,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Understand,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Understands,
        .alphabeticalOrder = 20,
        .enabled = 1
    }
};
# 13 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_conditions.h" 1

static const u8 sEasyChatWord_Hot[] = _("HOT");
static const u8 sEasyChatWord_Exists[] = _("EXISTS");
static const u8 sEasyChatWord_Excess[] = _("EXCESS");
static const u8 sEasyChatWord_Approved[] = _("APPROVED");
static const u8 sEasyChatWord_Has[] = _("HAS");
static const u8 sEasyChatWord_Good[] = _("GOOD");
static const u8 sEasyChatWord_Less[] = _("LESS");
static const u8 sEasyChatWord_Momentum[] = _("MOMENTUM");
static const u8 sEasyChatWord_Going[] = _("GOING");
static const u8 sEasyChatWord_Weird[] = _("WEIRD");
static const u8 sEasyChatWord_Busy[] = _("BUSY");
static const u8 sEasyChatWord_Together[] = _("TOGETHER");
static const u8 sEasyChatWord_Full[] = _("FULL");
static const u8 sEasyChatWord_Absent[] = _("ABSENT");
static const u8 sEasyChatWord_Being[] = _("BEING");
static const u8 sEasyChatWord_Need[] = _("NEED");
static const u8 sEasyChatWord_Tasty[] = _("TASTY");
static const u8 sEasyChatWord_Skilled[] = _("SKILLED");
static const u8 sEasyChatWord_Noisy[] = _("NOISY");
static const u8 sEasyChatWord_Big[] = _("BIG");
static const u8 sEasyChatWord_Late[] = _("LATE");
static const u8 sEasyChatWord_Close[] = _("CLOSE");
static const u8 sEasyChatWord_Docile[] = _("DOCILE");
static const u8 sEasyChatWord_Amusing[] = _("AMUSING");
static const u8 sEasyChatWord_Entertaining[] = _("ENTERTAINING");
static const u8 sEasyChatWord_Perfection[] = _("PERFECTION");
static const u8 sEasyChatWord_Pretty[] = _("PRETTY");
static const u8 sEasyChatWord_Healthy[] = _("HEALTHY");
static const u8 sEasyChatWord_Excellent[] = _("EXCELLENT");
static const u8 sEasyChatWord_UpsideDown[] = _("UPSIDE DOWN");
static const u8 sEasyChatWord_Cold[] = _("COLD");
static const u8 sEasyChatWord_Refreshing[] = _("REFRESHING");
static const u8 sEasyChatWord_Unavoidable[] = _("UNAVOIDABLE");
static const u8 sEasyChatWord_Much[] = _("MUCH");
static const u8 sEasyChatWord_Overwhelming[] = _("OVERWHELMING");
static const u8 sEasyChatWord_Fabulous[] = _("FABULOUS");
static const u8 sEasyChatWord_Else[] = _("ELSE");
static const u8 sEasyChatWord_Expensive[] = _("EXPENSIVE");
static const u8 sEasyChatWord_Correct[] = _("CORRECT");
static const u8 sEasyChatWord_Impossible[] = _("IMPOSSIBLE");
static const u8 sEasyChatWord_Small[] = _("SMALL");
static const u8 sEasyChatWord_Different[] = _("DIFFERENT");
static const u8 sEasyChatWord_Tired[] = _("TIRED");
static const u8 sEasyChatWord_Skill[] = _("SKILL");
static const u8 sEasyChatWord_Top[] = _("TOP");
static const u8 sEasyChatWord_NonStop[] = _("NON-STOP");
static const u8 sEasyChatWord_Preposterous[] = _("PREPOSTEROUS");
static const u8 sEasyChatWord_None[] = _("NONE");
static const u8 sEasyChatWord_Nothing[] = _("NOTHING");
static const u8 sEasyChatWord_Natural[] = _("NATURAL");
static const u8 sEasyChatWord_Becomes[] = _("BECOMES");
static const u8 sEasyChatWord_Lukewarm[] = _("LUKEWARM");
static const u8 sEasyChatWord_Fast[] = _("FAST");
static const u8 sEasyChatWord_Low[] = _("LOW");
static const u8 sEasyChatWord_Awful[] = _("AWFUL");
static const u8 sEasyChatWord_Alone[] = _("ALONE");
static const u8 sEasyChatWord_Bored[] = _("BORED");
static const u8 sEasyChatWord_Secret[] = _("SECRET");
static const u8 sEasyChatWord_Mystery[] = _("MYSTERY");
static const u8 sEasyChatWord_Lacks[] = _("LACKS");
static const u8 sEasyChatWord_Best[] = _("BEST");
static const u8 sEasyChatWord_Lousy[] = _("LOUSY");
static const u8 sEasyChatWord_Mistake[] = _("MISTAKE");
static const u8 sEasyChatWord_Kind[] = _("KIND");
static const u8 sEasyChatWord_Well[] = _("WELL");
static const u8 sEasyChatWord_Weakened[] = _("WEAKENED");
static const u8 sEasyChatWord_Simple[] = _("SIMPLE");
static const u8 sEasyChatWord_Seems[] = _("SEEMS");
static const u8 sEasyChatWord_Badly[] = _("BADLY");

static const struct EasyChatWordInfo sEasyChatGroup_Conditions[] = {
    {
        .text = sEasyChatWord_Hot,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Exists,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Excess,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Approved,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Has,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Good,
        .alphabeticalOrder = 68,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Less,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Momentum,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Going,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Weird,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Busy,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Together,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Full,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Absent,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Being,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Need,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tasty,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Skilled,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Noisy,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Big,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Late,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Close,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Docile,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Amusing,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Entertaining,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Perfection,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pretty,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Healthy,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Excellent,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_UpsideDown,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cold,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Refreshing,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Unavoidable,
        .alphabeticalOrder = 63,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Much,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Overwhelming,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fabulous,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Else,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Expensive,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Correct,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Impossible,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Small,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Different,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tired,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Skill,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Top,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_NonStop,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Preposterous,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_None,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nothing,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Natural,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Becomes,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lukewarm,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fast,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Low,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Awful,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Alone,
        .alphabeticalOrder = 67,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Bored,
        .alphabeticalOrder = 66,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Secret,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mystery,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lacks,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Best,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lousy,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mistake,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Kind,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Well,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Weakened,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Simple,
        .alphabeticalOrder = 65,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Seems,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Badly,
        .alphabeticalOrder = 64,
        .enabled = 1
    }
};
# 14 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_actions.h" 1

static const u8 sEasyChatWord_Meets[] = _("MEETS");
static const u8 sEasyChatWord_Concede[] = _("CONCEDE");
static const u8 sEasyChatWord_Give[] = _("GIVE");
static const u8 sEasyChatWord_Gives[] = _("GIVES");
static const u8 sEasyChatWord_Played[] = _("PLAYED");
static const u8 sEasyChatWord_Plays[] = _("PLAYS");
static const u8 sEasyChatWord_Collect[] = _("COLLECT");
static const u8 sEasyChatWord_Walking[] = _("WALKING");
static const u8 sEasyChatWord_Walks[] = _("WALKS");
static const u8 sEasyChatWord_Says[] = _("SAYS");
static const u8 sEasyChatWord_Went[] = _("WENT");
static const u8 sEasyChatWord_Said[] = _("SAID");
static const u8 sEasyChatWord_WakeUp[] = _("WAKE UP");
static const u8 sEasyChatWord_WakesUp[] = _("WAKES UP");
static const u8 sEasyChatWord_Angers[] = _("ANGERS");
static const u8 sEasyChatWord_Teach[] = _("TEACH");
static const u8 sEasyChatWord_Teaches[] = _("TEACHES");
static const u8 sEasyChatWord_Please[] = _("PLEASE");
static const u8 sEasyChatWord_Learn[] = _("LEARN");
static const u8 sEasyChatWord_Change[] = _("CHANGE");
static const u8 sEasyChatWord_Story[] = _("STORY");
static const u8 sEasyChatWord_Trust[] = _("TRUST");
static const u8 sEasyChatWord_Lavish[] = _("LAVISH");
static const u8 sEasyChatWord_Listens[] = _("LISTENS");
static const u8 sEasyChatWord_Hearing[] = _("HEARING");
static const u8 sEasyChatWord_Trains[] = _("TRAINS");
static const u8 sEasyChatWord_Choose[] = _("CHOOSE");
static const u8 sEasyChatWord_Come[] = _("COME");
static const u8 sEasyChatWord_Came[] = _("CAME");
static const u8 sEasyChatWord_Search[] = _("SEARCH");
static const u8 sEasyChatWord_Make[] = _("MAKE");
static const u8 sEasyChatWord_Cause[] = _("CAUSE");
static const u8 sEasyChatWord_Know[] = _("KNOW");
static const u8 sEasyChatWord_Knows[] = _("KNOWS");
static const u8 sEasyChatWord_Refuse[] = _("REFUSE");
static const u8 sEasyChatWord_Stores[] = _("STORES");
static const u8 sEasyChatWord_Brag[] = _("BRAG");
static const u8 sEasyChatWord_Ignorant[] = _("IGNORANT");
static const u8 sEasyChatWord_Thinks[] = _("THINKS");
static const u8 sEasyChatWord_Believe[] = _("BELIEVE");
static const u8 sEasyChatWord_Slide[] = _("SLIDE");
static const u8 sEasyChatWord_Eats[] = _("EATS");
static const u8 sEasyChatWord_Use[] = _("USE");
static const u8 sEasyChatWord_Uses[] = _("USES");
static const u8 sEasyChatWord_Using[] = _("USING");
static const u8 sEasyChatWord_Couldnt[] = _("COULDN'T");
static const u8 sEasyChatWord_Capable[] = _("CAPABLE");
static const u8 sEasyChatWord_Disappear[] = _("DISAPPEAR");
static const u8 sEasyChatWord_Appear[] = _("APPEAR");
static const u8 sEasyChatWord_Throw[] = _("THROW");
static const u8 sEasyChatWord_Worry[] = _("WORRY");
static const u8 sEasyChatWord_Slept[] = _("SLEPT");
static const u8 sEasyChatWord_Sleep[] = _("SLEEP");
static const u8 sEasyChatWord_Release[] = _("RELEASE");
static const u8 sEasyChatWord_Drinks[] = _("DRINKS");
static const u8 sEasyChatWord_Runs[] = _("RUNS");
static const u8 sEasyChatWord_Run[] = _("RUN");
static const u8 sEasyChatWord_Works[] = _("WORKS");
static const u8 sEasyChatWord_Working[] = _("WORKING");
static const u8 sEasyChatWord_Talking[] = _("TALKING");
static const u8 sEasyChatWord_Talk[] = _("TALK");
static const u8 sEasyChatWord_Sink[] = _("SINK");
static const u8 sEasyChatWord_Smack[] = _("SMACK");
static const u8 sEasyChatWord_Pretend[] = _("PRETEND");
static const u8 sEasyChatWord_Praise[] = _("PRAISE");
static const u8 sEasyChatWord_Overdo[] = _("OVERDO");
static const u8 sEasyChatWord_Show[] = _("SHOW");
static const u8 sEasyChatWord_Looks[] = _("LOOKS");
static const u8 sEasyChatWord_Sees[] = _("SEES");
static const u8 sEasyChatWord_Seek[] = _("SEEK");
static const u8 sEasyChatWord_Own[] = _("OWN");
static const u8 sEasyChatWord_Take[] = _("TAKE");
static const u8 sEasyChatWord_Allow[] = _("ALLOW");
static const u8 sEasyChatWord_Forget[] = _("FORGET");
static const u8 sEasyChatWord_Forgets[] = _("FORGETS");
static const u8 sEasyChatWord_Appears[] = _("APPEARS");
static const u8 sEasyChatWord_Faint[] = _("FAINT");
static const u8 sEasyChatWord_Fainted[] = _("FAINTED");

static const struct EasyChatWordInfo sEasyChatGroup_Actions[] = {
    {
        .text = sEasyChatWord_Meets,
        .alphabeticalOrder = 72,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Concede,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Give,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gives,
        .alphabeticalOrder = 75,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Played,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Plays,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Collect,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Walking,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Walks,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Says,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Went,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Said,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WakeUp,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_WakesUp,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Angers,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Teach,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Teaches,
        .alphabeticalOrder = 54,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Please,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Learn,
        .alphabeticalOrder = 76,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Change,
        .alphabeticalOrder = 77,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Story,
        .alphabeticalOrder = 73,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Trust,
        .alphabeticalOrder = 74,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lavish,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Listens,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hearing,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Trains,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Choose,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Come,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Came,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Search,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Make,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cause,
        .alphabeticalOrder = 67,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Know,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Knows,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Refuse,
        .alphabeticalOrder = 65,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Stores,
        .alphabeticalOrder = 70,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Brag,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ignorant,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Thinks,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Believe,
        .alphabeticalOrder = 64,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Slide,
        .alphabeticalOrder = 63,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Eats,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Use,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Uses,
        .alphabeticalOrder = 56,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Using,
        .alphabeticalOrder = 55,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Couldnt,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Capable,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Disappear,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Appear,
        .alphabeticalOrder = 69,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Throw,
        .alphabeticalOrder = 68,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Worry,
        .alphabeticalOrder = 66,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Slept,
        .alphabeticalOrder = 61,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sleep,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Release,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Drinks,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Runs,
        .alphabeticalOrder = 62,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Run,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Works,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Working,
        .alphabeticalOrder = 71,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Talking,
        .alphabeticalOrder = 60,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Talk,
        .alphabeticalOrder = 59,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sink,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Smack,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pretend,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Praise,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Overdo,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Show,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Looks,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sees,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Seek,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Own,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Take,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Allow,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Forget,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Forgets,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Appears,
        .alphabeticalOrder = 58,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Faint,
        .alphabeticalOrder = 57,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fainted,
        .alphabeticalOrder = 50,
        .enabled = 1
    }
};
# 15 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_lifestyle.h" 1

static const u8 sEasyChatWord_Chores[] = _("CHORES");
static const u8 sEasyChatWord_Home[] = _("HOME");
static const u8 sEasyChatWord_Money[] = _("MONEY");
static const u8 sEasyChatWord_Allowance[] = _("ALLOWANCE");
static const u8 sEasyChatWord_Bath[] = _("BATH");
static const u8 sEasyChatWord_Conversation[] = _("CONVERSATION");
static const u8 sEasyChatWord_School[] = _("SCHOOL");
static const u8 sEasyChatWord_Commemorate[] = _("COMMEMORATE");
static const u8 sEasyChatWord_Habit[] = _("HABIT");
static const u8 sEasyChatWord_Group[] = _("GROUP");
static const u8 sEasyChatWord_Word[] = _("WORD");
static const u8 sEasyChatWord_Store[] = _("STORE");
static const u8 sEasyChatWord_Service[] = _("SERVICE");
static const u8 sEasyChatWord_Work[] = _("WORK");
static const u8 sEasyChatWord_System[] = _("SYSTEM");
static const u8 sEasyChatWord_Train[] = _("TRAIN");
static const u8 sEasyChatWord_Class[] = _("CLASS");
static const u8 sEasyChatWord_Lessons[] = _("LESSONS");
static const u8 sEasyChatWord_Information[] = _("INFORMATION");
static const u8 sEasyChatWord_Living[] = _("LIVING");
static const u8 sEasyChatWord_Teacher[] = _("TEACHER");
static const u8 sEasyChatWord_Tournament[] = _("TOURNAMENT");
static const u8 sEasyChatWord_Letter[] = _("LETTER");
static const u8 sEasyChatWord_Event[] = _("EVENT");
static const u8 sEasyChatWord_Digital[] = _("DIGITAL");
static const u8 sEasyChatWord_Test[] = _("TEST");
static const u8 sEasyChatWord_DeptStore[] = _("DEPT. STORE");
static const u8 sEasyChatWord_Television[] = _("TELEVISION");
static const u8 sEasyChatWord_Phone[] = _("PHONE");
static const u8 sEasyChatWord_Item[] = _("ITEM");
static const u8 sEasyChatWord_Name[] = _("NAME");
static const u8 sEasyChatWord_News[] = _("NEWS");
static const u8 sEasyChatWord_Popular[] = _("POPULAR");
static const u8 sEasyChatWord_Party[] = _("PARTY");
static const u8 sEasyChatWord_Study[] = _("STUDY");
static const u8 sEasyChatWord_Machine[] = _("MACHINE");
static const u8 sEasyChatWord_Mail[] = _("MAIL");
static const u8 sEasyChatWord_Message[] = _("MESSAGE");
static const u8 sEasyChatWord_Promise[] = _("PROMISE");
static const u8 sEasyChatWord_Dream[] = _("DREAM");
static const u8 sEasyChatWord_Kindergarten[] = _("KINDERGARTEN");
static const u8 sEasyChatWord_Life[] = _("LIFE");
static const u8 sEasyChatWord_Radio[] = _("RADIO");
static const u8 sEasyChatWord_Rental[] = _("RENTAL");
static const u8 sEasyChatWord_World[] = _("WORLD");

static const struct EasyChatWordInfo sEasyChatGroup_Lifestyle[] = {
    {
        .text = sEasyChatWord_Chores,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Home,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Money,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Allowance,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Bath,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Conversation,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_School,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Commemorate,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Habit,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Group,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Word,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Store,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Service,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Work,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_System,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Train,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Class,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lessons,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Information,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Living,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Teacher,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tournament,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Letter,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Event,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Digital,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Test,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_DeptStore,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Television,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Phone,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Item,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Name,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_News,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Popular,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Party,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Study,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Machine,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mail,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Message,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Promise,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dream,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Kindergarten,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Life,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Radio,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rental,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_World,
        .alphabeticalOrder = 44,
        .enabled = 1
    }
};
# 16 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_hobbies.h" 1

static const u8 sEasyChatWord_Idol[] = _("IDOL");
static const u8 sEasyChatWord_Anime[] = _("ANIME");
static const u8 sEasyChatWord_Song[] = _("SONG");
static const u8 sEasyChatWord_Movie[] = _("MOVIE");
static const u8 sEasyChatWord_Sweets[] = _("SWEETS");
static const u8 sEasyChatWord_Chat[] = _("CHAT");
static const u8 sEasyChatWord_ChildsPlay[] = _("CHILD'S PLAY");
static const u8 sEasyChatWord_Toys[] = _("TOYS");
static const u8 sEasyChatWord_Music[] = _("MUSIC");
static const u8 sEasyChatWord_Cards[] = _("CARDS");
static const u8 sEasyChatWord_Shopping[] = _("SHOPPING");
static const u8 sEasyChatWord_Camera[] = _("CAMERA");
static const u8 sEasyChatWord_Viewing[] = _("VIEWING");
static const u8 sEasyChatWord_Spectator[] = _("SPECTATOR");
static const u8 sEasyChatWord_Gourmet[] = _("GOURMET");
static const u8 sEasyChatWord_Game[] = _("GAME");
static const u8 sEasyChatWord_Rpg[] = _("RPG");
static const u8 sEasyChatWord_Collection[] = _("COLLECTION");
static const u8 sEasyChatWord_Complete[] = _("COMPLETE");
static const u8 sEasyChatWord_Magazine[] = _("MAGAZINE");
static const u8 sEasyChatWord_Walk[] = _("WALK");
static const u8 sEasyChatWord_Bike[] = _("BIKE");
static const u8 sEasyChatWord_Hobby[] = _("HOBBY");
static const u8 sEasyChatWord_Sports[] = _("SPORTS");
static const u8 sEasyChatWord_Software[] = _("SOFTWARE");
static const u8 sEasyChatWord_Songs[] = _("SONGS");
static const u8 sEasyChatWord_Diet[] = _("DIET");
static const u8 sEasyChatWord_Treasure[] = _("TREASURE");
static const u8 sEasyChatWord_Travel[] = _("TRAVEL");
static const u8 sEasyChatWord_Dance[] = _("DANCE");
static const u8 sEasyChatWord_Channel[] = _("CHANNEL");
static const u8 sEasyChatWord_Making[] = _("MAKING");
static const u8 sEasyChatWord_Fishing[] = _("FISHING");
static const u8 sEasyChatWord_Date[] = _("DATE");
static const u8 sEasyChatWord_Design[] = _("DESIGN");
static const u8 sEasyChatWord_Locomotive[] = _("LOCOMOTIVE");
static const u8 sEasyChatWord_PlushDoll[] = _("PLUSH DOLL");
static const u8 sEasyChatWord_Pc[] = _("PC");
static const u8 sEasyChatWord_Flowers[] = _("FLOWERS");
static const u8 sEasyChatWord_Hero[] = _("HERO");
static const u8 sEasyChatWord_Nap[] = _("NAP");
static const u8 sEasyChatWord_Heroine[] = _("HEROINE");
static const u8 sEasyChatWord_Fashion[] = _("FASHION");
static const u8 sEasyChatWord_Adventure[] = _("ADVENTURE");
static const u8 sEasyChatWord_Board[] = _("BOARD");
static const u8 sEasyChatWord_Ball[] = _("BALL");
static const u8 sEasyChatWord_Book[] = _("BOOK");
static const u8 sEasyChatWord_Festival[] = _("FESTIVAL");
static const u8 sEasyChatWord_Comics[] = _("COMICS");
static const u8 sEasyChatWord_Holiday[] = _("HOLIDAY");
static const u8 sEasyChatWord_Plans[] = _("PLANS");
static const u8 sEasyChatWord_Trendy[] = _("TRENDY");
static const u8 sEasyChatWord_Vacation[] = _("VACATION");
static const u8 sEasyChatWord_Look[] = _("LOOK");

static const struct EasyChatWordInfo sEasyChatGroup_Hobbies[] = {
    {
        .text = sEasyChatWord_Idol,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Anime,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Song,
        .alphabeticalOrder = 45,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Movie,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sweets,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Chat,
        .alphabeticalOrder = 46,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ChildsPlay,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Toys,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Music,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Cards,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Shopping,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Camera,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Viewing,
        .alphabeticalOrder = 48,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Spectator,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Gourmet,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Game,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rpg,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Collection,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Complete,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Magazine,
        .alphabeticalOrder = 47,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Walk,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Bike,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hobby,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sports,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Software,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Songs,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Diet,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Treasure,
        .alphabeticalOrder = 49,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Travel,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Dance,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Channel,
        .alphabeticalOrder = 53,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Making,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fishing,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Date,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Design,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Locomotive,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_PlushDoll,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Pc,
        .alphabeticalOrder = 50,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Flowers,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hero,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nap,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Heroine,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fashion,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Adventure,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Board,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ball,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Book,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Festival,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Comics,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Holiday,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Plans,
        .alphabeticalOrder = 51,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Trendy,
        .alphabeticalOrder = 52,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Vacation,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Look,
        .alphabeticalOrder = 20,
        .enabled = 1
    }
};
# 17 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_time.h" 1

static const u8 sEasyChatWord_Fall[] = _("FALL");
static const u8 sEasyChatWord_Morning[] = _("MORNING");
static const u8 sEasyChatWord_Tomorrow[] = _("TOMORROW");
static const u8 sEasyChatWord_Last[] = _("LAST");
static const u8 sEasyChatWord_Day[] = _("DAY");
static const u8 sEasyChatWord_Sometime[] = _("SOMETIME");
static const u8 sEasyChatWord_Always[] = _("ALWAYS");
static const u8 sEasyChatWord_Current[] = _("CURRENT");
static const u8 sEasyChatWord_Forever[] = _("FOREVER");
static const u8 sEasyChatWord_Days[] = _("DAYS");
static const u8 sEasyChatWord_End[] = _("END");
static const u8 sEasyChatWord_Tuesday[] = _("TUESDAY");
static const u8 sEasyChatWord_Yesterday[] = _("YESTERDAY");
static const u8 sEasyChatWord_Today[] = _("TODAY");
static const u8 sEasyChatWord_Friday[] = _("FRIDAY");
static const u8 sEasyChatWord_Monday[] = _("MONDAY");
static const u8 sEasyChatWord_Later[] = _("LATER");
static const u8 sEasyChatWord_Earlier[] = _("EARLIER");
static const u8 sEasyChatWord_Another[] = _("ANOTHER");
static const u8 sEasyChatWord_Time[] = _("TIME");
static const u8 sEasyChatWord_Finish[] = _("FINISH");
static const u8 sEasyChatWord_Wednesday[] = _("WEDNESDAY");
static const u8 sEasyChatWord_Soon[] = _("SOON");
static const u8 sEasyChatWord_Start[] = _("START");
static const u8 sEasyChatWord_Month[] = _("MONTH");
static const u8 sEasyChatWord_Stop[] = _("STOP");
static const u8 sEasyChatWord_Now[] = _("NOW");
static const u8 sEasyChatWord_Final[] = _("FINAL");
static const u8 sEasyChatWord_Next[] = _("NEXT");
static const u8 sEasyChatWord_Age[] = _("AGE");
static const u8 sEasyChatWord_Saturday[] = _("SATURDAY");
static const u8 sEasyChatWord_Summer[] = _("SUMMER");
static const u8 sEasyChatWord_Sunday[] = _("SUNDAY");
static const u8 sEasyChatWord_Beginning[] = _("BEGINNING");
static const u8 sEasyChatWord_Spring[] = _("SPRING");
static const u8 sEasyChatWord_Daytime[] = _("DAYTIME");
static const u8 sEasyChatWord_Winter[] = _("WINTER");
static const u8 sEasyChatWord_Daily[] = _("DAILY");
static const u8 sEasyChatWord_Olden[] = _("OLDEN");
static const u8 sEasyChatWord_Almost[] = _("ALMOST");
static const u8 sEasyChatWord_Nearly[] = _("NEARLY");
static const u8 sEasyChatWord_Thursday[] = _("THURSDAY");
static const u8 sEasyChatWord_Nighttime[] = _("NIGHTTIME");
static const u8 sEasyChatWord_Night[] = _("NIGHT");
static const u8 sEasyChatWord_Week[] = _("WEEK");

static const struct EasyChatWordInfo sEasyChatGroup_Time[] = {
    {
        .text = sEasyChatWord_Fall,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Morning,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tomorrow,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Last,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Day,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sometime,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Always,
        .alphabeticalOrder = 37,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Current,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Forever,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Days,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_End,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tuesday,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yesterday,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Today,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Friday,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Monday,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Later,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Earlier,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Another,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Time,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Finish,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wednesday,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Soon,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Start,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Month,
        .alphabeticalOrder = 43,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Stop,
        .alphabeticalOrder = 42,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Now,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Final,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Next,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Age,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Saturday,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Summer,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sunday,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Beginning,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Spring,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Daytime,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Winter,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Daily,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Olden,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Almost,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nearly,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Thursday,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Nighttime,
        .alphabeticalOrder = 44,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Night,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Week,
        .alphabeticalOrder = 12,
        .enabled = 1
    }
};
# 18 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_misc.h" 1

static const u8 sEasyChatWord_Highs[] = _("HIGHS");
static const u8 sEasyChatWord_Lows[] = _("LOWS");
static const u8 sEasyChatWord_Um[] = _("UM");
static const u8 sEasyChatWord_Rear[] = _("REAR");
static const u8 sEasyChatWord_Things[] = _("THINGS");
static const u8 sEasyChatWord_Thing[] = _("THING");
static const u8 sEasyChatWord_Below[] = _("BELOW");
static const u8 sEasyChatWord_Above[] = _("ABOVE");
static const u8 sEasyChatWord_Back[] = _("BACK");
static const u8 sEasyChatWord_High[] = _("HIGH");
static const u8 sEasyChatWord_Here[] = _("HERE");
static const u8 sEasyChatWord_Inside[] = _("INSIDE");
static const u8 sEasyChatWord_Outside[] = _("OUTSIDE");
static const u8 sEasyChatWord_Beside[] = _("BESIDE");
static const u8 sEasyChatWord_ThisIsItExcl[] = _("THIS IS IT!");
static const u8 sEasyChatWord_This[] = _("THIS");
static const u8 sEasyChatWord_Every[] = _("EVERY");
static const u8 sEasyChatWord_These[] = _("THESE");
static const u8 sEasyChatWord_TheseWere[] = _("THESE WERE");
static const u8 sEasyChatWord_Down[] = _("DOWN");
static const u8 sEasyChatWord_That[] = _("THAT");
static const u8 sEasyChatWord_ThoseAre[] = _("THOSE ARE");
static const u8 sEasyChatWord_ThoseWere[] = _("THOSE WERE");
static const u8 sEasyChatWord_ThatsItExcl[] = _("THAT'S IT!");
static const u8 sEasyChatWord_Am[] = _("AM");
static const u8 sEasyChatWord_ThatWas[] = _("THAT WAS");
static const u8 sEasyChatWord_Front[] = _("FRONT");
static const u8 sEasyChatWord_Up[] = _("UP");
static const u8 sEasyChatWord_Choice[] = _("CHOICE");
static const u8 sEasyChatWord_Far[] = _("FAR");
static const u8 sEasyChatWord_Away[] = _("AWAY");
static const u8 sEasyChatWord_Near[] = _("NEAR");
static const u8 sEasyChatWord_Where[] = _("WHERE");
static const u8 sEasyChatWord_When[] = _("WHEN");
static const u8 sEasyChatWord_What[] = _("WHAT");
static const u8 sEasyChatWord_Deep[] = _("DEEP");
static const u8 sEasyChatWord_Shallow[] = _("SHALLOW");
static const u8 sEasyChatWord_Why[] = _("WHY");
static const u8 sEasyChatWord_Confused[] = _("CONFUSED");
static const u8 sEasyChatWord_Opposite[] = _("OPPOSITE");
static const u8 sEasyChatWord_Left[] = _("LEFT");
static const u8 sEasyChatWord_Right[] = _("RIGHT");

static const struct EasyChatWordInfo sEasyChatGroup_Misc[] = {
    {
        .text = sEasyChatWord_Highs,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lows,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Um,
        .alphabeticalOrder = 30,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rear,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Things,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Thing,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Below,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Above,
        .alphabeticalOrder = 38,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Back,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_High,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Here,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Inside,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Outside,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Beside,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ThisIsItExcl,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_This,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Every,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_These,
        .alphabeticalOrder = 40,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_TheseWere,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Down,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_That,
        .alphabeticalOrder = 39,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ThoseAre,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ThoseWere,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ThatsItExcl,
        .alphabeticalOrder = 41,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Am,
        .alphabeticalOrder = 36,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_ThatWas,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Front,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Up,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Choice,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Far,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Away,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Near,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Where,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_When,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_What,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Deep,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Shallow,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Why,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Confused,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Opposite,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Left,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Right,
        .alphabeticalOrder = 37,
        .enabled = 1
    }
};
# 19 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_adjectives.h" 1

static const u8 sEasyChatWord_Wandering[] = _("WANDERING");
static const u8 sEasyChatWord_Rickety[] = _("RICKETY");
static const u8 sEasyChatWord_RockSolid[] = _("ROCK-SOLID");
static const u8 sEasyChatWord_Hungry[] = _("HUNGRY");
static const u8 sEasyChatWord_Tight[] = _("TIGHT");
static const u8 sEasyChatWord_Ticklish[] = _("TICKLISH");
static const u8 sEasyChatWord_Twirling[] = _("TWIRLING");
static const u8 sEasyChatWord_Spiraling[] = _("SPIRALING");
static const u8 sEasyChatWord_Thirsty[] = _("THIRSTY");
static const u8 sEasyChatWord_Lolling[] = _("LOLLING");
static const u8 sEasyChatWord_Silky[] = _("SILKY");
static const u8 sEasyChatWord_Sadly[] = _("SADLY");
static const u8 sEasyChatWord_Hopeless[] = _("HOPELESS");
static const u8 sEasyChatWord_Useless[] = _("USELESS");
static const u8 sEasyChatWord_Drooling[] = _("DROOLING");
static const u8 sEasyChatWord_Exciting[] = _("EXCITING");
static const u8 sEasyChatWord_Thick[] = _("THICK");
static const u8 sEasyChatWord_Smooth[] = _("SMOOTH");
static const u8 sEasyChatWord_Slimy[] = _("SLIMY");
static const u8 sEasyChatWord_Thin[] = _("THIN");
static const u8 sEasyChatWord_Break[] = _("BREAK");
static const u8 sEasyChatWord_Voracious[] = _("VORACIOUS");
static const u8 sEasyChatWord_Scatter[] = _("SCATTER");
static const u8 sEasyChatWord_Awesome[] = _("AWESOME");
static const u8 sEasyChatWord_Wimpy[] = _("WIMPY");
static const u8 sEasyChatWord_Wobbly[] = _("WOBBLY");
static const u8 sEasyChatWord_Shaky[] = _("SHAKY");
static const u8 sEasyChatWord_Ripped[] = _("RIPPED");
static const u8 sEasyChatWord_Shredded[] = _("SHREDDED");
static const u8 sEasyChatWord_Increasing[] = _("INCREASING");
static const u8 sEasyChatWord_Yet[] = _("YET");
static const u8 sEasyChatWord_Destroyed[] = _("DESTROYED");
static const u8 sEasyChatWord_Fiery[] = _("FIERY");
static const u8 sEasyChatWord_LoveyDovey[] = _("LOVEY-DOVEY");
static const u8 sEasyChatWord_Happily[] = _("HAPPILY");
static const u8 sEasyChatWord_Anticipation[] = _("ANTICIPATION");

static const struct EasyChatWordInfo sEasyChatGroup_Adjectives[] = {
    {
        .text = sEasyChatWord_Wandering,
        .alphabeticalOrder = 35,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rickety,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_RockSolid,
        .alphabeticalOrder = 20,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hungry,
        .alphabeticalOrder = 31,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tight,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ticklish,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Twirling,
        .alphabeticalOrder = 32,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Spiraling,
        .alphabeticalOrder = 34,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Thirsty,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Lolling,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Silky,
        .alphabeticalOrder = 29,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Sadly,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hopeless,
        .alphabeticalOrder = 33,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Useless,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Drooling,
        .alphabeticalOrder = 27,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Exciting,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Thick,
        .alphabeticalOrder = 11,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Smooth,
        .alphabeticalOrder = 22,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Slimy,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Thin,
        .alphabeticalOrder = 28,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Break,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Voracious,
        .alphabeticalOrder = 18,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Scatter,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Awesome,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wimpy,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wobbly,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Shaky,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ripped,
        .alphabeticalOrder = 5,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Shredded,
        .alphabeticalOrder = 4,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Increasing,
        .alphabeticalOrder = 6,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Yet,
        .alphabeticalOrder = 13,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Destroyed,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Fiery,
        .alphabeticalOrder = 0,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_LoveyDovey,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Happily,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Anticipation,
        .alphabeticalOrder = 30,
        .enabled = 1
    }
};
# 20 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_events.h" 1

static const u8 sEasyChatWord_Appeal[] = _("APPEAL");
static const u8 sEasyChatWord_Events[] = _("EVENTS");
static const u8 sEasyChatWord_StayAtHome[] = _("STAY-AT-HOME");
static const u8 sEasyChatWord_Berry[] = _("BERRY");
static const u8 sEasyChatWord_Contest[] = _("CONTEST");
static const u8 sEasyChatWord_Mc[] = _("MC");
static const u8 sEasyChatWord_Judge[] = _("JUDGE");
static const u8 sEasyChatWord_Super[] = _("SUPER");
static const u8 sEasyChatWord_Stage[] = _("STAGE");
static const u8 sEasyChatWord_HallOfFame[] = _("HALL OF FAME");
static const u8 sEasyChatWord_Evolution[] = _("EVOLUTION");
static const u8 sEasyChatWord_Hyper[] = _("HYPER");
static const u8 sEasyChatWord_BattleTower[] = _("BATTLE TOWER");
static const u8 sEasyChatWord_Leaders[] = _("LEADERS");
static const u8 sEasyChatWord_BattleRoom[] = _("BATTLE ROOM");
static const u8 sEasyChatWord_Hidden[] = _("HIDDEN");
static const u8 sEasyChatWord_SecretBase[] = _("SECRET BASE");
static const u8 sEasyChatWord_Blend[] = _("BLEND");
static const u8 sEasyChatWord_POKEBLOCK[] = _("{POKEBLOCK}");
static const u8 sEasyChatWord_Master[] = _("MASTER");
static const u8 sEasyChatWord_Rank[] = _("RANK");
static const u8 sEasyChatWord_Ribbon[] = _("RIBBON");
static const u8 sEasyChatWord_Crush[] = _("CRUSH");
static const u8 sEasyChatWord_Direct[] = _("DIRECT");
static const u8 sEasyChatWord_Tower[] = _("TOWER");
static const u8 sEasyChatWord_Union[] = _("UNION");
static const u8 sEasyChatWord_Room[] = _("ROOM");
static const u8 sEasyChatWord_Wireless[] = _("WIRELESS");

static const struct EasyChatWordInfo sEasyChatGroup_Events[] = {
    {
        .text = sEasyChatWord_Appeal,
        .alphabeticalOrder = 0,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Events,
        .alphabeticalOrder = 14,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_StayAtHome,
        .alphabeticalOrder = 12,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Berry,
        .alphabeticalOrder = 3,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Contest,
        .alphabeticalOrder = 17,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Mc,
        .alphabeticalOrder = 4,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Judge,
        .alphabeticalOrder = 22,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Super,
        .alphabeticalOrder = 23,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Stage,
        .alphabeticalOrder = 1,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_HallOfFame,
        .alphabeticalOrder = 10,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Evolution,
        .alphabeticalOrder = 9,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Hyper,
        .alphabeticalOrder = 15,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_BattleTower,
        .alphabeticalOrder = 11,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Leaders,
        .alphabeticalOrder = 6,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_BattleRoom,
        .alphabeticalOrder = 13,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Hidden,
        .alphabeticalOrder = 19,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_SecretBase,
        .alphabeticalOrder = 5,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Blend,
        .alphabeticalOrder = 18,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_POKEBLOCK,
        .alphabeticalOrder = 20,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Master,
        .alphabeticalOrder = 21,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Rank,
        .alphabeticalOrder = 26,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Ribbon,
        .alphabeticalOrder = 16,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Crush,
        .alphabeticalOrder = 8,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Direct,
        .alphabeticalOrder = 2,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Tower,
        .alphabeticalOrder = 7,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Union,
        .alphabeticalOrder = 24,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Room,
        .alphabeticalOrder = 25,
        .enabled = 1
    },
    {
        .text = sEasyChatWord_Wireless,
        .alphabeticalOrder = 27,
        .enabled = 1
    }
};
# 21 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_move_1.h" 1
# 1 "include/constants/moves.h" 1
# 2 "src/data/easy_chat/easy_chat_group_move_1.h" 2

static const u16 sEasyChatGroup_Move1[] = {
    71,
    177,
    97,
    314,
    246,
    312,
    310,
    62,
    117,
    20,
    44,
    280,
    145,
    268,
    204,
    128,
    109,
    132,
    322,
    68,
    152,
    238,
    242,
    15,
    91,
    50,
    104,
    38,
    3,
    89,
    227,
    283,
    203,
    326,
    245,
    263,
    313,
    90,
    175,
    172,
    53,
    260,
    19,
    116,
    264,
    266,
    202,
    320,
    74,
    288,
    16,
    258,
    106,
    114,
    29,
    215,
    95,
    301,
    196,
    231,
    2,
    134,
    141,
    122,
    142,
    67,
    212,
    262,
    319,
    309,
    170,
    119,
    54,
    234,
    267,
    171,
    190,
    316,
    200,
    315,
    220,
    181,
    60,
    244,
    94,
    354,
    149,
    228,
    99,
    240,
    229,
    13,
    105,
    216,
    179,
    157,
    249,
    88,
    317,
    205,
    221,
    219,
    328,
    28,
    201,
    184,
    103,
    120,
    247,
    325,
    159,
    329,
    324,
    318,
    47,
    166,
    285,
    143,
    327,
    163,
    265,
    123,
    108,
    173,
    76,
    49,
    209,
    169,
    180,
    147,
    70,
    81,
    78,
    66,
    162,
    207,
    230,
    129,
    235,
    39,
    37,
    87,
    85,
    9,
    321,
    259,
    253,
    233,
    323,
    311,
    250,
    261,
    110,
    281,
};
# 22 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_move_2.h" 1


static const u16 sEasyChatGroup_Move2[] = {
    51,
    151,
    332,
    133,
    292,
    274,
    213,
    140,
    112,
    226,
    251,
    187,
    307,
    299,
    59,
    335,
    34,
    125,
    198,
    155,
    340,
    61,
    339,
    331,
    347,
    293,
    4,
    93,
    160,
    176,
    178,
    343,
    306,
    174,
    111,
    194,
    197,
    291,
    146,
    353,
    24,
    337,
    349,
    82,
    225,
    138,
    65,
    223,
    121,
    52,
    284,
    153,
    185,
    252,
    206,
    297,
    126,
    7,
    83,
    148,
    193,
    338,
    218,
    31,
    210,
    154,
    248,
    137,
    45,
    12,
    257,
    270,
    136,
    237,
    30,
    32,
    336,
    308,
    56,
    63,
    158,
    304,
    58,
    8,
    333,
    286,
    275,
    334,
    26,
    282,
    348,
    73,
    43,
    113,
    199,
    295,
    183,
    277,
    345,
    222,
    96,
    72,
    25,
    5,
    224,
    232,
    118,
    208,
    102,
    107,
    243,
    296,
    236,
    341,
    300,
    189,
    330,
    302,
    101,
    6,
    64,
    195,
    80,
    42,
    305,
    139,
    40,
    342,
    77,
    1,
    217,
    182,
    98,
    75,
    278,
    115,
    287,
    156,
    279,
    46,
    350,
    272,
    27,
    10,
    290,
    69,
    351,
    130,
    303,
    21,
    79,
    214,
    124,
    188,
    289,
    135,
    131,
    191,
    255,
    150,
    211,
    254,
    23,
    165,
    164,
    241,
    276,
    48,
    57,
    256,
    186,
    14,
    33,
    294,
    36,
    269,
    298,
    100,
    168,
    86,
    84,
    92,
    144,
    161,
    271,
    167,
    41,
    239,
    11,
    22,
    344,
    55,
    352,
    346,
    127,
    18,
    17,
    273,
    35,
    192,
};
# 23 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_trendy_saying.h" 1

static const u8 sEasyChatWord_KthxBye[] = _("KTHX, BYE.");
static const u8 sEasyChatWord_YesSirExcl[] = _("YES, SIR!");
static const u8 sEasyChatWord_AvantGarde[] = _("AVANT GARDE");
static const u8 sEasyChatWord_Couple[] = _("COUPLE");
static const u8 sEasyChatWord_MuchObliged[] = _("MUCH OBLIGED");
static const u8 sEasyChatWord_YeehawExcl[] = _("YEEHAW!");
static const u8 sEasyChatWord_Mega[] = _("MEGA");
static const u8 sEasyChatWord_1HitKOExcl[] = _("1-HIT KO!");
static const u8 sEasyChatWord_Destiny[] = _("DESTINY");
static const u8 sEasyChatWord_Cancel[] = _("CANCEL");
static const u8 sEasyChatWord_New[] = _("NEW");
static const u8 sEasyChatWord_Flatten[] = _("FLATTEN");
static const u8 sEasyChatWord_Kidding[] = _("KIDDING");
static const u8 sEasyChatWord_Loser[] = _("LOSER");
static const u8 sEasyChatWord_Losing[] = _("LOSING");
static const u8 sEasyChatWord_Happening[] = _("HAPPENING");
static const u8 sEasyChatWord_HipAnd[] = _("HIP AND");
static const u8 sEasyChatWord_Shake[] = _("SHAKE");
static const u8 sEasyChatWord_Shady[] = _("SHADY");
static const u8 sEasyChatWord_Upbeat[] = _("UPBEAT");
static const u8 sEasyChatWord_Modern[] = _("MODERN");
static const u8 sEasyChatWord_SmellYa[] = _("SMELL YA");
static const u8 sEasyChatWord_Bang[] = _("BANG");
static const u8 sEasyChatWord_Knockout[] = _("KNOCKOUT");
static const u8 sEasyChatWord_Hassle[] = _("HASSLE");
static const u8 sEasyChatWord_Winner[] = _("WINNER");
static const u8 sEasyChatWord_Fever[] = _("FEVER");
static const u8 sEasyChatWord_Wannabe[] = _("WANNABE");
static const u8 sEasyChatWord_Baby[] = _("BABY");
static const u8 sEasyChatWord_Heart[] = _("HEART");
static const u8 sEasyChatWord_Old[] = _("OLD");
static const u8 sEasyChatWord_Young[] = _("YOUNG");
static const u8 sEasyChatWord_Ugly[] = _("UGLY");

static const struct EasyChatWordInfo sEasyChatGroup_TrendySaying[] = {
    {
        .text = sEasyChatWord_KthxBye,
        .alphabeticalOrder = 7,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_YesSirExcl,
        .alphabeticalOrder = 2,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_AvantGarde,
        .alphabeticalOrder = 28,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Couple,
        .alphabeticalOrder = 22,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_MuchObliged,
        .alphabeticalOrder = 9,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_YeehawExcl,
        .alphabeticalOrder = 3,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Mega,
        .alphabeticalOrder = 8,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_1HitKOExcl,
        .alphabeticalOrder = 26,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Destiny,
        .alphabeticalOrder = 11,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Cancel,
        .alphabeticalOrder = 15,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_New,
        .alphabeticalOrder = 24,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Flatten,
        .alphabeticalOrder = 29,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Kidding,
        .alphabeticalOrder = 16,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Loser,
        .alphabeticalOrder = 12,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Losing,
        .alphabeticalOrder = 23,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Happening,
        .alphabeticalOrder = 0,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_HipAnd,
        .alphabeticalOrder = 13,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Shake,
        .alphabeticalOrder = 14,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Shady,
        .alphabeticalOrder = 6,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Upbeat,
        .alphabeticalOrder = 20,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Modern,
        .alphabeticalOrder = 4,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_SmellYa,
        .alphabeticalOrder = 10,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Bang,
        .alphabeticalOrder = 30,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Knockout,
        .alphabeticalOrder = 18,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Hassle,
        .alphabeticalOrder = 17,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Winner,
        .alphabeticalOrder = 21,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Fever,
        .alphabeticalOrder = 32,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Wannabe,
        .alphabeticalOrder = 19,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Baby,
        .alphabeticalOrder = 27,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Heart,
        .alphabeticalOrder = 25,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Old,
        .alphabeticalOrder = 5,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Young,
        .alphabeticalOrder = 1,
        .enabled = 0
    },
    {
        .text = sEasyChatWord_Ugly,
        .alphabeticalOrder = 31,
        .enabled = 0
    }
};
# 24 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_pokemon2.h" 1
static const u16 sEasyChatGroup_Pokemon2[] = {
 63,
 142,
 190,
 65,
 181,
 24,
 59,
 168,
 144,
 184,
 153,
 15,
 182,
 69,
 9,
 242,
 1,
 12,
 10,
 251,
 113,
 6,
 4,
 5,
 152,
 170,
 36,
 35,
 173,
 91,
 222,
 169,
 159,
 104,
 155,
 225,
 87,
 50,
 132,
 85,
 84,
 232,
 148,
 149,
 147,
 96,
 51,
 206,
 133,
 23,
 125,
 101,
 239,
 244,
 196,
 102,
 103,
 83,
 22,
 160,
 180,
 136,
 205,
 162,
 92,
 94,
 74,
 203,
 207,
 44,
 42,
 118,
 55,
 76,
 210,
 75,
 88,
 58,
 130,
 93,
 214,
 107,
 106,
 237,
 250,
 163,
 187,
 116,
 229,
 228,
 97,
 174,
 2,
 39,
 135,
 189,
 124,
 140,
 141,
 64,
 14,
 115,
 230,
 99,
 109,
 98,
 171,
 131,
 246,
 166,
 165,
 108,
 249,
 68,
 67,
 66,
 240,
 219,
 129,
 126,
 81,
 82,
 56,
 226,
 179,
 183,
 105,
 154,
 52,
 11,
 151,
 150,
 241,
 200,
 146,
 122,
 89,
 198,
 177,
 34,
 31,
 29,
 32,
 30,
 33,
 38,
 164,
 224,
 43,
 138,
 139,
 95,
 46,
 47,
 53,
 231,
 172,
 18,
 17,
 16,
 25,
 221,
 204,
 127,
 186,
 60,
 61,
 62,
 77,
 137,
 233,
 57,
 54,
 247,
 195,
 156,
 211,
 26,
 243,
 78,
 20,
 19,
 223,
 112,
 111,
 27,
 28,
 212,
 123,
 117,
 119,
 86,
 161,
 90,
 213,
 227,
 188,
 80,
 199,
 79,
 218,
 235,
 238,
 215,
 143,
 209,
 21,
 167,
 7,
 234,
 121,
 120,
 208,
 185,
 245,
 192,
 191,
 220,
 114,
 128,
 216,
 72,
 73,
 175,
 176,
 158,
 157,
 248,
 236,
 197,
 201,
 217,
 134,
 49,
 48,
 3,
 71,
 45,
 100,
 37,
 8,
 13,
 70,
 110,
 40,
 202,
 194,
 178,
 193,
 145,
 41,
};
# 25 "src/data/easy_chat/easy_chat_groups.h" 2

static const struct EasyChatGroup sEasyChatGroups[] = {
    {
        .wordData = {.valueList = sEasyChatGroup_Pokemon},
        .numWords = 202,
        .numEnabledWords = 202
    },
    {
        .wordData = {.words = sEasyChatGroup_Trainer},
        .numWords = 26,
        .numEnabledWords = 25
    },
    {
        .wordData = {.words = sEasyChatGroup_Status},
        .numWords = 109,
        .numEnabledWords = 109
    },
    {
        .wordData = {.words = sEasyChatGroup_Battle},
        .numWords = 63,
        .numEnabledWords = 63
    },
    {
        .wordData = {.words = sEasyChatGroup_Greetings},
        .numWords = 42,
        .numEnabledWords = 42
    },
    {
        .wordData = {.words = sEasyChatGroup_People},
        .numWords = 75,
        .numEnabledWords = 75
    },
    {
        .wordData = {.words = sEasyChatGroup_Voices},
        .numWords = 63,
        .numEnabledWords = 63
    },
    {
        .wordData = {.words = sEasyChatGroup_Speech},
        .numWords = 60,
        .numEnabledWords = 60
    },
    {
        .wordData = {.words = sEasyChatGroup_Endings},
        .numWords = 69,
        .numEnabledWords = 69
    },
    {
        .wordData = {.words = sEasyChatGroup_Feelings},
        .numWords = 69,
        .numEnabledWords = 69
    },
    {
        .wordData = {.words = sEasyChatGroup_Conditions},
        .numWords = 69,
        .numEnabledWords = 69
    },
    {
        .wordData = {.words = sEasyChatGroup_Actions},
        .numWords = 78,
        .numEnabledWords = 78
    },
    {
        .wordData = {.words = sEasyChatGroup_Lifestyle},
        .numWords = 45,
        .numEnabledWords = 45
    },
    {
        .wordData = {.words = sEasyChatGroup_Hobbies},
        .numWords = 54,
        .numEnabledWords = 54
    },
    {
        .wordData = {.words = sEasyChatGroup_Time},
        .numWords = 45,
        .numEnabledWords = 45
    },
    {
        .wordData = {.words = sEasyChatGroup_Misc},
        .numWords = 42,
        .numEnabledWords = 42
    },
    {
        .wordData = {.words = sEasyChatGroup_Adjectives},
        .numWords = 36,
        .numEnabledWords = 36
    },
    {
        .wordData = {.words = sEasyChatGroup_Events},
        .numWords = 28,
        .numEnabledWords = 19
    },
    {
        .wordData = {.valueList = sEasyChatGroup_Move1},
        .numWords = 154,
        .numEnabledWords = 154
    },
    {
        .wordData = {.valueList = sEasyChatGroup_Move2},
        .numWords = 200,
        .numEnabledWords = 200
    },
    {
        .wordData = {.words = sEasyChatGroup_TrendySaying},
        .numWords = 33,
        .numEnabledWords = 0
    },
    {
        .wordData = {.valueList = sEasyChatGroup_Pokemon2},
        .numWords = 251,
        .numEnabledWords = 251
    },
};
# 39 "src/easy_chat.c" 2
# 1 "src/data/easy_chat/easy_chat_words_by_letter.h" 1



static const u16 sEasyChatWordsByLetter_Others[] = {
    (0x6 << 9) | 0x0,
    (0x6 << 9) | 0x1,
    (0x6 << 9) | 0x7,
    (0x6 << 9) | 0x8,
    (0x6 << 9) | 0x4,
    (0x6 << 9) | 0x5,
    (0x6 << 9) | 0x6,
    (0x14 << 9) | 0x7,
    (0x6 << 9) | 0x3,
    (0x6 << 9) | 0x2,
};

static const u16 sEasyChatWordsByLetter_A[] = {
    (0x8 << 9) | 0x20,
    (0x7 << 9) | 0x13,
    (0x7 << 9) | 0x12,
    (0x7 << 9) | 0x1b,
    (0x8 << 9) | 0x27,
    (0xf << 9) | 0x7,
    -1, 2,
    ((0x0 << 9) | 63),
    ((0x15 << 9) | 63),
    (0xa << 9) | 0xd,
    ((0x0 << 9) | 376),
    (0x7 << 9) | 0x14,
    ((0x12 << 9) | 71),
    (0x3 << 9) | 0x35,
    ((0x13 << 9) | 51),
    ((0x13 << 9) | 151),
    (0x9 << 9) | 0x28,
    (0x5 << 9) | 0xd,
    (0xd << 9) | 0x2b,
    ((0x13 << 9) | 332),
    ((0x12 << 9) | 177),
    ((0x15 << 9) | 142),
    (0x8 << 9) | 0x3f,
    (0xe << 9) | 0x1d,
    ((0x0 << 9) | 384),
    ((0x12 << 9) | 97),
    (0x6 << 9) | 0x17,
    (0x6 << 9) | 0xb,
    (0x3 << 9) | 0x27,
    ((0x15 << 9) | 190),
    ((0x12 << 9) | 314),
    (0x2 << 9) | 0xd,
    (0x6 << 9) | 0x29,
    -1, 2,
    ((0x0 << 9) | 65),
    ((0x15 << 9) | 65),
    (0x8 << 9) | 0x2a,
    (0x9 << 9) | 0x27,
    (0xb << 9) | 0x48,
    (0xc << 9) | 0x3,
    (0x5 << 9) | 0x34,
    (0xe << 9) | 0x27,
    (0xa << 9) | 0x37,
    (0x7 << 9) | 0x29,
    (0x2 << 9) | 0x9,
    ((0x0 << 9) | 359),
    (0x7 << 9) | 0x28,
    (0xe << 9) | 0x6,
    (0xf << 9) | 0x18,
    ((0x13 << 9) | 133),
    ((0x15 << 9) | 181),
    (0xa << 9) | 0x17,
    (0x8 << 9) | 0x21,
    ((0x12 << 9) | 246),
    (0x7 << 9) | 0x15,
    (0x9 << 9) | 0x18,
    (0xb << 9) | 0xe,
    (0x9 << 9) | 0x17,
    (0xd << 9) | 0x1,
    ((0x0 << 9) | 390),
    (0xe << 9) | 0x12,
    (0x10 << 9) | 0x23,
    (0x7 << 9) | 0x39,
    (0x8 << 9) | 0x44,
    (0x4 << 9) | 0xc,
    (0x11 << 9) | 0x0,
    (0xb << 9) | 0x30,
    (0xb << 9) | 0x4b,
    (0x4 << 9) | 0x19,
    (0xa << 9) | 0x3,
    ((0x15 << 9) | 24),
    ((0x15 << 9) | 59),
    (0x8 << 9) | 0xf,
    (0x5 << 9) | 0x1f,
    (0x2 << 9) | 0x5,
    ((0x15 << 9) | 168),
    ((0x13 << 9) | 292),
    ((0x0 << 9) | 391),
    ((0x12 << 9) | 312),
    ((0x0 << 9) | 382),
    (0x7 << 9) | 0x17,
    (0x6 << 9) | 0x34,
    ((0x15 << 9) | 144),
    (0x8 << 9) | 0x2e,
    (0x7 << 9) | 0x31,
    (0x7 << 9) | 0x2b,
    ((0x13 << 9) | 274),
    ((0x12 << 9) | 310),
    (0x8 << 9) | 0x36,
    (0x3 << 9) | 0x12,
    ((0x13 << 9) | 213),
    (0x5 << 9) | 0x11,
    ((0x12 << 9) | 62),
    (0x14 << 9) | 0x2,
    (0xf << 9) | 0x1e,
    (0x10 << 9) | 0x17,
    (0xa << 9) | 0x36,
    (0x7 << 9) | 0x34,
    (0x6 << 9) | 0x3b,
    -1, 2,
    ((0x0 << 9) | 184),
    ((0x15 << 9) | 184),
    ((0x0 << 9) | 350),
};

static const u16 sEasyChatWordsByLetter_B[] = {
    (0x5 << 9) | 0x16,
    (0x14 << 9) | 0x1c,
    (0xf << 9) | 0x8,
    (0x9 << 9) | 0x2e,
    (0xa << 9) | 0x44,
    (0x1 << 9) | 0x15,
    ((0x0 << 9) | 395),
    (0xd << 9) | 0x2d,
    ((0x0 << 9) | 318),
    ((0x0 << 9) | 378),
    (0x14 << 9) | 0x16,
    ((0x0 << 9) | 323),
    ((0x13 << 9) | 140),
    ((0x13 << 9) | 112),
    (0xc << 9) | 0x4,
    ((0x13 << 9) | 226),
    (0x3 << 9) | 0x28,
    (0x2 << 9) | 0x17,
    (0x11 << 9) | 0xe,
    (0x11 << 9) | 0xc,
    ((0x15 << 9) | 153),
    (0x8 << 9) | 0x6,
    (0x9 << 9) | 0x3f,
    ((0x13 << 9) | 251),
    ((0x0 << 9) | 292),
    (0x2 << 9) | 0xb,
    (0x2 << 9) | 0xc,
    (0xa << 9) | 0x32,
    ((0x15 << 9) | 15),
    (0x5 << 9) | 0x3e,
    (0x8 << 9) | 0x40,
    (0xe << 9) | 0x21,
    (0xa << 9) | 0xe,
    ((0x0 << 9) | 398),
    (0xb << 9) | 0x27,
    -1, 2,
    ((0x0 << 9) | 182),
    ((0x15 << 9) | 182),
    ((0x15 << 9) | 69),
    ((0x13 << 9) | 187),
    (0x8 << 9) | 0x35,
    (0xf << 9) | 0x6,
    (0x11 << 9) | 0x3,
    (0xf << 9) | 0xd,
    (0xa << 9) | 0x3c,
    (0x8 << 9) | 0x31,
    ((0x12 << 9) | 117),
    (0xa << 9) | 0x13,
    (0xd << 9) | 0x15,
    ((0x12 << 9) | 20),
    ((0x12 << 9) | 44),
    ((0x13 << 9) | 307),
    ((0x15 << 9) | 9),
    (0x2 << 9) | 0x65,
    ((0x13 << 9) | 299),
    ((0x0 << 9) | 282),
    (0x11 << 9) | 0x11,
    ((0x15 << 9) | 242),
    ((0x13 << 9) | 59),
    ((0x13 << 9) | 335),
    (0xd << 9) | 0x2c,
    ((0x13 << 9) | 34),
    ((0x13 << 9) | 125),
    ((0x13 << 9) | 198),
    ((0x13 << 9) | 155),
    (0xd << 9) | 0x2e,
    (0xa << 9) | 0x38,
    (0x9 << 9) | 0x24,
    ((0x13 << 9) | 340),
    (0x5 << 9) | 0xc,
    (0xb << 9) | 0x24,
    (0x10 << 9) | 0x14,
    ((0x0 << 9) | 307),
    ((0x12 << 9) | 280),
    (0x5 << 9) | 0xe,
    ((0x12 << 9) | 145),
    ((0x13 << 9) | 61),
    (0x2 << 9) | 0x61,
    ((0x15 << 9) | 1),
    ((0x13 << 9) | 339),
    ((0x13 << 9) | 331),
    (0xa << 9) | 0xa,
    (0x7 << 9) | 0xa,
    ((0x15 << 9) | 12),
    (0x4 << 9) | 0x20,
};

static const u16 sEasyChatWordsByLetter_C[] = {
    ((0x0 << 9) | 344),
    ((0x0 << 9) | 345),
    ((0x13 << 9) | 347),
    (0xb << 9) | 0x1c,
    (0xd << 9) | 0xb,
    ((0x0 << 9) | 340),
    ((0x13 << 9) | 293),
    (0x8 << 9) | 0x16,
    (0x3 << 9) | 0xb,
    (0x8 << 9) | 0x15,
    (0x3 << 9) | 0xa,
    (0x14 << 9) | 0x9,
    (0xb << 9) | 0x2e,
    (0xd << 9) | 0x9,
    (0x9 << 9) | 0x25,
    (0x9 << 9) | 0x26,
    ((0x0 << 9) | 330),
    ((0x0 << 9) | 293),
    (0x7 << 9) | 0xc,
    ((0x0 << 9) | 385),
    ((0x15 << 9) | 10),
    (0xb << 9) | 0x1f,
    ((0x15 << 9) | 251),
    (0x1 << 9) | 0x7,
    (0x3 << 9) | 0x1f,
    (0xb << 9) | 0x13,
    (0xd << 9) | 0x1e,
    ((0x15 << 9) | 113),
    ((0x12 << 9) | 268),
    ((0x15 << 9) | 6),
    ((0x12 << 9) | 204),
    ((0x15 << 9) | 4),
    ((0x15 << 9) | 5),
    (0xd << 9) | 0x5,
    ((0x15 << 9) | 152),
    (0xd << 9) | 0x6,
    (0x5 << 9) | 0x22,
    ((0x0 << 9) | 411),
    -1, 2,
    ((0x0 << 9) | 170),
    ((0x15 << 9) | 170),
    (0x2 << 9) | 0x6a,
    (0xf << 9) | 0x1c,
    (0xb << 9) | 0x1a,
    (0xc << 9) | 0x0,
    ((0x12 << 9) | 128),
    ((0x0 << 9) | 373),
    (0xc << 9) | 0x10,
    ((0x0 << 9) | 319),
    (0x2 << 9) | 0x1d,
    ((0x15 << 9) | 36),
    ((0x15 << 9) | 35),
    ((0x15 << 9) | 173),
    (0xa << 9) | 0x15,
    (0x2 << 9) | 0x44,
    ((0x15 << 9) | 91),
    (0xa << 9) | 0x1e,
    (0xb << 9) | 0x6,
    (0xd << 9) | 0x11,
    (0x2 << 9) | 0x8,
    (0x2 << 9) | 0x56,
    ((0x0 << 9) | 281),
    (0xb << 9) | 0x1b,
    (0x3 << 9) | 0x11,
    (0x4 << 9) | 0x28,
    ((0x13 << 9) | 4),
    (0xd << 9) | 0x30,
    (0xc << 9) | 0x7,
    (0xd << 9) | 0x12,
    (0x2 << 9) | 0x4e,
    (0xb << 9) | 0x1,
    ((0x12 << 9) | 109),
    (0xf << 9) | 0x26,
    ((0x13 << 9) | 93),
    (0x4 << 9) | 0x9,
    ((0x12 << 9) | 132),
    (0x11 << 9) | 0x4,
    (0xc << 9) | 0x5,
    ((0x13 << 9) | 160),
    ((0x13 << 9) | 176),
    (0x2 << 9) | 0x15,
    (0x2 << 9) | 0x16,
    ((0x0 << 9) | 326),
    (0xa << 9) | 0x26,
    -1, 2,
    ((0x0 << 9) | 222),
    ((0x15 << 9) | 222),
    ((0x12 << 9) | 322),
    ((0x13 << 9) | 178),
    (0x8 << 9) | 0x8,
    (0xb << 9) | 0x2d,
    (0x4 << 9) | 0x29,
    ((0x12 << 9) | 68),
    (0x14 << 9) | 0x3,
    ((0x13 << 9) | 343),
    ((0x12 << 9) | 152),
    ((0x0 << 9) | 389),
    ((0x0 << 9) | 327),
    (0x6 << 9) | 0x16,
    -1, 2,
    ((0x0 << 9) | 169),
    ((0x15 << 9) | 169),
    ((0x15 << 9) | 159),
    ((0x12 << 9) | 238),
    ((0x12 << 9) | 242),
    (0x11 << 9) | 0x16,
    ((0x13 << 9) | 306),
    (0x6 << 9) | 0x19,
    ((0x15 << 9) | 104),
    (0xe << 9) | 0x7,
    ((0x13 << 9) | 174),
    ((0x12 << 9) | 15),
    (0x2 << 9) | 0x18,
    (0x2 << 9) | 0x63,
    (0x2 << 9) | 0x19,
    ((0x15 << 9) | 155),
};

static const u16 sEasyChatWordsByLetter_D[] = {
    (0xe << 9) | 0x25,
    (0x2 << 9) | 0x25,
    (0xd << 9) | 0x1d,
    (0x9 << 9) | 0x3d,
    (0x2 << 9) | 0x0,
    (0x9 << 9) | 0x1f,
    (0xd << 9) | 0x21,
    (0x5 << 9) | 0x1c,
    (0xe << 9) | 0x4,
    (0xe << 9) | 0x9,
    (0xe << 9) | 0x23,
    (0x3 << 9) | 0x3,
    (0x3 << 9) | 0xe,
    (0xf << 9) | 0x23,
    (0x9 << 9) | 0x3e,
    ((0x13 << 9) | 111),
    ((0x0 << 9) | 316),
    ((0x15 << 9) | 225),
    ((0x0 << 9) | 410),
    (0xc << 9) | 0x1a,
    (0xd << 9) | 0x22,
    (0x14 << 9) | 0x8,
    ((0x13 << 9) | 194),
    (0x10 << 9) | 0x1f,
    ((0x13 << 9) | 197),
    ((0x15 << 9) | 87),
    (0x8 << 9) | 0x3b,
    (0x8 << 9) | 0x3c,
    (0xd << 9) | 0x1a,
    (0xa << 9) | 0x29,
    ((0x12 << 9) | 91),
    (0xc << 9) | 0x18,
    ((0x15 << 9) | 50),
    (0x11 << 9) | 0x17,
    ((0x12 << 9) | 50),
    (0xb << 9) | 0x2f,
    (0x9 << 9) | 0x1b,
    (0x9 << 9) | 0xc,
    (0x9 << 9) | 0xd,
    (0x9 << 9) | 0x29,
    (0x9 << 9) | 0x16,
    (0x9 << 9) | 0x23,
    ((0x15 << 9) | 132),
    ((0x13 << 9) | 291),
    ((0x13 << 9) | 146),
    (0x8 << 9) | 0x18,
    (0xa << 9) | 0x16,
    -1, 2,
    ((0x0 << 9) | 85),
    ((0x15 << 9) | 85),
    -1, 2,
    ((0x0 << 9) | 84),
    ((0x15 << 9) | 84),
    (0x8 << 9) | 0x19,
    (0x8 << 9) | 0x3d,
    (0x8 << 9) | 0x17,
    (0x9 << 9) | 0x3c,
    -1, 2,
    ((0x0 << 9) | 232),
    ((0x15 << 9) | 232),
    ((0x13 << 9) | 353),
    ((0x13 << 9) | 24),
    ((0x12 << 9) | 104),
    ((0x12 << 9) | 38),
    ((0x12 << 9) | 3),
    (0xf << 9) | 0x13,
    (0x9 << 9) | 0x20,
    (0x2 << 9) | 0x3e,
    ((0x13 << 9) | 337),
    ((0x13 << 9) | 349),
    ((0x13 << 9) | 82),
    ((0x15 << 9) | 148),
    ((0x13 << 9) | 225),
    ((0x15 << 9) | 149),
    ((0x15 << 9) | 147),
    (0xc << 9) | 0x27,
    ((0x13 << 9) | 138),
    ((0x13 << 9) | 65),
    (0x9 << 9) | 0x33,
    (0xb << 9) | 0x36,
    (0x2 << 9) | 0x4,
    (0x10 << 9) | 0xe,
    (0x2 << 9) | 0x4c,
    ((0x15 << 9) | 96),
    (0x5 << 9) | 0x36,
    ((0x15 << 9) | 51),
    ((0x15 << 9) | 206),
    ((0x0 << 9) | 362),
    ((0x0 << 9) | 361),
    ((0x0 << 9) | 294),
    ((0x13 << 9) | 223),
};

static const u16 sEasyChatWordsByLetter_E[] = {
    (0xe << 9) | 0x11,
    (0x2 << 9) | 0x48,
    ((0x12 << 9) | 89),
    (0x3 << 9) | 0x38,
    (0x9 << 9) | 0x2c,
    (0xb << 9) | 0x29,
    (0x6 << 9) | 0x20,
    ((0x15 << 9) | 133),
    (0x2 << 9) | 0x58,
    (0x1 << 9) | 0x8,
    ((0x13 << 9) | 121),
    (0x6 << 9) | 0x18,
    (0x6 << 9) | 0x1a,
    ((0x15 << 9) | 23),
    ((0x15 << 9) | 125),
    (0x2 << 9) | 0x39,
    ((0x0 << 9) | 337),
    -1, 2,
    ((0x0 << 9) | 101),
    ((0x15 << 9) | 101),
    ((0x15 << 9) | 239),
    (0xa << 9) | 0x24,
    ((0x13 << 9) | 52),
    ((0x12 << 9) | 227),
    (0x1 << 9) | 0x5,
    (0xe << 9) | 0xa,
    ((0x12 << 9) | 283),
    ((0x12 << 9) | 203),
    (0x9 << 9) | 0x2a,
    (0x9 << 9) | 0x2b,
    (0x7 << 9) | 0x11,
    ((0x15 << 9) | 244),
    (0xa << 9) | 0x18,
    ((0x13 << 9) | 284),
    (0x3 << 9) | 0x26,
    ((0x15 << 9) | 196),
    (0x7 << 9) | 0x1f,
    (0xc << 9) | 0x17,
    (0x11 << 9) | 0x1,
    (0x8 << 9) | 0x32,
    (0xf << 9) | 0x10,
    (0x11 << 9) | 0xa,
    (0x1 << 9) | 0x4,
    (0xa << 9) | 0x1c,
    (0xa << 9) | 0x2,
    (0x9 << 9) | 0x7,
    (0x10 << 9) | 0xf,
    (0x4 << 9) | 0x14,
    (0x4 << 9) | 0x16,
    ((0x15 << 9) | 102),
    ((0x15 << 9) | 103),
    (0xa << 9) | 0x1,
    (0xa << 9) | 0x25,
    ((0x13 << 9) | 153),
    ((0x0 << 9) | 372),
    ((0x12 << 9) | 326),
    ((0x12 << 9) | 245),
};

static const u16 sEasyChatWordsByLetter_F[] = {
    (0xa << 9) | 0x23,
    ((0x12 << 9) | 263),
    (0xb << 9) | 0x4c,
    ((0x13 << 9) | 185),
    (0xb << 9) | 0x4d,
    ((0x13 << 9) | 252),
    ((0x12 << 9) | 313),
    (0xe << 9) | 0x0,
    ((0x13 << 9) | 206),
    (0x5 << 9) | 0x17,
    (0x7 << 9) | 0x3b,
    (0xf << 9) | 0x1d,
    ((0x15 << 9) | 83),
    (0xd << 9) | 0x2a,
    (0xa << 9) | 0x34,
    (0x5 << 9) | 0xb,
    (0x9 << 9) | 0x35,
    ((0x15 << 9) | 22),
    ((0x13 << 9) | 297),
    ((0x0 << 9) | 328),
    (0x7 << 9) | 0x9,
    ((0x15 << 9) | 160),
    (0xd << 9) | 0x2f,
    (0x14 << 9) | 0x1a,
    (0x10 << 9) | 0x20,
    (0x3 << 9) | 0x29,
    (0x2 << 9) | 0x10,
    (0x3 << 9) | 0x1d,
    (0xe << 9) | 0x1b,
    (0x7 << 9) | 0x38,
    (0xe << 9) | 0x14,
    (0x2 << 9) | 0x5a,
    ((0x13 << 9) | 126),
    ((0x13 << 9) | 7),
    ((0x13 << 9) | 83),
    (0xd << 9) | 0x20,
    ((0x12 << 9) | 90),
    ((0x15 << 9) | 180),
    ((0x12 << 9) | 175),
    (0x1 << 9) | 0x16,
    (0x2 << 9) | 0x5b,
    ((0x12 << 9) | 172),
    ((0x12 << 9) | 53),
    ((0x15 << 9) | 136),
    ((0x13 << 9) | 148),
    (0x2 << 9) | 0x68,
    (0x14 << 9) | 0xb,
    ((0x12 << 9) | 260),
    (0xd << 9) | 0x26,
    ((0x12 << 9) | 19),
    ((0x0 << 9) | 334),
    (0x2 << 9) | 0x4b,
    ((0x12 << 9) | 116),
    ((0x12 << 9) | 264),
    (0x3 << 9) | 0x23,
    ((0x12 << 9) | 266),
    (0x8 << 9) | 0x2b,
    (0x7 << 9) | 0x22,
    (0x2 << 9) | 0x3a,
    ((0x13 << 9) | 193),
    (0xe << 9) | 0x8,
    (0xb << 9) | 0x49,
    (0xb << 9) | 0x4a,
    (0x4 << 9) | 0xd,
    ((0x15 << 9) | 205),
    ((0x13 << 9) | 338),
    (0xe << 9) | 0xe,
    (0x5 << 9) | 0x33,
    (0x7 << 9) | 0x8,
    (0xf << 9) | 0x1a,
    ((0x13 << 9) | 218),
    (0x6 << 9) | 0x2b,
    (0xa << 9) | 0xc,
    (0x9 << 9) | 0x9,
    ((0x15 << 9) | 162),
    ((0x13 << 9) | 31),
    ((0x13 << 9) | 210),
    ((0x13 << 9) | 154),
    ((0x13 << 9) | 248),
};

static const u16 sEasyChatWordsByLetter_G[] = {
    (0xd << 9) | 0xf,
    ((0x0 << 9) | 394),
    ((0x15 << 9) | 92),
    ((0x15 << 9) | 94),
    (0x3 << 9) | 0x24,
    -1, 2,
    ((0x0 << 9) | 74),
    ((0x15 << 9) | 74),
    (0x1 << 9) | 0xf,
    (0x9 << 9) | 0x1d,
    (0x2 << 9) | 0x1f,
    (0x9 << 9) | 0x4,
    ((0x12 << 9) | 202),
    (0x6 << 9) | 0x13,
    (0x8 << 9) | 0x7,
    -1, 2,
    ((0x0 << 9) | 203),
    ((0x15 << 9) | 203),
    (0x5 << 9) | 0x15,
    (0xb << 9) | 0x2,
    (0x4 << 9) | 0xa,
    (0x3 << 9) | 0x2d,
    (0xb << 9) | 0x3,
    ((0x0 << 9) | 347),
    ((0x13 << 9) | 137),
    ((0x15 << 9) | 207),
    -1, 2,
    ((0x0 << 9) | 44),
    ((0x15 << 9) | 44),
    (0x3 << 9) | 0x1,
    (0x4 << 9) | 0x18,
    (0x3 << 9) | 0x22,
    (0x9 << 9) | 0xb,
    (0x9 << 9) | 0x3,
    (0xa << 9) | 0x8,
    -1, 2,
    ((0x0 << 9) | 42),
    ((0x15 << 9) | 42),
    (0x1 << 9) | 0x17,
    -1, 2,
    ((0x0 << 9) | 118),
    ((0x15 << 9) | 118),
    -1, 2,
    ((0x0 << 9) | 55),
    ((0x15 << 9) | 55),
    -1, 2,
    ((0x0 << 9) | 76),
    ((0x15 << 9) | 76),
    (0xa << 9) | 0x5,
    (0x4 << 9) | 0x10,
    ((0x0 << 9) | 375),
    (0x9 << 9) | 0xa,
    (0x1 << 9) | 0x1,
    (0xd << 9) | 0xe,
    (0x6 << 9) | 0x21,
    ((0x15 << 9) | 210),
    (0x5 << 9) | 0x9,
    (0x5 << 9) | 0x10,
    (0x2 << 9) | 0x1c,
    ((0x12 << 9) | 320),
    -1, 2,
    ((0x0 << 9) | 75),
    ((0x15 << 9) | 75),
    (0x9 << 9) | 0x40,
    (0x1 << 9) | 0x14,
    -1, 2,
    ((0x0 << 9) | 88),
    ((0x15 << 9) | 88),
    ((0x0 << 9) | 405),
    (0x2 << 9) | 0x26,
    (0xc << 9) | 0x9,
    ((0x0 << 9) | 278),
    ((0x13 << 9) | 45),
    ((0x15 << 9) | 58),
    ((0x12 << 9) | 74),
    ((0x12 << 9) | 288),
    ((0x0 << 9) | 352),
    (0x3 << 9) | 0x32,
    ((0x13 << 9) | 12),
    ((0x0 << 9) | 367),
    ((0x12 << 9) | 16),
    (0x2 << 9) | 0x21,
    (0x3 << 9) | 0x14,
    (0x6 << 9) | 0x3d,
    (0x6 << 9) | 0x22,
    -1, 2,
    ((0x0 << 9) | 130),
    ((0x15 << 9) | 130),
};

static const u16 sEasyChatWordsByLetter_H[] = {
    (0xc << 9) | 0x8,
    (0x6 << 9) | 0x26,
    (0x6 << 9) | 0x28,
    ((0x12 << 9) | 258),
    (0x11 << 9) | 0x9,
    (0x14 << 9) | 0xf,
    (0x10 << 9) | 0x22,
    (0x9 << 9) | 0x6,
    (0x9 << 9) | 0x5,
    (0x9 << 9) | 0x2f,
    ((0x12 << 9) | 106),
    ((0x0 << 9) | 336),
    (0xa << 9) | 0x4,
    (0x14 << 9) | 0x18,
    ((0x15 << 9) | 93),
    (0x8 << 9) | 0x1e,
    (0x8 << 9) | 0x1f,
    ((0x12 << 9) | 114),
    (0x5 << 9) | 0x1a,
    (0x5 << 9) | 0x1e,
    ((0x12 << 9) | 29),
    ((0x12 << 9) | 215),
    (0xa << 9) | 0x1b,
    (0x9 << 9) | 0x13,
    (0xb << 9) | 0x18,
    (0x9 << 9) | 0x11,
    (0x14 << 9) | 0x1d,
    ((0x13 << 9) | 257),
    (0x6 << 9) | 0x30,
    (0x6 << 9) | 0x25,
    (0x6 << 9) | 0x2f,
    (0x4 << 9) | 0xf,
    ((0x13 << 9) | 270),
    (0x5 << 9) | 0x18,
    -1, 2,
    ((0x0 << 9) | 214),
    ((0x15 << 9) | 214),
    (0xf << 9) | 0xa,
    (0x4 << 9) | 0x2,
    (0x4 << 9) | 0x3,
    (0x4 << 9) | 0x4,
    (0xd << 9) | 0x27,
    (0xd << 9) | 0x29,
    (0x5 << 9) | 0x48,
    (0x4 << 9) | 0x22,
    (0x4 << 9) | 0xe,
    (0x4 << 9) | 0x1a,
    (0x4 << 9) | 0x1e,
    ((0x13 << 9) | 136),
    (0x11 << 9) | 0xf,
    ((0x13 << 9) | 237),
    (0xf << 9) | 0x9,
    (0xf << 9) | 0x0,
    (0x5 << 9) | 0x19,
    (0x14 << 9) | 0x10,
    (0x5 << 9) | 0x1d,
    (0x7 << 9) | 0x10,
    ((0x15 << 9) | 107),
    ((0x15 << 9) | 106),
    ((0x15 << 9) | 237),
    (0x6 << 9) | 0x2a,
    (0x6 << 9) | 0xf,
    ((0x15 << 9) | 250),
    (0xd << 9) | 0x16,
    (0x6 << 9) | 0x31,
    (0xd << 9) | 0x31,
    (0xc << 9) | 0x1,
    (0x4 << 9) | 0x25,
    ((0x15 << 9) | 163),
    (0x10 << 9) | 0xc,
    ((0x15 << 9) | 187),
    ((0x13 << 9) | 30),
    ((0x13 << 9) | 32),
    -1, 2,
    ((0x0 << 9) | 116),
    ((0x15 << 9) | 116),
    (0xa << 9) | 0x0,
    ((0x15 << 9) | 229),
    ((0x15 << 9) | 228),
    (0x7 << 9) | 0xf,
    (0x4 << 9) | 0x8,
    (0x7 << 9) | 0xb,
    ((0x13 << 9) | 336),
    (0x2 << 9) | 0x36,
    (0x4 << 9) | 0x1c,
    (0x6 << 9) | 0x2e,
    (0x10 << 9) | 0x3,
    ((0x0 << 9) | 374),
    (0x9 << 9) | 0x2,
    (0x2 << 9) | 0x49,
    ((0x13 << 9) | 308),
    ((0x13 << 9) | 56),
    (0x11 << 9) | 0xb,
    ((0x13 << 9) | 63),
    (0x2 << 9) | 0xf,
    ((0x13 << 9) | 158),
    ((0x13 << 9) | 304),
    ((0x15 << 9) | 97),
    ((0x12 << 9) | 95),
};

static const u16 sEasyChatWordsByLetter_I[] = {
    (0x5 << 9) | 0x1,
    (0x5 << 9) | 0x29,
    (0x1 << 9) | 0x0,
    (0x5 << 9) | 0x26,
    (0x5 << 9) | 0x2a,
    (0x4 << 9) | 0x12,
    (0x2 << 9) | 0x20,
    ((0x12 << 9) | 301),
    ((0x13 << 9) | 58),
    ((0x13 << 9) | 8),
    ((0x13 << 9) | 333),
    ((0x12 << 9) | 196),
    (0xd << 9) | 0x0,
    (0x7 << 9) | 0x19,
    (0x3 << 9) | 0x2f,
    (0x3 << 9) | 0x8,
    -1, 2,
    ((0x0 << 9) | 174),
    ((0x15 << 9) | 174),
    (0xb << 9) | 0x25,
    (0x2 << 9) | 0x47,
    ((0x0 << 9) | 387),
    (0x2 << 9) | 0x64,
    (0x9 << 9) | 0x8,
    (0xa << 9) | 0x27,
    ((0x13 << 9) | 286),
    (0x8 << 9) | 0x37,
    (0x10 << 9) | 0x1d,
    (0x9 << 9) | 0x21,
    (0xc << 9) | 0x12,
    ((0x13 << 9) | 275),
    (0x2 << 9) | 0x30,
    (0xf << 9) | 0xb,
    (0x2 << 9) | 0x51,
    (0x7 << 9) | 0x3a,
    (0x2 << 9) | 0x6,
    (0x3 << 9) | 0x36,
    ((0x13 << 9) | 334),
    ((0x12 << 9) | 231),
    (0x8 << 9) | 0xb,
    (0x8 << 9) | 0x5,
    (0x8 << 9) | 0x13,
    (0x8 << 9) | 0xc,
    (0x8 << 9) | 0x29,
    (0x5 << 9) | 0x31,
    (0xc << 9) | 0x1d,
    ((0x15 << 9) | 2),
};

static const u16 sEasyChatWordsByLetter_J[] = {
    -1, 2,
    ((0x0 << 9) | 39),
    ((0x15 << 9) | 39),
    ((0x0 << 9) | 409),
    (0x7 << 9) | 0x24,
    ((0x15 << 9) | 135),
    (0x9 << 9) | 0x1c,
    (0x11 << 9) | 0x6,
    ((0x13 << 9) | 26),
    ((0x15 << 9) | 189),
    (0x7 << 9) | 0x1e,
    ((0x15 << 9) | 124),
};

static const u16 sEasyChatWordsByLetter_K[] = {
    ((0x15 << 9) | 140),
    ((0x15 << 9) | 141),
    -1, 2,
    ((0x0 << 9) | 64),
    ((0x15 << 9) | 64),
    ((0x15 << 9) | 14),
    ((0x15 << 9) | 115),
    ((0x12 << 9) | 2),
    ((0x0 << 9) | 317),
    (0x2 << 9) | 0x2f,
    (0x5 << 9) | 0x21,
    (0x14 << 9) | 0xc,
    (0xa << 9) | 0x3f,
    (0xc << 9) | 0x28,
    ((0x12 << 9) | 134),
    -1, 2,
    ((0x0 << 9) | 230),
    ((0x15 << 9) | 230),
    ((0x15 << 9) | 99),
    ((0x0 << 9) | 393),
    ((0x13 << 9) | 282),
    (0x14 << 9) | 0x17,
    (0xb << 9) | 0x20,
    (0xb << 9) | 0x21,
    -1, 2,
    ((0x0 << 9) | 109),
    ((0x15 << 9) | 109),
    ((0x15 << 9) | 98),
    (0x14 << 9) | 0x0,
    ((0x0 << 9) | 404),
};

static const u16 sEasyChatWordsByLetter_L[] = {
    (0x9 << 9) | 0x2d,
    (0xa << 9) | 0x3b,
    (0x5 << 9) | 0x32,
    ((0x0 << 9) | 383),
    (0x6 << 9) | 0x39,
    -1, 2,
    ((0x0 << 9) | 171),
    ((0x15 << 9) | 171),
    ((0x15 << 9) | 131),
    ((0x15 << 9) | 246),
    (0xe << 9) | 0x3,
    (0xa << 9) | 0x14,
    (0xe << 9) | 0x10,
    ((0x0 << 9) | 407),
    ((0x0 << 9) | 408),
    (0xb << 9) | 0x16,
    (0x7 << 9) | 0x4,
    (0x3 << 9) | 0x3c,
    (0x11 << 9) | 0xd,
    (0x1 << 9) | 0x18,
    ((0x13 << 9) | 348),
    (0xb << 9) | 0x12,
    ((0x15 << 9) | 166),
    ((0x15 << 9) | 165),
    ((0x12 << 9) | 141),
    ((0x13 << 9) | 73),
    ((0x13 << 9) | 43),
    (0xf << 9) | 0x28,
    (0x3 << 9) | 0x25,
    (0xa << 9) | 0x6,
    (0xc << 9) | 0x11,
    (0x3 << 9) | 0x4,
    (0x8 << 9) | 0xd,
    (0xc << 9) | 0x16,
    (0x1 << 9) | 0x12,
    (0x2 << 9) | 0x52,
    ((0x12 << 9) | 122),
    ((0x15 << 9) | 108),
    (0x7 << 9) | 0x3,
    (0xc << 9) | 0x29,
    ((0x13 << 9) | 113),
    (0x2 << 9) | 0x4d,
    (0x8 << 9) | 0x3a,
    (0x8 << 9) | 0x9,
    (0x9 << 9) | 0x22,
    ((0x0 << 9) | 388),
    (0x2 << 9) | 0x27,
    (0x1 << 9) | 0x9,
    ((0x0 << 9) | 289),
    (0x2 << 9) | 0x55,
    (0x7 << 9) | 0x0,
    (0x4 << 9) | 0x24,
    (0xb << 9) | 0x17,
    (0xc << 9) | 0x13,
    ((0x13 << 9) | 199),
    (0xd << 9) | 0x23,
    (0x6 << 9) | 0x2c,
    (0x10 << 9) | 0x9,
    ((0x0 << 9) | 296),
    (0x9 << 9) | 0x1a,
    (0xd << 9) | 0x35,
    (0xb << 9) | 0x43,
    (0x3 << 9) | 0x31,
    (0x14 << 9) | 0xd,
    (0x14 << 9) | 0xe,
    (0x3 << 9) | 0x2e,
    (0x3 << 9) | 0x30,
    ((0x0 << 9) | 295),
    ((0x0 << 9) | 371),
    (0xa << 9) | 0x3d,
    ((0x12 << 9) | 142),
    (0x10 << 9) | 0x21,
    (0xa << 9) | 0x35,
    ((0x12 << 9) | 67),
    (0xf << 9) | 0x1,
    ((0x0 << 9) | 297),
    ((0x15 << 9) | 249),
    (0xa << 9) | 0x33,
    ((0x0 << 9) | 348),
    ((0x13 << 9) | 295),
    ((0x0 << 9) | 325),
};

static const u16 sEasyChatWordsByLetter_M[] = {
    ((0x13 << 9) | 183),
    -1, 2,
    ((0x0 << 9) | 68),
    ((0x15 << 9) | 68),
    (0xc << 9) | 0x23,
    -1, 2,
    ((0x0 << 9) | 67),
    ((0x15 << 9) | 67),
    -1, 2,
    ((0x0 << 9) | 66),
    ((0x15 << 9) | 66),
    (0xd << 9) | 0x13,
    ((0x15 << 9) | 240),
    -1, 2,
    ((0x0 << 9) | 219),
    ((0x15 << 9) | 219),
    ((0x13 << 9) | 277),
    ((0x13 << 9) | 345),
    -1, 2,
    ((0x0 << 9) | 129),
    ((0x15 << 9) | 129),
    (0x2 << 9) | 0x5e,
    ((0x15 << 9) | 126),
    -1, 2,
    ((0x0 << 9) | 81),
    ((0x15 << 9) | 81),
    (0x2 << 9) | 0x28,
    -1, 2,
    ((0x0 << 9) | 82),
    ((0x15 << 9) | 82),
    ((0x13 << 9) | 222),
    (0xc << 9) | 0x24,
    (0xb << 9) | 0x1e,
    (0xd << 9) | 0x1f,
    ((0x0 << 9) | 335),
    (0x5 << 9) | 0x13,
    ((0x0 << 9) | 338),
    ((0x15 << 9) | 56),
    ((0x15 << 9) | 226),
    ((0x15 << 9) | 179),
    -1, 2,
    ((0x0 << 9) | 183),
    ((0x15 << 9) | 183),
    ((0x15 << 9) | 105),
    ((0x0 << 9) | 284),
    (0x2 << 9) | 0x4f,
    ((0x0 << 9) | 312),
    (0x11 << 9) | 0x13,
    (0x3 << 9) | 0x18,
    (0x3 << 9) | 0x0,
    ((0x0 << 9) | 355),
    (0x8 << 9) | 0x26,
    (0x11 << 9) | 0x5,
    (0x5 << 9) | 0x14,
    (0x7 << 9) | 0x2,
    ((0x12 << 9) | 212),
    ((0x0 << 9) | 357),
    ((0x13 << 9) | 96),
    ((0x0 << 9) | 356),
    (0x9 << 9) | 0x0,
    (0x4 << 9) | 0x21,
    (0xb << 9) | 0x0,
    (0x14 << 9) | 0x6,
    ((0x13 << 9) | 72),
    ((0x13 << 9) | 25),
    ((0x13 << 9) | 5),
    ((0x13 << 9) | 224),
    ((0x15 << 9) | 154),
    ((0x12 << 9) | 262),
    ((0x15 << 9) | 52),
    (0xc << 9) | 0x25,
    ((0x0 << 9) | 400),
    ((0x13 << 9) | 232),
    ((0x12 << 9) | 319),
    ((0x0 << 9) | 399),
    ((0x15 << 9) | 11),
    ((0x12 << 9) | 309),
    ((0x13 << 9) | 118),
    ((0x15 << 9) | 151),
    ((0x15 << 9) | 150),
    ((0x0 << 9) | 287),
    ((0x13 << 9) | 208),
    ((0x0 << 9) | 329),
    ((0x15 << 9) | 241),
    ((0x13 << 9) | 102),
    ((0x12 << 9) | 170),
    ((0x13 << 9) | 107),
    ((0x0 << 9) | 354),
    (0x2 << 9) | 0x5c,
    ((0x13 << 9) | 243),
    ((0x12 << 9) | 119),
    ((0x15 << 9) | 200),
    (0x9 << 9) | 0x15,
    (0x7 << 9) | 0xe,
    ((0x12 << 9) | 54),
    ((0x13 << 9) | 296),
    (0xa << 9) | 0x3e,
    (0x6 << 9) | 0x36,
    (0x7 << 9) | 0x35,
    (0x14 << 9) | 0x14,
    ((0x15 << 9) | 146),
    (0xa << 9) | 0x7,
    (0xe << 9) | 0xf,
    (0xc << 9) | 0x2,
    (0xe << 9) | 0x18,
    (0x7 << 9) | 0x32,
    ((0x13 << 9) | 236),
    (0x7 << 9) | 0x36,
    (0xe << 9) | 0x1,
    ((0x12 << 9) | 234),
    (0x5 << 9) | 0x8,
    (0x3 << 9) | 0x3e,
    (0xd << 9) | 0x3,
    (0x5 << 9) | 0x23,
    ((0x15 << 9) | 122),
    (0x5 << 9) | 0x24,
    (0xa << 9) | 0x21,
    (0x14 << 9) | 0x4,
    ((0x13 << 9) | 341),
    ((0x13 << 9) | 300),
    ((0x13 << 9) | 189),
    ((0x13 << 9) | 330),
    ((0x0 << 9) | 283),
    (0x6 << 9) | 0x35,
    -1, 2,
    ((0x0 << 9) | 89),
    ((0x15 << 9) | 89),
    ((0x15 << 9) | 198),
    (0xd << 9) | 0x8,
    (0x7 << 9) | 0x20,
    (0x5 << 9) | 0x28,
    (0x5 << 9) | 0x25,
    (0xa << 9) | 0x3a,
};

static const u16 sEasyChatWordsByLetter_N[] = {
    (0xc << 9) | 0x1e,
    (0xd << 9) | 0x28,
    -1, 2,
    ((0x0 << 9) | 177),
    ((0x15 << 9) | 177),
    (0xa << 9) | 0x31,
    (0x2 << 9) | 0x24,
    (0x7 << 9) | 0x21,
    (0x1 << 9) | 0x6,
    ((0x12 << 9) | 267),
    (0xf << 9) | 0x1f,
    (0xe << 9) | 0x28,
    (0xa << 9) | 0xf,
    ((0x13 << 9) | 302),
    (0x9 << 9) | 0x3b,
    (0x9 << 9) | 0x1e,
    (0x14 << 9) | 0xa,
    (0xc << 9) | 0x1f,
    (0xe << 9) | 0x1c,
    (0x9 << 9) | 0x32,
    ((0x15 << 9) | 34),
    ((0x15 << 9) | 31),
    ((0x15 << 9) | 29),
    ((0x15 << 9) | 32),
    ((0x15 << 9) | 30),
    ((0x15 << 9) | 33),
    (0xe << 9) | 0x2b,
    ((0x13 << 9) | 101),
    ((0x12 << 9) | 171),
    (0xe << 9) | 0x2a,
    ((0x0 << 9) | 301),
    -1, 2,
    ((0x0 << 9) | 38),
    ((0x15 << 9) | 38),
    ((0x0 << 9) | 302),
    (0x7 << 9) | 0x6,
    (0x4 << 9) | 0x1d,
    (0x3 << 9) | 0xc,
    (0x3 << 9) | 0x2,
    ((0x15 << 9) | 164),
    (0xa << 9) | 0x12,
    (0xa << 9) | 0x2d,
    (0xa << 9) | 0x2f,
    (0x6 << 9) | 0xd,
    (0x2 << 9) | 0x45,
    ((0x0 << 9) | 320),
    (0x8 << 9) | 0x22,
    (0x7 << 9) | 0x1,
    (0xa << 9) | 0x30,
    (0xe << 9) | 0x1a,
    ((0x0 << 9) | 339),
    ((0x0 << 9) | 299),
};

static const u16 sEasyChatWordsByLetter_O[] = {
    (0x2 << 9) | 0x40,
    ((0x12 << 9) | 190),
    ((0x15 << 9) | 224),
    -1, 2,
    ((0x0 << 9) | 43),
    ((0x15 << 9) | 43),
    ((0x12 << 9) | 316),
    (0x8 << 9) | 0x34,
    (0x8 << 9) | 0x2d,
    (0x3 << 9) | 0x1a,
    (0x6 << 9) | 0x1d,
    (0x6 << 9) | 0x33,
    (0x6 << 9) | 0x1c,
    (0x6 << 9) | 0x37,
    (0x6 << 9) | 0xc,
    (0x4 << 9) | 0x7,
    (0x6 << 9) | 0x1b,
    (0x8 << 9) | 0x24,
    (0x6 << 9) | 0x38,
    (0x14 << 9) | 0x1e,
    (0xe << 9) | 0x26,
    ((0x15 << 9) | 138),
    ((0x15 << 9) | 139),
    (0x8 << 9) | 0x2c,
    (0x8 << 9) | 0x43,
    ((0x15 << 9) | 95),
    (0x7 << 9) | 0x16,
    (0x6 << 9) | 0x1e,
    (0x5 << 9) | 0x0,
    (0xf << 9) | 0x27,
    (0x8 << 9) | 0x2,
    (0x8 << 9) | 0xe,
    (0x5 << 9) | 0x40,
    (0x8 << 9) | 0x38,
    ((0x12 << 9) | 200),
    (0xf << 9) | 0xc,
    (0x8 << 9) | 0x28,
    (0xb << 9) | 0x41,
    (0x2 << 9) | 0x2b,
    ((0x12 << 9) | 315),
    (0xa << 9) | 0x22,
    (0xb << 9) | 0x46,
    (0x2 << 9) | 0x5d,
};

static const u16 sEasyChatWordsByLetter_P[] = {
    ((0x12 << 9) | 220),
    ((0x15 << 9) | 46),
    ((0x15 << 9) | 47),
    (0x4 << 9) | 0x13,
    (0x5 << 9) | 0x12,
    (0x3 << 9) | 0x33,
    (0xc << 9) | 0x21,
    (0x2 << 9) | 0x67,
    ((0x13 << 9) | 6),
    (0xd << 9) | 0x25,
    ((0x13 << 9) | 64),
    ((0x0 << 9) | 310),
    (0x7 << 9) | 0x2a,
    (0xa << 9) | 0x19,
    ((0x13 << 9) | 195),
    ((0x15 << 9) | 53),
    (0x5 << 9) | 0x35,
    ((0x13 << 9) | 80),
    -1, 2,
    ((0x0 << 9) | 231),
    ((0x15 << 9) | 231),
    (0xc << 9) | 0x1c,
    -1, 2,
    ((0x0 << 9) | 172),
    ((0x15 << 9) | 172),
    (0x2 << 9) | 0x66,
    ((0x15 << 9) | 18),
    ((0x15 << 9) | 17),
    ((0x15 << 9) | 16),
    -1, 2,
    ((0x0 << 9) | 25),
    ((0x15 << 9) | 25),
    ((0x15 << 9) | 221),
    ((0x13 << 9) | 42),
    ((0x15 << 9) | 204),
    -1, 2,
    ((0x0 << 9) | 127),
    ((0x15 << 9) | 127),
    (0x2 << 9) | 0x59,
    (0x5 << 9) | 0x1b,
    (0xd << 9) | 0x32,
    (0x9 << 9) | 0x1,
    (0xb << 9) | 0x4,
    (0xb << 9) | 0x5,
    (0xb << 9) | 0x11,
    (0x2 << 9) | 0x53,
    (0xd << 9) | 0x24,
    ((0x0 << 9) | 353),
    (0x3 << 9) | 0x2b,
    (0x2 << 9) | 0x3c,
    ((0x13 << 9) | 305),
    ((0x13 << 9) | 139),
    (0x2 << 9) | 0x3d,
    ((0x13 << 9) | 40),
    ((0x13 << 9) | 342),
    ((0x13 << 9) | 77),
    (0x11 << 9) | 0x12,
    (0x1 << 9) | 0x10,
    (0x1 << 9) | 0xe,
    (0x1 << 9) | 0xd,
    ((0x15 << 9) | 186),
    ((0x15 << 9) | 60),
    ((0x15 << 9) | 61),
    ((0x15 << 9) | 62),
    ((0x15 << 9) | 77),
    ((0x0 << 9) | 286),
    (0xc << 9) | 0x20,
    ((0x15 << 9) | 137),
    ((0x15 << 9) | 233),
    ((0x13 << 9) | 1),
    ((0x12 << 9) | 181),
    (0x3 << 9) | 0x1e,
    (0xb << 9) | 0x40,
    (0xa << 9) | 0x2e,
    ((0x13 << 9) | 217),
    (0x2 << 9) | 0x54,
    (0xb << 9) | 0x3f,
    (0xa << 9) | 0x1a,
    ((0x15 << 9) | 57),
    (0x7 << 9) | 0x18,
    (0xc << 9) | 0x26,
    ((0x13 << 9) | 182),
    ((0x12 << 9) | 60),
    ((0x12 << 9) | 244),
    -1, 2,
    (0x2 << 9) | 0xe,
    ((0x12 << 9) | 94),
    ((0x12 << 9) | 354),
    -1, 2,
    ((0x0 << 9) | 54),
    ((0x15 << 9) | 54),
    ((0x12 << 9) | 149),
    ((0x15 << 9) | 247),
    (0x2 << 9) | 0x6b,
    ((0x12 << 9) | 228),
    (0x3 << 9) | 0x3b,
};

static const u16 sEasyChatWordsByLetter_Q[] = {
    ((0x15 << 9) | 195),
    (0x9 << 9) | 0x42,
    ((0x13 << 9) | 98),
    ((0x15 << 9) | 156),
    (0x7 << 9) | 0x7,
    ((0x15 << 9) | 211),
};

static const u16 sEasyChatWordsByLetter_R[] = {
    (0xc << 9) | 0x2a,
    ((0x12 << 9) | 99),
    -1, 2,
    ((0x0 << 9) | 26),
    ((0x15 << 9) | 26),
    ((0x15 << 9) | 243),
    ((0x12 << 9) | 240),
    (0x2 << 9) | 0x3,
    ((0x0 << 9) | 392),
    (0x11 << 9) | 0x14,
    ((0x12 << 9) | 229),
    ((0x15 << 9) | 78),
    (0x9 << 9) | 0x3a,
    (0x7 << 9) | 0x33,
    ((0x15 << 9) | 20),
    ((0x15 << 9) | 19),
    ((0x0 << 9) | 406),
    ((0x13 << 9) | 75),
    ((0x12 << 9) | 13),
    (0x7 << 9) | 0x25,
    (0x7 << 9) | 0x2c,
    (0xf << 9) | 0x3,
    (0x3 << 9) | 0x37,
    (0x7 << 9) | 0x5,
    ((0x12 << 9) | 105),
    ((0x13 << 9) | 278),
    (0x1 << 9) | 0x13,
    ((0x13 << 9) | 115),
    ((0x13 << 9) | 287),
    (0xa << 9) | 0x1f,
    (0xb << 9) | 0x22,
    ((0x0 << 9) | 402),
    ((0x0 << 9) | 401),
    ((0x0 << 9) | 403),
    (0x3 << 9) | 0x34,
    (0xb << 9) | 0x35,
    ((0x0 << 9) | 381),
    ((0x15 << 9) | 223),
    (0xc << 9) | 0x2b,
    ((0x13 << 9) | 156),
    (0x3 << 9) | 0x2a,
    ((0x12 << 9) | 216),
    ((0x13 << 9) | 279),
    ((0x12 << 9) | 179),
    -1, 2,
    ((0x0 << 9) | 112),
    ((0x15 << 9) | 112),
    -1, 2,
    ((0x0 << 9) | 111),
    ((0x15 << 9) | 111),
    (0x11 << 9) | 0x15,
    (0x10 << 9) | 0x1,
    (0xf << 9) | 0x29,
    (0x10 << 9) | 0x1b,
    (0x5 << 9) | 0x42,
    ((0x13 << 9) | 46),
    (0x2 << 9) | 0xa,
    ((0x13 << 9) | 350),
    (0x2 << 9) | 0x7,
    ((0x12 << 9) | 157),
    ((0x12 << 9) | 249),
    ((0x12 << 9) | 88),
    ((0x12 << 9) | 317),
    (0x10 << 9) | 0x2,
    ((0x13 << 9) | 272),
    ((0x13 << 9) | 27),
    ((0x12 << 9) | 205),
    (0x9 << 9) | 0x41,
    (0x11 << 9) | 0x1a,
    ((0x0 << 9) | 363),
    (0x2 << 9) | 0x22,
    (0xd << 9) | 0x10,
    (0x1 << 9) | 0x11,
    (0x3 << 9) | 0x3d,
    (0xb << 9) | 0x38,
    (0x2 << 9) | 0x42,
    (0xb << 9) | 0x37,
};

static const u16 sEasyChatWordsByLetter_S[] = {
    ((0x0 << 9) | 322),
    ((0x12 << 9) | 221),
    (0x9 << 9) | 0xe,
    (0x10 << 9) | 0xb,
    ((0x12 << 9) | 219),
    (0xb << 9) | 0xb,
    ((0x0 << 9) | 397),
    (0x2 << 9) | 0x2d,
    ((0x12 << 9) | 328),
    (0x2 << 9) | 0x2e,
    ((0x12 << 9) | 28),
    -1, 2,
    ((0x0 << 9) | 27),
    ((0x15 << 9) | 27),
    -1, 2,
    ((0x0 << 9) | 28),
    ((0x15 << 9) | 28),
    ((0x12 << 9) | 201),
    (0x1 << 9) | 0x3,
    (0x9 << 9) | 0x38,
    (0xe << 9) | 0x1e,
    (0xb << 9) | 0x9,
    (0x9 << 9) | 0x19,
    ((0x12 << 9) | 184),
    (0x10 << 9) | 0x16,
    ((0x0 << 9) | 279),
    (0xc << 9) | 0x6,
    ((0x15 << 9) | 212),
    ((0x13 << 9) | 10),
    ((0x12 << 9) | 103),
    ((0x15 << 9) | 123),
    -1, 2,
    ((0x0 << 9) | 117),
    ((0x15 << 9) | 117),
    -1, 2,
    ((0x0 << 9) | 119),
    ((0x15 << 9) | 119),
    ((0x0 << 9) | 342),
    (0xb << 9) | 0x1d,
    (0xa << 9) | 0x39,
    (0x11 << 9) | 0x10,
    ((0x13 << 9) | 290),
    (0x9 << 9) | 0x39,
    (0x4 << 9) | 0x15,
    ((0x0 << 9) | 298),
    (0xb << 9) | 0x45,
    ((0x15 << 9) | 86),
    (0xa << 9) | 0x43,
    (0xb << 9) | 0x44,
    ((0x13 << 9) | 69),
    ((0x12 << 9) | 120),
    (0x3 << 9) | 0x1b,
    ((0x15 << 9) | 161),
    (0x2 << 9) | 0x3b,
    (0x3 << 9) | 0x2c,
    (0x7 << 9) | 0x2e,
    (0xc << 9) | 0xc,
    ((0x0 << 9) | 379),
    ((0x12 << 9) | 247),
    ((0x12 << 9) | 325),
    (0x2 << 9) | 0x11,
    (0x14 << 9) | 0x12,
    (0x14 << 9) | 0x11,
    (0x10 << 9) | 0x1a,
    (0xf << 9) | 0x24,
    ((0x0 << 9) | 331),
    ((0x12 << 9) | 159),
    (0x5 << 9) | 0x45,
    (0x5 << 9) | 0x49,
    (0x5 << 9) | 0x46,
    (0x2 << 9) | 0x35,
    ((0x0 << 9) | 303),
    ((0x12 << 9) | 329),
    ((0x0 << 9) | 396),
    (0x2 << 9) | 0x23,
    ((0x15 << 9) | 90),
    (0x2 << 9) | 0x6c,
    ((0x0 << 9) | 300),
    (0x2 << 9) | 0x4a,
    ((0x13 << 9) | 351),
    (0x6 << 9) | 0x1f,
    (0xd << 9) | 0xa,
    (0x9 << 9) | 0x31,
    (0xb << 9) | 0x42,
    (0x10 << 9) | 0x1c,
    ((0x0 << 9) | 306),
    ((0x15 << 9) | 213),
    ((0x0 << 9) | 377),
    (0x5 << 9) | 0x20,
    (0x6 << 9) | 0x14,
    ((0x12 << 9) | 324),
    ((0x0 << 9) | 291),
    (0x10 << 9) | 0xa,
    (0x1 << 9) | 0x19,
    ((0x12 << 9) | 318),
    (0xa << 9) | 0x42,
    (0x8 << 9) | 0x33,
    ((0x12 << 9) | 47),
    (0xb << 9) | 0x3d,
    (0x5 << 9) | 0xf,
    -1, 2,
    ((0x0 << 9) | 227),
    ((0x15 << 9) | 227),
    ((0x12 << 9) | 166),
    (0xa << 9) | 0x2b,
    ((0x12 << 9) | 285),
    (0xa << 9) | 0x11,
    ((0x15 << 9) | 188),
    ((0x0 << 9) | 315),
    ((0x13 << 9) | 130),
    ((0x12 << 9) | 143),
    ((0x12 << 9) | 327),
    ((0x13 << 9) | 303),
    ((0x0 << 9) | 366),
    ((0x0 << 9) | 364),
    ((0x13 << 9) | 21),
    ((0x12 << 9) | 163),
    (0xb << 9) | 0x34,
    ((0x13 << 9) | 79),
    ((0x13 << 9) | 214),
    (0xb << 9) | 0x33,
    (0xb << 9) | 0x28,
    (0x10 << 9) | 0x12,
    ((0x15 << 9) | 80),
    ((0x15 << 9) | 199),
    ((0x15 << 9) | 79),
    ((0x13 << 9) | 124),
    ((0x13 << 9) | 188),
    -1, 2,
    ((0x0 << 9) | 218),
    ((0x15 << 9) | 218),
    (0xb << 9) | 0x3e,
    (0xa << 9) | 0x28,
    (0x2 << 9) | 0x12,
    (0x2 << 9) | 0x13,
    ((0x15 << 9) | 235),
    (0x4 << 9) | 0x23,
    (0x14 << 9) | 0x15,
    ((0x12 << 9) | 265),
    (0x3 << 9) | 0x17,
    ((0x12 << 9) | 123),
    ((0x12 << 9) | 108),
    ((0x15 << 9) | 238),
    (0x10 << 9) | 0x11,
    ((0x13 << 9) | 289),
    ((0x15 << 9) | 215),
    ((0x12 << 9) | 173),
    ((0x15 << 9) | 143),
    (0x6 << 9) | 0x2d,
    ((0x0 << 9) | 346),
    ((0x15 << 9) | 209),
    (0x8 << 9) | 0x25,
    ((0x13 << 9) | 135),
    (0xd << 9) | 0x18,
    ((0x12 << 9) | 76),
    ((0x0 << 9) | 349),
    (0x5 << 9) | 0x4a,
    (0x7 << 9) | 0x27,
    (0x5 << 9) | 0x2c,
    (0x7 << 9) | 0x26,
    (0xe << 9) | 0x5,
    (0x5 << 9) | 0x4,
    (0xd << 9) | 0x2,
    (0xd << 9) | 0x19,
    ((0x12 << 9) | 49),
    (0xe << 9) | 0x16,
    (0x4 << 9) | 0xb,
    (0x2 << 9) | 0x57,
    (0x1 << 9) | 0xa,
    ((0x12 << 9) | 209),
    ((0x15 << 9) | 21),
    (0xd << 9) | 0xd,
    (0x2 << 9) | 0x14,
    ((0x0 << 9) | 341),
    ((0x12 << 9) | 169),
    ((0x13 << 9) | 131),
    ((0x13 << 9) | 191),
    ((0x15 << 9) | 167),
    ((0x0 << 9) | 308),
    (0x10 << 9) | 0x7,
    (0x3 << 9) | 0xd,
    ((0x13 << 9) | 255),
    ((0x12 << 9) | 180),
    ((0x13 << 9) | 150),
    ((0x0 << 9) | 351),
    ((0x12 << 9) | 147),
    (0xd << 9) | 0x17,
    (0xe << 9) | 0x22,
    ((0x15 << 9) | 7),
    (0x11 << 9) | 0x8,
    ((0x15 << 9) | 234),
    -1, 2,
    ((0x0 << 9) | 121),
    ((0x15 << 9) | 121),
    (0xe << 9) | 0x17,
    -1, 2,
    ((0x0 << 9) | 120),
    ((0x15 << 9) | 120),
    (0x2 << 9) | 0x31,
    (0x11 << 9) | 0x2,
    (0x2 << 9) | 0x46,
    ((0x13 << 9) | 211),
    ((0x15 << 9) | 208),
    (0x2 << 9) | 0x1,
    (0x2 << 9) | 0x43,
    ((0x13 << 9) | 254),
    ((0x13 << 9) | 23),
    (0xe << 9) | 0x19,
    (0xc << 9) | 0xb,
    (0xb << 9) | 0x23,
    (0xb << 9) | 0x14,
    (0x3 << 9) | 0x16,
    ((0x12 << 9) | 70),
    ((0x12 << 9) | 81),
    (0x3 << 9) | 0x20,
    ((0x13 << 9) | 165),
    (0xc << 9) | 0x22,
    ((0x12 << 9) | 78),
    (0x2 << 9) | 0x1a,
    ((0x12 << 9) | 66),
    ((0x13 << 9) | 164),
    (0x2 << 9) | 0x1b,
    ((0x15 << 9) | 185),
    ((0x15 << 9) | 245),
    (0xe << 9) | 0x1f,
    (0xe << 9) | 0x20,
    ((0x15 << 9) | 192),
    ((0x15 << 9) | 191),
    ((0x13 << 9) | 241),
    (0x11 << 9) | 0x7,
    ((0x12 << 9) | 162),
    ((0x13 << 9) | 276),
    ((0x13 << 9) | 48),
    ((0x13 << 9) | 57),
    (0x9 << 9) | 0x34,
    (0x3 << 9) | 0x13,
    ((0x0 << 9) | 311),
    ((0x0 << 9) | 358),
    ((0x12 << 9) | 207),
    ((0x13 << 9) | 256),
    ((0x0 << 9) | 368),
    ((0x0 << 9) | 285),
    (0x2 << 9) | 0x62,
    ((0x13 << 9) | 186),
    ((0x12 << 9) | 230),
    (0xd << 9) | 0x4,
    ((0x0 << 9) | 305),
    ((0x12 << 9) | 129),
    (0x2 << 9) | 0x2c,
    ((0x15 << 9) | 220),
    ((0x13 << 9) | 14),
    (0x2 << 9) | 0x2a,
    ((0x12 << 9) | 235),
    (0xc << 9) | 0xe,
};

static const u16 sEasyChatWordsByLetter_T[] = {
    ((0x13 << 9) | 33),
    ((0x13 << 9) | 294),
    ((0x12 << 9) | 39),
    ((0x0 << 9) | 304),
    (0xb << 9) | 0x47,
    ((0x13 << 9) | 36),
    (0x3 << 9) | 0x10,
    (0x3 << 9) | 0x15,
    (0xb << 9) | 0x3c,
    (0xb << 9) | 0x3b,
    ((0x15 << 9) | 114),
    (0xa << 9) | 0x10,
    ((0x13 << 9) | 269),
    ((0x15 << 9) | 128),
    (0x6 << 9) | 0x24,
    (0xb << 9) | 0xf,
    (0xc << 9) | 0x14,
    (0xb << 9) | 0x10,
    ((0x15 << 9) | 216),
    ((0x13 << 9) | 298),
    ((0x13 << 9) | 100),
    (0xc << 9) | 0x1b,
    -1, 2,
    ((0x0 << 9) | 72),
    ((0x15 << 9) | 72),
    -1, 2,
    ((0x0 << 9) | 73),
    ((0x15 << 9) | 73),
    (0x9 << 9) | 0x30,
    (0xc << 9) | 0x19,
    (0x8 << 9) | 0x42,
    (0x4 << 9) | 0x11,
    (0x4 << 9) | 0x0,
    (0xf << 9) | 0x14,
    (0xf << 9) | 0x19,
    (0x7 << 9) | 0x1d,
    (0xf << 9) | 0x17,
    (0x7 << 9) | 0xd,
    (0x5 << 9) | 0x3a,
    (0x8 << 9) | 0x23,
    (0xf << 9) | 0x11,
    (0xf << 9) | 0x12,
    (0x5 << 9) | 0x37,
    (0x5 << 9) | 0x38,
    (0x5 << 9) | 0x3b,
    (0x5 << 9) | 0x3c,
    (0x10 << 9) | 0x10,
    (0x2 << 9) | 0x2,
    ((0x13 << 9) | 168),
    (0x10 << 9) | 0x13,
    (0xf << 9) | 0x5,
    (0xf << 9) | 0x4,
    (0x9 << 9) | 0x12,
    (0xb << 9) | 0x26,
    (0x10 << 9) | 0x8,
    (0xf << 9) | 0xf,
    (0xf << 9) | 0xe,
    (0x8 << 9) | 0x12,
    (0xf << 9) | 0x15,
    (0xf << 9) | 0x16,
    ((0x12 << 9) | 37),
    (0xb << 9) | 0x31,
    ((0x12 << 9) | 87),
    ((0x13 << 9) | 86),
    ((0x12 << 9) | 85),
    ((0x12 << 9) | 9),
    ((0x13 << 9) | 84),
    (0xe << 9) | 0x29,
    ((0x12 << 9) | 321),
    (0x10 << 9) | 0x5,
    (0x10 << 9) | 0x4,
    (0xe << 9) | 0x13,
    (0x8 << 9) | 0x3,
    (0xa << 9) | 0x2a,
    (0x8 << 9) | 0x2f,
    (0x5 << 9) | 0x47,
    (0x5 << 9) | 0x27,
    (0x5 << 9) | 0x39,
    (0x5 << 9) | 0x3f,
    (0x5 << 9) | 0x2e,
    (0xe << 9) | 0xd,
    ((0x15 << 9) | 175),
    (0xa << 9) | 0xb,
    ((0x15 << 9) | 176),
    (0xe << 9) | 0x2,
    (0x8 << 9) | 0x39,
    (0x7 << 9) | 0x37,
    (0x3 << 9) | 0x21,
    (0x3 << 9) | 0x3a,
    (0xa << 9) | 0x2c,
    ((0x0 << 9) | 280),
    ((0x0 << 9) | 321),
    ((0x12 << 9) | 259),
    (0x2 << 9) | 0x1e,
    (0x7 << 9) | 0x2f,
    ((0x15 << 9) | 158),
    (0x2 << 9) | 0x33,
    (0x2 << 9) | 0x34,
    (0xc << 9) | 0x15,
    (0x11 << 9) | 0x18,
    ((0x13 << 9) | 92),
    (0xd << 9) | 0x7,
    (0x2 << 9) | 0x3f,
    (0x1 << 9) | 0x2,
    (0xc << 9) | 0xf,
    (0x1 << 9) | 0xb,
    (0xb << 9) | 0x19,
    ((0x13 << 9) | 144),
    ((0x0 << 9) | 332),
    (0xd << 9) | 0x1c,
    (0xd << 9) | 0x1b,
    ((0x0 << 9) | 277),
    (0xd << 9) | 0x33,
    ((0x13 << 9) | 161),
    ((0x13 << 9) | 271),
    (0x9 << 9) | 0x10,
    ((0x13 << 9) | 167),
    ((0x0 << 9) | 369),
    (0x2 << 9) | 0x41,
    (0x7 << 9) | 0x2d,
    (0x3 << 9) | 0xf,
    (0xb << 9) | 0x15,
    (0x9 << 9) | 0xf,
    (0xe << 9) | 0xb,
    ((0x13 << 9) | 41),
    (0x10 << 9) | 0x6,
    ((0x13 << 9) | 239),
    (0x2 << 9) | 0x32,
    ((0x15 << 9) | 157),
    ((0x15 << 9) | 248),
    ((0x15 << 9) | 236),
};

static const u16 sEasyChatWordsByLetter_U[] = {
    (0x14 << 9) | 0x20,
    (0x6 << 9) | 0x32,
    (0x6 << 9) | 0x9,
    (0xf << 9) | 0x2,
    ((0x15 << 9) | 197),
    (0xa << 9) | 0x20,
    (0x6 << 9) | 0x15,
    (0x5 << 9) | 0xa,
    (0x9 << 9) | 0x43,
    (0x9 << 9) | 0x44,
    (0x7 << 9) | 0x23,
    (0x11 << 9) | 0x19,
    ((0x15 << 9) | 201),
    (0x7 << 9) | 0x30,
    (0xf << 9) | 0x1b,
    (0x14 << 9) | 0x13,
    ((0x12 << 9) | 253),
    (0xa << 9) | 0x1d,
    (0x6 << 9) | 0xe,
    ((0x15 << 9) | 217),
    (0xb << 9) | 0x2a,
    (0x10 << 9) | 0xd,
    (0xb << 9) | 0x2b,
    (0xb << 9) | 0x2c,
};

static const u16 sEasyChatWordsByLetter_V[] = {
    (0xd << 9) | 0x34,
    ((0x15 << 9) | 134),
    ((0x15 << 9) | 49),
    ((0x15 << 9) | 48),
    ((0x15 << 9) | 3),
    (0x1 << 9) | 0xc,
    (0x3 << 9) | 0x1c,
    (0x7 << 9) | 0x1a,
    ((0x0 << 9) | 333),
    ((0x13 << 9) | 11),
    (0x3 << 9) | 0x19,
    ((0x15 << 9) | 71),
    (0xd << 9) | 0xc,
    ((0x0 << 9) | 365),
    -1, 2,
    ((0x0 << 9) | 45),
    ((0x15 << 9) | 45),
    ((0x13 << 9) | 22),
    (0x2 << 9) | 0x69,
    ((0x12 << 9) | 233),
    ((0x0 << 9) | 386),
    (0x2 << 9) | 0x37,
    ((0x13 << 9) | 344),
    -1, 2,
    ((0x0 << 9) | 100),
    ((0x15 << 9) | 100),
    (0x10 << 9) | 0x15,
    -1, 2,
    ((0x0 << 9) | 37),
    ((0x15 << 9) | 37),
};

static const u16 sEasyChatWordsByLetter_W[] = {
    (0x6 << 9) | 0xa,
    (0x6 << 9) | 0x3e,
    ((0x0 << 9) | 313),
    ((0x0 << 9) | 314),
    (0x9 << 9) | 0x37,
    (0xb << 9) | 0xc,
    (0xb << 9) | 0xd,
    (0xd << 9) | 0x14,
    (0xb << 9) | 0x7,
    (0xb << 9) | 0x8,
    ((0x0 << 9) | 343),
    (0x10 << 9) | 0x0,
    (0x14 << 9) | 0x1b,
    (0x9 << 9) | 0x36,
    (0x9 << 9) | 0x14,
    ((0x15 << 9) | 8),
    (0x8 << 9) | 0x10,
    (0x8 << 9) | 0x1c,
    (0x2 << 9) | 0x5f,
    (0x2 << 9) | 0x38,
    ((0x13 << 9) | 55),
    ((0x13 << 9) | 352),
    ((0x13 << 9) | 346),
    ((0x12 << 9) | 323),
    (0x2 << 9) | 0x60,
    ((0x13 << 9) | 127),
    (0x6 << 9) | 0x23,
    (0x5 << 9) | 0x3d,
    (0x5 << 9) | 0x41,
    (0x5 << 9) | 0x43,
    (0x3 << 9) | 0x39,
    (0xa << 9) | 0x41,
    ((0x12 << 9) | 311),
    (0xe << 9) | 0x15,
    ((0x15 << 9) | 13),
    (0xe << 9) | 0x2c,
    ((0x15 << 9) | 70),
    -1, 2,
    ((0x0 << 9) | 110),
    ((0x15 << 9) | 110),
    (0xa << 9) | 0x9,
    (0x4 << 9) | 0x6,
    (0xa << 9) | 0x40,
    (0x4 << 9) | 0x17,
    (0xb << 9) | 0xa,
    (0x8 << 9) | 0x11,
    (0x8 << 9) | 0x1d,
    (0xf << 9) | 0x22,
    (0x4 << 9) | 0x1b,
    (0xf << 9) | 0x21,
    (0x3 << 9) | 0x9,
    (0xf << 9) | 0x20,
    (0x8 << 9) | 0x1b,
    (0x8 << 9) | 0x41,
    ((0x12 << 9) | 250),
    ((0x13 << 9) | 18),
    ((0x0 << 9) | 324),
    ((0x0 << 9) | 370),
    (0x2 << 9) | 0x29,
    (0x5 << 9) | 0x2b,
    (0x5 << 9) | 0x30,
    (0x5 << 9) | 0x2d,
    (0x6 << 9) | 0x10,
    (0x8 << 9) | 0x1a,
    (0x5 << 9) | 0x2f,
    (0xf << 9) | 0x25,
    -1, 2,
    ((0x0 << 9) | 40),
    ((0x15 << 9) | 40),
    (0x7 << 9) | 0x1c,
    (0x8 << 9) | 0x0,
    (0x8 << 9) | 0x1,
    ((0x12 << 9) | 261),
    (0x10 << 9) | 0x18,
    (0x3 << 9) | 0x6,
    ((0x13 << 9) | 17),
    ((0x0 << 9) | 309),
    (0x14 << 9) | 0x19,
    (0x3 << 9) | 0x5,
    (0xe << 9) | 0x24,
    (0x11 << 9) | 0x1b,
    ((0x13 << 9) | 273),
    (0x8 << 9) | 0x30,
    ((0x12 << 9) | 110),
    (0x8 << 9) | 0x3e,
    (0x10 << 9) | 0x19,
    -1, 2,
    ((0x0 << 9) | 202),
    ((0x15 << 9) | 202),
    (0x5 << 9) | 0x44,
    (0x3 << 9) | 0x7,
    (0x8 << 9) | 0x14,
    (0x8 << 9) | 0x4,
    (0x2 << 9) | 0x50,
    ((0x15 << 9) | 194),
    (0xc << 9) | 0xa,
    (0xc << 9) | 0xd,
    (0xb << 9) | 0x3a,
    (0xb << 9) | 0x39,
    (0xc << 9) | 0x2c,
    (0xb << 9) | 0x32,
    (0x8 << 9) | 0xa,
    (0x6 << 9) | 0x12,
    (0x6 << 9) | 0x3c,
    ((0x13 << 9) | 35),
    (0x6 << 9) | 0x11,
    ((0x0 << 9) | 290),
    ((0x0 << 9) | 360),
};

static const u16 sEasyChatWordsByLetter_X[] = {
    -1, 2,
    ((0x0 << 9) | 178),
    ((0x15 << 9) | 178),
};

static const u16 sEasyChatWordsByLetter_Y[] = {
    (0x4 << 9) | 0x26,
    ((0x15 << 9) | 193),
    ((0x12 << 9) | 281),
    (0x6 << 9) | 0x3a,
    (0x4 << 9) | 0x5,
    (0x4 << 9) | 0x1f,
    (0x14 << 9) | 0x5,
    (0x4 << 9) | 0x1,
    (0x14 << 9) | 0x1,
    (0xe << 9) | 0xc,
    (0x10 << 9) | 0x1e,
    (0x4 << 9) | 0x27,
    (0x5 << 9) | 0x2,
    (0x5 << 9) | 0x6,
    (0x5 << 9) | 0x7,
    (0x14 << 9) | 0x1f,
    (0x5 << 9) | 0x5,
    (0x5 << 9) | 0x3,
    (0x6 << 9) | 0x27,
};

static const u16 sEasyChatWordsByLetter_Z[] = {
    ((0x0 << 9) | 380),
    ((0x13 << 9) | 192),
    ((0x15 << 9) | 145),
    ((0x0 << 9) | 288),
    -1, 2,
    ((0x0 << 9) | 41),
    ((0x15 << 9) | 41),
};

static const struct EasyChatWordsByLetter sEasyChatWordsByLetterPointers[] = {
    {
        .words = sEasyChatWordsByLetter_Others,
        .numWords = 10,
    },
    {
        .words = sEasyChatWordsByLetter_A,
        .numWords = 106,
    },
    {
        .words = sEasyChatWordsByLetter_B,
        .numWords = 86,
    },
    {
        .words = sEasyChatWordsByLetter_C,
        .numWords = 119,
    },
    {
        .words = sEasyChatWordsByLetter_D,
        .numWords = 94,
    },
    {
        .words = sEasyChatWordsByLetter_E,
        .numWords = 58,
    },
    {
        .words = sEasyChatWordsByLetter_F,
        .numWords = 79,
    },
    {
        .words = sEasyChatWordsByLetter_G,
        .numWords = 98,
    },
    {
        .words = sEasyChatWordsByLetter_H,
        .numWords = 101,
    },
    {
        .words = sEasyChatWordsByLetter_I,
        .numWords = 48,
    },
    {
        .words = sEasyChatWordsByLetter_J,
        .numWords = 13,
    },
    {
        .words = sEasyChatWordsByLetter_K,
        .numWords = 33,
    },
    {
        .words = sEasyChatWordsByLetter_L,
        .numWords = 82,
    },
    {
        .words = sEasyChatWordsByLetter_M,
        .numWords = 142,
    },
    {
        .words = sEasyChatWordsByLetter_N,
        .numWords = 54,
    },
    {
        .words = sEasyChatWordsByLetter_O,
        .numWords = 44,
    },
    {
        .words = sEasyChatWordsByLetter_P,
        .numWords = 102,
    },
    {
        .words = sEasyChatWordsByLetter_Q,
        .numWords = 6,
    },
    {
        .words = sEasyChatWordsByLetter_R,
        .numWords = 80,
    },
    {
        .words = sEasyChatWordsByLetter_S,
        .numWords = 262,
    },
    {
        .words = sEasyChatWordsByLetter_T,
        .numWords = 133,
    },
    {
        .words = sEasyChatWordsByLetter_U,
        .numWords = 24,
    },
    {
        .words = sEasyChatWordsByLetter_V,
        .numWords = 33,
    },
    {
        .words = sEasyChatWordsByLetter_W,
        .numWords = 111,
    },
    {
        .words = sEasyChatWordsByLetter_X,
        .numWords = 4,
    },
    {
        .words = sEasyChatWordsByLetter_Y,
        .numWords = 19,
    },
    {
        .words = sEasyChatWordsByLetter_Z,
        .numWords = 8,
    },
};
# 40 "src/easy_chat.c" 2

static const u8 *const sEasyChatGroupNamePointers[] = {
    [0x15] = gEasyChatGroupName_Pokemon,
    [0x1] = gEasyChatGroupName_Trainer,
    [0x2] = gEasyChatGroupName_Status,
    [0x3] = gEasyChatGroupName_Battle,
    [0x4] = gEasyChatGroupName_Greetings,
    [0x5] = gEasyChatGroupName_People,
    [0x6] = gEasyChatGroupName_Voices,
    [0x7] = gEasyChatGroupName_Speech,
    [0x8] = gEasyChatGroupName_Endings,
    [0x9] = gEasyChatGroupName_Feelings,
    [0xa] = gEasyChatGroupName_Conditions,
    [0xb] = gEasyChatGroupName_Actions,
    [0xc] = gEasyChatGroupName_Lifestyle,
    [0xd] = gEasyChatGroupName_Hobbies,
    [0xe] = gEasyChatGroupName_Time,
    [0xf] = gEasyChatGroupName_Misc,
    [0x10] = gEasyChatGroupName_Adjectives,
    [0x11] = gEasyChatGroupName_Events,
    [0x12] = gEasyChatGroupName_Move1,
    [0x13] = gEasyChatGroupName_Move2,
    [0x14] = gEasyChatGroupName_TrendySaying,
    [0x0] = gEasyChatGroupName_Pokemon2,
};

static const u16 sDefaultProfileWords[] = {
    (0x5 << 9) | 0x29,
    (0x8 << 9) | 0x20,
    (0x1 << 9) | 0xe,
    (0x5 << 9) | 0x33,
};

static const u16 sDefaultBattleStartWords[] = {
    (0x8 << 9) | 0xf,
    (0x5 << 9) | 0x2,
    (0x7 << 9) | 0x25,
    (0x6 << 9) | 0x3,
    (0x4 << 9) | 0x3,
    (0x6 << 9) | 0x0,
};

static const u16 sDeoxysValue[] = {
    410,
};

static bool8 IsECGroupUnlocked(u8 groupId)
{
    switch (groupId)
    {
    case 0x14:
        return 0;
    case 0x11:
    case 0x12:
    case 0x13:
        return FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x2C));
    case 0x15:
        return EC_IsNationalPokedexEnabled();
    default:
        return 1;
    }
}

static u16 EasyChat_GetNumWordsInGroup(u8 groupId)
{
    if (groupId == 0x15)
        return GetNationalPokedexCount(FLAG_GET_SEEN);

    if (IsECGroupUnlocked(groupId))
        return sEasyChatGroups[groupId].numEnabledWords;

    return 0;
}

static bool8 IsECWordInvalid(u16 easyChatWord)
{
    u16 i;
    u8 groupId;
    u32 index;
    u16 numWords;
    const u16 *list;
    if (easyChatWord == (0xFFFF))
        return 0;

    groupId = ((easyChatWord) >> 9);
    index = ((easyChatWord) & 0x1FF);
    if (groupId >= 0x16)
        return 1;

    numWords = sEasyChatGroups[groupId].numWords;
    switch (groupId)
    {
    case 0x15:
    case 0x0:
    case 0x12:
    case 0x13:
        list = sEasyChatGroups[groupId].wordData.valueList;
        for (i = 0; i < numWords; i++)
        {
            if (index == list[i])
                return 0;
        }
        return 1;
    default:
        if (index >= numWords)
            return 1;
        else
            return 0;
    }
}

static const u8 *GetEasyChatWord(u8 groupId, u16 index)
{
    switch (groupId)
    {
    case 0x15:
    case 0x0:
        return gSpeciesNames[index];
    case 0x12:
    case 0x13:
        return gMoveNames[index];
    default:
        return sEasyChatGroups[groupId].wordData.words[index].text;
    }
}

u8 *CopyEasyChatWord(u8 *dest, u16 easyChatWord)
{
    u8 *resultStr;
    if (IsECWordInvalid(easyChatWord))
    {
        resultStr = StringCopy(dest, gText_ThreeQuestionMarks);
    }
    else if (easyChatWord != (0xFFFF))
    {
        u16 index = ((easyChatWord) & 0x1FF);
        u8 groupId = ((easyChatWord) >> 9);
        resultStr = StringCopy(dest, GetEasyChatWord(groupId, index));
    }
    else
    {
        *dest = 0xFF;
        resultStr = dest;
    }

    return resultStr;
}

u8 *ConvertEasyChatWordsToString(u8 *dest, const u16 *src, u16 columns, u16 rows)
{
    u16 i, j;
    u16 numColumns = columns - 1;

    for (i = 0; i < rows; i++)
    {
        for (j = 0; j < numColumns; j++)
        {
            dest = CopyEasyChatWord(dest, *src);
            if (*src != (0xFFFF))
            {
                *dest = 0x00;
                dest++;
            }

            src++;
        }

        dest = CopyEasyChatWord(dest, *(src++));
        *dest = 0xFE;
        dest++;
    }

    dest--;
    *dest = 0xFF;
    return dest;
}

static u16 GetEasyChatWordStringLength(u16 easyChatWord)
{
    if (easyChatWord == (0xFFFF))
        return 0;

    if (IsECWordInvalid(easyChatWord))
    {
        return StringLength(gText_ThreeQuestionMarks);
    }
    else
    {
        u16 index = ((easyChatWord) & 0x1FF);
        u8 groupId = ((easyChatWord) >> 9);
        return StringLength(GetEasyChatWord(groupId, index));
    }
}

bool8 EC_DoesEasyChatStringFitOnLine(const u16 *easyChatWords, u8 columns, u8 rows, u16 maxLength)
{
    u8 i, j;

    for (i = 0; i < rows; i++)
    {
        u16 totalLength = columns - 1;
        for (j = 0; j < columns; j++)
            totalLength += GetEasyChatWordStringLength(*(easyChatWords++));

        if (totalLength > maxLength)
            return 1;
    }

    return 0;
}

static u16 GetRandomWordFromGroup(u16 groupId)
{
    u16 index = Random() % sEasyChatGroups[groupId].numWords;
    if (groupId == 0x0
     || groupId == 0x15
     || groupId == 0x12
     || groupId == 0x13)
    {
        index = sEasyChatGroups[groupId].wordData.valueList[index];
    }

    return ((((groupId) & 0x7F) << 9) | ((index) & 0x1FF));
}

static u16 GetRandomWordFromAnyGroup(u16 groupId)
{
    if (!IsECGroupUnlocked(groupId))
        return (0xFFFF);

    if (groupId == 0x15)
        return GetRandomECPokemon();

    return GetRandomWordFromGroup(groupId);
}

void ShowEasyChatMessage(void)
{
    u16 *easyChatWords;
    int columns, rows;
    switch (gSpecialVar_0x8004)
    {
    case 0:
        easyChatWords = gSaveBlock1Ptr->easyChatProfile;
        columns = 2;
        rows = 2;
        break;
    case 1:
        easyChatWords = gSaveBlock1Ptr->easyChatBattleStart;
        if (EC_DoesEasyChatStringFitOnLine(gSaveBlock1Ptr->easyChatBattleStart, 3, 2, 18))
        {
            columns = 2;
            rows = 3;
        }
        else
        {
            columns = 3;
            rows = 2;
        }
        break;
    case 2:
        easyChatWords = gSaveBlock1Ptr->easyChatBattleWon;
        columns = 3;
        rows = 2;
        break;
    case 3:
        easyChatWords = gSaveBlock1Ptr->easyChatBattleLost;
        columns = 3;
        rows = 2;
        break;
    default:
        return;
    }

    ConvertEasyChatWordsToString(gStringVar4, easyChatWords, columns, rows);
    ShowFieldAutoScrollMessage(gStringVar4);
}

void BufferRandomHobbyOrLifestyleString(void)
{
    int groupId = Random() & 1 ? 0xd : 0xc;
    u16 easyChatWord = GetRandomWordFromAnyGroup(groupId);
    CopyEasyChatWord(gStringVar2, easyChatWord);
}

static bool8 IsTrendySayingUnlocked(u8 additionalPhraseId)
{
    int byteOffset = additionalPhraseId / 8;
    int shift = additionalPhraseId % 8;
    return (gSaveBlock1Ptr->additionalPhrases[byteOffset] >> shift) & 1;
}

void EnableRareWord(u8 additionalPhraseId)
{
    if (additionalPhraseId < 33)
    {
        int byteOffset = additionalPhraseId / 8;
        int shift = additionalPhraseId % 8;
        gSaveBlock1Ptr->additionalPhrases[byteOffset] |= 1 << shift;
    }
}

static u8 GetNumUnlockedTrendySayings(void)
{
    u8 i;
    u8 numAdditionalPhrasesUnlocked;

    for (i = 0, numAdditionalPhrasesUnlocked = 0; i < 33; i++)
    {
        if (IsTrendySayingUnlocked(i))
            numAdditionalPhrasesUnlocked++;
    }

    return numAdditionalPhrasesUnlocked;
}

static u16 UnlockRandomTrendySaying(void)
{
    u16 i;
    u16 additionalPhraseId;
    u8 numAdditionalPhrasesUnlocked = GetNumUnlockedTrendySayings();
    if (numAdditionalPhrasesUnlocked == 33)
        return (0xFFFF);

    additionalPhraseId = Random() % (33 - numAdditionalPhrasesUnlocked);
    for (i = 0; i < 33; i++)
    {
        if (!IsTrendySayingUnlocked(i))
        {
            if (additionalPhraseId)
            {
                additionalPhraseId--;
            }
            else
            {
                EnableRareWord(i);
                return ((((0x14) & 0x7F) << 9) | ((i) & 0x1FF));
            }
        }
    }

    return (0xFFFF);
}

static u16 GetRandomUnlockedTrendySaying(void)
{
    u16 i;
    u16 additionalPhraseId = GetNumUnlockedTrendySayings();
    if (additionalPhraseId == 0)
        return (0xFFFF);

    additionalPhraseId = Random() % additionalPhraseId;
    for (i = 0; i < 33; i++)
    {
        if (IsTrendySayingUnlocked(i))
        {
            if (additionalPhraseId)
                additionalPhraseId--;
            else
                return ((((0x14) & 0x7F) << 9) | ((i) & 0x1FF));
        }
    }

    return (0xFFFF);
}

static bool8 EC_IsNationalPokedexEnabled(void)
{
    return IsNationalPokedexEnabled();
}

static u16 GetRandomECPokemon(void)
{
    u16 i;
    u16 numWords;
    const u16 *species;
    u16 index = EasyChat_GetNumWordsInGroup(0x0);
    if (index == 0)
        return (0xFFFF);

    index = Random() % index;
    species = sEasyChatGroups[0x0].wordData.valueList;
    numWords = sEasyChatGroups[0x0].numWords;
    for (i = 0; i < numWords; i++)
    {
        u16 dexNum = SpeciesToNationalPokedexNum(*species);
        if (GetSetPokedexFlag(dexNum, FLAG_GET_SEEN))
        {
            if (index)
                index--;
            else
                return ((((0x0) & 0x7F) << 9) | ((*species) & 0x1FF));
        }

        species++;
    }

    return (0xFFFF);
}

void InitEasyChatPhrases(void)
{
    u16 i, j;

    for (i = 0; i < 4; i++)
        gSaveBlock1Ptr->easyChatProfile[i] = sDefaultProfileWords[i];

    for (i = 0; i < 6; i++)
        gSaveBlock1Ptr->easyChatBattleStart[i] = sDefaultBattleStartWords[i];

    for (i = 0; i < 6; i++)
    {
        gSaveBlock1Ptr->easyChatBattleWon[i] = (0xFFFF);
        gSaveBlock1Ptr->easyChatBattleLost[i] = (0xFFFF);
    }

    for (i = 0; i < (6 + 10); i++)
    {
        for (j = 0; j < 9; j++)
            gSaveBlock1Ptr->mail[i].words[j] = (0xFFFF);
    }






    for (i = 0; i < 64; i++)
        gSaveBlock1Ptr->additionalPhrases[i] = 0;




}

void InitQuestionnaireWords(void)
{
    s32 i;
    u16 *ptr = GetQuestionnaireWordsPtr();
    for (i = 0; i < 4; i++)
        ptr[i] = (0xFFFF);
}

bool8 InitEasyChatSelection(void)
{
    sEasyChatSelectionData = Alloc(sizeof(*sEasyChatSelectionData));
    if (sEasyChatSelectionData == ((void *)0))
        return 0;

    PopulateECGroups();
    PopulateAlphabeticalGroups();
    return 1;
}

void DestroyEasyChatSelectionData(void)
{
    if (sEasyChatSelectionData != ((void *)0))
        Free(sEasyChatSelectionData);
}

static void PopulateECGroups(void)
{
    int i;

    sEasyChatSelectionData->numGroups = 0;
    if (GetNationalPokedexCount(FLAG_GET_SEEN))
        sEasyChatSelectionData->groups[sEasyChatSelectionData->numGroups++] = 0x15;

    for (i = 0x1; i <= 0x10; i++)
        sEasyChatSelectionData->groups[sEasyChatSelectionData->numGroups++] = i;

    if (FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x2C)))
    {
        sEasyChatSelectionData->groups[sEasyChatSelectionData->numGroups++] = 0x11;
        sEasyChatSelectionData->groups[sEasyChatSelectionData->numGroups++] = 0x12;
        sEasyChatSelectionData->groups[sEasyChatSelectionData->numGroups++] = 0x13;
    }

    if (IsNationalPokedexEnabled())
        sEasyChatSelectionData->groups[sEasyChatSelectionData->numGroups++] = 0x0;
}

u8 GetNumDisplayableGroups(void)
{
    return sEasyChatSelectionData->numGroups;
}

u8 GetSelectedGroupByIndex(u8 index)
{
    if (index >= sEasyChatSelectionData->numGroups)
        return 0x16;
    else
        return sEasyChatSelectionData->groups[index];
}


static u8 *BufferEasyChatWordGroupName(u8 *dest, u8 groupId, u16 totalChars)
{
    u16 i;
    u8 *str = StringCopy(dest, sEasyChatGroupNamePointers[groupId]);
    for (i = str - dest; i < totalChars; i++)
    {
        *str = 0x00;
        str++;
    }

    *str = 0xFF;
    return str;
}

const u8 *GetEasyChatWordGroupName(u8 groupId)
{
    return sEasyChatGroupNamePointers[groupId];
}

u8 *CopyEasyChatWordPadded(u8 *dest, u16 easyChatWord, u16 totalChars)
{
    u16 i;
    u8 *str = CopyEasyChatWord(dest, easyChatWord);
    for (i = str - dest; i < totalChars; i++)
    {
        *str = 0x00;
        str++;
    }

    *str = 0xFF;
    return str;
}

static void PopulateAlphabeticalGroups(void)
{
    static int i;
    static int j;
    static int k;
    static int index;
    static int numWords;
    static int numToProcess;
    static const u16 *words;

    for (i = 0; i < 27; i++)
    {
        numWords = sEasyChatWordsByLetterPointers[i].numWords;
        words = sEasyChatWordsByLetterPointers[i].words;
        sEasyChatSelectionData->alphabeticalGroups[i] = 0;
        index = 0;
        for (j = 0; j < numWords; )
        {
            if (*words == (0xFFFF))
            {
                words++;
                numToProcess = *words++;
                j += 2;
            }
            else
            {
                numToProcess = 1;
            }

            for (k = 0; k < numToProcess; k++)
            {
                if (IsWordUnlocked(words[k]))
                {
                    sEasyChatSelectionData->alphabeticalWordsByGroup[i][index++] = words[k];
                    sEasyChatSelectionData->alphabeticalGroups[i]++;
                    break;
                }
            }

            words += numToProcess;
            j += numToProcess;
        }
    }
}

void GetUnlockedECWords(bool32 isAlphabetical, u16 groupId)
{
    if (!isAlphabetical)
        sEasyChatSelectionData->totalWords = GetUnlockedWordsInECGroup(groupId);
    else
        sEasyChatSelectionData->totalWords = GetUnlockedWordsInAlphabeticalGroup(groupId);
}

u16 GetDisplayedWordByIndex(u16 index)
{
    if (index >= sEasyChatSelectionData->totalWords)
        return (0xFFFF);
    else
        return sEasyChatSelectionData->allWords[index];
}

u16 GetNumDisplayedWords(void)
{
    return sEasyChatSelectionData->totalWords;
}

static u16 GetUnlockedWordsInECGroup(u16 groupId)
{
    u16 i;
    u16 totalWords;
    const u16 *list;
    const struct EasyChatWordInfo * wordInfo;
    u16 numWords = sEasyChatGroups[groupId].numWords;

    if (groupId == 0x0 || groupId == 0x15
     || groupId == 0x12 || groupId == 0x13)
    {
        list = sEasyChatGroups[groupId].wordData.valueList;
        for (i = 0, totalWords = 0; i < numWords; i++)
        {
            if (UnlockedECMonOrMove(list[i], groupId))
                sEasyChatSelectionData->allWords[totalWords++] = ((((groupId) & 0x7F) << 9) | ((list[i]) & 0x1FF));
        }

        return totalWords;
    }
    else
    {
        wordInfo = sEasyChatGroups[groupId].wordData.words;
        for (i = 0, totalWords = 0; i < numWords; i++)
        {
            u16 alphabeticalOrder = wordInfo[i].alphabeticalOrder;
            if (UnlockedECMonOrMove(alphabeticalOrder, groupId))
                sEasyChatSelectionData->allWords[totalWords++] = ((((groupId) & 0x7F) << 9) | ((alphabeticalOrder) & 0x1FF));
        }

        return totalWords;
    }
}

static u16 GetUnlockedWordsInAlphabeticalGroup(u16 alphabeticalGroup)
{
    u16 i;
    u16 totalWords;

    for (i = 0, totalWords = 0; i < sEasyChatSelectionData->alphabeticalGroups[alphabeticalGroup]; i++)
        sEasyChatSelectionData->allWords[totalWords++] = sEasyChatSelectionData->alphabeticalWordsByGroup[alphabeticalGroup][i];

    return totalWords;
}

static bool8 IsGroupSelectable(u8 groupIdx)
{
    int i;
    for (i = 0; i < sEasyChatSelectionData->numGroups; i++)
    {
        if (sEasyChatSelectionData->groups[i] == groupIdx)
            return 1;
    }

    return 0;
}

static bool8 UnlockedECMonOrMove(u16 wordIndex, u8 groupId)
{
    switch (groupId)
    {
    case 0x15:
        return GetSetPokedexFlag(SpeciesToNationalPokedexNum(wordIndex), FLAG_GET_SEEN);
    case 0x0:
        if (EC_IsDeoxys(wordIndex))
            return GetSetPokedexFlag(SpeciesToNationalPokedexNum(wordIndex), FLAG_GET_SEEN);
        return 1;
    case 0x12:
    case 0x13:
        return 1;
    default:
        return sEasyChatGroups[groupId].wordData.words[wordIndex].enabled;
    }
}

static bool32 EC_IsDeoxys(u16 species)
{
    u32 i;
    for (i = 0; i < (sizeof(sDeoxysValue) / sizeof((sDeoxysValue)[0])); i++)
    {
        if (sDeoxysValue[i] == species)
            return 1;
    }

    return 0;
}

static bool8 IsWordUnlocked(u16 easyChatWord)
{
    u8 groupId = ((easyChatWord) >> 9);
    u32 index = ((easyChatWord) & 0x1FF);
    if (!IsGroupSelectable(groupId))
        return 0;
    else
        return UnlockedECMonOrMove(index, groupId);
}
