# 0 "src/mail.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/mail.c"
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
# 2 "src/mail.c" 2
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
# 3 "src/mail.c" 2
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
# 4 "src/mail.c" 2
# 1 "include/palette.h" 1
# 5 "src/mail.c" 2
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
# 6 "src/mail.c" 2
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
# 7 "src/mail.c" 2
# 1 "include/mail.h" 1
# 25 "include/mail.h"
void ReadMail(struct Mail * mail, void (*savedCallback)(void), bool8 messageExists);
# 8 "src/mail.c" 2
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
# 9 "src/mail.c" 2
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
# 10 "src/mail.c" 2
# 1 "include/mail_data.h" 1





void ClearMailData(void);
void ClearMailStruct(struct Mail *mail);
bool8 MonHasMail(struct Pokemon *mon);
u8 GiveMailToMon(struct Pokemon *mon, u16 itemId);
u16 SpeciesToMailSpecies(u16 species, u32 personality);
u16 MailSpeciesToSpecies(u16 mailSpecies, u16 *buffer);
u8 GiveMailToMon2(struct Pokemon *mon, struct Mail *mail);
void TakeMailFromMon(struct Pokemon *mon);
void ClearMailItemId(u8 mailId);
u8 TakeMailFromMon2(struct Pokemon *mon);
bool8 ItemIsMail(u16 itemId);
# 11 "src/mail.c" 2
# 1 "include/player_pc.h" 1




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
# 6 "include/player_pc.h" 2



struct PlayerPCItemPageStruct
{
    u16 itemsAbove;
    u16 cursorPos;
    u8 pageItems;
    u8 count;
    u8 filler_6[3];
    bool8 notInRoom;
    u8 scrollIndicatorId;
    u8 filler_B[5];
};


extern struct PlayerPCItemPageStruct gPlayerPcMenuManager;



void NewGameInitPCItems(void);
void Mailbox_ReturnToMailListAfterDeposit(void);
# 12 "src/mail.c" 2
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
# 13 "src/mail.c" 2
# 1 "include/help_system.h" 1






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
# 14 "src/mail.c" 2
# 1 "include/menu_helpers.h" 1




# 1 "include/task.h" 1
# 6 "include/menu_helpers.h" 2





struct YesNoFuncTable
{
    TaskFunc yesFunc;
    TaskFunc noFunc;
};

bool16 RunTextPrinters_CheckActive(u8 textPrinterId);
bool8 IsActiveOverworldLinkBusy(void);
bool8 MenuHelpers_ShouldWaitForLinkRecv(void);
bool8 MenuHelpers_IsLinkActive(void);
void SetVBlankHBlankCallbacksToNull(void);
void ResetAllBgsCoordinatesAndBgCntRegs(void);
u8 GetDialogBoxFontId(void);
bool8 AdjustQuantityAccordingToDPadInput(s16 *quantity_p, u16 qmax);
void DisplayMessageAndContinueTask(u8 taskId, u8 windowId, u16 tileNum, u8 paletteNum, u8 fontId, u8 textSpeed, const u8 *string, void *taskFunc);
void CreateYesNoMenuWithCallbacks(u8 taskId, const struct WindowTemplate *template, u8 fontId, u8 left, u8 top, u16 tileStart, u8 palette, const struct YesNoFuncTable *yesNo);
u8 GetLRKeysPressed(void);
u8 GetLRKeysPressedAndHeld(void);
bool8 IsHoldingItemAllowed(u16 itemId);
bool8 IsWritingMailAllowed(u16 itemId);
void ResetVramOamAndBgCntRegs(void);
# 15 "src/mail.c" 2
# 1 "include/new_menu_helpers.h" 1







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
# 16 "src/mail.c" 2
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
# 17 "src/mail.c" 2
# 1 "include/pokemon_icon.h" 1





extern const u8 *const gMonIconTable[];
extern const struct SpritePalette gMonIconPaletteTable[];
extern const u16 gMonIconPalettes[][16];
extern const u8 gMonIconPaletteIndices[];

const u8 *GetMonIconPtr(u16 speciesId, u32 personality, u32 frameNo);
const u8 *GetMonIconTiles(u16 iconSpecies, bool32 extra);
const u16 *GetValidMonIconPalettePtr(u16 speciesId);
void LoadMonIconPalettes(void);
void FreeMonIconPalettes(void);
u16 MailSpeciesToIconSpecies(u16);
u8 CreateMonIcon_HandleDeoxys(u16 species, SpriteCallback callback, s16 x, s16 y, u8 subpriority, bool32 extra);
void DestroyMonIcon(struct Sprite *);
u16 GetUnownLetterByPersonality(u32 personality);
void SpriteCB_MonIcon(struct Sprite *);
u8 CreateMonIcon(u16 species, SpriteCallback callback, s16 x, s16 y, u8 subpriority, u32 personality, bool32 extra);
u8 UpdateMonIconFrame(struct Sprite *sprite);
void LoadMonIconPalette(u16 iconId);
void FreeMonIconPalette(u16 iconId);
void SetPartyHPBarSprite(struct Sprite *sprite, u8 animNum);
u8 GetMonIconPaletteIndexFromSpecies(u16 species);
u16 GetIconSpecies(u16 species, u32 personality);
void LoadMonIconPalettesAt(u16 offset);
u8 GetValidMonIconPalIndex(u16 species);
void SafeLoadMonIconPalette(u16 species);
void SafeFreeMonIconPalette(u16 species);
# 18 "src/mail.c" 2
# 1 "include/string_util.h" 1
# 19 "src/mail.c" 2
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
# 20 "src/mail.c" 2
# 1 "include/constants/items.h" 1
# 21 "src/mail.c" 2

enum MailIconParam
{
    MAIL_ICON_NONE = 0,
    MAIL_ICON_BEAD,
    MAIL_ICON_DREAM
};

struct MailEcWordLayout
{
    u32 numWordsInLine:2;
    u32 lineXoffset:6;
    u32 lineHeight:8;
};

struct MailAttrStruct
{
    u8 numRows;
    u8 nameY;
    u8 nameX;
    u8 messageTop;
    u8 messageLeft;
    const struct MailEcWordLayout * linesLayout;
};

struct MailGfxData
{
    const void *pal;
    const void *tiles;
    const void *map;
    u32 size;
    u16 textpals[2];
};

struct MailViewResources {
    u8 messageLinesBuffer[8][26];
    u8 authorNameBuffer[12];
    void (*savedCallback)(void);
    void (*showMailCallback)(void);
    struct Mail * mail;
    bool8 messageExists;
    u8 nameX;
    u8 mailType;
    u8 monIconType;
    u8 monIconSpriteId;
    u8 unused;
    u8 mailArrangementType;
    u8 *(*copyEasyChatWord)(u8 *dest, u16 word);
    u8 *(*convertEasyChatWordsToString)(u8 *dest, const u16 *src, u16 length1, u16 length2);
    const struct MailAttrStruct * messageLayout;
    u16 bg1TilemapBuffer[0x800];
    u16 bg2TilemapBuffer[0x800];
};

static __attribute__((section("ewram_data"))) struct MailViewResources * sMailViewResources = ((void *)0);

static void CB2_InitMailView(void);
static void BufferMailMessage(void);
static void AddMailMessagePrinters(void);
static void VBlankCB_ShowMail(void);
static void CB2_RunShowMailCB(void);
static void ShowMailCB_WaitFadeIn(void);
static void ShowMailCB_WaitButton(void);
static void ShowMailCB_Teardown(void);

static const struct BgTemplate sBgTemplates[] = {
    {
        .bg = 0,
        .charBaseIndex = 2,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0x000
    }, {
        .bg = 1,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0x000
    }, {
        .bg = 2,
        .charBaseIndex = 0,
        .mapBaseIndex = 29,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0x000
    }
};

static const struct WindowTemplate sWindowTemplates[] = {
    {
        .bg = 0,
        .tilemapLeft = 3,
        .tilemapTop = 4,
        .width = 24,
        .height = 10,
        .paletteNum = 15,
        .baseBlock = 0x001
    }, {
        .bg = 0,
        .tilemapLeft = 15,
        .tilemapTop = 15,
        .width = 13,
        .height = 3,
        .paletteNum = 15,
        .baseBlock = 0x0F2
    }, { 0xFF, 0, 0, 0, 0, 0, 0, }
};

static const u8 sTextColor[] = { 0, 10, 11 };

static const u16 sGenderPals[][2] = {
    { ((13) | ((22) << 5) | ((26) << 10)), ((05) | ((13) << 5) | ((20) << 10)) },
    { ((28) | ((15) << 5) | ((17) << 10)), ((20) | ((06) << 5) | ((14) << 10)) }
};

static const struct MailGfxData sGfxHeaders[] = {
    [(121 - 121)] = {
        .pal = gFile_graphics_mail_orange_palette_pal,
        .tiles = gFile_graphics_mail_orange_tiles_sheet,
        .map = gFile_graphics_mail_orange_map_tilemap,
        .size = 0x2c0,
        .textpals = { ((10) | ((10) << 5) | ((10) << 10)), ((25) | ((25) << 5) | ((25) << 10)) }
    },
    [(122 - 121)] = {
        .pal = gFile_graphics_mail_harbor_palette_pal,
        .tiles = gFile_graphics_mail_harbor_tiles_sheet,
        .map = gFile_graphics_mail_harbor_map_tilemap,
        .size = 0x2e0,
        .textpals = { ((31) | ((31) << 5) | ((31) << 10)), ((17) | ((17) << 5) | ((17) << 10)) }
    },
    [(123 - 121)] = {
        .pal = gFile_graphics_mail_glitter_palette_pal,
        .tiles = gFile_graphics_mail_glitter_tiles_sheet,
        .map = gFile_graphics_mail_glitter_map_tilemap,
        .size = 0x400,
        .textpals = { ((10) | ((10) << 5) | ((10) << 10)), ((25) | ((25) << 5) | ((25) << 10)) }
    },
    [(124 - 121)] = {
        .pal = gFile_graphics_mail_mech_palette_pal,
        .tiles = gFile_graphics_mail_mech_tiles_sheet,
        .map = gFile_graphics_mail_mech_map_tilemap,
        .size = 0x1e0,
        .textpals = { ((31) | ((31) << 5) | ((31) << 10)), ((17) | ((17) << 5) | ((17) << 10)) }
    },
    [(125 - 121)] = {
        .pal = gFile_graphics_mail_wood_palette_pal,
        .tiles = gFile_graphics_mail_wood_tiles_sheet,
        .map = gFile_graphics_mail_wood_map_tilemap,
        .size = 0x2e0,
        .textpals = { ((31) | ((31) << 5) | ((31) << 10)), ((17) | ((17) << 5) | ((17) << 10)) }
    },
    [(126 - 121)] = {
        .pal = gFile_graphics_mail_wave_palette_pal,
        .tiles = gFile_graphics_mail_wave_tiles_sheet,
        .map = gFile_graphics_mail_wave_map_tilemap,
        .size = 0x300,
        .textpals = { ((10) | ((10) << 5) | ((10) << 10)), ((25) | ((25) << 5) | ((25) << 10)) }
    },
    [(127 - 121)] = {
        .pal = gFile_graphics_mail_bead_palette_pal,
        .tiles = gFile_graphics_mail_bead_tiles_sheet,
        .map = gFile_graphics_mail_bead_map_tilemap,
        .size = 0x140,
        .textpals = { ((31) | ((31) << 5) | ((31) << 10)), ((17) | ((17) << 5) | ((17) << 10)) }
    },
    [(128 - 121)] = {
        .pal = gFile_graphics_mail_shadow_palette_pal,
        .tiles = gFile_graphics_mail_shadow_tiles_sheet,
        .map = gFile_graphics_mail_shadow_map_tilemap,
        .size = 0x300,
        .textpals = { ((31) | ((31) << 5) | ((31) << 10)), ((17) | ((17) << 5) | ((17) << 10)) }
    },
    [(129 - 121)] = {
        .pal = gFile_graphics_mail_tropic_palette_pal,
        .tiles = gFile_graphics_mail_tropic_tiles_sheet,
        .map = gFile_graphics_mail_tropic_map_tilemap,
        .size = 0x220,
        .textpals = { ((10) | ((10) << 5) | ((10) << 10)), ((25) | ((25) << 5) | ((25) << 10)) }
    },
    [(130 - 121)] = {
        .pal = gFile_graphics_mail_dream_palette_pal,
        .tiles = gFile_graphics_mail_dream_tiles_sheet,
        .map = gFile_graphics_mail_dream_map_tilemap,
        .size = 0x340,
        .textpals = { ((10) | ((10) << 5) | ((10) << 10)), ((25) | ((25) << 5) | ((25) << 10)) }
    },
    [(131 - 121)] = {
        .pal = gFile_graphics_mail_fab_palette_pal,
        .tiles = gFile_graphics_mail_fab_tiles_sheet,
        .map = gFile_graphics_mail_fab_map_tilemap,
        .size = 0x2a0,
        .textpals = { ((10) | ((10) << 5) | ((10) << 10)), ((25) | ((25) << 5) | ((25) << 10)) }
    },
    [(132 - 121)] = {
        .pal = gFile_graphics_mail_retro_palette_pal,
        .tiles = gFile_graphics_mail_retro_tiles_sheet,
        .map = gFile_graphics_mail_retro_map_tilemap,
        .size = 0x520,
        .textpals = { ((10) | ((10) << 5) | ((10) << 10)), ((25) | ((25) << 5) | ((25) << 10)) }
    }
};

static const struct MailEcWordLayout sLayout_3x3[] = {
    { .numWordsInLine = 3, .lineXoffset = 0, .lineHeight = 16 },
    { .numWordsInLine = 3, .lineXoffset = 0, .lineHeight = 16 },
    { .numWordsInLine = 3, .lineXoffset = 0, .lineHeight = 16 }
};

static const struct MailAttrStruct sMessageLayouts_3x3[] = {
    [(121 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(122 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(123 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(124 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(125 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(126 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(127 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(128 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(129 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(130 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(131 - 121)] = {
     .numRows = 3,
     .nameY = 8,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 4,
     .linesLayout = sLayout_3x3
    },
    [(132 - 121)] = {
     .numRows = 3,
     .nameY = 0,
     .nameX = 0,
     .messageTop = 2,
     .messageLeft = 0,
     .linesLayout = sLayout_3x3
    },
};

static const struct MailEcWordLayout sLayout_5x2[] = {
    { .numWordsInLine = 2, .lineXoffset = 0, .lineHeight = 16 },
    { .numWordsInLine = 2, .lineXoffset = 0, .lineHeight = 16 },
    { .numWordsInLine = 2, .lineXoffset = 0, .lineHeight = 16 },
    { .numWordsInLine = 2, .lineXoffset = 0, .lineHeight = 16 },
    { .numWordsInLine = 1, .lineXoffset = 0, .lineHeight = 16 }
};

static const struct MailAttrStruct sMessageLayouts_5x2[] = {
    [(121 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 8,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(122 - 121)] = {
       .numRows = 5,
       .nameY = 3,
       .nameX = 14,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(123 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 16,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(124 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 14,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(125 - 121)] = {
       .numRows = 5,
       .nameY = 3,
       .nameX = 12,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(126 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 18,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(127 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 20,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(128 - 121)] = {
       .numRows = 5,
       .nameY = 6,
       .nameX = 20,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(129 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 16,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(130 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 14,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(131 - 121)] = {
       .numRows = 5,
       .nameY = 8,
       .nameX = 16,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
    [(132 - 121)] = {
       .numRows = 5,
       .nameY = 0,
       .nameX = 16,
       .messageTop = 3,
       .messageLeft = 8,
       .linesLayout = sLayout_5x2
    },
};

void ReadMail(struct Mail * mail, void (*savedCallback)(void), bool8 messageExists)
{
    u16 sp0;
    u16 species;
    sMailViewResources = AllocZeroed(sizeof(struct MailViewResources));
    sMailViewResources->unused = 2;
    sMailViewResources->mailArrangementType = 1;
    sMailViewResources->copyEasyChatWord = CopyEasyChatWord;
    sMailViewResources->convertEasyChatWordsToString = ConvertEasyChatWordsToString;
    if (((mail->itemId == 121 || mail->itemId == 122 || mail->itemId == 123 || mail->itemId == 124 || mail->itemId == 125 || mail->itemId == 126 || mail->itemId == 127 || mail->itemId == 128 || mail->itemId == 129 || mail->itemId == 130 || mail->itemId == 131 || mail->itemId == 132)))
    {
        sMailViewResources->mailType = (mail->itemId - 121);
    }
    else
    {
        sMailViewResources->mailType = (121 - 121);
        messageExists = 0;
    }
    switch (sMailViewResources->mailArrangementType)
    {
    case 0:
    default:
        sMailViewResources->messageLayout = &sMessageLayouts_3x3[sMailViewResources->mailType];
        break;
    case 1:
        sMailViewResources->messageLayout = &sMessageLayouts_5x2[sMailViewResources->mailType];
        break;
    }
    species = MailSpeciesToSpecies(mail->species, &sp0);
    if (species != 0 && species < 413)
    {
        switch (sMailViewResources->mailType)
        {
        default:
            sMailViewResources->monIconType = MAIL_ICON_NONE;
            break;
        case (127 - 121):
            sMailViewResources->monIconType = MAIL_ICON_BEAD;
            break;
        case (130 - 121):
            sMailViewResources->monIconType = MAIL_ICON_DREAM;
            break;
        }
    }
    else
    {
        sMailViewResources->monIconType = MAIL_ICON_NONE;
    }
    sMailViewResources->mail = mail;
    sMailViewResources->savedCallback = savedCallback;
    sMailViewResources->messageExists = messageExists;
    SetMainCallback2(CB2_InitMailView);
}

static bool8 DoInitMailView(void)
{
    u16 iconId;

    switch (gMain.state)
    {
    case 0:
        SetVBlankCallback(((void *)0));
        ScanlineEffect_Stop();
        SetGpuReg(0x0, 0);
        if (gPlayerPcMenuManager.notInRoom == 0)
            SetHelpContext(34);
        else
            SetHelpContext(30);
        break;
    case 1:
        { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, (void *)0x7000000, 0x00000000 | 0x01000000 | ((0x400)/(16/8) & 0x1FFFFF)); };
        break;
    case 2:
        ResetPaletteFade();
        break;
    case 3:
        ResetTasks();
        break;
    case 4:
        ResetSpriteData();
        break;
    case 5:
        FreeAllSpritePalettes();
        ResetTempTileDataBuffers();
        SetGpuReg(0x10, 0);
        SetGpuReg(0x12, 0);
        SetGpuReg(0x14, 0);
        SetGpuReg(0x16, 0);
        SetGpuReg(0x1a, 0);
        SetGpuReg(0x18, 0);
        SetGpuReg(0x1c, 0);
        SetGpuReg(0x1e, 0);
        SetGpuReg(0x50, 0);
        SetGpuReg(0x52, 0);
        break;
    case 6:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sBgTemplates, (sizeof(sBgTemplates) / sizeof((sBgTemplates)[0])));
        SetBgTilemapBuffer(1, sMailViewResources->bg1TilemapBuffer);
        SetBgTilemapBuffer(2, sMailViewResources->bg2TilemapBuffer);
        break;
    case 7:
        InitWindows(sWindowTemplates);
        DeactivateAllTextPrinters();
        break;
    case 8:
        DecompressAndCopyTileDataToVram(1, sGfxHeaders[sMailViewResources->mailType].tiles, 0, 0x000, 0);
        break;
    case 9:
        if (FreeTempTileDataBuffersIfPossible())
            return 0;
        break;
    case 10:
        FillBgTilemapBufferRect_Palette0(0, 0x000, 0, 0, 30, 20);
        FillBgTilemapBufferRect_Palette0(2, 0x001, 0, 0, 30, 20);
        CopyToBgTilemapBuffer(1, sGfxHeaders[sMailViewResources->mailType].map, 0, 0x000);
        break;
    case 11:
        CopyBgTilemapBufferToVram(0);
        CopyBgTilemapBufferToVram(1);
        CopyBgTilemapBufferToVram(2);
        break;
    case 12:
        LoadPalette(GetTextWindowPalette(0), (0x000 + ((15) * 16)), ((16) * sizeof(u16)));
        gPlttBufferUnfaded[(0x000 + ((15) * 16)) + 10] = sGfxHeaders[sMailViewResources->mailType].textpals[0];
        gPlttBufferFaded[(0x000 + ((15) * 16)) + 10] = sGfxHeaders[sMailViewResources->mailType].textpals[0];
        gPlttBufferUnfaded[(0x000 + ((15) * 16)) + 11] = sGfxHeaders[sMailViewResources->mailType].textpals[1];
        gPlttBufferFaded[(0x000 + ((15) * 16)) + 11] = sGfxHeaders[sMailViewResources->mailType].textpals[1];

        LoadPalette(sGfxHeaders[sMailViewResources->mailType].pal, (0x000 + ((0) * 16)), ((16) * sizeof(u16)));
        gPlttBufferUnfaded[(0x000 + ((0) * 16)) + 10] = sGenderPals[gSaveBlock2Ptr->playerGender][0];
        gPlttBufferFaded[(0x000 + ((0) * 16)) + 10] = sGenderPals[gSaveBlock2Ptr->playerGender][0];
        gPlttBufferUnfaded[(0x000 + ((0) * 16)) + 11] = sGenderPals[gSaveBlock2Ptr->playerGender][1];
        gPlttBufferFaded[(0x000 + ((0) * 16)) + 11] = sGenderPals[gSaveBlock2Ptr->playerGender][1];
        break;
    case 13:
        if (sMailViewResources->messageExists)
            BufferMailMessage();
        break;
    case 14:
        if (sMailViewResources->messageExists)
        {
            AddMailMessagePrinters();
            RunTextPrinters();
        }
        break;
    case 15:
        if (Overworld_LinkRecvQueueLengthMoreThan2() == 1)
            return 0;
        break;
    case 16:
        SetVBlankCallback(VBlankCB_ShowMail);
        gPaletteFade.bufferTransferDisabled = 1;
        break;
    case 17:
        iconId = MailSpeciesToIconSpecies(sMailViewResources->mail->species);
        switch (sMailViewResources->monIconType)
        {
        case MAIL_ICON_BEAD:
            LoadMonIconPalette(iconId);
            sMailViewResources->monIconSpriteId = CreateMonIcon_HandleDeoxys(iconId, SpriteCallbackDummy, 0x60, 0x80, 0, 0);
            break;
        case MAIL_ICON_DREAM:
            LoadMonIconPalette(iconId);
            sMailViewResources->monIconSpriteId = CreateMonIcon_HandleDeoxys(iconId, SpriteCallbackDummy, 0x28, 0x80, 0, 0);
            break;
        }
        break;
    case 18:
        SetGpuReg(0x0, 0x0000 | 0x0040 | 0x1000);
        ShowBg(0);
        ShowBg(1);
        ShowBg(2);
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
        gPaletteFade.bufferTransferDisabled = 0;
        sMailViewResources->showMailCallback = ShowMailCB_WaitFadeIn;
        return 1;
    default:
        return 0;
    }
    gMain.state++;
    return 0;
}

static void CB2_InitMailView(void)
{
    do
    {
        if (DoInitMailView() == 1)
        {
            SetMainCallback2(CB2_RunShowMailCB);
            break;
        }
    } while (MenuHelpers_IsLinkActive() != 1);
}

static void BufferMailMessage(void)
{
    u16 i;
    u8 j = 0;
    for (i = 0; i < sMailViewResources->messageLayout->numRows; i++)
    {
        ConvertEasyChatWordsToString(sMailViewResources->messageLinesBuffer[i], &sMailViewResources->mail->words[j], sMailViewResources->messageLayout->linesLayout[i].numWordsInLine, 1);
        j += sMailViewResources->messageLayout->linesLayout[i].numWordsInLine;
    }
    if (sMailViewResources->mailArrangementType == 0)
    {
        StringCopy(StringCopy(sMailViewResources->authorNameBuffer, sMailViewResources->mail->playerName), gText_From);
        sMailViewResources->nameX = sMailViewResources->messageLayout->nameX + 0x60 - 8 * StringLength(sMailViewResources->authorNameBuffer);
    }
    else
    {
        StringCopy(sMailViewResources->authorNameBuffer, sMailViewResources->mail->playerName);
        if (StringLength(sMailViewResources->authorNameBuffer) < 6)
            ConvertInternationalString(sMailViewResources->authorNameBuffer, 1);
        sMailViewResources->nameX = sMailViewResources->messageLayout->nameX;
    }
}

static void AddMailMessagePrinters(void)
{
    u8 y = 0;
    u16 i;
    u32 width;

    PutWindowTilemap(0);
    PutWindowTilemap(1);
    FillWindowPixelBuffer(0, ((0) | ((0) << 4)));
    FillWindowPixelBuffer(1, ((0) | ((0) << 4)));
    for (i = 0; i < sMailViewResources->messageLayout->numRows; i++)
    {
        if (sMailViewResources->messageLinesBuffer[i][0] != 0xFF && sMailViewResources->messageLinesBuffer[i][0] != 0x00)
        {
            AddTextPrinterParameterized3(0, FONT_NORMAL_COPY_1, sMailViewResources->messageLayout->linesLayout[i].lineXoffset + sMailViewResources->messageLayout->messageLeft, y + sMailViewResources->messageLayout->messageTop, sTextColor, 0, sMailViewResources->messageLinesBuffer[i]);
            y += sMailViewResources->messageLayout->linesLayout[i].lineHeight;
        }
    }
    width = GetStringWidth(FONT_NORMAL_COPY_1, gText_From, 0);
    AddTextPrinterParameterized3(1, FONT_NORMAL_COPY_1, sMailViewResources->nameX, sMailViewResources->messageLayout->nameY, sTextColor, 0, gText_From);
    AddTextPrinterParameterized3(1, FONT_NORMAL_COPY_1, sMailViewResources->nameX + width, sMailViewResources->messageLayout->nameY, sTextColor, 0, sMailViewResources->authorNameBuffer);
    CopyWindowToVram(0, COPYWIN_FULL);
    CopyWindowToVram(1, COPYWIN_FULL);
}

static void VBlankCB_ShowMail(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_RunShowMailCB(void)
{
    if (sMailViewResources->monIconType != MAIL_ICON_NONE)
    {
        AnimateSprites();
        BuildOamBuffer();
    }
    sMailViewResources->showMailCallback();
}

static void ShowMailCB_WaitFadeIn(void)
{
    if (!UpdatePaletteFade())
        sMailViewResources->showMailCallback = ShowMailCB_WaitButton;
}

static void ShowMailCB_WaitButton(void)
{
    if (({(gMain.newKeys) & (0x0001 | 0x0002);}))
    {
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
        sMailViewResources->showMailCallback = ShowMailCB_Teardown;
    }
}

static void ShowMailCB_Teardown(void)
{
    if (!UpdatePaletteFade())
    {
        SetMainCallback2(sMailViewResources->savedCallback);
        switch (sMailViewResources->monIconType)
        {
        case MAIL_ICON_BEAD:
        case MAIL_ICON_DREAM:
            FreeMonIconPalette(MailSpeciesToIconSpecies(sMailViewResources->mail->species));
            DestroyMonIcon(&gSprites[sMailViewResources->monIconSpriteId]);
            break;
        }
        *sMailViewResources = (struct MailViewResources){};
        ResetPaletteFade();
        FreeAllWindowBuffers();
        { Free(sMailViewResources); sMailViewResources = ((void *)0); };
    }
}
