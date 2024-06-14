# 0 "src/event_object_movement.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/event_object_movement.c"
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
# 2 "src/event_object_movement.c" 2
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
# 3 "src/event_object_movement.c" 2
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
# 4 "src/event_object_movement.c" 2
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
# 5 "src/event_object_movement.c" 2
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
# 6 "src/event_object_movement.c" 2
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
# 7 "src/event_object_movement.c" 2
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
# 8 "src/event_object_movement.c" 2
# 1 "include/field_effect_helpers.h" 1
# 10 "include/field_effect_helpers.h"
enum {
    BOB_NONE,
    BOB_PLAYER_AND_MON,
    BOB_MON_ONLY,
};

u8 CreateWarpArrowSprite(void);
void SetSurfBlob_BobState(u8 spriteId, u8 bobState);
void SetSurfBlob_DontSyncAnim(u8 spriteId, bool8 value);
void StartAshFieldEffect(s16, s16, u16, s16);
void StartRevealDisguise(struct ObjectEvent *);
bool8 UpdateRevealDisguise(struct ObjectEvent *);
void SetUpReflection(struct ObjectEvent *, struct Sprite *, u8);
u32 StartFieldEffectForObjectEvent(u8, struct ObjectEvent *);
u8 FindTallGrassFieldEffectSpriteId(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y);
void ShowWarpArrowSprite(u8 spriteId, u8 direction, s16 x, s16 y);
void SetSpriteInvisible(u8 spriteId);
void SetSurfBlob_PlayerOffset(u8 spriteId, bool8 hasOffset, s16 offset);
void UpdateJumpImpactEffect(struct Sprite *sprite);
void UpdateShadowFieldEffect(struct Sprite *sprite);
void UpdateBubblesFieldEffect(struct Sprite *sprite);
void UpdateSparkleFieldEffect(struct Sprite *sprite);
void UpdateTallGrassFieldEffect(struct Sprite *sprite);
void WaitFieldEffectSpriteAnim(struct Sprite *sprite);
void UpdateAshFieldEffect(struct Sprite *sprite);
void UpdateSurfBlobFieldEffect(struct Sprite *sprite);
void UpdateFootprintsTireTracksFieldEffect(struct Sprite *sprite);
void UpdateSplashFieldEffect(struct Sprite *sprite);
void UpdateShortGrassFieldEffect(struct Sprite *sprite);
void UpdateLongGrassFieldEffect(struct Sprite *sprite);
void UpdateSandPileFieldEffect(struct Sprite *sprite);
void UpdateDisguiseFieldEffect(struct Sprite *sprite);
void UpdateHotSpringsWaterFieldEffect(struct Sprite *sprite);
# 9 "src/event_object_movement.c" 2
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
# 10 "src/event_object_movement.c" 2
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
# 11 "src/event_object_movement.c" 2
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
# 12 "src/event_object_movement.c" 2
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
# 13 "src/event_object_movement.c" 2
# 1 "include/quest_log.h" 1




# 1 "include/quest_log_battle.h" 1





void TrySetQuestLogBattleEvent(void);
void TrySetQuestLogLinkBattleEvent(void);
# 6 "include/quest_log.h" 2
# 1 "include/field_control_avatar.h" 1
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
# 14 "src/event_object_movement.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 15 "src/event_object_movement.c" 2
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
# 16 "src/event_object_movement.c" 2
# 1 "include/trainer_see.h" 1





bool8 CheckForTrainersWantingBattle(void);
void MovementAction_RevealTrainer_RunTrainerSeeFuncList(struct ObjectEvent *var);
u8 FldEff_ExclamationMarkIcon1(void);
u8 FldEff_DoubleExclMarkIcon(void);
u8 FldEff_XIcon(void);
u8 FldEff_SmileyFaceIcon(void);
u8 FldEff_QuestionMarkIcon(void);
# 17 "src/event_object_movement.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[];

s16 Sin(s16 index, s16 amplitude);
s16 Cos(s16 index, s16 amplitude);
s16 Sin2(u16 angle);
s16 Cos2(u16 angle);
# 18 "src/event_object_movement.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 1 "include/constants/map_types.h" 1
# 6 "include/constants/maps.h" 2
# 19 "src/event_object_movement.c" 2
# 1 "include/constants/event_object_movement.h" 1
# 20 "src/event_object_movement.c" 2
# 1 "include/constants/event_objects.h" 1
# 21 "src/event_object_movement.c" 2
# 1 "include/constants/trainer_types.h" 1
# 22 "src/event_object_movement.c" 2
# 1 "include/constants/union_room.h" 1
# 23 "src/event_object_movement.c" 2

static void MoveCoordsInDirection(u32, s16 *, s16 *, s16, s16);
static bool8 ObjectEventExecSingleMovementAction(struct ObjectEvent *, struct Sprite *);
static u8 GetCollisionInDirection(struct ObjectEvent *, u8);
static u32 GetCopyDirection(u8, u32, u32);
static void TryEnableObjectEventAnim(struct ObjectEvent *, struct Sprite *);
static void ObjectEventExecHeldMovementAction(struct ObjectEvent *, struct Sprite *);
static void UpdateObjectEventSpriteAnimPause(struct ObjectEvent *, struct Sprite *);
static bool8 IsCoordOutsideObjectEventMovementRange(struct ObjectEvent *, s16, s16);
static bool8 IsMetatileDirectionallyImpassable(struct ObjectEvent *, s16, s16, u8);
static bool8 DoesObjectCollideWithObjectAt(struct ObjectEvent *, s16, s16);
static void CalcWhetherObjectIsOffscreen(struct ObjectEvent *, struct Sprite *);
static void UpdateObjEventSpriteVisibility(struct ObjectEvent *, struct Sprite *);
static void ObjectEventUpdateMetatileBehaviors(struct ObjectEvent *);
static void GetGroundEffectFlags_Reflection(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_TallGrassOnSpawn(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_LongGrassOnSpawn(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_SandHeap(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_ShallowFlowingWater(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_ShortGrass(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_HotSprings(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_TallGrassOnBeginStep(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_LongGrassOnBeginStep(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_Tracks(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_Puddle(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_Ripple(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_Seaweed(struct ObjectEvent *, u32 *);
static void GetGroundEffectFlags_JumpLanding(struct ObjectEvent *, u32 *);
static u8 ObjectEventCheckForReflectiveSurface(struct ObjectEvent *);
static u8 GetReflectionTypeByMetatileBehavior(u32);
static void InitObjectPriorityByElevation(struct Sprite *sprite, u8 elevation);
static void ObjectEventUpdateSubpriority(struct ObjectEvent *, struct Sprite *);
static void DoTracksGroundEffect_None(struct ObjectEvent *, struct Sprite *, u8);
static void DoTracksGroundEffect_Footprints(struct ObjectEvent *, struct Sprite *, u8);
static void DoTracksGroundEffect_BikeTireTracks(struct ObjectEvent *, struct Sprite *, u8);
static void DoRippleFieldEffect(struct ObjectEvent *, struct Sprite *);
static void DoGroundEffects_OnSpawn(struct ObjectEvent *, struct Sprite *);
static void DoGroundEffects_OnBeginStep(struct ObjectEvent *, struct Sprite *);
static void DoGroundEffects_OnFinishStep(struct ObjectEvent *, struct Sprite *);
static void CreateReflectionEffectSprites(void);
static u8 GetObjectEventIdByLocalId(u8);
static u8 GetObjectEventIdByLocalIdAndMapInternal(u8, u8, u8);
static bool8 GetAvailableObjectEventId(u16, u8, u8, u8 *);
static void SetObjectEventDynamicGraphicsId(struct ObjectEvent *);
static void RemoveObjectEventInternal(struct ObjectEvent *);
static u16 GetObjectEventFlagIdByObjectEventId(u8);
static void UpdateObjectEventVisibility(struct ObjectEvent *, struct Sprite *);
static void MakeObjectTemplateFromObjectEventTemplate(const struct ObjectEventTemplate *, struct SpriteTemplate *, const struct SubspriteTable **);
static void GetObjectEventMovingCameraOffset(s16 *, s16 *);
static const struct ObjectEventTemplate *GetObjectEventTemplateByLocalIdAndMap(u8, u8, u8);
static void LoadObjectEventPalette(u16);
static void RemoveObjectEventIfOutsideView(struct ObjectEvent *);
static void SpawnObjectEventOnReturnToField(u8 objectEventId, s16 x, s16 y);
static void SetPlayerAvatarObjectEventIdAndObjectId(u8, u8);
static void ResetObjectEventFldEffData(struct ObjectEvent *);
static u8 TryLoadObjectPalette(const struct SpritePalette *spritePalette);
static u8 FindObjectEventPaletteIndexByTag(u16);
static bool8 ObjectEventDoesElevationMatch(struct ObjectEvent *, u8);
static bool8 IsElevationMismatchAt(u8 elevation, s16 x, s16 y);
static bool8 AreElevationsCompatible(u8 a, u8 b);
static void ObjectCB_CameraObject(struct Sprite *);
static void CameraObject_0(struct Sprite *);
static void CameraObject_1(struct Sprite *);
static void CameraObject_2(struct Sprite *);
static const struct ObjectEventTemplate *FindObjectEventTemplateByLocalId(u8 localId, const struct ObjectEventTemplate *templates, u8 count);
static void ClearObjectEventMovement(struct ObjectEvent *, struct Sprite *);
static void ObjectEventSetSingleMovement(struct ObjectEvent *, struct Sprite *, u8);
static bool8 ShouldInitObjectEventStateFromTemplate(const struct ObjectEventTemplate *, u8, s16, s16);
static bool8 TemplateIsObstacleAndWithinView(const struct ObjectEventTemplate *, s16, s16);
static bool8 TemplateIsObstacleAndVisibleFromConnectingMap(const struct ObjectEventTemplate *, s16, s16);
static void SetHideObstacleFlag(const struct ObjectEventTemplate *);
static bool8 MovementType_Disguise_Callback(struct ObjectEvent *, struct Sprite *);
static bool8 MovementType_Buried_Callback(struct ObjectEvent *, struct Sprite *);
static u8 MovementType_RaiseHandAndStop_Callback(struct ObjectEvent *, struct Sprite *);
static u8 MovementType_RaiseHandAndJump_Callback(struct ObjectEvent *, struct Sprite *);
static u8 MovementType_RaiseHandAndSwim_Callback(struct ObjectEvent *, struct Sprite *);
static void QuestLogObjectEventExecHeldMovementAction(struct ObjectEvent *, struct Sprite *);
static void VirtualObject_UpdateAnim(struct Sprite *sprite);
static void MovementType_None(struct Sprite *);
static void MovementType_LookAround(struct Sprite *);
static void MovementType_WanderAround(struct Sprite *);
static void MovementType_WanderUpAndDown(struct Sprite *);
static void MovementType_WanderLeftAndRight(struct Sprite *);
static void MovementType_FaceDirection(struct Sprite *);
static void MovementType_FaceDownAndUp(struct Sprite *);
static void MovementType_FaceLeftAndRight(struct Sprite *);
static void MovementType_FaceUpAndLeft(struct Sprite *);
static void MovementType_FaceUpAndRight(struct Sprite *);
static void MovementType_FaceDownAndLeft(struct Sprite *);
static void MovementType_FaceDownAndRight(struct Sprite *);
static void MovementType_FaceDownUpAndLeft(struct Sprite *);
static void MovementType_FaceDownUpAndRight(struct Sprite *);
static void MovementType_FaceUpRightAndLeft(struct Sprite *);
static void MovementType_FaceDownRightAndLeft(struct Sprite *);
static void MovementType_RotateCounterclockwise(struct Sprite *);
static void MovementType_RotateClockwise(struct Sprite *);
static void MovementType_WalkBackAndForth(struct Sprite *);
static void MovementType_WalkSequenceUpRightLeftDown(struct Sprite *);
static void MovementType_WalkSequenceRightLeftDownUp(struct Sprite *);
static void MovementType_WalkSequenceDownUpRightLeft(struct Sprite *);
static void MovementType_WalkSequenceLeftDownUpRight(struct Sprite *);
static void MovementType_WalkSequenceUpLeftRightDown(struct Sprite *);
static void MovementType_WalkSequenceLeftRightDownUp(struct Sprite *);
static void MovementType_WalkSequenceDownUpLeftRight(struct Sprite *);
static void MovementType_WalkSequenceRightDownUpLeft(struct Sprite *);
static void MovementType_WalkSequenceLeftUpDownRight(struct Sprite *);
static void MovementType_WalkSequenceUpDownRightLeft(struct Sprite *);
static void MovementType_WalkSequenceRightLeftUpDown(struct Sprite *);
static void MovementType_WalkSequenceDownRightLeftUp(struct Sprite *);
static void MovementType_WalkSequenceRightUpDownLeft(struct Sprite *);
static void MovementType_WalkSequenceUpDownLeftRight(struct Sprite *);
static void MovementType_WalkSequenceLeftRightUpDown(struct Sprite *);
static void MovementType_WalkSequenceDownLeftRightUp(struct Sprite *);
static void MovementType_WalkSequenceUpLeftDownRight(struct Sprite *);
static void MovementType_WalkSequenceDownRightUpLeft(struct Sprite *);
static void MovementType_WalkSequenceLeftDownRightUp(struct Sprite *);
static void MovementType_WalkSequenceRightUpLeftDown(struct Sprite *);
static void MovementType_WalkSequenceUpRightDownLeft(struct Sprite *);
static void MovementType_WalkSequenceDownLeftUpRight(struct Sprite *);
static void MovementType_WalkSequenceLeftUpRightDown(struct Sprite *);
static void MovementType_WalkSequenceRightDownLeftUp(struct Sprite *);
static void MovementType_CopyPlayer(struct Sprite *);
static void MovementType_TreeDisguise(struct Sprite *);
static void MovementType_MountainDisguise(struct Sprite *);
static void MovementType_CopyPlayerInGrass(struct Sprite *);
static void MovementType_Buried(struct Sprite *);
static void MovementType_WalkInPlace(struct Sprite *);
static void MovementType_WalkInPlaceFast(struct Sprite *);
static void MovementType_JogInPlace(struct Sprite *);
static void MovementType_Invisible(struct Sprite *);
static void MovementType_RaiseHandAndStop(struct Sprite *);
static void MovementType_RaiseHandAndJump(struct Sprite *);
static void MovementType_RaiseHandAndSwim(struct Sprite *);
static void MovementType_WanderAroundSlower(struct Sprite *);

enum {
    MOVE_SPEED_NORMAL,
    MOVE_SPEED_FAST_1,
    MOVE_SPEED_FAST_2,
    MOVE_SPEED_FASTER,
    MOVE_SPEED_FASTEST,
};

enum {
    JUMP_DISTANCE_IN_PLACE,
    JUMP_DISTANCE_NORMAL,
    JUMP_DISTANCE_FAR,
};
# 194 "src/event_object_movement.c"
__attribute__((section("ewram_data"))) u8 sCurrentReflectionType = 0;
__attribute__((section("ewram_data"))) u16 sCurrentSpecialObjectPaletteTag = 0;

const u8 gReflectionEffectPaletteMap[16] = {
    [PALSLOT_PLAYER] = PALSLOT_PLAYER_REFLECTION,
    [PALSLOT_PLAYER_REFLECTION] = PALSLOT_PLAYER_REFLECTION,
    [PALSLOT_NPC_1] = PALSLOT_NPC_1_REFLECTION,
    [PALSLOT_NPC_2] = PALSLOT_NPC_2_REFLECTION,
    [PALSLOT_NPC_3] = PALSLOT_NPC_3_REFLECTION,
    [PALSLOT_NPC_4] = PALSLOT_NPC_4_REFLECTION,
    [PALSLOT_NPC_1_REFLECTION] = PALSLOT_NPC_1_REFLECTION,
    [PALSLOT_NPC_2_REFLECTION] = PALSLOT_NPC_2_REFLECTION,
    [PALSLOT_NPC_3_REFLECTION] = PALSLOT_NPC_3_REFLECTION,
    [PALSLOT_NPC_4_REFLECTION] = PALSLOT_NPC_4_REFLECTION,
    [PALSLOT_NPC_SPECIAL] = PALSLOT_NPC_SPECIAL_REFLECTION,
    [PALSLOT_NPC_SPECIAL_REFLECTION] = PALSLOT_NPC_SPECIAL_REFLECTION
};

static const struct SpriteTemplate gCameraSpriteTemplate = {
    .tileTag = 0,
    .paletteTag = 0xFFFF,
    .oam = &gDummyOamData,
    .anims = gDummySpriteAnimTable,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = ObjectCB_CameraObject
};

void (*const gCameraObjectFuncs[])(struct Sprite *) = {
    CameraObject_0,
    CameraObject_1,
    CameraObject_2,
};

# 1 "src/data/object_events/object_event_graphics.h" 1
const u16 gObjectEventPal_Player[] = INCBIN_U16("graphics/object_events/palettes/player.gbapal");
const u16 gObjectEventPal_PlayerUnused[] = INCBIN_U16("graphics/object_events/palettes/player_unused.gbapal");
const u16 gObjectEventPaletteNull1[16] = {};
const u16 gObjectEventPaletteNull2[16] = {};
const u16 gObjectEventPaletteNull3[16] = {};
const u16 gObjectEventPaletteNull4[16] = {};
const u16 gObjectEventPaletteNull5[16] = {};
const u16 gObjectEventPaletteNull6[16] = {};
const u16 gObjectEventPaletteNull7[16] = {};
const u16 gObjectEventPaletteNull8[16] = {};
const u16 gObjectEventPaletteNull9[16] = {};
const u16 gObjectEventPaletteNull10[16] = {};
const u16 gObjectEventPaletteNull11[16] = {};
const u16 gObjectEventPaletteNull12[16] = {};
const u16 gObjectEventPaletteNull13[16] = {};
const u16 gObjectEventPaletteNull14[16] = {};
const u16 gObjectEventPic_RedNormal[] = INCBIN_U16("graphics/object_events/pics/people/red_normal.4bpp");
const u16 gObjectEventPic_RedSurfRun[] = INCBIN_U16("graphics/object_events/pics/people/red_surf_run.4bpp");
const u16 gObjectEventPic_GreenNormal[] = INCBIN_U16("graphics/object_events/pics/people/green_normal.4bpp");
const u16 gObjectEventPic_GreenSurfRun[] = INCBIN_U16("graphics/object_events/pics/people/green_surf_run.4bpp");
const u16 gObjectEventPal_PlayerReflection[] = INCBIN_U16("graphics/object_events/palettes/player_reflection.gbapal");
const u16 gObjectEventPal_BridgeReflection[] = INCBIN_U16("graphics/object_events/palettes/bridge_reflection.gbapal");
const u16 gObjectEventPic_RedItem[] = INCBIN_U16("graphics/object_events/pics/people/red_item.4bpp");
const u16 gObjectEventPic_GreenItem[] = INCBIN_U16("graphics/object_events/pics/people/green_item.4bpp");
const u16 gObjectEventPic_RedSurf[] = INCBIN_U16("graphics/object_events/pics/people/red_surf.4bpp");
const u16 gObjectEventPic_GreenSurf[] = INCBIN_U16("graphics/object_events/pics/people/green_surf.4bpp");
const u16 gObjectEventPic_RedBike[] = INCBIN_U16("graphics/object_events/pics/people/red_bike.4bpp");
const u16 gObjectEventPic_RedVSSeekerBike[] = INCBIN_U16("graphics/object_events/pics/people/red_vs_seeker_bike.4bpp");
const u16 gObjectEventPic_GreenBike[] = INCBIN_U16("graphics/object_events/pics/people/green_bike.4bpp");
const u16 gObjectEventPic_GreenVSSeekerBike[] = INCBIN_U16("graphics/object_events/pics/people/green_vs_seeker_bike.4bpp");
const u16 gObjectEventPic_RSBrendan[] = INCBIN_U16("graphics/object_events/pics/people/rs_brendan.4bpp");
const u16 gObjectEventPic_RSMay[] = INCBIN_U16("graphics/object_events/pics/people/rs_may.4bpp");
const u16 gObjectEventPic_RedFish[] = INCBIN_U16("graphics/object_events/pics/people/red_fish.4bpp");
const u16 gObjectEventPic_GreenFish[] = INCBIN_U16("graphics/object_events/pics/people/green_fish.4bpp");
const u16 gObjectEventPic_Pokedex[] = INCBIN_U16("graphics/object_events/pics/misc/pokedex.4bpp");
const u16 gObjectEventPic_TownMap[] = INCBIN_U16("graphics/object_events/pics/misc/town_map.4bpp");
const u16 gObjectEventPic_UnusedMan[] = INCBIN_U16("graphics/object_events/pics/people/unused_man.4bpp");
const u16 gObjectEventPic_Giovanni[] = INCBIN_U16("graphics/object_events/pics/people/giovanni.4bpp");
const u16 gObjectEventPic_Blaine[] = INCBIN_U16("graphics/object_events/pics/people/blaine.4bpp");
const u16 gObjectEventPic_Sabrina[] = INCBIN_U16("graphics/object_events/pics/people/sabrina.4bpp");
const u16 gObjectEventPic_Daisy[] = INCBIN_U16("graphics/object_events/pics/people/daisy.4bpp");
const u16 gObjectEventPic_Lorelei[] = INCBIN_U16("graphics/object_events/pics/people/lorelei.4bpp");
const u16 gObjectEventPic_Erika[] = INCBIN_U16("graphics/object_events/pics/people/erika.4bpp");
const u16 gObjectEventPic_Koga[] = INCBIN_U16("graphics/object_events/pics/people/koga.4bpp");
const u16 gObjectEventPic_Brock[] = INCBIN_U16("graphics/object_events/pics/people/brock.4bpp");
const u16 gObjectEventPic_LtSurge[] = INCBIN_U16("graphics/object_events/pics/people/lt_surge.4bpp");
const u16 gObjectEventPic_Bill[] = INCBIN_U16("graphics/object_events/pics/people/bill.4bpp");
const u16 gObjectEventPal_NpcBlue[] = INCBIN_U16("graphics/object_events/palettes/npc_blue.gbapal");
const u16 gObjectEventPal_NpcPink[] = INCBIN_U16("graphics/object_events/palettes/npc_pink.gbapal");
const u16 gObjectEventPal_NpcGreen[] = INCBIN_U16("graphics/object_events/palettes/npc_green.gbapal");
const u16 gObjectEventPal_NpcWhite[] = INCBIN_U16("graphics/object_events/palettes/npc_white.gbapal");
const u16 gObjectEventPal_NpcBlueReflection[] = INCBIN_U16("graphics/object_events/palettes/npc_blue_reflection.gbapal");
const u16 gObjectEventPal_NpcPinkReflection[] = INCBIN_U16("graphics/object_events/palettes/npc_pink_reflection.gbapal");
const u16 gObjectEventPal_NpcGreenReflection[] = INCBIN_U16("graphics/object_events/palettes/npc_green_reflection.gbapal");
const u16 gObjectEventPal_NpcWhiteReflection[] = INCBIN_U16("graphics/object_events/palettes/npc_white_reflection.gbapal");
const u16 gObjectEventPic_LittleBoy[] = INCBIN_U16("graphics/object_events/pics/people/little_boy.4bpp");
const u16 gObjectEventPic_LittleGirl[] = INCBIN_U16("graphics/object_events/pics/people/little_girl.4bpp");
const u16 gObjectEventPic_SittingBoy[] = INCBIN_U16("graphics/object_events/pics/people/sitting_boy.4bpp");
const u16 gObjectEventPic_Lass[] = INCBIN_U16("graphics/object_events/pics/people/lass.4bpp");
const u16 gObjectEventPic_Youngster[] = INCBIN_U16("graphics/object_events/pics/people/youngster.4bpp");
const u16 gObjectEventPic_Boy[] = INCBIN_U16("graphics/object_events/pics/people/boy.4bpp");
const u16 gObjectEventPic_Woman1[] = INCBIN_U16("graphics/object_events/pics/people/woman_1.4bpp");
const u16 gObjectEventPic_Woman3[] = INCBIN_U16("graphics/object_events/pics/people/woman_3.4bpp");
const u16 gObjectEventPic_BugCatcher[] = INCBIN_U16("graphics/object_events/pics/people/bug_catcher.4bpp");
const u16 gObjectEventPic_BattleGirl[] = INCBIN_U16("graphics/object_events/pics/people/battle_girl.4bpp");
const u16 gObjectEventPic_RichBoy[] = INCBIN_U16("graphics/object_events/pics/people/rich_boy.4bpp");
const u16 gObjectEventPic_FatMan[] = INCBIN_U16("graphics/object_events/pics/people/fat_man.4bpp");
const u16 gObjectEventPic_BaldingMan[] = INCBIN_U16("graphics/object_events/pics/people/balding_man.4bpp");
const u16 gObjectEventPic_Woman2[] = INCBIN_U16("graphics/object_events/pics/people/woman_2.4bpp");
const u16 gObjectEventPic_OldMan1[] = INCBIN_U16("graphics/object_events/pics/people/old_man_1.4bpp");
const u16 gObjectEventPic_OldManLyingDown[] = INCBIN_U16("graphics/object_events/pics/people/old_man_lying_down.4bpp");
const u16 gObjectEventPic_WorkerM[] = INCBIN_U16("graphics/object_events/pics/people/worker_m.4bpp");
const u16 gObjectEventPic_WorkerF[] = INCBIN_U16("graphics/object_events/pics/people/worker_f.4bpp");
const u16 gObjectEventPic_Beauty[] = INCBIN_U16("graphics/object_events/pics/people/beauty.4bpp");
const u16 gObjectEventPic_Chef[] = INCBIN_U16("graphics/object_events/pics/people/chef.4bpp");
const u16 gObjectEventPic_OldMan2[] = INCBIN_U16("graphics/object_events/pics/people/old_man_2.4bpp");
const u16 gObjectEventPic_OldWoman[] = INCBIN_U16("graphics/object_events/pics/people/old_woman.4bpp");
const u16 gObjectEventPic_Camper[] = INCBIN_U16("graphics/object_events/pics/people/camper.4bpp");
const u16 gObjectEventPic_Picnicker[] = INCBIN_U16("graphics/object_events/pics/people/picnicker.4bpp");
const u16 gObjectEventPic_CooltrainerM[] = INCBIN_U16("graphics/object_events/pics/people/cooltrainer_m.4bpp");
const u16 gObjectEventPic_CooltrainerF[] = INCBIN_U16("graphics/object_events/pics/people/cooltrainer_f.4bpp");
const u16 gObjectEventPic_Psyduck[] = INCBIN_U16("graphics/object_events/pics/pokemon/psyduck.4bpp");
const u16 gObjectEventPic_SuperNerd[] = INCBIN_U16("graphics/object_events/pics/people/super_nerd.4bpp");
const u16 gObjectEventPic_Channeler[] = INCBIN_U16("graphics/object_events/pics/people/channeler.4bpp");
const u16 gObjectEventPic_RocketF[] = INCBIN_U16("graphics/object_events/pics/people/rocket_f.4bpp");
const u16 gObjectEventPic_SwimmerMWater[] = INCBIN_U16("graphics/object_events/pics/people/swimmer_m_water.4bpp");
const u16 gObjectEventPic_SwimmerFWater[] = INCBIN_U16("graphics/object_events/pics/people/swimmer_f_water.4bpp");
const u16 gObjectEventPic_SwimmerMLand[] = INCBIN_U16("graphics/object_events/pics/people/swimmer_m_land.4bpp");
const u16 gObjectEventPic_SwimmerFLand[] = INCBIN_U16("graphics/object_events/pics/people/swimmer_f_land.4bpp");
const u16 gObjectEventPic_Blackbelt[] = INCBIN_U16("graphics/object_events/pics/people/blackbelt.4bpp");
const u16 gObjectEventPic_Scientist[] = INCBIN_U16("graphics/object_events/pics/people/scientist.4bpp");
const u16 gObjectEventPic_Gentleman[] = INCBIN_U16("graphics/object_events/pics/people/gentleman.4bpp");
const u16 gObjectEventPic_Sailor[] = INCBIN_U16("graphics/object_events/pics/people/sailor.4bpp");
const u16 gObjectEventPic_Captain[] = INCBIN_U16("graphics/object_events/pics/people/captain.4bpp");
const u16 gObjectEventPic_Fisher[] = INCBIN_U16("graphics/object_events/pics/people/fisher.4bpp");
const u16 gObjectEventPic_TeachyTVHost[] = INCBIN_U16("graphics/object_events/pics/people/teachy_tv_host.4bpp");
const u16 gObjectEventPic_UnusedWoman[] = INCBIN_U16("graphics/object_events/pics/people/unused_woman.4bpp");
const u16 gObjectEventPic_TuberF[] = INCBIN_U16("graphics/object_events/pics/people/tuber_f.4bpp");
const u16 gObjectEventPic_TuberMWater[] = INCBIN_U16("graphics/object_events/pics/people/tuber_m_water.4bpp");
const u16 gObjectEventPic_TuberMLand[] = INCBIN_U16("graphics/object_events/pics/people/tuber_m_land.4bpp");
const u16 gObjectEventPic_Hiker[] = INCBIN_U16("graphics/object_events/pics/people/hiker.4bpp");
const u16 gObjectEventPic_Biker[] = INCBIN_U16("graphics/object_events/pics/people/biker.4bpp");
const u16 gObjectEventPic_GymGuy[] = INCBIN_U16("graphics/object_events/pics/people/gym_guy.4bpp");
const u16 gObjectEventPic_Man[] = INCBIN_U16("graphics/object_events/pics/people/man.4bpp");
const u16 gObjectEventPic_Rocker[] = INCBIN_U16("graphics/object_events/pics/people/rocker.4bpp");
const u16 gObjectEventPic_ProfOak[] = INCBIN_U16("graphics/object_events/pics/people/prof_oak.4bpp");
const u16 gObjectEventPic_Blue[] = INCBIN_U16("graphics/object_events/pics/people/blue.4bpp");
const u16 gObjectEventPic_Nurse[] = INCBIN_U16("graphics/object_events/pics/people/nurse.4bpp");
const u16 gObjectEventPic_CableClubReceptionist[] = INCBIN_U16("graphics/object_events/pics/people/cable_club_receptionist.4bpp");
const u16 gObjectEventPic_UnionRoomReceptionist[] = INCBIN_U16("graphics/object_events/pics/people/union_room_receptionist.4bpp");
const u16 gObjectEventPic_UnusedMaleReceptionist[] = INCBIN_U16("graphics/object_events/pics/people/unused_male_receptionist.4bpp");
const u16 gObjectEventPic_ItemBall[] = INCBIN_U16("graphics/object_events/pics/misc/item_ball.4bpp");
const u16 gObjectEventPic_MrFuji[] = INCBIN_U16("graphics/object_events/pics/people/mr_fuji.4bpp");
const u16 gObjectEventPic_Bruno[] = INCBIN_U16("graphics/object_events/pics/people/bruno.4bpp");
const u16 gObjectEventPic_Clerk[] = INCBIN_U16("graphics/object_events/pics/people/clerk.4bpp");
const u16 gObjectEventPic_MGDeliveryman[] = INCBIN_U16("graphics/object_events/pics/people/mg_deliveryman.4bpp");
const u16 gObjectEventPic_TrainerTowerDude[] = INCBIN_U16("graphics/object_events/pics/people/trainer_tower_dude.4bpp");
const u16 gObjectEventPic_Cameraman[] = INCBIN_U16("graphics/object_events/pics/people/cameraman.4bpp");
const u16 gObjectEventPic_RocketM[] = INCBIN_U16("graphics/object_events/pics/people/rocket_m.4bpp");
const u16 gObjectEventPic_Celio[] = INCBIN_U16("graphics/object_events/pics/people/celio.4bpp");
const u16 gObjectEventPic_Lapras[] = INCBIN_U16("graphics/object_events/pics/pokemon/lapras.4bpp");
const u16 gObjectEventPic_Zapdos[] = INCBIN_U16("graphics/object_events/pics/pokemon/zapdos.4bpp");
const u16 gObjectEventPic_Moltres[] = INCBIN_U16("graphics/object_events/pics/pokemon/moltres.4bpp");
const u16 gObjectEventPic_Articuno[] = INCBIN_U16("graphics/object_events/pics/pokemon/articuno.4bpp");
const u16 gObjectEventPic_Mewtwo[] = INCBIN_U16("graphics/object_events/pics/pokemon/mewtwo.4bpp");
const u16 gObjectEventPic_Mew[] = INCBIN_U16("graphics/object_events/pics/pokemon/mew.4bpp");
const u16 gObjectEventPic_Entei[] = INCBIN_U16("graphics/object_events/pics/pokemon/entei.4bpp");
const u16 gObjectEventPic_Raikou[] = INCBIN_U16("graphics/object_events/pics/pokemon/raikou.4bpp");
const u16 gObjectEventPic_Suicune[] = INCBIN_U16("graphics/object_events/pics/pokemon/suicune.4bpp");
const u16 gObjectEventPic_Lugia[] = INCBIN_U16("graphics/object_events/pics/pokemon/lugia.4bpp");
const u16 gObjectEventPic_HoOh[] = INCBIN_U16("graphics/object_events/pics/pokemon/ho_oh.4bpp");
const u16 gObjectEventPic_Celebi[] = INCBIN_U16("graphics/object_events/pics/pokemon/celebi.4bpp");
const u16 gObjectEventPic_DeoxysD[] = INCBIN_U16("graphics/object_events/pics/pokemon/deoxys_d.4bpp");
const u16 gObjectEventPic_DeoxysA[] = INCBIN_U16("graphics/object_events/pics/pokemon/deoxys_a.4bpp");
const u16 gObjectEventPic_DeoxysN[] = INCBIN_U16("graphics/object_events/pics/pokemon/deoxys_n.4bpp");
const u16 gObjectEventPic_Agatha[] = INCBIN_U16("graphics/object_events/pics/people/agatha.4bpp");
const u16 gObjectEventPic_Misty[] = INCBIN_U16("graphics/object_events/pics/people/misty.4bpp");
const u16 gObjectEventPic_Lance[] = INCBIN_U16("graphics/object_events/pics/people/lance.4bpp");
const u16 gObjectEventPic_GBAKid[] = INCBIN_U16("graphics/object_events/pics/people/gba_kid.4bpp");
const u16 gObjectEventPic_Mom[] = INCBIN_U16("graphics/object_events/pics/people/mom.4bpp");
const u16 gObjectEventPic_Pidgeot[] = INCBIN_U16("graphics/object_events/pics/pokemon/pidgeot.4bpp");
const u16 gObjectEventPic_Omanyte[] = INCBIN_U16("graphics/object_events/pics/pokemon/omanyte.4bpp");
const u16 gObjectEventPic_Kangaskhan[] = INCBIN_U16("graphics/object_events/pics/pokemon/kangaskhan.4bpp");
const u16 gObjectEventPic_NidoranF[] = INCBIN_U16("graphics/object_events/pics/pokemon/nidoran_f.4bpp");
const u16 gObjectEventPic_NidoranM[] = INCBIN_U16("graphics/object_events/pics/pokemon/nidoran_m.4bpp");
const u16 gObjectEventPic_Nidorino[] = INCBIN_U16("graphics/object_events/pics/pokemon/nidorino.4bpp");
const u16 gObjectEventPic_Meowth[] = INCBIN_U16("graphics/object_events/pics/pokemon/meowth.4bpp");
const u16 gObjectEventPic_Seel[] = INCBIN_U16("graphics/object_events/pics/pokemon/seel.4bpp");
const u16 gObjectEventPic_Voltorb[] = INCBIN_U16("graphics/object_events/pics/pokemon/voltorb.4bpp");
const u16 gObjectEventPic_Slowpoke[] = INCBIN_U16("graphics/object_events/pics/pokemon/slowpoke.4bpp");
const u16 gObjectEventPic_Slowbro[] = INCBIN_U16("graphics/object_events/pics/pokemon/slowbro.4bpp");
const u16 gObjectEventPic_Machop[] = INCBIN_U16("graphics/object_events/pics/pokemon/machop.4bpp");
const u16 gObjectEventPic_Wigglytuff[] = INCBIN_U16("graphics/object_events/pics/pokemon/wigglytuff.4bpp");
const u16 gObjectEventPic_Doduo[] = INCBIN_U16("graphics/object_events/pics/pokemon/doduo.4bpp");
const u16 gObjectEventPic_Fearow[] = INCBIN_U16("graphics/object_events/pics/pokemon/fearow.4bpp");
const u16 gObjectEventPic_Kabuto[] = INCBIN_U16("graphics/object_events/pics/pokemon/kabuto.4bpp");
const u16 gObjectEventPic_Machoke[] = INCBIN_U16("graphics/object_events/pics/pokemon/machoke.4bpp");
const u16 gObjectEventPic_Snorlax[] = INCBIN_U16("graphics/object_events/pics/pokemon/snorlax.4bpp");
const u16 gObjectEventPic_Spearow[] = INCBIN_U16("graphics/object_events/pics/pokemon/spearow.4bpp");
const u16 gObjectEventPic_Cubone[] = INCBIN_U16("graphics/object_events/pics/pokemon/cubone.4bpp");
const u16 gObjectEventPic_Poliwrath[] = INCBIN_U16("graphics/object_events/pics/pokemon/poliwrath.4bpp");
const u16 gObjectEventPic_Chansey[] = INCBIN_U16("graphics/object_events/pics/pokemon/chansey.4bpp");
const u16 gObjectEventPic_Pikachu[] = INCBIN_U16("graphics/object_events/pics/pokemon/pikachu.4bpp");
const u16 gObjectEventPic_Jigglypuff[] = INCBIN_U16("graphics/object_events/pics/pokemon/jigglypuff.4bpp");
const u16 gObjectEventPic_Pidgey[] = INCBIN_U16("graphics/object_events/pics/pokemon/pidgey.4bpp");
const u16 gObjectEventPic_Clefairy[] = INCBIN_U16("graphics/object_events/pics/pokemon/clefairy.4bpp");
const u16 gObjectEventPic_CutTree[] = INCBIN_U16("graphics/object_events/pics/misc/cut_tree.4bpp");
const u16 gObjectEventPic_RockSmashRock[] = INCBIN_U16("graphics/object_events/pics/misc/rock_smash_rock.4bpp");
const u16 gObjectEventPic_StrengthBoulder[] = INCBIN_U16("graphics/object_events/pics/misc/strength_boulder.4bpp");
const u16 gObjectEventPic_Fossil[] = INCBIN_U16("graphics/object_events/pics/misc/fossil.4bpp");
const u16 gObjectEventPic_Ruby[] = INCBIN_U16("graphics/object_events/pics/misc/ruby.4bpp");
const u16 gObjectEventPic_Sapphire[] = INCBIN_U16("graphics/object_events/pics/misc/sapphire.4bpp");
const u16 gObjectEventPic_OldAmber[] = INCBIN_U16("graphics/object_events/pics/misc/old_amber.4bpp");
const u16 gObjectEventPic_GymSign[] = INCBIN_U16("graphics/object_events/pics/misc/gym_sign.4bpp");
const u16 gObjectEventPic_Sign[] = INCBIN_U16("graphics/object_events/pics/misc/sign.4bpp");
const u16 gObjectEventPic_WoodenSign[] = INCBIN_U16("graphics/object_events/pics/misc/wooden_sign.4bpp");
const u16 gObjectEventPic_Clipboard[] = INCBIN_U16("graphics/object_events/pics/misc/clipboard.4bpp");
const u16 gObjectEventPal_Meteorite[] = INCBIN_U16("graphics/object_events/palettes/meteorite.gbapal");
const u16 gObjectEventPic_BirthIslandStone[] = INCBIN_U16("graphics/object_events/pics/misc/birth_island_stone.4bpp");
const u16 gObjectEventPic_LaprasDoll[] = INCBIN_U16("graphics/object_events/pics/misc/lapras_doll.4bpp");
const u16 gObjectEventPal_Seagallop[] = INCBIN_U16("graphics/object_events/palettes/seagallop.gbapal");
const u16 gObjectEventPic_Seagallop[] = INCBIN_U16("graphics/object_events/pics/misc/seagallop.4bpp");
const u16 gObjectEventPal_SSAnne[] = INCBIN_U16("graphics/object_events/palettes/ss_anne.gbapal");
const u16 gObjectEventPic_SSAnne[] = INCBIN_U16("graphics/object_events/pics/misc/ss_anne.4bpp");
const u16 gObjectEventPic_SurfBlob[] = INCBIN_U16("graphics/object_events/pics/misc/surf_blob.4bpp");
const u16 gObjectEventPic_Policeman[] = INCBIN_U16("graphics/object_events/pics/people/policeman.4bpp");
const u16 gObjectEventPal_RSQuintyPlump[] = INCBIN_U16("graphics/object_events/palettes/rs_quinty_plump.gbapal");
const u16 gObjectEventPal_RSQuintyPlumpReflection[] = INCBIN_U16("graphics/object_events/palettes/rs_quinty_plump_reflection.gbapal");
const u16 gFieldEffectObjectPic_ShadowSmall[] = INCBIN_U16("graphics/field_effects/pics/shadow_small.4bpp");
const u16 gFieldEffectObjectPic_ShadowMedium[] = INCBIN_U16("graphics/field_effects/pics/shadow_medium.4bpp");
const u16 gFieldEffectObjectPic_ShadowLarge[] = INCBIN_U16("graphics/field_effects/pics/shadow_large.4bpp");
const u16 gFieldEffectObjectPic_ShadowExtraLarge[] = INCBIN_U16("graphics/field_effects/pics/shadow_extra_large.4bpp");
const u16 sFiller1[0x90] = {};
const u16 gFieldEffectObjectPic_CutGrass[] = INCBIN_U16("graphics/field_effects/fldeff_cut.4bpp");
const u16 gFieldEffectObjectPic_CutGrass2[] = INCBIN_U16("graphics/field_effects/fldeff_cut.4bpp");
const u16 gFieldEffectPal_CutGrass[] = INCBIN_U16("graphics/field_effects/fldeff_cut.gbapal");
const u16 gFieldEffectObjectPic_Ripple[] = INCBIN_U16("graphics/field_effects/pics/ripple.4bpp");
const u16 gFieldEffectObjectPic_Ash[] = INCBIN_U16("graphics/field_effects/pics/ash.4bpp");
const u16 gFieldEffectObjectPic_Arrow[] = INCBIN_U16("graphics/field_effects/pics/arrow.4bpp");
const u16 gFieldEffectObjectPalette0[] = INCBIN_U16("graphics/field_effects/palettes/general_0.gbapal");
const u16 gFieldEffectObjectPalette1[] = INCBIN_U16("graphics/field_effects/palettes/general_1.gbapal");
const u16 sFiller2[0x10] = {};
const u16 gFieldEffectObjectPic_GroundImpactDust[] = INCBIN_U16("graphics/field_effects/pics/ground_impact_dust.4bpp");
const u16 gFieldEffectObjectPic_UnusedGrass3[] = INCBIN_U16("graphics/field_effects/pics/unused_grass_3.4bpp");
const u16 gFieldEffectObjectPic_JumpTallGrass[] = INCBIN_U16("graphics/field_effects/pics/jump_tall_grass.4bpp");
const u16 gFieldEffectObjectPic_UnusedGrass4[] = INCBIN_U16("graphics/field_effects/pics/unused_grass_4.4bpp");
const u16 gFieldEffectObjectPic_JumpLongGrass[] = INCBIN_U16("graphics/field_effects/pics/jump_long_grass.4bpp");
const u16 gFieldEffectObjectPic_UnusedGrass[] = INCBIN_U16("graphics/field_effects/pics/unused_grass.4bpp");
const u16 gFieldEffectObjectPic_UnusedGrass2[] = INCBIN_U16("graphics/field_effects/pics/unused_grass_2.4bpp");
const u16 gFieldEffectObjectPic_LongGrass[] = INCBIN_U16("graphics/field_effects/pics/long_grass.4bpp");
const u16 gFieldEffectObjectPic_TallGrass[] = INCBIN_U16("graphics/field_effects/pics/tall_grass.4bpp");
const u16 gFieldEffectObjectPic_ShortGrass[] = INCBIN_U16("graphics/field_effects/pics/short_grass.4bpp");
const u16 gFieldEffectObjectPic_SandFootprints[] = INCBIN_U16("graphics/field_effects/pics/sand_footprints.4bpp");
const u16 gFieldEffectObjectPic_DeepSandFootprints[] = INCBIN_U16("graphics/field_effects/pics/deep_sand_footprints.4bpp");
const u16 gFieldEffectObjectPic_BikeTireTracks[] = INCBIN_U16("graphics/field_effects/pics/bike_tire_tracks.4bpp");
const u16 gFieldEffectObjectPic_UnusedSand[] = INCBIN_U16("graphics/field_effects/pics/unused_sand.4bpp");
const u16 gFieldEffectObjectPic_SandPile[] = INCBIN_U16("graphics/field_effects/pics/sand_pile.4bpp");
const u16 gFieldEffectObjectPic_JumpBigSplash[] = INCBIN_U16("graphics/field_effects/pics/jump_big_splash.4bpp");
const u16 gFieldEffectObjectPic_Splash[] = INCBIN_U16("graphics/field_effects/pics/splash.4bpp");
const u16 gFieldEffectObjectPic_JumpSmallSplash[] = INCBIN_U16("graphics/field_effects/pics/jump_small_splash.4bpp");
const u16 gFieldEffectObjectPic_WaterSurfacing[] = INCBIN_U16("graphics/field_effects/pics/water_surfacing.4bpp");
const u16 gFieldEffectObjectPic_TreeDisguise[] = INCBIN_U16("graphics/field_effects/pics/tree_disguise.4bpp");
const u16 gFieldEffectObjectPic_MountainDisguise[] = INCBIN_U16("graphics/field_effects/pics/mountain_disguise.4bpp");
const u16 gFieldEffectObjectPic_SandDisguisePlaceholder[] = INCBIN_U16("graphics/field_effects/pics/sand_disguise.4bpp");
const u16 gFieldEffectObjectPic_HotSpringsWater[] = INCBIN_U16("graphics/field_effects/pics/hot_springs_water.4bpp");
const u16 gFieldEffectPal_Ash[] = INCBIN_U16("graphics/field_effects/palettes/ash.gbapal");
const u16 gFieldEffectObjectPic_AshPuff[] = INCBIN_U16("graphics/field_effects/pics/pop_out_of_ash.4bpp");
const u16 gFieldEffectObjectPic_AshLaunch[] = INCBIN_U16("graphics/field_effects/pics/lavaridge_warp.4bpp");
const u16 gFieldEffectObjectPic_Bubbles[] = INCBIN_U16("graphics/field_effects/pics/underwater_bubbles.4bpp");
const u16 gFieldEffectObjectPic_SmallSparkle[] = INCBIN_U16("graphics/field_effects/pics/small_sparkle.4bpp");
const u16 gFieldEffectPal_SmallSparkle[] = INCBIN_U16("graphics/field_effects/palettes/small_sparkle.gbapal");
const u16 gFieldEffectObjectPic_Bird[] = INCBIN_U16("graphics/field_effects/pics/bird.4bpp");
# 229 "src/event_object_movement.c" 2

static void (*const sMovementTypeCallbacks[0x51])(struct Sprite *) = {
    [0x0] = MovementType_None,
    [0x1] = MovementType_LookAround,
    [0x2] = MovementType_WanderAround,
    [0x3] = MovementType_WanderUpAndDown,
    [0x4] = MovementType_WanderUpAndDown,
    [0x5] = MovementType_WanderLeftAndRight,
    [0x6] = MovementType_WanderLeftAndRight,
    [0x7] = MovementType_FaceDirection,
    [0x8] = MovementType_FaceDirection,
    [0x9] = MovementType_FaceDirection,
    [0xA] = MovementType_FaceDirection,
    [0xB] = MovementType_Player,
    [0xC] = ((void *)0),
    [0xD] = MovementType_FaceDownAndUp,
    [0xE] = MovementType_FaceLeftAndRight,
    [0xF] = MovementType_FaceUpAndLeft,
    [0x10] = MovementType_FaceUpAndRight,
    [0x11] = MovementType_FaceDownAndLeft,
    [0x12] = MovementType_FaceDownAndRight,
    [0x13] = MovementType_FaceDownUpAndLeft,
    [0x14] = MovementType_FaceDownUpAndRight,
    [0x15] = MovementType_FaceUpRightAndLeft,
    [0x16] = MovementType_FaceDownRightAndLeft,
    [0x17] = MovementType_RotateCounterclockwise,
    [0x18] = MovementType_RotateClockwise,
    [0x19] = MovementType_WalkBackAndForth,
    [0x1A] = MovementType_WalkBackAndForth,
    [0x1B] = MovementType_WalkBackAndForth,
    [0x1C] = MovementType_WalkBackAndForth,
    [0x1D] = MovementType_WalkSequenceUpRightLeftDown,
    [0x1E] = MovementType_WalkSequenceRightLeftDownUp,
    [0x1F] = MovementType_WalkSequenceDownUpRightLeft,
    [0x20] = MovementType_WalkSequenceLeftDownUpRight,
    [0x21] = MovementType_WalkSequenceUpLeftRightDown,
    [0x22] = MovementType_WalkSequenceLeftRightDownUp,
    [0x23] = MovementType_WalkSequenceDownUpLeftRight,
    [0x24] = MovementType_WalkSequenceRightDownUpLeft,
    [0x25] = MovementType_WalkSequenceLeftUpDownRight,
    [0x26] = MovementType_WalkSequenceUpDownRightLeft,
    [0x27] = MovementType_WalkSequenceRightLeftUpDown,
    [0x28] = MovementType_WalkSequenceDownRightLeftUp,
    [0x29] = MovementType_WalkSequenceRightUpDownLeft,
    [0x2A] = MovementType_WalkSequenceUpDownLeftRight,
    [0x2B] = MovementType_WalkSequenceLeftRightUpDown,
    [0x2C] = MovementType_WalkSequenceDownLeftRightUp,
    [0x2D] = MovementType_WalkSequenceUpLeftDownRight,
    [0x2E] = MovementType_WalkSequenceDownRightUpLeft,
    [0x2F] = MovementType_WalkSequenceLeftDownRightUp,
    [0x30] = MovementType_WalkSequenceRightUpLeftDown,
    [0x31] = MovementType_WalkSequenceUpRightDownLeft,
    [0x32] = MovementType_WalkSequenceDownLeftUpRight,
    [0x33] = MovementType_WalkSequenceLeftUpRightDown,
    [0x34] = MovementType_WalkSequenceRightDownLeftUp,
    [0x35] = MovementType_CopyPlayer,
    [0x36] = MovementType_CopyPlayer,
    [0x37] = MovementType_CopyPlayer,
    [0x38] = MovementType_CopyPlayer,
    [0x39] = MovementType_TreeDisguise,
    [0x3A] = MovementType_MountainDisguise,
    [0x3B] = MovementType_CopyPlayerInGrass,
    [0x3C] = MovementType_CopyPlayerInGrass,
    [0x3D] = MovementType_CopyPlayerInGrass,
    [0x3E] = MovementType_CopyPlayerInGrass,
    [0x3F] = MovementType_Buried,
    [0x40] = MovementType_WalkInPlace,
    [0x41] = MovementType_WalkInPlace,
    [0x42] = MovementType_WalkInPlace,
    [0x43] = MovementType_WalkInPlace,
    [0x44] = MovementType_WalkInPlaceFast,
    [0x45] = MovementType_WalkInPlaceFast,
    [0x46] = MovementType_WalkInPlaceFast,
    [0x47] = MovementType_WalkInPlaceFast,
    [0x48] = MovementType_JogInPlace,
    [0x49] = MovementType_JogInPlace,
    [0x4A] = MovementType_JogInPlace,
    [0x4B] = MovementType_JogInPlace,
    [0x4C] = MovementType_Invisible,
    [0x4D] = MovementType_RaiseHandAndStop,
    [0x4E] = MovementType_RaiseHandAndJump,
    [0x4F] = MovementType_RaiseHandAndSwim,
    [0x50] = MovementType_WanderAroundSlower,
};

static const bool8 gRangedMovementTypes[0x51] = {
    [0x2] = 1,
    [0x3] = 1,
    [0x4] = 1,
    [0x5] = 1,
    [0x6] = 1,
    [0x19] = 1,
    [0x1A] = 1,
    [0x1B] = 1,
    [0x1C] = 1,
    [0x1D] = 1,
    [0x1E] = 1,
    [0x1F] = 1,
    [0x20] = 1,
    [0x21] = 1,
    [0x22] = 1,
    [0x23] = 1,
    [0x24] = 1,
    [0x25] = 1,
    [0x26] = 1,
    [0x27] = 1,
    [0x28] = 1,
    [0x29] = 1,
    [0x2A] = 1,
    [0x2B] = 1,
    [0x2C] = 1,
    [0x2D] = 1,
    [0x2E] = 1,
    [0x2F] = 1,
    [0x30] = 1,
    [0x31] = 1,
    [0x32] = 1,
    [0x33] = 1,
    [0x34] = 1,
    [0x35] = 1,
    [0x36] = 1,
    [0x37] = 1,
    [0x38] = 1,
    [0x3B] = 1,
    [0x3C] = 1,
    [0x3D] = 1,
    [0x3E] = 1,
    [0x50] = 1,
};

static const u8 gInitialMovementTypeFacingDirections[0x51] = {
    [0x0] = 1,
    [0x1] = 1,
    [0x2] = 1,
    [0x3] = 2,
    [0x4] = 1,
    [0x5] = 3,
    [0x6] = 4,
    [0x7] = 2,
    [0x8] = 1,
    [0x9] = 3,
    [0xA] = 4,
    [0xB] = 1,
    [0xC] = 1,
    [0xD] = 1,
    [0xE] = 3,
    [0xF] = 2,
    [0x10] = 2,
    [0x11] = 1,
    [0x12] = 1,
    [0x13] = 1,
    [0x14] = 1,
    [0x15] = 2,
    [0x16] = 1,
    [0x17] = 1,
    [0x18] = 1,
    [0x19] = 2,
    [0x1A] = 1,
    [0x1B] = 3,
    [0x1C] = 4,
    [0x1D] = 2,
    [0x1E] = 4,
    [0x1F] = 1,
    [0x20] = 3,
    [0x21] = 2,
    [0x22] = 3,
    [0x23] = 1,
    [0x24] = 4,
    [0x25] = 3,
    [0x26] = 2,
    [0x27] = 4,
    [0x28] = 1,
    [0x29] = 4,
    [0x2A] = 2,
    [0x2B] = 3,
    [0x2C] = 1,
    [0x2D] = 2,
    [0x2E] = 1,
    [0x2F] = 3,
    [0x30] = 4,
    [0x31] = 2,
    [0x32] = 1,
    [0x33] = 3,
    [0x34] = 4,
    [0x35] = 2,
    [0x36] = 1,
    [0x37] = 3,
    [0x38] = 4,
    [0x39] = 1,
    [0x3A] = 1,
    [0x3B] = 2,
    [0x3C] = 1,
    [0x3D] = 3,
    [0x3E] = 4,
    [0x3F] = 1,
    [0x40] = 1,
    [0x41] = 2,
    [0x42] = 3,
    [0x43] = 4,
    [0x44] = 1,
    [0x45] = 2,
    [0x46] = 3,
    [0x47] = 4,
    [0x48] = 1,
    [0x49] = 2,
    [0x4A] = 3,
    [0x4B] = 4,
    [0x4C] = 1,
    [0x4D] = 1,
    [0x4E] = 1,
    [0x4F] = 1,
    [0x50] = 1,
};
# 473 "src/event_object_movement.c"
# 1 "src/data/object_events/object_event_graphics_info_pointers.h" 1
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedNormal;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedSurf;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedFieldMove;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedFish;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedVSSeeker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedVSSeekerBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenNormal;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenSurf;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenFieldMove;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenFish;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenVSSeeker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenVSSeekerBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RSBrendan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RSMay;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleBoy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleGirl;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Youngster;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BugCatcher;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SittingBoy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lass;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BattleGirl;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Rocker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_FatMan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Beauty;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BaldingMan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman3;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldMan1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldMan2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldManLyingDown;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldWoman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberMWater;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberMLand;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Camper;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Picnicker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CooltrainerM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CooltrainerF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerMWater;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerFWater;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerMLand;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerFLand;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WorkerM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WorkerF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RocketM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RocketF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GBAKid;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SuperNerd;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Biker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Blackbelt;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scientist;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Hiker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fisher;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Channeler;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Chef;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Policeman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Gentleman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sailor;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Captain;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Nurse;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CableClubReceptionist;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnionRoomReceptionist;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMaleReceptionist;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Clerk;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MGDeliveryman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TrainerTowerDude;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ProfOak;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Blue;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Bill;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lance;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Agatha;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Daisy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lorelei;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MrFuji;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Bruno;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Brock;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Misty;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LtSurge;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Erika;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Koga;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sabrina;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Blaine;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Giovanni;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mom;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Celio;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TeachyTVHost;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GymGuy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ItemBall;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TownMap;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pokedex;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CutTree;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RockSmashRock;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_StrengthBoulder;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fossil;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Ruby;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sapphire;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldAmber;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GymSign;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sign;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TrainerTips;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Clipboard;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Meteorite;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LaprasDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Seagallop;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Snorlax;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Spearow;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Cubone;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Poliwrath;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Clefairy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pidgeot;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Jigglypuff;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pidgey;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Chansey;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Omanyte;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kangaskhan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pikachu;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Psyduck;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_NidoranF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_NidoranM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Nidorino;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Meowth;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Seel;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Voltorb;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Slowpoke;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Slowbro;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Machop;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wigglytuff;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Doduo;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fearow;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Machoke;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lapras;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Zapdos;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Moltres;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Articuno;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mewtwo;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mew;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Entei;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Suicune;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Raikou;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lugia;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HoOh;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Celebi;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kabuto;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DeoxysD;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DeoxysA;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DeoxysN;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SSAnne;


const struct ObjectEventGraphicsInfo *const gObjectEventGraphicsInfoPointers[152] = {
    [0] = &gObjectEventGraphicsInfo_RedNormal,
    [1] = &gObjectEventGraphicsInfo_RedBike,
    [2] = &gObjectEventGraphicsInfo_RedSurf,
    [3] = &gObjectEventGraphicsInfo_RedFieldMove,
    [4] = &gObjectEventGraphicsInfo_RedFish,
    [5] = &gObjectEventGraphicsInfo_RedVSSeeker,
    [6] = &gObjectEventGraphicsInfo_RedVSSeekerBike,
    [7] = &gObjectEventGraphicsInfo_GreenNormal,
    [8] = &gObjectEventGraphicsInfo_GreenBike,
    [9] = &gObjectEventGraphicsInfo_GreenSurf,
    [10] = &gObjectEventGraphicsInfo_GreenFieldMove,
    [11] = &gObjectEventGraphicsInfo_GreenFish,
    [12] = &gObjectEventGraphicsInfo_GreenVSSeeker,
    [13] = &gObjectEventGraphicsInfo_GreenVSSeekerBike,
    [14] = &gObjectEventGraphicsInfo_RSBrendan,
    [15] = &gObjectEventGraphicsInfo_RSMay,
    [16] = &gObjectEventGraphicsInfo_LittleBoy,
    [17] = &gObjectEventGraphicsInfo_LittleGirl,
    [18] = &gObjectEventGraphicsInfo_Youngster,
    [19] = &gObjectEventGraphicsInfo_Boy,
    [20] = &gObjectEventGraphicsInfo_BugCatcher,
    [21] = &gObjectEventGraphicsInfo_SittingBoy,
    [22] = &gObjectEventGraphicsInfo_Lass,
    [23] = &gObjectEventGraphicsInfo_Woman1,
    [24] = &gObjectEventGraphicsInfo_BattleGirl,
    [25] = &gObjectEventGraphicsInfo_Man,
    [26] = &gObjectEventGraphicsInfo_Rocker,
    [27] = &gObjectEventGraphicsInfo_FatMan,
    [28] = &gObjectEventGraphicsInfo_Woman2,
    [29] = &gObjectEventGraphicsInfo_Beauty,
    [30] = &gObjectEventGraphicsInfo_BaldingMan,
    [31] = &gObjectEventGraphicsInfo_Woman3,
    [32] = &gObjectEventGraphicsInfo_OldMan1,
    [33] = &gObjectEventGraphicsInfo_OldMan2,
    [34] = &gObjectEventGraphicsInfo_OldManLyingDown,
    [35] = &gObjectEventGraphicsInfo_OldWoman,
    [36] = &gObjectEventGraphicsInfo_TuberMWater,
    [37] = &gObjectEventGraphicsInfo_TuberF,
    [38] = &gObjectEventGraphicsInfo_TuberMLand,
    [39] = &gObjectEventGraphicsInfo_Camper,
    [40] = &gObjectEventGraphicsInfo_Picnicker,
    [41] = &gObjectEventGraphicsInfo_CooltrainerM,
    [42] = &gObjectEventGraphicsInfo_CooltrainerF,
    [43] = &gObjectEventGraphicsInfo_SwimmerMWater,
    [44] = &gObjectEventGraphicsInfo_SwimmerFWater,
    [45] = &gObjectEventGraphicsInfo_SwimmerMLand,
    [46] = &gObjectEventGraphicsInfo_SwimmerFLand,
    [47] = &gObjectEventGraphicsInfo_WorkerM,
    [48] = &gObjectEventGraphicsInfo_WorkerF,
    [49] = &gObjectEventGraphicsInfo_RocketM,
    [50] = &gObjectEventGraphicsInfo_RocketF,
    [51] = &gObjectEventGraphicsInfo_GBAKid,
    [52] = &gObjectEventGraphicsInfo_SuperNerd,
    [53] = &gObjectEventGraphicsInfo_Biker,
    [54] = &gObjectEventGraphicsInfo_Blackbelt,
    [55] = &gObjectEventGraphicsInfo_Scientist,
    [56] = &gObjectEventGraphicsInfo_Hiker,
    [57] = &gObjectEventGraphicsInfo_Fisher,
    [58] = &gObjectEventGraphicsInfo_Channeler,
    [59] = &gObjectEventGraphicsInfo_Chef,
    [60] = &gObjectEventGraphicsInfo_Policeman,
    [61] = &gObjectEventGraphicsInfo_Gentleman,
    [62] = &gObjectEventGraphicsInfo_Sailor,
    [63] = &gObjectEventGraphicsInfo_Captain,
    [64] = &gObjectEventGraphicsInfo_Nurse,
    [65] = &gObjectEventGraphicsInfo_CableClubReceptionist,
    [66] = &gObjectEventGraphicsInfo_UnionRoomReceptionist,
    [67] = &gObjectEventGraphicsInfo_UnusedMaleReceptionist,
    [68] = &gObjectEventGraphicsInfo_Clerk,
    [69] = &gObjectEventGraphicsInfo_MGDeliveryman,
    [70] = &gObjectEventGraphicsInfo_TrainerTowerDude,
    [71] = &gObjectEventGraphicsInfo_ProfOak,
    [72] = &gObjectEventGraphicsInfo_Blue,
    [73] = &gObjectEventGraphicsInfo_Bill,
    [74] = &gObjectEventGraphicsInfo_Lance,
    [75] = &gObjectEventGraphicsInfo_Agatha,
    [76] = &gObjectEventGraphicsInfo_Daisy,
    [77] = &gObjectEventGraphicsInfo_Lorelei,
    [78] = &gObjectEventGraphicsInfo_MrFuji,
    [79] = &gObjectEventGraphicsInfo_Bruno,
    [80] = &gObjectEventGraphicsInfo_Brock,
    [81] = &gObjectEventGraphicsInfo_Misty,
    [82] = &gObjectEventGraphicsInfo_LtSurge,
    [83] = &gObjectEventGraphicsInfo_Erika,
    [84] = &gObjectEventGraphicsInfo_Koga,
    [85] = &gObjectEventGraphicsInfo_Sabrina,
    [86] = &gObjectEventGraphicsInfo_Blaine,
    [87] = &gObjectEventGraphicsInfo_Giovanni,
    [88] = &gObjectEventGraphicsInfo_Mom,
    [89] = &gObjectEventGraphicsInfo_Celio,
    [90] = &gObjectEventGraphicsInfo_TeachyTVHost,
    [91] = &gObjectEventGraphicsInfo_GymGuy,
    [92] = &gObjectEventGraphicsInfo_ItemBall,
    [93] = &gObjectEventGraphicsInfo_TownMap,
    [94] = &gObjectEventGraphicsInfo_Pokedex,
    [95] = &gObjectEventGraphicsInfo_CutTree,
    [96] = &gObjectEventGraphicsInfo_RockSmashRock,
    [97] = &gObjectEventGraphicsInfo_StrengthBoulder,
    [98] = &gObjectEventGraphicsInfo_Fossil,
    [99] = &gObjectEventGraphicsInfo_Ruby,
    [100] = &gObjectEventGraphicsInfo_Sapphire,
    [101] = &gObjectEventGraphicsInfo_OldAmber,
    [102] = &gObjectEventGraphicsInfo_GymSign,
    [103] = &gObjectEventGraphicsInfo_Sign,
    [104] = &gObjectEventGraphicsInfo_TrainerTips,
    [105] = &gObjectEventGraphicsInfo_Clipboard,
    [106] = &gObjectEventGraphicsInfo_Meteorite,
    [107] = &gObjectEventGraphicsInfo_LaprasDoll,
    [108] = &gObjectEventGraphicsInfo_Seagallop,
    [109] = &gObjectEventGraphicsInfo_Snorlax,
    [110] = &gObjectEventGraphicsInfo_Spearow,
    [111] = &gObjectEventGraphicsInfo_Cubone,
    [112] = &gObjectEventGraphicsInfo_Poliwrath,
    [113] = &gObjectEventGraphicsInfo_Clefairy,
    [114] = &gObjectEventGraphicsInfo_Pidgeot,
    [115] = &gObjectEventGraphicsInfo_Jigglypuff,
    [116] = &gObjectEventGraphicsInfo_Pidgey,
    [117] = &gObjectEventGraphicsInfo_Chansey,
    [118] = &gObjectEventGraphicsInfo_Omanyte,
    [119] = &gObjectEventGraphicsInfo_Kangaskhan,
    [120] = &gObjectEventGraphicsInfo_Pikachu,
    [121] = &gObjectEventGraphicsInfo_Psyduck,
    [122] = &gObjectEventGraphicsInfo_NidoranF,
    [123] = &gObjectEventGraphicsInfo_NidoranM,
    [124] = &gObjectEventGraphicsInfo_Nidorino,
    [125] = &gObjectEventGraphicsInfo_Meowth,
    [126] = &gObjectEventGraphicsInfo_Seel,
    [127] = &gObjectEventGraphicsInfo_Voltorb,
    [128] = &gObjectEventGraphicsInfo_Slowpoke,
    [129] = &gObjectEventGraphicsInfo_Slowbro,
    [130] = &gObjectEventGraphicsInfo_Machop,
    [131] = &gObjectEventGraphicsInfo_Wigglytuff,
    [132] = &gObjectEventGraphicsInfo_Doduo,
    [133] = &gObjectEventGraphicsInfo_Fearow,
    [134] = &gObjectEventGraphicsInfo_Machoke,
    [135] = &gObjectEventGraphicsInfo_Lapras,
    [136] = &gObjectEventGraphicsInfo_Zapdos,
    [137] = &gObjectEventGraphicsInfo_Moltres,
    [138] = &gObjectEventGraphicsInfo_Articuno,
    [139] = &gObjectEventGraphicsInfo_Mewtwo,
    [140] = &gObjectEventGraphicsInfo_Mew,
    [141] = &gObjectEventGraphicsInfo_Entei,
    [142] = &gObjectEventGraphicsInfo_Suicune,
    [143] = &gObjectEventGraphicsInfo_Raikou,
    [144] = &gObjectEventGraphicsInfo_Lugia,
    [145] = &gObjectEventGraphicsInfo_HoOh,
    [146] = &gObjectEventGraphicsInfo_Celebi,
    [147] = &gObjectEventGraphicsInfo_Kabuto,
    [148] = &gObjectEventGraphicsInfo_DeoxysD,
    [149] = &gObjectEventGraphicsInfo_DeoxysA,
    [150] = &gObjectEventGraphicsInfo_DeoxysN,
    [151] = &gObjectEventGraphicsInfo_SSAnne,
};
# 474 "src/event_object_movement.c" 2
# 1 "src/data/field_effects/field_effect_object_template_pointers.h" 1
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowSmall;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowMedium;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowLarge;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowExtraLarge;
const struct SpriteTemplate gFieldEffectObjectTemplate_TallGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_Ripple;
const struct SpriteTemplate gFieldEffectObjectTemplate_Ash;
const struct SpriteTemplate gFieldEffectObjectTemplate_SurfBlob;
const struct SpriteTemplate gFieldEffectObjectTemplate_Arrow;
const struct SpriteTemplate gFieldEffectObjectTemplate_GroundImpactDust;
const struct SpriteTemplate gFieldEffectObjectTemplate_JumpTallGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_SandFootprints;
const struct SpriteTemplate gFieldEffectObjectTemplate_JumpBigSplash;
const struct SpriteTemplate gFieldEffectObjectTemplate_Splash;
const struct SpriteTemplate gFieldEffectObjectTemplate_JumpSmallSplash;
const struct SpriteTemplate gFieldEffectObjectTemplate_LongGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_JumpLongGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_UnusedGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_UnusedGrass2;
const struct SpriteTemplate gFieldEffectObjectTemplate_UnusedSand;
const struct SpriteTemplate gFieldEffectObjectTemplate_WaterSurfacing;
const struct SpriteTemplate gFieldEffectObjectTemplate_ReflectionDistortion;
const struct SpriteTemplate gFieldEffectObjectTemplate_DeepSandFootprints;

const struct SpriteTemplate gFieldEffectObjectTemplate_TreeDisguise;
const struct SpriteTemplate gFieldEffectObjectTemplate_MountainDisguise;
const struct SpriteTemplate gFieldEffectObjectTemplate_Bird;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeTireTracks;
const struct SpriteTemplate gFieldEffectObjectTemplate_SandDisguisePlaceholder;
const struct SpriteTemplate gFieldEffectObjectTemplate_SandPile;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShortGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_HotSpringsWater;
const struct SpriteTemplate gFieldEffectObjectTemplate_AshPuff;
const struct SpriteTemplate gFieldEffectObjectTemplate_AshLaunch;
const struct SpriteTemplate gFieldEffectObjectTemplate_Bubbles;
const struct SpriteTemplate gFieldEffectObjectTemplate_SmallSparkle;

const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[] = {
    [0] = &gFieldEffectObjectTemplate_ShadowSmall,
    [1] = &gFieldEffectObjectTemplate_ShadowMedium,
    [2] = &gFieldEffectObjectTemplate_ShadowLarge,
    [3] = &gFieldEffectObjectTemplate_ShadowExtraLarge,
    [4] = &gFieldEffectObjectTemplate_TallGrass,
    [5] = &gFieldEffectObjectTemplate_Ripple,
    [6] = &gFieldEffectObjectTemplate_Ash,
    [7] = &gFieldEffectObjectTemplate_SurfBlob,
    [8] = &gFieldEffectObjectTemplate_Arrow,
    [9] = &gFieldEffectObjectTemplate_GroundImpactDust,
    [10] = &gFieldEffectObjectTemplate_JumpTallGrass,
    [11] = &gFieldEffectObjectTemplate_SandFootprints,
    [12] = &gFieldEffectObjectTemplate_JumpBigSplash,
    [13] = &gFieldEffectObjectTemplate_Splash,
    [14] = &gFieldEffectObjectTemplate_JumpSmallSplash,
    [15] = &gFieldEffectObjectTemplate_LongGrass,
    [16] = &gFieldEffectObjectTemplate_JumpLongGrass,
    [17] = &gFieldEffectObjectTemplate_UnusedGrass,
    [18] = &gFieldEffectObjectTemplate_UnusedGrass2,
    [19] = &gFieldEffectObjectTemplate_UnusedSand,
    [20] = &gFieldEffectObjectTemplate_WaterSurfacing,
    [21] = &gFieldEffectObjectTemplate_ReflectionDistortion,
    [22] = ((void *)0),
    [23] = &gFieldEffectObjectTemplate_DeepSandFootprints,
    [24] = &gFieldEffectObjectTemplate_TreeDisguise,
    [25] = &gFieldEffectObjectTemplate_MountainDisguise,
    [26] = &gFieldEffectObjectTemplate_Bird,
    [27] = &gFieldEffectObjectTemplate_BikeTireTracks,
    [28] = &gFieldEffectObjectTemplate_SandDisguisePlaceholder,
    [29] = &gFieldEffectObjectTemplate_SandPile,
    [30] = &gFieldEffectObjectTemplate_ShortGrass,
    [31] = &gFieldEffectObjectTemplate_HotSpringsWater,
    [32] = &gFieldEffectObjectTemplate_AshPuff,
    [33] = &gFieldEffectObjectTemplate_AshLaunch,
    [34] = &gFieldEffectObjectTemplate_Bubbles,
    [35] = &gFieldEffectObjectTemplate_SmallSparkle,
};
# 475 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_pic_tables.h" 1
static const struct SpriteFrameImage sPicTable_RedNormal[] = {
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 10 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 11 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 12 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 13 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RedBike[] = {
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GreenNormal[] = {
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 10 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 11 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 12 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 13 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GreenBike[] = {
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RedSurf[] = {
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GreenSurf[] = {
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenSurfRun + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RedItem[] = {
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedItem + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GreenItem[] = {
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenItem + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RedVSSeekerBike[] = {
    {.data = (u8 *)gObjectEventPic_RedVSSeekerBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedVSSeekerBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedVSSeekerBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedVSSeekerBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedVSSeekerBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedVSSeekerBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GreenVSSeekerBike[] = {
    {.data = (u8 *)gObjectEventPic_GreenVSSeekerBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenVSSeekerBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenVSSeekerBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenVSSeekerBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenVSSeekerBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenVSSeekerBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RSBrendan[] = {
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSBrendan + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RSMay[] = {
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RSMay + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Policeman[] = {
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Policeman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_LittleBoy[] = {
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_LittleGirl[] = {
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 9 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_SittingBoy[] = {
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SittingBoy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Lass[] = {
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Youngster[] = {
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Woman1[] = {
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Woman3[] = {
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_BattleGirl[] = {
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BattleGirl + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_BugCatcher[] = {
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_FatMan[] = {
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_BaldingMan[] = {
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BaldingMan + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Woman2[] = {
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_OldMan1[] = {
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan1 + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_WorkerM[] = {
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_WorkerF[] = {
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WorkerF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Beauty[] = {
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Chef[] = {
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chef + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_OldMan2[] = {
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_OldManLyingDown[] = {
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldManLyingDown + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_OldWoman[] = {
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Camper[] = {
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Picnicker[] = {
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_CooltrainerM[] = {
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerM + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_CooltrainerF[] = {
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CooltrainerF + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Boy[] = {
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_SuperNerd[] = {
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SuperNerd + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Channeler[] = {
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Channeler + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RocketF[] = {
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_SwimmerMWater[] = {
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMWater + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_SwimmerFWater[] = {
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFWater + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_SwimmerMLand[] = {
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerMLand + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_SwimmerFLand[] = {
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerFLand + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Blackbelt[] = {
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blackbelt + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Scientist[] = {
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Gentleman[] = {
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Sailor[] = {
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Captain[] = {
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Captain + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Fisher[] = {
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisher + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_TeachyTVHost[] = {
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TeachyTVHost + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_UnusedWoman[] = {
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_TuberF[] = {
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 9 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_TuberMWater[] = {
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMWater + (2 * 2 * 9 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_TuberMLand[] = {
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMLand + (2 * 2 * 9 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Hiker[] = {
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Biker[] = {
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Biker + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GymGuy[] = {
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GymGuy + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Nurse[] = {
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_UnusedMaleReceptionist[] = {
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnusedMaleReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_ItemBall[] = {
    {.data = (u8 *)gObjectEventPic_ItemBall + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_ProfOak[] = {
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfOak + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Man[] = {
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Rocker[] = {
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rocker + (2 * 4 * 9 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_MrFuji[] = {
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrFuji + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Bruno[] = {
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bruno + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_CutTree[] = {
    {.data = (u8 *)gObjectEventPic_CutTree + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CutTree + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CutTree + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CutTree + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Clerk[] = {
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clerk + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_MGDeliveryman[] = {
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MGDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_TrainerTowerDude[] = {
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TrainerTowerDude + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_CableClubReceptionist[] = {
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CableClubReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_UnionRoomReceptionist[] = {
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RockSmashRock[] = {
    {.data = (u8 *)gObjectEventPic_RockSmashRock + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RockSmashRock + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RockSmashRock + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RockSmashRock + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_StrengthBoulder[] = {
    {.data = (u8 *)gObjectEventPic_StrengthBoulder + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RocketM[] = {
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RocketM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Celio[] = {
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celio + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Agatha[] = {
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Agatha + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Brock[] = {
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brock + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Misty[] = {
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Misty + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_LtSurge[] = {
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LtSurge + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Erika[] = {
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Erika + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Koga[] = {
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Koga + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Giovanni[] = {
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Giovanni + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Blaine[] = {
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blaine + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Sabrina[] = {
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sabrina + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Bill[] = {
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Bill + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Daisy[] = {
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Daisy + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Lorelei[] = {
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lorelei + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Lance[] = {
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lance + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Blue[] = {
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Blue + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_RedFish[] = {
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RedFish + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GreenFish[] = {
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GreenFish + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_TownMap[] = {
    {.data = (u8 *)gObjectEventPic_TownMap + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Pokedex[] = {
    {.data = (u8 *)gObjectEventPic_Pokedex + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GBAKid[] = {
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GBAKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Fossil[] = {
    {.data = (u8 *)gObjectEventPic_Fossil + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Ruby[] = {
    {.data = (u8 *)gObjectEventPic_Ruby + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Sapphire[] = {
    {.data = (u8 *)gObjectEventPic_Sapphire + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_OldAmber[] = {
    {.data = (u8 *)gObjectEventPic_OldAmber + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_GymSign[] = {
    {.data = (u8 *)gObjectEventPic_GymSign + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Sign[] = {
    {.data = (u8 *)gObjectEventPic_Sign + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_WoodenSign[] = {
    {.data = (u8 *)gObjectEventPic_WoodenSign + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Clipboard[] = {
    {.data = (u8 *)gObjectEventPic_Clipboard + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_BirthIslandStone[] = {
    {.data = (u8 *)gObjectEventPic_BirthIslandStone + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_LaprasDoll[] = {
    {.data = (u8 *)gObjectEventPic_LaprasDoll + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Seagallop[] = {
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seagallop + (4 * 16 * 0 * 64)/2, .size = (4 * 16 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_SSAnne[] = {
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SSAnne + (8 * 16 * 0 * 64)/2, .size = (8 * 16 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Snorlax[] = {
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Snorlax + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Spearow[] = {
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spearow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Pidgeot[] = {
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgeot + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Omanyte[] = {
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Omanyte + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Kangaskhan[] = {
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kangaskhan + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Psyduck[] = {
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Psyduck + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_NidoranF[] = {
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranF + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_NidoranM[] = {
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NidoranM + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Nidorino[] = {
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nidorino + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Meowth[] = {
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Meowth + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Seel[] = {
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Seel + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Voltorb[] = {
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Voltorb + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Slowpoke[] = {
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowpoke + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Slowbro[] = {
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Slowbro + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Machop[] = {
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machop + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Wigglytuff[] = {
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wigglytuff + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Doduo[] = {
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Doduo + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Fearow[] = {
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fearow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Lapras[] = {
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lapras + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Zapdos[] = {
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zapdos + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Moltres[] = {
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Moltres + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Articuno[] = {
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Articuno + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_DeoxysD[] = {
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysD + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_DeoxysA[] = {
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysA + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_DeoxysN[] = {
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DeoxysN + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Mewtwo[] = {
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mewtwo + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Mew[] = {
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Entei[] = {
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Entei + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Raikou[] = {
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Raikou + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Suicune[] = {
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Suicune + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Lugia[] = {
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_HoOh[] = {
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Celebi[] = {
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Celebi + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Cubone[] = {
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cubone + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Poliwrath[] = {
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poliwrath + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Chansey[] = {
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Chansey + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Pikachu[] = {
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Jigglypuff[] = {
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Jigglypuff + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Pidgey[] = {
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pidgey + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Clefairy[] = {
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Clefairy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Machoke[] = {
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Machoke + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Kabuto[] = {
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kabuto + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const struct SpriteFrameImage sPicTable_Mom[] = {
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};
# 476 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_anims.h" 1
static const union AnimCmd sAnim_StayStill[] = {
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpFaceSouth[] = {
    {.frame = {0, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpFaceNorth[] = {
    {.frame = {1, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpFaceWest[] = {
    {.frame = {2, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpFaceEast[] = {
    {.frame = {2, 16, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoSouth[] = {
    {.frame = {3, 8}},
    {.frame = {0, 8}},
    {.frame = {3, 8, .hFlip = 1}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoNorth[] = {
    {.frame = {4, 8}},
    {.frame = {1, 8}},
    {.frame = {4, 8, .hFlip = 1}},
    {.frame = {1, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoWest[] = {
    {.frame = {5, 8}},
    {.frame = {2, 8}},
    {.frame = {6, 8}},
    {.frame = {2, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoEast[] = {
    {.frame = {5, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.frame = {6, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastSouth[] = {
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {3, 4, .hFlip = 1}},
    {.frame = {0, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastNorth[] = {
    {.frame = {4, 4}},
    {.frame = {1, 4}},
    {.frame = {4, 4, .hFlip = 1}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastWest[] = {
    {.frame = {5, 4}},
    {.frame = {2, 4}},
    {.frame = {6, 4}},
    {.frame = {2, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastEast[] = {
    {.frame = {5, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {6, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFasterSouth[] = {
    {.frame = {3, 2}},
    {.frame = {0, 2}},
    {.frame = {3, 2, .hFlip = 1}},
    {.frame = {0, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFasterNorth[] = {
    {.frame = {4, 2}},
    {.frame = {1, 2}},
    {.frame = {4, 2, .hFlip = 1}},
    {.frame = {1, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFasterWest[] = {
    {.frame = {5, 2}},
    {.frame = {2, 2}},
    {.frame = {6, 2}},
    {.frame = {2, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFasterEast[] = {
    {.frame = {5, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {6, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastestSouth[] = {
    {.frame = {3, 1}},
    {.frame = {0, 1}},
    {.frame = {3, 1, .hFlip = 1}},
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastestNorth[] = {
    {.frame = {4, 1}},
    {.frame = {1, 1}},
    {.frame = {4, 1, .hFlip = 1}},
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastestWest[] = {
    {.frame = {5, 1}},
    {.frame = {2, 1}},
    {.frame = {6, 1}},
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_QuintyPlumpGoFastestEast[] = {
    {.frame = {5, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.frame = {6, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_FaceSouth[] = {
    {.frame = {0, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_FaceNorth[] = {
    {.frame = {1, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_FaceWest[] = {
    {.frame = {2, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_FaceEast[] = {
    {.frame = {2, 16, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoSouth[] = {
    {.frame = {3, 8}},
    {.frame = {0, 8}},
    {.frame = {4, 8}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoNorth[] = {
    {.frame = {5, 8}},
    {.frame = {1, 8}},
    {.frame = {6, 8}},
    {.frame = {1, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoWest[] = {
    {.frame = {7, 8}},
    {.frame = {2, 8}},
    {.frame = {8, 8}},
    {.frame = {2, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoEast[] = {
    {.frame = {7, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.frame = {8, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastSouth[] = {
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {4, 4}},
    {.frame = {0, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastNorth[] = {
    {.frame = {5, 4}},
    {.frame = {1, 4}},
    {.frame = {6, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastWest[] = {
    {.frame = {7, 4}},
    {.frame = {2, 4}},
    {.frame = {8, 4}},
    {.frame = {2, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastEast[] = {
    {.frame = {7, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {8, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFasterSouth[] = {
    {.frame = {3, 2}},
    {.frame = {0, 2}},
    {.frame = {4, 2}},
    {.frame = {0, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFasterNorth[] = {
    {.frame = {5, 2}},
    {.frame = {1, 2}},
    {.frame = {6, 2}},
    {.frame = {1, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFasterWest[] = {
    {.frame = {7, 2}},
    {.frame = {2, 2}},
    {.frame = {8, 2}},
    {.frame = {2, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFasterEast[] = {
    {.frame = {7, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {8, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastestSouth[] = {
    {.frame = {3, 1}},
    {.frame = {0, 1}},
    {.frame = {4, 1}},
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastestNorth[] = {
    {.frame = {5, 1}},
    {.frame = {1, 1}},
    {.frame = {6, 1}},
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastestWest[] = {
    {.frame = {7, 1}},
    {.frame = {2, 1}},
    {.frame = {8, 1}},
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GoFastestEast[] = {
    {.frame = {7, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.frame = {8, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};


static const union AnimCmd sAnim_RaiseHand[] = {
    {.frame = {9, 0}},
    {.type = -1},
};

static const union AnimCmd sAnim_HoOhFlapWings[] = {
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_HoOhStayStill[] = {
    {.frame = {3, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_SurfFaceSouth[] = {
    {.frame = {0, 60}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_SurfFaceNorth[] = {
    {.frame = {1, 60}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_SurfFaceWest[] = {
    {.frame = {2, 60}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_SurfFaceEast[] = {
    {.frame = {2, 60, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownFaceSouth[] = {
    {.frame = {0, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownFaceNorth[] = {
    {.frame = {1, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownFaceWest[] = {
    {.frame = {2, 16}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownFaceEast[] = {
    {.frame = {2, 16, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoSouth[] = {
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {5, 4}},
    {.frame = {0, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoNorth[] = {
    {.frame = {7, 4}},
    {.frame = {8, 4}},
    {.frame = {7, 4}},
    {.frame = {1, 4}},
    {.frame = {9, 4}},
    {.frame = {10, 4}},
    {.frame = {9, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoWest[] = {
    {.frame = {11, 4}},
    {.frame = {12, 4}},
    {.frame = {11, 4}},
    {.frame = {2, 4}},
    {.frame = {13, 4}},
    {.frame = {14, 4}},
    {.frame = {13, 4}},
    {.frame = {2, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoEast[] = {
    {.frame = {11, 4, .hFlip = 1}},
    {.frame = {12, 4, .hFlip = 1}},
    {.frame = {11, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {13, 4, .hFlip = 1}},
    {.frame = {14, 4, .hFlip = 1}},
    {.frame = {13, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastNorth[] = {
    {.frame = {3, 2}},
    {.frame = {4, 2}},
    {.frame = {3, 2}},
    {.frame = {0, 2}},
    {.frame = {5, 2}},
    {.frame = {6, 2}},
    {.frame = {5, 2}},
    {.frame = {0, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastSouth[] = {
    {.frame = {7, 2}},
    {.frame = {8, 2}},
    {.frame = {7, 2}},
    {.frame = {1, 2}},
    {.frame = {9, 2}},
    {.frame = {10, 2}},
    {.frame = {9, 2}},
    {.frame = {1, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastWest[] = {
    {.frame = {11, 2}},
    {.frame = {12, 2}},
    {.frame = {11, 2}},
    {.frame = {2, 2}},
    {.frame = {13, 2}},
    {.frame = {14, 2}},
    {.frame = {13, 2}},
    {.frame = {2, 2}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastEast[] = {
    {.frame = {11, 2, .hFlip = 1}},
    {.frame = {12, 2, .hFlip = 1}},
    {.frame = {11, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {13, 2, .hFlip = 1}},
    {.frame = {14, 2, .hFlip = 1}},
    {.frame = {13, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFasterNorth[] = {
    {.frame = {3, 1}},
    {.frame = {4, 1}},
    {.frame = {3, 1}},
    {.frame = {0, 1}},
    {.frame = {5, 1}},
    {.frame = {6, 1}},
    {.frame = {5, 1}},
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFasterSouth[] = {
    {.frame = {7, 1}},
    {.frame = {8, 1}},
    {.frame = {7, 1}},
    {.frame = {1, 1}},
    {.frame = {9, 1}},
    {.frame = {10, 1}},
    {.frame = {9, 1}},
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFasterWest[] = {
    {.frame = {11, 1}},
    {.frame = {12, 1}},
    {.frame = {11, 1}},
    {.frame = {2, 1}},
    {.frame = {13, 1}},
    {.frame = {14, 1}},
    {.frame = {13, 1}},
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFasterEast[] = {
    {.frame = {11, 1, .hFlip = 1}},
    {.frame = {12, 1, .hFlip = 1}},
    {.frame = {11, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.frame = {13, 1, .hFlip = 1}},
    {.frame = {14, 1, .hFlip = 1}},
    {.frame = {13, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastestNorth[] = {
    {.frame = {3, 0}},
    {.frame = {4, 0}},
    {.frame = {3, 0}},
    {.frame = {0, 0}},
    {.frame = {5, 0}},
    {.frame = {6, 0}},
    {.frame = {5, 0}},
    {.frame = {0, 0}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastestSouth[] = {
    {.frame = {7, 0}},
    {.frame = {8, 0}},
    {.frame = {7, 0}},
    {.frame = {1, 0}},
    {.frame = {9, 0}},
    {.frame = {10, 0}},
    {.frame = {9, 0}},
    {.frame = {1, 0}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastestWest[] = {
    {.frame = {11, 0}},
    {.frame = {12, 0}},
    {.frame = {11, 0}},
    {.frame = {2, 0}},
    {.frame = {13, 0}},
    {.frame = {14, 0}},
    {.frame = {13, 0}},
    {.frame = {2, 0}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_UnknownGoFastestEast[] = {
    {.frame = {11, 0, .hFlip = 1}},
    {.frame = {12, 0, .hFlip = 1}},
    {.frame = {11, 0, .hFlip = 1}},
    {.frame = {2, 0, .hFlip = 1}},
    {.frame = {13, 0, .hFlip = 1}},
    {.frame = {14, 0, .hFlip = 1}},
    {.frame = {13, 0, .hFlip = 1}},
    {.frame = {2, 0, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_SpinSouth[] = {
    {.frame = {0, 2}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {1, 2}},
    {.frame = {2, 2}},
    {.loop = {.type = -3, .count = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_SpinNorth[] = {
    {.frame = {1, 2}},
    {.frame = {2, 2}},
    {.frame = {0, 2}},
    {.frame = {2, 2, .hFlip = 1}},
    {.loop = {.type = -3, .count = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_SpinWest[] = {
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {1, 2}},
    {.frame = {2, 2}},
    {.frame = {0, 2}},
    {.loop = {.type = -3, .count = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_SpinEast[] = {
    {.frame = {2, 2}},
    {.frame = {0, 2}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {1, 2}},
    {.loop = {.type = -3, .count = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_ShakeHeadOrWalkInPlace[] = {
    {.frame = {18, 16}},
    {.frame = {0, 16}},
    {.frame = {19, 16}},
    {.frame = {0, 32}},
    {.loop = {.type = -3, .count = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_RunSouth[] = {
    {.frame = {9, 5}},
    {.frame = {10, 3}},
    {.frame = {9, 5}},
    {.frame = {11, 3}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_RunNorth[] = {
    {.frame = {12, 5}},
    {.frame = {13, 3}},
    {.frame = {12, 5}},
    {.frame = {14, 3}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_RunWest[] = {
    {.frame = {15, 5}},
    {.frame = {16, 3}},
    {.frame = {15, 5}},
    {.frame = {17, 3}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_RunEast[] = {
    {.frame = {15, 5, .hFlip = 1}},
    {.frame = {16, 3, .hFlip = 1}},
    {.frame = {15, 5, .hFlip = 1}},
    {.frame = {17, 3, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_FieldMove[] = {
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 8}},
    {.type = -1},
};

static const union AnimCmd sAnim_VSSeeker[] = {
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.loop = {.type = -3, .count = 0}},
    {.frame = {7, 4}},
    {.frame = {8, 4}},
    {.loop = {.type = -3, .count = 6}},
    {.frame = {6, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_VSSeekerBike[] = {
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.loop = {.type = -3, .count = 0}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.loop = {.type = -3, .count = 6}},
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_GetOnOffSurfSouth[] = {
    {.frame = {9, 32}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GetOnOffSurfNorth[] = {
    {.frame = {10, 32}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GetOnOffSurfWest[] = {
    {.frame = {11, 32}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_GetOnOffSurfEast[] = {
    {.frame = {11, 32, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_BunnyHopBackWheelSouth[] = {
    {.frame = {15, 4}},
    {.frame = {16, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_BunnyHopBackWheelNorth[] = {
    {.frame = {19, 4}},
    {.frame = {20, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_BunnyHopBackWheelWest[] = {
    {.frame = {23, 4}},
    {.frame = {24, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_BunnyHopBackWheelEast[] = {
    {.frame = {23, 4, .hFlip = 1}},
    {.frame = {24, 4, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_BunnyHopFrontWheelSouth[] = {
    {.frame = {17, 4}},
    {.frame = {18, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_BunnyHopFrontWheelNorth[] = {
    {.frame = {21, 4}},
    {.frame = {22, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_BunnyHopFrontWheelWest[] = {
    {.frame = {25, 4}},
    {.frame = {26, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_BunnyHopFrontWheelEast[] = {
    {.frame = {25, 4, .hFlip = 1}},
    {.frame = {26, 4, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieBackWheelSouth[] = {
    {.frame = {15, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieBackWheelNorth[] = {
    {.frame = {19, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieBackWheelWest[] = {
    {.frame = {23, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieBackWheelEast[] = {
    {.frame = {23, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieFrontWheelSouth[] = {
    {.frame = {17, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieFrontWheelNorth[] = {
    {.frame = {21, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieFrontWheelWest[] = {
    {.frame = {25, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_StandingWheelieFrontWheelEast[] = {
    {.frame = {25, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_MovingWheelieSouth[] = {
    {.frame = {27, 4}},
    {.frame = {16, 4}},
    {.frame = {28, 4}},
    {.frame = {16, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_MovingWheelieNorth[] = {
    {.frame = {29, 4}},
    {.frame = {20, 4}},
    {.frame = {30, 4}},
    {.frame = {20, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_MovingWheelieWest[] = {
    {.frame = {31, 4}},
    {.frame = {24, 4}},
    {.frame = {32, 4}},
    {.frame = {24, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_MovingWheelieEast[] = {
    {.frame = {31, 4, .hFlip = 1}},
    {.frame = {24, 4, .hFlip = 1}},
    {.frame = {32, 4, .hFlip = 1}},
    {.frame = {24, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_BerryTreeStage0[] = {
    {.frame = {0, 32}},
    {.type = -1},
};

static const union AnimCmd sAnim_BerryTreeStage1[] = {
    {.frame = {1, 32}},
    {.frame = {2, 32}},
    {.type = -1},
};

static const union AnimCmd sAnim_BerryTreeStage2[] = {
    {.frame = {3, 48}},
    {.frame = {4, 48}},
    {.type = -1},
};

static const union AnimCmd sAnim_BerryTreeStage3[] = {
    {.frame = {5, 32}},
    {.frame = {5, 32}},
    {.frame = {6, 32}},
    {.frame = {6, 32}},
    {.type = -1},
};

static const union AnimCmd sAnim_BerryTreeStage4[] = {
    {.frame = {7, 48}},
    {.frame = {7, 48}},
    {.frame = {8, 48}},
    {.frame = {8, 48}},
    {.type = -1},
};

static const union AnimCmd sAnim_NurseBow[] = {
    {.frame = {0, 8}},
    {.frame = {9, 32}},
    {.frame = {0, 8}},
    {.type = -1},
};

static const union AnimCmd sAnim_RockBreak[] = {
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

static const union AnimCmd sAnim_TreeCut[] = {
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.type = -1},
};

static const union AnimCmd sAnim_TakeOutRodSouth[] = {
    {.frame = {8, 4}},
    {.frame = {9, 4}},
    {.frame = {10, 4}},
    {.frame = {11, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_TakeOutRodNorth[] = {
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_TakeOutRodWest[] = {
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_TakeOutRodEast[] = {
    {.frame = {0, 4, .hFlip = 1}},
    {.frame = {1, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {3, 4, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_PutAwayRodSouth[] = {
    {.frame = {11, 4}},
    {.frame = {10, 6}},
    {.frame = {9, 6}},
    {.frame = {8, 6}},
    {.type = -1},
};

static const union AnimCmd sAnim_PutAwayRodNorth[] = {
    {.frame = {7, 4}},
    {.frame = {6, 6}},
    {.frame = {5, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

static const union AnimCmd sAnim_PutAwayRodWest[] = {
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_PutAwayRodEast[] = {
    {.frame = {3, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {1, 4, .hFlip = 1}},
    {.frame = {0, 4, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_HookedPokemonSouth[] = {
    {.frame = {10, 6}},
    {.frame = {11, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {11, 30}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_HookedPokemonNorth[] = {
    {.frame = {6, 6}},
    {.frame = {7, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {7, 30}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_HookedPokemonWest[] = {
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {3, 30}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sAnim_HookedPokemonEast[] = {
    {.frame = {2, 6, .hFlip = 1}},
    {.frame = {3, 6, .hFlip = 1}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {3, 30, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};


static const union AffineAnimCmd sAffineAnim_KyogreGroudon_GoSouthStart[] = {
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 1, .duration = 1}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 1}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 1}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 7}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};


static const union AffineAnimCmd sAffineAnim_KyogreGroudon_GoSouth[] = {
    {.frame = {.xScale = 0, .yScale = 0, .rotation = -1, .duration = 1}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 15}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 1, .duration = 1}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 15}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};

static const union AnimCmd *const sAnimTable_Inanimate[] = {
    [0] = sAnim_StayStill
};


static const union AnimCmd *const sAnimTable_QuintyPlump[] = {
    [0] = sAnim_QuintyPlumpFaceSouth,
    [1] = sAnim_QuintyPlumpFaceNorth,
    [2] = sAnim_QuintyPlumpFaceWest,
    [3] = sAnim_QuintyPlumpFaceEast,
    [4] = sAnim_QuintyPlumpGoSouth,
    [5] = sAnim_QuintyPlumpGoNorth,
    [6] = sAnim_QuintyPlumpGoWest,
    [7] = sAnim_QuintyPlumpGoEast,
    [8] = sAnim_QuintyPlumpGoFastSouth,
    [9] = sAnim_QuintyPlumpGoFastNorth,
    [10] = sAnim_QuintyPlumpGoFastWest,
    [11] = sAnim_QuintyPlumpGoFastEast,
    [12] = sAnim_QuintyPlumpGoFasterSouth,
    [13] = sAnim_QuintyPlumpGoFasterNorth,
    [14] = sAnim_QuintyPlumpGoFasterWest,
    [15] = sAnim_QuintyPlumpGoFasterEast,
    [16] = sAnim_QuintyPlumpGoFastestSouth,
    [17] = sAnim_QuintyPlumpGoFastestNorth,
    [18] = sAnim_QuintyPlumpGoFastestWest,
    [19] = sAnim_QuintyPlumpGoFastestEast,
};

static const union AnimCmd *const sAnimTable_Standard[] = {
    [0] = sAnim_FaceSouth,
    [1] = sAnim_FaceNorth,
    [2] = sAnim_FaceWest,
    [3] = sAnim_FaceEast,
    [4] = sAnim_GoSouth,
    [5] = sAnim_GoNorth,
    [6] = sAnim_GoWest,
    [7] = sAnim_GoEast,
    [8] = sAnim_GoFastSouth,
    [9] = sAnim_GoFastNorth,
    [10] = sAnim_GoFastWest,
    [11] = sAnim_GoFastEast,
    [12] = sAnim_GoFasterSouth,
    [13] = sAnim_GoFasterNorth,
    [14] = sAnim_GoFasterWest,
    [15] = sAnim_GoFasterEast,
    [16] = sAnim_GoFastestSouth,
    [17] = sAnim_GoFastestNorth,
    [18] = sAnim_GoFastestWest,
    [19] = sAnim_GoFastestEast,
    [(20 + 0)] = sAnim_RaiseHand,
};

static const union AnimCmd *const sAnimTable_HoOh[] = {
    [0] = sAnim_FaceSouth,
    [1] = sAnim_FaceNorth,
    [2] = sAnim_FaceWest,
    [3] = sAnim_FaceEast,
    [4] = sAnim_HoOhFlapWings,
    [5] = sAnim_HoOhStayStill,
    [6] = sAnim_GoWest,
    [7] = sAnim_GoEast,
    [8] = sAnim_GoFastSouth,
    [9] = sAnim_GoFastNorth,
    [10] = sAnim_GoFastWest,
    [11] = sAnim_GoFastEast,
    [12] = sAnim_GoFasterSouth,
    [13] = sAnim_GoFasterNorth,
    [14] = sAnim_GoFasterWest,
    [15] = sAnim_GoFasterEast,
    [16] = sAnim_GoFastestSouth,
    [17] = sAnim_GoFastestNorth,
    [18] = sAnim_GoFastestWest,
    [19] = sAnim_GoFastestEast,
    [(20 + 0)] = sAnim_RaiseHand,
};

static const union AnimCmd *const sAnimTable_Unknown[] = {
    [0] = sAnim_UnknownFaceSouth,
    [1] = sAnim_UnknownFaceNorth,
    [2] = sAnim_UnknownFaceWest,
    [3] = sAnim_UnknownFaceEast,
    [4] = sAnim_UnknownGoSouth,
    [5] = sAnim_UnknownGoNorth,
    [6] = sAnim_UnknownGoWest,
    [7] = sAnim_UnknownGoEast,
    [8] = sAnim_UnknownGoFastNorth,
    [9] = sAnim_UnknownGoFastSouth,
    [10] = sAnim_UnknownGoFastWest,
    [11] = sAnim_UnknownGoFastEast,
    [12] = sAnim_UnknownGoFasterNorth,
    [13] = sAnim_UnknownGoFasterSouth,
    [14] = sAnim_UnknownGoFasterWest,
    [15] = sAnim_UnknownGoFasterEast,
    [16] = sAnim_UnknownGoFastestNorth,
    [17] = sAnim_UnknownGoFastestSouth,
    [18] = sAnim_UnknownGoFastestWest,
    [19] = sAnim_UnknownGoFastestEast,
    [(20 + 0)] = sAnim_RunSouth,
    [(20 + 1)] = sAnim_RunNorth,
    [(20 + 2)] = sAnim_RunWest,
    [(20 + 3)] = sAnim_RunEast,
};

static const union AnimCmd *const sAnimTable_RedGreenNormal[] = {
    [0] = sAnim_FaceSouth,
    [1] = sAnim_FaceNorth,
    [2] = sAnim_FaceWest,
    [3] = sAnim_FaceEast,
    [4] = sAnim_GoSouth,
    [5] = sAnim_GoNorth,
    [6] = sAnim_GoWest,
    [7] = sAnim_GoEast,
    [8] = sAnim_GoFastSouth,
    [9] = sAnim_GoFastNorth,
    [10] = sAnim_GoFastWest,
    [11] = sAnim_GoFastEast,
    [12] = sAnim_GoFasterSouth,
    [13] = sAnim_GoFasterNorth,
    [14] = sAnim_GoFasterWest,
    [15] = sAnim_GoFasterEast,
    [16] = sAnim_GoFastestSouth,
    [17] = sAnim_GoFastestNorth,
    [18] = sAnim_GoFastestWest,
    [19] = sAnim_GoFastestEast,
    [(20 + 0)] = sAnim_RunSouth,
    [(20 + 1)] = sAnim_RunNorth,
    [(20 + 2)] = sAnim_RunWest,
    [(20 + 3)] = sAnim_RunEast,
    [(20 + 4)] = sAnim_SpinSouth,
    [(20 + 5)] = sAnim_SpinNorth,
    [(20 + 6)] = sAnim_SpinWest,
    [(20 + 7)] = sAnim_SpinEast,
    [(20 + 8)] = sAnim_ShakeHeadOrWalkInPlace,
};


static const union AnimCmd *const sAnimTable_AcroBike[] = {
    [0] = sAnim_FaceSouth,
    [1] = sAnim_FaceNorth,
    [2] = sAnim_FaceWest,
    [3] = sAnim_FaceEast,
    [4] = sAnim_GoSouth,
    [5] = sAnim_GoNorth,
    [6] = sAnim_GoWest,
    [7] = sAnim_GoEast,
    [8] = sAnim_GoFastSouth,
    [9] = sAnim_GoFastNorth,
    [10] = sAnim_GoFastWest,
    [11] = sAnim_GoFastEast,
    [12] = sAnim_GoFasterSouth,
    [13] = sAnim_GoFasterNorth,
    [14] = sAnim_GoFasterWest,
    [15] = sAnim_GoFasterEast,
    [16] = sAnim_GoFastestSouth,
    [17] = sAnim_GoFastestNorth,
    [18] = sAnim_GoFastestWest,
    [19] = sAnim_GoFastestEast,
    [(20 + 0)] = sAnim_BunnyHopBackWheelSouth,
    [(20 + 1)] = sAnim_BunnyHopBackWheelNorth,
    [(20 + 2)] = sAnim_BunnyHopBackWheelWest,
    [(20 + 3)] = sAnim_BunnyHopBackWheelEast,
    [(20 + 4)] = sAnim_BunnyHopFrontWheelSouth,
    [(20 + 5)] = sAnim_BunnyHopFrontWheelNorth,
    [(20 + 6)] = sAnim_BunnyHopFrontWheelWest,
    [(20 + 7)] = sAnim_BunnyHopFrontWheelEast,
    [(20 + 8)] = sAnim_StandingWheelieBackWheelSouth,
    [(20 + 9)] = sAnim_StandingWheelieBackWheelNorth,
    [(20 + 10)] = sAnim_StandingWheelieBackWheelWest,
    [(20 + 11)] = sAnim_StandingWheelieBackWheelEast,
    [(20 + 12)] = sAnim_StandingWheelieFrontWheelSouth,
    [(20 + 13)] = sAnim_StandingWheelieFrontWheelNorth,
    [(20 + 14)] = sAnim_StandingWheelieFrontWheelWest,
    [(20 + 15)] = sAnim_StandingWheelieFrontWheelEast,
    [(20 + 16)] = sAnim_MovingWheelieSouth,
    [(20 + 17)] = sAnim_MovingWheelieNorth,
    [(20 + 18)] = sAnim_MovingWheelieWest,
    [(20 + 19)] = sAnim_MovingWheelieEast,
};

static const union AnimCmd *const sAnimTable_RedGreenSurf[] = {
    [0] = sAnim_SurfFaceSouth,
    [1] = sAnim_SurfFaceNorth,
    [2] = sAnim_SurfFaceWest,
    [3] = sAnim_SurfFaceEast,
    [4] = sAnim_SurfFaceSouth,
    [5] = sAnim_SurfFaceNorth,
    [6] = sAnim_SurfFaceWest,
    [7] = sAnim_SurfFaceEast,
    [8] = sAnim_SurfFaceSouth,
    [9] = sAnim_SurfFaceNorth,
    [10] = sAnim_SurfFaceWest,
    [11] = sAnim_SurfFaceEast,
    [12] = sAnim_SurfFaceSouth,
    [13] = sAnim_SurfFaceNorth,
    [14] = sAnim_SurfFaceWest,
    [15] = sAnim_SurfFaceEast,
    [16] = sAnim_SurfFaceSouth,
    [17] = sAnim_SurfFaceNorth,
    [18] = sAnim_SurfFaceWest,
    [19] = sAnim_SurfFaceEast,
    [(20 + 0)] = sAnim_GetOnOffSurfSouth,
    [(20 + 1)] = sAnim_GetOnOffSurfNorth,
    [(20 + 2)] = sAnim_GetOnOffSurfWest,
    [(20 + 3)] = sAnim_GetOnOffSurfEast,
};

static const union AnimCmd *const sAnimTable_Nurse[] = {
    [0] = sAnim_FaceSouth,
    [1] = sAnim_FaceNorth,
    [2] = sAnim_FaceWest,
    [3] = sAnim_FaceEast,
    [4] = sAnim_GoSouth,
    [5] = sAnim_GoNorth,
    [6] = sAnim_GoWest,
    [7] = sAnim_GoEast,
    [8] = sAnim_GoFastSouth,
    [9] = sAnim_GoFastNorth,
    [10] = sAnim_GoFastWest,
    [11] = sAnim_GoFastEast,
    [12] = sAnim_GoFasterSouth,
    [13] = sAnim_GoFasterNorth,
    [14] = sAnim_GoFasterWest,
    [15] = sAnim_GoFasterEast,
    [16] = sAnim_GoFastestSouth,
    [17] = sAnim_GoFastestNorth,
    [18] = sAnim_GoFastestWest,
    [19] = sAnim_GoFastestEast,
    [(20 + 0)] = sAnim_NurseBow,
};

static const union AnimCmd *const sAnimTable_RedGreenFieldMove[] = {
    [0] = sAnim_FieldMove,
};

static const union AnimCmd *const sAnimTable_RedGreenVSSeeker[] = {
    [0] = sAnim_VSSeeker,
};

static const union AnimCmd *const sAnimTable_RedGreenVSSeekerBike[] = {
    [0] = sAnim_VSSeekerBike,
};


static const union AnimCmd *const sAnimTable_BerryTree[] = {
    sAnim_BerryTreeStage0,
    sAnim_BerryTreeStage1,
    sAnim_BerryTreeStage2,
    sAnim_BerryTreeStage3,
    sAnim_BerryTreeStage4,
};

static const union AnimCmd *const sAnimTable_RockSmashRock[] = {
    [0] = sAnim_StayStill,
    [1] = sAnim_RockBreak,
};

static const union AnimCmd *const sAnimTable_CutTree[] = {
    [0] = sAnim_StayStill,
    [1] = sAnim_TreeCut,
};

static const union AnimCmd *const sAnimTable_RedGreenFish[] = {
    [0] = sAnim_TakeOutRodSouth,
    [1] = sAnim_TakeOutRodNorth,
    [2] = sAnim_TakeOutRodWest,
    [3] = sAnim_TakeOutRodEast,
    [4] = sAnim_PutAwayRodSouth,
    [5] = sAnim_PutAwayRodNorth,
    [6] = sAnim_PutAwayRodWest,
    [7] = sAnim_PutAwayRodEast,
    [8] = sAnim_HookedPokemonSouth,
    [9] = sAnim_HookedPokemonNorth,
    [10] = sAnim_HookedPokemonWest,
    [11] = sAnim_HookedPokemonEast,
};

static const struct StepAnimTable sStepAnimTables[] = {
    {
        .anims = sAnimTable_QuintyPlump,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = sAnimTable_Standard,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = sAnimTable_RedGreenNormal,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = sAnimTable_AcroBike,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = sAnimTable_RedGreenSurf,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = sAnimTable_Nurse,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = sAnimTable_RedGreenFish,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = sAnimTable_Unknown,
        .animPos = {3, 7, 0, 4},
    },
    {}
};
# 477 "src/event_object_movement.c" 2
# 1 "src/data/object_events/base_oam.h" 1
const struct OamData gObjectEventBaseOam_8x8 = {
    .shape = (((0 << 2) | (0)) & 0x03),
    .size = ((((0 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_16x8 = {
    .shape = (((0 << 2) | (1)) & 0x03),
    .size = ((((0 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_16x16 = {
    .shape = (((1 << 2) | (0)) & 0x03),
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_32x16 = {
    .shape = (((2 << 2) | (1)) & 0x03),
    .size = ((((2 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_32x8 = {
    .shape = (((1 << 2) | (1)) & 0x03),
    .size = ((((1 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_64x32 = {
    .shape = (((3 << 2) | (1)) & 0x03),
    .size = ((((3 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_16x32 = {
    .shape = (((2 << 2) | (2)) & 0x03),
    .size = ((((2 << 2) | (2)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_32x32 = {
    .shape = (((2 << 2) | (0)) & 0x03),
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_64x64 = {
    .shape = (((3 << 2) | (0)) & 0x03),
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};
# 478 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_subsprites.h" 1
const struct Subsprite gObjectEventSpriteOamTable_16x16_0[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_1[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_2[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 2,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_3[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_4[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 3
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_16x16[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_16x16_0},
    {1, gObjectEventSpriteOamTable_16x16_1},
    {2, gObjectEventSpriteOamTable_16x16_2},
    {2, gObjectEventSpriteOamTable_16x16_3},
    {2, gObjectEventSpriteOamTable_16x16_4},
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_0[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((2 << 2) | (2)) & 0x03),
        .size = ((((2 << 2) | (2)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_1[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((2 << 2) | (2)) & 0x03),
        .size = ((((2 << 2) | (2)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_2[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = -8,
        .y = 8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 6,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_3[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_4[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 3
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_16x32[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_16x32_0},
    {1, gObjectEventSpriteOamTable_16x32_1},
    {3, gObjectEventSpriteOamTable_16x32_2},
    {2, gObjectEventSpriteOamTable_16x32_3},
    {2, gObjectEventSpriteOamTable_16x32_4},
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_0[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (0)) & 0x03),
        .size = ((((2 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_1[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (0)) & 0x03),
        .size = ((((2 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_2[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = 0,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = -16,
        .y = 8,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_3[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = 0,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_4[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = 0,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 3
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_32x32[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_32x32_0},
    {1, gObjectEventSpriteOamTable_32x32_1},
    {3, gObjectEventSpriteOamTable_32x32_2},
    {2, gObjectEventSpriteOamTable_32x32_3},
    {2, gObjectEventSpriteOamTable_32x32_4},
};

const struct Subsprite gObjectEventSpriteOamTable_48x48[] = {
    {
        .x = -24,
        .y = -24,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = 8,
        .y = -24,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = -24,
        .y = -16,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 6,
        .priority = 2
    },
    {
        .x = 8,
        .y = -16,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 2
    },
    {
        .x = -24,
        .y = -8,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 2
    },
    {
        .x = 8,
        .y = -8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 2
    },
    {
        .x = -24,
        .y = 0,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 18,
        .priority = 2
    },
    {
        .x = 8,
        .y = 0,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -24,
        .y = 8,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = 8,
        .y = 8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = -24,
        .y = 16,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 8,
        .y = 16,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 34,
        .priority = 2
    }
};


const struct SubspriteTable gObjectEventSpriteOamTables_48x48[] = {
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_0[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_1[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_2[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_3[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};


const struct SubspriteTable gObjectEventSpriteOamTables_64x32[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_64x32_0},
    {1, gObjectEventSpriteOamTable_64x32_1},
    {1, gObjectEventSpriteOamTable_64x32_2},
    {1, gObjectEventSpriteOamTable_64x32_3},
    {1, gObjectEventSpriteOamTable_64x32_3},
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_0[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_1[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_2[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_3[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_64x64[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_64x64_0},
    {1, gObjectEventSpriteOamTable_64x64_1},
    {1, gObjectEventSpriteOamTable_64x64_2},
    {1, gObjectEventSpriteOamTable_64x64_3},
    {1, gObjectEventSpriteOamTable_64x64_3},
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_0[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 2
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 2
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 2
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_1[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 1
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 1
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 1
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 1
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 1
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 1
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 1
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 1
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_2[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 2
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 2
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 2
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_3[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 2
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 2
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 2
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 2
    }
};


const struct SubspriteTable gObjectEventSpriteOamTables_96x40[] = {
    {15, gObjectEventSpriteOamTable_96x40_0},
    {15, gObjectEventSpriteOamTable_96x40_0},
    {15, gObjectEventSpriteOamTable_96x40_1},
    {15, gObjectEventSpriteOamTable_96x40_2},
    {15, gObjectEventSpriteOamTable_96x40_3},
    {15, gObjectEventSpriteOamTable_96x40_3},
};

const struct Subsprite gObjectEventSpriteOamTable_128x64_0[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = 32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -32,
        .y = 16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 64,
        .priority = 2
    },
    {
        .x = 32,
        .y = 16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 96,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_128x64_1[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = 32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 1
    },
    {
        .x = -32,
        .y = 16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 64,
        .priority = 1
    },
    {
        .x = 32,
        .y = 16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 96,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_128x64_2[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = 32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 1
    },
    {
        .x = -32,
        .y = 16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 64,
        .priority = 2
    },
    {
        .x = 32,
        .y = 16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 96,
        .priority = 2
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_128x64[] = {
    {4, gObjectEventSpriteOamTable_128x64_0},
    {4, gObjectEventSpriteOamTable_128x64_0},
    {4, gObjectEventSpriteOamTable_128x64_1},
    {4, gObjectEventSpriteOamTable_128x64_2},
    {4, gObjectEventSpriteOamTable_128x64_2},
    {4, gObjectEventSpriteOamTable_128x64_2},
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_0[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 2
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 2
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_1[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 1
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 1
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 1
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 1
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 1
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 1
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 1
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 1
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_2[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 2
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 2
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_3[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 1
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 2
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 2
    }
};


const struct SubspriteTable gObjectEventSpriteOamTables_88x32[] = {
    {16, gObjectEventSpriteOamTable_88x32_0},
    {16, gObjectEventSpriteOamTable_88x32_0},
    {16, gObjectEventSpriteOamTable_88x32_1},
    {16, gObjectEventSpriteOamTable_88x32_2},
    {16, gObjectEventSpriteOamTable_88x32_3},
    {16, gObjectEventSpriteOamTable_88x32_3},
};
# 479 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_graphics_info.h" 1
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedNormal = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenNormal,
    .images = sPicTable_RedNormal,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedBike = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 2,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_RedBike,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedSurf = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 1,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenSurf,
    .images = sPicTable_RedSurf,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedFieldMove = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenFieldMove,
    .images = sPicTable_RedItem,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Policeman = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Policeman,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RSBrendan = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_RSBrendan,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RSMay = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_RSMay,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleBoy = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_LittleBoy,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleGirl = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_LittleGirl,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SittingBoy = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_SittingBoy,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lass = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Lass,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Youngster = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Youngster,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman1 = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Woman1,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman3 = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Woman3,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Boy,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BattleGirl = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_BattleGirl,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BugCatcher = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_BugCatcher,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_FatMan = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_FatMan,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BaldingMan = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_BaldingMan,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman2 = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Woman2,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldMan1 = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_OldMan1,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WorkerM = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_WorkerM,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WorkerF = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_WorkerF,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Beauty = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Beauty,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Chef = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Chef,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldMan2 = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_OldMan2,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldWoman = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_OldWoman,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Camper = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Camper,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Picnicker = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Picnicker,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CooltrainerM = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_CooltrainerM,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CooltrainerF = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_CooltrainerF,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SuperNerd = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_SuperNerd,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Channeler = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Channeler,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RocketF = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_RocketF,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerMWater = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_SwimmerMWater,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerFWater = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_SwimmerFWater,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerMLand = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_SwimmerMLand,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerFLand = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_SwimmerFLand,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Blackbelt = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Blackbelt,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scientist = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Scientist,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Gentleman = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Gentleman,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sailor = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Sailor,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Captain = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Captain,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fisher = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Fisher,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TeachyTVHost = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_TeachyTVHost,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedWoman = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_UnusedWoman,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberF = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_TuberF,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberMWater = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_TuberMWater,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberMLand = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_TuberMLand,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Hiker = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Hiker,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Biker = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 2,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Biker,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GymGuy = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 2,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_GymGuy,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Nurse = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Nurse,
    .images = sPicTable_Nurse,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMaleReceptionist = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_UnusedMaleReceptionist,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ItemBall = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_ItemBall,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ProfOak = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_ProfOak,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Man,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Rocker = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Rocker,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MrFuji = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_MrFuji,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Bruno = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Bruno,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldManLyingDown = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_OldManLyingDown,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CutTree = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_CutTree,
    .images = sPicTable_CutTree,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Clerk = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Clerk,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MGDeliveryman = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_MGDeliveryman,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TrainerTowerDude = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_TrainerTowerDude,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CableClubReceptionist = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_CableClubReceptionist,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnionRoomReceptionist = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_UnionRoomReceptionist,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RockSmashRock = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_RockSmashRock,
    .images = sPicTable_RockSmashRock,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_StrengthBoulder = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_StrengthBoulder,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenNormal = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1110,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenNormal,
    .images = sPicTable_GreenNormal,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenBike = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1110,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 2,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_GreenBike,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenSurf = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1110,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 1,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenSurf,
    .images = sPicTable_GreenSurf,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenFieldMove = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1110,
    .reflectionPaletteTag = 0x1102,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenFieldMove,
    .images = sPicTable_GreenItem,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedBikeAlt = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_SPECIAL,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 2,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_RedBike,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RocketM = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_RocketM,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Celio = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Celio,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Agatha = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Agatha,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Brock = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Brock,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Misty = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Misty,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LtSurge = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_LtSurge,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Erika = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Erika,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Koga = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Koga,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Giovanni = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Giovanni,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Blaine = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Blaine,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sabrina = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Sabrina,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Bill = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Bill,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Daisy = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Daisy,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lorelei = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Lorelei,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lance = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Lance,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Blue = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Blue,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedFish = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_RedGreenFish,
    .images = sPicTable_RedFish,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenFish = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1110,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_RedGreenFish,
    .images = sPicTable_GreenFish,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedVSSeeker = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenVSSeeker,
    .images = sPicTable_RedItem,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RedVSSeekerBike = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_RedGreenVSSeekerBike,
    .images = sPicTable_RedVSSeekerBike,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenVSSeeker = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_RedGreenVSSeeker,
    .images = sPicTable_GreenItem,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GreenVSSeekerBike = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1100,
    .reflectionPaletteTag = 0x1102,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_PLAYER,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_RedGreenVSSeekerBike,
    .images = sPicTable_GreenVSSeekerBike,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TownMap = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 32,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_32x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_TownMap,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pokedex = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_Pokedex,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GBAKid = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_GBAKid,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Snorlax = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Snorlax,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fossil = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_Fossil,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Ruby = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_Ruby,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sapphire = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_Sapphire,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldAmber = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_OldAmber,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GymSign = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_GymSign,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sign = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_Sign,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TrainerTips = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_WoodenSign,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Clipboard = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_Clipboard,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Meteorite = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1113,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_SPECIAL,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_BirthIslandStone,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LaprasDoll = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 0,
    .inanimate = 1,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Inanimate,
    .images = sPicTable_LaprasDoll,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Spearow = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Spearow,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Omanyte = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Omanyte,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kangaskhan = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Kangaskhan,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Psyduck = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Psyduck,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_NidoranF = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_NidoranF,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_NidoranM = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_NidoranM,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Nidorino = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Nidorino,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Meowth = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Meowth,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Seel = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Seel,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Voltorb = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Voltorb,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Slowpoke = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Slowpoke,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Slowbro = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Slowbro,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Machop = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Machop,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wigglytuff = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Wigglytuff,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Doduo = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Doduo,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fearow = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Fearow,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lapras = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Lapras,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Zapdos = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Zapdos,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Moltres = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Moltres,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Articuno = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Articuno,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DeoxysD = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_DeoxysD,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DeoxysA = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_DeoxysA,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DeoxysN = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_DeoxysN,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mewtwo = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Mewtwo,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mew = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Mew,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Entei = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Entei,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Raikou = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Raikou,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Suicune = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Suicune,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lugia = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Lugia,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HoOh = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 512,
    .width = 32,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_32x32,
    .subspriteTables = gObjectEventSpriteOamTables_32x32,
    .anims = sAnimTable_HoOh,
    .images = sPicTable_HoOh,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Celebi = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1105,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_3,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Celebi,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Cubone = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1106,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_4,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Cubone,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Machoke = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Machoke,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kabuto = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Kabuto,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Poliwrath = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Poliwrath,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pidgeot = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Pidgeot,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Chansey = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Chansey,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pikachu = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Pikachu,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Jigglypuff = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Jigglypuff,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pidgey = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Pidgey,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Clefairy = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1104,
    .reflectionPaletteTag = 0x11FF,
    .size = 128,
    .width = 16,
    .height = 16,
    .paletteSlot = PALSLOT_NPC_2,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x16,
    .subspriteTables = gObjectEventSpriteOamTables_16x16,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Clefairy,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mom = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1103,
    .reflectionPaletteTag = 0x11FF,
    .size = 256,
    .width = 16,
    .height = 32,
    .paletteSlot = PALSLOT_NPC_1,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 1,
    .oam = &gObjectEventBaseOam_16x32,
    .subspriteTables = gObjectEventSpriteOamTables_16x32,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Mom,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Seagallop = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1114,
    .reflectionPaletteTag = 0x11FF,
    .size = 2048,
    .width = 64,
    .height = 64,
    .paletteSlot = PALSLOT_NPC_SPECIAL,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_64x64,
    .subspriteTables = gObjectEventSpriteOamTables_64x64,
    .anims = sAnimTable_Standard,
    .images = sPicTable_Seagallop,
    .affineAnims = gDummySpriteAffineAnimTable,
};

const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SSAnne = {
    .tileTag = 0xFFFF,
    .paletteTag = 0x1115,
    .reflectionPaletteTag = 0x11FF,
    .size = 4096,
    .width = 128,
    .height = 64,
    .paletteSlot = PALSLOT_NPC_SPECIAL,
    .shadowSize = 1,
    .inanimate = 0,
    .disableReflectionPaletteLoad = 0,
    .tracks = 0,
    .oam = &gObjectEventBaseOam_8x8,
    .subspriteTables = gObjectEventSpriteOamTables_128x64,
    .anims = sAnimTable_Standard,
    .images = sPicTable_SSAnne,
    .affineAnims = gDummySpriteAffineAnimTable,
};
# 480 "src/event_object_movement.c" 2

static const struct SpritePalette sObjectEventSpritePalettes[] = {
    {gObjectEventPal_NpcBlue, 0x1103},
    {gObjectEventPal_NpcPink, 0x1104},
    {gObjectEventPal_NpcGreen, 0x1105},
    {gObjectEventPal_NpcWhite, 0x1106},
    {gObjectEventPal_NpcBlueReflection, 0x1107},
    {gObjectEventPal_NpcPinkReflection, 0x1108},
    {gObjectEventPal_NpcGreenReflection, 0x1109},
    {gObjectEventPal_NpcWhiteReflection, 0x110A},
    {gObjectEventPal_Player, 0x1100},
    {gObjectEventPal_PlayerReflection, 0x1101},
    {gObjectEventPal_BridgeReflection, 0x1102},
    {gObjectEventPal_RSQuintyPlump, 0x110B},
    {gObjectEventPal_RSQuintyPlumpReflection, 0x110C},
    {gObjectEventPal_Player, 0x1110},
    {gObjectEventPal_PlayerReflection, 0x1111},
    {gObjectEventPal_Meteorite, 0x1113},
    {gObjectEventPal_SSAnne, 0x1115},
    {gObjectEventPal_Seagallop, 0x1114},
    {},
};

static const u16 sPlayerReflectionPaletteTags[] = {
    0x1101,
    0x1101,
    0x1101,
    0x1101,
};

static const u16 sUnusedPlayerReflectionPaletteTags[] = {
    0x1111,
    0x1111,
    0x1111,
    0x1111,
};

static const u16 sPlayerUnderwaterReflectionPaletteTags[] = {
    0x1116,
    0x1116,
    0x1116,
    0x1116,
};

static const struct PairedPalettes gPlayerReflectionPaletteSets[] = {
    {0x1100, sPlayerReflectionPaletteTags},
    {0x1110, sPlayerReflectionPaletteTags},
    {0x1116, sPlayerUnderwaterReflectionPaletteTags},
    {0x11FF, ((void *)0)},
};

static const u16 sRSQuintyPlumpReflectionPaletteTags[] = {
    0x110C,
    0x110C,
    0x110C,
    0x110C,
};

static const u16 sRSTruckReflectionPaletteTags[] = {
    0x110D,
    0x110D,
    0x110D,
    0x110D,
};

static const u16 sRSMachokeReflectionPaletteTags[] = {
    0x110E,
    0x110E,
    0x110E,
    0x110E,
};

static const u16 sRSMovingBoxReflectionPaletteTags[] = {
    0x1112,
    0x1112,
    0x1112,
    0x1112,
};

static const u16 sMeteoriteReflectionPaletteTags[] = {
    0x1113,
    0x1113,
    0x1113,
    0x1113,
};

static const u16 sSeagallopReflectionPaletteTags[] = {
    0x1114,
    0x1114,
    0x1114,
    0x1114,
};

static const u16 sRSSubmarineShadowReflectionPaletteTags[] = {
    0x111B,
    0x111B,
    0x111B,
    0x111B,
};

static const u16 sRSKyogreReflectionPaletteTags[] = {
    0x1118,
    0x1118,
    0x1118,
    0x1118,
};

static const u16 sRSGroudonReflectionPaletteTags[] = {
    0x111A,
    0x111A,
    0x111A,
    0x111A,
};

static const u16 sGreenNPCReflectionPaletteTags[] = {
    0x1109,
    0x1109,
    0x1109,
    0x1109,
};

static const struct PairedPalettes gSpecialObjectReflectionPaletteSets[] = {
    {0x1100, sPlayerReflectionPaletteTags},
    {0x1110, sPlayerReflectionPaletteTags},
    {0x110B, sRSQuintyPlumpReflectionPaletteTags},
    {0x110D, sRSTruckReflectionPaletteTags},
    {0x110E, sRSMachokeReflectionPaletteTags},
    {0x1112, sRSMovingBoxReflectionPaletteTags},
    {0x1113, sMeteoriteReflectionPaletteTags},
    {0x1114, sSeagallopReflectionPaletteTags},
    {0x1117, sRSKyogreReflectionPaletteTags},
    {0x1119, sRSGroudonReflectionPaletteTags},
    {0x1105, sGreenNPCReflectionPaletteTags},
    {0x111B, sRSSubmarineShadowReflectionPaletteTags},
    {0x11FF, ((void *)0)},
};

static const u16 sObjectPaletteTags0[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

static const u16 sObjectPaletteTags1[] = {
    0x1100,
    0x1110,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

static const u16 sObjectPaletteTags2[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

static const u16 sObjectPaletteTags3[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

static const u16 *const gObjectPaletteTagSets[] = {
    sObjectPaletteTags0,
    sObjectPaletteTags1,
    sObjectPaletteTags2,
    sObjectPaletteTags3,
};


# 1 "src/data/field_effects/field_effect_objects.h" 1
const struct SpritePalette gSpritePalette_GeneralFieldEffect0 = { .data = gFieldEffectObjectPalette0, .tag = 0x1004 };
const struct SpritePalette gSpritePalette_GeneralFieldEffect1 = { .data = gFieldEffectObjectPalette1, .tag = 0x1005 };

static const union AnimCmd sAnim_Shadow[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_Shadow[] =
{
    sAnim_Shadow,
};

static const struct SpriteFrameImage sPicTable_ShadowSmall[] = {{.data = (u8 *)gFieldEffectObjectPic_ShadowSmall, .size = sizeof gFieldEffectObjectPic_ShadowSmall} };
static const struct SpriteFrameImage sPicTable_ShadowMedium[] = {{.data = (u8 *)gFieldEffectObjectPic_ShadowMedium, .size = sizeof gFieldEffectObjectPic_ShadowMedium} };
static const struct SpriteFrameImage sPicTable_ShadowLarge[] = {{.data = (u8 *)gFieldEffectObjectPic_ShadowLarge, .size = sizeof gFieldEffectObjectPic_ShadowLarge} };
static const struct SpriteFrameImage sPicTable_ShadowExtraLarge[] = { {.data = (u8 *)gFieldEffectObjectPic_ShadowExtraLarge, .size = sizeof gFieldEffectObjectPic_ShadowExtraLarge} };

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowSmall =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_8x8,
    .anims = sAnimTable_Shadow,
    .images = sPicTable_ShadowSmall,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateShadowFieldEffect,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowMedium =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_16x8,
    .anims = sAnimTable_Shadow,
    .images = sPicTable_ShadowMedium,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateShadowFieldEffect,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowLarge =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_32x8,
    .anims = sAnimTable_Shadow,
    .images = sPicTable_ShadowLarge,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateShadowFieldEffect,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowExtraLarge =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_64x32,
    .anims = sAnimTable_Shadow,
    .images = sPicTable_ShadowExtraLarge,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateShadowFieldEffect,
};

static const struct SpriteFrameImage sPicTable_TallGrass[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_TallGrass[] =
{
    {.frame = {1, 10}},
    {.frame = {2, 10}},
    {.frame = {3, 10}},
    {.frame = {4, 10}},
    {.frame = {0, 10}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_TallGrass[] =
{
    sAnim_TallGrass,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_TallGrass =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_TallGrass,
    .images = sPicTable_TallGrass,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateTallGrassFieldEffect,
};

static const struct SpriteFrameImage sPicTable_Ripple[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_Ripple[] =
{
    {.frame = {0, 12}},
    {.frame = {1, 9}},
    {.frame = {2, 9}},
    {.frame = {3, 9}},
    {.frame = {0, 9}},
    {.frame = {1, 9}},
    {.frame = {2, 11}},
    {.frame = {4, 11}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_Ripple[] =
{
    sAnim_Ripple,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Ripple =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_Ripple,
    .images = sPicTable_Ripple,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = WaitFieldEffectSpriteAnim,
};

static const struct SpriteFrameImage sPicTable_Ash[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_Ash[] =
{
    {.frame = {0, 12}},
    {.frame = {1, 12}},
    {.frame = {2, 8}},
    {.frame = {3, 12}},
    {.frame = {4, 12}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_Ash[] =
{
    sAnim_Ash,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Ash =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_Ash,
    .images = sPicTable_Ash,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateAshFieldEffect,
};

static const struct SpriteFrameImage sPicTable_SurfBlob[] =
{
    {.data = (u8 *)gObjectEventPic_SurfBlob + (2 * 8 * 0 * 64)/2, .size = (2 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SurfBlob + (2 * 8 * 1 * 64)/2, .size = (2 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SurfBlob + (2 * 8 * 2 * 64)/2, .size = (2 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SurfBlob + (2 * 8 * 3 * 64)/2, .size = (2 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SurfBlob + (2 * 8 * 4 * 64)/2, .size = (2 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SurfBlob + (2 * 8 * 5 * 64)/2, .size = (2 * 8 * 64)/2},
};

static const union AnimCmd sSurfBlobAnim_FaceSouth[] =
{
    {.frame = {0, 48}},
    {.frame = {1, 48}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sSurfBlobAnim_FaceNorth[] =
{
    {.frame = {2, 48}},
    {.frame = {3, 48}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sSurfBlobAnim_FaceWest[] =
{
    {.frame = {4, 48}},
    {.frame = {5, 48}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sSurfBlobAnim_FaceEast[] =
{
    {.frame = {4, 48, .hFlip = 1}},
    {.frame = {5, 48, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd *const sAnimTable_SurfBlob[] =
{
    [1 - 1] = sSurfBlobAnim_FaceSouth,
    [2 - 1] = sSurfBlobAnim_FaceNorth,
    [3 - 1] = sSurfBlobAnim_FaceWest,
    [4 - 1] = sSurfBlobAnim_FaceEast,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SurfBlob =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_32x32,
    .anims = sAnimTable_SurfBlob,
    .images = sPicTable_SurfBlob,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateSurfBlobFieldEffect,
};

static const struct SpriteFrameImage sPicTable_Arrow[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sArrowAnim_South[] =
{
    {.frame = {2, 32}},
    {.frame = {3, 32}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sArrowAnim_North[] =
{
    {.frame = {0, 32}},
    {.frame = {1, 32}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sArrowAnim_West[] =
{
    {.frame = {4, 32}},
    {.frame = {5, 32}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd sArrowAnim_East[] =
{
    {.frame = {6, 32}},
    {.frame = {7, 32}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd *const sAnimTable_Arrow[] =
{
    [1 - 1] = sArrowAnim_South,
    [2 - 1] = sArrowAnim_North,
    [3 - 1] = sArrowAnim_West,
    [4 - 1] = sArrowAnim_East,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Arrow =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_Arrow,
    .images = sPicTable_Arrow,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteFrameImage sPicTable_GroundImpactDust[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

static const union AnimCmd sAnim_GroundImpactDust[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_GroundImpactDust[] =
{
    sAnim_GroundImpactDust,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_GroundImpactDust =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x8,
    .anims = sAnimTable_GroundImpactDust,
    .images = sPicTable_GroundImpactDust,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateJumpImpactEffect,
};

static const struct SpriteFrameImage sPicTable_JumpTallGrass[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_JumpTallGrass + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpTallGrass + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpTallGrass + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpTallGrass + (2 * 1 * 3 * 64)/2, .size = (2 * 1 * 64)/2},
};

static const union AnimCmd sAnim_JumpTallGrass[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_JumpTallGrass[] =
{
    sAnim_JumpTallGrass,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_JumpTallGrass =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x8,
    .anims = sAnimTable_JumpTallGrass,
    .images = sPicTable_JumpTallGrass,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateJumpImpactEffect,
};

static const struct SpriteFrameImage sPicTable_SandFootprints[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_SandFootprints + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandFootprints + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sSandFootprintsAnim_South[] =
{
    {.frame = {0, 1, .vFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sSandFootprintsAnim_North[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

static const union AnimCmd sSandFootprintsAnim_West[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

static const union AnimCmd sSandFootprintsAnim_East[] =
{
    {.frame = {1, 1, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_SandFootprints[] =
{
    [0] = sSandFootprintsAnim_South,
    [1] = sSandFootprintsAnim_South,
    [2] = sSandFootprintsAnim_North,
    [3] = sSandFootprintsAnim_West,
    [4] = sSandFootprintsAnim_East,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SandFootprints =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_SandFootprints,
    .images = sPicTable_SandFootprints,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateFootprintsTireTracksFieldEffect,
};

static const struct SpriteFrameImage sPicTable_DeepSandFootprints[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_DeepSandFootprints + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_DeepSandFootprints + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sDeepSandFootprintsAnim_South[] =
{
    {.frame = {0, 1, .vFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sDeepSandFootprintsAnim_North[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

static const union AnimCmd sDeepSandFootprintsAnim_West[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

static const union AnimCmd sDeepSandFootprintsAnim_East[] =
{
    {.frame = {1, 1, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_DeepSandFootprints[] =
{
    [0] = sDeepSandFootprintsAnim_South,
    [1] = sDeepSandFootprintsAnim_South,
    [2] = sDeepSandFootprintsAnim_North,
    [3] = sDeepSandFootprintsAnim_West,
    [4] = sDeepSandFootprintsAnim_East,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_DeepSandFootprints =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_DeepSandFootprints,
    .images = sPicTable_DeepSandFootprints,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateFootprintsTireTracksFieldEffect,
};

static const struct SpriteFrameImage sPicTable_BikeTireTracks[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sBikeTireTracksAnim_South[] =
{
    {.frame = {2, 1}},
    {.type = -1},
};

static const union AnimCmd sBikeTireTracksAnim_North[] =
{
    {.frame = {2, 1}},
    {.type = -1},
};

static const union AnimCmd sBikeTireTracksAnim_West[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

static const union AnimCmd sBikeTireTracksAnim_East[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

static const union AnimCmd sBikeTireTracksAnim_SECornerTurn[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

static const union AnimCmd sBikeTireTracksAnim_SWCornerTurn[] =
{
    {.frame = {0, 1, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sBikeTireTracksAnim_NWCornerTurn[] =
{
    {.frame = {3, 1, .hFlip = 1}},
    {.type = -1},
};

static const union AnimCmd sBikeTireTracksAnim_NECornerTurn[] =
{
    {.frame = {3, 1}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_BikeTireTracks[] =
{
    [0] = sBikeTireTracksAnim_South,
    [1] = sBikeTireTracksAnim_South,
    [2] = sBikeTireTracksAnim_North,
    [3] = sBikeTireTracksAnim_West,
    [4] = sBikeTireTracksAnim_East,
    [5] = sBikeTireTracksAnim_SECornerTurn,
    [6] = sBikeTireTracksAnim_SWCornerTurn,
    [7] = sBikeTireTracksAnim_NWCornerTurn,
    [8] = sBikeTireTracksAnim_NECornerTurn,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeTireTracks =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_BikeTireTracks,
    .images = sPicTable_BikeTireTracks,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateFootprintsTireTracksFieldEffect,
};

static const struct SpriteFrameImage sPicTable_JumpBigSplash[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_JumpBigSplash + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpBigSplash + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpBigSplash + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpBigSplash + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_JumpBigSplash[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_JumpBigSplash[] =
{
    sAnim_JumpBigSplash,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_JumpBigSplash =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_JumpBigSplash,
    .images = sPicTable_JumpBigSplash,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateJumpImpactEffect,
};

static const struct SpriteFrameImage sPicTable_Splash[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_Splash + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Splash + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
};

static const union AnimCmd sAnim_Splash_0[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

static const union AnimCmd sAnim_Splash_1[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd *const sAnimTable_Splash[] =
{
    sAnim_Splash_0,
    sAnim_Splash_1,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Splash =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x8,
    .anims = sAnimTable_Splash,
    .images = sPicTable_Splash,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateSplashFieldEffect,
};

static const struct SpriteFrameImage sPicTable_JumpSmallSplash[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_JumpSmallSplash + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpSmallSplash + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpSmallSplash + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

static const union AnimCmd sAnim_JumpSmallSplash[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_JumpSmallSplash[] =
{
    sAnim_JumpSmallSplash,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_JumpSmallSplash =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x8,
    .anims = sAnimTable_JumpSmallSplash,
    .images = sPicTable_JumpSmallSplash,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateJumpImpactEffect,
};

static const struct SpriteFrameImage sPicTable_LongGrass[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_LongGrass[] =
{
    {.frame = {1, 3}},
    {.frame = {2, 3}},
    {.frame = {0, 4}},
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_LongGrass[] =
{
    sAnim_LongGrass,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_LongGrass =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_LongGrass,
    .images = sPicTable_LongGrass,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateLongGrassFieldEffect,
};

static const struct SpriteFrameImage sPicTable_JumpLongGrass[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_JumpLongGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpLongGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpLongGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpLongGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpLongGrass + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpLongGrass + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_JumpLongGrass[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {5, 8}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_JumpLongGrass[] =
{
    sAnim_JumpLongGrass,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_JumpLongGrass =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_JumpLongGrass,
    .images = sPicTable_JumpLongGrass,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateJumpImpactEffect,
};

static const struct SpriteFrameImage sPicTable_UnusedGrass[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_UnusedGrass[] =
{
    {.frame = {0, 10}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.frame = {8, 4}},
    {.jump = {.type = -2, .target = 7}},
};

static const union AnimCmd *const sAnimTable_UnusedGrass[] =
{
    sAnim_UnusedGrass,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_UnusedGrass =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_UnusedGrass,
    .images = sPicTable_UnusedGrass,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = WaitFieldEffectSpriteAnim,
};

static const struct SpriteFrameImage sPicTable_UnusedGrass2[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass2 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass2 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass2 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedGrass2 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_UnusedGrass2[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd *const sAnimTable_UnusedGrass2[] =
{
    sAnim_UnusedGrass2,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_UnusedGrass2 =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_UnusedGrass2,
    .images = sPicTable_UnusedGrass2,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = WaitFieldEffectSpriteAnim,
};

static const struct SpriteFrameImage sPicTable_UnusedSand[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_UnusedSand + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedSand + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedSand + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_UnusedSand + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_UnusedSand[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd *const sAnimTable_UnusedSand[] =
{
    sAnim_UnusedSand,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_UnusedSand =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_UnusedSand,
    .images = sPicTable_UnusedSand,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = WaitFieldEffectSpriteAnim,
};

static const struct SpriteFrameImage sPicTable_SandPile[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_SandPile + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandPile + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandPile + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

static const union AnimCmd sAnim_SandPile[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_SandPile[] =
{
    sAnim_SandPile,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SandPile =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x8,
    .anims = sAnimTable_SandPile,
    .images = sPicTable_SandPile,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateSandPileFieldEffect,
};

static const struct SpriteFrameImage sPicTable_WaterSurfacing[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_WaterSurfacing + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_WaterSurfacing + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_WaterSurfacing + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_WaterSurfacing + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_WaterSurfacing[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

static const union AnimCmd *const sAnimTable_WaterSurfacing[] =
{
    sAnim_WaterSurfacing,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_WaterSurfacing =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_WaterSurfacing,
    .images = sPicTable_WaterSurfacing,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = WaitFieldEffectSpriteAnim,
};

const union AffineAnimCmd sAffineAnim_ReflectionDistortion_0[] =
{
    {.frame = {.xScale = -256, .yScale = 256, .rotation = 128, .duration = 0}},
    {.frame = {.xScale = 1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = -1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = -1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.jump = {.type = 0x7FFE, .target = 1}},
};

const union AffineAnimCmd sAffineAnim_ReflectionDistortion_1[] =
{
    {.frame = {.xScale = 256, .yScale = 256, .rotation = 128, .duration = 0}},
    {.frame = {.xScale = -1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = -1, .yScale = 0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0, .yScale = 0, .rotation = 0, .duration = 8}},
    {.jump = {.type = 0x7FFE, .target = 1}},
};

const union AffineAnimCmd *const sAffineAnims_ReflectionDistortion[] =
{
    sAffineAnim_ReflectionDistortion_0,
    sAffineAnim_ReflectionDistortion_1,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ReflectionDistortion =
{
    .tileTag = 0x0,
    .paletteTag = 0xFFFF,
    .oam = &gDummyOamData,
    .anims = gDummySpriteAnimTable,
    .images = ((void *)0),
    .affineAnims = sAffineAnims_ReflectionDistortion,
    .callback = SpriteCallbackDummy,
};
# 985 "src/data/field_effects/field_effect_objects.h"
static const struct SpriteFrameImage sPicTable_TreeDisguise[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const union AnimCmd sAnim_TreeDisguise[] =
{
    {.frame = {0, 16}},
    {.type = -1},
};

static const union AnimCmd sAnim_TreeDisguiseReveal[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_TreeDisguise[] =
{
    sAnim_TreeDisguise,
    sAnim_TreeDisguiseReveal,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_TreeDisguise =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_16x32,
    .anims = sAnimTable_TreeDisguise,
    .images = sPicTable_TreeDisguise,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateDisguiseFieldEffect,
};

static const struct SpriteFrameImage sPicTable_MountainDisguise[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const union AnimCmd sAnim_MountainDisguise[] =
{
    {.frame = {0, 16}},
    {.type = -1},
};

static const union AnimCmd sAnim_MountainDisguiseReveal[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_MountainDisguise[] =
{
    sAnim_MountainDisguise,
    sAnim_MountainDisguiseReveal,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_MountainDisguise =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_16x32,
    .anims = sAnimTable_MountainDisguise,
    .images = sPicTable_MountainDisguise,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateDisguiseFieldEffect,
};

static const struct SpriteFrameImage sPicTable_SandDisguisePlaceholder[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SandDisguisePlaceholder =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_16x32,
    .anims = sAnimTable_TreeDisguise,
    .images = sPicTable_SandDisguisePlaceholder,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateDisguiseFieldEffect,
};

static const struct SpriteFrameImage sPicTable_Bird[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_Bird + (8 * 8 * 0 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bird + (8 * 8 * 1 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bird + (8 * 8 * 2 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bird + (8 * 8 * 3 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bird + (8 * 8 * 4 * 64)/2, .size = (8 * 8 * 64)/2},
};

static const union AnimCmd sAnim_Bird_WithoutPlayer[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_Bird_Red_FlyOut[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_Bird_Red_FlyIn[] =
{
    {.frame = {2, 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_Bird_Green_FlyOut[] =
{
    {.frame = {3, 1}},
    {.type = -1},
};

static const union AnimCmd sAnim_Bird_Green_FlyIn[] =
{
    {.frame = {4, 1}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_Bird[] =
{
    sAnim_Bird_WithoutPlayer,
    sAnim_Bird_Red_FlyOut,
    sAnim_Bird_Red_FlyIn,
    sAnim_Bird_Green_FlyOut,
    sAnim_Bird_Green_FlyIn,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Bird =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0xFFFF,
    .oam = &gObjectEventBaseOam_64x64,
    .anims = sAnimTable_Bird,
    .images = sPicTable_Bird,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteFrameImage sPicTable_ShortGrass[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_ShortGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_ShortGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_ShortGrass[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_ShortGrass[] =
{
    sAnim_ShortGrass,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShortGrass =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_ShortGrass,
    .images = sPicTable_ShortGrass,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateShortGrassFieldEffect,
};

static const struct SpriteFrameImage sPicTable_HotSpringsWater[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_HotSpringsWater, .size = sizeof gFieldEffectObjectPic_HotSpringsWater},
};

static const union AnimCmd sAnim_HotSpringsWater[] =
{
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_HotSpringsWater[] =
{
    sAnim_HotSpringsWater,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_HotSpringsWater =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1005,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_HotSpringsWater,
    .images = sPicTable_HotSpringsWater,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateHotSpringsWaterFieldEffect,
};

static const struct SpriteFrameImage sPicTable_AshPuff[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_AshPuff + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshPuff + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshPuff + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshPuff + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshPuff + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_AshPuff[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_AshPuff[] =
{
    sAnim_AshPuff,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_AshPuff =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x100D,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_AshPuff,
    .images = sPicTable_AshPuff,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_PopOutOfAsh,
};

const struct SpritePalette gSpritePalette_Ash = { .data = gFieldEffectPal_Ash, .tag = 0x100D };

static const struct SpriteFrameImage sPicTable_AshLaunch[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_AshLaunch + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshLaunch + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshLaunch + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshLaunch + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_AshLaunch + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_AshLaunch[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_AshLaunch[] =
{
    sAnim_AshLaunch,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_AshLaunch =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x100D,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_AshLaunch,
    .images = sPicTable_AshLaunch,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_AshLaunch,
};

static const struct SpriteFrameImage sPicTable_Bubbles[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
};

static const union AnimCmd sAnim_Bubbles[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_Bubbles[] =
{
    sAnim_Bubbles,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Bubbles =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x1004,
    .oam = &gObjectEventBaseOam_16x32,
    .anims = sAnimTable_Bubbles,
    .images = sPicTable_Bubbles,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateBubblesFieldEffect,
};

static const struct SpriteFrameImage sPicTable_SmallSparkle[] =
{
    {.data = (u8 *)gFieldEffectObjectPic_SmallSparkle + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SmallSparkle + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

static const union AnimCmd sAnim_SmallSparkle[] =
{
    {.frame = {0, 3}},
    {.frame = {1, 5}},
    {.frame = {0, 5}},
    {.type = -1},
};

static const union AnimCmd *const sAnimTable_SmallSparkle[] =
{
    sAnim_SmallSparkle,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SmallSparkle =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x100F,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = sAnimTable_SmallSparkle,
    .images = sPicTable_SmallSparkle,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = UpdateSparkleFieldEffect,
};

const struct SpritePalette gSpritePalette_SmallSparkle = { .data = gFieldEffectPal_SmallSparkle, .tag = 0x100F };
# 678 "src/event_object_movement.c" 2

static const s16 gMovementDelaysMedium[] = {32, 64, 96, 128};
static const s16 gMovementDelaysLong[] = {32, 64, 128, 192};
static const s16 gMovementDelaysShort[] = {32, 48, 64, 80};

# 1 "src/data/object_events/movement_type_func_tables.h" 1
static bool8 MovementType_WanderAround_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderAround_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderAround_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderAround_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderAround_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderAround_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderAround_Step5Slower(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderAround_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_LookAround_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_LookAround_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_LookAround_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_LookAround_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_LookAround_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderUpAndDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderUpAndDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderUpAndDown_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderUpAndDown_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderUpAndDown_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderUpAndDown_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderUpAndDown_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderLeftAndRight_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WanderLeftAndRight_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDirection_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDirection_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndUp_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndUp_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndUp_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownUpAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceUpLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_FaceDownLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateCounterclockwise_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateCounterclockwise_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateCounterclockwise_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateCounterclockwise_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateClockwise_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateClockwise_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateClockwise_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RotateClockwise_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkBackAndForth_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkBackAndForth_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkBackAndForth_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkBackAndForth_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequence_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequence_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceUpRightLeftDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceRightLeftDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceDownUpRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceLeftDownUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceUpLeftRightDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceLeftRightDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceDownUpLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceRightDownUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceLeftUpDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceUpDownRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceRightLeftUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceDownRightLeftUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceRightUpDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceUpDownLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceLeftRightUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceDownLeftRightUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceUpLeftDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceDownRightUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceLeftDownRightUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceRightUpLeftDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceUpRightDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceDownLeftUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceLeftUpRightDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkSequenceRightDownLeftUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_CopyPlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_CopyPlayer_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_CopyPlayer_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 CopyablePlayerMovement_None(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 CopyablePlayerMovement_FaceDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 CopyablePlayerMovement_GoSpeed0(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 CopyablePlayerMovement_GoSpeed1(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 CopyablePlayerMovement_GoSpeed2(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 CopyablePlayerMovement_Slide(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 cph_IM_DIFFERENT(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 CopyablePlayerMovement_GoSpeed4(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 CopyablePlayerMovement_Jump(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8));
static bool8 MovementType_CopyPlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_CopyPlayerInGrass_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_CopyPlayer_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_Buried_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_MoveInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_WalkInPlaceFast_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_MoveInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_JogInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_MoveInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_Invisible_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_Invisible_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_Invisible_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RaiseHandAndStop_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RaiseHandAndStop_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RaiseHandAndStop_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RaiseHandAndJump_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RaiseHandAndSwim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite);
static bool8 MovementType_RaiseHandAndMove_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite);

static u8 GetVectorDirection(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_SouthNorth(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_WestEast(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_WestNorth(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_EastNorth(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_WestSouth(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_EastSouth(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_SouthNorthWest(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_SouthNorthEast(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_NorthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy);
static u8 GetLimitedVectorDirection_SouthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy);

u8 (*const gMovementTypeFuncs_WanderAround[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WanderAround_Step0,
    MovementType_WanderAround_Step1,
    MovementType_WanderAround_Step2,
    MovementType_WanderAround_Step3,
    MovementType_WanderAround_Step4,
    MovementType_WanderAround_Step5,
    MovementType_WanderAround_Step6,
};

u8 (*const gMovementTypeFuncs_WanderAroundSlower[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WanderAround_Step0,
    MovementType_WanderAround_Step1,
    MovementType_WanderAround_Step2,
    MovementType_WanderAround_Step3,
    MovementType_WanderAround_Step4,
    MovementType_WanderAround_Step5Slower,
    MovementType_WanderAround_Step6,
};

const u8 gStandardDirections[] = {1, 2, 3, 4};

u8 (*const gGetVectorDirectionFuncs[])(s16, s16, s16, s16) = {
    GetVectorDirection,
    GetLimitedVectorDirection_SouthNorth,
    GetLimitedVectorDirection_WestEast,
    GetLimitedVectorDirection_WestNorth,
    GetLimitedVectorDirection_EastNorth,
    GetLimitedVectorDirection_WestSouth,
    GetLimitedVectorDirection_EastSouth,
    GetLimitedVectorDirection_SouthNorthWest,
    GetLimitedVectorDirection_SouthNorthEast,
    GetLimitedVectorDirection_NorthWestEast,
    GetLimitedVectorDirection_SouthWestEast,
};

u8 (*const gMovementTypeFuncs_LookAround[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_LookAround_Step0,
    MovementType_LookAround_Step1,
    MovementType_LookAround_Step2,
    MovementType_LookAround_Step3,
    MovementType_LookAround_Step4,
};

u8 (*const gMovementTypeFuncs_WanderUpAndDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WanderUpAndDown_Step0,
    MovementType_WanderUpAndDown_Step1,
    MovementType_WanderUpAndDown_Step2,
    MovementType_WanderUpAndDown_Step3,
    MovementType_WanderUpAndDown_Step4,
    MovementType_WanderUpAndDown_Step5,
    MovementType_WanderUpAndDown_Step6,
};

const u8 gUpAndDownDirections[] = {1, 2};

u8 (*const gMovementTypeFuncs_WanderLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WanderLeftAndRight_Step0,
    MovementType_WanderLeftAndRight_Step1,
    MovementType_WanderLeftAndRight_Step2,
    MovementType_WanderLeftAndRight_Step3,
    MovementType_WanderLeftAndRight_Step4,
    MovementType_WanderLeftAndRight_Step5,
    MovementType_WanderLeftAndRight_Step6,
};

const u8 gLeftAndRightDirections[] = {3, 4};

u8 (*const gMovementTypeFuncs_FaceDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDirection_Step0,
    MovementType_FaceDirection_Step1,
    MovementType_FaceDirection_Step2,
};

u8 (*const gMovementTypeFuncs_FaceDownAndUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownAndUp_Step0,
    MovementType_FaceDownAndUp_Step1,
    MovementType_FaceDownAndUp_Step2,
    MovementType_FaceDownAndUp_Step3,
    MovementType_FaceDownAndUp_Step4,
};

u8 (*const gMovementTypeFuncs_FaceLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceLeftAndRight_Step0,
    MovementType_FaceLeftAndRight_Step1,
    MovementType_FaceLeftAndRight_Step2,
    MovementType_FaceLeftAndRight_Step3,
    MovementType_FaceLeftAndRight_Step4,
};

u8 (*const gMovementTypeFuncs_FaceUpAndLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceUpAndLeft_Step0,
    MovementType_FaceUpAndLeft_Step1,
    MovementType_FaceUpAndLeft_Step2,
    MovementType_FaceUpAndLeft_Step3,
    MovementType_FaceUpAndLeft_Step4,
};

const u8 gUpAndLeftDirections[] = {2, 3};

u8 (*const gMovementTypeFuncs_FaceUpAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceUpAndRight_Step0,
    MovementType_FaceUpAndRight_Step1,
    MovementType_FaceUpAndRight_Step2,
    MovementType_FaceUpAndRight_Step3,
    MovementType_FaceUpAndRight_Step4,
};

const u8 gUpAndRightDirections[] = {2, 4};

u8 (*const gMovementTypeFuncs_FaceDownAndLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownAndLeft_Step0,
    MovementType_FaceDownAndLeft_Step1,
    MovementType_FaceDownAndLeft_Step2,
    MovementType_FaceDownAndLeft_Step3,
    MovementType_FaceDownAndLeft_Step4,
};

const u8 gDownAndLeftDirections[] = {1, 3};

u8 (*const gMovementTypeFuncs_FaceDownAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownAndRight_Step0,
    MovementType_FaceDownAndRight_Step1,
    MovementType_FaceDownAndRight_Step2,
    MovementType_FaceDownAndRight_Step3,
    MovementType_FaceDownAndRight_Step4,
};

const u8 gDownAndRightDirections[] = {1, 4};

u8 (*const gMovementTypeFuncs_FaceDownUpAndLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownUpAndLeft_Step0,
    MovementType_FaceDownUpAndLeft_Step1,
    MovementType_FaceDownUpAndLeft_Step2,
    MovementType_FaceDownUpAndLeft_Step3,
    MovementType_FaceDownUpAndLeft_Step4,
};

const u8 gDownUpAndLeftDirections[] = {2, 1, 3, 1};

u8 (*const gMovementTypeFuncs_FaceDownUpAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownUpAndRight_Step0,
    MovementType_FaceDownUpAndRight_Step1,
    MovementType_FaceDownUpAndRight_Step2,
    MovementType_FaceDownUpAndRight_Step3,
    MovementType_FaceDownUpAndRight_Step4,
};

const u8 gDownUpAndRightDirections[] = {1, 2, 4, 1};

u8 (*const gMovementTypeFuncs_FaceUpLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceUpLeftAndRight_Step0,
    MovementType_FaceUpLeftAndRight_Step1,
    MovementType_FaceUpLeftAndRight_Step2,
    MovementType_FaceUpLeftAndRight_Step3,
    MovementType_FaceUpLeftAndRight_Step4,
};

const u8 gUpLeftAndRightDirections[] = {2, 3, 4, 2};

u8 (*const gMovementTypeFuncs_FaceDownLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownLeftAndRight_Step0,
    MovementType_FaceDownLeftAndRight_Step1,
    MovementType_FaceDownLeftAndRight_Step2,
    MovementType_FaceDownLeftAndRight_Step3,
    MovementType_FaceDownLeftAndRight_Step4,
};

const u8 gDownLeftAndRightDirections[] = {3, 4, 1, 1};

u8 (*const gMovementTypeFuncs_RotateCounterclockwise[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RotateCounterclockwise_Step0,
    MovementType_RotateCounterclockwise_Step1,
    MovementType_RotateCounterclockwise_Step2,
    MovementType_RotateCounterclockwise_Step3,
};

const u8 gCounterclockwiseDirections[] = {1, 4, 3, 1, 2};

u8 (*const gMovementTypeFuncs_RotateClockwise[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RotateClockwise_Step0,
    MovementType_RotateClockwise_Step1,
    MovementType_RotateClockwise_Step2,
    MovementType_RotateClockwise_Step3,
};

const u8 gClockwiseDirections[] = {1, 3, 4, 2, 1};

u8 (*const gMovementTypeFuncs_WalkBackAndForth[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkBackAndForth_Step0,
    MovementType_WalkBackAndForth_Step1,
    MovementType_WalkBackAndForth_Step2,
    MovementType_WalkBackAndForth_Step3,
};

u8 (*const gMovementTypeFuncs_WalkSequenceUpRightLeftDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpRightLeftDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpRightLeftDownDirections[] = {2, 4, 3, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceRightLeftDownUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightLeftDownUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightLeftDownUpDirections[] = {4, 3, 1, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceDownUpRightLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownUpRightLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownUpRightLeftDirections[] = {1, 2, 4, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftDownUpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftDownUpRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftDownUpRightDirections[] = {3, 1, 2, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceUpLeftRightDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpLeftRightDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpLeftRightDownDirections[] = {2, 3, 4, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftRightDownUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftRightDownUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftRightDownUpDirections[] = {3, 4, 1, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceDownUpLeftRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownUpLeftRight_Step1,
    MovementType_WalkSequence_Step2,
};

u8 (*const gMovementTypeFuncs_WalkSequenceRightDownUpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightDownUpLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightDownUpLeftDirections[] = {4, 1, 2, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftUpDownRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftUpDownRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftUpDownRightDirections[] = {3, 2, 1, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceUpDownRightLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpDownRightLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpDownRightLeftDirections[] = {2, 1, 4, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceRightLeftUpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightLeftUpDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightLeftUpDownDirections[] = {4, 3, 2, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceDownRightLeftUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownRightLeftUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownRightLeftUpDirections[] = {1, 4, 3, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceRightUpDownLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightUpDownLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightUpDownLeftDirections[] = {4, 2, 1, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceUpDownLeftRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpDownLeftRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpDownLeftRightDirections[] = {2, 1, 3, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftRightUpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftRightUpDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftRightUpDownDirections[] = {3, 4, 2, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceDownLeftRightUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownLeftRightUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownLeftRightUpDirections[] = {1, 3, 4, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceUpLeftDownRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpLeftDownRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpLeftDownRightDirections[] = {2, 3, 1, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceDownRightUpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownRightUpLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownRightUpLeftDirections[] = {1, 4, 2, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftDownRightUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftDownRightUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftDownRightUpDirections[] = {3, 1, 4, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceRightUpLeftDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightUpLeftDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightUpLeftDownDirections[] = {4, 2, 3, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceUpRightDownLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpRightDownLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpRightDownLeftDirections[] = {2, 4, 1, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceDownLeftUpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownLeftUpRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownLeftUpRightDirections[] = {1, 3, 2, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftUpRightDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftUpRightDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftUpRightDownDirections[] = {3, 2, 4, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceRightDownLeftUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightDownLeftUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightDownLeftUpDirections[] = {4, 1, 3, 2};

u8 (*const gMovementTypeFuncs_CopyPlayer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_CopyPlayer_Step0,
    MovementType_CopyPlayer_Step1,
    MovementType_CopyPlayer_Step2,
};

bool8 (*const gCopyPlayerMovementFuncs[])(struct ObjectEvent *, struct Sprite *, u8, bool8(u8)) = {
    CopyablePlayerMovement_None,
    CopyablePlayerMovement_FaceDirection,
    CopyablePlayerMovement_GoSpeed0,
    CopyablePlayerMovement_GoSpeed1,
    CopyablePlayerMovement_GoSpeed2,
    CopyablePlayerMovement_Slide,
    cph_IM_DIFFERENT,
    CopyablePlayerMovement_GoSpeed4,
    CopyablePlayerMovement_Jump,
    CopyablePlayerMovement_None,
    CopyablePlayerMovement_None,
};

u8 (*const gMovementTypeFuncs_CopyPlayerInGrass[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_CopyPlayer_Step0,
    MovementType_CopyPlayerInGrass_Step1,
    MovementType_CopyPlayer_Step2,
};

u8 (*const gMovementTypeFuncs_Buried[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_Buried_Step0,
};

u8 (*const gMovementTypeFuncs_WalkInPlace[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_WalkInPlaceFast[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkInPlaceFast_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_JogInPlace[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_JogInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_Invisible[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_Invisible_Step0,
    MovementType_Invisible_Step1,
    MovementType_Invisible_Step2,
};

u8 (*const gMovementTypeFuncs_RaiseHandAndStop[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RaiseHandAndStop_Step0,
    MovementType_RaiseHandAndStop_Step1,
    MovementType_RaiseHandAndStop_Step2,
};

u8 (*const gMovementTypeFuncs_RaiseHandAndJump[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RaiseHandAndJump_Step0,
    MovementType_RaiseHandAndMove_Step1,
};

u8 (*const gMovementTypeFuncs_RaiseHandAndSwim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RaiseHandAndSwim_Step0,
    MovementType_RaiseHandAndMove_Step1,
};
# 684 "src/event_object_movement.c" 2

static const u8 sFaceDirectionAnimNums[] = {
    [0] = 0,
    [1] = 0,
    [2] = 1,
    [3] = 2,
    [4] = 3,
    [5] = 0,
    [6] = 0,
    [7] = 1,
    [8] = 1,
};

static const u8 sMoveDirectionAnimNums[] = {
    [0] = 4,
    [1] = 4,
    [2] = 5,
    [3] = 6,
    [4] = 7,
    [5] = 4,
    [6] = 4,
    [7] = 5,
    [8] = 5,
};

static const u8 sMoveDirectionFastAnimNums[] = {
    [0] = 8,
    [1] = 8,
    [2] = 9,
    [3] = 10,
    [4] = 11,
    [5] = 8,
    [6] = 8,
    [7] = 9,
    [8] = 9,
};

static const u8 sMoveDirectionFasterAnimNums[] = {
    [0] = 12,
    [1] = 12,
    [2] = 13,
    [3] = 14,
    [4] = 15,
    [5] = 12,
    [6] = 12,
    [7] = 13,
    [8] = 13,
};

static const u8 sMoveDirectionFastestAnimNums[] = {
    [0] = 16,
    [1] = 16,
    [2] = 17,
    [3] = 18,
    [4] = 19,
    [5] = 16,
    [6] = 16,
    [7] = 17,
    [8] = 17,
};

static const u8 sJumpSpecialDirectionAnimNums[] = {
    [0] = (20 + 0),
    [1] = (20 + 0),
    [2] = (20 + 1),
    [3] = (20 + 2),
    [4] = (20 + 3),
    [5] = (20 + 0),
    [6] = (20 + 0),
    [7] = (20 + 1),
    [8] = (20 + 1),
};

static const u8 sAcroBunnyHopBackWheelDirectionAnimNums[] = {
    [0] = (20 + 0),
    [1] = (20 + 0),
    [2] = (20 + 1),
    [3] = (20 + 2),
    [4] = (20 + 3),
    [5] = (20 + 0),
    [6] = (20 + 0),
    [7] = (20 + 1),
    [8] = (20 + 1),
};

static const u8 sAcroBunnyHopFrontWheelDirectionAnimNums[] = {
    [0] = (20 + 4),
    [1] = (20 + 4),
    [2] = (20 + 5),
    [3] = (20 + 6),
    [4] = (20 + 7),
    [5] = (20 + 4),
    [6] = (20 + 4),
    [7] = (20 + 5),
    [8] = (20 + 5),
};

static const u8 sAcroStandingWheelieBackWheelDirectionAnimNums[] = {
    [0] = (20 + 8),
    [1] = (20 + 8),
    [2] = (20 + 9),
    [3] = (20 + 10),
    [4] = (20 + 11),
    [5] = (20 + 8),
    [6] = (20 + 8),
    [7] = (20 + 9),
    [8] = (20 + 9),
};

static const u8 sSpinDirectionAnimNums[] = {
    [0] = (20 + 4),
    [1] = (20 + 4),
    [2] = (20 + 5),
    [3] = (20 + 6),
    [4] = (20 + 7),
    [5] = (20 + 4),
    [6] = (20 + 5),
    [7] = (20 + 6),
    [8] = (20 + 7),
};

static const u8 sAcroStandingWheelieFrontWheelDirectionAnimNums[] = {
    [0] = (20 + 12),
    [1] = (20 + 12),
    [2] = (20 + 13),
    [3] = (20 + 14),
    [4] = (20 + 15),
    [5] = (20 + 12),
    [6] = (20 + 12),
    [7] = (20 + 13),
    [8] = (20 + 13),
};

static const u8 sAcroMovingWheelieDirectionAnimNums[] = {
    [0] = (20 + 16),
    [1] = (20 + 16),
    [2] = (20 + 17),
    [3] = (20 + 18),
    [4] = (20 + 19),
    [5] = (20 + 16),
    [6] = (20 + 16),
    [7] = (20 + 17),
    [8] = (20 + 17),
};

static const u8 sFishingDirectionAnimNums[] = {
    [0] = 0,
    [1] = 0,
    [2] = 1,
    [3] = 2,
    [4] = 3,
    [5] = 0,
    [6] = 0,
    [7] = 1,
    [8] = 1,
};

static const u8 sFishingNoCatchDirectionAnimNums[] = {
    [0] = 4,
    [1] = 4,
    [2] = 5,
    [3] = 6,
    [4] = 7,
    [5] = 4,
    [6] = 4,
    [7] = 5,
    [8] = 5,
};

static const u8 sFishingBiteDirectionAnimNums[] = {
    [0] = 8,
    [1] = 8,
    [2] = 9,
    [3] = 10,
    [4] = 11,
    [5] = 8,
    [6] = 8,
    [7] = 9,
    [8] = 9,
};

static const u8 sRunningDirectionAnimNums[] = {
    [0] = (20 + 0),
    [1] = (20 + 0),
    [2] = (20 + 1),
    [3] = (20 + 2),
    [4] = (20 + 3),
    [5] = (20 + 0),
    [6] = (20 + 0),
    [7] = (20 + 1),
    [8] = (20 + 1),
};

static const u8 sTrainerFacingDirectionMovementTypes[] = {
    [0] = 0x8,
    [1] = 0x8,
    [2] = 0x7,
    [3] = 0x9,
    [4] = 0xA,
    [5] = 0x8,
    [6] = 0x8,
    [7] = 0x7,
    [8] = 0x7,
};

bool8 (*const gOppositeDirectionBlockedMetatileFuncs[])(u8) = {
    MetatileBehavior_IsSouthBlocked,
    MetatileBehavior_IsNorthBlocked,
    MetatileBehavior_IsWestBlocked,
    MetatileBehavior_IsEastBlocked
};

bool8 (*const gDirectionBlockedMetatileFuncs[])(u8) = {
    MetatileBehavior_IsNorthBlocked,
    MetatileBehavior_IsSouthBlocked,
    MetatileBehavior_IsEastBlocked,
    MetatileBehavior_IsWestBlocked
};

static const struct Coords16 sDirectionToVectors[] = {
    [0] = { 0, 0},
    [1] = { 0, 1},
    [2] = { 0, -1},
    [3] = {-1, 0},
    [4] = { 1, 0},
    [5] = {-1, 1},
    [6] = { 1, 1},
    [7] = {-1, -1},
    [8] = { 1, -1},
};

static const u8 sFaceDirectionMovementActions[] = {
    [0] = 0x0,
    [1] = 0x0,
    [2] = 0x1,
    [3] = 0x2,
    [4] = 0x3,
};

static const u8 sFaceDirectionFastMovementActions[] = {
    [0] = 0x4,
    [1] = 0x4,
    [2] = 0x5,
    [3] = 0x6,
    [4] = 0x7,
};

static const u8 sWalkSlowestMovementActions[] = {
    [0] = 0x9B,
    [1] = 0x9B,
    [2] = 0x9C,
    [3] = 0x9D,
    [4] = 0x9E,
};

static const u8 sWalkSlowerMovementActions[] = {
    [0] = 0x8,
    [1] = 0x8,
    [2] = 0x9,
    [3] = 0xA,
    [4] = 0xB,
};

static const u8 sWalkSlowMovementActions[] = {
    [0] = 0xC,
    [1] = 0xC,
    [2] = 0xD,
    [3] = 0xE,
    [4] = 0xF,
};

static const u8 sWalkNormalMovementActions[] = {
    [0] = 0x10,
    [1] = 0x10,
    [2] = 0x11,
    [3] = 0x12,
    [4] = 0x13,
};

static const u8 sWalkFastMovementActions[] = {
    [0] = 0x1D,
    [1] = 0x1D,
    [2] = 0x1E,
    [3] = 0x1F,
    [4] = 0x20,
};

static const u8 sGlideMovementActions[] = {
    [0] = 0xA0,
    [1] = 0xA0,
    [2] = 0xA1,
    [3] = 0xA2,
    [4] = 0xA3,
};

static const u8 sRideWaterCurrentMovementActions[] = {
    [0] = 0x31,
    [1] = 0x31,
    [2] = 0x32,
    [3] = 0x33,
    [4] = 0x34,
};

static const u8 sWalkFasterMovementActions[] = {
    [0] = 0x35,
    [1] = 0x35,
    [2] = 0x36,
    [3] = 0x37,
    [4] = 0x38,
};

static const u8 sSlideMovementActions[] = {
    [0] = 0x39,
    [1] = 0x39,
    [2] = 0x3A,
    [3] = 0x3B,
    [4] = 0x3C,
};

static const u8 sPlayerRunMovementActions[] = {
    [0] = 0x3D,
    [1] = 0x3D,
    [2] = 0x3E,
    [3] = 0x3F,
    [4] = 0x40,
};

static const u8 sPlayerRunSlowMovementActions[] = {
    [0] = 0x41,
    [1] = 0x41,
    [2] = 0x42,
    [3] = 0x43,
    [4] = 0x44,
};

static const u8 sSpinMovementActions[] = {
    [0] = 0x94,
    [1] = 0x94,
    [2] = 0x95,
    [3] = 0x96,
    [4] = 0x97,
};

static const u8 sJump2MovementActions[] = {
    [0] = 0x14,
    [1] = 0x14,
    [2] = 0x15,
    [3] = 0x16,
    [4] = 0x17,
};

static const u8 sJumpInPlaceMovementActions[] = {
    [0] = 0x52,
    [1] = 0x52,
    [2] = 0x53,
    [3] = 0x54,
    [4] = 0x55,
};

static const u8 sJumpInPlaceTurnAroundMovementActions[] = {
    [0] = 0x57,
    [1] = 0x57,
    [2] = 0x56,
    [3] = 0x59,
    [4] = 0x58,
};

static const u8 sJumpMovementActions[] = {
    [0] = 0x4E,
    [1] = 0x4E,
    [2] = 0x4F,
    [3] = 0x50,
    [4] = 0x51,
};

static const u8 sJumpSpecialMovementActions[] = {
    [0] = 0x46,
    [1] = 0x46,
    [2] = 0x47,
    [3] = 0x48,
    [4] = 0x49,
};

static const u8 sJumpSpecialWithEffectMovementActions[] = {
    [0] = 0xA6,
    [1] = 0xA6,
    [2] = 0xA7,
    [3] = 0xA8,
    [4] = 0xA9,
};

static const u8 sWalkInPlaceSlowMovementActions[] = {
    [0] = 0x21,
    [1] = 0x21,
    [2] = 0x22,
    [3] = 0x23,
    [4] = 0x24,
};

static const u8 sWalkInPlaceNormalMovementActions[] = {
    [0] = 0x25,
    [1] = 0x25,
    [2] = 0x26,
    [3] = 0x27,
    [4] = 0x28,
};

static const u8 sWalkInPlaceFastMovementActions[] = {
    [0] = 0x29,
    [1] = 0x29,
    [2] = 0x2A,
    [3] = 0x2B,
    [4] = 0x2C,
};

static const u8 sWalkInPlaceFasterMovementActions[] = {
    [0] = 0x2D,
    [1] = 0x2D,
    [2] = 0x2E,
    [3] = 0x2F,
    [4] = 0x30,
};

static const u8 sAcroWheelieFaceDirectionMovementActions[] = {
    [0] = 0x70,
    [1] = 0x70,
    [2] = 0x71,
    [3] = 0x72,
    [4] = 0x73,
};

static const u8 sAcroPopWheelieFaceDirectionMovementActions[] = {
    [0] = 0x74,
    [1] = 0x74,
    [2] = 0x75,
    [3] = 0x76,
    [4] = 0x77,
};

static const u8 sAcroEndWheelieFaceDirectionMovementActions[] = {
    [0] = 0x78,
    [1] = 0x78,
    [2] = 0x79,
    [3] = 0x7A,
    [4] = 0x7B,
};

static const u8 sAcroWheelieHopFaceDirectionMovementActions[] = {
    [0] = 0x7C,
    [1] = 0x7C,
    [2] = 0x7D,
    [3] = 0x7E,
    [4] = 0x7F,
};

static const u8 sAcroWheelieHopMovementActions[] = {
    [0] = 0x80,
    [1] = 0x80,
    [2] = 0x81,
    [3] = 0x82,
    [4] = 0x83,
};

static const u8 sAcroWheelieJumpMovementActions[] = {
    [0] = 0x84,
    [1] = 0x84,
    [2] = 0x85,
    [3] = 0x86,
    [4] = 0x87,
};

static const u8 sAcroWheelieInPlaceMovementActions[] = {
    [0] = 0x88,
    [1] = 0x88,
    [2] = 0x89,
    [3] = 0x8A,
    [4] = 0x8B,
};

static const u8 sAcroPopWheelieMoveMovementActions[] = {
    [0] = 0x8C,
    [1] = 0x8C,
    [2] = 0x8D,
    [3] = 0x8E,
    [4] = 0x8F,
};

static const u8 sAcroWheelieMoveMovementActions[] = {
    [0] = 0x90,
    [1] = 0x90,
    [2] = 0x91,
    [3] = 0x92,
    [4] = 0x93,
};

static const u8 gOppositeDirections[] = {
    2,
    1,
    4,
    3,
    8,
    7,
    6,
    5,
};

static const u8 sPlayerDirectionsForCopy[][4] = {
    {2, 1, 4, 3},
    {1, 2, 3, 4},
    {3, 4, 2, 1},
    {4, 3, 1, 2}
};

static const u8 sPlayerDirectionToCopyDirection[][4] = {
    {2, 1, 4, 3},
    {1, 2, 3, 4},
    {4, 3, 1, 2},
    {3, 4, 2, 1}
};

# 1 "src/data/object_events/movement_action_func_tables.h" 1
static bool8 MovementAction_FaceDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PauseSpriteAnim(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceDownFast_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceUpFast_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceLeftFast_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceRightFast_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowerRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkNormalRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceSlowDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceSlowUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceSlowLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceSlowRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceSlow_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceNormalDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceNormalUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceNormalLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceNormalRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlace_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFastDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFastUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFastLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFastRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFasterDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFasterUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFasterLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkInPlaceFasterRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Down_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Down_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Up_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Up_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Left_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Left_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Right_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Jump2Right_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Delay1_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Delay2_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Delay4_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Delay8_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Delay16_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Delay_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFastRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RideWaterCurrentRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkFasterRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SlideRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_PlayerRunRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunDownSlow_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunDownSlow_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunUpSlow_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunUpSlow_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunLeftSlow_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunLeftSlow_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunRightSlow_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RunRightSlow_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_StartAnimInDirection_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FacePlayer_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceAwayPlayer_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_LockFacingDirection_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_UnlockFacingDirection_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceDownUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceDownUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceUpDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceUpDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceLeftRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceLeftRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceRightLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpInPlaceRightLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FaceOriginalDirection_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_NurseJoyBowDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_EnableJumpLandingGroundEffect_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_DisableJumpLandingGroundEffect_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_DisableAnimation_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RestoreAnimation_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SetInvisible_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SetVisible_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_EmoteExclamationMark_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_EmoteQuestionMark_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_EmoteX_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_EmoteDoubleExclamationMark_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_EmoteSmile_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RevealTrainer_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RevealTrainer_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RockSmashBreak_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RockSmashBreak_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RockSmashBreak_Step2(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_CutTree_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_CutTree_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_CutTree_Step2(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SetFixedPriority_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_ClearFixedPriority_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_InitAffineAnim_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_ClearAffineAnim_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkDownStartAffine_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkDownStartAffine_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkDownAffine_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkDownAffine_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieFaceDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieFaceUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieFaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieFaceRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroEndWheelieFaceDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroEndWheelieFaceUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroEndWheelieFaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroEndWheelieFaceRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_UnusedAcroActionDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_UnusedAcroActionUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_UnusedAcroActionLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_UnusedAcroActionRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopFaceRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieHopRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieJumpRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieInPlaceDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieInPlaceUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieInPlaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieInPlaceRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroPopWheelieMoveRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_AcroWheelieMoveRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_SpinRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RaiseHand_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RaiseHandAndStop_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RaiseHandAndJump_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_RaiseHandAndSwim_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WalkSlowestRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_ShakeHeadOrWalkInPlace_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_ShakeHeadOrWalkInPlace_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_GlideRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FlyUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FlyUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FlyUp_Step2(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FlyDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_FlyDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectDown_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectDown_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectUp_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectUp_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectLeft_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectLeft_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectRight_Step0(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_JumpSpecialWithEffectRight_Step1(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_WaitSpriteAnim(struct ObjectEvent *, struct Sprite *);
static bool8 MovementAction_Finish(struct ObjectEvent *, struct Sprite *);

static bool8 (*const sMovementActionFuncs_FaceDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceDownFast[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceUpFast[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceLeftFast[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceRightFast[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowerDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowerUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowerLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowerRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkNormalDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkNormalUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkNormalLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkNormalRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Jump2Down[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Jump2Up[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Jump2Left[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Jump2Right[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Delay1[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Delay2[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Delay4[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Delay8[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_Delay16[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFastDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFastUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFastLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFastRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFastDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFastUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFastLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFastRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RideWaterCurrentDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RideWaterCurrentUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RideWaterCurrentLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RideWaterCurrentRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFasterDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFasterUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFasterLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkFasterRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SlideDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SlideUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SlideLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SlideRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunDownSlow[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunUpSlow[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunLeftSlow[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_PlayerRunRightSlow[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_StartAnimInDirection[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FacePlayer[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceAwayPlayer[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_LockFacingDirection[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_UnlockFacingDirection[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceDownUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceUpDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceLeftRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpInPlaceRightLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FaceOriginalDirection[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_NurseJoyBowDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_EnableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_DisableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_DisableAnimation[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RestoreAnimation[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SetInvisible[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SetVisible[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_EmoteExclamationMark[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_EmoteQuestionMark[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_EmoteX[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_EmoteDoubleExclMark[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_EmoteSmile[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RevealTrainer[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RockSmashBreak[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_CutTree[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SetFixedPriority[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_ClearFixedPriority[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_InitAffineAnim[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_ClearAffineAnim[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkDownStartAffine[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkDownAffine[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieHopRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieJumpDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieJumpUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieJumpLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieJumpRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_AcroWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SpinDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SpinUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SpinLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_SpinRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RaiseHandAndStop[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RaiseHandAndJump[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_RaiseHandAndSwim[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowestDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowestUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowestLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_WalkSlowestRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_ShakeHeadOrWalkInPlace[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_GlideDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_GlideUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_GlideLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_GlideRight[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FlyUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_FlyDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectDown[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectUp[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectLeft[])(struct ObjectEvent *, struct Sprite *);
static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectRight[])(struct ObjectEvent *, struct Sprite *);

static u8 GetMoveDirectionFastAnimNum(u8 direction);
static u8 GetMoveDirectionFasterAnimNum(u8 direction);
static u8 GetMoveDirectionFastestAnimNum(u8 direction);

static bool8 (*const *const sMovementActionFuncs[])(struct ObjectEvent *, struct Sprite *) = {
    [0x0] = sMovementActionFuncs_FaceDown,
    [0x1] = sMovementActionFuncs_FaceUp,
    [0x2] = sMovementActionFuncs_FaceLeft,
    [0x3] = sMovementActionFuncs_FaceRight,
    [0x4] = sMovementActionFuncs_FaceDownFast,
    [0x5] = sMovementActionFuncs_FaceUpFast,
    [0x6] = sMovementActionFuncs_FaceLeftFast,
    [0x7] = sMovementActionFuncs_FaceRightFast,
    [0x8] = sMovementActionFuncs_WalkSlowerDown,
    [0x9] = sMovementActionFuncs_WalkSlowerUp,
    [0xA] = sMovementActionFuncs_WalkSlowerLeft,
    [0xB] = sMovementActionFuncs_WalkSlowerRight,
    [0xC] = sMovementActionFuncs_WalkSlowDown,
    [0xD] = sMovementActionFuncs_WalkSlowUp,
    [0xE] = sMovementActionFuncs_WalkSlowLeft,
    [0xF] = sMovementActionFuncs_WalkSlowRight,
    [0x10] = sMovementActionFuncs_WalkNormalDown,
    [0x11] = sMovementActionFuncs_WalkNormalUp,
    [0x12] = sMovementActionFuncs_WalkNormalLeft,
    [0x13] = sMovementActionFuncs_WalkNormalRight,
    [0x14] = sMovementActionFuncs_Jump2Down,
    [0x15] = sMovementActionFuncs_Jump2Up,
    [0x16] = sMovementActionFuncs_Jump2Left,
    [0x17] = sMovementActionFuncs_Jump2Right,
    [0x18] = sMovementActionFuncs_Delay1,
    [0x19] = sMovementActionFuncs_Delay2,
    [0x1A] = sMovementActionFuncs_Delay4,
    [0x1B] = sMovementActionFuncs_Delay8,
    [0x1C] = sMovementActionFuncs_Delay16,
    [0x1D] = sMovementActionFuncs_WalkFastDown,
    [0x1E] = sMovementActionFuncs_WalkFastUp,
    [0x1F] = sMovementActionFuncs_WalkFastLeft,
    [0x20] = sMovementActionFuncs_WalkFastRight,
    [0x21] = sMovementActionFuncs_WalkInPlaceSlowDown,
    [0x22] = sMovementActionFuncs_WalkInPlaceSlowUp,
    [0x23] = sMovementActionFuncs_WalkInPlaceSlowLeft,
    [0x24] = sMovementActionFuncs_WalkInPlaceSlowRight,
    [0x25] = sMovementActionFuncs_WalkInPlaceNormalDown,
    [0x26] = sMovementActionFuncs_WalkInPlaceNormalUp,
    [0x27] = sMovementActionFuncs_WalkInPlaceNormalLeft,
    [0x28] = sMovementActionFuncs_WalkInPlaceNormalRight,
    [0x29] = sMovementActionFuncs_WalkInPlaceFastDown,
    [0x2A] = sMovementActionFuncs_WalkInPlaceFastUp,
    [0x2B] = sMovementActionFuncs_WalkInPlaceFastLeft,
    [0x2C] = sMovementActionFuncs_WalkInPlaceFastRight,
    [0x2D] = sMovementActionFuncs_WalkInPlaceFasterDown,
    [0x2E] = sMovementActionFuncs_WalkInPlaceFasterUp,
    [0x2F] = sMovementActionFuncs_WalkInPlaceFasterLeft,
    [0x30] = sMovementActionFuncs_WalkInPlaceFasterRight,
    [0x31] = sMovementActionFuncs_RideWaterCurrentDown,
    [0x32] = sMovementActionFuncs_RideWaterCurrentUp,
    [0x33] = sMovementActionFuncs_RideWaterCurrentLeft,
    [0x34] = sMovementActionFuncs_RideWaterCurrentRight,
    [0x35] = sMovementActionFuncs_WalkFasterDown,
    [0x36] = sMovementActionFuncs_WalkFasterUp,
    [0x37] = sMovementActionFuncs_WalkFasterLeft,
    [0x38] = sMovementActionFuncs_WalkFasterRight,
    [0x39] = sMovementActionFuncs_SlideDown,
    [0x3A] = sMovementActionFuncs_SlideUp,
    [0x3B] = sMovementActionFuncs_SlideLeft,
    [0x3C] = sMovementActionFuncs_SlideRight,
    [0x3D] = sMovementActionFuncs_PlayerRunDown,
    [0x3E] = sMovementActionFuncs_PlayerRunUp,
    [0x3F] = sMovementActionFuncs_PlayerRunLeft,
    [0x40] = sMovementActionFuncs_PlayerRunRight,
    [0x41] = sMovementActionFuncs_PlayerRunDownSlow,
    [0x42] = sMovementActionFuncs_PlayerRunUpSlow,
    [0x43] = sMovementActionFuncs_PlayerRunLeftSlow,
    [0x44] = sMovementActionFuncs_PlayerRunRightSlow,
    [0x45] = sMovementActionFuncs_StartAnimInDirection,
    [0x46] = sMovementActionFuncs_JumpSpecialDown,
    [0x47] = sMovementActionFuncs_JumpSpecialUp,
    [0x48] = sMovementActionFuncs_JumpSpecialLeft,
    [0x49] = sMovementActionFuncs_JumpSpecialRight,
    [0x4A] = sMovementActionFuncs_FacePlayer,
    [0x4B] = sMovementActionFuncs_FaceAwayPlayer,
    [0x4C] = sMovementActionFuncs_LockFacingDirection,
    [0x4D] = sMovementActionFuncs_UnlockFacingDirection,
    [0x4E] = sMovementActionFuncs_JumpDown,
    [0x4F] = sMovementActionFuncs_JumpUp,
    [0x50] = sMovementActionFuncs_JumpLeft,
    [0x51] = sMovementActionFuncs_JumpRight,
    [0x52] = sMovementActionFuncs_JumpInPlaceDown,
    [0x53] = sMovementActionFuncs_JumpInPlaceUp,
    [0x54] = sMovementActionFuncs_JumpInPlaceLeft,
    [0x55] = sMovementActionFuncs_JumpInPlaceRight,
    [0x56] = sMovementActionFuncs_JumpInPlaceDownUp,
    [0x57] = sMovementActionFuncs_JumpInPlaceUpDown,
    [0x58] = sMovementActionFuncs_JumpInPlaceLeftRight,
    [0x59] = sMovementActionFuncs_JumpInPlaceRightLeft,
    [0x5A] = sMovementActionFuncs_FaceOriginalDirection,
    [0x5B] = sMovementActionFuncs_NurseJoyBowDown,
    [0x5C] = sMovementActionFuncs_EnableJumpLandingGroundEffect,
    [0x5D] = sMovementActionFuncs_DisableJumpLandingGroundEffect,
    [0x5E] = sMovementActionFuncs_DisableAnimation,
    [0x5F] = sMovementActionFuncs_RestoreAnimation,
    [0x60] = sMovementActionFuncs_SetInvisible,
    [0x61] = sMovementActionFuncs_SetVisible,
    [0x62] = sMovementActionFuncs_EmoteExclamationMark,
    [0x63] = sMovementActionFuncs_EmoteQuestionMark,
    [0x64] = sMovementActionFuncs_EmoteX,
    [0x65] = sMovementActionFuncs_EmoteDoubleExclMark,
    [0x66] = sMovementActionFuncs_EmoteSmile,
    [0x67] = sMovementActionFuncs_RevealTrainer,
    [0x68] = sMovementActionFuncs_RockSmashBreak,
    [0x69] = sMovementActionFuncs_CutTree,
    [0x6A] = sMovementActionFuncs_SetFixedPriority,
    [0x6B] = sMovementActionFuncs_ClearFixedPriority,
    [0x6C] = sMovementActionFuncs_InitAffineAnim,
    [0x6D] = sMovementActionFuncs_ClearAffineAnim,
    [0x6E] = sMovementActionFuncs_WalkDownStartAffine,
    [0x6F] = sMovementActionFuncs_WalkDownAffine,
    [0x70] = sMovementActionFuncs_AcroWheelieFaceDown,
    [0x71] = sMovementActionFuncs_AcroWheelieFaceUp,
    [0x72] = sMovementActionFuncs_AcroWheelieFaceLeft,
    [0x73] = sMovementActionFuncs_AcroWheelieFaceRight,
    [0x74] = sMovementActionFuncs_AcroPopWheelieDown,
    [0x75] = sMovementActionFuncs_AcroPopWheelieUp,
    [0x76] = sMovementActionFuncs_AcroPopWheelieLeft,
    [0x77] = sMovementActionFuncs_AcroPopWheelieRight,
    [0x78] = sMovementActionFuncs_AcroEndWheelieFaceDown,
    [0x79] = sMovementActionFuncs_AcroEndWheelieFaceUp,
    [0x7A] = sMovementActionFuncs_AcroEndWheelieFaceLeft,
    [0x7B] = sMovementActionFuncs_AcroEndWheelieFaceRight,
    [0x7C] = sMovementActionFuncs_AcroWheelieHopFaceDown,
    [0x7D] = sMovementActionFuncs_AcroWheelieHopFaceUp,
    [0x7E] = sMovementActionFuncs_AcroWheelieHopFaceLeft,
    [0x7F] = sMovementActionFuncs_AcroWheelieHopFaceRight,
    [0x80] = sMovementActionFuncs_AcroWheelieHopDown,
    [0x81] = sMovementActionFuncs_AcroWheelieHopUp,
    [0x82] = sMovementActionFuncs_AcroWheelieHopLeft,
    [0x83] = sMovementActionFuncs_AcroWheelieHopRight,
    [0x84] = sMovementActionFuncs_AcroWheelieJumpDown,
    [0x85] = sMovementActionFuncs_AcroWheelieJumpUp,
    [0x86] = sMovementActionFuncs_AcroWheelieJumpLeft,
    [0x87] = sMovementActionFuncs_AcroWheelieJumpRight,
    [0x88] = sMovementActionFuncs_AcroWheelieInPlaceDown,
    [0x89] = sMovementActionFuncs_AcroWheelieInPlaceUp,
    [0x8A] = sMovementActionFuncs_AcroWheelieInPlaceLeft,
    [0x8B] = sMovementActionFuncs_AcroWheelieInPlaceRight,
    [0x8C] = sMovementActionFuncs_AcroPopWheelieMoveDown,
    [0x8D] = sMovementActionFuncs_AcroPopWheelieMoveUp,
    [0x8E] = sMovementActionFuncs_AcroPopWheelieMoveLeft,
    [0x8F] = sMovementActionFuncs_AcroPopWheelieMoveRight,
    [0x90] = sMovementActionFuncs_AcroWheelieMoveDown,
    [0x91] = sMovementActionFuncs_AcroWheelieMoveUp,
    [0x92] = sMovementActionFuncs_AcroWheelieMoveLeft,
    [0x93] = sMovementActionFuncs_AcroWheelieMoveRight,
    [0x94] = sMovementActionFuncs_SpinDown,
    [0x95] = sMovementActionFuncs_SpinUp,
    [0x96] = sMovementActionFuncs_SpinLeft,
    [0x97] = sMovementActionFuncs_SpinRight,
    [0x98] = sMovementActionFuncs_RaiseHandAndStop,
    [0x99] = sMovementActionFuncs_RaiseHandAndJump,
    [0x9A] = sMovementActionFuncs_RaiseHandAndSwim,
    [0x9B] = sMovementActionFuncs_WalkSlowestDown,
    [0x9C] = sMovementActionFuncs_WalkSlowestUp,
    [0x9D] = sMovementActionFuncs_WalkSlowestLeft,
    [0x9E] = sMovementActionFuncs_WalkSlowestRight,
    [0x9F] = sMovementActionFuncs_ShakeHeadOrWalkInPlace,
    [0xA0] = sMovementActionFuncs_GlideDown,
    [0xA1] = sMovementActionFuncs_GlideUp,
    [0xA2] = sMovementActionFuncs_GlideLeft,
    [0xA3] = sMovementActionFuncs_GlideRight,
    [0xA4] = sMovementActionFuncs_FlyUp,
    [0xA5] = sMovementActionFuncs_FlyDown,
    [0xA6] = sMovementActionFuncs_JumpSpecialWithEffectDown,
    [0xA7] = sMovementActionFuncs_JumpSpecialWithEffectUp,
    [0xA8] = sMovementActionFuncs_JumpSpecialWithEffectLeft,
    [0xA9] = sMovementActionFuncs_JumpSpecialWithEffectRight,
};

static bool8 (*const sMovementActionFuncs_FaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceDown_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_FaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceUp_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_FaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceLeft_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_FaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceRight_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sDirectionAnimFuncsBySpeed[])(u8) = {
    [MOVE_SPEED_NORMAL] = GetMoveDirectionAnimNum,
    [MOVE_SPEED_FAST_1] = GetMoveDirectionFastAnimNum,
    [MOVE_SPEED_FAST_2] = GetMoveDirectionFastAnimNum,
    [MOVE_SPEED_FASTER] = GetMoveDirectionFasterAnimNum,
    [MOVE_SPEED_FASTEST] = GetMoveDirectionFastestAnimNum,
};

static bool8 (*const sMovementActionFuncs_WalkSlowestDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowestDown_Step0,
    MovementAction_WalkSlowestDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowestUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowestUp_Step0,
    MovementAction_WalkSlowestUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowestLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowestLeft_Step0,
    MovementAction_WalkSlowestLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowestRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowestRight_Step0,
    MovementAction_WalkSlowestRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowerDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowerDown_Step0,
    MovementAction_WalkSlowerDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowerUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowerUp_Step0,
    MovementAction_WalkSlowerUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowerLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowerLeft_Step0,
    MovementAction_WalkSlowerLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowerRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowerRight_Step0,
    MovementAction_WalkSlowerRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowUp_Step0,
    MovementAction_WalkSlowUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowDown_Step0,
    MovementAction_WalkSlowDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowLeft_Step0,
    MovementAction_WalkSlowLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkSlowRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowRight_Step0,
    MovementAction_WalkSlowRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkNormalDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalDown_Step0,
    MovementAction_WalkNormalDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkNormalUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalUp_Step0,
    MovementAction_WalkNormalUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkNormalLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalLeft_Step0,
    MovementAction_WalkNormalLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkNormalRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalRight_Step0,
    MovementAction_WalkNormalRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static const s16 sJumpInitDisplacements[] = {
    [JUMP_DISTANCE_IN_PLACE] = 0,
    [JUMP_DISTANCE_NORMAL] = 1,
    [JUMP_DISTANCE_FAR] = 1,
};

static const s16 sJumpDisplacements[] = {
    [JUMP_DISTANCE_IN_PLACE] = 0,
    [JUMP_DISTANCE_NORMAL] = 0,
    [JUMP_DISTANCE_FAR] = 1,
};

static bool8 (*const sMovementActionFuncs_Jump2Down[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Down_Step0,
    MovementAction_Jump2Down_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_Jump2Up[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Up_Step0,
    MovementAction_Jump2Up_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_Jump2Left[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Left_Step0,
    MovementAction_Jump2Left_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_Jump2Right[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Right_Step0,
    MovementAction_Jump2Right_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_Delay1[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay1_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_Delay2[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay2_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_Delay4[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay4_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_Delay8[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay8_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_Delay16[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay16_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_WalkFastDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastDown_Step0,
    MovementAction_WalkFastDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkFastUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastUp_Step0,
    MovementAction_WalkFastUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkFastLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastLeft_Step0,
    MovementAction_WalkFastLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkFastRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastRight_Step0,
    MovementAction_WalkFastRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_GlideDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_GlideDown_Step0,
    MovementAction_GlideDown_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_GlideUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_GlideUp_Step0,
    MovementAction_GlideUp_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_GlideLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_GlideLeft_Step0,
    MovementAction_GlideLeft_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_GlideRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_GlideRight_Step0,
    MovementAction_GlideRight_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_FaceDownFast[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceDownFast_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_FaceUpFast[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceUpFast_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_FaceLeftFast[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceLeftFast_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_FaceRightFast[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceRightFast_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowDown_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowUp_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowLeft_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceSlowRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowRight_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceNormalRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFastDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFastUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFastLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFastRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFasterDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFasterUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFasterLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkInPlaceFasterRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFasterRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_RideWaterCurrentDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentDown_Step0,
    MovementAction_RideWaterCurrentDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_RideWaterCurrentUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentUp_Step0,
    MovementAction_RideWaterCurrentUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_RideWaterCurrentLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentLeft_Step0,
    MovementAction_RideWaterCurrentLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_RideWaterCurrentRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentRight_Step0,
    MovementAction_RideWaterCurrentRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkFasterDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFasterDown_Step0,
    MovementAction_WalkFasterDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkFasterUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFasterUp_Step0,
    MovementAction_WalkFasterUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkFasterLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFasterLeft_Step0,
    MovementAction_WalkFasterLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkFasterRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFasterRight_Step0,
    MovementAction_WalkFasterRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SlideDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideDown_Step0,
    MovementAction_SlideDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SlideUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideUp_Step0,
    MovementAction_SlideUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SlideLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideLeft_Step0,
    MovementAction_SlideLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SlideRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideRight_Step0,
    MovementAction_SlideRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunDown_Step0,
    MovementAction_PlayerRunDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunUp_Step0,
    MovementAction_PlayerRunUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunLeft_Step0,
    MovementAction_PlayerRunLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunRight_Step0,
    MovementAction_PlayerRunRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunDownSlow[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RunDownSlow_Step0,
    MovementAction_RunDownSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunUpSlow[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RunUpSlow_Step0,
    MovementAction_RunUpSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunLeftSlow[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RunLeftSlow_Step0,
    MovementAction_RunLeftSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_PlayerRunRightSlow[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RunRightSlow_Step0,
    MovementAction_RunRightSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_StartAnimInDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_StartAnimInDirection_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialDown_Step0,
    MovementAction_JumpSpecialDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialUp_Step0,
    MovementAction_JumpSpecialUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialLeft_Step0,
    MovementAction_JumpSpecialLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialRight_Step0,
    MovementAction_JumpSpecialRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialWithEffectDown_Step0,
    MovementAction_JumpSpecialWithEffectDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialWithEffectUp_Step0,
    MovementAction_JumpSpecialWithEffectUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialWithEffectLeft_Step0,
    MovementAction_JumpSpecialWithEffectLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpSpecialWithEffectRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialWithEffectRight_Step0,
    MovementAction_JumpSpecialWithEffectRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_FacePlayer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FacePlayer_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_FaceAwayPlayer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceAwayPlayer_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_LockFacingDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_LockFacingDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_UnlockFacingDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnlockFacingDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpDown_Step0,
    MovementAction_JumpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpUp_Step0,
    MovementAction_JumpUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpLeft_Step0,
    MovementAction_JumpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpRight_Step0,
    MovementAction_JumpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceDown_Step0,
    MovementAction_JumpInPlaceDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceUp_Step0,
    MovementAction_JumpInPlaceUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceLeft_Step0,
    MovementAction_JumpInPlaceLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceRight_Step0,
    MovementAction_JumpInPlaceRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceDownUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceDownUp_Step0,
    MovementAction_JumpInPlaceDownUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceUpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceUpDown_Step0,
    MovementAction_JumpInPlaceUpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceLeftRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceLeftRight_Step0,
    MovementAction_JumpInPlaceLeftRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_JumpInPlaceRightLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceRightLeft_Step0,
    MovementAction_JumpInPlaceRightLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_FaceOriginalDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceOriginalDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_NurseJoyBowDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_NurseJoyBowDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_EnableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EnableJumpLandingGroundEffect_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_DisableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_DisableJumpLandingGroundEffect_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_DisableAnimation[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_DisableAnimation_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_RestoreAnimation[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RestoreAnimation_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_SetInvisible[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SetInvisible_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_SetVisible[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SetVisible_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_EmoteExclamationMark[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteExclamationMark_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_EmoteQuestionMark[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteQuestionMark_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_EmoteX[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteX_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_EmoteDoubleExclMark[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteDoubleExclamationMark_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_EmoteSmile[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteSmile_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_RevealTrainer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RevealTrainer_Step0,
    MovementAction_RevealTrainer_Step1,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_RockSmashBreak[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RockSmashBreak_Step0,
    MovementAction_RockSmashBreak_Step1,
    MovementAction_RockSmashBreak_Step2,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_CutTree[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_CutTree_Step0,
    MovementAction_CutTree_Step1,
    MovementAction_CutTree_Step2,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_SetFixedPriority[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SetFixedPriority_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_ClearFixedPriority[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_ClearFixedPriority_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_InitAffineAnim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_InitAffineAnim_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_ClearAffineAnim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_ClearAffineAnim_Step0,
    MovementAction_Finish,
};

static bool8 (*const sMovementActionFuncs_WalkDownStartAffine[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkDownStartAffine_Step0,
    MovementAction_WalkDownStartAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_WalkDownAffine[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkDownAffine_Step0,
    MovementAction_WalkDownAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceDown_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceUp_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceLeft_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceRight_Step0,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroEndWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const MovementActionFuncs_UnusedAcroActionDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const MovementActionFuncs_UnusedAcroActionUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const MovementActionFuncs_UnusedAcroActionLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const MovementActionFuncs_UnusedAcroActionRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceDown_Step0,
    MovementAction_AcroWheelieHopFaceDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceUp_Step0,
    MovementAction_AcroWheelieHopFaceUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceLeft_Step0,
    MovementAction_AcroWheelieHopFaceLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopFaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceRight_Step0,
    MovementAction_AcroWheelieHopFaceRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopDown_Step0,
    MovementAction_AcroWheelieHopDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopUp_Step0,
    MovementAction_AcroWheelieHopUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopLeft_Step0,
    MovementAction_AcroWheelieHopLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieHopRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopRight_Step0,
    MovementAction_AcroWheelieHopRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieJumpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpDown_Step0,
    MovementAction_AcroWheelieJumpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieJumpUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpUp_Step0,
    MovementAction_AcroWheelieJumpUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieJumpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpLeft_Step0,
    MovementAction_AcroWheelieJumpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieJumpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpRight_Step0,
    MovementAction_AcroWheelieJumpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieInPlaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveDown_Step0,
    MovementAction_AcroPopWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveUp_Step0,
    MovementAction_AcroPopWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveLeft_Step0,
    MovementAction_AcroPopWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroPopWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveRight_Step0,
    MovementAction_AcroPopWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveDown_Step0,
    MovementAction_AcroWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveUp_Step0,
    MovementAction_AcroWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveLeft_Step0,
    MovementAction_AcroWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_AcroWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveRight_Step0,
    MovementAction_AcroWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SpinDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SpinDown_Step0,
    MovementAction_SpinDown_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SpinUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SpinUp_Step0,
    MovementAction_SpinUp_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SpinLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SpinLeft_Step0,
    MovementAction_SpinLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_SpinRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SpinRight_Step0,
    MovementAction_SpinRight_Step1,
    MovementAction_PauseSpriteAnim,
};

static bool8 (*const sMovementActionFuncs_RaiseHandAndStop[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RaiseHand_Step0,
    MovementAction_RaiseHandAndStop_Step1,
};

static bool8 (*const sMovementActionFuncs_RaiseHandAndJump[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RaiseHand_Step0,
    MovementAction_RaiseHandAndJump_Step1,
};

static bool8 (*const sMovementActionFuncs_RaiseHandAndSwim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RaiseHand_Step0,
    MovementAction_RaiseHandAndSwim_Step1,
};

static bool8 (*const sMovementActionFuncs_ShakeHeadOrWalkInPlace[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_ShakeHeadOrWalkInPlace_Step0,
    MovementAction_ShakeHeadOrWalkInPlace_Step1,
};

static bool8 (*const sMovementActionFuncs_FlyUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FlyUp_Step0,
    MovementAction_FlyUp_Step1,
    MovementAction_FlyUp_Step2,
};

static bool8 (*const sMovementActionFuncs_FlyDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FlyDown_Step0,
    MovementAction_FlyDown_Step1,
    MovementAction_FlyUp_Step2,
};
# 1205 "src/event_object_movement.c" 2

static void ClearObjectEvent(struct ObjectEvent *objectEvent)
{
    *objectEvent = (struct ObjectEvent){};
    objectEvent->localId = 0xFF;
    objectEvent->mapNum = ((0xFF | (0xFF << 8)) & 0xFF);
    objectEvent->mapGroup = ((0xFF | (0xFF << 8)) >> 8);
    objectEvent->movementActionId = 0xFF;
}

static void ClearAllObjectEvents(void)
{
    u8 i;

    for (i = 0; i < 16; i++)
        ClearObjectEvent(&gObjectEvents[i]);
}

void ResetObjectEvents(void)
{
    ClearLinkPlayerObjectEvents();
    ClearAllObjectEvents();
    ClearPlayerAvatarInfo();
    CreateReflectionEffectSprites();
}

static void CreateReflectionEffectSprites(void)
{
    u8 spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[21], 0, 0, 31);
    gSprites[spriteId].oam.affineMode = 1;
    InitSpriteAffineAnim(&gSprites[spriteId]);
    StartSpriteAffineAnim(&gSprites[spriteId], 0);
    gSprites[spriteId].invisible = 1;

    spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[21], 0, 0, 31);
    gSprites[spriteId].oam.affineMode = 1;
    InitSpriteAffineAnim(&gSprites[spriteId]);
    StartSpriteAffineAnim(&gSprites[spriteId], 1);
    gSprites[spriteId].invisible = 1;
}

u8 GetFirstInactiveObjectEventId(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (!gObjectEvents[i].active)
            break;
    }

    return i;
}

u8 GetObjectEventIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroupId)
{
    if (localId < 0xFF)
    {
        return GetObjectEventIdByLocalIdAndMapInternal(localId, mapNum, mapGroupId);
    }
    return GetObjectEventIdByLocalId(localId);
}

bool8 TryGetObjectEventIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroupId, u8 *objectEventId)
{
    *objectEventId = GetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroupId);
    if (*objectEventId == 16)
        return 1;
    else
        return 0;
}

u8 GetObjectEventIdByXY(s16 x, s16 y)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active && gObjectEvents[i].currentCoords.x == x && gObjectEvents[i].currentCoords.y == y)
            break;
    }

    return i;
}

static u8 GetObjectEventIdByLocalIdAndMapInternal(u8 localId, u8 mapNum, u8 mapGroupId)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active && gObjectEvents[i].localId == localId && gObjectEvents[i].mapNum == mapNum && gObjectEvents[i].mapGroup == mapGroupId)
            return i;
    }

    return 16;
}

static u8 GetObjectEventIdByLocalId(u8 localId)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active && gObjectEvents[i].localId == localId)
            return i;
    }

    return 16;
}

static u8 InitObjectEventStateFromTemplate(const struct ObjectEventTemplate *template, u8 mapNum, u8 mapGroup)
{
    struct ObjectEvent *objectEvent;
    const struct MapHeader *mapHeader;
    u8 objectEventId;
    s16 x;
    s16 y;
    bool8 isClone = 0;
    u8 localId = 0;
    s16 x2 = 0;
    s16 y2 = 0;
    s16 x3 = 0;
    s16 y3 = 0;

    if (template->kind == 255)
    {
        isClone = 1;
        localId = template->objUnion.clone.targetLocalId;
        mapNum = template->objUnion.clone.targetMapNum;
        mapGroup = template->objUnion.clone.targetMapGroup;
        x2 = template->x;
        y2 = template->y;
        x3 = template->x;
        y3 = template->y;
        mapHeader = Overworld_GetMapHeaderByGroupAndId(mapGroup, mapNum);
        template = &(mapHeader->events->objectEvents[localId - 1]);
    }

    if (GetAvailableObjectEventId(template->localId, mapNum, mapGroup, &objectEventId))
        return 16;

    if (!ShouldInitObjectEventStateFromTemplate(template, isClone, x3, y3))
        return 16;

    objectEvent = &gObjectEvents[objectEventId];
    ClearObjectEvent(objectEvent);
    if (isClone)
    {
        x = x2 + 7;
        y = y2 + 7;
    }
    else
    {
        x = template->x + 7;
        y = template->y + 7;
    }
    objectEvent->active = 1;
    objectEvent->triggerGroundEffectsOnMove = 1;
    objectEvent->graphicsId = template->graphicsId;
    objectEvent->movementType = template->objUnion.normal.movementType;
    objectEvent->localId = template->localId;
    objectEvent->mapNum = mapNum;
    objectEvent->mapGroup = mapGroup;
    objectEvent->initialCoords.x = x;
    objectEvent->initialCoords.y = y;
    objectEvent->currentCoords.x = x;
    objectEvent->currentCoords.y = y;
    objectEvent->previousCoords.x = x;
    objectEvent->previousCoords.y = y;
    objectEvent->currentElevation = template->objUnion.normal.elevation;
    objectEvent->previousElevation = template->objUnion.normal.elevation;
    objectEvent->rangeX = template->objUnion.normal.movementRangeX;
    objectEvent->rangeY = template->objUnion.normal.movementRangeY;
    objectEvent->trainerType = template->objUnion.normal.trainerType;
    objectEvent->trainerRange_berryTreeId = template->objUnion.normal.trainerRange_berryTreeId;
    objectEvent->mapNum = mapNum;
    objectEvent->previousMovementDirection = gInitialMovementTypeFacingDirections[template->objUnion.normal.movementType];
    SetObjectEventDirection(objectEvent, objectEvent->previousMovementDirection);
    SetObjectEventDynamicGraphicsId(objectEvent);
    if (gRangedMovementTypes[objectEvent->movementType])
    {
        if (objectEvent->rangeX == 0)
            objectEvent->rangeX++;
        if (objectEvent->rangeY == 0)
            objectEvent->rangeY++;
    }
    return objectEventId;
}

static bool8 ShouldInitObjectEventStateFromTemplate(const struct ObjectEventTemplate *template, bool8 isClone, s16 x, s16 y)
{
    if (isClone && !TemplateIsObstacleAndWithinView(template, x, y))
        return 0;

    if (!TemplateIsObstacleAndVisibleFromConnectingMap(template, x, y))
        return 0;

    return 1;
}

static bool8 TemplateIsObstacleAndWithinView(const struct ObjectEventTemplate *template, s16 x, s16 y)
{
    if (template->graphicsId == 95 || template->graphicsId == 96)
    {
        if (gSaveBlock1Ptr->pos.x < x)
        {
            if (gSaveBlock1Ptr->pos.x + (7 + 1) < x)
                return 1;
            if (gSaveBlock1Ptr->pos.y - (7 - 1) <= y && gSaveBlock1Ptr->pos.y + (7 - 1) >= y)
                return 0;
        }
        else
        {
            if (gSaveBlock1Ptr->pos.x - (7 + 1) > x)
                return 1;

            if (gSaveBlock1Ptr->pos.y - (7 - 1) <= y && gSaveBlock1Ptr->pos.y + (7 - 1) >= y)
                return 0;
        }
    }
    return 1;
}

static bool8 TemplateIsObstacleAndVisibleFromConnectingMap(const struct ObjectEventTemplate *template, s16 unused1, s16 unused2)
{
    if (IsMapTypeOutdoors(GetCurrentMapType()))
    {
        s32 width = VMap.Xsize - (7 * 2 + 1) - 1;
        s32 height = VMap.Ysize - (7 * 2) - 1;

        if (template->graphicsId == 95 || template->graphicsId == 96)
        {
            if (gSaveBlock1Ptr->pos.x == 0 && template->x <= (7 + 1))
            {
                SetHideObstacleFlag(template);
                return 0;
            }

            if (gSaveBlock1Ptr->pos.x == width && template->x >= width - (7 + 1))
            {
                SetHideObstacleFlag(template);
                return 0;
            }

            if (gSaveBlock1Ptr->pos.y == 0 && template->y <= (7 - 1))
            {
                SetHideObstacleFlag(template);
                return 0;
            }

            if (gSaveBlock1Ptr->pos.y == height && template->y >= height - (7 - 1))
            {
                SetHideObstacleFlag(template);
                return 0;
            }
        }
    }
    return 1;
}

static void SetHideObstacleFlag(const struct ObjectEventTemplate *template)
{
    if (template->flagId >= (0x0 + 0x11) && template->flagId <= (0x0 + 0x1F))
        FlagSet(template->flagId);
}

u8 Unref_TryInitLocalObjectEvent(u8 localId)
{
    u8 i;
    u8 objectEventCount;
    struct ObjectEventTemplate *template;

    if (gMapHeader.events == ((void *)0))
        return 16;

    objectEventCount = gMapHeader.events->objectEventCount;

    for (i = 0; i < objectEventCount; i++)
    {
        template = &gSaveBlock1Ptr->objectEventTemplates[i];
        if (template->localId == localId && !FlagGet(template->flagId))
            return InitObjectEventStateFromTemplate(template, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup);
    }

    return 16;
}

static bool8 GetAvailableObjectEventId(u16 localId, u8 mapNum, u8 mapGroup, u8 *objectEventId)





{
    u8 i = 0;

    for (i = 0; i < 16; i++)
    {
        if (!gObjectEvents[i].active)
            break;
        if (gObjectEvents[i].localId == localId && gObjectEvents[i].mapNum == mapNum && gObjectEvents[i].mapGroup == mapGroup)
            return 1;
    }
    if (i >= 16)
        return 1;
    *objectEventId = i;
    do
    {
        if (gObjectEvents[i].active && gObjectEvents[i].localId == localId && gObjectEvents[i].mapNum == mapNum && gObjectEvents[i].mapGroup == mapGroup)
            return 1;
        i++;
    } while (i < 16);
    return 0;
}

static void RemoveObjectEvent(struct ObjectEvent *objectEvent)
{
    objectEvent->active = 0;
    RemoveObjectEventInternal(objectEvent);
}

void RemoveObjectEventByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;
    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        FlagSet(GetObjectEventFlagIdByObjectEventId(objectEventId));
        RemoveObjectEvent(&gObjectEvents[objectEventId]);
    }
}

static void RemoveObjectEventInternal(struct ObjectEvent *objectEvent)
{
    struct SpriteFrameImage image;
    image.size = GetObjectEventGraphicsInfo(objectEvent->graphicsId)->size;
    gSprites[objectEvent->spriteId].images = &image;
    DestroySprite(&gSprites[objectEvent->spriteId]);
}

void Unref_RemoveAllObjectEventsExceptPlayer(void)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (i != gPlayerAvatar.objectEventId)
            RemoveObjectEvent(&gObjectEvents[i]);
    }
}

static u8 TrySetupObjectEventSprite(const struct ObjectEventTemplate *objectEventTemplate, struct SpriteTemplate *spriteTemplate, u8 mapNum, u8 mapGroup, s16 cameraX, s16 cameraY)
{
    u8 spriteId;
    u8 objectEventId;
    struct Sprite *sprite;
    struct ObjectEvent *objectEvent;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    objectEventId = InitObjectEventStateFromTemplate(objectEventTemplate, mapNum, mapGroup);
    if (objectEventId == 16)
        return 16;

    objectEvent = &gObjectEvents[objectEventId];
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    if (graphicsInfo->paletteSlot == PALSLOT_PLAYER)
        LoadPlayerObjectReflectionPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);
    else if (graphicsInfo->paletteSlot == PALSLOT_NPC_SPECIAL)
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);


    if (objectEvent->movementType == 0x4C)
        objectEvent->invisible = 1;

    *(u16 *)&spriteTemplate->paletteTag = 0xFFFF;
    spriteId = CreateSprite(spriteTemplate, 0, 0, 0);
    if (spriteId == 64)
    {
        gObjectEvents[objectEventId].active = 0;
        return 16;
    }

    sprite = &gSprites[spriteId];
    GetMapCoordsFromSpritePos(objectEvent->currentCoords.x + cameraX, objectEvent->currentCoords.y + cameraY, &sprite->x, &sprite->y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->x += 8;
    sprite->y += 16 + sprite->centerToCornerVecY;
    sprite->oam.paletteNum = graphicsInfo->paletteSlot;
    sprite->coordOffsetEnabled = 1;
    sprite->data[0] = objectEventId;
    objectEvent->spriteId = spriteId;
    objectEvent->inanimate = graphicsInfo->inanimate;
    if (!objectEvent->inanimate)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(objectEvent->facingDirection));

    SetObjectSubpriorityByElevation(objectEvent->previousElevation, sprite, 1);
    UpdateObjectEventVisibility(objectEvent, sprite);
    return objectEventId;
}

static u8 TrySpawnObjectEventTemplate(const struct ObjectEventTemplate *objectEventTemplate, u8 mapNum, u8 mapGroup, s16 cameraX, s16 cameraY)
{
    u8 objectEventId;
    struct SpriteTemplate spriteTemplate;
    struct SpriteFrameImage spriteFrameImage;
    const struct ObjectEventGraphicsInfo *graphicsInfo;
    const struct SubspriteTable *subspriteTables = ((void *)0);

    graphicsInfo = GetObjectEventGraphicsInfo(objectEventTemplate->graphicsId);
    MakeObjectTemplateFromObjectEventTemplate(objectEventTemplate, &spriteTemplate, &subspriteTables);
    spriteFrameImage.size = graphicsInfo->size;
    spriteTemplate.images = &spriteFrameImage;
    objectEventId = TrySetupObjectEventSprite(objectEventTemplate, &spriteTemplate, mapNum, mapGroup, cameraX, cameraY);
    if (objectEventId == 16)
        return 16;

    gSprites[gObjectEvents[objectEventId].spriteId].images = graphicsInfo->images;
    if (subspriteTables)
        SetSubspriteTables(&gSprites[gObjectEvents[objectEventId].spriteId], subspriteTables);

    return objectEventId;
}

u8 SpawnSpecialObjectEvent(struct ObjectEventTemplate *objectEventTemplate)
{
    s16 cameraX;
    s16 cameraY;

    GetObjectEventMovingCameraOffset(&cameraX, &cameraY);
    return TrySpawnObjectEventTemplate(objectEventTemplate, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, cameraX, cameraY);
}

int SpawnSpecialObjectEventParameterized(u8 graphicsId, u8 movementBehavior, u8 localId, s16 x, s16 y, u8 elevation)
{
    struct ObjectEventTemplate objectEventTemplate;

    x -= 7;
    y -= 7;
    objectEventTemplate.localId = localId;
    objectEventTemplate.graphicsId = graphicsId;
    objectEventTemplate.kind = 0;
    objectEventTemplate.x = x;
    objectEventTemplate.y = y;
    objectEventTemplate.objUnion.normal.elevation = elevation;
    objectEventTemplate.objUnion.normal.movementType = movementBehavior;
    objectEventTemplate.objUnion.normal.movementRangeX = 0;
    objectEventTemplate.objUnion.normal.movementRangeY = 0;
    objectEventTemplate.objUnion.normal.trainerType = 0;
    objectEventTemplate.objUnion.normal.trainerRange_berryTreeId = 0;
    return SpawnSpecialObjectEvent(&objectEventTemplate);
}

u8 TrySpawnObjectEvent(u8 localId, u8 mapNum, u8 mapGroup)
{
    const struct ObjectEventTemplate *objectEventTemplate;
    s16 cameraX, cameraY;

    objectEventTemplate = GetObjectEventTemplateByLocalIdAndMap(localId, mapNum, mapGroup);
    if (!objectEventTemplate)
        return 16;

    GetObjectEventMovingCameraOffset(&cameraX, &cameraY);
    return TrySpawnObjectEventTemplate(objectEventTemplate, mapNum, mapGroup, cameraX, cameraY);
}

void CopyObjectGraphicsInfoToSpriteTemplate(u16 graphicsId, void (*callback)(struct Sprite *), struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    const struct ObjectEventGraphicsInfo *graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);

    spriteTemplate->tileTag = graphicsInfo->tileTag;
    spriteTemplate->paletteTag = graphicsInfo->paletteTag;
    spriteTemplate->oam = graphicsInfo->oam;
    spriteTemplate->anims = graphicsInfo->anims;
    spriteTemplate->images = graphicsInfo->images;
    spriteTemplate->affineAnims = graphicsInfo->affineAnims;

    do
    {
        if (ScriptContext_IsEnabled() != 1 && QL_GetPlaybackState() == 1)
            spriteTemplate->callback = QL_UpdateObject;
        else
            spriteTemplate->callback = callback;
    } while (0);

    *subspriteTables = graphicsInfo->subspriteTables;
}

static void CopyObjectGraphicsInfoToSpriteTemplate_WithMovementType(u16 graphicsId, u16 movementType, struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    CopyObjectGraphicsInfoToSpriteTemplate(graphicsId, sMovementTypeCallbacks[movementType], spriteTemplate, subspriteTables);
}

static void MakeObjectTemplateFromObjectEventTemplate(const struct ObjectEventTemplate *objectEventTemplate, struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    CopyObjectGraphicsInfoToSpriteTemplate_WithMovementType(objectEventTemplate->graphicsId, objectEventTemplate->objUnion.normal.movementType, spriteTemplate, subspriteTables);
}


u8 CreateObjectGraphicsSprite(u16 graphicsId, SpriteCallback callback, s16 x, s16 y, u8 subpriority)
{
    struct SpriteTemplate spriteTemplate;
    const struct SubspriteTable *subspriteTables;
    u8 spriteId;

    CopyObjectGraphicsInfoToSpriteTemplate(graphicsId, callback, &spriteTemplate, &subspriteTables);
    if (spriteTemplate.paletteTag != 0xFFFF)
        LoadObjectEventPalette(spriteTemplate.paletteTag);

    spriteId = CreateSprite(&spriteTemplate, x, y, subpriority);
    if (spriteId != 64 && subspriteTables != ((void *)0))
    {
        SetSubspriteTables(&gSprites[spriteId], subspriteTables);
        gSprites[spriteId].subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
    }
    return spriteId;
}




u8 CreateVirtualObject(u8 graphicsId, u8 virtualObjId, s16 x, s16 y, u8 elevation, u8 direction)
{
    u8 spriteId;
    struct Sprite *sprite;
    struct SpriteTemplate spriteTemplate;
    const struct SubspriteTable *subspriteTables;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);
    CopyObjectGraphicsInfoToSpriteTemplate(graphicsId, SpriteCB_VirtualObject, &spriteTemplate, &subspriteTables);
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    x += 7;
    y += 7;
    SetSpritePosToOffsetMapCoords(&x, &y, 8, 16);
    spriteId = CreateSpriteAtEnd(&spriteTemplate, x, y, 0);
    if (spriteId != 64)
    {
        sprite = &gSprites[spriteId];
        sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
        sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
        sprite->y += sprite->centerToCornerVecY;
        sprite->oam.paletteNum = graphicsInfo->paletteSlot;
        sprite->coordOffsetEnabled = 1;
        sprite->data[0] = virtualObjId;
        sprite->data[1] = elevation;
        if (graphicsInfo->paletteSlot == PALSLOT_NPC_SPECIAL)
            LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);

        if (subspriteTables != ((void *)0))
        {
            SetSubspriteTables(sprite, subspriteTables);
            sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        }
        InitObjectPriorityByElevation(sprite, elevation);
        SetObjectSubpriorityByElevation(elevation, sprite, 1);
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(direction));
    }
    return spriteId;
}

u8 CreateFameCheckerObject(u8 graphicsId, u8 localId, s16 x, s16 y)
{
    u8 spriteId;
    struct Sprite *sprite;
    struct SpriteTemplate spriteTemplate;
    const struct SubspriteTable *subspriteTables;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);
    CopyObjectGraphicsInfoToSpriteTemplate(graphicsId, SpriteCallbackDummy, &spriteTemplate, &subspriteTables);
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;

    spriteId = CreateSpriteAtEnd(&spriteTemplate, x, y, 0);
    if (spriteId != 64)
    {
        sprite = &gSprites[spriteId];
        sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
        sprite->y += sprite->centerToCornerVecY;
        sprite->oam.paletteNum = graphicsInfo->paletteSlot;
        sprite->data[0] = localId;
        if (graphicsInfo->paletteSlot == PALSLOT_NPC_SPECIAL)
            LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);

        if (subspriteTables != ((void *)0))
        {
            SetSubspriteTables(sprite, subspriteTables);
            sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        }
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(1));
    }
    return spriteId;
}

void TrySpawnObjectEvents(s16 cameraX, s16 cameraY)
{
    u8 i;
    u8 objectCount;

    if (gMapHeader.events != ((void *)0))
    {
        s16 left = gSaveBlock1Ptr->pos.x - 2;
        s16 right = gSaveBlock1Ptr->pos.x + (7 * 2 + 1) + 2;
        s16 top = gSaveBlock1Ptr->pos.y;
        s16 bottom = gSaveBlock1Ptr->pos.y + (7 * 2) + 2;

        objectCount = gMapHeader.events->objectEventCount;

        for (i = 0; i < objectCount; i++)
        {
            struct ObjectEventTemplate *template = &gSaveBlock1Ptr->objectEventTemplates[i];
            s16 npcX = template->x + 7;
            s16 npcY = template->y + 7;

            if (top <= npcY && bottom >= npcY && left <= npcX && right >= npcX
                && !FlagGet(template->flagId))
                TrySpawnObjectEventTemplate(template, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, cameraX, cameraY);
        }
    }
}

void RemoveObjectEventsOutsideView(void)
{
    u8 i, j;
    bool8 isActiveLinkPlayer;

    for (i = 0; i < 16; i++)
    {
        for (j = 0, isActiveLinkPlayer = 0; j < (sizeof(gLinkPlayerObjectEvents) / sizeof((gLinkPlayerObjectEvents)[0])); j++)
        {
            if (gLinkPlayerObjectEvents[j].active && i == gLinkPlayerObjectEvents[j].objEventId)
                isActiveLinkPlayer = 1;
        }
        if (!isActiveLinkPlayer)
        {
            struct ObjectEvent *objectEvent = &gObjectEvents[i];

            if (objectEvent->active && !objectEvent->isPlayer)
                RemoveObjectEventIfOutsideView(objectEvent);
        }
    }
}

static void RemoveObjectEventIfOutsideView(struct ObjectEvent *objectEvent)
{
    s16 left = gSaveBlock1Ptr->pos.x - 2;
    s16 right = gSaveBlock1Ptr->pos.x + (7 * 2 + 1) + 2;
    s16 top = gSaveBlock1Ptr->pos.y;
    s16 bottom = gSaveBlock1Ptr->pos.y + (7 * 2) + 2;

    if (objectEvent->currentCoords.x >= left && objectEvent->currentCoords.x <= right
     && objectEvent->currentCoords.y >= top && objectEvent->currentCoords.y <= bottom)
        return;
    if (objectEvent->initialCoords.x >= left && objectEvent->initialCoords.x <= right
     && objectEvent->initialCoords.y >= top && objectEvent->initialCoords.y <= bottom)
        return;
    RemoveObjectEvent(objectEvent);
}

void SpawnObjectEventsOnReturnToField(s16 x, s16 y)
{
    u8 i;

    ClearPlayerAvatarInfo();
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active)
            SpawnObjectEventOnReturnToField(i, x, y);
    }
    CreateReflectionEffectSprites();
}

static void SpawnObjectEventOnReturnToField(u8 objectEventId, s16 x, s16 y)
{
    u8 spriteId;
    struct Sprite *sprite;
    struct ObjectEvent *objectEvent;
    struct SpriteTemplate spriteTemplate;
    struct SpriteFrameImage spriteFrameImage;
    const struct SubspriteTable *subspriteTables;
    const struct ObjectEventGraphicsInfo *graphicsInfo;


    for (spriteId = 0; spriteId < (sizeof(gLinkPlayerObjectEvents) / sizeof((gLinkPlayerObjectEvents)[0])); spriteId++)
    {
        if (gLinkPlayerObjectEvents[spriteId].active && objectEventId == gLinkPlayerObjectEvents[spriteId].objEventId)
            return;
    }


    objectEvent = &gObjectEvents[objectEventId];
    objectEvent++;objectEvent--;
    subspriteTables = ((void *)0);
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    spriteFrameImage.size = graphicsInfo->size;
    CopyObjectGraphicsInfoToSpriteTemplate_WithMovementType(objectEvent->graphicsId, objectEvent->movementType, &spriteTemplate, &subspriteTables);
    spriteTemplate.images = &spriteFrameImage;

    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    if (graphicsInfo->paletteSlot == PALSLOT_PLAYER)
        LoadPlayerObjectReflectionPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);

    if (graphicsInfo->paletteSlot >= PALSLOT_NPC_SPECIAL)
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);

    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    spriteId = CreateSprite(&spriteTemplate, 0, 0, 0);
    if (spriteId != 64)
    {
        sprite = &gSprites[spriteId];
        GetMapCoordsFromSpritePos(x + objectEvent->currentCoords.x, y + objectEvent->currentCoords.y, &sprite->x, &sprite->y);
        sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
        sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
        sprite->x += 8;
        sprite->y += 16 + sprite->centerToCornerVecY;
        sprite->images = graphicsInfo->images;
        if (objectEvent->movementType == 0xB)
        {
            SetPlayerAvatarObjectEventIdAndObjectId(objectEventId, spriteId);
            objectEvent->warpArrowSpriteId = CreateWarpArrowSprite();
        }
        if (subspriteTables != ((void *)0))
            SetSubspriteTables(sprite, subspriteTables);

        sprite->oam.paletteNum = graphicsInfo->paletteSlot;
        sprite->coordOffsetEnabled = 1;
        sprite->data[0] = objectEventId;
        objectEvent->spriteId = spriteId;
        if (!objectEvent->inanimate && objectEvent->movementType != 0xB)
            StartSpriteAnim(sprite, GetFaceDirectionAnimNum(objectEvent->facingDirection));

        ResetObjectEventFldEffData(objectEvent);
        SetObjectSubpriorityByElevation(objectEvent->previousElevation, sprite, 1);
    }
}

static void ResetObjectEventFldEffData(struct ObjectEvent *objectEvent)
{
    objectEvent->singleMovementActive = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    objectEvent->hasShadow = 0;
    objectEvent->hasReflection = 0;
    objectEvent->inShortGrass = 0;
    objectEvent->inShallowFlowingWater = 0;
    objectEvent->inSandPile = 0;
    objectEvent->inHotSprings = 0;
    ObjectEventClearHeldMovement(objectEvent);
}

static void SetPlayerAvatarObjectEventIdAndObjectId(u8 objectEventId, u8 spriteId)
{
    gPlayerAvatar.objectEventId = objectEventId;
    gPlayerAvatar.spriteId = spriteId;
    gPlayerAvatar.gender = GetPlayerAvatarGenderByGraphicsId(gObjectEvents[objectEventId].graphicsId);
    SetPlayerAvatarExtraStateTransition(gObjectEvents[objectEventId].graphicsId, (1 << PLAYER_AVATAR_STATE_CONTROLLABLE));
}

void ObjectEventSetGraphicsId(struct ObjectEvent *objectEvent, u8 graphicsId)
{
    const struct ObjectEventGraphicsInfo *graphicsInfo;
    struct Sprite *sprite;
    u8 var;
    u8 var3;

    graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);
    sprite = &gSprites[objectEvent->spriteId];
    if (graphicsInfo->paletteSlot == PALSLOT_PLAYER)
        PatchObjectPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);

    if (graphicsInfo->paletteSlot == PALSLOT_NPC_SPECIAL)
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag, graphicsInfo->paletteSlot);

    var = sprite->images->size / 32;
    if (!sprite->usingSheet)
    {
        FreeSpriteTilesIfNotUsingSheet(sprite);
    }
    sprite->oam.shape = graphicsInfo->oam->shape;
    sprite->oam.size = graphicsInfo->oam->size;
    sprite->images = graphicsInfo->images;
    sprite->anims = graphicsInfo->anims;
    sprite->subspriteTables = graphicsInfo->subspriteTables;
    sprite->oam.paletteNum = graphicsInfo->paletteSlot;
    if (!sprite->usingSheet)
    {
        s32 var2;
        var3 = sprite->images->size / 32;
        var2 = AllocSpriteTiles(var3);
        if (var2 == -1)
        {
            var2 = AllocSpriteTiles(var);
        }
        sprite->oam.tileNum = var2;
    }
    objectEvent->inanimate = graphicsInfo->inanimate;
    objectEvent->graphicsId = graphicsId;
    SetSpritePosToMapCoords(objectEvent->currentCoords.x, objectEvent->currentCoords.y, &sprite->x, &sprite->y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->x += 8;
    sprite->y += 16 + sprite->centerToCornerVecY;
    if (objectEvent->trackedByCamera)
    {
        CameraObjectReset1();
    }
}

void ObjectEventSetGraphicsIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, u8 graphicsId)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        ObjectEventSetGraphicsId(&gObjectEvents[objectEventId], graphicsId);
    }
}

void ObjectEventTurn(struct ObjectEvent *objectEvent, u8 direction)
{
    SetObjectEventDirection(objectEvent, direction);
    if (!objectEvent->inanimate)
    {
        StartSpriteAnim(&gSprites[objectEvent->spriteId], GetFaceDirectionAnimNum(objectEvent->facingDirection));
        SeekSpriteAnim(&gSprites[objectEvent->spriteId], 0);
    }
}

void ObjectEventTurnByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, u8 direction)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        ObjectEventTurn(&gObjectEvents[objectEventId], direction);
    }
}

void PlayerObjectTurn(struct PlayerAvatar *playerAvatar, u8 direction)
{
    ObjectEventTurn(&gObjectEvents[playerAvatar->objectEventId], direction);
}

const struct ObjectEventGraphicsInfo *GetObjectEventGraphicsInfo(u8 graphicsId)
{
    if (graphicsId >= 240)
        graphicsId = VarGetObjectEventGraphicsId(graphicsId - 240);

    if (graphicsId >= 152)
        graphicsId = 16;

    return gObjectEventGraphicsInfoPointers[graphicsId];
}

static void SetObjectEventDynamicGraphicsId(struct ObjectEvent *objectEvent)
{
    if (objectEvent->graphicsId >= 240)
    {
        objectEvent->graphicsId = VarGetObjectEventGraphicsId(objectEvent->graphicsId - 240);
    }
}

void SetObjectInvisibility(u8 localId, u8 mapNum, u8 mapGroup, u8 state)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        gObjectEvents[objectEventId].invisible = state;
    }
}

void ObjectEventGetLocalIdAndMap(struct ObjectEvent *objectEvent, void *localId, void *mapNum, void *mapGroup)
{
    *(u8 *)(localId) = objectEvent->localId;
    *(u8 *)(mapNum) = objectEvent->mapNum;
    *(u8 *)(mapGroup) = objectEvent->mapGroup;
}

void EnableObjectGroundEffectsByXY(s16 x, s16 y)
{
    u8 objectEventId;
    struct ObjectEvent *objectEvent;

    objectEventId = GetObjectEventIdByXY(x, y);
    if (objectEventId != 16)
    {
        objectEvent = &gObjectEvents[objectEventId];
        objectEvent->triggerGroundEffectsOnMove = 1;
    }
}

void SetObjectSubpriority(u8 localId, u8 mapNum, u8 mapGroup, u8 subpriority)
{
    u8 objectEventId;
    struct ObjectEvent *objectEvent;
    struct Sprite *sprite;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        objectEvent = &gObjectEvents[objectEventId];
        sprite = &gSprites[objectEvent->spriteId];
        objectEvent->fixedPriority = 1;
        sprite->subpriority = subpriority;
    }
}

void ResetObjectSubpriority(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;
    struct ObjectEvent *objectEvent;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        objectEvent = &gObjectEvents[objectEventId];
        objectEvent->fixedPriority = 0;
        objectEvent->triggerGroundEffectsOnMove = 1;
    }
}

void SetObjectPositionByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y)
{
    u8 objectEventId;
    struct Sprite *sprite;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        sprite = &gSprites[gObjectEvents[objectEventId].spriteId];
        sprite->x2 = x;
        sprite->y2 = y;
    }
}

void FreeAndReserveObjectSpritePalettes(void)
{
    FreeAllSpritePalettes();
    gReservedSpritePaletteCount = OBJ_PALSLOT_COUNT;
}

static void LoadObjectEventPalette(u16 paletteTag)
{
    u16 i = FindObjectEventPaletteIndexByTag(paletteTag);




    if (i != 0x11FF)

    {
        TryLoadObjectPalette(&sObjectEventSpritePalettes[i]);
    }
}


void LoadObjectEventPaletteSet(u16 *paletteTags)
{
    u8 i;

    for (i = 0; paletteTags[i] != 0x11FF; i++)
    {
        LoadObjectEventPalette(paletteTags[i]);
    }
}

static u8 TryLoadObjectPalette(const struct SpritePalette *spritePalette)
{
    if (IndexOfSpritePaletteTag(spritePalette->tag) != 0xFF)
    {

        return 0xFF;
    }
    return LoadSpritePalette(spritePalette);
}

void PatchObjectPalette(u16 paletteTag, u8 paletteSlot)
{
    u8 paletteIndex = FindObjectEventPaletteIndexByTag(paletteTag);

    LoadPalette(sObjectEventSpritePalettes[paletteIndex].data, (0x100 + ((paletteSlot) * 16)), ((16) * sizeof(u16)));
    ApplyGlobalFieldPaletteTint(paletteSlot);
}

void PatchObjectPaletteRange(const u16 *paletteTags, u8 minSlot, u8 maxSlot)
{
    while (minSlot < maxSlot)
    {
        PatchObjectPalette(*paletteTags, minSlot);
        paletteTags++;
        minSlot++;
    }
}

static u8 FindObjectEventPaletteIndexByTag(u16 tag)
{
    u8 i;

    for (i = 0; sObjectEventSpritePalettes[i].tag != 0x11FF; i++)
    {
        if (sObjectEventSpritePalettes[i].tag == tag)
        {
            return i;
        }
    }
    return 0xFF;
}

void LoadPlayerObjectReflectionPalette(u16 tag, u8 slot)
{
    u8 i;

    PatchObjectPalette(tag, slot);
    for (i = 0; gPlayerReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gPlayerReflectionPaletteSets[i].tag == tag)
        {
            PatchObjectPalette(gPlayerReflectionPaletteSets[i].data[sCurrentReflectionType], gReflectionEffectPaletteMap[slot]);
            return;
        }
    }
}

void LoadSpecialObjectReflectionPalette(u16 tag, u8 slot)
{
    u8 i;

    sCurrentSpecialObjectPaletteTag = tag;
    PatchObjectPalette(tag, slot);
    for (i = 0; gSpecialObjectReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gSpecialObjectReflectionPaletteSets[i].tag == tag)
        {
            PatchObjectPalette(gSpecialObjectReflectionPaletteSets[i].data[sCurrentReflectionType], gReflectionEffectPaletteMap[slot]);
            return;
        }
    }
}


static u8 GetReflectionEffectPaletteSlot(u8 slot)
{
    return gReflectionEffectPaletteMap[slot];
}


void IncrementObjectEventCoords(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    objectEvent->previousCoords.x = objectEvent->currentCoords.x;
    objectEvent->previousCoords.y = objectEvent->currentCoords.y;
    objectEvent->currentCoords.x += x;
    objectEvent->currentCoords.y += y;
}

void ShiftObjectEventCoords(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    objectEvent->previousCoords.x = objectEvent->currentCoords.x;
    objectEvent->previousCoords.y = objectEvent->currentCoords.y;
    objectEvent->currentCoords.x = x;
    objectEvent->currentCoords.y = y;
}

static void SetObjectEventCoords(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    objectEvent->previousCoords.x = x;
    objectEvent->previousCoords.y = y;
    objectEvent->currentCoords.x = x;
    objectEvent->currentCoords.y = y;
}

void MoveObjectEventToMapCoords(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    struct Sprite *sprite;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    sprite = &gSprites[objectEvent->spriteId];
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    SetObjectEventCoords(objectEvent, x, y);
    SetSpritePosToMapCoords(objectEvent->currentCoords.x, objectEvent->currentCoords.y, &sprite->x, &sprite->y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->x += 8;
    sprite->y += 16 + sprite->centerToCornerVecY;
    ResetObjectEventFldEffData(objectEvent);
    if (objectEvent->trackedByCamera)
        CameraObjectReset1();
}

void TryMoveObjectEventToMapCoords(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y)
{
    u8 objectEventId;
    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        x += 7;
        y += 7;
        MoveObjectEventToMapCoords(&gObjectEvents[objectEventId], x, y);
    }
}

void ShiftStillObjectEventCoords(struct ObjectEvent *objectEvent)
{
    ShiftObjectEventCoords(objectEvent, objectEvent->currentCoords.x, objectEvent->currentCoords.y);
}

void UpdateObjectEventCoordsForCameraUpdate(void)
{
    u8 i;
    s16 dx;
    s16 dy;

    if (gCamera.active)
    {
        dx = gCamera.x;
        dy = gCamera.y;
        for (i = 0; i < 16; i++)
        {
            if (gObjectEvents[i].active)
            {
                gObjectEvents[i].initialCoords.x -= dx;
                gObjectEvents[i].initialCoords.y -= dy;
                gObjectEvents[i].currentCoords.x -= dx;
                gObjectEvents[i].currentCoords.y -= dy;
                gObjectEvents[i].previousCoords.x -= dx;
                gObjectEvents[i].previousCoords.y -= dy;
            }
        }
    }
}

u8 GetObjectEventIdByPosition(u16 x, u16 y, u8 elevation)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active)
        {
            if (gObjectEvents[i].currentCoords.x == x
             && gObjectEvents[i].currentCoords.y == y
             && ObjectEventDoesElevationMatch(&gObjectEvents[i], elevation))
                return i;
        }
    }
    return 16;
}

static bool8 ObjectEventDoesElevationMatch(struct ObjectEvent *objectEvent, u8 elevation)
{
    if (objectEvent->currentElevation != 0 && elevation != 0 && objectEvent->currentElevation != elevation)
        return 0;

    return 1;
}

void UpdateObjectEventsForCameraUpdate(s16 x, s16 y)
{
    UpdateObjectEventCoordsForCameraUpdate();
    TrySpawnObjectEvents(x, y);
    RemoveObjectEventsOutsideView();
}

u8 AddCameraObject(u8 linkedSpriteId)
{
    u8 spriteId = CreateSprite(&gCameraSpriteTemplate, 0, 0, 4);

    gSprites[spriteId].invisible = 1;
    gSprites[spriteId].data[0] = linkedSpriteId;
    return spriteId;
}

static void ObjectCB_CameraObject(struct Sprite *sprite)
{
    void (*callbacks[(sizeof(gCameraObjectFuncs) / sizeof((gCameraObjectFuncs)[0]))])(struct Sprite *);

    memcpy(callbacks, gCameraObjectFuncs, sizeof gCameraObjectFuncs);
    callbacks[sprite->data[1]](sprite);
}

static void CameraObject_0(struct Sprite *sprite)
{
    sprite->x = gSprites[sprite->data[0]].x;
    sprite->y = gSprites[sprite->data[0]].y;
    sprite->invisible = 1;
    sprite->data[1] = 1;
    CameraObject_1(sprite);
}

static void CameraObject_1(struct Sprite *sprite)
{
    s16 x = gSprites[sprite->data[0]].x;
    s16 y = gSprites[sprite->data[0]].y;

    sprite->data[2] = x - sprite->x;
    sprite->data[3] = y - sprite->y;
    sprite->x = x;
    sprite->y = y;
}

static void CameraObject_2(struct Sprite *sprite)
{
    sprite->x = gSprites[sprite->data[0]].x;
    sprite->y = gSprites[sprite->data[0]].y;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
}

static struct Sprite *FindCameraObject(void)
{
    u8 i;

    for (i = 0; i < 64; i++)
    {
        if (gSprites[i].inUse && gSprites[i].callback == ObjectCB_CameraObject)
        {
            return &gSprites[i];
        }
    }
    return ((void *)0);
}

void CameraObjectReset1(void)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject != ((void *)0))
    {
        cameraObject->data[1] = 0;
        cameraObject->callback(cameraObject);
    }
}

void CameraObjectSetFollowedObjectId(u8 objectId)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject != ((void *)0))
    {
        cameraObject->data[0] = objectId;
        CameraObjectReset1();
    }
}

u8 CameraObjectGetFollowedObjectId(void)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject == ((void *)0))
    {
        return 64;
    }
    return cameraObject->data[0];
}

void CameraObjectReset2(void)
{
    FindCameraObject()->data[1] = 2;
}

u8 CopySprite(struct Sprite *sprite, s16 x, s16 y, u8 subpriority)
{
    u8 i;

    for (i = 0; i < 64; i++)
    {
        if (!gSprites[i].inUse)
        {
            gSprites[i] = *sprite;
            gSprites[i].x = x;
            gSprites[i].y = y;
            gSprites[i].subpriority = subpriority;
            break;
        }
    }
    return i;
}

u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority)
{
    s16 i;

    for (i = 64 - 1; i > -1; i--)
    {
        if (!gSprites[i].inUse)
        {
            gSprites[i] = *sprite;
            gSprites[i].x = x;
            gSprites[i].y = y;
            gSprites[i].subpriority = subpriority;
            return i;
        }
    }
    return 64;
}

void SetObjectEventDirection(struct ObjectEvent *objectEvent, u8 direction)
{
    s8 d2;
    objectEvent->previousMovementDirection = objectEvent->facingDirection;
    if (!objectEvent->facingDirectionLocked)
    {
        d2 = direction;
        objectEvent->facingDirection = d2;
    }
    objectEvent->movementDirection = direction;
}

static const u8 *GetObjectEventScriptPointerByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    return GetObjectEventTemplateByLocalIdAndMap(localId, mapNum, mapGroup)->script;
}

const u8 *GetObjectEventScriptPointerByObjectEventId(u8 objectEventId)
{
    return GetObjectEventScriptPointerByLocalIdAndMap(gObjectEvents[objectEventId].localId, gObjectEvents[objectEventId].mapNum, gObjectEvents[objectEventId].mapGroup);
}

static u16 GetObjectEventFlagIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    const struct ObjectEventTemplate *obj = GetObjectEventTemplateByLocalIdAndMap(localId, mapNum, mapGroup);





    return obj->flagId;
}

static u16 GetObjectEventFlagIdByObjectEventId(u8 objectEventId)
{
    return GetObjectEventFlagIdByLocalIdAndMap(gObjectEvents[objectEventId].localId, gObjectEvents[objectEventId].mapNum, gObjectEvents[objectEventId].mapGroup);
}


u8 GetObjectTrainerTypeByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
        return 0xFF;

    return gObjectEvents[objectEventId].trainerType;
}

u16 GetBoulderRevealFlagByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{


    return GetObjectEventTemplateByLocalIdAndMap(localId, mapNum, mapGroup)->objUnion.normal.trainerType;
}


u8 GetObjectTrainerTypeByObjectEventId(u8 objectEventId)
{
    return gObjectEvents[objectEventId].trainerType;
}


u8 GetObjectEventBerryTreeIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
        return 0xFF;

    return gObjectEvents[objectEventId].trainerRange_berryTreeId;
}


u8 GetObjectEventBerryTreeId(u8 objectEventId)
{
    return gObjectEvents[objectEventId].trainerRange_berryTreeId;
}

static const struct ObjectEventTemplate *GetObjectEventTemplateByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    const struct ObjectEventTemplate *templates;
    const struct MapHeader *mapHeader;
    u8 count;

    if (gSaveBlock1Ptr->location.mapNum == mapNum && gSaveBlock1Ptr->location.mapGroup == mapGroup)
    {
        templates = gSaveBlock1Ptr->objectEventTemplates;
        count = gMapHeader.events->objectEventCount;
    }
    else
    {
        mapHeader = Overworld_GetMapHeaderByGroupAndId(mapGroup, mapNum);
        templates = mapHeader->events->objectEvents;
        count = mapHeader->events->objectEventCount;
    }
    return FindObjectEventTemplateByLocalId(localId, templates, count);
}

static const struct ObjectEventTemplate *FindObjectEventTemplateByLocalId(u8 localId, const struct ObjectEventTemplate *templates, u8 count)
{
    u8 i;

    for (i = 0; i < count; i++)
    {
        if (templates[i].localId == localId)
        {
            return &templates[i];
        }
    }
    return ((void *)0);
}

struct ObjectEventTemplate *GetBaseTemplateForObjectEvent(const struct ObjectEvent *objectEvent)
{
    int i;

    if (objectEvent->mapNum != gSaveBlock1Ptr->location.mapNum || objectEvent->mapGroup != gSaveBlock1Ptr->location.mapGroup)
    {
        return ((void *)0);
    }
    for (i = 0; i < 64; i++)
    {
        if ((objectEvent->localId == gSaveBlock1Ptr->objectEventTemplates[i].localId)
         && (objectEvent->mapNum == gSaveBlock1Ptr->location.mapNum)
         && (objectEvent->mapGroup == gSaveBlock1Ptr->location.mapGroup))
            return &gSaveBlock1Ptr->objectEventTemplates[i];
    }
    return ((void *)0);
}

void OverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent)
{
    struct ObjectEventTemplate *objectEventTemplate;

    objectEventTemplate = GetBaseTemplateForObjectEvent(objectEvent);
    if (objectEventTemplate != ((void *)0))
    {
        objectEventTemplate->x = objectEvent->currentCoords.x - 7;
        objectEventTemplate->y = objectEvent->currentCoords.y - 7;
    }
}

void OverrideMovementTypeForObjectEvent(const struct ObjectEvent *objectEvent, u8 movementType)
{
    struct ObjectEventTemplate *objectEventTemplate;

    objectEventTemplate = GetBaseTemplateForObjectEvent(objectEvent);
    if (objectEventTemplate != ((void *)0))
    {
        objectEventTemplate->objUnion.normal.movementType = movementType;
    }
}

void TryOverrideObjectEventTemplateCoords(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;
    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
        OverrideTemplateCoordsForObjectEvent(&gObjectEvents[objectEventId]);
}

void InitObjectEventPalettes(u8 palSlot)
{
    FreeAndReserveObjectSpritePalettes();
    sCurrentSpecialObjectPaletteTag = 0x11FF;
    sCurrentReflectionType = palSlot;
    if (palSlot == 1)
    {
        PatchObjectPaletteRange(gObjectPaletteTagSets[sCurrentReflectionType], 0, 6);
        gReservedSpritePaletteCount = 8;
    }
    else
    {
        PatchObjectPaletteRange(gObjectPaletteTagSets[sCurrentReflectionType], 0, 10);
    }
}

u16 GetObjectPaletteTag(u8 palSlot)
{
    u8 i;

    if (palSlot < 10)
    {
        return gObjectPaletteTagSets[sCurrentReflectionType][palSlot];
    }
    for (i = 0; gSpecialObjectReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gSpecialObjectReflectionPaletteSets[i].tag == sCurrentSpecialObjectPaletteTag)
        {
            return gSpecialObjectReflectionPaletteSets[i].data[sCurrentReflectionType];
        }
    }
    return 0x11FF;
}

static u8 MovementType_None_callback(struct ObjectEvent *, struct Sprite *); void MovementType_None(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_None_callback); } static u8 MovementType_None_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return 0; }
static u8 MovementType_WanderAround_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WanderAround(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WanderAround_callback); } static u8 MovementType_WanderAround_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WanderAround[sprite->data[1]](objectEvent, sprite); }
static u8 MovementType_WanderAroundSlower_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WanderAroundSlower(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WanderAroundSlower_callback); } static u8 MovementType_WanderAroundSlower_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WanderAroundSlower[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_WanderAround_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_WanderAround_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_WanderAround_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (!ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

static bool8 MovementType_WanderAround_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_WanderAround_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[4];
    u8 chosenDirection;

    memcpy(directions, gStandardDirections, sizeof directions);
    chosenDirection = directions[Random() & 3];
    SetObjectEventDirection(objectEvent, chosenDirection);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(objectEvent, chosenDirection))
        sprite->data[1] = 1;

    return 1;
}

static bool8 MovementType_WanderAround_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(objectEvent->movementDirection));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

static bool8 MovementType_WanderAround_Step5Slower(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkSlowerMovementAction(objectEvent->movementDirection));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

static bool8 MovementType_WanderAround_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

bool8 ObjectEventIsTrainerAndCloseToPlayer(struct ObjectEvent *objectEvent)
{
    s16 playerX;
    s16 playerY;
    s16 objX;
    s16 objY;
    s16 minX;
    s16 maxX;
    s16 minY;
    s16 maxY;

    if (!TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_DASH)))
        return 0;
    if (objectEvent->trainerType != 1 && objectEvent->trainerType != 3)
        return 0;
    PlayerGetDestCoords(&playerX, &playerY);
    objX = objectEvent->currentCoords.x;
    objY = objectEvent->currentCoords.y;
    minX = objX - objectEvent->trainerRange_berryTreeId;
    minY = objY - objectEvent->trainerRange_berryTreeId;
    maxX = objX + objectEvent->trainerRange_berryTreeId;
    maxY = objY + objectEvent->trainerRange_berryTreeId;
    if (minX > playerX || maxX < playerX || minY > playerY || maxY < playerY)
    {
        return 0;
    }
    return 1;
}

static u8 GetVectorDirection(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    if (absdx > absdy)
    {
        direction = 4;
        if (dx < 0)
        {
            direction = 3;
        }
    }
    else
    {
        direction = 1;
        if (dy < 0)
        {
            direction = 2;
        }
    }
    return direction;
}

static u8 GetLimitedVectorDirection_SouthNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = 1;
    if (dy < 0)
    {
        direction = 2;
    }
    return direction;
}

static u8 GetLimitedVectorDirection_WestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = 4;
    if (dx < 0)
    {
        direction = 3;
    }
    return direction;
}

static u8 GetLimitedVectorDirection_WestNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 4)
        {
            direction = 2;
        }
    }
    else if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 1)
        {
            direction = 2;
        }
    }
    return direction;
}

static u8 GetLimitedVectorDirection_EastNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 3)
        {
            direction = 2;
        }
    }
    else if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 1)
        {
            direction = 2;
        }
    }
    return direction;
}

static u8 GetLimitedVectorDirection_WestSouth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 4)
        {
            direction = 1;
        }
    }
    else if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 2)
        {
            direction = 1;
        }
    }
    return direction;
}

static u8 GetLimitedVectorDirection_EastSouth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 3)
        {
            direction = 1;
        }
    }
    else if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 2)
        {
            direction = 1;
        }
    }
    return direction;
}

static u8 GetLimitedVectorDirection_SouthNorthWest(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
    }
    return direction;
}

static u8 GetLimitedVectorDirection_SouthNorthEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
    }
    return direction;
}

static u8 GetLimitedVectorDirection_NorthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
    }
    return direction;
}

static u8 GetLimitedVectorDirection_SouthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 TryGetTrainerEncounterDirection(struct ObjectEvent *objectEvent, u8 movementType)
{
    s16 dx, dy;
    s16 absdx, absdy;

    if (!ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        return 0;
    }
    PlayerGetDestCoords(&dx, &dy);
    dx -= objectEvent->currentCoords.x;
    dy -= objectEvent->currentCoords.y;
    absdx = dx;
    absdy = dy;
    if (absdx < 0)
    {
        absdx = -absdx;
    }
    if (absdy < 0)
    {
        absdy = -absdy;
    }
    return gGetVectorDirectionFuncs[movementType](dx, dy, absdx, absdy);
}

static u8 MovementType_LookAround_callback(struct ObjectEvent *, struct Sprite *); void MovementType_LookAround(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_LookAround_callback); } static u8 MovementType_LookAround_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_LookAround[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_LookAround_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_LookAround_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_LookAround_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_LookAround_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_LookAround_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gStandardDirections, sizeof directions);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_ANY);
    if (direction == 0)
        direction = directions[Random() & 3];

    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_WanderUpAndDown_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WanderUpAndDown(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WanderUpAndDown_callback); } static u8 MovementType_WanderUpAndDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WanderUpAndDown[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_WanderUpAndDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_WanderUpAndDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_WanderUpAndDown_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (!ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

static bool8 MovementType_WanderUpAndDown_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_WanderUpAndDown_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndDownDirections, sizeof directions);
    direction = directions[Random() & 1];
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(objectEvent, direction))
        sprite->data[1] = 1;

    return 1;
}

static bool8 MovementType_WanderUpAndDown_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(objectEvent->movementDirection));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

static bool8 MovementType_WanderUpAndDown_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_WanderLeftAndRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WanderLeftAndRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WanderLeftAndRight_callback); } static u8 MovementType_WanderLeftAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WanderLeftAndRight[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_WanderLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_WanderLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_WanderLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (!ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

static bool8 MovementType_WanderLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_WanderLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gLeftAndRightDirections, sizeof directions);
    direction = directions[Random() & 1];
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(objectEvent, direction))
        sprite->data[1] = 1;

    return 1;
}

static bool8 MovementType_WanderLeftAndRight_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(objectEvent->movementDirection));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

static bool8 MovementType_WanderLeftAndRight_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_FaceDirection_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceDirection(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDirection_callback); } static u8 MovementType_FaceDirection_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceDirection[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceDirection_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceDirection_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 0;
    return 0;
}

static u8 MovementType_FaceDownAndUp_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceDownAndUp(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownAndUp_callback); } static u8 MovementType_FaceDownAndUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceDownAndUp[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceDownAndUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceDownAndUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceDownAndUp_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceDownAndUp_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceDownAndUp_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndDownDirections, sizeof gUpAndDownDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_SOUTH);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceLeftAndRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceLeftAndRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceLeftAndRight_callback); } static u8 MovementType_FaceLeftAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceLeftAndRight[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gLeftAndRightDirections, sizeof gLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpAndLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceUpAndLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceUpAndLeft_callback); } static u8 MovementType_FaceUpAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceUpAndLeft[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceUpAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceUpAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceUpAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceUpAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceUpAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndLeftDirections, sizeof gUpAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpAndRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceUpAndRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceUpAndRight_callback); } static u8 MovementType_FaceUpAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceUpAndRight[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceUpAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceUpAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceUpAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceUpAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceUpAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndRightDirections, sizeof gUpAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownAndLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceDownAndLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownAndLeft_callback); } static u8 MovementType_FaceDownAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceDownAndLeft[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceDownAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceDownAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceDownAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceDownAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceDownAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gDownAndLeftDirections, sizeof gDownAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_SOUTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownAndRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceDownAndRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownAndRight_callback); } static u8 MovementType_FaceDownAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceDownAndRight[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceDownAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceDownAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceDownAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceDownAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceDownAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gDownAndRightDirections, sizeof gDownAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_SOUTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownUpAndLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceDownUpAndLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownUpAndLeft_callback); } static u8 MovementType_FaceDownUpAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceDownUpAndLeft[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceDownUpAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceDownUpAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceDownUpAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceDownUpAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceDownUpAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownUpAndLeftDirections, sizeof gDownUpAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_SOUTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownUpAndRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceDownUpAndRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownUpAndRight_callback); } static u8 MovementType_FaceDownUpAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceDownUpAndRight[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceDownUpAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceDownUpAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceDownUpAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceDownUpAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceDownUpAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownUpAndRightDirections, sizeof gDownUpAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_SOUTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpRightAndLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceUpRightAndLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceUpRightAndLeft_callback); } static u8 MovementType_FaceUpRightAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceUpLeftAndRight[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceUpLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceUpLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceUpLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceUpLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceUpLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gUpLeftAndRightDirections, sizeof gUpLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownRightAndLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_FaceDownRightAndLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownRightAndLeft_callback); } static u8 MovementType_FaceDownRightAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_FaceDownLeftAndRight[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_FaceDownLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_FaceDownLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_FaceDownLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_FaceDownLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

static bool8 MovementType_FaceDownLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownLeftAndRightDirections, sizeof gDownLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_SOUTH_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_RotateCounterclockwise_callback(struct ObjectEvent *, struct Sprite *); void MovementType_RotateCounterclockwise(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RotateCounterclockwise_callback); } static u8 MovementType_RotateCounterclockwise_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_RotateCounterclockwise[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_RotateCounterclockwise_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_RotateCounterclockwise_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, 48);
        sprite->data[1] = 2;
    }
    return 0;
}

static bool8 MovementType_RotateCounterclockwise_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_RotateCounterclockwise_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[5];
    memcpy(directions, gCounterclockwiseDirections, sizeof gCounterclockwiseDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_ANY);
    if (direction == 0)
    {
        direction = directions[objectEvent->facingDirection];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 0;
    return 1;
}

static u8 MovementType_RotateClockwise_callback(struct ObjectEvent *, struct Sprite *); void MovementType_RotateClockwise(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RotateClockwise_callback); } static u8 MovementType_RotateClockwise_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_RotateClockwise[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_RotateClockwise_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_RotateClockwise_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, 48);
        sprite->data[1] = 2;
    }
    return 0;
}

static bool8 MovementType_RotateClockwise_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 3;
    }
    return 0;
}

static bool8 MovementType_RotateClockwise_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[5];
    memcpy(directions, gClockwiseDirections, sizeof gClockwiseDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_ANY);
    if (direction == 0)
    {
        direction = directions[objectEvent->facingDirection];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 0;
    return 1;
}

static u8 MovementType_WalkBackAndForth_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkBackAndForth(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkBackAndForth_callback); } static u8 MovementType_WalkBackAndForth_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkBackAndForth[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_WalkBackAndForth_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_WalkBackAndForth_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;

    direction = gInitialMovementTypeFacingDirections[objectEvent->movementType];
    if (objectEvent->directionSequenceIndex)
    {
        direction = GetOppositeDirection(direction);
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_WalkBackAndForth_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    bool8 collision;
    u8 movementActionId;

    if (objectEvent->directionSequenceIndex && objectEvent->initialCoords.x == objectEvent->currentCoords.x && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 0;
        SetObjectEventDirection(objectEvent, GetOppositeDirection(objectEvent->movementDirection));
    }
    collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
    if (collision == COLLISION_OUTSIDE_RANGE)
    {
        objectEvent->directionSequenceIndex++;
        SetObjectEventDirection(objectEvent, GetOppositeDirection(objectEvent->movementDirection));
        movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
        collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    }

    if (collision)
        movementActionId = GetWalkInPlaceNormalMovementAction(objectEvent->facingDirection);

    ObjectEventSetSingleMovement(objectEvent, sprite, movementActionId);
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 3;
    return 1;
}

static bool8 MovementType_WalkBackAndForth_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static bool8 MovementType_WalkSequence_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MoveNextDirectionInSequence(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 *route)
{
    u8 collision;
    u8 movementActionId;

    if (objectEvent->directionSequenceIndex == 3 && objectEvent->initialCoords.x == objectEvent->currentCoords.x && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
        objectEvent->directionSequenceIndex = 0;

    SetObjectEventDirection(objectEvent, route[objectEvent->directionSequenceIndex]);
    movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
    collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    if (collision == COLLISION_OUTSIDE_RANGE)
    {
        objectEvent->directionSequenceIndex++;
        SetObjectEventDirection(objectEvent, route[objectEvent->directionSequenceIndex]);
        movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
        collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    }

    if (collision)
        movementActionId = GetWalkInPlaceNormalMovementAction(objectEvent->facingDirection);

    ObjectEventSetSingleMovement(objectEvent, sprite, movementActionId);
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 MovementType_WalkSequence_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_WalkSequenceUpRightLeftDown_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceUpRightLeftDown(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpRightLeftDown_callback); } static u8 MovementType_WalkSequenceUpRightLeftDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceUpRightLeftDown[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceUpRightLeftDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpRightLeftDownDirections)];
    memcpy(directions, gUpRightLeftDownDirections, sizeof(gUpRightLeftDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightLeftDownUp_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceRightLeftDownUp(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightLeftDownUp_callback); } static u8 MovementType_WalkSequenceRightLeftDownUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceRightLeftDownUp[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceRightLeftDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightLeftDownUpDirections)];
    memcpy(directions, gRightLeftDownUpDirections, sizeof(gRightLeftDownUpDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownUpRightLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceDownUpRightLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownUpRightLeft_callback); } static u8 MovementType_WalkSequenceDownUpRightLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceDownUpRightLeft[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceDownUpRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownUpRightLeftDirections)];
    memcpy(directions, gDownUpRightLeftDirections, sizeof(gDownUpRightLeftDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftDownUpRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceLeftDownUpRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftDownUpRight_callback); } static u8 MovementType_WalkSequenceLeftDownUpRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceLeftDownUpRight[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceLeftDownUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftDownUpRightDirections)];
    memcpy(directions, gLeftDownUpRightDirections, sizeof(gLeftDownUpRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpLeftRightDown_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceUpLeftRightDown(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpLeftRightDown_callback); } static u8 MovementType_WalkSequenceUpLeftRightDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceUpLeftRightDown[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceUpLeftRightDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpLeftRightDownDirections)];
    memcpy(directions, gUpLeftRightDownDirections, sizeof(gUpLeftRightDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftRightDownUp_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceLeftRightDownUp(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftRightDownUp_callback); } static u8 MovementType_WalkSequenceLeftRightDownUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceLeftRightDownUp[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceLeftRightDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftRightDownUpDirections)];
    memcpy(directions, gLeftRightDownUpDirections, sizeof(gLeftRightDownUpDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownUpLeftRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceDownUpLeftRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownUpLeftRight_callback); } static u8 MovementType_WalkSequenceDownUpLeftRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceDownUpLeftRight[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceDownUpLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gStandardDirections)];
    memcpy(directions, gStandardDirections, sizeof(gStandardDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightDownUpLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceRightDownUpLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightDownUpLeft_callback); } static u8 MovementType_WalkSequenceRightDownUpLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceRightDownUpLeft[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceRightDownUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightDownUpLeftDirections)];
    memcpy(directions, gRightDownUpLeftDirections, sizeof(gRightDownUpLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftUpDownRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceLeftUpDownRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftUpDownRight_callback); } static u8 MovementType_WalkSequenceLeftUpDownRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceLeftUpDownRight[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceLeftUpDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftUpDownRightDirections)];
    memcpy(directions, gLeftUpDownRightDirections, sizeof(gLeftUpDownRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpDownRightLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceUpDownRightLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpDownRightLeft_callback); } static u8 MovementType_WalkSequenceUpDownRightLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceUpDownRightLeft[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceUpDownRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpDownRightLeftDirections)];
    memcpy(directions, gUpDownRightLeftDirections, sizeof(gUpDownRightLeftDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightLeftUpDown_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceRightLeftUpDown(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightLeftUpDown_callback); } static u8 MovementType_WalkSequenceRightLeftUpDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceRightLeftUpDown[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceRightLeftUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightLeftUpDownDirections)];
    memcpy(directions, gRightLeftUpDownDirections, sizeof(gRightLeftUpDownDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownRightLeftUp_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceDownRightLeftUp(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownRightLeftUp_callback); } static u8 MovementType_WalkSequenceDownRightLeftUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceDownRightLeftUp[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceDownRightLeftUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownRightLeftUpDirections)];
    memcpy(directions, gDownRightLeftUpDirections, sizeof(gDownRightLeftUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightUpDownLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceRightUpDownLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightUpDownLeft_callback); } static u8 MovementType_WalkSequenceRightUpDownLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceRightUpDownLeft[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceRightUpDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightUpDownLeftDirections)];
    memcpy(directions, gRightUpDownLeftDirections, sizeof(gRightUpDownLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpDownLeftRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceUpDownLeftRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpDownLeftRight_callback); } static u8 MovementType_WalkSequenceUpDownLeftRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceUpDownLeftRight[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceUpDownLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpDownLeftRightDirections)];
    memcpy(directions, gUpDownLeftRightDirections, sizeof(gUpDownLeftRightDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftRightUpDown_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceLeftRightUpDown(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftRightUpDown_callback); } static u8 MovementType_WalkSequenceLeftRightUpDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceLeftRightUpDown[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceLeftRightUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftRightUpDownDirections)];
    memcpy(directions, gLeftRightUpDownDirections, sizeof(gLeftRightUpDownDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownLeftRightUp_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceDownLeftRightUp(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownLeftRightUp_callback); } static u8 MovementType_WalkSequenceDownLeftRightUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceDownLeftRightUp[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceDownLeftRightUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownLeftRightUpDirections)];
    memcpy(directions, gDownLeftRightUpDirections, sizeof(gDownLeftRightUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpLeftDownRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceUpLeftDownRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpLeftDownRight_callback); } static u8 MovementType_WalkSequenceUpLeftDownRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceUpLeftDownRight[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceUpLeftDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpLeftDownRightDirections)];
    memcpy(directions, gUpLeftDownRightDirections, sizeof(gUpLeftDownRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownRightUpLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceDownRightUpLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownRightUpLeft_callback); } static u8 MovementType_WalkSequenceDownRightUpLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceDownRightUpLeft[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceDownRightUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownRightUpLeftDirections)];
    memcpy(directions, gDownRightUpLeftDirections, sizeof(gDownRightUpLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftDownRightUp_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceLeftDownRightUp(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftDownRightUp_callback); } static u8 MovementType_WalkSequenceLeftDownRightUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceLeftDownRightUp[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceLeftDownRightUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftDownRightUpDirections)];
    memcpy(directions, gLeftDownRightUpDirections, sizeof(gLeftDownRightUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightUpLeftDown_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceRightUpLeftDown(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightUpLeftDown_callback); } static u8 MovementType_WalkSequenceRightUpLeftDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceRightUpLeftDown[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceRightUpLeftDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightUpLeftDownDirections)];
    memcpy(directions, gRightUpLeftDownDirections, sizeof(gRightUpLeftDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpRightDownLeft_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceUpRightDownLeft(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpRightDownLeft_callback); } static u8 MovementType_WalkSequenceUpRightDownLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceUpRightDownLeft[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceUpRightDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpRightDownLeftDirections)];
    memcpy(directions, gUpRightDownLeftDirections, sizeof(gUpRightDownLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownLeftUpRight_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceDownLeftUpRight(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownLeftUpRight_callback); } static u8 MovementType_WalkSequenceDownLeftUpRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceDownLeftUpRight[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceDownLeftUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownLeftUpRightDirections)];
    memcpy(directions, gDownLeftUpRightDirections, sizeof(gDownLeftUpRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftUpRightDown_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceLeftUpRightDown(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftUpRightDown_callback); } static u8 MovementType_WalkSequenceLeftUpRightDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceLeftUpRightDown[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceLeftUpRightDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftUpRightDownDirections)];
    memcpy(directions, gLeftUpRightDownDirections, sizeof(gLeftUpRightDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightDownLeftUp_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkSequenceRightDownLeftUp(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightDownLeftUp_callback); } static u8 MovementType_WalkSequenceRightDownLeftUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkSequenceRightDownLeftUp[sprite->data[1]](objectEvent, sprite); }

u8 MovementType_WalkSequenceRightDownLeftUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightDownLeftUpDirections)];
    memcpy(directions, gRightDownLeftUpDirections, sizeof(gRightDownLeftUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_CopyPlayer_callback(struct ObjectEvent *, struct Sprite *); void MovementType_CopyPlayer(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_CopyPlayer_callback); } static u8 MovementType_CopyPlayer_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_CopyPlayer[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_CopyPlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    if (objectEvent->directionSequenceIndex == 0)
    {
        objectEvent->directionSequenceIndex = GetPlayerFacingDirection();
    }
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_CopyPlayer_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (gObjectEvents[gPlayerAvatar.objectEventId].movementActionId == 0xFF || gPlayerAvatar.tileTransitionState == T_TILE_CENTER)
    {
        return 0;
    }
    return gCopyPlayerMovementFuncs[PlayerGetCopyableMovement()](objectEvent, sprite, GetPlayerMovementDirection(), ((void *)0));
}

static bool8 MovementType_CopyPlayer_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static bool8 CopyablePlayerMovement_None(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    return 0;
}

static bool8 CopyablePlayerMovement_FaceDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, playerDirection)));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 CopyablePlayerMovement_GoSpeed0(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 CopyablePlayerMovement_GoSpeed1(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkFastMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 CopyablePlayerMovement_GoSpeed2(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkFasterMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 CopyablePlayerMovement_Slide(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetSlideMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 cph_IM_DIFFERENT(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;

    direction = playerDirection;
    direction = GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetJumpInPlaceMovementAction(direction));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 CopyablePlayerMovement_GoSpeed4(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetJumpMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static bool8 CopyablePlayerMovement_Jump(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = GetCopyDirection(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    MoveCoordsInDirection(direction, &x, &y, 2, 2);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetJump2MovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static u8 MovementType_CopyPlayerInGrass_callback(struct ObjectEvent *, struct Sprite *); void MovementType_CopyPlayerInGrass(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_CopyPlayerInGrass_callback); } static u8 MovementType_CopyPlayerInGrass_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_CopyPlayerInGrass[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_CopyPlayerInGrass_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (gObjectEvents[gPlayerAvatar.objectEventId].movementActionId == 0xFF || gPlayerAvatar.tileTransitionState == T_TILE_CENTER)
    {
        return 0;
    }
    return gCopyPlayerMovementFuncs[PlayerGetCopyableMovement()](objectEvent, sprite, GetPlayerMovementDirection(), MetatileBehavior_IsPokeGrass);
}

static void MovementType_TreeDisguise(struct Sprite *sprite)
{
    struct ObjectEvent *objectEvent;

    objectEvent = &gObjectEvents[sprite->data[0]];
    if (objectEvent->directionSequenceIndex == 0 || (objectEvent->directionSequenceIndex == 1 && !sprite->data[7]))
    {
        ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
        objectEvent->fieldEffectSpriteId = FieldEffectStart(28);
        objectEvent->directionSequenceIndex = 1;
        sprite->data[7]++;
    }
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Disguise_Callback);
}

static bool8 MovementType_Disguise_Callback(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    return 0;
}

static void MovementType_MountainDisguise(struct Sprite *sprite)
{
    struct ObjectEvent *objectEvent;

    objectEvent = &gObjectEvents[sprite->data[0]];
    if (objectEvent->directionSequenceIndex == 0 || (objectEvent->directionSequenceIndex == 1 && !sprite->data[7]))
    {
        ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
        objectEvent->fieldEffectSpriteId = FieldEffectStart(29);
        objectEvent->directionSequenceIndex = 1;
        sprite->data[7]++;
    }
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Disguise_Callback);
}

static void MovementType_Buried(struct Sprite *sprite)
{
    if (!sprite->data[7])
    {
        gObjectEvents[sprite->data[0]].fixedPriority = 1;
        sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        sprite->oam.priority = 3;
        sprite->data[7]++;
    }
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Buried_Callback);
}

static bool8 MovementType_Buried_Callback(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return gMovementTypeFuncs_Buried[sprite->data[1]](objectEvent, sprite);
}

static bool8 MovementType_Buried_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    return 0;
}

static bool8 MovementType_MoveInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 0;
    }
    return 0;
}

static u8 MovementType_WalkInPlace_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkInPlace(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkInPlace_callback); } static u8 MovementType_WalkInPlace_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkInPlace[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_WalkInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkInPlaceNormalMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_WalkInPlaceFast_callback(struct ObjectEvent *, struct Sprite *); void MovementType_WalkInPlaceFast(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkInPlaceFast_callback); } static u8 MovementType_WalkInPlaceFast_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_WalkInPlaceFast[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_WalkInPlaceFast_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkInPlaceFastMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_JogInPlace_callback(struct ObjectEvent *, struct Sprite *); void MovementType_JogInPlace(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_JogInPlace_callback); } static u8 MovementType_JogInPlace_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_JogInPlace[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_JogInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkInPlaceFasterMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_Invisible_callback(struct ObjectEvent *, struct Sprite *); void MovementType_Invisible(struct Sprite *sprite) { UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Invisible_callback); } static u8 MovementType_Invisible_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite) { return gMovementTypeFuncs_Invisible[sprite->data[1]](objectEvent, sprite); }

static bool8 MovementType_Invisible_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    objectEvent->invisible = 1;
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_Invisible_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementType_Invisible_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 0;
    return 0;
}

void MovementType_RaiseHandAndStop(struct Sprite *sprite)
{
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RaiseHandAndStop_Callback);
}

void MovementType_RaiseHandAndJump(struct Sprite *sprite)
{
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RaiseHandAndJump_Callback);
}

void MovementType_RaiseHandAndSwim(struct Sprite *sprite)
{
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RaiseHandAndSwim_Callback);
}

static u8 MovementType_RaiseHandAndStop_Callback(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return gMovementTypeFuncs_RaiseHandAndStop[sprite->data[1]](objectEvent, sprite);
}

static u8 MovementType_RaiseHandAndJump_Callback(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return gMovementTypeFuncs_RaiseHandAndJump[sprite->data[1]](objectEvent, sprite);
}

static u8 MovementType_RaiseHandAndSwim_Callback(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return gMovementTypeFuncs_RaiseHandAndSwim[sprite->data[1]](objectEvent, sprite);
}

static bool8 MovementType_RaiseHandAndStop_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, 0x98);
    sprite->data[1] = 1;
    return 1;
}

static bool8 MovementType_RaiseHandAndStop_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementType_RaiseHandAndStop_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 0;
    return 0;
}

static bool8 MovementType_RaiseHandAndJump_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, 0x99);
    sprite->data[1] = 1;
    return 0;
}

static bool8 MovementType_RaiseHandAndSwim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, 0x9A);
    sprite->data[1] = 1;
    return 0;
}

static bool8 MovementType_RaiseHandAndMove_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 0;
    }
    return 0;
}

static void ClearObjectEventMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 0;
    objectEvent->heldMovementActive = 0;
    objectEvent->heldMovementFinished = 0;
    objectEvent->movementActionId = 0xFF;
    sprite->data[1] = 0;
}

u8 GetFaceDirectionAnimNum(u8 direction)
{
    return sFaceDirectionAnimNums[direction];
}

u8 GetMoveDirectionAnimNum(u8 direction)
{
    return sMoveDirectionAnimNums[direction];
}

static u8 GetMoveDirectionFastAnimNum(u8 direction)
{
    return sMoveDirectionFastAnimNums[direction];
}

static u8 GetMoveDirectionFasterAnimNum(u8 direction)
{
    return sMoveDirectionFasterAnimNums[direction];
}

static u8 GetMoveDirectionFastestAnimNum(u8 direction)
{
    return sMoveDirectionFastestAnimNums[direction];
}

u8 GetJumpSpecialDirectionAnimNum(u8 direction)
{
    return sJumpSpecialDirectionAnimNums[direction];
}

u8 GetAcroWheelieDirectionAnimNum(u8 direction)
{
    return sAcroBunnyHopBackWheelDirectionAnimNums[direction];
}

u8 GetAcroBunnyHopFrontWheelDirectionAnimNum(u8 direction)
{
    return sAcroBunnyHopFrontWheelDirectionAnimNums[direction];
}

u8 GetAcroEndWheelieDirectionAnimNum(u8 direction)
{
    return sAcroStandingWheelieBackWheelDirectionAnimNums[direction];
}

u8 GetSpinDirectionAnimNum(u8 direction)
{
    return sSpinDirectionAnimNums[direction];
}

u8 GetAcroUnusedActionDirectionAnimNum(u8 direction)
{
    return sAcroStandingWheelieFrontWheelDirectionAnimNums[direction];
}

u8 GetAcroWheeliePedalDirectionAnimNum(u8 direction)
{
    return sAcroMovingWheelieDirectionAnimNums[direction];
}

u8 GetFishingDirectionAnimNum(u8 direction)
{
    return sFishingDirectionAnimNums[direction];
}

u8 GetFishingNoCatchDirectionAnimNum(u8 direction)
{
    return sFishingNoCatchDirectionAnimNums[direction];
}

u8 GetFishingBiteDirectionAnimNum(u8 direction)
{
    return sFishingBiteDirectionAnimNums[direction];
}

u8 GetRunningDirectionAnimNum(u8 direction)
{
    return sRunningDirectionAnimNums[direction];
}

static const struct StepAnimTable *GetStepAnimTable(const union AnimCmd *const *anims)
{
    const struct StepAnimTable *stepTable;

    for (stepTable = sStepAnimTables; stepTable->anims != ((void *)0); stepTable++)
        if (stepTable->anims == anims)
            return stepTable;

    return ((void *)0);
}

void SetStepAnimHandleAlternation(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 animNum)
{
    const struct StepAnimTable *stepTable;

    if (!objectEvent->inanimate)
    {
        sprite->animNum = animNum;
        stepTable = GetStepAnimTable(sprite->anims);
        if (stepTable != ((void *)0))
        {
            if (sprite->animCmdIndex == stepTable->animPos[0])
                sprite->animCmdIndex = stepTable->animPos[3];
            else if (sprite->animCmdIndex == stepTable->animPos[1])
                sprite->animCmdIndex = stepTable->animPos[2];
        }
        SeekSpriteAnim(sprite, sprite->animCmdIndex);
    }
}

void SetStepAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 animNum)
{
    const struct StepAnimTable *stepTable;

    if (!objectEvent->inanimate)
    {
        u8 animPos;

        sprite->animNum = animNum;
        stepTable = GetStepAnimTable(sprite->anims);
        if (stepTable != ((void *)0))
        {
            animPos = stepTable->animPos[1];
            if (sprite->animCmdIndex <= stepTable->animPos[0])
                animPos = stepTable->animPos[0];

            SeekSpriteAnim(sprite, animPos);
        }
    }
}



u8 GetDirectionToFace(s16 x1, s16 y1, s16 x2, s16 y2)
{
    if (x1 > x2)
    {
        return 3;
    }
    if (x1 < x2)
    {
        return 4;
    }
    if (y1 > y2)
    {
        return 2;
    }
    return 1;
}

void SetTrainerMovementType(struct ObjectEvent *objectEvent, u8 movementType)
{
    objectEvent->movementType = movementType;
    objectEvent->directionSequenceIndex = 0;
    objectEvent->playerCopyableMovement = 0;
    gSprites[objectEvent->spriteId].callback = sMovementTypeCallbacks[movementType];
    gSprites[objectEvent->spriteId].data[1] = 0;
}

u8 GetTrainerFacingDirectionMovementType(u8 direction)
{
    return sTrainerFacingDirectionMovementTypes[direction];
}

static u8 GetCollisionInDirection(struct ObjectEvent *objectEvent, u8 direction)
{
    s16 x;
    s16 y;
    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    MoveCoords(direction, &x, &y);
    return GetCollisionAtCoords(objectEvent, x, y, direction);
}

u8 GetCollisionAtCoords(struct ObjectEvent *objectEvent, s16 x, s16 y, u32 dir)
{
    u8 direction = dir;
    if (IsCoordOutsideObjectEventMovementRange(objectEvent, x, y))
        return COLLISION_OUTSIDE_RANGE;
    else if (MapGridGetCollisionAt(x, y) || GetMapBorderIdAt(x, y) == -1 || IsMetatileDirectionallyImpassable(objectEvent, x, y, direction))
        return COLLISION_IMPASSABLE;
    else if (objectEvent->trackedByCamera && !CanCameraMoveInDirection(direction))
        return COLLISION_IMPASSABLE;
    else if (IsElevationMismatchAt(objectEvent->currentElevation, x, y))
        return COLLISION_ELEVATION_MISMATCH;
    else if (DoesObjectCollideWithObjectAt(objectEvent, x, y))
        return COLLISION_OBJECT_EVENT;
    return COLLISION_NONE;
}

u8 GetCollisionFlagsAtCoords(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction)
{
    u8 flags = 0;

    if (IsCoordOutsideObjectEventMovementRange(objectEvent, x, y))
        flags |= 1;
    if (MapGridGetCollisionAt(x, y) || GetMapBorderIdAt(x, y) == -1 || IsMetatileDirectionallyImpassable(objectEvent, x, y, direction) || (objectEvent->trackedByCamera && !CanCameraMoveInDirection(direction)))
        flags |= 2;
    if (IsElevationMismatchAt(objectEvent->currentElevation, x, y))
        flags |= 4;
    if (DoesObjectCollideWithObjectAt(objectEvent, x, y))
        flags |= 8;
    return flags;
}

static bool8 IsCoordOutsideObjectEventMovementRange(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    s16 left;
    s16 right;
    s16 top;
    s16 bottom;

    if (objectEvent->rangeX != 0)
    {
        left = objectEvent->initialCoords.x - objectEvent->rangeX;
        right = objectEvent->initialCoords.x + objectEvent->rangeX;
        if (left > x || right < x)
        {
            return 1;
        }
    }
    if (objectEvent->rangeY != 0)
    {
        top = objectEvent->initialCoords.y - objectEvent->rangeY;
        bottom = objectEvent->initialCoords.y + objectEvent->rangeY;
        if (top > y || bottom < y)
        {
            return 1;
        }
    }
    return 0;
}

static bool8 IsMetatileDirectionallyImpassable(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction)
{
    if (gOppositeDirectionBlockedMetatileFuncs[direction - 1](objectEvent->currentMetatileBehavior)
        || gDirectionBlockedMetatileFuncs[direction - 1](MapGridGetMetatileBehaviorAt(x, y)))
    {
        return 1;
    }
    return 0;
}

static bool8 DoesObjectCollideWithObjectAt(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    u8 i;
    struct ObjectEvent *curObject;

    for (i = 0; i < 16; i++)
    {
        curObject = &gObjectEvents[i];
        if (curObject->active && curObject != objectEvent)
        {
            if ((curObject->currentCoords.x == x && curObject->currentCoords.y == y) || (curObject->previousCoords.x == x && curObject->previousCoords.y == y))
            {
                if (AreElevationsCompatible(objectEvent->currentElevation, curObject->currentElevation))
                    return 1;
            }
        }
    }
    return 0;
}

bool8 IsBerryTreeSparkling(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId)
        && gSprites[gObjectEvents[objectEventId].spriteId].data[7] & 2)
    {
        return 1;
    }

    return 0;
}

static void SetBerryTreeJustPicked(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
        gSprites[gObjectEvents[objectEventId].spriteId].data[7] |= 0x04;
}

void MoveCoords(u8 direction, s16 *x, s16 *y)
{
    *x += sDirectionToVectors[direction].x;
    *y += sDirectionToVectors[direction].y;
}


static void MoveCoordsInMapCoordIncrement(u8 direction, s16 *x, s16 *y)
{
    *x += sDirectionToVectors[direction].x << 4;
    *y += sDirectionToVectors[direction].y << 4;
}

static void MoveCoordsInDirection(u32 dir, s16 *x, s16 *y, s16 deltaX, s16 deltaY)
{
    u8 direction = dir;
    s16 dx2 = (u16)deltaX;
    s16 dy2 = (u16)deltaY;
    if (sDirectionToVectors[direction].x > 0)
        *x += dx2;
    if (sDirectionToVectors[direction].x < 0)
        *x -= dx2;
    if (sDirectionToVectors[direction].y > 0)
        *y += dy2;
    if (sDirectionToVectors[direction].y < 0)
        *y -= dy2;
}

void GetMapCoordsFromSpritePos(s16 x, s16 y, s16 *destX, s16 *destY)
{
    *destX = (x - gSaveBlock1Ptr->pos.x) << 4;
    *destY = (y - gSaveBlock1Ptr->pos.y) << 4;
    *destX -= gTotalCameraPixelOffsetX;
    *destY -= gTotalCameraPixelOffsetY;
}

void SetSpritePosToMapCoords(s16 mapX, s16 mapY, s16 *destX, s16 *destY)
{
    s16 dx = -gTotalCameraPixelOffsetX - gFieldCamera.x;
    s16 dy = -gTotalCameraPixelOffsetY - gFieldCamera.y;
    if (gFieldCamera.x > 0)
        dx += 1 << 4;

    if (gFieldCamera.x < 0)
        dx -= 1 << 4;

    if (gFieldCamera.y > 0)
        dy += 1 << 4;

    if (gFieldCamera.y < 0)
        dy -= 1 << 4;

    *destX = ((mapX - gSaveBlock1Ptr->pos.x) << 4) + dx;
    *destY = ((mapY - gSaveBlock1Ptr->pos.y) << 4) + dy;
}

void SetSpritePosToOffsetMapCoords(s16 *x, s16 *y, s16 dx, s16 dy)
{
    SetSpritePosToMapCoords(*x, *y, x, y);
    *x += dx;
    *y += dy;
}

static void GetObjectEventMovingCameraOffset(s16 *x, s16 *y)
{
    *x = 0;
    *y = 0;
    if (gFieldCamera.x > 0)
    {
        (*x)++;
    }
    if (gFieldCamera.x < 0)
    {
        (*x)--;
    }
    if (gFieldCamera.y > 0)
    {
        (*y)++;
    }
    if (gFieldCamera.y < 0)
    {
        (*y)--;
    }
}

void ObjectEventMoveDestCoords(struct ObjectEvent *objectEvent, u32 direction, s16 *x, s16 *y)
{
    u8 newDirn = direction;
    *x = objectEvent->currentCoords.x;
    *y = objectEvent->currentCoords.y;
    MoveCoords(newDirn, x, y);
}

bool8 ObjectEventIsMovementOverridden(struct ObjectEvent *objectEvent)
{
    if (objectEvent->singleMovementActive || objectEvent->heldMovementActive)
        return 1;

    return 0;
}

bool8 ObjectEventIsHeldMovementActive(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive && objectEvent->movementActionId != 0xFF)
        return 1;

    return 0;
}

bool8 ObjectEventSetHeldMovement(struct ObjectEvent *objectEvent, u8 movementActionId)
{
    if (QL_GetPlaybackState() == 1)
        ObjectEventClearHeldMovementIfActive(objectEvent);
    else if (ObjectEventIsMovementOverridden(objectEvent))
        return 1;

    UnfreezeObjectEvent(objectEvent);
    objectEvent->movementActionId = movementActionId;
    objectEvent->heldMovementActive = 1;
    objectEvent->heldMovementFinished = 0;
    gSprites[objectEvent->spriteId].data[2] = 0;
    return 0;
}

void ObjectEventForceSetHeldMovement(struct ObjectEvent *objectEvent, u8 movementActionId)
{
    ObjectEventClearHeldMovementIfActive(objectEvent);
    ObjectEventSetHeldMovement(objectEvent, movementActionId);
}

void ObjectEventClearHeldMovementIfActive(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive)
        ObjectEventClearHeldMovement(objectEvent);
}

void ObjectEventClearHeldMovement(struct ObjectEvent *objectEvent)
{
    objectEvent->movementActionId = 0xFF;
    objectEvent->heldMovementActive = 0;
    objectEvent->heldMovementFinished = 0;
    gSprites[objectEvent->spriteId].data[1] = 0;
    gSprites[objectEvent->spriteId].data[2] = 0;
}

u8 ObjectEventCheckHeldMovementStatus(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive)
        return objectEvent->heldMovementFinished;

    return 16;
}

u8 ObjectEventClearHeldMovementIfFinished(struct ObjectEvent *objectEvent)
{
    u8 heldMovementStatus = ObjectEventCheckHeldMovementStatus(objectEvent);
    if (heldMovementStatus != 0 && heldMovementStatus != 16)
        ObjectEventClearHeldMovementIfActive(objectEvent);

    return heldMovementStatus;
}

u8 ObjectEventGetHeldMovementActionId(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive)
        return objectEvent->movementActionId;

    return 0xFF;
}

void UpdateObjectEventCurrentMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite, bool8 (*callback)(struct ObjectEvent *, struct Sprite *))
{
    DoGroundEffects_OnSpawn(objectEvent, sprite);
    TryEnableObjectEventAnim(objectEvent, sprite);

    if (ObjectEventIsHeldMovementActive(objectEvent))
        ObjectEventExecHeldMovementAction(objectEvent, sprite);
    else if (!objectEvent->frozen)
        while (callback(objectEvent, sprite));

    DoGroundEffects_OnBeginStep(objectEvent, sprite);
    DoGroundEffects_OnFinishStep(objectEvent, sprite);
    UpdateObjectEventSpriteAnimPause(objectEvent, sprite);
    UpdateObjectEventVisibility(objectEvent, sprite);
    ObjectEventUpdateSubpriority(objectEvent, sprite);
}

void QL_UpdateObjectEventCurrentMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    DoGroundEffects_OnSpawn(objectEvent, sprite);
    TryEnableObjectEventAnim(objectEvent, sprite);

    if (ObjectEventIsHeldMovementActive(objectEvent) && !sprite->animBeginning)
        QuestLogObjectEventExecHeldMovementAction(objectEvent, sprite);

    if (MetatileBehavior_IsIce_2(objectEvent->currentMetatileBehavior) == 1
        || MetatileBehavior_IsTrickHouseSlipperyFloor(objectEvent->currentMetatileBehavior) == 1)
        objectEvent->disableAnim = 1;
    else
        objectEvent->disableAnim = 0;

    DoGroundEffects_OnBeginStep(objectEvent, sprite);
    DoGroundEffects_OnFinishStep(objectEvent, sprite);
    UpdateObjectEventSpriteAnimPause(objectEvent, sprite);
    UpdateObjectEventVisibility(objectEvent, sprite);
    ObjectEventUpdateSubpriority(objectEvent, sprite);
}
# 5157 "src/event_object_movement.c"
u8 GetFaceDirectionMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (sFaceDirectionMovementActions), sizeof(sFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetFaceDirectionFastMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sFaceDirectionFastMovementActions)]; direction = idx; memcpy(animIds, (sFaceDirectionFastMovementActions), sizeof(sFaceDirectionFastMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };

u8 GetWalkSlowestMovementAction(u32 idx)
{
    u8 direction = idx;
    if (direction > 4)
        direction = 0;

    return sWalkSlowestMovementActions[direction];
}

u8 GetWalkSlowerMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkSlowerMovementActions)]; direction = idx; memcpy(animIds, (sWalkSlowerMovementActions), sizeof(sWalkSlowerMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkSlowMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkSlowMovementActions)]; direction = idx; memcpy(animIds, (sWalkSlowMovementActions), sizeof(sWalkSlowMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkNormalMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkNormalMovementActions)]; direction = idx; memcpy(animIds, (sWalkNormalMovementActions), sizeof(sWalkNormalMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkFastMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkFastMovementActions)]; direction = idx; memcpy(animIds, (sWalkFastMovementActions), sizeof(sWalkFastMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetGlideMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sGlideMovementActions)]; direction = idx; memcpy(animIds, (sGlideMovementActions), sizeof(sGlideMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetRideWaterCurrentMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sRideWaterCurrentMovementActions)]; direction = idx; memcpy(animIds, (sRideWaterCurrentMovementActions), sizeof(sRideWaterCurrentMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkFasterMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkFasterMovementActions)]; direction = idx; memcpy(animIds, (sWalkFasterMovementActions), sizeof(sWalkFasterMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetSlideMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sSlideMovementActions)]; direction = idx; memcpy(animIds, (sSlideMovementActions), sizeof(sSlideMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetPlayerRunMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sPlayerRunMovementActions)]; direction = idx; memcpy(animIds, (sPlayerRunMovementActions), sizeof(sPlayerRunMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetPlayerRunSlowMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sPlayerRunSlowMovementActions)]; direction = idx; memcpy(animIds, (sPlayerRunSlowMovementActions), sizeof(sPlayerRunSlowMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetSpinMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sSpinMovementActions)]; direction = idx; memcpy(animIds, (sSpinMovementActions), sizeof(sSpinMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetJump2MovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sJump2MovementActions)]; direction = idx; memcpy(animIds, (sJump2MovementActions), sizeof(sJump2MovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetJumpInPlaceMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sJumpInPlaceMovementActions)]; direction = idx; memcpy(animIds, (sJumpInPlaceMovementActions), sizeof(sJumpInPlaceMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetJumpInPlaceTurnAroundMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sJumpInPlaceTurnAroundMovementActions)]; direction = idx; memcpy(animIds, (sJumpInPlaceTurnAroundMovementActions), sizeof(sJumpInPlaceTurnAroundMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetJumpMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sJumpMovementActions)]; direction = idx; memcpy(animIds, (sJumpMovementActions), sizeof(sJumpMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetJumpSpecialMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sJumpSpecialMovementActions)]; direction = idx; memcpy(animIds, (sJumpSpecialMovementActions), sizeof(sJumpSpecialMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetJumpSpecialWithEffectMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sJumpSpecialWithEffectMovementActions)]; direction = idx; memcpy(animIds, (sJumpSpecialWithEffectMovementActions), sizeof(sJumpSpecialWithEffectMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkInPlaceSlowMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkInPlaceSlowMovementActions)]; direction = idx; memcpy(animIds, (sWalkInPlaceSlowMovementActions), sizeof(sWalkInPlaceSlowMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkInPlaceNormalMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkInPlaceNormalMovementActions)]; direction = idx; memcpy(animIds, (sWalkInPlaceNormalMovementActions), sizeof(sWalkInPlaceNormalMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkInPlaceFastMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkInPlaceFastMovementActions)]; direction = idx; memcpy(animIds, (sWalkInPlaceFastMovementActions), sizeof(sWalkInPlaceFastMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetWalkInPlaceFasterMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sWalkInPlaceFasterMovementActions)]; direction = idx; memcpy(animIds, (sWalkInPlaceFasterMovementActions), sizeof(sWalkInPlaceFasterMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };

bool8 ObjectEventFaceOppositeDirection(struct ObjectEvent *objectEvent, u8 direction)
{
    return ObjectEventSetHeldMovement(objectEvent, GetFaceDirectionMovementAction(GetOppositeDirection(direction)));
}

u8 GetAcroWheelieFaceDirectionMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (sAcroWheelieFaceDirectionMovementActions), sizeof(sAcroWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroPopWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (sAcroPopWheelieFaceDirectionMovementActions), sizeof(sAcroPopWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroEndWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (sAcroEndWheelieFaceDirectionMovementActions), sizeof(sAcroEndWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroWheelieHopFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (sAcroWheelieHopFaceDirectionMovementActions), sizeof(sAcroWheelieHopFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroWheelieHopMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroWheelieHopMovementActions)]; direction = idx; memcpy(animIds, (sAcroWheelieHopMovementActions), sizeof(sAcroWheelieHopMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroWheelieJumpMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroWheelieJumpMovementActions)]; direction = idx; memcpy(animIds, (sAcroWheelieJumpMovementActions), sizeof(sAcroWheelieJumpMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroWheelieInPlaceMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroWheelieInPlaceMovementActions)]; direction = idx; memcpy(animIds, (sAcroWheelieInPlaceMovementActions), sizeof(sAcroWheelieInPlaceMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroPopWheelieMoveMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroPopWheelieMoveMovementActions)]; direction = idx; memcpy(animIds, (sAcroPopWheelieMoveMovementActions), sizeof(sAcroPopWheelieMoveMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };
u8 GetAcroWheelieMoveMovementAction(u32 idx) { u8 direction; u8 animIds[sizeof(sAcroWheelieMoveMovementActions)]; direction = idx; memcpy(animIds, (sAcroWheelieMoveMovementActions), sizeof(sAcroWheelieMoveMovementActions)); if (direction > 4) direction = 0; return animIds[direction]; };

u8 GetOppositeDirection(u8 direction)
{
    u8 directions[sizeof gOppositeDirections];

    memcpy(directions, gOppositeDirections, sizeof gOppositeDirections);
    if (direction < 1 || direction > (sizeof gOppositeDirections))
    {
        return direction;
    }
    return directions[direction - 1];
}

static u32 GetPlayerDirectionForCopy(u8 initDir, u8 moveDir)
{
    return sPlayerDirectionsForCopy[initDir - 1][moveDir - 1];
}

static u32 GetCopyDirection(u8 copyInitDir, u32 playerInitDir, u32 playerMoveDir)
{
    u32 dir;
    u8 _playerInitDir = playerInitDir;
    u8 _playerMoveDir = playerMoveDir;
    if (_playerInitDir == 0 || _playerMoveDir == 0
      || _playerInitDir > 4 || _playerMoveDir > 4)
        return 0;

    dir = GetPlayerDirectionForCopy(_playerInitDir, playerMoveDir);
    return sPlayerDirectionToCopyDirection[copyInitDir - 1][dir - 1];
}

static void ObjectEventExecHeldMovementAction(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sMovementActionFuncs[objectEvent->movementActionId][sprite->data[2]](objectEvent, sprite))
    {
        objectEvent->heldMovementFinished = 1;
    }
}

static void QuestLogObjectEventExecHeldMovementAction(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sMovementActionFuncs[objectEvent->movementActionId][sprite->data[2]](objectEvent, sprite))
    {
        objectEvent->heldMovementFinished = 1;
        if (objectEvent->graphicsId == 97)
            HandleBoulderFallThroughHole(objectEvent);
    }
}

static bool8 ObjectEventExecSingleMovementAction(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sMovementActionFuncs[objectEvent->movementActionId][sprite->data[2]](objectEvent, sprite))
    {
        objectEvent->movementActionId = 0xFF;
        sprite->data[2] = 0;
        return 1;
    }
    return 0;
}

static void ObjectEventSetSingleMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 movementActionId)
{
    objectEvent->movementActionId = movementActionId;
    sprite->data[2] = 0;

    if (gQuestLogPlaybackState == 2)
        QuestLogRecordNPCStep(objectEvent->localId, objectEvent->mapNum, objectEvent->mapGroup, movementActionId);
}

static void FaceDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    SetObjectEventDirection(objectEvent, direction);
    ShiftStillObjectEventCoords(objectEvent);
    SetStepAnim(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
    sprite->animPaused = 1;
    sprite->data[2] = 1;
}

static bool8 MovementAction_FaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 1);
    return 1;
}

static bool8 MovementAction_FaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 2);
    return 1;
}

static bool8 MovementAction_FaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 3);
    return 1;
}

static bool8 MovementAction_FaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 4);
    return 1;
}

void InitNpcForMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    s16 x;
    s16 y;

    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoords(direction, &x, &y);
    ShiftObjectEventCoords(objectEvent, x, y);
    SetSpriteDataForNormalStep(sprite, direction, speed);
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void InitMovementNormal(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    u8 (*functions[(sizeof(sDirectionAnimFuncsBySpeed) / sizeof((sDirectionAnimFuncsBySpeed)[0]))])(u8);
    memcpy(functions, sDirectionAnimFuncsBySpeed, sizeof sDirectionAnimFuncsBySpeed);
    InitNpcForMovement(objectEvent, sprite, direction, speed);
    SetStepAnimHandleAlternation(objectEvent, sprite, functions[speed](objectEvent->facingDirection));
}

void StartRunningAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    InitNpcForMovement(objectEvent, sprite, direction, MOVE_SPEED_FAST_1);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetRunningDirectionAnimNum(objectEvent->facingDirection));
}

bool8 UpdateMovementNormal(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (NpcTakeStep(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

void InitNpcForWalkSlower(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    s16 x;
    s16 y;

    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoords(direction, &x, &y);
    ShiftObjectEventCoords(objectEvent, x, y);
    SetWalkSlowerSpriteData(sprite, direction);
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void InitWalkSlower(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    InitNpcForWalkSlower(objectEvent, sprite, direction);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
}

bool8 UpdateWalkSlower(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlowerAnim(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

void InitNpcForWalkSlowest(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    s16 x;
    s16 y;

    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoords(direction, &x, &y);
    ShiftObjectEventCoords(objectEvent, x, y);
    SetWalkSlowestSpriteData(sprite, direction);
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void InitWalkSlowest(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    InitNpcForWalkSlowest(objectEvent, sprite, direction);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
}

bool8 UpdateWalkSlowest(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlowestAnim(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowestDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlowest(objectEvent, sprite, 1);
    return MovementAction_WalkSlowestDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowestDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlowest(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowestUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlowest(objectEvent, sprite, 2);
    return MovementAction_WalkSlowestUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowestUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlowest(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowestLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlowest(objectEvent, sprite, 3);
    return MovementAction_WalkSlowestLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowestLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlowest(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowestRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlowest(objectEvent, sprite, 4);
    return MovementAction_WalkSlowestRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowestRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlowest(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowerDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlower(objectEvent, sprite, 1);
    return MovementAction_WalkSlowerDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowerDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlower(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowerUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlower(objectEvent, sprite, 2);
    return MovementAction_WalkSlowerUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowerUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlower(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowerLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlower(objectEvent, sprite, 3);
    return MovementAction_WalkSlowerLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowerLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlower(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowerRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlower(objectEvent, sprite, 4);
    return MovementAction_WalkSlowerRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowerRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlower(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}



void InitNpcForWalkSlow(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    s16 x;
    s16 y;

    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoords(direction, &x, &y);
    ShiftObjectEventCoords(objectEvent, x, y);
    SetWalkSlowSpriteData(sprite, direction);
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}



void InitWalkSlow(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    InitNpcForWalkSlow(objectEvent, sprite, direction);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
}

bool8 UpdateWalkSlow(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlowAnim(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlow(objectEvent, sprite, 2);
    return MovementAction_WalkSlowUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlow(objectEvent, sprite, 1);
    return MovementAction_WalkSlowDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlow(objectEvent, sprite, 3);
    return MovementAction_WalkSlowLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkSlowRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlow(objectEvent, sprite, 4);
    return MovementAction_WalkSlowRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkSlowRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkNormalDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 1, MOVE_SPEED_NORMAL);
    return MovementAction_WalkNormalDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkNormalDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkNormalUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 2, MOVE_SPEED_NORMAL);
    return MovementAction_WalkNormalUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkNormalUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkNormalLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 3, MOVE_SPEED_NORMAL);
    return MovementAction_WalkNormalLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkNormalLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkNormalRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 4, MOVE_SPEED_NORMAL);
    return MovementAction_WalkNormalRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkNormalRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}




enum {
    JUMP_TYPE_HIGH,
    JUMP_TYPE_LOW,
    JUMP_TYPE_NORMAL,
};

void InitJump(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 distance, u8 type)
{
    s16 displacements[(sizeof(sJumpInitDisplacements) / sizeof((sJumpInitDisplacements)[0]))];
    s16 x;
    s16 y;

    memcpy(displacements, sJumpInitDisplacements, sizeof sJumpInitDisplacements);
    x = 0;
    y = 0;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoordsInDirection(direction, &x, &y, displacements[distance], displacements[distance]);
    ShiftObjectEventCoords(objectEvent, objectEvent->currentCoords.x + x, objectEvent->currentCoords.y + y);
    SetJumpSpriteData(sprite, direction, distance, type);
    sprite->data[2] = 1;
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    objectEvent->disableCoveringGroundEffects = 1;
}

void InitJumpRegular(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 distance, u8 type)
{
    InitJump(objectEvent, sprite, direction, distance, type);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
    DoShadowFieldEffect(objectEvent);
}

u8 UpdateJumpAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 callback(struct Sprite *))
{
    s16 displacements[(sizeof(sJumpDisplacements) / sizeof((sJumpDisplacements)[0]))];
    s16 x;
    s16 y;
    u8 result;

    memcpy(displacements, sJumpDisplacements, sizeof sJumpDisplacements);
    result = callback(sprite);
    if (result == 1 && displacements[sprite->data[4]] != 0)
    {
        x = 0;
        y = 0;
        MoveCoordsInDirection(objectEvent->movementDirection, &x, &y, displacements[sprite->data[4]], displacements[sprite->data[4]]);
        ShiftObjectEventCoords(objectEvent, objectEvent->currentCoords.x + x, objectEvent->currentCoords.y + y);
        objectEvent->triggerGroundEffectsOnMove = 1;
        objectEvent->disableCoveringGroundEffects = 1;
    }
    else if (result == ((u8)-1))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        objectEvent->landingJump = 1;
        sprite->animPaused = 1;
    }
    return result;
}

u8 DoJumpAnimStep(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return UpdateJumpAnim(objectEvent, sprite, DoJumpSpriteMovement);
}

u8 DoJumpSpecialAnimStep(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return UpdateJumpAnim(objectEvent, sprite, DoJumpSpecialSpriteMovement);
}

bool8 DoJumpAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnimStep(objectEvent, sprite) == ((u8)-1))
        return 1;

    return 0;
}

bool8 DoJumpSpecialAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnimStep(objectEvent, sprite) == ((u8)-1))
        return 1;

    return 0;
}

bool8 DoJumpInPlaceAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    switch (DoJumpAnimStep(objectEvent, sprite))
    {
    case ((u8)-1):
        return 1;
    case 1:
        SetObjectEventDirection(objectEvent, GetOppositeDirection(objectEvent->movementDirection));
        SetStepAnim(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
    default:
        return 0;
    }
}

static bool8 MovementAction_Jump2Down_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 1, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_Jump2Down_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Jump2Down_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_Jump2Up_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 2, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_Jump2Up_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Jump2Up_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_Jump2Left_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 3, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_Jump2Left_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Jump2Left_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_Jump2Right_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 4, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_Jump2Right_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Jump2Right_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void InitMovementDelay(struct Sprite *sprite, u16 duration)
{
    sprite->data[2] = 1;
    sprite->data[3] = duration;
}

static bool8 MovementAction_Delay_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (--sprite->data[3] == 0)
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_Delay1_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementDelay(sprite, 1);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Delay2_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementDelay(sprite, 2);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Delay4_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementDelay(sprite, 4);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Delay8_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementDelay(sprite, 8);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

static bool8 MovementAction_Delay16_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementDelay(sprite, 16);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFastDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 1, MOVE_SPEED_FAST_1);
    return MovementAction_WalkFastDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFastDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkFastUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 2, MOVE_SPEED_FAST_1);
    return MovementAction_WalkFastUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFastUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkFastLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 3, MOVE_SPEED_FAST_1);
    return MovementAction_WalkFastLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFastLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkFastRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 4, MOVE_SPEED_FAST_1);
    return MovementAction_WalkFastRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFastRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 UpdateMovementGlide(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (NpcTakeStep(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        return 1;
    }
    return 0;
}

u8 MovementAction_GlideDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 1)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(1));

    InitNpcForMovement(objectEvent, sprite, 1, MOVE_SPEED_FAST_1);
    return MovementAction_GlideDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_GlideDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AnimateSprite(sprite);
    if (UpdateMovementGlide(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

u8 MovementAction_GlideUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 2)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(2));

    InitNpcForMovement(objectEvent, sprite, 2, MOVE_SPEED_FAST_1);
    return MovementAction_GlideUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_GlideUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AnimateSprite(sprite);
    if (UpdateMovementGlide(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

u8 MovementAction_GlideLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 3)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(3));

    InitNpcForMovement(objectEvent, sprite, 3, MOVE_SPEED_FAST_1);
    return MovementAction_GlideLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_GlideLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AnimateSprite(sprite);
    if (UpdateMovementGlide(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

u8 MovementAction_GlideRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 4)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(4));

    InitNpcForMovement(objectEvent, sprite, 4, MOVE_SPEED_FAST_1);
    return MovementAction_GlideRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_GlideRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AnimateSprite(sprite);
    if (UpdateMovementGlide(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void FaceDirectionFast(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    SetObjectEventDirection(objectEvent, direction);
    ShiftStillObjectEventCoords(objectEvent);
    sprite->animPaused = 0;
    sprite->data[2] = 1;
}

u8 MovementAction_FaceDownFast_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 1)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(1));

    AnimateSprite(sprite);
    FaceDirectionFast(objectEvent, sprite, 1);
    return 1;
}

u8 MovementAction_FaceUpFast_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 2)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(2));

    AnimateSprite(sprite);
    FaceDirectionFast(objectEvent, sprite, 2);
    return 1;
}

u8 MovementAction_FaceLeftFast_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 3)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(3));

    AnimateSprite(sprite);
    FaceDirectionFast(objectEvent, sprite, 3);
    return 1;
}

u8 MovementAction_FaceRightFast_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if(objectEvent->facingDirection != 4)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(4));

    AnimateSprite(sprite);
    FaceDirectionFast(objectEvent, sprite, 4);
    return 1;
}

void InitMoveInPlace(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 animNum, u16 duration)
{
    SetObjectEventDirection(objectEvent, direction);
    SetStepAnimHandleAlternation(objectEvent, sprite, animNum);
    sprite->animPaused = 0;
    sprite->data[2] = 1;
    sprite->data[3] = duration;
}

static bool8 MovementAction_WalkInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (--sprite->data[3] == 0)
    {
        sprite->data[2] = 2;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkInPlaceSlow_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sprite->data[3] & 1)
        sprite->animDelayCounter++;

    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceSlowDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 1, GetMoveDirectionAnimNum(1), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceSlowUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 2, GetMoveDirectionAnimNum(2), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceSlowLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 3, GetMoveDirectionAnimNum(3), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceSlowRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 4, GetMoveDirectionAnimNum(4), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceNormalDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 1, GetMoveDirectionAnimNum(1), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceNormalUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 2, GetMoveDirectionAnimNum(2), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceNormalLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 3, GetMoveDirectionAnimNum(3), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceNormalRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 4, GetMoveDirectionAnimNum(4), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFastDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 1, GetMoveDirectionFastAnimNum(1), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFastUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 2, GetMoveDirectionFastAnimNum(2), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFastLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 3, GetMoveDirectionFastAnimNum(3), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFastRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 4, GetMoveDirectionFastAnimNum(4), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFasterDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 1, GetMoveDirectionFasterAnimNum(1), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFasterUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 2, GetMoveDirectionFasterAnimNum(2), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFasterLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 3, GetMoveDirectionFasterAnimNum(3), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkInPlaceFasterRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 4, GetMoveDirectionFasterAnimNum(4), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RideWaterCurrentDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 1, MOVE_SPEED_FAST_2);
    return MovementAction_RideWaterCurrentDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RideWaterCurrentDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RideWaterCurrentUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 2, MOVE_SPEED_FAST_2);
    return MovementAction_RideWaterCurrentUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RideWaterCurrentUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RideWaterCurrentLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 3, MOVE_SPEED_FAST_2);
    return MovementAction_RideWaterCurrentLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RideWaterCurrentLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RideWaterCurrentRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 4, MOVE_SPEED_FAST_2);
    return MovementAction_RideWaterCurrentRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RideWaterCurrentRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkFasterDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 1, MOVE_SPEED_FASTER);
    return MovementAction_WalkFasterDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFasterDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkFasterUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 2, MOVE_SPEED_FASTER);
    return MovementAction_WalkFasterUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFasterUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkFasterLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 3, MOVE_SPEED_FASTER);
    return MovementAction_WalkFasterLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFasterLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkFasterRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 4, MOVE_SPEED_FASTER);
    return MovementAction_WalkFasterRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkFasterRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_SlideDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 1, MOVE_SPEED_FASTEST);
    return MovementAction_SlideDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SlideDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_SlideUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 2, MOVE_SPEED_FASTEST);
    return MovementAction_SlideUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SlideUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_SlideLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 3, MOVE_SPEED_FASTEST);
    return MovementAction_SlideLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SlideLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_SlideRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMovementNormal(objectEvent, sprite, 4, MOVE_SPEED_FASTEST);
    return MovementAction_SlideRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SlideRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_PlayerRunDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 1);
    return MovementAction_PlayerRunDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_PlayerRunDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_PlayerRunUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 2);
    return MovementAction_PlayerRunUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_PlayerRunUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_PlayerRunLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 3);
    return MovementAction_PlayerRunLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_PlayerRunLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_PlayerRunRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 4);
    return MovementAction_PlayerRunRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_PlayerRunRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void InitNpcForRunSlow(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    s16 x;
    s16 y;

    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoords(direction, &x, &y);
    ShiftObjectEventCoords(objectEvent, x, y);
    SetRunSlowSpriteData(sprite, direction);
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void InitRunSlow(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    InitNpcForRunSlow(objectEvent, sprite, direction);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetRunningDirectionAnimNum(objectEvent->facingDirection));
}

bool8 UpdateRunSlow(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateRunSlowAnim(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RunDownSlow_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitRunSlow(objectEvent, sprite, 1);
    return MovementAction_RunDownSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RunDownSlow_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateRunSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RunUpSlow_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitRunSlow(objectEvent, sprite, 2);
    return MovementAction_RunUpSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RunUpSlow_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateRunSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RunLeftSlow_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitRunSlow(objectEvent, sprite, 3);
    return MovementAction_RunLeftSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RunLeftSlow_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateRunSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RunRightSlow_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitRunSlow(objectEvent, sprite, 1);
    return MovementAction_RunRightSlow_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RunRightSlow_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateRunSlow(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void StartSpriteAnimInDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 animNum)
{
    SetAndStartSpriteAnim(sprite, animNum, 0);
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[2] = 1;
}

static bool8 MovementAction_StartAnimInDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, objectEvent->movementDirection, sprite->animNum);
    return 0;
}

static bool8 MovementAction_WaitSpriteAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void InitJumpSpecial(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    InitJump(objectEvent, sprite, direction, JUMP_DISTANCE_NORMAL, JUMP_TYPE_HIGH);
    StartSpriteAnim(sprite, GetJumpSpecialDirectionAnimNum(direction));
}

static bool8 MovementAction_JumpSpecialDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 1);
    return MovementAction_JumpSpecialDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpSpecialUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 2);
    return MovementAction_JumpSpecialUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpSpecialLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 3);
    return MovementAction_JumpSpecialLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpSpecialRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 4);
    return MovementAction_JumpSpecialRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpSpecialWithEffectDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 1);
    return MovementAction_JumpSpecialWithEffectDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialWithEffectDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpSpecialWithEffectUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 2);
    return MovementAction_JumpSpecialWithEffectUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialWithEffectUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpSpecialWithEffectLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 3);
    return MovementAction_JumpSpecialWithEffectLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialWithEffectLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpSpecialWithEffectRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpSpecial(objectEvent, sprite, 4);
    return MovementAction_JumpSpecialWithEffectRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpSpecialWithEffectRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpSpecialAnim(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_FacePlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 playerObjectId;

    if (!TryGetObjectEventIdByLocalIdAndMap(0xFF, 0, 0, &playerObjectId))
    {
        FaceDirection(objectEvent, sprite, GetDirectionToFace(objectEvent->currentCoords.x, objectEvent->currentCoords.y, gObjectEvents[playerObjectId].currentCoords.x, gObjectEvents[playerObjectId].currentCoords.y));
    }
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_FaceAwayPlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 playerObjectId;

    if (!TryGetObjectEventIdByLocalIdAndMap(0xFF, 0, 0, &playerObjectId))
    {
        FaceDirection(objectEvent, sprite, GetOppositeDirection(GetDirectionToFace(objectEvent->currentCoords.x, objectEvent->currentCoords.y, gObjectEvents[playerObjectId].currentCoords.x, gObjectEvents[playerObjectId].currentCoords.y)));
    }
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_LockFacingDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->facingDirectionLocked = 1;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_UnlockFacingDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->facingDirectionLocked = 0;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_JumpDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 1, JUMP_DISTANCE_NORMAL, JUMP_TYPE_NORMAL);
    return MovementAction_JumpDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 2, JUMP_DISTANCE_NORMAL, JUMP_TYPE_NORMAL);
    return MovementAction_JumpUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 3, JUMP_DISTANCE_NORMAL, JUMP_TYPE_NORMAL);
    return MovementAction_JumpLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 4, JUMP_DISTANCE_NORMAL, JUMP_TYPE_NORMAL);
    return MovementAction_JumpRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 1, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_HIGH);
    return MovementAction_JumpInPlaceDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 2, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_HIGH);
    return MovementAction_JumpInPlaceUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 3, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_HIGH);
    return MovementAction_JumpInPlaceLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 4, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_HIGH);
    return MovementAction_JumpInPlaceRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceDownUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 1, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_NORMAL);
    return MovementAction_JumpInPlaceDownUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpInPlaceAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceUpDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 2, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_NORMAL);
    return MovementAction_JumpInPlaceUpDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpInPlaceAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceLeftRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 3, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_NORMAL);
    return MovementAction_JumpInPlaceLeftRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpInPlaceAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_JumpInPlaceRightLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitJumpRegular(objectEvent, sprite, 4, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_NORMAL);
    return MovementAction_JumpInPlaceRightLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_JumpInPlaceRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpInPlaceAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_FaceOriginalDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, gInitialMovementTypeFacingDirections[objectEvent->movementType]);
    return 1;
}

static bool8 MovementAction_NurseJoyBowDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, (20 + 0));
    return 0;
}

static bool8 MovementAction_EnableJumpLandingGroundEffect_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->disableJumpLandingGroundEffect = 0;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_DisableJumpLandingGroundEffect_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->disableJumpLandingGroundEffect = 1;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_DisableAnimation_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->inanimate = 1;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_RestoreAnimation_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->inanimate = GetObjectEventGraphicsInfo(objectEvent->graphicsId)->inanimate;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_SetInvisible_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible = 1;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_SetVisible_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible = 0;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_EmoteExclamationMark_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(0);
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_EmoteQuestionMark_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(33);
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_EmoteX_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(46);
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_EmoteDoubleExclamationMark_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(66);
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_EmoteSmile_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(64);
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_RevealTrainer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (objectEvent->movementType == 0x3F)
    {
        MovementAction_RevealTrainer_RunTrainerSeeFuncList(objectEvent);
        return 0;
    }
    if (objectEvent->movementType != 0x39 && objectEvent->movementType != 0x3A)
    {
        sprite->data[2] = 2;
        return 1;
    }
    StartRevealDisguise(objectEvent);
    sprite->data[2] = 1;
    return MovementAction_RevealTrainer_Step1(objectEvent, sprite);
}

static bool8 MovementAction_RevealTrainer_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateRevealDisguise(objectEvent))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RockSmashBreak_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    SetAndStartSpriteAnim(sprite, 1, 0);
    sprite->data[2] = 1;
    return 0;
}

static bool8 MovementAction_RockSmashBreak_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        SetMovementDelay(sprite, 32);
        sprite->data[2] = 2;
    }
    return 0;
}

static bool8 MovementAction_RockSmashBreak_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible ^= 1;
    if (WaitForMovementDelay(sprite))
    {
        objectEvent->invisible = 1;
        sprite->data[2] = 3;
    }
    return 0;
}

static bool8 MovementAction_CutTree_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    SetAndStartSpriteAnim(sprite, 1, 0);
    sprite->data[2] = 1;
    return 0;
}

static bool8 MovementAction_CutTree_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        SetMovementDelay(sprite, 32);
        sprite->data[2] = 2;
    }
    return 0;
}

static bool8 MovementAction_CutTree_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible ^= 1;
    if (WaitForMovementDelay(sprite))
    {
        objectEvent->invisible = 1;
        sprite->data[2] = 3;
    }
    return 0;
}

static bool8 MovementAction_SetFixedPriority_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->fixedPriority = 1;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_ClearFixedPriority_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->fixedPriority = 0;
    sprite->data[2] = 1;
    return 1;
}

static bool8 MovementAction_InitAffineAnim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->oam.affineMode = 3;
    InitSpriteAffineAnim(sprite);
    sprite->affineAnimPaused = 1;
    sprite->subspriteMode = SUBSPRITES_OFF;
    return 1;
}

static bool8 MovementAction_ClearAffineAnim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FreeOamMatrix(sprite->oam.matrixNum);
    sprite->oam.affineMode = 0;
    CalcCenterToCornerVec(sprite, sprite->oam.shape, sprite->oam.size, sprite->oam.affineMode);
    return 1;
}

static bool8 MovementAction_WalkDownStartAffine_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlower(objectEvent, sprite, 1);
    sprite->affineAnimPaused = 0;
    StartSpriteAffineAnimIfDifferent(sprite, 0);
    return MovementAction_WalkDownStartAffine_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkDownStartAffine_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlower(objectEvent, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_WalkDownAffine_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitWalkSlower(objectEvent, sprite, 1);
    sprite->affineAnimPaused = 0;
    ChangeSpriteAffineAnimIfDifferent(sprite, 1);
    return MovementAction_WalkDownAffine_Step1(objectEvent, sprite);
}

static bool8 MovementAction_WalkDownAffine_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateWalkSlower(objectEvent, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void AcroWheelieFaceDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    SetObjectEventDirection(objectEvent, direction);
    ShiftStillObjectEventCoords(objectEvent);
    SetStepAnim(objectEvent, sprite, GetAcroWheeliePedalDirectionAnimNum(direction));
    sprite->animPaused = 1;
    sprite->data[2] = 1;
}

static bool8 MovementAction_AcroWheelieFaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AcroWheelieFaceDirection(objectEvent, sprite, 1);
    return 1;
}

static bool8 MovementAction_AcroWheelieFaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AcroWheelieFaceDirection(objectEvent, sprite, 2);
    return 1;
}

static bool8 MovementAction_AcroWheelieFaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AcroWheelieFaceDirection(objectEvent, sprite, 3);
    return 1;
}

static bool8 MovementAction_AcroWheelieFaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    AcroWheelieFaceDirection(objectEvent, sprite, 4);
    return 1;
}

static bool8 MovementAction_AcroPopWheelieDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, GetAcroWheelieDirectionAnimNum(1));
    return 0;
}

static bool8 MovementAction_AcroPopWheelieUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 2, GetAcroWheelieDirectionAnimNum(2));
    return 0;
}

static bool8 MovementAction_AcroPopWheelieLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 3, GetAcroWheelieDirectionAnimNum(3));
    return 0;
}

static bool8 MovementAction_AcroPopWheelieRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 4, GetAcroWheelieDirectionAnimNum(4));
    return 0;
}

static bool8 MovementAction_AcroEndWheelieFaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, GetAcroEndWheelieDirectionAnimNum(1));
    return 0;
}

static bool8 MovementAction_AcroEndWheelieFaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 2, GetAcroEndWheelieDirectionAnimNum(2));
    return 0;
}

static bool8 MovementAction_AcroEndWheelieFaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 3, GetAcroEndWheelieDirectionAnimNum(3));
    return 0;
}

static bool8 MovementAction_AcroEndWheelieFaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 4, GetAcroEndWheelieDirectionAnimNum(4));
    return 0;
}

static bool8 MovementAction_UnusedAcroActionDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, GetAcroUnusedActionDirectionAnimNum(1));
    return 0;
}

static bool8 MovementAction_UnusedAcroActionUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 2, GetAcroUnusedActionDirectionAnimNum(2));
    return 0;
}

static bool8 MovementAction_UnusedAcroActionLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 3, GetAcroUnusedActionDirectionAnimNum(3));
    return 0;
}

static bool8 MovementAction_UnusedAcroActionRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 4, GetAcroUnusedActionDirectionAnimNum(4));
    return 0;
}

void InitAcroWheelieJump(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 distance, u8 type)
{
    InitJump(objectEvent, sprite, direction, distance, type);
    StartSpriteAnimIfDifferent(sprite, GetAcroWheelieDirectionAnimNum(direction));
    DoShadowFieldEffect(objectEvent);
}

static bool8 MovementAction_AcroWheelieHopFaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 1, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopFaceDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopFaceDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieHopFaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 2, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopFaceUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopFaceUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieHopFaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 3, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopFaceLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopFaceLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieHopFaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 4, JUMP_DISTANCE_IN_PLACE, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopFaceRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopFaceRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieHopDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 1, JUMP_DISTANCE_NORMAL, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieHopUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 2, JUMP_DISTANCE_NORMAL, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieHopLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 3, JUMP_DISTANCE_NORMAL, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieHopRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 4, JUMP_DISTANCE_NORMAL, JUMP_TYPE_LOW);
    return MovementAction_AcroWheelieHopRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieHopRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieJumpDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 1, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_AcroWheelieJumpDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieJumpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieJumpUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 2, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_AcroWheelieJumpUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieJumpUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieJumpLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 3, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_AcroWheelieJumpLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieJumpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieJumpRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieJump(objectEvent, sprite, 4, JUMP_DISTANCE_FAR, JUMP_TYPE_HIGH);
    return MovementAction_AcroWheelieJumpRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieJumpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (DoJumpAnim(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieInPlaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 1, GetAcroWheeliePedalDirectionAnimNum(1), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieInPlaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 2, GetAcroWheeliePedalDirectionAnimNum(2), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieInPlaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 3, GetAcroWheeliePedalDirectionAnimNum(3), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieInPlaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitMoveInPlace(objectEvent, sprite, 4, GetAcroWheeliePedalDirectionAnimNum(4), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

void InitAcroPopWheelie(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    InitNpcForMovement(objectEvent, sprite, direction, speed);
    StartSpriteAnim(sprite, GetAcroWheelieDirectionAnimNum(objectEvent->facingDirection));
    SeekSpriteAnim(sprite, 0);
}

static bool8 MovementAction_AcroPopWheelieMoveDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroPopWheelie(objectEvent, sprite, 1, MOVE_SPEED_FAST_1);
    return MovementAction_AcroPopWheelieMoveDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroPopWheelieMoveDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroPopWheelieMoveUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroPopWheelie(objectEvent, sprite, 2, MOVE_SPEED_FAST_1);
    return MovementAction_AcroPopWheelieMoveUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroPopWheelieMoveUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroPopWheelieMoveLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroPopWheelie(objectEvent, sprite, 3, MOVE_SPEED_FAST_1);
    return MovementAction_AcroPopWheelieMoveLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroPopWheelieMoveLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroPopWheelieMoveRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroPopWheelie(objectEvent, sprite, 4, MOVE_SPEED_FAST_1);
    return MovementAction_AcroPopWheelieMoveRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroPopWheelieMoveRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void InitAcroWheelieMove(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    InitNpcForMovement(objectEvent, sprite, direction, speed);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetAcroWheeliePedalDirectionAnimNum(objectEvent->facingDirection));
}

static bool8 MovementAction_AcroWheelieMoveDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieMove(objectEvent, sprite, 1, MOVE_SPEED_FAST_1);
    return MovementAction_AcroWheelieMoveDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieMoveDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieMoveUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieMove(objectEvent, sprite, 2, MOVE_SPEED_FAST_1);
    return MovementAction_AcroWheelieMoveUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieMoveUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieMoveLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieMove(objectEvent, sprite, 3, MOVE_SPEED_FAST_1);
    return MovementAction_AcroWheelieMoveLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieMoveLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_AcroWheelieMoveRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitAcroWheelieMove(objectEvent, sprite, 4, MOVE_SPEED_FAST_1);
    return MovementAction_AcroWheelieMoveRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_AcroWheelieMoveRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void InitSpin(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    InitNpcForMovement(objectEvent, sprite, direction, speed);
    SetStepAnimHandleAlternation(objectEvent, sprite, GetSpinDirectionAnimNum(objectEvent->facingDirection));
    SeekSpriteAnim(sprite, 0);
}

static bool8 MovementAction_SpinDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitSpin(objectEvent, sprite, 1, MOVE_SPEED_FAST_1);
    return MovementAction_SpinDown_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SpinDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_SpinUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitSpin(objectEvent, sprite, 2, MOVE_SPEED_FAST_1);
    return MovementAction_SpinUp_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SpinUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_SpinLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitSpin(objectEvent, sprite, 3, MOVE_SPEED_FAST_1);
    return MovementAction_SpinLeft_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SpinLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_SpinRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    InitSpin(objectEvent, sprite, 4, MOVE_SPEED_FAST_1);
    return MovementAction_SpinRight_Step1(objectEvent, sprite);
}

static bool8 MovementAction_SpinRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (UpdateMovementNormal(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static bool8 MovementAction_RaiseHand_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnim(sprite, (20 + 0));
    sprite->animPaused = 0;
    objectEvent->disableAnim = 0;
    sprite->data[2] = 1;
    sprite->data[4] = 0;
    sprite->data[5] = 0;
    sprite->data[6] = 0;
    sprite->data[7] = 0;
    return 0;
}

static bool8 MovementAction_RaiseHandAndStop_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return sprite->animEnded;
}

static bool8 MovementAction_RaiseHandAndJump_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    switch (sprite->data[7])
    {
    case 0:
        if((sprite->data[6] += 10) > 127)
        {
            sprite->data[6] = 0;
            sprite->data[5]++;
            sprite->data[7] = sprite->data[5];
            StartSpriteAnim(sprite, 0);
            sprite->animPaused = 0;
            objectEvent->disableAnim = 0;
        }
        sprite->y2 = -(3 * gSineTable[sprite->data[6]] >> 7);
        objectEvent->singleMovementActive = sprite->y2 != 0;
        return 0;
    case 1:
        if (++sprite->data[4] > 16)
        {
            sprite->data[4] = 0;
            StartSpriteAnim(sprite, (20 + 0));
            sprite->animPaused = 0;
            objectEvent->disableAnim = 0;
            sprite->data[7] = 0;
        }
        else
        {
            objectEvent->singleMovementActive = 0;
        }
        return 0;
    case 2:
        objectEvent->singleMovementActive = 0;
        if (++sprite->data[4] > 80)
        {
            sprite->data[4] = 0;
            return 1;
        }
        else
        {
            return 0;
        }
    }
    return 0;
}

static bool8 MovementAction_RaiseHandAndSwim_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    bool8 ret;
    sprite->data[7] = (sprite->data[7] + 4) & 0xFF;
    sprite->x2 = gSineTable[sprite->data[7]] >> 7;
    if (sprite->data[7] == 0)
        ret = 1;
    else
        ret = 0;
    return ret;
}

static bool8 MovementAction_ShakeHeadOrWalkInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnim(sprite, (20 + 8));
    sprite->animPaused = 0;
    objectEvent->disableAnim = 0;
    sprite->data[2] = 1;
    return 0;
}

static bool8 MovementAction_ShakeHeadOrWalkInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return sprite->animEnded;
}

u8 MovementAction_Finish(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return 1;
}

static bool8 MovementAction_PauseSpriteAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->animPaused = 1;
    return 1;
}

static bool8 MovementAction_FlyUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->y2 = 0;
    sprite->data[2]++;
    return 0;
}

static bool8 MovementAction_FlyUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->y2 -= 8;
    if (sprite->y2 == -160)
        sprite->data[2]++;
    return 0;
}

static bool8 MovementAction_FlyDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->y2 = -160;
    sprite->data[2]++;
    return 0;
}

static bool8 MovementAction_FlyDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->y2 += 8;
    if (sprite->y2 == 0)
        sprite->data[2]++;
    return 0;
}

u8 MovementAction_FlyUp_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return 1;
}

static void UpdateObjectEventSpriteAnimPause(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (objectEvent->disableAnim)
    {
        sprite->animPaused = 1;
    }
}

static void TryEnableObjectEventAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (objectEvent->enableAnim)
    {
        sprite->animPaused = 0;
        objectEvent->disableAnim = 0;
        objectEvent->enableAnim = 0;
    }
}

static void UpdateObjectEventVisibility(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    CalcWhetherObjectIsOffscreen(objectEvent, sprite);
    UpdateObjEventSpriteVisibility(objectEvent, sprite);
}

static void CalcWhetherObjectIsOffscreen(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u16 x, y;
    u16 x2, y2;
    const struct ObjectEventGraphicsInfo *graphicsInfo;
    s16 var;

    objectEvent->offScreen = 0;
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    if (sprite->coordOffsetEnabled)
    {
        x = sprite->x + sprite->x2 + sprite->centerToCornerVecX + gSpriteCoordOffsetX;
        y = sprite->y + sprite->y2 + sprite->centerToCornerVecY + gSpriteCoordOffsetY;
    }
    else
    {
        x = sprite->x + sprite->x2 + sprite->centerToCornerVecX;
        y = sprite->y + sprite->y2 + sprite->centerToCornerVecY;
    }
    x2 = graphicsInfo->width + (s16)x;
    y2 = graphicsInfo->height + (s16)y;

    if (gSaveBlock1Ptr->location.mapGroup == ((4 | (1 << 8)) >> 8)
         && gSaveBlock1Ptr->location.mapNum == ((4 | (1 << 8)) & 0xFF)
         && objectEvent->localId == 1)
    {
        var = -32;
    }
    else
    {
        var = -16;
    }
    if ((s16)x >= 256 || (s16)x2 < var)
    {
        objectEvent->offScreen = 1;
    }
    if ((s16)y >= 176 || (s16)y2 < -16)
    {
        objectEvent->offScreen = 1;
    }
}

static void UpdateObjEventSpriteVisibility(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->invisible = 0;
    if (objectEvent->invisible || objectEvent->offScreen)
    {
        sprite->invisible = 1;
    }
}

static void GetAllGroundEffectFlags_OnSpawn(struct ObjectEvent *objEvent, u32 *flags)
{
    ObjectEventUpdateMetatileBehaviors(objEvent);
    GetGroundEffectFlags_Reflection(objEvent, flags);
    GetGroundEffectFlags_TallGrassOnSpawn(objEvent, flags);
    GetGroundEffectFlags_LongGrassOnSpawn(objEvent, flags);
    GetGroundEffectFlags_SandHeap(objEvent, flags);
    GetGroundEffectFlags_ShallowFlowingWater(objEvent, flags);
    GetGroundEffectFlags_ShortGrass(objEvent, flags);
    GetGroundEffectFlags_HotSprings(objEvent, flags);
}

static void GetAllGroundEffectFlags_OnBeginStep(struct ObjectEvent *objEvent, u32 *flags)
{
    ObjectEventUpdateMetatileBehaviors(objEvent);
    GetGroundEffectFlags_Reflection(objEvent, flags);
    GetGroundEffectFlags_TallGrassOnBeginStep(objEvent, flags);
    GetGroundEffectFlags_LongGrassOnBeginStep(objEvent, flags);
    GetGroundEffectFlags_Tracks(objEvent, flags);
    GetGroundEffectFlags_SandHeap(objEvent, flags);
    GetGroundEffectFlags_ShallowFlowingWater(objEvent, flags);
    GetGroundEffectFlags_Puddle(objEvent, flags);
    GetGroundEffectFlags_ShortGrass(objEvent, flags);
    GetGroundEffectFlags_HotSprings(objEvent, flags);
}

static void GetAllGroundEffectFlags_OnFinishStep(struct ObjectEvent *objEvent, u32 *flags)
{
    ObjectEventUpdateMetatileBehaviors(objEvent);
    GetGroundEffectFlags_ShallowFlowingWater(objEvent, flags);
    GetGroundEffectFlags_SandHeap(objEvent, flags);
    GetGroundEffectFlags_Puddle(objEvent, flags);
    GetGroundEffectFlags_Ripple(objEvent, flags);
    GetGroundEffectFlags_ShortGrass(objEvent, flags);
    GetGroundEffectFlags_HotSprings(objEvent, flags);
    GetGroundEffectFlags_Seaweed(objEvent, flags);
    GetGroundEffectFlags_JumpLanding(objEvent, flags);
}

static void ObjectEventUpdateMetatileBehaviors(struct ObjectEvent *objEvent)
{
    objEvent->previousMetatileBehavior = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x, objEvent->previousCoords.y);
    objEvent->currentMetatileBehavior = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x, objEvent->currentCoords.y);
}

static void GetGroundEffectFlags_Reflection(struct ObjectEvent *objEvent, u32 *flags)
{
    u32 reflectionFlags[2] = { (1 << 5), (1 << 4) };
    u8 type = ObjectEventCheckForReflectiveSurface(objEvent);

    if (type)
    {
        if (!objEvent->hasReflection)
        {
            objEvent->hasReflection = 0;
            objEvent->hasReflection = 1;
            *flags |= reflectionFlags[type - 1];
        }
    }
    else
    {
        objEvent->hasReflection = 0;
    }
}

static void GetGroundEffectFlags_TallGrassOnSpawn(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsTallGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 0);
}

static void GetGroundEffectFlags_TallGrassOnBeginStep(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsTallGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 1);
}

static void GetGroundEffectFlags_LongGrassOnSpawn(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsLongGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 2);
}

static void GetGroundEffectFlags_LongGrassOnBeginStep(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsLongGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 3);
}

static void GetGroundEffectFlags_Tracks(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsDeepSand(objEvent->previousMetatileBehavior))
    {
        *flags |= (1 << 8);
    }
    else if (MetatileBehavior_IsSand(objEvent->previousMetatileBehavior)
             || MetatileBehavior_IsFootprints(objEvent->previousMetatileBehavior))
    {
        *flags |= (1 << 7);
    }
}

static void GetGroundEffectFlags_SandHeap(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsDeepSand(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsDeepSand(objEvent->previousMetatileBehavior))
    {
        if (!objEvent->inSandPile)
        {
            objEvent->inSandPile = 0;
            objEvent->inSandPile = 1;
            *flags |= (1 << 11);
        }
    }
    else
    {
        objEvent->inSandPile = 0;
    }
}

static void GetGroundEffectFlags_ShallowFlowingWater(struct ObjectEvent *objEvent, u32 *flags)
{
    if ((MetatileBehavior_IsShallowFlowingWater(objEvent->currentMetatileBehavior)
         && MetatileBehavior_IsShallowFlowingWater(objEvent->previousMetatileBehavior))
        || (MetatileBehavior_IsPacifidlogLog(objEvent->currentMetatileBehavior)
            && MetatileBehavior_IsPacifidlogLog(objEvent->previousMetatileBehavior)))
    {
        if (!objEvent->inShallowFlowingWater)
        {
            objEvent->inShallowFlowingWater = 0;
            objEvent->inShallowFlowingWater = 1;
            *flags |= (1 << 6);
        }
    }
    else
    {
        objEvent->inShallowFlowingWater = 0;
    }
}

static void GetGroundEffectFlags_Puddle(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsPuddle(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsPuddle(objEvent->previousMetatileBehavior))
    {
        *flags |= (1 << 10);
    }
}

static void GetGroundEffectFlags_Ripple(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_HasRipples(objEvent->currentMetatileBehavior))
        *flags |= (1 << 9);
}

static void GetGroundEffectFlags_ShortGrass(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsShortGrass(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsShortGrass(objEvent->previousMetatileBehavior))
    {
        if (!objEvent->inShortGrass)
        {
            objEvent->inShortGrass = 0;
            objEvent->inShortGrass = 1;
            *flags |= (1 << 17);
        }
    }
    else
    {
        objEvent->inShortGrass = 0;
    }
}

static void GetGroundEffectFlags_HotSprings(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsHotSprings(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsHotSprings(objEvent->previousMetatileBehavior))
    {
        if (!objEvent->inHotSprings)
        {
            objEvent->inHotSprings = 0;
            objEvent->inHotSprings = 1;
            *flags |= (1 << 18);
        }
    }
    else
    {
        objEvent->inHotSprings = 0;
    }
}

static void GetGroundEffectFlags_Seaweed(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsSeaweed(objEvent->currentMetatileBehavior))
        *flags |= (1 << 19);
}

static void GetGroundEffectFlags_JumpLanding(struct ObjectEvent *objEvent, u32 *flags)
{
    typedef bool8 (*MetatileFunc)(u8);

    static const MetatileFunc metatileFuncs[] = {
        MetatileBehavior_IsTallGrass,
        MetatileBehavior_IsLongGrass,
        MetatileBehavior_IsPuddle,
        MetatileBehavior_IsSurfable,
        MetatileBehavior_IsShallowFlowingWater,
        MetatileBehavior_IsATile,
    };

    static const u32 jumpLandingFlags[] = {
        (1 << 12),
        (1 << 13),
        (1 << 14),
        (1 << 15),
        (1 << 14),
        (1 << 16),
    };

    if (objEvent->landingJump && !objEvent->disableJumpLandingGroundEffect)
    {
        u8 i;

        for (i = 0; i < (sizeof(metatileFuncs) / sizeof((metatileFuncs)[0])); i++)
        {
            if (metatileFuncs[i](objEvent->currentMetatileBehavior))
            {
                *flags |= jumpLandingFlags[i];
                return;
            }
        }
    }
}

static u8 ObjectEventCheckForReflectiveSurface(struct ObjectEvent *objEvent)
{
    const struct ObjectEventGraphicsInfo *info = GetObjectEventGraphicsInfo(objEvent->graphicsId);


    s16 width = 1;
    s16 height = 2;
    s16 i;
    s16 j;
    u8 result;
    u8 b;
    s16 one;







    for (i = 0, one = 1; i < height; i++)
    {
        b = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x, objEvent->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        b = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x, objEvent->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        for (j = 1; j < width; j++)
        {
            b = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x + j, objEvent->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x - j, objEvent->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x + j, objEvent->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x - j, objEvent->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        }
    }
    return 0;


}

static u8 GetReflectionTypeByMetatileBehavior(u32 behavior)
{
    if (MetatileBehavior_IsIce(behavior))
        return 1;
    else if (MetatileBehavior_IsReflective(behavior))
        return 2;
    else
        return 0;
}

u8 GetLedgeJumpDirection(s16 x, s16 y, u8 direction)
{
    static bool8 (*const ledgeBehaviorFuncs[])(u8) = {
        [1 - 1] = MetatileBehavior_IsJumpSouth,
        [2 - 1] = MetatileBehavior_IsJumpNorth,
        [3 - 1] = MetatileBehavior_IsJumpWest,
        [4 - 1] = MetatileBehavior_IsJumpEast,
    };

    u8 behavior;
    u8 index = direction;

    if (index == 0)
        return 0;
    else if (index > 4)
        index -= 4;

    index--;
    behavior = MapGridGetMetatileBehaviorAt(x, y);

    if (ledgeBehaviorFuncs[index](behavior) == 1)
        return index + 1;

    return 0;
}

static void SetObjectEventSpriteOamTableForLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    if (objEvent->disableCoveringGroundEffects)
        return;

    if (!MetatileBehavior_IsLongGrass(objEvent->currentMetatileBehavior))
        return;

    if (!MetatileBehavior_IsLongGrass(objEvent->previousMetatileBehavior))
        return;

    sprite->subspriteTableNum = 4;

    if (ElevationToPriority(objEvent->previousElevation) == 1)
        sprite->subspriteTableNum = 5;
}

static bool8 IsElevationMismatchAt(u8 elevation, s16 x, s16 y)
{
    u8 mapElevation;

    if (elevation == 0)
        return 0;

    mapElevation = MapGridGetElevationAt(x, y);

    if (mapElevation == 0 || mapElevation == 15)
        return 0;

    if (mapElevation != elevation)
        return 1;

    return 0;
}

static const u8 sElevationToSubpriority[] = {
    115, 115, 83, 115, 83, 115, 83, 115, 83, 115, 83, 115, 83, 0, 0, 115
};

static const u8 sElevationToPriority[] = {
    2, 2, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 0, 0, 2
};



static const u8 sElevationToSubspriteTableNum[] = {
    1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 0, 0, 1,
};

static void UpdateObjectEventElevationAndPriority(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    if (objEvent->fixedPriority)
        return;

    ObjectEventUpdateElevation(objEvent);

    sprite->subspriteTableNum = sElevationToSubspriteTableNum[objEvent->previousElevation];
    sprite->oam.priority = sElevationToPriority[objEvent->previousElevation];
}

static void InitObjectPriorityByElevation(struct Sprite *sprite, u8 elevation)
{
    sprite->subspriteTableNum = sElevationToSubspriteTableNum[elevation];
    sprite->oam.priority = sElevationToPriority[elevation];
}

u8 ElevationToPriority(u8 elevation)
{
    return sElevationToPriority[elevation];
}

void ObjectEventUpdateElevation(struct ObjectEvent *objEvent)
{
    u8 curElevation = MapGridGetElevationAt(objEvent->currentCoords.x, objEvent->currentCoords.y);
    u8 prevElevation = MapGridGetElevationAt(objEvent->previousCoords.x, objEvent->previousCoords.y);

    if (curElevation == 15 || prevElevation == 15)
        return;

    objEvent->currentElevation = curElevation;

    if (curElevation != 0 && curElevation != 15)
        objEvent->previousElevation = curElevation;
}

void SetObjectSubpriorityByElevation(u8 elevation, struct Sprite *sprite, u8 subpriority)
{
    s32 tmp = sprite->centerToCornerVecY;
    u32 tmpa = *(u16 *)&sprite->y;
    u32 tmpb = *(u16 *)&gSpriteCoordOffsetY;
    s32 tmp2 = (tmpa - tmp) + tmpb;
    u16 tmp3 = (0x10 - ((((u32)tmp2 + 8) & 0xFF) >> 4)) * 2;
    sprite->subpriority = tmp3 + sElevationToSubpriority[elevation] + subpriority;
}

static void ObjectEventUpdateSubpriority(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    if (objEvent->fixedPriority)
        return;

    SetObjectSubpriorityByElevation(objEvent->previousElevation, sprite, 1);
}

static bool8 AreElevationsCompatible(u8 a, u8 b)
{
    if (a == 0 || b == 0)
        return 1;

    if (a != b)
        return 0;

    return 1;
}

void GroundEffect_SpawnOnTallGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->localId << 8 | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 1;
    FieldEffectStart(4);
}

void GroundEffect_StepOnTallGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->localId << 8 | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 0;
    FieldEffectStart(4);
}

void GroundEffect_SpawnOnLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->localId << 8 | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 1;
    FieldEffectStart(17);
}

void GroundEffect_StepOnLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = (objEvent->localId << 8) | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 0;
    FieldEffectStart(17);
}

void GroundEffect_WaterReflection(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    SetUpReflection(objEvent, sprite, 0);
}

void GroundEffect_IceReflection(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    SetUpReflection(objEvent, sprite, 1);
}

void GroundEffect_FlowingWater(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(34, objEvent);
}

static void (*const sGroundEffectTracksFuncs[])(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a) = {
    DoTracksGroundEffect_None,
    DoTracksGroundEffect_Footprints,
    DoTracksGroundEffect_BikeTireTracks,
};

void GroundEffect_SandTracks(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    const struct ObjectEventGraphicsInfo *info = GetObjectEventGraphicsInfo(objEvent->graphicsId);
    sGroundEffectTracksFuncs[info->tracks](objEvent, sprite, 0);
}

void GroundEffect_DeepSandTracks(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    const struct ObjectEventGraphicsInfo *info = GetObjectEventGraphicsInfo(objEvent->graphicsId);
    sGroundEffectTracksFuncs[info->tracks](objEvent, sprite, 1);
}

static void DoTracksGroundEffect_None(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a)
{
}

static void DoTracksGroundEffect_Footprints(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a)
{

    u16 sandFootprints_FieldEffectData[2] = {
        13,
        24
    };

    gFieldEffectArguments[0] = objEvent->previousCoords.x;
    gFieldEffectArguments[1] = objEvent->previousCoords.y;
    gFieldEffectArguments[2] = 149;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->facingDirection;
    FieldEffectStart(sandFootprints_FieldEffectData[a]);
}

static void DoTracksGroundEffect_BikeTireTracks(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a)
{






    static const u8 bikeTireTracks_Transitions[4][4] = {
        1, 2, 7, 8,
        1, 2, 6, 5,
        5, 8, 3, 4,
        6, 7, 3, 4,
    };

    if (objEvent->currentCoords.x != objEvent->previousCoords.x || objEvent->currentCoords.y != objEvent->previousCoords.y)
    {
        gFieldEffectArguments[0] = objEvent->previousCoords.x;
        gFieldEffectArguments[1] = objEvent->previousCoords.y;
        gFieldEffectArguments[2] = 149;
        gFieldEffectArguments[3] = 2;
        gFieldEffectArguments[4] =
            bikeTireTracks_Transitions[objEvent->previousMovementDirection][objEvent->facingDirection - 5];
        FieldEffectStart(35);
    }
}

void GroundEffect_Ripple(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    DoRippleFieldEffect(objEvent, sprite);
}

void GroundEffect_StepOnPuddle(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(15, objEvent);
}

void GroundEffect_SandHeap(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(39, objEvent);
}

void GroundEffect_JumpOnTallGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u8 spriteId;

    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    FieldEffectStart(12);

    spriteId = FindTallGrassFieldEffectSpriteId(
        objEvent->localId,
        objEvent->mapNum,
        objEvent->mapGroup,
        objEvent->currentCoords.x,
        objEvent->currentCoords.y);

    if (spriteId == 64)
        GroundEffect_SpawnOnTallGrass(objEvent, sprite);
}

void GroundEffect_JumpOnLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    FieldEffectStart(18);
}

void GroundEffect_JumpOnShallowWater(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(16);
}

void GroundEffect_JumpOnWater(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(14);
}

void GroundEffect_JumpLandingDust(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(10);
}

void GroundEffect_ShortGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(41, objEvent);
}

void GroundEffect_HotSprings(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(42, objEvent);
}

void GroundEffect_Seaweed(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    FieldEffectStart(53);
}

static void (*const sGroundEffectFuncs[])(struct ObjectEvent *objEvent, struct Sprite *sprite) = {
    GroundEffect_SpawnOnTallGrass,
    GroundEffect_StepOnTallGrass,
    GroundEffect_SpawnOnLongGrass,
    GroundEffect_StepOnLongGrass,
    GroundEffect_WaterReflection,
    GroundEffect_IceReflection,
    GroundEffect_FlowingWater,
    GroundEffect_SandTracks,
    GroundEffect_DeepSandTracks,
    GroundEffect_Ripple,
    GroundEffect_StepOnPuddle,
    GroundEffect_SandHeap,
    GroundEffect_JumpOnTallGrass,
    GroundEffect_JumpOnLongGrass,
    GroundEffect_JumpOnShallowWater,
    GroundEffect_JumpOnWater,
    GroundEffect_JumpLandingDust,
    GroundEffect_ShortGrass,
    GroundEffect_HotSprings,
    GroundEffect_Seaweed
};

static void DoFlaggedGroundEffects(struct ObjectEvent *objEvent, struct Sprite *sprite, u32 flags)
{
    u8 i;

    if (objEvent->localId == 0x7F && objEvent->invisible)
        return;

    for (i = 0; i < (sizeof(sGroundEffectFuncs) / sizeof((sGroundEffectFuncs)[0])); i++, flags >>= 1)
        if (flags & 1)
            sGroundEffectFuncs[i](objEvent, sprite);
}

void filters_out_some_ground_effects(struct ObjectEvent *objEvent, u32 *flags)
{
    if (objEvent->disableCoveringGroundEffects)
    {
        objEvent->inShortGrass = 0;
        objEvent->inSandPile = 0;
        objEvent->inShallowFlowingWater = 0;
        objEvent->inHotSprings = 0;
        *flags &= ~((1 << 18)
                  | (1 << 17)
                  | (1 << 11)
                  | (1 << 6)
                  | (1 << 1));
    }
}

void FilterOutStepOnPuddleGroundEffectIfJumping(struct ObjectEvent *objEvent, u32 *flags)
{
    if (objEvent->landingJump)
        *flags &= ~(1 << 10);
}

static void DoGroundEffects_OnSpawn(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u32 flags;

    if (objEvent->triggerGroundEffectsOnMove)
    {
        flags = 0;
        UpdateObjectEventElevationAndPriority(objEvent, sprite);
        GetAllGroundEffectFlags_OnSpawn(objEvent, &flags);
        SetObjectEventSpriteOamTableForLongGrass(objEvent, sprite);
        DoFlaggedGroundEffects(objEvent, sprite, flags);
        objEvent->triggerGroundEffectsOnMove = 0;
        objEvent->disableCoveringGroundEffects = 0;
    }
}

static void DoGroundEffects_OnBeginStep(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u32 flags;

    if (objEvent->triggerGroundEffectsOnMove)
    {
        flags = 0;
        UpdateObjectEventElevationAndPriority(objEvent, sprite);
        GetAllGroundEffectFlags_OnBeginStep(objEvent, &flags);
        SetObjectEventSpriteOamTableForLongGrass(objEvent, sprite);
        filters_out_some_ground_effects(objEvent, &flags);
        DoFlaggedGroundEffects(objEvent, sprite, flags);
        objEvent->triggerGroundEffectsOnMove = 0;
        objEvent->disableCoveringGroundEffects = 0;
    }
}

static void DoGroundEffects_OnFinishStep(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u32 flags;

    if (objEvent->triggerGroundEffectsOnStop)
    {
        flags = 0;
        UpdateObjectEventElevationAndPriority(objEvent, sprite);
        GetAllGroundEffectFlags_OnFinishStep(objEvent, &flags);
        SetObjectEventSpriteOamTableForLongGrass(objEvent, sprite);
        FilterOutStepOnPuddleGroundEffectIfJumping(objEvent, &flags);
        DoFlaggedGroundEffects(objEvent, sprite, flags);
        objEvent->triggerGroundEffectsOnStop = 0;
        objEvent->landingJump = 0;
    }
}

bool8 FreezeObjectEvent(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive || objectEvent->frozen)
        return 1;
    objectEvent->frozen = 1;
    objectEvent->spriteAnimPausedBackup = gSprites[objectEvent->spriteId].animPaused;
    objectEvent->spriteAffineAnimPausedBackup = gSprites[objectEvent->spriteId].affineAnimPaused;
    gSprites[objectEvent->spriteId].animPaused = 1;
    gSprites[objectEvent->spriteId].affineAnimPaused = 1;
    return 0;
}

void FreezeObjectEvents(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active && i != gPlayerAvatar.objectEventId)
            FreezeObjectEvent(&gObjectEvents[i]);
    }
}

void FreezeObjectEventsExceptOne(u8 noFreeze)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (i != noFreeze && gObjectEvents[i].active && i != gPlayerAvatar.objectEventId)
            FreezeObjectEvent(&gObjectEvents[i]);
    }
}

void UnfreezeObjectEvent(struct ObjectEvent *objectEvent)
{
    if (objectEvent->active && objectEvent->frozen)
    {
        objectEvent->frozen = 0;
        gSprites[objectEvent->spriteId].animPaused = objectEvent->spriteAnimPausedBackup;
        gSprites[objectEvent->spriteId].affineAnimPaused = objectEvent->spriteAffineAnimPausedBackup;
    }
}

void UnfreezeObjectEvents(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active)
            UnfreezeObjectEvent(&gObjectEvents[i]);
    }
}





static void Step1(struct Sprite *sprite, u8 direction)
{
    sprite->x += sDirectionToVectors[direction].x;
    sprite->y += sDirectionToVectors[direction].y;
}

static void Step2(struct Sprite *sprite, u8 direction)
{
    sprite->x += 2 * (u16)sDirectionToVectors[direction].x;
    sprite->y += 2 * (u16)sDirectionToVectors[direction].y;
}

static void Step3(struct Sprite *sprite, u8 direction)
{
    sprite->x += 2 * (u16)sDirectionToVectors[direction].x + (u16)sDirectionToVectors[direction].x;
    sprite->y += 2 * (u16)sDirectionToVectors[direction].y + (u16)sDirectionToVectors[direction].y;
}

static void Step4(struct Sprite *sprite, u8 direction)
{
    sprite->x += 4 * (u16)sDirectionToVectors[direction].x;
    sprite->y += 4 * (u16)sDirectionToVectors[direction].y;
}

static void Step8(struct Sprite *sprite, u8 direction)
{
    sprite->x += 8 * (u16)sDirectionToVectors[direction].x;
    sprite->y += 8 * (u16)sDirectionToVectors[direction].y;
}

void SetSpriteDataForNormalStep(struct Sprite *sprite, u8 direction, u8 speed)
{
    sprite->data[3] = direction;
    sprite->data[4] = speed;
    sprite->data[5] = 0;
}

typedef void (*SpriteStepFunc)(struct Sprite *sprite, u8 direction);

static const SpriteStepFunc sSpeedNormalStepFuncs[] = {
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1
};

static const SpriteStepFunc sSpeedFast1StepFuncs[] = {
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2
};

static const SpriteStepFunc sSpeedFast2StepFuncs[] = {
    Step2,
    Step3,
    Step3,
    Step2,
    Step3,
    Step3
};

static const SpriteStepFunc sSpeedFasterStepFuncs[] = {
    Step4,
    Step4,
    Step4,
    Step4
};

static const SpriteStepFunc sSpeedFastestStepFuncs[] = {
    Step8,
    Step8
};

static const SpriteStepFunc *const sNpcStepFuncTables[] = {
    [MOVE_SPEED_NORMAL] = sSpeedNormalStepFuncs,
    [MOVE_SPEED_FAST_1] = sSpeedFast1StepFuncs,
    [MOVE_SPEED_FAST_2] = sSpeedFast2StepFuncs,
    [MOVE_SPEED_FASTER] = sSpeedFasterStepFuncs,
    [MOVE_SPEED_FASTEST] = sSpeedFastestStepFuncs,
};

static const s16 sStepTimes[] = {
    [MOVE_SPEED_NORMAL] = (sizeof(sSpeedNormalStepFuncs) / sizeof((sSpeedNormalStepFuncs)[0])),
    [MOVE_SPEED_FAST_1] = (sizeof(sSpeedFast1StepFuncs) / sizeof((sSpeedFast1StepFuncs)[0])),
    [MOVE_SPEED_FAST_2] = (sizeof(sSpeedFast2StepFuncs) / sizeof((sSpeedFast2StepFuncs)[0])),
    [MOVE_SPEED_FASTER] = (sizeof(sSpeedFasterStepFuncs) / sizeof((sSpeedFasterStepFuncs)[0])),
    [MOVE_SPEED_FASTEST] = (sizeof(sSpeedFastestStepFuncs) / sizeof((sSpeedFastestStepFuncs)[0])),
};

bool8 NpcTakeStep(struct Sprite *sprite)
{
    if (sprite->data[5] >= sStepTimes[sprite->data[4]])
        return 0;

    sNpcStepFuncTables[sprite->data[4]][sprite->data[5]](sprite, sprite->data[3]);

    sprite->data[5]++;

    if (sprite->data[5] < sStepTimes[sprite->data[4]])
        return 0;

    return 1;
}





void SetWalkSlowerSpriteData(struct Sprite *sprite, u8 direction)
{
    sprite->data[3] = direction;
    sprite->data[4] = 0;
    sprite->data[5] = 0;
}

bool8 UpdateWalkSlowerAnim(struct Sprite *sprite)
{
    if (!(sprite->data[4] & 1))
    {
        Step1(sprite, sprite->data[3]);
        sprite->data[5]++;
    }

    sprite->data[4]++;

    if (sprite->data[5] > 15)
        return 1;
    else
        return 0;
}



void SetWalkSlowSpriteData(struct Sprite *sprite, u8 direction)
{
    sprite->data[3] = direction;
    sprite->data[4] = 0;
    sprite->data[5] = 0;
}

bool8 UpdateWalkSlowAnim(struct Sprite *sprite)
{
    if (++sprite->data[4] < 3)
    {
        Step1(sprite, sprite->data[3]);
        sprite->data[5]++;
    }
    else
        sprite->data[4] = 0;

    if (sprite->data[5] > 15)
        return 1;
    else
        return 0;
}

void SetWalkSlowestSpriteData(struct Sprite *sprite, u8 direction)
{
    sprite->data[3] = direction;
    sprite->data[4] = 0;
    sprite->data[5] = 0;
}

bool8 UpdateWalkSlowestAnim(struct Sprite *sprite)
{
    if (++sprite->data[4] > 9)
    {
        sprite->data[4] = 0;
        Step1(sprite, sprite->data[3]);
        sprite->data[5]++;
    }

    if (sprite->data[5] > 15)
        return 1;
    else
        return 0;
}

void SetRunSlowSpriteData(struct Sprite *sprite, u8 direction)
{
    sprite->data[3] = direction;
    sprite->data[4] = 0;
    sprite->data[5] = 0;
}

bool8 UpdateRunSlowAnim(struct Sprite *sprite)
{
    if ((++sprite->data[4]) & 1)
    {
        Step1(sprite, sprite->data[3]);
        sprite->data[5]++;
    }
    else
    {
        Step2(sprite, sprite->data[3]);
        sprite->data[5] += 2;
    }

    if (sprite->data[5] > 15)
        return 1;
    else
        return 0;
}




static const s8 sJumpY_High[] = {
     -4, -6, -8, -10, -11, -12, -12, -12,
    -11, -10, -9, -8, -6, -4, 0, 0
};

static const s8 sJumpY_Low[] = {
    0, -2, -3, -4, -5, -6, -6, -6,
    -5, -5, -4, -3, -2, 0, 0, 0
};

static const s8 sJumpY_Normal[] = {
    -2, -4, -6, -8, -9, -10, -10, -10,
    -9, -8, -6, -5, -3, -2, 0, 0
};





static const s8 *const sJumpYTable[] = {
    [JUMP_TYPE_HIGH] = sJumpY_High,
    [JUMP_TYPE_LOW] = sJumpY_Low,
    [JUMP_TYPE_NORMAL] = sJumpY_Normal,
};

static s16 GetJumpY(s16 i, u8 type)
{
    return sJumpYTable[type][i];
}

void SetJumpSpriteData(struct Sprite *sprite, u8 direction, u8 distance, u8 type)
{
    sprite->data[3] = direction;
    sprite->data[4] = distance;
    sprite->data[5] = type;
    sprite->data[6] = 0;
}

u8 DoJumpSpriteMovement(struct Sprite *sprite)
{
    s16 distanceToTime[] = {
        [JUMP_DISTANCE_IN_PLACE] = 16,
        [JUMP_DISTANCE_NORMAL] = 16,
        [JUMP_DISTANCE_FAR] = 32,
    };
    u8 distanceToShift[] = {
        [JUMP_DISTANCE_IN_PLACE] = 0,
        [JUMP_DISTANCE_NORMAL] = 0,
        [JUMP_DISTANCE_FAR] = 1,
    };
    u8 jumpPhase = 0;

    if (sprite->data[4] != JUMP_DISTANCE_IN_PLACE)
        Step1(sprite, sprite->data[3]);

    sprite->y2 = GetJumpY(sprite->data[6] >> distanceToShift[sprite->data[4]], sprite->data[5]);

    sprite->data[6]++;

    if (sprite->data[6] == (distanceToTime[sprite->data[4]] >> 1))
        jumpPhase = 1;

    if (sprite->data[6] >= distanceToTime[sprite->data[4]])
    {
        sprite->y2 = 0;
        jumpPhase = ((u8)-1);
    }

    return jumpPhase;
}

u8 DoJumpSpecialSpriteMovement(struct Sprite *sprite)
{
    s16 duration[3] = {0x20, 0x20, 0x40};
    u8 shifts[3] = {1, 1, 2};
    u8 jumpPhase = 0;

    if (sprite->data[4] != JUMP_DISTANCE_IN_PLACE && !(sprite->data[6] & 1))
        Step1(sprite, sprite->data[3]);

    sprite->y2 = GetJumpY(sprite->data[6] >> shifts[sprite->data[4]], sprite->data[5]);

    sprite->data[6]++;

    if (sprite->data[6] == (duration[sprite->data[4]] >> 1))
        jumpPhase = 1;

    if (sprite->data[6] >= duration[sprite->data[4]])
    {
        sprite->y2 = 0;
        jumpPhase = ((u8)-1);
    }

    return jumpPhase;
}
# 9152 "src/event_object_movement.c"
void SetMovementDelay(struct Sprite *sprite, s16 delay)
{
    sprite->data[3] = delay;
}

bool8 WaitForMovementDelay(struct Sprite *sprite)
{
    sprite->data[3]--;

    if (sprite->data[3] == 0)
        return 1;
    else
        return 0;
}



void SetAndStartSpriteAnim(struct Sprite *sprite, u8 animNum, u8 animCmdIndex)
{
    sprite->animNum = animNum;
    sprite->animPaused = 0;
    SeekSpriteAnim(sprite, animCmdIndex);
}

bool8 SpriteAnimEnded(struct Sprite *sprite)
{
    if (sprite->animEnded)
        return 1;
    else
        return 0;
}

void UpdateObjectEventSpriteInvisibility(struct Sprite *sprite, bool8 invisible)
{
    u16 x, y;
    s16 x2, y2;

    sprite->invisible = invisible;

    if (sprite->coordOffsetEnabled)
    {
        x = sprite->x + sprite->x2 + sprite->centerToCornerVecX + gSpriteCoordOffsetX;
        y = sprite->y + sprite->y2 + sprite->centerToCornerVecY + gSpriteCoordOffsetY;
    }
    else
    {
        x = sprite->x + sprite->x2 + sprite->centerToCornerVecX;
        y = sprite->y + sprite->y2 + sprite->centerToCornerVecY;
    }

    x2 = x - (sprite->centerToCornerVecX >> 1);
    y2 = y - (sprite->centerToCornerVecY >> 1);

    if ((s16)x >= 240 + 16 || x2 < -16)
        sprite->invisible = 1;
    if ((s16)y >= 160 + 16 || y2 < -16)
        sprite->invisible = 1;
}





void SpriteCB_VirtualObject(struct Sprite *sprite)
{
    VirtualObject_UpdateAnim(sprite);
    SetObjectSubpriorityByElevation(sprite->data[1], sprite, 1);
    UpdateObjectEventSpriteInvisibility(sprite, sprite->data[2]);
}


static void DestroyVirtualObjects(void)
{
    s32 i;
    for (i = 0; i < 64; i++)
    {
        struct Sprite *sprite = &gSprites[i];
        if (sprite->inUse && sprite->callback == SpriteCB_VirtualObject)
            DestroySprite(sprite);
    }
}

static int GetVirtualObjectSpriteId(u8 virtualObjId)
{
    int i;
    for (i = 0; i < 64; i++)
    {
        struct Sprite *sprite = &gSprites[i];
        if (sprite->inUse && sprite->callback == SpriteCB_VirtualObject && (u8)sprite->data[0] == virtualObjId)
            return i;
    }
    return 64;
}

void TurnVirtualObject(u8 virtualObjId, u8 direction)
{
    u8 animNum;
    u8 spriteId = GetVirtualObjectSpriteId(virtualObjId);
    if (spriteId != 64)
    {
        struct Sprite *sprite = &gSprites[spriteId];
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(direction));
    }
}

void SetVirtualObjectGraphics(u8 virtualObjId, u8 direction)
{
    int spriteId = GetVirtualObjectSpriteId(virtualObjId);
    if (spriteId != 64)
    {
        struct Sprite *sprite = &gSprites[spriteId];
        const struct ObjectEventGraphicsInfo *info = GetObjectEventGraphicsInfo(direction);
        u16 baseBlock = sprite->oam.tileNum;
        sprite->oam = *info->oam;
        sprite->oam.tileNum = baseBlock;
        sprite->oam.paletteNum = info->paletteSlot;
        sprite->images = info->images;
        if (info->subspriteTables == ((void *)0))
        {
            sprite->subspriteTables = ((void *)0);
            sprite->subspriteTableNum = 0;
            sprite->subspriteMode = SUBSPRITES_OFF;
        }
        else
        {
            SetSubspriteTables(sprite, info->subspriteTables);
            sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        }
        StartSpriteAnim(sprite, 0);
    }
}

void SetVirtualObjectInvisibility(u8 virtualObjId, bool32 invisible)
{
    u8 spriteId = GetVirtualObjectSpriteId(virtualObjId);
    if (spriteId != 64)
    {
        if (invisible)
            gSprites[spriteId].data[2] = 1;
        else
            gSprites[spriteId].data[2] = 0;
    }
}

bool32 IsVirtualObjectInvisible(u8 virtualObjId)
{
    u8 spriteId = GetVirtualObjectSpriteId(virtualObjId);
    if (spriteId == 64)
        return 0;
    return gSprites[spriteId].data[2] == 1;
}

void SetVirtualObjectSpriteAnim(u8 virtualObjId, u8 animNo)
{
    u8 spriteId = GetVirtualObjectSpriteId(virtualObjId);
    if (spriteId != 64)
    {
        gSprites[spriteId].data[3] = animNo;
        gSprites[spriteId].data[4] = 0;
    }
}

static void MoveUnionRoomObjectUp(struct Sprite *sprite)
{
    switch (sprite->data[4])
    {
    case 0:
        sprite->y2 = 0;
        sprite->data[4]++;

    case 1:
        if ((sprite->y2 -= 8) == -160)
        {
            sprite->y2 = 0;
            sprite->data[2] = 1;
            sprite->data[3] = 0;
            sprite->data[4] = 0;
        }
        break;
    }
}

static void MoveUnionRoomObjectDown(struct Sprite *sprite)
{
    switch (sprite->data[4])
    {
    case 0:
        sprite->y2 = -160;
        sprite->data[4]++;

    case 1:
        if ((sprite->y2 += 8) == 0)
        {
            sprite->data[3] = 0;
            sprite->data[4] = 0;
        }
        break;
    }
}

static void VirtualObject_UpdateAnim(struct Sprite *sprite)
{
    switch (sprite->data[3])
    {
    case 0:
        break;
    case 1:
        MoveUnionRoomObjectDown(sprite);
        break;
    case 2:
        MoveUnionRoomObjectUp(sprite);
        break;
    default:
        sprite->data[3] = 0;
        (0) ? ((void *)0) : AGBAssert(("C:/WORK/POKeFRLG/src/pm_lgfr_ose/source/" "evobjmv.c"), 13331, "0", 1);;
    }
}

bool32 IsVirtualObjectAnimating(u8 virtualObjId)
{
    u8 spriteId = GetVirtualObjectSpriteId(virtualObjId);
    if (spriteId == 64)
        return 0;
    if (gSprites[spriteId].data[3])
        return 1;
    else
        return 0;
}







u32 StartFieldEffectForObjectEvent(u8 fieldEffectId, struct ObjectEvent *objectEvent)
{
    ObjectEventGetLocalIdAndMap(objectEvent, (u8 *)&gFieldEffectArguments[0], (u8 *)&gFieldEffectArguments[1], (u8 *)&gFieldEffectArguments[2]);
    return FieldEffectStart(fieldEffectId);
}

void DoShadowFieldEffect(struct ObjectEvent *objectEvent)
{
    if (!objectEvent->hasShadow)
    {
        objectEvent->hasShadow = 1;
        StartFieldEffectForObjectEvent(3, objectEvent);
    }
}

static void DoRippleFieldEffect(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    const struct ObjectEventGraphicsInfo *graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    gFieldEffectArguments[0] = sprite->x;
    gFieldEffectArguments[1] = sprite->y + (graphicsInfo->height >> 1) - 2;
    gFieldEffectArguments[2] = 151;
    gFieldEffectArguments[3] = 3;
    FieldEffectStart(5);
}
