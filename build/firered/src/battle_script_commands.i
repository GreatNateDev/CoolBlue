# 0 "src/battle_script_commands.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/battle_script_commands.c"
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
# 2 "src/battle_script_commands.c" 2
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
# 3 "src/battle_script_commands.c" 2
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
# 4 "src/battle_script_commands.c" 2
# 1 "include/util.h" 1







extern const u8 gMiscBlank_Gfx[];
extern const u32 gBitTable[];

u8 CreateInvisibleSpriteWithCallback(void (*)(struct Sprite *));
void StoreWordInTwoHalfwords(u16 *, unsigned);
void LoadWordFromTwoHalfwords(u16 *, unsigned *);
int CountTrailingZeroBits(u32 value);
u16 CalcCRC16(const u8 *data, u32 length);
u16 CalcCRC16WithTable(const u8 *data, u32 length);
u32 CalcByteArraySum(const u8 *data, u32 length);
void BlendPalette(u16 palOffset, u16 numEntries, u8 coeff, u16 blendColor);
void DoBgAffineSet(struct BgAffineDstData * dest, u32 texX, u32 texY, s16 srcX, s16 srcY, s16 sx, s16 sy, u16 alpha);
# 5 "src/battle_script_commands.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 6 "src/battle_script_commands.c" 2
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
# 7 "src/battle_script_commands.c" 2
# 1 "include/money.h" 1





u32 GetMoney(u32 *moneyPtr);
void SetMoney(u32 *moneyPtr, u32 newValue);
bool8 IsEnoughMoney(u32 *moneyPtr, u32 cost);
void AddMoney(u32 *moneyPtr, u32 toAdd);
void RemoveMoney(u32 *moneyPtr, u32 toSub);
bool8 IsEnoughForCostInVar0x8005(void);
void SubtractMoneyFromVar0x8005(void);
void PrintMoneyAmountInMoneyBox(u8 windowId, int amount, u8 speed);
void PrintMoneyAmountInMoneyBox(u8 windowId, int amount, u8 speed);
void PrintMoneyAmountInMoneyBoxWithBorder(u8 windowId, u16 tileStart, u8 pallete, int amount);
void ChangeAmountInMoneyBox(int amount);
void DrawMoneyBox(int amount, u8 x, u8 y);
void HideMoneyBox(void);
void AddMoneyLabelObject(u16 x, u16 y);
void RemoveMoneyLabelObject(void);
void PrintMoneyAmount(u8 windowId, u8 x, u8 y, int amount, u8 speed);
# 8 "src/battle_script_commands.c" 2
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
# 9 "src/battle_script_commands.c" 2
# 1 "include/mail.h" 1
# 25 "include/mail.h"
void ReadMail(struct Mail * mail, void (*savedCallback)(void), bool8 messageExists);
# 10 "src/battle_script_commands.c" 2
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
# 11 "src/battle_script_commands.c" 2
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
# 12 "src/battle_script_commands.c" 2
# 1 "include/pokemon_special_anim.h" 1





void CreateLevelUpVerticalSpritesTask(u16 x, u16 y, u16 tileTag, u16 paletteTag, u16 priority, u16 subpriority);
bool8 LevelUpVerticalSpritesTaskIsRunning(void);
void GetMonLevelUpWindowStats(struct Pokemon *mon, u16 *currStats);
void DrawLevelUpWindowPg1(u16 windowId, u16 *statsBefore, u16 *statsAfter, u8 bgClr, u8 fgClr, u8 shadowClr);
void DrawLevelUpWindowPg2(u16 windowId, u16 *currStats, u8 bgClr, u8 fgClr, u8 shadowClr);
void StartUseItemAnim_Normal(u8 slotId, u16 itemId, MainCallback callback);
void StartUseItemAnim_CantEvolve(u8 slotId, u16 itemId, MainCallback callback);
bool32 PSA_IsCancelDisabled(void);
void StartUseItemAnim_ForgetMoveAndLearnTMorHM(u8 slotId, u16 itemId, u16 moveId, MainCallback callback);
# 13 "src/battle_script_commands.c" 2
# 1 "include/pokemon_storage_system.h" 1
# 22 "include/pokemon_storage_system.h"
enum
{
    WALLPAPER_FOREST,
    WALLPAPER_CITY,
    WALLPAPER_DESERT,
    WALLPAPER_SAVANNA,
    WALLPAPER_CRAG,
    WALLPAPER_VOLCANO,
    WALLPAPER_SNOW,
    WALLPAPER_CAVE,
    WALLPAPER_BEACH,
    WALLPAPER_SEAFLOOR,
    WALLPAPER_RIVER,
    WALLPAPER_SKY,
    WALLPAPER_STARS,
    WALLPAPER_POKECENTER,
    WALLPAPER_TILES,
    WALLPAPER_SIMPLE,
    WALLPAPER_COUNT
};


struct PokemonStorage
{
               u8 currentBox;
               struct BoxPokemon boxes[14][(5 * 6)];
               u8 boxNames[14][8 + 1];
               u8 boxWallpapers[14];
};

u8 *GetBoxNamePtr(u8 boxNumber);
struct BoxPokemon *GetBoxedMonPtr(u8 boxId, u8 monPosition);
void SetBoxMonNickAt(u8 boxId, u8 monPosition, const u8 *newNick);
s16 CompactPartySlots(void);
u32 GetBoxMonDataAt(u8 boxId, u8 monPosition, s32 request);
void ZeroBoxMonAt(u8 boxId, u8 monPosition);
void CB2_ReturnToPokeStorage(void);
void ResetPokemonStorageSystem(void);
u8 StorageGetCurrentBox(void);
void DrawTextWindowAndBufferTiles(const u8 *string, void *dst, u8 zero1, u8 zero2, u8 *buffer, s32 bytesToBuffer);
# 14 "src/battle_script_commands.c" 2
# 1 "include/pokemon_summary_screen.h" 1





extern const u8 *const gMoveDescriptionPointers[];
extern const u8 *const gNatureNamePointers[];

void ShowSelectMovePokemonSummaryScreen(struct Pokemon *, u8, u8, MainCallback, u16);
u8 GetMoveSlotToReplace(void);
void SummaryScreen_SetUnknownTaskId(u8 a0);
void SummaryScreen_DestroyUnknownTask(void);
u8 GetLastViewedMonIndex(void);
void ShowPokemonSummaryScreen(struct Pokemon * party, u8 cursorPos, u8 lastIdx, void (*callback)(void), u8 a4);
void SetPokemonSummaryScreenMode(u8);



enum PokemonSummaryScreenMode
{
    PSS_MODE_NORMAL,
    PSS_MODE_UNK1,
    PSS_MODE_SELECT_MOVE,
    PSS_MODE_FORGET_MOVE,
    PSS_MODE_TRADE,
    PSS_MODE_BOX,
};

enum PokemonSummaryScreenPage
{
    PSS_PAGE_INFO,
    PSS_PAGE_SKILLS,
    PSS_PAGE_MOVES,
    PSS_PAGE_MOVES_INFO,
    PSS_PAGE_UNK4,
    PSS_PAGE_MOVE_DELETER,
};

enum PokemonSummaryScreenState3270
{
    PSS_STATE3270_FADEIN,
    PSS_STATE3270_PLAYCRY,
    PSS_STATE3270_HANDLEINPUT,
    PSS_STATE3270_FLIPPAGES,
    PSS_STATE3270_ATEXIT_FADEOUT,
    PSS_STATE3270_ATEXIT_WAITLINKDELAY,
    PSS_STATE3270_ATEXIT_WAITFADE
};

enum PokemonSummaryScreenStat
{
    PSS_STAT_ATK,
    PSS_STAT_DEF,
    PSS_STAT_SPA,
    PSS_STAT_SPD,
    PSS_STAT_SPE
};
# 15 "src/battle_script_commands.c" 2
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
# 16 "src/battle_script_commands.c" 2
# 1 "include/naming_screen.h" 1
# 12 "include/naming_screen.h"
void DoNamingScreen(u8 templateNum, u8 *destBuffer, u16 monSpecies, u16 monGender, u32 monPersonality, MainCallback returnCallback);
# 17 "src/battle_script_commands.c" 2
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
# 18 "src/battle_script_commands.c" 2
# 1 "include/party_menu.h" 1




# 1 "include/task.h" 1
# 6 "include/party_menu.h" 2
# 1 "include/constants/party_menu.h" 1
# 131 "include/constants/party_menu.h"
enum
{
    CHOOSE_MONS_FOR_CABLE_CLUB_BATTLE,
    CHOOSE_MONS_FOR_BATTLE_TOWER,
    CHOOSE_MONS_FOR_UNION_ROOM_BATTLE,
};
# 7 "include/party_menu.h" 2

struct PartyMenu
{
    MainCallback exitCallback;
    TaskFunc task;
    u8 menuType:4;
    u8 layout:2;
    u8 chooseMonsBattleType:2;
    s8 slotId;
    s8 slotId2;
    u8 action;
    u16 bagItem;
    s16 data[2];
};

extern struct PartyMenu gPartyMenu;
extern bool8 gPartyMenuUseExitCallback;
extern u8 gSelectedMonPartyId;
extern MainCallback gPostMenuFieldCallback;
extern u8 gSelectedOrderFromParty[3];
extern u8 gBattlePartyCurrentOrder[6 / 2];

extern void (*gItemUseCB)(u8, TaskFunc);

void InitPartyMenu(u8 menuType, u8 layout, u8 partyAction, bool8 keepCursorPos, u8 messageId, TaskFunc task, MainCallback callback);
void AnimatePartySlot(u8 slot, u8 animNum);
bool8 IsMultiBattle(void);
u8 GetCursorSelectionMonId(void);
u8 GetPartyMenuType(void);
void Task_HandleChooseMonInput(u8 taskId);
u8 *GetMonNickname(struct Pokemon *mon, u8 *dest);
u8 DisplayPartyMenuMessage(const u8 *str, bool8 keepOpen);
bool8 IsPartyMenuTextPrinterActive(void);
void PartyMenuModifyHP(u8 taskId, u8 slot, s8 hpIncrement, s16 hpDifference, TaskFunc task);
u8 GetAilmentFromStatus(u32 status);
u8 GetMonAilment(struct Pokemon *mon);
void DisplayPartyMenuStdMessage(u32 stringId);
void LoadHeldItemIcons(void);
void DrawHeldItemIconsForTrade(u8 *partyCounts, u8 *partySpriteIds, u8 whichParty);
void SpriteCB_BounceConfirmCancelButton(u8 spriteId, u8 spriteId2, u8 animNum);
void CB2_SelectBagItemToGive(void);
void CB2_GiveHoldItem(void);
bool8 FieldCallback_PrepareFadeInFromMenu(void);
void CB2_ReturnToPartyMenuFromFlyMap(void);
void SetUsedFlyQuestLogEvent(const u8 *healLocCtrlData);
void CB2_ShowPartyMenuForItemUse(void);
void ItemUseCB_Medicine(u8 taskId, TaskFunc func);
void ItemUseCB_MedicineStep(u8 taskId, TaskFunc func);
void ItemUseCB_TryRestorePP(u8 taskId, TaskFunc func);
void ItemUseCB_PPUp(u8 taskId, TaskFunc func);
u16 ItemIdToBattleMoveId(u16 item);
bool8 IsMoveHm(u16 move);
bool8 MonKnowsMove(struct Pokemon *mon, u16 move);
void ItemUseCB_TMHM(u8 taskId, TaskFunc func);
void ItemUseCB_RareCandy(u8 taskId, TaskFunc func);
void ItemUseCB_SacredAsh(u8 taskId, TaskFunc func);
void ItemUseCB_EvolutionStone(u8 taskId, TaskFunc func);
u8 GetItemEffectType(u16 item);
void CB2_PartyMenuFromStartMenu(void);
void CB2_ChooseMonToGiveItem(void);
void ChooseMonToGiveMailFromMailbox(void);
void InitChooseMonsForBattle(u8 chooseMonsBattleType);
void ClearSelectedPartyOrder(void);
void ChooseMonForTradingBoard(u8 menuType, MainCallback callback);
void ChooseMonForMoveTutor(void);
void ChooseMonForWirelessMinigame(void);
void OpenPartyMenuInTutorialBattle(u8 partyAction);
void Pokedude_OpenPartyMenuInBattle(void);
void Pokedude_ChooseMonForInBattleItem(void);
void EnterPartyFromItemMenuInBattle(void);
void BufferBattlePartyCurrentOrder(void);
void BufferBattlePartyCurrentOrderBySide(u8 battlerId, u8 flankId);
void SwitchPartyOrderLinkMulti(u8 battlerId, u8 slot, u8 slot2);
void SwitchPartyMonSlots(u8 slot, u8 slot2);
u8 GetPartyIdFromBattlePartyId(u8 battlePartyId);
void ShowPartyMenuToShowcaseMultiBattleParty(void);
void ChooseMonForDaycare(void);
void ChoosePartyMonByMenuType(u8 menuType);
# 19 "src/battle_script_commands.c" 2
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
# 20 "src/battle_script_commands.c" 2
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
# 21 "src/battle_script_commands.c" 2
# 1 "include/battle.h" 1



# 1 "tools/agbcc/include/limits.h" 1
# 5 "include/battle.h" 2

# 1 "include/constants/battle.h" 1
# 7 "include/battle.h" 2
# 1 "include/constants/battle_script_commands.h" 1
# 8 "include/battle.h" 2
# 1 "include/battle_util.h" 1
# 61 "include/battle_util.h"
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingImprison(u8 attacker);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void MarkBattlerForControllerExec(u8 battlerId);
void MarkBattlerReceivedLinkData(u8 battlerId);
void CancelMultiTurnMoves(u8 battler);
bool8 WasUnableToUseMove(u8 battler);
void PrepareStringBattle(u16 stringId, u8 battler);
void ResetSentPokesToOpponentValue(void);
void OpponentSwitchInResetSentPokesToOpponentValue(u8 battler);
void UpdateSentPokesToOpponentValue(u8 battler);
void BattleScriptPush(const u8 *bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
u8 CheckMoveLimitations(u8 battlerId, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battlerId, u16 move);
u8 DoFieldEndTurnEffects(void);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageStatuses(void);
u8 AtkCanceller_UnableToUseMove(void);
bool8 HasNoMonsToSwitch(u8 battler, u8 partyIdBattlerOn1, u8 partyIdBattlerOn2);
u8 CastformDataTypeChange(u8 battler);
u8 AbilityBattleEffects(u8 caseID, u8 battler, u8 ability, u8 special, u16 moveArg);
void BattleScriptExecute(const u8 *BS_ptr);
void BattleScriptPushCursorAndCallback(const u8 *BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battlerId, bool8 moveTurn);
void ClearFuryCutterDestinyBondGrudge(u8 battlerId);
void HandleAction_RunBattleScript(void);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);
# 9 "include/battle.h" 2
# 1 "include/battle_script_commands.h" 1
# 10 "include/battle_script_commands.h"
void AI_CalcDmg(u8 attacker, u8 defender);
u8 TypeCalc(u16 move, u8 attacker, u8 defender);
u8 AI_TypeCalc(u16 move, u16 targetSpecies, u8 targetAbility);
u8 GetBattlerTurnOrderNum(u8 battlerId);
void SetMoveEffect(bool8 primary, u8 certain);
bool32 IsMonGettingExpSentOut(void);
void BattleDestroyYesNoCursorAt(void);
void BattleCreateYesNoCursorAt(void);
void BufferMoveToLearnIntoBattleTextBuff2(void);
void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags);
bool8 UproarWakeUpCheck(u8 battlerId);

extern void (* const gBattleScriptingCommandsTable[])(void);
# 10 "include/battle.h" 2
# 1 "include/battle_main.h" 1



# 1 "include/constants/abilities.h" 1
# 5 "include/battle_main.h" 2

struct TrainerMoney
{
    u8 classId;
    u8 value;
};

struct MultiBattlePokemonTx
{
             u16 species;
             u16 heldItem;
             u8 nickname[10 + 1];
             u8 level;
             u16 hp;
             u16 maxhp;
             u32 status;
             u32 personality;
             u8 gender;
             u8 language;
};
# 48 "include/battle_main.h"
extern const struct SpriteTemplate gUnknownDebugSprite;
extern const struct OamData gOamData_BattlerOpponent;
extern const struct OamData gOamData_BattlerPlayer;
extern const u8 gTypeNames[][6 + 1];
extern const u8 gStatusConditionString_PoisonJpn[8];
extern const u8 gStatusConditionString_SleepJpn[8];
extern const u8 gStatusConditionString_ParalysisJpn[8];
extern const u8 gStatusConditionString_BurnJpn[8];
extern const u8 gStatusConditionString_IceJpn[8];
extern const u8 gStatusConditionString_ConfusionJpn[8];
extern const u8 gStatusConditionString_LoveJpn[8];
extern const u8 *const gStatusConditionStringsTable[7][2];
extern const u8 gTypeEffectiveness[336];
extern const struct TrainerMoney gTrainerMoneyTable[];
extern const u8 *const gAbilityDescriptionPointers[80];
extern const u8 gAbilityNames[80][12 + 1];

void CB2_InitBattle(void);
void BattleMainCB2(void);
void FreeRestoreBattleData(void);
void VBlankCB_Battle(void);
void SpriteCB_VsLetterDummy(struct Sprite *sprite);
void SpriteCB_VsLetterInit(struct Sprite *sprite);
void CB2_InitEndLinkBattle(void);
u32 GetBattleBgTemplateData(u8 arrayId, u8 caseId);
void SpriteCB_EnemyMon(struct Sprite *sprite);
void SpriteCallbackDummy_2(struct Sprite *sprite);
void SpriteCB_FaintOpponentMon(struct Sprite *sprite);
void SpriteCB_ShowAsMoveTarget(struct Sprite *sprite);
void SpriteCB_HideAsMoveTarget(struct Sprite *sprite);
void SpriteCB_AllyMon(struct Sprite *sprite);
void SetIdleSpriteCallback(struct Sprite *sprite);
void SpriteCB_FaintSlideAnim(struct Sprite *sprite);
void DoBounceEffect(u8 battler, u8 which, s8 delta, s8 amplitude);
void EndBounceEffect(u8 battler, u8 which);
void SpriteCB_PlayerThrowInit(struct Sprite *sprite);
void UpdatePlayerPosInThrowAnim(struct Sprite *sprite);
void BeginBattleIntroDummy(void);
void BeginBattleIntro(void);
void SwitchInClearSetData(void);
void FaintClearSetData(void);
void BattleTurnPassed(void);
u8 IsRunningFromBattleImpossible(void);
void UpdatePartyOwnerOnSwitch_NonMulti(u8 battler);
void SwapTurnOrder(u8 id1, u8 id2);
u8 GetWhoStrikesFirst(u8 battler1, u8 battler2, bool8 ignoreChosenMoves);
void RunBattleScriptCommands_PopCallbacksStack(void);
void RunBattleScriptCommands(void);
bool8 TryRunFromBattle(u8 battler);
# 11 "include/battle.h" 2
# 1 "include/battle_ai_switch_items.h" 1





enum {
    AI_ITEM_FULL_RESTORE = 1,
    AI_ITEM_HEAL_HP,
    AI_ITEM_CURE_CONDITION,
    AI_ITEM_X_STAT,
    AI_ITEM_GUARD_SPECS,
    AI_ITEM_NOT_RECOGNIZABLE
};

enum {
    AI_HEAL_CONFUSION,
    AI_HEAL_PARALYSIS,
    AI_HEAL_FREEZE,
    AI_HEAL_BURN,
    AI_HEAL_POISON,
    AI_HEAL_SLEEP,
};

void AI_TrySwitchOrUseItem(void);
u8 GetMostSuitableMonToSwitchInto(void);
# 12 "include/battle.h" 2
# 1 "include/battle_gfx_sfx_util.h" 1



void AllocateBattleSpritesData(void);
void FreeBattleSpritesData(void);
void SpriteCB_WaitForBattlerBallReleaseAnim(struct Sprite *sprite);
void SpriteCB_TrainerSlideIn(struct Sprite *sprite);
void InitAndLaunchChosenStatusAnimation(bool8 isStatus2, u32 status);
bool8 TryHandleLaunchBattleTableAnimation(u8 activeBattler, u8 atkBattler, u8 defBattler, u8 tableId, u16 argument);
void InitAndLaunchSpecialAnimation(u8 activeBattler, u8 atkBattler, u8 defBattler, u8 tableId);
bool8 IsMoveWithoutAnimation(u16 moveId, u8 animationTurn);
bool8 IsBattleSEPlaying(u8 battlerId);
void BattleLoadOpponentMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void BattleLoadPlayerMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void DecompressGhostFrontPic(struct Pokemon *unused, u8 battlerId);
void DecompressTrainerFrontPic(u16 frontPicId, u8 battlerId);
void DecompressTrainerBackPalette(u16 a1, u8 a2);
void BattleGfxSfxDummy3(u8 gender);
void FreeTrainerFrontPicPaletteAndTile(u16 frontPicId);
bool8 BattleLoadAllHealthBoxesGfx(u8 state);
void LoadBattleBarGfx(u8 arg0);
bool8 BattleInitAllSprites(u8 *state, u8 *battlerId);
void ClearSpritesHealthboxAnimData(void);
void CopyAllBattleSpritesInvisibilities(void);
void CopyBattleSpriteInvisibility(u8 battlerId);
void HandleSpeciesGfxDataChange(u8 battlerAtk, u8 battlerDef, u8 transformType);
void BattleLoadSubstituteOrMonSpriteGfx(u8 battlerId, bool8 loadMonSprite);
void LoadBattleMonGfxAndAnimate(u8 battlerId, bool8 loadMonSprite, u8 spriteId);
void TrySetBehindSubstituteSpriteBit(u8 battlerId, u16 move);
void ClearBehindSubstituteBit(u8 battlerId);
void HandleLowHpMusicChange(struct Pokemon *mon, u8 battlerId);
void BattleStopLowHpSound(void);
void HandleBattleLowHpMusicChange(void);
void SetBattlerSpriteAffineMode(u8 affineMode);
void LoadAndCreateEnemyShadowSprites(void);
void SpriteCB_SetInvisible(struct Sprite *sprite);
void SetBattlerShadowSpriteCallback(u8 battlerId, u16 species);
void HideBattlerShadowSprite(u8 battlerId);
void BattleInterfaceSetWindowPals(void);
void ClearTemporarySpeciesSpriteData(u8 battlerId, bool8 dontClearSubstitute);
void AllocateMonSpritesGfx(void);
void FreeMonSpritesGfx(void);
bool32 ShouldPlayNormalMonCry(struct Pokemon *mon);
# 13 "include/battle.h" 2
# 1 "include/battle_util2.h" 1





void AllocateBattleResources(void);
void FreeBattleResources(void);
void AdjustFriendshipOnBattleFaint(u8 bank);
# 14 "include/battle.h" 2
# 1 "include/battle_bg.h" 1





extern const struct BgTemplate gBattleBgTemplates[];

void InitBattleBgsVideo(void);
void DrawBattleEntryBackground(void);
void InitLinkBattleVsScreen(u8 taskId);
void LoadBattleMenuWindowGfx(void);
void LoadBattleTextboxAndBackground(void);
void BattleInitBgsAndWindows(void);
void DrawMainBattleBackground(void);
# 15 "include/battle.h" 2
# 53 "include/battle.h"
enum {
    BATTLER_AFFINE_NORMAL,
    BATTLER_AFFINE_EMERGE,
    BATTLER_AFFINE_RETURN,
};
# 71 "include/battle.h"
struct TrainerMonNoItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
};

struct TrainerMonItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
};

struct TrainerMonNoItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 moves[4];
};

struct TrainerMonItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
    u16 moves[4];
};






union TrainerMonPtr
{
    const struct TrainerMonNoItemDefaultMoves *NoItemDefaultMoves;
    const struct TrainerMonNoItemCustomMoves *NoItemCustomMoves;
    const struct TrainerMonItemDefaultMoves *ItemDefaultMoves;
    const struct TrainerMonItemCustomMoves *ItemCustomMoves;
};

struct Trainer
{
             u8 partyFlags;
             u8 trainerClass;
             u8 encounterMusic_gender;
             u8 trainerPic;
             u8 trainerName[12];
             u16 items[4];
             bool8 doubleBattle;
             u32 aiFlags;
             u8 partySize;
             const union TrainerMonPtr party;
};

extern const struct Trainer gTrainers[];

struct ResourceFlags
{
    u32 flags[4];
};



struct DisableStruct
{
             u32 transformedMonPersonality;
             u16 disabledMove;
             u16 encoredMove;
             u8 protectUses;
             u8 stockpileCounter;
             u8 substituteHP;
             u8 disableTimer : 4;
             u8 disableTimerStartValue : 4;
             u8 encoredMovePos;
             u8 unkD;
             u8 encoreTimer : 4;
             u8 encoreTimerStartValue : 4;
             u8 perishSongTimer : 4;
             u8 perishSongTimerStartValue : 4;
             u8 furyCutterCounter;
             u8 rolloutTimer : 4;
             u8 rolloutTimerStartValue : 4;
             u8 chargeTimer : 4;
             u8 chargeTimerStartValue : 4;
             u8 tauntTimer:4;
             u8 tauntTimer2:4;
             u8 battlerPreventingEscape;
             u8 battlerWithSureHit;
             u8 isFirstTurn;
             u8 unk17;
             u8 truantCounter : 1;
             u8 truantSwitchInHack : 1;
             u8 unk18_a_2 : 2;
             u8 mimickedMoves : 4;
             u8 rechargeTimer;
             u8 unk1A[2];
};

extern struct DisableStruct gDisableStructs[4];

struct ProtectStruct
{

    u32 protected:1;
    u32 endured:1;
    u32 noValidMoves:1;
    u32 helpingHand:1;
    u32 bounceMove:1;
    u32 stealMove:1;
    u32 flag0Unknown:1;
    u32 prlzImmobility:1;

    u32 confusionSelfDmg:1;
    u32 targetNotAffected:1;
    u32 chargingTurn:1;
    u32 fleeType:2;
    u32 usedImprisonedMove:1;
    u32 loveImmobility:1;
    u32 usedDisabledMove:1;

    u32 usedTauntedMove:1;
    u32 flag2Unknown:1;
    u32 flinchImmobility:1;
    u32 notFirstStrike:1;
    u32 flag_x10 : 1;
    u32 flag_x20 : 1;
    u32 flag_x40 : 1;
    u32 flag_x80 : 1;
    u32 field3 : 8;

    u32 physicalDmg;
    u32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u16 fieldE;
};

extern struct ProtectStruct gProtectStructs[4];

struct SpecialStatus
{
    u8 statLowered:1;
    u8 lightningRodRedirected:1;
    u8 restoredBattlerSprite:1;
    u8 intimidatedMon:1;
    u8 traced:1;
    u8 ppNotAffectedByPressure:1;
    u8 faintedHasReplacement:1;
    u8 focusBanded:1;
    u8 field1[3];
    s32 dmg;
    s32 physicalDmg;
    s32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u8 field12;
    u8 field13;
};

extern struct SpecialStatus gSpecialStatuses[4];

struct SideTimer
{
             u8 reflectTimer;
             u8 reflectBattlerId;
             u8 lightscreenTimer;
             u8 lightscreenBattlerId;
             u8 mistTimer;
             u8 mistBattlerId;
             u8 safeguardTimer;
             u8 safeguardBattlerId;
             u8 followmeTimer;
             u8 followmeTarget;
             u8 spikesAmount;
             u8 fieldB;
};

extern struct SideTimer gSideTimers[];

struct WishFutureKnock
{
    u8 futureSightCounter[4];
    u8 futureSightAttacker[4];
    s32 futureSightDmg[4];
    u16 futureSightMove[4];
    u8 wishCounter[4];
    u8 wishMonId[4];
    u8 weatherDuration;
    u8 knockedOffMons[2];
};

extern struct WishFutureKnock gWishFutureKnock;

struct AI_ThinkingStruct
{
    u8 aiState;
    u8 movesetIndex;
    u16 moveConsidered;
    s8 score[4];
    u32 funcResult;
    u32 aiFlags;
    u8 aiAction;
    u8 aiLogicId;
    u8 filler12[6];
    u8 simulatedRNG[4];
};

extern u8 gActiveBattler;
extern u8 gBattlerTarget;
extern u8 gAbsentBattlerFlags;

extern struct BattlePokemon gBattleMons[4];

struct UsedMoves
{
    u16 moves[4];
    u16 unknown[4];
};

struct BattleHistory
{
             u16 usedMoves[2][8];
             u8 abilities[4 / 2];
             u8 itemEffects[4 / 2];
             u16 trainerItems[4];
             u8 itemsNo;
};

struct BattleScriptsStack
{
    const u8 *ptr[8];
    u8 size;
};

struct BattleCallbacksStack
{
    void (*function[8])(void);
    u8 size;
};

struct StatsArray
{
    u16 stats[6];
};

struct BattleResources
{
    struct SecretBaseRecord *secretBase;
    struct ResourceFlags *flags;
    struct BattleScriptsStack *battleScriptsStack;
    struct BattleCallbacksStack *battleCallbackStack;
    struct StatsArray *beforeLvlUp;
    struct AI_ThinkingStruct *ai;
    struct BattleHistory *battleHistory;
    struct BattleScriptsStack *AI_ScriptsStack;
};

extern struct BattleResources *gBattleResources;

struct BattleResults
{
    u8 playerFaintCounter;
    u8 opponentFaintCounter;
    u8 playerSwitchesCounter;
    u8 numHealingItemsUsed;
    u8 numRevivesUsed;
    u8 playerMonWasDamaged:1;
    u8 usedMasterBall:1;
    u8 caughtMonBall:4;
    u8 shinyWildMon:1;
    u8 unk5_7:1;
    u16 playerMon1Species;
    u8 playerMon1Name[11];
    u8 battleTurnCounter;
    u8 playerMon2Name[11];
    u8 pokeblockThrows;
    u16 lastOpponentSpecies;
    u16 lastUsedMovePlayer;
    u16 lastUsedMoveOpponent;
    u16 playerMon2Species;
    u16 caughtMonSpecies;
    u8 caughtMonNick[10];
    u8 filler34[2];
    u8 catchAttempts[11];
};

extern struct BattleResults gBattleResults;

struct LinkBattlerHeader
{
    u8 versionSignatureLo;
    u8 versionSignatureHi;
    u8 vsScreenHealthFlagsLo;
    u8 vsScreenHealthFlagsHi;
    struct BattleEnigmaBerry battleEnigmaBerry;
};

struct BattleStruct
{
    u8 turnEffectsTracker;
    u8 turnEffectsBattlerId;
    u8 filler2;
    u8 turnCountersTracker;
    u8 wrappedMove[4 * 2];
    u8 moveTarget[4];
    u8 expGetterMonId;
    u8 field_11;
    u8 wildVictorySong;
    u8 dynamicMoveType;
    u8 wrappedBy[4];
    u16 assistPossibleMoves[6 * 4];
    u8 focusPunchBattlerId;
    u8 battlerPreventingSwitchout;
    u8 moneyMultiplier;
    u8 savedTurnActionNumber;
    u8 switchInAbilitiesCounter;
    u8 faintedActionsState;
    u8 faintedActionsBattlerId;

    u16 expValue;
    u8 scriptPartyIdx;
    u8 sentInPokes;
    bool8 selectionScriptFinished[4];
    u8 battlerPartyIndexes[4];
    u8 monToSwitchIntoId[4];
    u8 battlerPartyOrders[4][3];
    u8 runTries;
    u8 caughtMonNick[10 + 1];
    u8 field_78;
    u8 safariRockThrowCounter;
    u8 safariBaitThrowCounter;
    u8 safariEscapeFactor;
    u8 safariCatchFactor;
    u8 linkBattleVsSpriteId_V;
    u8 linkBattleVsSpriteId_S;
    u8 formToChangeInto;
    u8 chosenMovePositions[4];
    u8 stateIdAfterSelScript[4];
    u8 field_88;
    u8 field_89;
    u8 field_8A;
    u8 playerPartyIdx;
    u8 field_8C;
    u8 field_8D;
    u8 stringMoveType;
    u8 expGetterBattlerId;
    u8 field_90;
    u8 absentBattlerFlags;
    u8 AI_monToSwitchIntoId[2];
    u8 simulatedInputState[4];
    u8 lastTakenMove[4 * 2 * 2];
    u16 hpOnSwitchout[2];
    u8 abilityPreventingSwitchout;
    u8 hpScale;
    u16 savedBattleTypeFlags;
    void (*savedCallback)(void);
    u8 synchronizeMoveEffect;
    u8 multiplayerId;
    u8 overworldWeatherDone;
    u8 atkCancellerTracker;
    u16 usedHeldItems[4];
    u8 chosenItem[4];
    u8 AI_itemType[2];
    u8 AI_itemFlags[2];
    u16 choicedMove[4];
    u16 changedItems[4];
    u8 intimidateBattler;
    u8 switchInItemsCounter;
    u8 field_DA;
    u8 turnSideTracker;
    u8 fillerDC[0xDF-0xDC];
    u8 givenExpMons;
    u8 lastTakenMoveFrom[4 * 4 * 2];
    u16 castformPalette[4][16];
    u8 wishPerishSongState;
    u8 wishPerishSongBattlerId;
    u8 lastAttackerToFaintOpponent;

    union {
        struct LinkBattlerHeader linkBattlerHeader;
        struct MultiBattlePokemonTx multiBattleMons[3];
    } multiBuffer;
    u8 padding_1E4[0x1C];
};

extern struct BattleStruct *gBattleStruct;
# 498 "include/battle.h"
struct BattleScripting
{
    s32 painSplitHp;
    s32 bideDmg;
    u8 multihitString[6];
    u8 dmgMultiplier;
    u8 twoTurnsMoveStringId;
    u8 animArg1;
    u8 animArg2;
    u16 tripleKickPower;
    u8 moveendState;
    u8 battlerWithAbility;
    u8 multihitMoveEffect;
    u8 battler;
    u8 animTurn;
    u8 animTargetsHit;
    u8 statChanger;
    bool8 statAnimPlayed;
    u8 getexpState;
    u8 battleStyle;
    u8 drawlvlupboxState;
    u8 learnMoveState;
    u8 pursuitDoublesAttacker;
    u8 reshowMainState;
    u8 reshowHelperState;
    u8 levelUpHP;
};

struct BattleSpriteInfo
{
            u16 invisible : 1;
            u16 lowHpSong : 1;
            u16 behindSubstitute : 1;
            u16 flag_x8 : 1;
            u16 hpNumbersNoBars : 1;
            u16 transformSpecies;
};

struct BattleAnimationInfo
{
    u16 animArg;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 ballThrowCaseId;
    u8 introAnimActive:1;
    u8 wildMonInvisible:1;
    u8 field_9_x1C:3;
    u8 field_9_x20:1;
    u8 field_9_x40:1;
    u8 field_9_x80:1;
    u8 numBallParticles;
    u8 field_B;
    s16 ballSubpx;
    u8 field_E;
    u8 field_F;
};

struct BattleHealthboxInfo
{
    u8 partyStatusSummaryShown : 1;
    u8 healthboxIsBouncing : 1;
    u8 battlerIsBouncing : 1;
    u8 ballAnimActive : 1;
    u8 statusAnimActive : 1;
    u8 animFromTableActive : 1;
    u8 specialAnimActive : 1;
    u8 triedShinyMonAnim : 1;
    u8 finishedShinyMonAnim : 1;
    u8 opponentDrawPartyStatusSummaryDelay : 5;
    u8 healthboxBounceSpriteId;
    u8 battlerBounceSpriteId;
    u8 animationState;
    u8 partyStatusDelayTimer;
    u8 matrixNum;
    u8 shadowSpriteId;
    u8 soundTimer;
    u8 introEndDelay;
};

struct BattleBarInfo
{
    u8 healthboxSpriteId;
    s32 maxValue;
    s32 oldValue;
    s32 receivedValue;
    s32 currValue;
};

struct BattleSpriteData
{
    struct BattleSpriteInfo *battlerData;
    struct BattleHealthboxInfo *healthBoxesData;
    struct BattleAnimationInfo *animationData;
    struct BattleBarInfo *battleBars;
};

extern struct BattleSpriteData *gBattleSpritesDataPtr;



extern u8 *gLinkBattleSendBuffer;
extern u8 *gLinkBattleRecvBuffer;





struct MonSpritesGfx
{
    void *firstDecompressed;
    void *sprites[4];
    struct SpriteTemplate templates[4];
    struct SpriteFrameImage images[4][4];
    u8 field_F4[0x80];
    u8 *barFontGfx;
    void *field_178;
    u16 *multiUseBuffer;
};

struct PokedudeBattlerState
{
    u8 action_idx;
    u8 move_idx;
    u8 timer;
    u8 msg_idx;
    u8 saved_bg0y;
};

extern u16 gBattle_BG0_X;
extern u16 gBattle_BG0_Y;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;
extern u16 gBattle_BG2_X;
extern u16 gBattle_BG2_Y;
extern u16 gBattle_BG3_X;
extern u16 gBattle_BG3_Y;
extern u16 gBattle_WIN0H;
extern u16 gBattle_WIN0V;
extern u16 gBattle_WIN1H;
extern u16 gBattle_WIN1V;
extern struct BattleSpritesGfx *gMonSpritesGfx;
extern u8 gBattleOutcome;
extern u16 gLastUsedItem;
extern u32 gBattleTypeFlags;
extern struct MonSpritesGfx *gMonSpritesGfxPtr;
extern u16 gTrainerBattleOpponent_A;
extern u16 gMoveToLearn;
extern u16 gBattleMovePower;
extern struct BattleEnigmaBerry gEnigmaBerries[4];
extern u16 gCurrentMove;
extern u16 gChosenMove;
extern u16 gCalledMove;
extern u8 gCritMultiplier;
extern u16 gBattleWeather;
extern u8 gLastUsedAbility;
extern u8 gBattlerInMenuId;
extern u8 gPotentialItemEffectBattler;
extern u8 gBattlersCount;
extern u16 gBattlerPartyIndexes[4];
extern s32 gBattleMoveDamage;
extern u16 gIntroSlideFlags;
extern u32 gTransformedPersonalities[4];
extern u8 gBattlerPositions[4];
extern u8 gHealthboxSpriteIds[4];
extern u8 gBattleOutcome;
extern u8 gBattleMonForms[4];
extern void (*gBattlerControllerFuncs[4])(void);
extern u32 gBattleControllerExecFlags;
extern u8 gBattleBufferA[4][0x200];
extern u8 gBattleBufferB[4][0x200];
extern u8 gActionSelectionCursor[4];
extern void (*gPreBattleCallback1)(void);
extern bool8 gDoingBattleAnim;
extern struct PokedudeBattlerState *gPokedudeBattlerStates[4];
extern u8 *gBattleAnimBgTileBuffer;
extern u8 *gBattleAnimBgTilemapBuffer;
extern void (*gBattleMainFunc)(void);
extern u8 gMoveSelectionCursor[4];
extern u32 gUnusedFirstBattleVar1;
extern u8 gUnusedFirstBattleVar2;
extern u8 gBattlerAttacker;
extern u8 gEffectBattler;
extern u8 gMultiHitCounter;
extern struct BattleScripting gBattleScripting;
extern u8 gBattlerFainted;
extern u32 gStatuses3[4];
extern u8 gSentPokesToOpponent[2];
extern const u8 *gBattlescriptCurrInstr;
extern const u8 *gSelectionBattleScripts[4];
extern u16 gLastMoves[4];
extern u8 gBattlerByTurnOrder[4];
extern u8 gBattleCommunication[8];
extern u16 gSideStatuses[2];
extern u32 gHitMarker;
extern u16 gChosenMoveByBattler[4];
extern u8 gMoveResultFlags;
extern s32 gTakenDmg[4];
extern u8 gTakenDmgByBattler[4];
extern u8 gCurrentActionFuncId;
extern u8 gCurrMovePos;
extern u8 gChosenMovePos;
extern u8 gBattleControllerData[4];
extern u8 gBattlerStatusSummaryTaskId[4];
extern u16 gDynamicBasePower;
extern u16 gLastLandedMoves[4];
extern u8 gLastHitBy[4];
extern u8 gMultiUsePlayerCursor;
extern u8 gNumberOfMovesToChoose;
extern u16 gLastHitByType[4];
extern s32 gHpDealt;
extern u16 gPauseCounterBattle;
extern u16 gPaydayMoney;
extern u16 gLockedMoves[4];
extern u8 gCurrentTurnActionNumber;
extern u16 gExpShareExp;
extern u8 gLeveledUpInBattle;
extern u16 gLastResultingMoves[4];
extern u16 gLastPrintedMoves[4];
extern u8 gActionsByTurnOrder[4];
extern u8 gChosenActionByBattler[4];
extern u8 gBattleTerrain;
extern struct MultiBattlePokemonTx gMultiPartnerParty[3];
extern u16 gRandomTurnNumber;
# 22 "src/battle_script_commands.c" 2
# 1 "include/battle_message.h" 1




# 1 "include/constants/battle_string_ids.h" 1
# 6 "include/battle_message.h" 2
# 196 "include/battle_message.h"
struct BattleMsgData
{
    u16 currentMove;
    u16 originallyUsedMove;
    u16 lastItem;
    u8 lastAbility;
    u8 scrActive;
    u8 bakScriptPartyIdx;
    u8 hpScale;
    u8 itemEffectBattler;
    u8 moveType;
    u8 abilities[4];
    u8 textBuffs[3][0x10];
};

void BufferStringBattle(u16 stringID);
u32 BattleStringExpandPlaceholdersToDisplayedString(const u8 *src);
u32 BattleStringExpandPlaceholders(const u8 *src, u8 *dst);
void BattleHandleAddTextPrinter(const u8 *text, u8 arg1);
void SetPpNumbersPaletteInMoveSelection(void);
u8 GetCurrentPpToMaxPpState(u8 currentPp, u8 maxPp);
void BattlePutTextOnWindow(const u8 *text, u8 windowId_flags);
bool8 BattleStringShouldBeColored(u16);

extern struct BattleMsgData *gBattleMsgDataPtr;



extern u8 gDisplayedStringBattle[300];
extern u8 gBattleTextBuff1[16];
extern u8 gBattleTextBuff2[16];
extern u8 gBattleTextBuff3[16];

extern const u8 *const gBattleStringsTable[];
extern const u8 *const gStatNamesTable[];
extern const u8 *const gPokeblockWasTooXStringTable[];
extern const u8 *const gRefereeStringsTable[];
extern const u8 *const gStatNamesTable2[];

extern const u16 gMissStringIds[];
extern const u16 gTrappingMoves[];

extern const u8 gText_Sleep[];
extern const u8 gText_Poison[];
extern const u8 gText_Burn[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];

extern const u8 gText_BattleTowerBan_Space[];
extern const u8 gText_BattleTowerBan_Newline1[];
extern const u8 gText_BattleTowerBan_Newline2[];
extern const u8 gText_BattleTowerBan_Is1[];
extern const u8 gText_BattleTowerBan_Is2[];

extern const u8 gText_SafariBalls[];
extern const u8 gText_HighlightRed_Left[];

extern const u8 gText_Win[];
extern const u8 gText_Loss[];
extern const u8 gText_Draw[];
# 23 "src/battle_script_commands.c" 2
# 1 "include/battle_anim.h" 1



# 1 "include/battle.h" 1
# 5 "include/battle_anim.h" 2
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
# 6 "include/battle_anim.h" 2

# 1 "include/constants/battle_anim.h" 1
# 8 "include/battle_anim.h" 2

enum
{
    BG_ANIM_SCREEN_SIZE,
    BG_ANIM_AREA_OVERFLOW_MODE,
    BG_ANIM_MOSAIC,
    BG_ANIM_CHAR_BASE_BLOCK,
    BG_ANIM_PRIORITY,
    BG_ANIM_PALETTES_MODE,
    BG_ANIM_SCREEN_BASE_BLOCK
};

enum
{
    BATTLER_COORD_X,
    BATTLER_COORD_Y,
    BATTLER_COORD_X_2,
    BATTLER_COORD_Y_PIC_OFFSET,
    BATTLER_COORD_Y_PIC_OFFSET_DEFAULT,
};

enum
{
    BATTLER_COORD_ATTR_HEIGHT,
    BATTLER_COORD_ATTR_WIDTH,
    BATTLER_COORD_ATTR_TOP,
    BATTLER_COORD_ATTR_BOTTOM,
    BATTLER_COORD_ATTR_LEFT,
    BATTLER_COORD_ATTR_RIGHT,
    BATTLER_COORD_ATTR_RAW_BOTTOM,
};
# 50 "include/battle_anim.h"
struct BattleAnimBgData
{
    u8 *bgTiles;
    u16 *bgTilemap;
    u8 paletteId;
    u8 bgId;
    u16 tilesOffset;
    u16 unused;
};

struct BattleAnimBackground
{
    const u32 *image;
    const u32 *palette;
    const u32 *tilemap;
};
# 78 "include/battle_anim.h"
extern void (*gAnimScriptCallback)(void);
extern bool8 gAnimScriptActive;
extern u8 gAnimVisualTaskCount;
extern u8 gAnimSoundTaskCount;
extern struct DisableStruct *gAnimDisableStructPtr;
extern u16 gAnimMovePower;
extern u8 gAnimFriendship;
extern u16 gWeatherMoveAnim;
extern s16 gBattleAnimArgs[8];
extern u8 gAnimMoveTurn;
extern u8 gBattleAnimAttacker;
extern u8 gBattleAnimTarget;
extern u8 gBattlerSpriteIds[4];
extern s32 gAnimMoveDmg;
extern u16 gAnimBattlerSpecies[4];
extern u8 gAnimCustomPanning;

extern const struct OamData gOamData_AffineOff_ObjNormal_8x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x64;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_8x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_8x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x8;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x8;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x8;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x64;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_64x64;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_64x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x64;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x64;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_64x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_64x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x64;
extern const struct MonCoords gCastformFrontSpriteCoords[];
extern const struct CompressedSpriteSheet gBattleAnimPicTable[];
extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];
extern const struct SpriteTemplate gFlashingHitSplatSpriteTemplate;
extern const struct SpriteTemplate gBasicHitSplatSpriteTemplate;
extern const struct SpriteTemplate gWaterHitSplatSpriteTemplate;
extern const struct SpriteTemplate gWishStarSpriteTemplate;
extern const struct SpriteTemplate gMiniTwinklingStarSpriteTemplate;
extern const struct SpriteTemplate gThoughtBubbleSpriteTemplate;
extern const union AffineAnimCmd *const gAffineAnims_Bite[];
extern const union AffineAnimCmd *const gAffineAnims_Droplet[];
extern const union AffineAnimCmd *const gGrowingRingAffineAnimTable[];
extern const union AnimCmd *const gAnims_SmallBubblePair[];
extern const union AnimCmd *const gAnims_BasicFire[];
extern const union AnimCmd *const gAnims_WaterMudOrb[];
extern const union AnimCmd *const gAnims_WaterBubble[];
extern const union AnimCmd *const gMusicNotesAnimTable[];
extern const u8 *const gBattleAnims_StatusConditions[];
extern const u8 *const gBattleAnims_Moves[];
extern const u16 gMovesWithQuietBGM[];

void MoveBattlerSpriteToBG(u8 battlerId, u8);
void ResetBattleAnimBg(u8);
void ClearBattleAnimationVars(void);
void DoMoveAnim(u16 move);
void LaunchBattleAnimation(const u8 *const animsTable[], u16 tableId, bool8 isMoveAnim);
void DestroyAnimSprite(struct Sprite *sprite);
void DestroyAnimVisualTask(u8 taskId);
void DestroyAnimSoundTask(u8 taskId);
bool8 IsContest(void);
s8 BattleAnimAdjustPanning(s8 pan);
s8 BattleAnimAdjustPanning2(s8 pan);
s16 CalculatePanIncrement(s16 sourcePan, s16 targetPan, s16 incrementPan);
bool8 IsBattlerSpriteVisible(u8 battlerId);
s16 KeepPanInRange(s16 a, s32 oldPan);
void RelocateBattleBgPal(u16 paletteNum, u16 *dest, s32 offset, u8 largeScreen);
void SetAnimBgAttribute(u8 bgId, u8 attributeId, u8 value);
s32 GetAnimBgAttribute(u8 bgId, u8 attributeId);
void HandleIntroSlide(u8 terrain);
void BattleIntroSlideEnd(u8 taskId);
void CopyBattlerSpriteToBg(s32 bgId, u8 x, u8 y, u8 battlerPosition, u8 palno, u8 *tilesDest, u16 *tilemapDest, u16 tilesOffset);
void SetSpriteNextToMonHead(u8 battler, struct Sprite* sprite);
void TryShinyAnimation(u8 battler, struct Pokemon *mon);
u8 ItemIdToBallId(u16 itemId);
u8 AnimateBallOpenParticles(u8 x, u8 y, u8 priority, u8 subpriority, u8 ballId);
u8 LaunchBallFadeMonTask(bool8 unFadeLater, u8 battlerId, u32 arg2, u8 ballId);
void DoLoadHealthboxPalsForLevelUp(u8 *, u8 *, u8 battlerId);
void DoFreeHealthboxPalsForLevelUp(u8 batterId);
void LaunchStatusAnimation(u8 battlerId, u8 statusAnimId);
u8 GetBattlerSpriteCoord(u8 battlerId, u8 coordType);
u8 GetBattlerSpriteCoord2(u8 battlerId, u8 coordType);
u8 GetBattlerSpriteDefault_Y(u8 battlerId);
u8 GetSubstituteSpriteDefault_Y(u8 battlerId);
u8 GetGhostSpriteDefault_Y(u8 battlerId);
u8 GetBattlerYCoordWithElevation(u8 battlerId);
u8 GetAnimBattlerSpriteId(u8 animBattler);
void StoreSpriteCallbackInData6(struct Sprite *sprite, SpriteCallback callback);
void TranslateSpriteInCircle(struct Sprite *sprite);
void TranslateSpriteInGrowingCircle(struct Sprite *sprite);
void TranslateSpriteInEllipse(struct Sprite *sprite);
void WaitAnimForDuration(struct Sprite *sprite);
void ConvertPosDataToTranslateLinearData(struct Sprite *sprite);
void TranslateSpriteLinear(struct Sprite *sprite);
void TranslateSpriteLinearFixedPoint(struct Sprite *sprite);
void TranslateSpriteLinearById(struct Sprite *sprite);
void TranslateSpriteLinearByIdFixedPoint(struct Sprite *sprite);
void TranslateSpriteLinearAndFlicker(struct Sprite *sprite);
void DestroySpriteAndMatrix(struct Sprite *sprite);
void RunStoredCallbackWhenAffineAnimEnds(struct Sprite *sprite);
void RunStoredCallbackWhenAnimEnds(struct Sprite *sprite);
void DestroyAnimSpriteAndDisableBlend(struct Sprite *sprite);
void DestroyAnimVisualTaskAndDisableBlend(u8 taskId);
void SetSpriteCoordsToAnimAttackerCoords(struct Sprite *sprite);
void SetAnimSpriteInitialXOffset(struct Sprite *sprite, s16 xOffset);
void InitAnimArcTranslation(struct Sprite *sprite);
bool8 TranslateAnimHorizontalArc(struct Sprite *sprite);
bool8 TranslateAnimVerticalArc(struct Sprite *sprite);
void SetSpritePrimaryCoordsFromSecondaryCoords(struct Sprite *sprite);
void InitSpritePosToAnimTarget(struct Sprite *sprite, bool8 respectMonPicOffsets);
void InitSpritePosToAnimAttacker(struct Sprite *sprite, bool8 respectMonPicOffsets);
u8 GetBattlerSide(u8 battlerId);
u8 GetBattlerPosition(u8 battlerId);
u8 GetBattlerAtPosition(u8 position);
bool8 IsBattlerSpritePresent(u8 battlerId);
bool8 IsDoubleBattle(void);
void GetBattleAnimBg1Data(struct BattleAnimBgData *animBgData);
void GetBattleAnimBgData(struct BattleAnimBgData *animBgData, u32 bgId);
void GetBattleAnimBgDataByPriorityRank(struct BattleAnimBgData *animBgData, u8 unused);
void InitBattleAnimBg(u32 bgId);
void AnimLoadCompressedBgGfx(u32 bgId, const u32 *src, u32 tilesOffset);
void InitAnimBgTilemapBuffer(u32 bgId, const void *src);
void AnimLoadCompressedBgTilemap(u32 bgId, const u32 *src);
u8 GetBattleBgPaletteNum(void);
void ToggleBg3Mode(bool8 arg0);
void Trade_MoveSelectedMonToTarget(struct Sprite *sprite);
void InitSpriteDataForLinearTranslation(struct Sprite *sprite);
void InitAnimLinearTranslation(struct Sprite *sprite);
void StartAnimLinearTranslation(struct Sprite *sprite);
void PlayerThrowBall_StartAnimLinearTranslation(struct Sprite *sprite);
bool8 AnimTranslateLinear(struct Sprite *sprite);
void AnimTranslateLinear_WithFollowup(struct Sprite *sprite);
void InitAnimLinearTranslationWithSpeed(struct Sprite *sprite);
void InitAnimLinearTranslationWithSpeedAndPos(struct Sprite *sprite);
void InitAndRunAnimFastLinearTranslation(struct Sprite *sprite);
bool8 AnimFastTranslateLinear(struct Sprite *sprite);
void InitAnimFastLinearTranslationWithSpeed(struct Sprite *sprite);
void InitAnimFastLinearTranslationWithSpeedAndPos(struct Sprite *sprite);
void SetSpriteRotScale(u8 spriteId, s16 xScale, s16 yScale, u16 rotation);
void PrepareBattlerSpriteForRotScale(u8 spriteId, u8 objMode);
void ResetSpriteRotScale(u8 spriteId);
void SetBattlerSpriteYOffsetFromRotation(u8 spriteId);
void TrySetSpriteRotScale(struct Sprite *sprite, bool8 recalcCenterVector, s16 xScale, s16 yScale, u16 rotation);
void TryResetSpriteAffineState(struct Sprite *sprite);
u16 ArcTan2Neg(s16 a, s16 b);
void SetGreyscaleOrOriginalPalette(u16 paletteNum, bool8 restoreOriginalColor);
u32 GetBattlePalettesMask(bool8 battleBackground, bool8 attacker, bool8 target, bool8 attackerPartner, bool8 targetPartner, bool8 a6, bool8 a7);
u32 GetBattleMonSpritePalettesMask(bool8 playerLeft, bool8 playerRight, bool8 foeLeft, bool8 foeRight);
u8 GetSpritePalIdxByBattler(u8 a1);
void AnimSpriteOnMonPos(struct Sprite *sprite);
void TranslateAnimSpriteToTargetMonLocation(struct Sprite *sprite);
void AnimThrowProjectile(struct Sprite *sprite);
void AnimTravelDiagonally(struct Sprite *sprite);
s16 CloneBattlerSpriteWithBlend(u8 animBattler);
void DestroySpriteWithActiveSheet(struct Sprite *sprite);
void PrepareAffineAnimInTaskData(struct Task *task, u8 spriteId, const union AffineAnimCmd *affineAnimCmds);
bool8 RunAffineAnimFromTaskData(struct Task *task);
void SetBattlerSpriteYOffsetFromYScale(u8 spriteId);
void SetBattlerSpriteYOffsetFromOtherYScale(u8 spriteId, u8 otherSpriteId);
void StorePointerInVars(s16 *lo, s16 *hi, const void *ptr);
void *LoadPointerFromVars(s16 lo, s16 hi);
void BattleAnimHelper_SetSpriteSquashParams(struct Task *task, u8 spriteId, s16 xScale0, s16 yScale0, s16 xScale1, s16 yScale1, u16 duration);
u8 BattleAnimHelper_RunSpriteSquash(struct Task *task);
void InitPrioritiesForVisibleBattlers(void);
u8 GetBattlerSpriteSubpriority(u8 battlerId);
u8 GetBattlerSpriteBGPriority(u8 battlerId);
u8 GetBattlerSpriteBGPriorityRank(u8 battlerId);
u8 CreateAdditionalMonSpriteForMoveAnim(u16 species, bool8 isBackpic, u8 templateId, s16 x, s16 y, u8 subpriority, u32 personality, u32 trainerId, u32 battlerId, u32 ignoreDeoxys);
void DestroySpriteAndFreeResources_(struct Sprite *sprite);
s16 GetBattlerSpriteCoordAttr(u8 battlerId, u8 attr);
void SetAverageBattlerPositions(u8 battlerId, bool8 respectMonPicOffsets, s16 *x, s16 *y);
u8 CreateInvisibleSpriteCopy(s32 battlerId, u8 spriteId, s32 species);
void AnimTranslateLinearAndFlicker_Flipped(struct Sprite *sprite);
void AnimTranslateLinearAndFlicker(struct Sprite *sprite);
void AnimSpinningSparkle(struct Sprite *sprite);
void AnimWeatherBallUp(struct Sprite *sprite);
void AnimWeatherBallDown(struct Sprite *sprite);
void AnimParticleBurst(struct Sprite *);
void AnimMoveTwisterParticle(struct Sprite *);
u32 UnpackSelectedBattlePalettes(s16 selector);
void AnimTask_HorizontalShake(u8 taskId);
void DestroyAnimSpriteAfterTimer(struct Sprite *sprite);
void AnimWaterPulseRing(struct Sprite *sprite);
u8 SmokescreenImpact(s16 x, s16 y, u8 a3);
void InitStatsChangeAnimation(u8 taskId);
void StartMonScrollingBgMask(u8 taskId, s32 unused, u16 arg2, u8 battler1, u8 arg4, u8 arg5, u8 arg6, u8 arg7, const u32 *gfx, const u32 *tilemap, const u32 *palette);
# 24 "src/battle_script_commands.c" 2
# 1 "include/battle_ai_script_commands.h" 1
# 11 "include/battle_ai_script_commands.h"
void BattleAI_HandleItemUseBeforeAISetup(void);
void BattleAI_SetupAIData(void);
u8 BattleAI_ChooseMoveOrAction(void);
void ClearBankMoveHistory(u8 bank);
void RecordAbilityBattle(u8 bank, u8 abilityId);
void ClearBankAbilityHistory(u8 bank);
void RecordItemEffectBattle(u8 bank, u8 itemEffect);
void ClearBankItemEffectHistory(u8 bank);
u8 BattleAI_ChooseMoveOrAction(void);
# 25 "src/battle_script_commands.c" 2
# 1 "include/battle_scripts.h" 1





extern const u8 BattleScript_HitFromCritCalc[];
extern const u8 BattleScript_MoveEnd[];
extern const u8 BattleScript_MakeMoveMissed[];
extern const u8 BattleScript_PrintMoveMissed[];
extern const u8 BattleScript_MoveMissedPause[];
extern const u8 BattleScript_MoveMissed[];
extern const u8 BattleScript_ButItFailed[];
extern const u8 BattleScript_StatUp[];
extern const u8 BattleScript_StatDown[];
extern const u8 BattleScript_AlreadyAtFullHp[];
extern const u8 BattleScript_PresentHealTarget[];
extern const u8 BattleScript_MoveUsedMustRecharge[];
extern const u8 BattleScript_FaintAttacker[];
extern const u8 BattleScript_FaintTarget[];
extern const u8 BattleScript_GiveExp[];
extern const u8 BattleScript_HandleFaintedMon[];
extern const u8 BattleScript_LocalTrainerBattleWon[];
extern const u8 BattleScript_LocalTwoTrainersDefeated[];
extern const u8 BattleScript_LocalBattleWonLoseTexts[];
extern const u8 BattleScript_LocalBattleWonReward[];
extern const u8 BattleScript_PayDayMoneyAndPickUpItems[];
extern const u8 BattleScript_LocalBattleLost[];
extern const u8 BattleScript_LocalBattleLostPrintWhiteOut[];
extern const u8 BattleScript_LocalBattleLostEnd[];
extern const u8 BattleScript_CheckDomeDrew[];
extern const u8 BattleScript_LinkBattleWonOrLost[];
extern const u8 BattleScript_BattleTowerTrainerBattleWon[];
extern const u8 BattleScript_SmokeBallEscape[];
extern const u8 BattleScript_RanAwayUsingMonAbility[];
extern const u8 BattleScript_GotAwaySafely[];
extern const u8 BattleScript_WildMonFled[];
extern const u8 BattleScript_PrintCantRunFromTrainer[];
extern const u8 BattleScript_PrintFailedToRunString[];
extern const u8 BattleScript_PrintCantEscapeFromBattle[];
extern const u8 BattleScript_PrintFullBox[];
extern const u8 BattleScript_ActionSwitch[];
extern const u8 BattleScript_Pausex20[];
extern const u8 BattleScript_LevelUp[];
extern const u8 BattleScript_RainContinuesOrEnds[];
extern const u8 BattleScript_DamagingWeatherContinues[];
extern const u8 BattleScript_SandStormHailEnds[];
extern const u8 BattleScript_SunlightContinues[];
extern const u8 BattleScript_SunlightFaded[];
extern const u8 BattleScript_OverworldWeatherStarts[];
extern const u8 BattleScript_SideStatusWoreOff[];
extern const u8 BattleScript_SafeguardProtected[];
extern const u8 BattleScript_SafeguardEnds[];
extern const u8 BattleScript_LeechSeedTurnDrain[];
extern const u8 BattleScript_BideStoringEnergy[];
extern const u8 BattleScript_BideAttack[];
extern const u8 BattleScript_BideNoEnergyToAttack[];
extern const u8 BattleScript_SuccessForceOut[];
extern const u8 BattleScript_MistProtected[];
extern const u8 BattleScript_RageIsBuilding[];
extern const u8 BattleScript_MoveUsedIsDisabled[];
extern const u8 BattleScript_SelectingDisabledMove[];
extern const u8 BattleScript_DisabledNoMore[];
extern const u8 BattleScript_SelectingDisabledMoveInPalace[];
extern const u8 BattleScript_SelectingUnusableMoveInPalace[];
extern const u8 BattleScript_EncoredNoMore[];
extern const u8 BattleScript_DestinyBondTakesLife[];
extern const u8 BattleScript_SpikesOnAttacker[];
extern const u8 BattleScript_SpikesOnTarget[];
extern const u8 BattleScript_SpikesOngBank1[];
extern const u8 BattleScript_PerishSongTakesLife[];
extern const u8 BattleScript_PerishSongCountGoesDown[];
extern const u8 BattleScript_AllStatsUp[];
extern const u8 BattleScript_RapidSpinAway[];
extern const u8 BattleScript_WrapFree[];
extern const u8 BattleScript_LeechSeedFree[];
extern const u8 BattleScript_SpikesFree[];
extern const u8 BattleScript_MonTookFutureAttack[];
extern const u8 BattleScript_NoMovesLeft[];
extern const u8 BattleScript_SelectingMoveWithNoPP[];
extern const u8 BattleScript_NoPPForMove[];
extern const u8 BattleScript_SelectingTormentedMove[];
extern const u8 BattleScript_MoveUsedIsTormented[];
extern const u8 BattleScript_SelectingTormentedMoveInPalace[];
extern const u8 BattleScript_SelectingNotAllowedMoveTaunt[];
extern const u8 BattleScript_MoveUsedIsTaunted[];
extern const u8 BattleScript_SelectingNotAllowedMoveTauntInPalace[];
extern const u8 BattleScript_WishComesTrue[];
extern const u8 BattleScript_IngrainTurnHeal[];
extern const u8 BattleScript_AtkDefDown[];
extern const u8 BattleScript_KnockedOff[];
extern const u8 BattleScript_MoveUsedIsImprisoned[];
extern const u8 BattleScript_SelectingImprisonedMove[];
extern const u8 BattleScript_SelectingImprisonedMoveInPalace[];
extern const u8 BattleScript_GrudgeTakesPp[];
extern const u8 BattleScript_MagicCoatBounce[];
extern const u8 BattleScript_SnatchedMove[];
extern const u8 BattleScript_EnduredMsg[];
extern const u8 BattleScript_OneHitKOMsg[];
extern const u8 BattleScript_SAtkDown2[];
extern const u8 BattleScript_FocusPunchSetUp[];
extern const u8 BattleScript_MoveUsedIsAsleep[];
extern const u8 BattleScript_MoveUsedWokeUp[];
extern const u8 BattleScript_MonWokeUpInUproar[];
extern const u8 BattleScript_PoisonTurnDmg[];
extern const u8 BattleScript_BurnTurnDmg[];
extern const u8 BattleScript_MoveUsedIsFrozen[];
extern const u8 BattleScript_MoveUsedUnfroze[];
extern const u8 BattleScript_DefrostedViaFireMove[];
extern const u8 BattleScript_MoveUsedIsParalyzed[];
extern const u8 BattleScript_MoveUsedFlinched[];
extern const u8 BattleScript_PrintUproarOverTurns[];
extern const u8 BattleScript_ThrashConfuses[];
extern const u8 BattleScript_MoveUsedIsConfused[];
extern const u8 BattleScript_MoveUsedIsConfusedNoMore[];
extern const u8 BattleScript_PrintPayDayMoneyString[];
extern const u8 BattleScript_WrapTurnDmg[];
extern const u8 BattleScript_WrapEnds[];
extern const u8 BattleScript_MoveUsedIsInLove[];
extern const u8 BattleScript_MoveUsedIsInLoveCantAttack[];
extern const u8 BattleScript_MoveUsedIsParalyzedCantAttack[];
extern const u8 BattleScript_NightmareTurnDmg[];
extern const u8 BattleScript_CurseTurnDmg[];
extern const u8 BattleScript_TargetPRLZHeal[];
extern const u8 BattleScript_MoveEffectSleep[];
extern const u8 BattleScript_YawnMakesAsleep[];
extern const u8 BattleScript_MoveEffectPoison[];
extern const u8 BattleScript_MoveEffectBurn[];
extern const u8 BattleScript_MoveEffectFreeze[];
extern const u8 BattleScript_MoveEffectParalysis[];
extern const u8 BattleScript_MoveEffectUproar[];
extern const u8 BattleScript_MoveEffectToxic[];
extern const u8 BattleScript_MoveEffectPayDay[];
extern const u8 BattleScript_MoveEffectWrap[];
extern const u8 BattleScript_MoveEffectConfusion[];
extern const u8 BattleScript_MoveEffectRecoil33[];
extern const u8 BattleScript_DoRecoil33[];
extern const u8 BattleScript_Recoil33End[];
extern const u8 BattleScript_ItemSteal[];
extern const u8 BattleScript_DrizzleActivates[];
extern const u8 BattleScript_SpeedBoostActivates[];
extern const u8 BattleScript_TraceActivates[];
extern const u8 BattleScript_RainDishActivates[];
extern const u8 BattleScript_SandstreamActivates[];
extern const u8 BattleScript_ShedSkinActivates[];
extern const u8 BattleScript_WeatherFormChanges[];
extern const u8 BattleScript_WeatherFormChangesLoop[];
extern const u8 BattleScript_CastformChange[];
extern const u8 BattleScript_DroughtActivates[];
extern const u8 BattleScript_TookAttack[];
extern const u8 BattleScript_SturdyPreventsOHKO[];
extern const u8 BattleScript_DampStopsExplosion[];
extern const u8 BattleScript_MoveHPDrain_PPLoss[];
extern const u8 BattleScript_MoveHPDrain[];
extern const u8 BattleScript_MonMadeMoveUseless_PPLoss[];
extern const u8 BattleScript_MonMadeMoveUseless[];
extern const u8 BattleScript_FlashFireBoost_PPLoss[];
extern const u8 BattleScript_FlashFireBoost[];
extern const u8 BattleScript_AbilityNoStatLoss[];
extern const u8 BattleScript_BRNPrevention[];
extern const u8 BattleScript_PRLZPrevention[];
extern const u8 BattleScript_PSNPrevention[];
extern const u8 BattleScript_ObliviousPreventsAttraction[];
extern const u8 BattleScript_FlinchPrevention[];
extern const u8 BattleScript_OwnTempoPrevents[];
extern const u8 BattleScript_SoundproofProtected[];
extern const u8 BattleScript_AbilityNoSpecificStatLoss[];
extern const u8 BattleScript_StickyHoldActivates[];
extern const u8 BattleScript_ColorChangeActivates[];
extern const u8 BattleScript_RoughSkinActivates[];
extern const u8 BattleScript_CuteCharmActivates[];
extern const u8 BattleScript_ApplySecondaryEffect[];
extern const u8 BattleScript_SynchronizeActivates[];
extern const u8 BattleScript_NoItemSteal[];
extern const u8 BattleScript_AbilityCuredStatus[];
extern const u8 BattleScript_IgnoresAndUsesRandomMove[];
extern const u8 BattleScript_MoveUsedLoafingAround[];
extern const u8 BattleScript_IgnoresAndFallsAsleep[];
extern const u8 BattleScript_SubstituteFade[];
extern const u8 BattleScript_BerryCurePrlzEnd2[];
extern const u8 BattleScript_BerryCureParRet[];
extern const u8 BattleScript_BerryCurePsnEnd2[];
extern const u8 BattleScript_BerryCurePsnRet[];
extern const u8 BattleScript_BerryCureBrnEnd2[];
extern const u8 BattleScript_BerryCureBrnRet[];
extern const u8 BattleScript_BerryCureFrzEnd2[];
extern const u8 BattleScript_BerryCureFrzRet[];
extern const u8 BattleScript_BerryCureSlpEnd2[];
extern const u8 BattleScript_BerryCureSlpRet[];
extern const u8 BattleScript_BerryCureConfusionEnd2[];
extern const u8 BattleScript_BerryCureConfusionRet[];
extern const u8 BattleScript_BerryCureChosenStatusEnd2[];
extern const u8 BattleScript_BerryCureChosenStatusRet[];
extern const u8 BattleScript_WhiteHerbEnd2[];
extern const u8 BattleScript_WhiteHerbRet[];
extern const u8 BattleScript_ItemHealHP_RemoveItem[];
extern const u8 BattleScript_BerryPPHealEnd2[];
extern const u8 BattleScript_ItemHealHP_End2[];
extern const u8 BattleScript_ItemHealHP_Ret[];
extern const u8 BattleScript_SelectingNotAllowedMoveChoiceItem[];
extern const u8 BattleScript_FocusBandActivates[];
extern const u8 BattleScript_BerryConfuseHealEnd2[];
extern const u8 BattleScript_BerryStatRaiseEnd2[];
extern const u8 BattleScript_BerryFocusEnergyEnd2[];
extern const u8 BattleScript_ActionSelectionItemsCantBeUsed[];
extern const u8 BattleScript_AskIfWantsToForfeitMatch[];
extern const u8 BattleScript_PrintPlayerForfeited[];
extern const u8 BattleScript_PrintPlayerForfeitedLinkBattle[];
extern const u8 BattleScript_BallThrow[];
extern const u8 BattleScript_BallThrowByWally[];
extern const u8 BattleScript_SafariBallThrow[];
extern const u8 BattleScript_SuccessBallThrow[];
extern const u8 BattleScript_WallyBallThrow[];
extern const u8 BattleScript_ShakeBallThrow[];
extern const u8 BattleScript_TrainerBallBlock[];
extern const u8 BattleScript_RunByUsingItem[];
extern const u8 BattleScript_ActionWatchesCarefully[];
extern const u8 BattleScript_ActionGetNear[];
extern const u8 BattleScript_ActionThrowPokeblock[];
extern const u8 BattleScript_GhostGetOutGetOut[];
extern const u8 BattleScript_TooScaredToMove[];
extern const u8 BattleScript_IntimidateActivates[];
extern const u8 BattleScript_IntimidateActivatesEnd3[];
extern const u8 BattleScript_IgnoresWhileAsleep[];
extern const u8 BattleScript_IgnoresAndHitsItself[];
extern const u8 BattleScript_MoveEffectRecoil[];
extern const u8 BattleScript_FlushMessageBox[];
extern const u8 BattleScript_SpikesOnFaintedBattler[];
extern const u8 BattleScript_GhostBallDodge[];
extern const u8 BattleScript_OldMan_Pokedude_CaughtMessage[];
extern const u8 BattleScript_SilphScopeUnveiled[];
extern const u8 BattleScript_BattleTowerTrainerBattleWon[];
extern const u8 BattleScript_OldBoomerActivates[];
extern const u8 *const gBattleScriptsForMoveEffects[];
extern const u8 *const gBattlescriptsForBallThrow[];
extern const u8 *const gBattlescriptsForRunningByItem[];
extern const u8 *const gBattlescriptsForUsingItem[];
extern const u8 *const gBattlescriptsForSafariActions[];
# 26 "src/battle_script_commands.c" 2
# 1 "include/reshow_battle_screen.h" 1





void ReshowBattleScreenDummy(void);
void ReshowBattleScreenAfterMenu(void);
# 27 "src/battle_script_commands.c" 2
# 1 "include/battle_controllers.h" 1






enum
{
    REQUEST_ALL_BATTLE,
    REQUEST_SPECIES_BATTLE,
    REQUEST_HELDITEM_BATTLE,
    REQUEST_MOVES_PP_BATTLE,
    REQUEST_MOVE1_BATTLE,
    REQUEST_MOVE2_BATTLE,
    REQUEST_MOVE3_BATTLE,
    REQUEST_MOVE4_BATTLE,
    REQUEST_PP_DATA_BATTLE,
    REQUEST_PPMOVE1_BATTLE,
    REQUEST_PPMOVE2_BATTLE,
    REQUEST_PPMOVE3_BATTLE,
    REQUEST_PPMOVE4_BATTLE,
    REQUEST_UNUSED_13_BATTLE,
    REQUEST_UNUSED_14_BATTLE,
    REQUEST_UNUSED_15_BATTLE,
    REQUEST_UNUSED_16_BATTLE,
    REQUEST_OTID_BATTLE,
    REQUEST_EXP_BATTLE,
    REQUEST_HP_EV_BATTLE,
    REQUEST_ATK_EV_BATTLE,
    REQUEST_DEF_EV_BATTLE,
    REQUEST_SPEED_EV_BATTLE,
    REQUEST_SPATK_EV_BATTLE,
    REQUEST_SPDEF_EV_BATTLE,
    REQUEST_FRIENDSHIP_BATTLE,
    REQUEST_POKERUS_BATTLE,
    REQUEST_MET_LOCATION_BATTLE,
    REQUEST_MET_LEVEL_BATTLE,
    REQUEST_MET_GAME_BATTLE,
    REQUEST_POKEBALL_BATTLE,
    REQUEST_ALL_IVS_BATTLE,
    REQUEST_HP_IV_BATTLE,
    REQUEST_ATK_IV_BATTLE,
    REQUEST_DEF_IV_BATTLE,
    REQUEST_SPEED_IV_BATTLE,
    REQUEST_SPATK_IV_BATTLE,
    REQUEST_SPDEF_IV_BATTLE,
    REQUEST_PERSONALITY_BATTLE,
    REQUEST_CHECKSUM_BATTLE,
    REQUEST_STATUS_BATTLE,
    REQUEST_LEVEL_BATTLE,
    REQUEST_HP_BATTLE,
    REQUEST_MAX_HP_BATTLE,
    REQUEST_ATK_BATTLE,
    REQUEST_DEF_BATTLE,
    REQUEST_SPEED_BATTLE,
    REQUEST_SPATK_BATTLE,
    REQUEST_SPDEF_BATTLE,
    REQUEST_COOL_BATTLE,
    REQUEST_BEAUTY_BATTLE,
    REQUEST_CUTE_BATTLE,
    REQUEST_SMART_BATTLE,
    REQUEST_TOUGH_BATTLE,
    REQUEST_SHEEN_BATTLE,
    REQUEST_COOL_RIBBON_BATTLE,
    REQUEST_BEAUTY_RIBBON_BATTLE,
    REQUEST_CUTE_RIBBON_BATTLE,
    REQUEST_SMART_RIBBON_BATTLE,
    REQUEST_TOUGH_RIBBON_BATTLE,
};



enum {
    BUFFER_A,
    BUFFER_B
};

enum {
    RESET_ACTION_MOVE_SELECTION,
    RESET_ACTION_SELECTION,
    RESET_MOVE_SELECTION,
};

enum {
    BALL_NO_SHAKES,
    BALL_1_SHAKE,
    BALL_2_SHAKES,
    BALL_3_SHAKES_FAIL,
    BALL_3_SHAKES_SUCCESS,
    BALL_TRAINER_BLOCK,
    BALL_GHOST_DODGE,
};

enum {
    LINK_STANDBY_MSG_STOP_BOUNCE,
    LINK_STANDBY_STOP_BOUNCE_ONLY,
    LINK_STANDBY_MSG_ONLY,
};
# 109 "include/battle_controllers.h"
struct UnusedControllerStruct
{
    u8 unk:7;
    u8 flag:1;
};

struct HpAndStatus
{
    u16 hp;
    u32 status;
};

struct MovePpInfo
{
    u16 moves[4];
    u8 pp[4];
    u8 ppBonuses;
};

struct ChooseMoveStruct
{
    u16 moves[4];
    u8 currentPp[4];
    u8 maxPp[4];
    u16 species;
    u8 monType1;
    u8 monType2;
};

enum
{
    CONTROLLER_GETMONDATA,
    CONTROLLER_GETRAWMONDATA,
    CONTROLLER_SETMONDATA,
    CONTROLLER_SETRAWMONDATA,
    CONTROLLER_LOADMONSPRITE,
    CONTROLLER_SWITCHINANIM,
    CONTROLLER_RETURNMONTOBALL,
    CONTROLLER_DRAWTRAINERPIC,
    CONTROLLER_TRAINERSLIDE,
    CONTROLLER_TRAINERSLIDEBACK,
    CONTROLLER_FAINTANIMATION,
    CONTROLLER_PALETTEFADE,
    CONTROLLER_SUCCESSBALLTHROWANIM,
    CONTROLLER_BALLTHROWANIM,
    CONTROLLER_PAUSE,
    CONTROLLER_MOVEANIMATION,
    CONTROLLER_PRINTSTRING,
    CONTROLLER_PRINTSTRINGPLAYERONLY,
    CONTROLLER_CHOOSEACTION,
    CONTROLLER_UNKNOWNYESNOBOX,
    CONTROLLER_CHOOSEMOVE,
    CONTROLLER_OPENBAG,
    CONTROLLER_CHOOSEPOKEMON,
    CONTROLLER_23,
    CONTROLLER_HEALTHBARUPDATE,
    CONTROLLER_EXPUPDATE,
    CONTROLLER_STATUSICONUPDATE,
    CONTROLLER_STATUSANIMATION,
    CONTROLLER_STATUSXOR,
    CONTROLLER_DATATRANSFER,
    CONTROLLER_DMA3TRANSFER,
    CONTROLLER_PLAYBGM,
    CONTROLLER_32,
    CONTROLLER_TWORETURNVALUES,
    CONTROLLER_CHOSENMONRETURNVALUE,
    CONTROLLER_ONERETURNVALUE,
    CONTROLLER_ONERETURNVALUE_DUPLICATE,
    CONTROLLER_CLEARUNKVAR,
    CONTROLLER_SETUNKVAR,
    CONTROLLER_CLEARUNKFLAG,
    CONTROLLER_TOGGLEUNKFLAG,
    CONTROLLER_HITANIMATION,
    CONTROLLER_CANTSWITCH,
    CONTROLLER_PLAYSE,
    CONTROLLER_PLAYFANFARE,
    CONTROLLER_FAINTINGCRY,
    CONTROLLER_INTROSLIDE,
    CONTROLLER_INTROTRAINERBALLTHROW,
    CONTROLLER_DRAWPARTYSTATUSSUMMARY,
    CONTROLLER_HIDEPARTYSTATUSSUMMARY,
    CONTROLLER_ENDBOUNCE,
    CONTROLLER_SPRITEINVISIBILITY,
    CONTROLLER_BATTLEANIMATION,
    CONTROLLER_LINKSTANDBYMSG,
    CONTROLLER_RESETACTIONMOVESELECTION,
    CONTROLLER_ENDLINKBATTLE,

    CONTROLLER_TERMINATOR_NOP,
    CONTROLLER_CMDS_COUNT
};

extern struct UnusedControllerStruct gUnusedControllerStruct;


void HandleLinkBattleSetup(void);
void SetUpBattleVars(void);
void InitBattleControllers(void);
void TryReceiveLinkBattleData(void);
void PrepareBufferDataTransferLink(u8 bufferId, u16 size, u8 *data);


void BtlController_EmitGetMonData(u8 bufferId, u8 requestId, u8 monToCheck);
void BtlController_EmitSetMonData(u8 bufferId, u8 requestId, u8 monToCheck, u8 bytes, void *data);
void BtlController_EmitLoadMonSprite(u8 bufferId);
void BtlController_EmitSwitchInAnim(u8 bufferId, u8 partyId, bool8 dontClearSubstituteBit);
void BtlController_EmitReturnMonToBall(u8 bufferId, bool8 skipAnim);
void BtlController_EmitDrawTrainerPic(u8 bufferId);
void BtlController_EmitTrainerSlide(u8 bufferId);
void BtlController_EmitTrainerSlideBack(u8 bufferId);
void BtlController_EmitFaintAnimation(u8 bufferId);
void BtlController_EmitBallThrowAnim(u8 bufferId, u8 caseId);
void BtlController_EmitMoveAnimation(u8 bufferId, u16 move, u8 turnOfMove, u16 movePower, s32 dmg, u8 friendship, struct DisableStruct *disableStructPtr);
void BtlController_EmitPrintString(u8 bufferId, u16 stringId);
void BtlController_EmitPrintSelectionString(u8 bufferId, u16 stringId);
void BtlController_EmitChooseAction(u8 bufferId, u8 action, u16 itemId);
void BtlController_EmitChooseMove(u8 bufferId, bool8 isDoubleBattle, bool8 NoPpNumber, struct ChooseMoveStruct *movePpData);
void BtlController_EmitChooseItem(u8 bufferId, u8 *arg1);
void BtlController_EmitChoosePokemon(u8 bufferId, u8 caseId, u8 arg2, u8 abilityId, u8 *arg4);
void BtlController_EmitHealthBarUpdate(u8 bufferId, u16 hpValue);
void BtlController_EmitExpUpdate(u8 bufferId, u8 partyId, u16 expPoints);
void BtlController_EmitStatusIconUpdate(u8 bufferId, u32 status1, u32 status2);
void BtlController_EmitStatusAnimation(u8 bufferId, bool8 status2, u32 status);
void BtlController_EmitDataTransfer(u8 bufferId, u16 size, void *data);
void BtlController_EmitTwoReturnValues(u8 bufferId, u8 arg1, u16 arg2);
void BtlController_EmitChosenMonReturnValue(u8 bufferId, u8 b, u8 *c);
void BtlController_EmitOneReturnValue(u8 bufferId, u16 arg1);
void BtlController_EmitOneReturnValue_Duplicate(u8 bufferId, u16 b);
void BtlController_EmitHitAnimation(u8 bufferId);
void BtlController_EmitCantSwitch(u8 bufferId);
void BtlController_EmitPlaySE(u8 bufferId, u16 songId);
void BtlController_EmitPlayFanfare(u8 bufferId, u16 songId);
void BtlController_EmitFaintingCry(u8 bufferId);
void BtlController_EmitIntroSlide(u8 bufferId, u8 terrainId);
void BtlController_EmitIntroTrainerBallThrow(u8 bufferId);
void BtlController_EmitDrawPartyStatusSummary(u8 bufferId, struct HpAndStatus *hpAndStatus, u8 param);
void BtlController_EmitHidePartyStatusSummary(u8 bufferId);
void BtlController_EmitEndBounceEffect(u8 bufferId);
void BtlController_EmitSpriteInvisibility(u8 bufferId, bool8 isInvisible);
void BtlController_EmitBattleAnimation(u8 bufferId, u8 animationId, u16 argument);
void BtlController_EmitLinkStandbyMsg(u8 bufferId, u8 mode);
void BtlController_EmitResetActionMoveSelection(u8 bufferId, u8 caseId);
void BtlController_EmitEndLinkBattle(u8 bufferId, u8 battleOutcome);


void BattleControllerDummy(void);
void SetControllerToPlayer(void);
void PlayerHandleGetRawMonData(void);
void SpriteCB_FreePlayerSpriteLoadMonSprite(struct Sprite *sprite);
void SetCB2ToReshowScreenAfterMenu(void);
void SetCB2ToReshowScreenAfterMenu2(void);
void Task_PlayerController_RestoreBgmAfterCry(u8 taskId);
void ActionSelectionCreateCursorAt(u8 cursorPos, u8 unused);
void ActionSelectionDestroyCursorAt(u8 cursorPos);
void InitMoveSelectionsVarsAndStrings(void);
void SetBattleEndCallbacks(void);
void MoveSelectionCreateCursorAt(u8 cursorPos, u8 arg1);
void MoveSelectionDestroyCursorAt(u8 cursorPos);
void HandleInputChooseMove(void);


void SetControllerToOpponent(void);
void OpponentBufferExecCompleted(void);


void SetControllerToSafari(void);


void SetControllerToPokedude(void);
void InitPokedudePartyAndOpponent(void);


void SetControllerToOakOrOldMan(void);
# 295 "include/battle_controllers.h"
bool8 BtlCtrl_OakOldMan_TestState2Flag(u8 mask);
void BtlCtrl_OakOldMan_SetState2Flag(u8 mask);
void PrintOakText_InflictingDamageIsKey(void);
void PrintOakText_HowDisappointing(void);
void PrintOakText_OakNoRunningFromATrainer(void);
void OakOldManHandleInputChooseMove(void);
void BtlCtrl_DrawVoiceoverMessageFrame(void);
void BtlCtrl_RemoveVoiceoverMessageFrame(void);


void SetControllerToLinkOpponent(void);


void SetControllerToLinkPartner(void);
# 28 "src/battle_script_commands.c" 2
# 1 "include/battle_interface.h" 1




# 1 "include/battle_controllers.h" 1
# 6 "include/battle_interface.h" 2

enum
{
    HP_CURRENT,
    HP_MAX
};

enum
{
    HEALTH_BAR,
    EXP_BAR
};

enum
{
    HP_BAR_EMPTY,
    HP_BAR_RED,
    HP_BAR_YELLOW,
    HP_BAR_GREEN,
    HP_BAR_FULL,
};
# 54 "include/battle_interface.h"
enum
{
    HEALTHBOX_ALL,
    HEALTHBOX_CURRENT_HP,
    HEALTHBOX_MAX_HP,
    HEALTHBOX_LEVEL,
    HEALTHBOX_NICK,
    HEALTHBOX_HEALTH_BAR,
    HEALTHBOX_EXP_BAR,
    HEALTHBOX_UNUSED_7,
    HEALTHBOX_UNUSED_8,
    HEALTHBOX_STATUS_ICON,
    HEALTHBOX_SAFARI_ALL_TEXT,
    HEALTHBOX_SAFARI_BALLS_TEXT
};

void Task_HidePartyStatusSummary(u8 taskId);
u8 CreateBattlerHealthboxSprites(u8 battlerId);
u8 CreateSafariPlayerHealthboxSprites(void);
void SetBattleBarStruct(u8 battlerId, u8 healthboxSpriteId, s32 maxVal, s32 currVal, s32 receivedValue);
void SetHealthboxSpriteInvisible(u8 healthboxSpriteId);
void SetHealthboxSpriteVisible(u8 healthboxSpriteId);
void DestoryHealthboxSprite(u8 healthboxSpriteId);
void DummyBattleInterfaceFunc(u8 healthboxSpriteId, bool8 isDoubleBattleBankOnly);
void UpdateOamPriorityInAllHealthboxes(u8 priority);
void InitBattlerHealthboxCoords(u8 battlerId);
void UpdateHpTextInHealthbox(u8 healthboxSpriteId, s16 value, u8 maxOrCurrent);
void SwapHpBarsWithHpText(void);
u8 CreatePartyStatusSummarySprites(u8 battlerId, struct HpAndStatus *partyInfo, u8 isSwitchingMons, bool8 isBattleStart);
void UpdateHealthboxAttribute(u8 healthboxSpriteId, struct Pokemon *mon, u8 elementId);
u8 GetScaledHPFraction(s16 hp, s16 maxhp, u8 scale);
u8 GetHPBarLevel(s16 hp, s16 maxhp);
void UpdateNickInHealthbox(u8 spriteId, struct Pokemon *mon);
void TryAddPokeballIconToHealthbox(u8 spriteId, u8);
s32 MoveBattleBar(u8 battler, u8 healthboxSpriteId, u8 whichBar, u8 arg3);
# 29 "src/battle_script_commands.c" 2
# 1 "include/constants/battle_anim.h" 1
# 30 "src/battle_script_commands.c" 2
# 1 "include/constants/battle_move_effects.h" 1
# 31 "src/battle_script_commands.c" 2
# 1 "include/constants/battle_script_commands.h" 1
# 32 "src/battle_script_commands.c" 2
# 1 "include/constants/items.h" 1
# 33 "src/battle_script_commands.c" 2
# 1 "include/constants/hold_effects.h" 1
# 34 "src/battle_script_commands.c" 2
# 1 "include/constants/songs.h" 1
# 35 "src/battle_script_commands.c" 2
# 1 "include/constants/moves.h" 1
# 36 "src/battle_script_commands.c" 2
# 1 "include/constants/abilities.h" 1
# 37 "src/battle_script_commands.c" 2
# 1 "include/constants/pokemon.h" 1
# 38 "src/battle_script_commands.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 1 "include/constants/map_types.h" 1
# 6 "include/constants/maps.h" 2
# 39 "src/battle_script_commands.c" 2

extern const u8 *const gBattleScriptsForMoveEffects[];
# 49 "src/battle_script_commands.c"
static bool8 IsTwoTurnsMove(u16 move);
static void TrySetDestinyBondToHappen(void);
static u8 AttacksThisTurn(u8 battlerId, u16 move);
static void CheckWonderGuardAndLevitate(void);
static u8 ChangeStatBuffs(s8 statValue, u8 statId, u8, const u8 *BS_ptr);
static void InitLevelUpBanner(void);
static bool8 SlideInLevelUpBanner(void);
static bool8 SlideOutLevelUpBanner(void);
static void DrawLevelUpWindow1(void);
static void DrawLevelUpWindow2(void);
static void PutMonIconOnLvlUpBanner(void);
static void DrawLevelUpBannerText(void);
static void SpriteCB_MonIconOnLvlUpBanner(struct Sprite* sprite);

static void Cmd_attackcanceler(void);
static void Cmd_accuracycheck(void);
static void Cmd_attackstring(void);
static void Cmd_ppreduce(void);
static void Cmd_critcalc(void);
static void Cmd_damagecalc(void);
static void Cmd_typecalc(void);
static void Cmd_adjustnormaldamage(void);
static void Cmd_adjustnormaldamage2(void);
static void Cmd_attackanimation(void);
static void Cmd_waitanimation(void);
static void Cmd_healthbarupdate(void);
static void Cmd_datahpupdate(void);
static void Cmd_critmessage(void);
static void Cmd_effectivenesssound(void);
static void Cmd_resultmessage(void);
static void Cmd_printstring(void);
static void Cmd_printselectionstring(void);
static void Cmd_waitmessage(void);
static void Cmd_printfromtable(void);
static void Cmd_printselectionstringfromtable(void);
static void Cmd_seteffectwithchance(void);
static void Cmd_seteffectprimary(void);
static void Cmd_seteffectsecondary(void);
static void Cmd_clearstatusfromeffect(void);
static void Cmd_tryfaintmon(void);
static void Cmd_dofaintanimation(void);
static void Cmd_cleareffectsonfaint(void);
static void Cmd_jumpifstatus(void);
static void Cmd_jumpifstatus2(void);
static void Cmd_jumpifability(void);
static void Cmd_jumpifsideaffecting(void);
static void Cmd_jumpifstat(void);
static void Cmd_jumpifstatus3condition(void);
static void Cmd_jumpiftype(void);
static void Cmd_getexp(void);
static void Cmd_checkteamslost(void);
static void Cmd_movevaluescleanup(void);
static void Cmd_setmultihit(void);
static void Cmd_decrementmultihit(void);
static void Cmd_goto(void);
static void Cmd_jumpifbyte(void);
static void Cmd_jumpifhalfword(void);
static void Cmd_jumpifword(void);
static void Cmd_jumpifarrayequal(void);
static void Cmd_jumpifarraynotequal(void);
static void Cmd_setbyte(void);
static void Cmd_addbyte(void);
static void Cmd_subbyte(void);
static void Cmd_copyarray(void);
static void Cmd_copyarraywithindex(void);
static void Cmd_orbyte(void);
static void Cmd_orhalfword(void);
static void Cmd_orword(void);
static void Cmd_bicbyte(void);
static void Cmd_bichalfword(void);
static void Cmd_bicword(void);
static void Cmd_pause(void);
static void Cmd_waitstate(void);
static void Cmd_healthbar_update(void);
static void Cmd_return(void);
static void Cmd_end(void);
static void Cmd_end2(void);
static void Cmd_end3(void);
static void Cmd_jumpifaffectedbyprotect(void);
static void Cmd_call(void);
static void Cmd_jumpiftype2(void);
static void Cmd_jumpifabilitypresent(void);
static void Cmd_endselectionscript(void);
static void Cmd_playanimation(void);
static void Cmd_playanimation_var(void);
static void Cmd_setgraphicalstatchangevalues(void);
static void Cmd_playstatchangeanimation(void);
static void Cmd_moveend(void);
static void Cmd_typecalc2(void);
static void Cmd_returnatktoball(void);
static void Cmd_getswitchedmondata(void);
static void Cmd_switchindataupdate(void);
static void Cmd_switchinanim(void);
static void Cmd_jumpifcantswitch(void);
static void Cmd_openpartyscreen(void);
static void Cmd_switchhandleorder(void);
static void Cmd_switchineffects(void);
static void Cmd_trainerslidein(void);
static void Cmd_playse(void);
static void Cmd_fanfare(void);
static void Cmd_playfaintcry(void);
static void Cmd_endlinkbattle(void);
static void Cmd_returntoball(void);
static void Cmd_handlelearnnewmove(void);
static void Cmd_yesnoboxlearnmove(void);
static void Cmd_yesnoboxstoplearningmove(void);
static void Cmd_hitanimation(void);
static void Cmd_getmoneyreward(void);
static void Cmd_updatebattlermoves(void);
static void Cmd_swapattackerwithtarget(void);
static void Cmd_incrementgamestat(void);
static void Cmd_drawpartystatussummary(void);
static void Cmd_hidepartystatussummary(void);
static void Cmd_jumptocalledmove(void);
static void Cmd_statusanimation(void);
static void Cmd_status2animation(void);
static void Cmd_chosenstatusanimation(void);
static void Cmd_yesnobox(void);
static void Cmd_cancelallactions(void);
static void Cmd_adjustsetdamage(void);
static void Cmd_removeitem(void);
static void Cmd_atknameinbuff1(void);
static void Cmd_drawlvlupbox(void);
static void Cmd_resetsentmonsvalue(void);
static void Cmd_setatktoplayer0(void);
static void Cmd_makevisible(void);
static void Cmd_recordlastability(void);
static void Cmd_buffermovetolearn(void);
static void Cmd_jumpifplayerran(void);
static void Cmd_hpthresholds(void);
static void Cmd_hpthresholds2(void);
static void Cmd_useitemonopponent(void);
static void Cmd_various(void);
static void Cmd_setprotectlike(void);
static void Cmd_tryexplosion(void);
static void Cmd_setatkhptozero(void);
static void Cmd_jumpifnexttargetvalid(void);
static void Cmd_tryhealhalfhealth(void);
static void Cmd_trymirrormove(void);
static void Cmd_setrain(void);
static void Cmd_setreflect(void);
static void Cmd_setseeded(void);
static void Cmd_manipulatedamage(void);
static void Cmd_trysetrest(void);
static void Cmd_jumpifnotfirstturn(void);
static void Cmd_nop(void);
static void Cmd_jumpifcantmakeasleep(void);
static void Cmd_stockpile(void);
static void Cmd_stockpiletobasedamage(void);
static void Cmd_stockpiletohpheal(void);
static void Cmd_negativedamage(void);
static void Cmd_statbuffchange(void);
static void Cmd_normalisebuffs(void);
static void Cmd_setbide(void);
static void Cmd_confuseifrepeatingattackends(void);
static void Cmd_setmultihitcounter(void);
static void Cmd_initmultihitstring(void);
static void Cmd_forcerandomswitch(void);
static void Cmd_tryconversiontypechange(void);
static void Cmd_givepaydaymoney(void);
static void Cmd_setlightscreen(void);
static void Cmd_tryKO(void);
static void Cmd_damagetohalftargethp(void);
static void Cmd_setsandstorm(void);
static void Cmd_weatherdamage(void);
static void Cmd_tryinfatuating(void);
static void Cmd_updatestatusicon(void);
static void Cmd_setmist(void);
static void Cmd_setfocusenergy(void);
static void Cmd_transformdataexecution(void);
static void Cmd_setsubstitute(void);
static void Cmd_mimicattackcopy(void);
static void Cmd_metronome(void);
static void Cmd_dmgtolevel(void);
static void Cmd_psywavedamageeffect(void);
static void Cmd_counterdamagecalculator(void);
static void Cmd_mirrorcoatdamagecalculator(void);
static void Cmd_disablelastusedattack(void);
static void Cmd_trysetencore(void);
static void Cmd_painsplitdmgcalc(void);
static void Cmd_settypetorandomresistance(void);
static void Cmd_setalwayshitflag(void);
static void Cmd_copymovepermanently(void);
static void Cmd_trychoosesleeptalkmove(void);
static void Cmd_setdestinybond(void);
static void Cmd_trysetdestinybondtohappen(void);
static void Cmd_remaininghptopower(void);
static void Cmd_tryspiteppreduce(void);
static void Cmd_healpartystatus(void);
static void Cmd_cursetarget(void);
static void Cmd_trysetspikes(void);
static void Cmd_setforesight(void);
static void Cmd_trysetperishsong(void);
static void Cmd_rolloutdamagecalculation(void);
static void Cmd_jumpifconfusedandstatmaxed(void);
static void Cmd_furycuttercalc(void);
static void Cmd_friendshiptodamagecalculation(void);
static void Cmd_presentdamagecalculation(void);
static void Cmd_setsafeguard(void);
static void Cmd_magnitudedamagecalculation(void);
static void Cmd_jumpifnopursuitswitchdmg(void);
static void Cmd_setsunny(void);
static void Cmd_maxattackhalvehp(void);
static void Cmd_copyfoestats(void);
static void Cmd_rapidspinfree(void);
static void Cmd_setdefensecurlbit(void);
static void Cmd_recoverbasedonsunlight(void);
static void Cmd_hiddenpowercalc(void);
static void Cmd_selectfirstvalidtarget(void);
static void Cmd_trysetfutureattack(void);
static void Cmd_trydobeatup(void);
static void Cmd_setsemiinvulnerablebit(void);
static void Cmd_clearsemiinvulnerablebit(void);
static void Cmd_setminimize(void);
static void Cmd_sethail(void);
static void Cmd_trymemento(void);
static void Cmd_setforcedtarget(void);
static void Cmd_setcharge(void);
static void Cmd_callterrainattack(void);
static void Cmd_cureifburnedparalysedorpoisoned(void);
static void Cmd_settorment(void);
static void Cmd_jumpifnodamage(void);
static void Cmd_settaunt(void);
static void Cmd_trysethelpinghand(void);
static void Cmd_tryswapitems(void);
static void Cmd_trycopyability(void);
static void Cmd_trywish(void);
static void Cmd_trysetroots(void);
static void Cmd_doubledamagedealtifdamaged(void);
static void Cmd_setyawn(void);
static void Cmd_setdamagetohealthdifference(void);
static void Cmd_scaledamagebyhealthratio(void);
static void Cmd_tryswapabilities(void);
static void Cmd_tryimprison(void);
static void Cmd_trysetgrudge(void);
static void Cmd_weightdamagecalculation(void);
static void Cmd_assistattackselect(void);
static void Cmd_trysetmagiccoat(void);
static void Cmd_trysetsnatch(void);
static void Cmd_trygetintimidatetarget(void);
static void Cmd_switchoutabilities(void);
static void Cmd_jumpifhasnohp(void);
static void Cmd_getsecretpowereffect(void);
static void Cmd_pickup(void);
static void Cmd_docastformchangeanimation(void);
static void Cmd_trycastformdatachange(void);
static void Cmd_settypebasedhalvers(void);
static void Cmd_setweatherballtype(void);
static void Cmd_tryrecycleitem(void);
static void Cmd_settypetoterrain(void);
static void Cmd_pursuitdoubles(void);
static void Cmd_snatchsetbattlers(void);
static void Cmd_removelightscreenreflect(void);
static void Cmd_handleballthrow(void);
static void Cmd_givecaughtmon(void);
static void Cmd_trysetcaughtmondexflags(void);
static void Cmd_displaydexinfo(void);
static void Cmd_trygivecaughtmonnick(void);
static void Cmd_subattackerhpbydmg(void);
static void Cmd_removeattackerstatus1(void);
static void Cmd_finishaction(void);
static void Cmd_finishturn(void);

void (* const gBattleScriptingCommandsTable[])(void) =
{
    Cmd_attackcanceler,
    Cmd_accuracycheck,
    Cmd_attackstring,
    Cmd_ppreduce,
    Cmd_critcalc,
    Cmd_damagecalc,
    Cmd_typecalc,
    Cmd_adjustnormaldamage,
    Cmd_adjustnormaldamage2,
    Cmd_attackanimation,
    Cmd_waitanimation,
    Cmd_healthbarupdate,
    Cmd_datahpupdate,
    Cmd_critmessage,
    Cmd_effectivenesssound,
    Cmd_resultmessage,
    Cmd_printstring,
    Cmd_printselectionstring,
    Cmd_waitmessage,
    Cmd_printfromtable,
    Cmd_printselectionstringfromtable,
    Cmd_seteffectwithchance,
    Cmd_seteffectprimary,
    Cmd_seteffectsecondary,
    Cmd_clearstatusfromeffect,
    Cmd_tryfaintmon,
    Cmd_dofaintanimation,
    Cmd_cleareffectsonfaint,
    Cmd_jumpifstatus,
    Cmd_jumpifstatus2,
    Cmd_jumpifability,
    Cmd_jumpifsideaffecting,
    Cmd_jumpifstat,
    Cmd_jumpifstatus3condition,
    Cmd_jumpiftype,
    Cmd_getexp,
    Cmd_checkteamslost,
    Cmd_movevaluescleanup,
    Cmd_setmultihit,
    Cmd_decrementmultihit,
    Cmd_goto,
    Cmd_jumpifbyte,
    Cmd_jumpifhalfword,
    Cmd_jumpifword,
    Cmd_jumpifarrayequal,
    Cmd_jumpifarraynotequal,
    Cmd_setbyte,
    Cmd_addbyte,
    Cmd_subbyte,
    Cmd_copyarray,
    Cmd_copyarraywithindex,
    Cmd_orbyte,
    Cmd_orhalfword,
    Cmd_orword,
    Cmd_bicbyte,
    Cmd_bichalfword,
    Cmd_bicword,
    Cmd_pause,
    Cmd_waitstate,
    Cmd_healthbar_update,
    Cmd_return,
    Cmd_end,
    Cmd_end2,
    Cmd_end3,
    Cmd_jumpifaffectedbyprotect,
    Cmd_call,
    Cmd_jumpiftype2,
    Cmd_jumpifabilitypresent,
    Cmd_endselectionscript,
    Cmd_playanimation,
    Cmd_playanimation_var,
    Cmd_setgraphicalstatchangevalues,
    Cmd_playstatchangeanimation,
    Cmd_moveend,
    Cmd_typecalc2,
    Cmd_returnatktoball,
    Cmd_getswitchedmondata,
    Cmd_switchindataupdate,
    Cmd_switchinanim,
    Cmd_jumpifcantswitch,
    Cmd_openpartyscreen,
    Cmd_switchhandleorder,
    Cmd_switchineffects,
    Cmd_trainerslidein,
    Cmd_playse,
    Cmd_fanfare,
    Cmd_playfaintcry,
    Cmd_endlinkbattle,
    Cmd_returntoball,
    Cmd_handlelearnnewmove,
    Cmd_yesnoboxlearnmove,
    Cmd_yesnoboxstoplearningmove,
    Cmd_hitanimation,
    Cmd_getmoneyreward,
    Cmd_updatebattlermoves,
    Cmd_swapattackerwithtarget,
    Cmd_incrementgamestat,
    Cmd_drawpartystatussummary,
    Cmd_hidepartystatussummary,
    Cmd_jumptocalledmove,
    Cmd_statusanimation,
    Cmd_status2animation,
    Cmd_chosenstatusanimation,
    Cmd_yesnobox,
    Cmd_cancelallactions,
    Cmd_adjustsetdamage,
    Cmd_removeitem,
    Cmd_atknameinbuff1,
    Cmd_drawlvlupbox,
    Cmd_resetsentmonsvalue,
    Cmd_setatktoplayer0,
    Cmd_makevisible,
    Cmd_recordlastability,
    Cmd_buffermovetolearn,
    Cmd_jumpifplayerran,
    Cmd_hpthresholds,
    Cmd_hpthresholds2,
    Cmd_useitemonopponent,
    Cmd_various,
    Cmd_setprotectlike,
    Cmd_tryexplosion,
    Cmd_setatkhptozero,
    Cmd_jumpifnexttargetvalid,
    Cmd_tryhealhalfhealth,
    Cmd_trymirrormove,
    Cmd_setrain,
    Cmd_setreflect,
    Cmd_setseeded,
    Cmd_manipulatedamage,
    Cmd_trysetrest,
    Cmd_jumpifnotfirstturn,
    Cmd_nop,
    Cmd_jumpifcantmakeasleep,
    Cmd_stockpile,
    Cmd_stockpiletobasedamage,
    Cmd_stockpiletohpheal,
    Cmd_negativedamage,
    Cmd_statbuffchange,
    Cmd_normalisebuffs,
    Cmd_setbide,
    Cmd_confuseifrepeatingattackends,
    Cmd_setmultihitcounter,
    Cmd_initmultihitstring,
    Cmd_forcerandomswitch,
    Cmd_tryconversiontypechange,
    Cmd_givepaydaymoney,
    Cmd_setlightscreen,
    Cmd_tryKO,
    Cmd_damagetohalftargethp,
    Cmd_setsandstorm,
    Cmd_weatherdamage,
    Cmd_tryinfatuating,
    Cmd_updatestatusicon,
    Cmd_setmist,
    Cmd_setfocusenergy,
    Cmd_transformdataexecution,
    Cmd_setsubstitute,
    Cmd_mimicattackcopy,
    Cmd_metronome,
    Cmd_dmgtolevel,
    Cmd_psywavedamageeffect,
    Cmd_counterdamagecalculator,
    Cmd_mirrorcoatdamagecalculator,
    Cmd_disablelastusedattack,
    Cmd_trysetencore,
    Cmd_painsplitdmgcalc,
    Cmd_settypetorandomresistance,
    Cmd_setalwayshitflag,
    Cmd_copymovepermanently,
    Cmd_trychoosesleeptalkmove,
    Cmd_setdestinybond,
    Cmd_trysetdestinybondtohappen,
    Cmd_remaininghptopower,
    Cmd_tryspiteppreduce,
    Cmd_healpartystatus,
    Cmd_cursetarget,
    Cmd_trysetspikes,
    Cmd_setforesight,
    Cmd_trysetperishsong,
    Cmd_rolloutdamagecalculation,
    Cmd_jumpifconfusedandstatmaxed,
    Cmd_furycuttercalc,
    Cmd_friendshiptodamagecalculation,
    Cmd_presentdamagecalculation,
    Cmd_setsafeguard,
    Cmd_magnitudedamagecalculation,
    Cmd_jumpifnopursuitswitchdmg,
    Cmd_setsunny,
    Cmd_maxattackhalvehp,
    Cmd_copyfoestats,
    Cmd_rapidspinfree,
    Cmd_setdefensecurlbit,
    Cmd_recoverbasedonsunlight,
    Cmd_hiddenpowercalc,
    Cmd_selectfirstvalidtarget,
    Cmd_trysetfutureattack,
    Cmd_trydobeatup,
    Cmd_setsemiinvulnerablebit,
    Cmd_clearsemiinvulnerablebit,
    Cmd_setminimize,
    Cmd_sethail,
    Cmd_trymemento,
    Cmd_setforcedtarget,
    Cmd_setcharge,
    Cmd_callterrainattack,
    Cmd_cureifburnedparalysedorpoisoned,
    Cmd_settorment,
    Cmd_jumpifnodamage,
    Cmd_settaunt,
    Cmd_trysethelpinghand,
    Cmd_tryswapitems,
    Cmd_trycopyability,
    Cmd_trywish,
    Cmd_trysetroots,
    Cmd_doubledamagedealtifdamaged,
    Cmd_setyawn,
    Cmd_setdamagetohealthdifference,
    Cmd_scaledamagebyhealthratio,
    Cmd_tryswapabilities,
    Cmd_tryimprison,
    Cmd_trysetgrudge,
    Cmd_weightdamagecalculation,
    Cmd_assistattackselect,
    Cmd_trysetmagiccoat,
    Cmd_trysetsnatch,
    Cmd_trygetintimidatetarget,
    Cmd_switchoutabilities,
    Cmd_jumpifhasnohp,
    Cmd_getsecretpowereffect,
    Cmd_pickup,
    Cmd_docastformchangeanimation,
    Cmd_trycastformdatachange,
    Cmd_settypebasedhalvers,
    Cmd_setweatherballtype,
    Cmd_tryrecycleitem,
    Cmd_settypetoterrain,
    Cmd_pursuitdoubles,
    Cmd_snatchsetbattlers,
    Cmd_removelightscreenreflect,
    Cmd_handleballthrow,
    Cmd_givecaughtmon,
    Cmd_trysetcaughtmondexflags,
    Cmd_displaydexinfo,
    Cmd_trygivecaughtmonnick,
    Cmd_subattackerhpbydmg,
    Cmd_removeattackerstatus1,
    Cmd_finishaction,
    Cmd_finishturn,
};

struct StatFractions
{
    u8 dividend;
    u8 divisor;
};

static const struct StatFractions sAccuracyStageRatios[] =
{
    { 33, 100},
    { 36, 100},
    { 43, 100},
    { 50, 100},
    { 60, 100},
    { 75, 100},
    { 1, 1},
    {133, 100},
    {166, 100},
    { 2, 1},
    {233, 100},
    {133, 50},
    { 3, 1},
};


static const u16 sCriticalHitChance[] = {16, 8, 4, 3, 2};

static const u32 sStatusFlagsForMoveEffects[60] =
{
    [1] = (1 << 0 | 1 << 1 | 1 << 2),
    [2] = (1 << 3),
    [3] = (1 << 4),
    [4] = (1 << 5),
    [5] = (1 << 6),
    [6] = (1 << 7),
    [7] = (1 << 0 | 1 << 1 | 1 << 2),
    [8] = (1 << 3),
    [10] = (1 << 4 | 1 << 5 | 1 << 6),
    [12] = (1 << 12),
    [13] = (1 << 13 | 1 << 14 | 1 << 15),
    [29] = (1 << 22),
    [32] = (1 << 26),
    [33] = (1 << 27),
    [53] = (1 << 10 | 1 << 11),
};

static const u8 *const sMoveEffectBS_Ptrs[] =
{
    [0] = BattleScript_MoveEffectSleep,
    [1] = BattleScript_MoveEffectSleep,
    [2] = BattleScript_MoveEffectPoison,
    [3] = BattleScript_MoveEffectBurn,
    [4] = BattleScript_MoveEffectFreeze,
    [5] = BattleScript_MoveEffectParalysis,
    [6] = BattleScript_MoveEffectToxic,
    [7] = BattleScript_MoveEffectConfusion,
    [8] = BattleScript_MoveEffectSleep,
    [9] = BattleScript_MoveEffectSleep,
    [10] = BattleScript_MoveEffectUproar,
    [11] = BattleScript_MoveEffectPayDay,
    [12] = BattleScript_MoveEffectSleep,
    [13] = BattleScript_MoveEffectWrap,
    [14] = BattleScript_MoveEffectRecoil,
    [15] = BattleScript_MoveEffectSleep,
    [16] = BattleScript_MoveEffectSleep,
    [17] = BattleScript_MoveEffectSleep,
    [18] = BattleScript_MoveEffectSleep,
    [19] = BattleScript_MoveEffectSleep,
    [20] = BattleScript_MoveEffectSleep,
    [21] = BattleScript_MoveEffectSleep,
    [22] = BattleScript_MoveEffectSleep,
    [23] = BattleScript_MoveEffectSleep,
    [24] = BattleScript_MoveEffectSleep,
    [25] = BattleScript_MoveEffectSleep,
    [26] = BattleScript_MoveEffectSleep,
    [27] = BattleScript_MoveEffectSleep,
    [28] = BattleScript_MoveEffectSleep,
    [29] = BattleScript_MoveEffectSleep,
    [30] = BattleScript_MoveEffectSleep,
    [31] = BattleScript_MoveEffectSleep,
    [32] = BattleScript_MoveEffectSleep,
    [33] = BattleScript_MoveEffectSleep,
    [34] = BattleScript_MoveEffectSleep,
    [35] = BattleScript_MoveEffectSleep,
    [36] = BattleScript_MoveEffectSleep,
    [37] = BattleScript_MoveEffectSleep,
    [38] = BattleScript_MoveEffectRecoil,
};

static const struct WindowTemplate sUnusedWinTemplate =
{
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 3,
    .width = 7,
    .height = 15,
    .paletteNum = 31,
    .baseBlock = 0x3F
};

static const u16 sLevelUpBanner_Pal[] = INCBIN_U16("graphics/battle_interface/level_up_banner.gbapal");
static const u32 sLevelUpBanner_Gfx[] = INCBIN_U32("graphics/battle_interface/level_up_banner.4bpp.lz");


static const u8 sRubyLevelUpStatBoxStats[] =
{
    58, 62, 59,
    63, 60, 61
};

static const struct OamData sOamData_MonIconOnLvlUpBanner =
{
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((2 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};

static const struct SpriteTemplate sSpriteTemplate_MonIconOnLvlUpBanner =
{
    .tileTag = 55130,
    .paletteTag = 55130,
    .oam = &sOamData_MonIconOnLvlUpBanner,
    .anims = gDummySpriteAnimTable,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_MonIconOnLvlUpBanner
};

static const u16 sProtectSuccessRates[] = {65535, 65535 / 2, 65535 / 4, 65535 / 8};





static const u16 sMovesForbiddenToCopy[] =
{
    118,
    165,
    166,
    102,
    0xFFFE,
    68,
    243,
    182,
    197,
    203,
    194,
    214,
    168,
    266,
    289,
    270,
    343,
    271,
    264,
    0xFFFF
};

static const u8 sFlailHpScaleToPowerTable[] =
{
    1, 200,
    4, 150,
    9, 100,
    16, 80,
    32, 40,
    48, 20
};

static const u16 sNaturePowerMoves[] =
{
    [0] = 78,
    [1] = 75,
    [2] = 89,
    [3] = 56,
    [4] = 57,
    [5] = 61,
    [6] = 157,
    [7] = 247,
    [8] = 129,
    [9] = 129
};


static const u16 sWeightToDamageTable[] =
{
    100, 20,
    250, 40,
    500, 60,
    1000, 80,
    2000, 100,
    0xFFFF, 0xFFFF
};

struct PickupItem
{
    u16 itemId;
    u8 chance;
};

static const struct PickupItem sPickupItems[] =
{
    { 139, 15 },
    { 133, 25 },
    { 134, 35 },
    { 135, 45 },
    { 136, 55 },
    { 137, 65 },
    { 140, 75 },
    { 298, 80 },
    { 69, 85 },
    { 68, 90 },
    { 110, 95 },
    { 163, 96 },
    { 164, 97 },
    { 165, 98 },
    { 166, 99 },
    { 167, 1 },

};

static const u8 sTerrainToType[] =
{
    [0] = 12,
    [1] = 12,
    [2] = 4,
    [3] = 11,
    [4] = 11,
    [5] = 11,
    [6] = 5,
    [7] = 5,
    [8] = 0,
    [9] = 0,
};


static const u8 sBallCatchBonuses[] =
{
    [2 - 2] = 20,
    [3 - 2] = 15,
    [4 - 2] = 10,
    [5 - 2] = 15
};


static const u32 sUnused = 0xFF7EAE60;

static void Cmd_attackcanceler(void)
{
    s32 i;

    if (gBattleOutcome != 0)
    {
        gCurrentActionFuncId = 12;
        return;
    }
    if (gBattleMons[gBattlerAttacker].hp == 0 && !(gHitMarker & (1 << 9)))
    {
        gHitMarker |= (1 << 19);
        gBattlescriptCurrInstr = BattleScript_MoveEnd;
        return;
    }
    if (AtkCanceller_UnableToUseMove())
        return;
    if (AbilityBattleEffects(2, gBattlerTarget, 0, 0, 0))
        return;
    if (!gBattleMons[gBattlerAttacker].pp[gCurrMovePos] && gCurrentMove != 165 && !(gHitMarker & ((1 << 23) | (1 << 9)))
     && !(gBattleMons[gBattlerAttacker].status2 & (1 << 12)))
    {
        gBattlescriptCurrInstr = BattleScript_NoPPForMove;
        gMoveResultFlags |= (1 << 0);
        return;
    }

    gHitMarker &= ~(1 << 23);

    if (!(gHitMarker & (1 << 25)) && !(gBattleMons[gBattlerAttacker].status2 & (1 << 12)))
    {
        i = IsMonDisobedient();
        switch (i)
        {
        case 0:
            break;
        case 2:
            gHitMarker |= (1 << 25);
            return;
        default:
            gMoveResultFlags |= (1 << 0);
            return;
        }
    }

    gHitMarker |= (1 << 25);

    if (gProtectStructs[gBattlerTarget].bounceMove && gBattleMoves[gCurrentMove].flags & (1 << 2))
    {
        PressurePPLose(gBattlerAttacker, gBattlerTarget, 277);
        gProtectStructs[gBattlerTarget].bounceMove = 0;
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_MagicCoatBounce;
        return;
    }

    for (i = 0; i < gBattlersCount; i++)
    {
        if ((gProtectStructs[gBattlerByTurnOrder[i]].stealMove) && gBattleMoves[gCurrentMove].flags & (1 << 3))
        {
            PressurePPLose(gBattlerAttacker, gBattlerByTurnOrder[i], 289);
            gProtectStructs[gBattlerByTurnOrder[i]].stealMove = 0;
            gBattleScripting.battler = gBattlerByTurnOrder[i];
            BattleScriptPushCursor();
            gBattlescriptCurrInstr = BattleScript_SnatchedMove;
            return;
        }
    }

    if (gSpecialStatuses[gBattlerTarget].lightningRodRedirected)
    {
        gSpecialStatuses[gBattlerTarget].lightningRodRedirected = 0;
        gLastUsedAbility = 31;
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_TookAttack;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else if (((gProtectStructs[gBattlerTarget].protected) && (gBattleMoves[gCurrentMove].flags & (1 << 1)))
     && (gCurrentMove != 174 || ((gBattleMons[gBattlerAttacker].type1 == 7 || gBattleMons[gBattlerAttacker].type2 == 7)))
     && ((!IsTwoTurnsMove(gCurrentMove) || (gBattleMons[gBattlerAttacker].status2 & (1 << 12)))))
    {
        CancelMultiTurnMoves(gBattlerAttacker);
        gMoveResultFlags |= (1 << 0);
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        gBattleCommunication[6] = 1;
        gBattlescriptCurrInstr++;
    }
    else
    {
        gBattlescriptCurrInstr++;
    }
}

static void JumpIfMoveFailed(u8 adder, u16 move)
{
    const u8 *BS_ptr = gBattlescriptCurrInstr + adder;
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        BS_ptr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        TrySetDestinyBondToHappen();
        if (AbilityBattleEffects(3, gBattlerTarget, 0, 0, move))
            return;
    }
    gBattlescriptCurrInstr = BS_ptr;
}

static void Cmd_jumpifaffectedbyprotect(void)
{
    if (((gProtectStructs[gBattlerTarget].protected) && (gBattleMoves[gCurrentMove].flags & (1 << 1))))
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(5, 0);
        gBattleCommunication[6] = 1;
    }
    else
    {
        gBattlescriptCurrInstr += 5;
    }
}

static bool8 JumpIfMoveAffectedByProtect(u16 move)
{
    bool8 affected = 0;
    if (((gProtectStructs[gBattlerTarget].protected) && (gBattleMoves[gCurrentMove].flags & (1 << 1))))
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        gBattleCommunication[6] = 1;
        affected = 1;
    }
    return affected;
}

static bool8 AccuracyCalcHelper(u16 move)
{
    if (gStatuses3[gBattlerTarget] & (1 << 3 | 1 << 4) && gDisableStructs[gBattlerTarget].battlerWithSureHit == gBattlerAttacker)
    {
        JumpIfMoveFailed(7, move);
        return 1;
    }

    if (!(gHitMarker & (1 << 16)) && gStatuses3[gBattlerTarget] & (1 << 6))
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        return 1;
    }

    gHitMarker &= ~(1 << 16);

    if (!(gHitMarker & (1 << 17)) && gStatuses3[gBattlerTarget] & (1 << 7))
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        return 1;
    }

    gHitMarker &= ~(1 << 17);

    if (!(gHitMarker & (1 << 18)) && gStatuses3[gBattlerTarget] & (1 << 18))
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        return 1;
    }

    gHitMarker &= ~(1 << 18);

    if ((((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))) && (gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2))) && gBattleMoves[move].effect == 152)
     || (gBattleMoves[move].effect == 17 || gBattleMoves[move].effect == 78))
    {
        JumpIfMoveFailed(7, move);
        return 1;
    }

    return 0;
}

static void Cmd_accuracycheck(void)
{
    u16 move = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8));

    if ((gBattleTypeFlags & (1 << 4)
        && !BtlCtrl_OakOldMan_TestState2Flag(1)
        && gBattleMoves[move].power != 0
        && GetBattlerSide(gBattlerAttacker) == 0)
     || (gBattleTypeFlags & (1 << 4)
        && !BtlCtrl_OakOldMan_TestState2Flag(2)
        && gBattleMoves[move].power == 0
        && GetBattlerSide(gBattlerAttacker) == 0)
     || (gBattleTypeFlags & (1 << 16)))
    {
        JumpIfMoveFailed(7, move);
        return;
    }
    if (move == 0xFFFE || move == 0xFFFF)
    {
        if (gStatuses3[gBattlerTarget] & (1 << 3 | 1 << 4) && move == 0xFFFF && gDisableStructs[gBattlerTarget].battlerWithSureHit == gBattlerAttacker)
            gBattlescriptCurrInstr += 7;
        else if (gStatuses3[gBattlerTarget] & ((1 << 6) | (1 << 7) | (1 << 18)))
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        else if (!JumpIfMoveAffectedByProtect(0))
            gBattlescriptCurrInstr += 7;
    }
    else
    {
        u8 type, moveAcc, holdEffect, param;
        s8 buff;
        u16 calc;

        if (move == 0)
            move = gCurrentMove;

        { if (gBattleStruct->dynamicMoveType) type = gBattleStruct->dynamicMoveType & ((1 << 6) - 1); else type = gBattleMoves[move].type; };

        if (JumpIfMoveAffectedByProtect(move))
            return;
        if (AccuracyCalcHelper(move))
            return;

        if (gBattleMons[gBattlerTarget].status2 & (1 << 29))
        {
            u8 acc = gBattleMons[gBattlerAttacker].statStages[6];
            buff = acc;
        }
        else
        {
            u8 acc = gBattleMons[gBattlerAttacker].statStages[6];
            buff = acc + 6 - gBattleMons[gBattlerTarget].statStages[7];
        }

        if (buff < 0)
            buff = 0;
        if (buff > 12)
            buff = 12;

        moveAcc = gBattleMoves[move].accuracy;

        if (((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))) && gBattleWeather & ((1 << 5) | (1 << 6)) && gBattleMoves[move].effect == 152)
            moveAcc = 50;

        calc = sAccuracyStageRatios[buff].dividend * moveAcc;
        calc /= sAccuracyStageRatios[buff].divisor;

        if (gBattleMons[gBattlerAttacker].ability == 14)
            calc = (calc * 130) / 100;
        if (((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))) && gBattleMons[gBattlerTarget].ability == 8 && gBattleWeather & ((1 << 3) | (1 << 4)))
            calc = (calc * 80) / 100;
        if (gBattleMons[gBattlerAttacker].ability == 55 && (type < 9))
            calc = (calc * 80) / 100;

        if (gBattleMons[gBattlerTarget].item == 175)
        {
            holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
            param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
        }
        else
        {
            holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
            param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
        }

        gPotentialItemEffectBattler = gBattlerTarget;

        if (holdEffect == 22)
            calc = (calc * (100 - param)) / 100;


        if ((Random() % 100 + 1) > calc)
        {
            gMoveResultFlags |= (1 << 0);
            if (gBattleTypeFlags & (1 << 0)
             && (gBattleMoves[move].target == (1 << 3) || gBattleMoves[move].target == (1 << 5)))
                gBattleCommunication[6] = 2;
            else
                gBattleCommunication[6] = 0;

            CheckWonderGuardAndLevitate();
        }
        JumpIfMoveFailed(7, move);
    }
}

static void Cmd_attackstring(void)
{
    if (gBattleControllerExecFlags)
        return;

    if (!(gHitMarker & ((1 << 9) | (1 << 10))))
    {
        PrepareStringBattle(4, gBattlerAttacker);
        gHitMarker |= (1 << 10);
    }
    gBattlescriptCurrInstr++;
    gBattleCommunication[7] = 0;
}

static void Cmd_ppreduce(void)
{
    s32 ppToDeduct = 1;

    if (gBattleControllerExecFlags)
        return;

    if (!gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure)
    {
        switch (gBattleMoves[gCurrentMove].target)
        {
        case (1 << 5):
            ppToDeduct += AbilityBattleEffects(18, gBattlerAttacker, 46, 0, 0);
            break;
        case (1 << 3):
        case (1 << 6):
            ppToDeduct += AbilityBattleEffects(16, gBattlerAttacker, 46, 0, 0);
            break;
        default:
            if (gBattlerAttacker != gBattlerTarget && gBattleMons[gBattlerTarget].ability == 46)
                ppToDeduct++;
            break;
        }
    }

    if (!(gHitMarker & ((1 << 11) | (1 << 9))) && gBattleMons[gBattlerAttacker].pp[gCurrMovePos])
    {
        gProtectStructs[gBattlerAttacker].notFirstStrike = 1;

        if (gBattleMons[gBattlerAttacker].pp[gCurrMovePos] > ppToDeduct)
            gBattleMons[gBattlerAttacker].pp[gCurrMovePos] -= ppToDeduct;
        else
            gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = 0;

        if ((!(gBattleMons[gBattlerAttacker].status2 & (1 << 21)) && !(gDisableStructs[gBattlerAttacker].mimickedMoves & gBitTable[gCurrMovePos])))
        {
            gActiveBattler = gBattlerAttacker;
            BtlController_EmitSetMonData(BUFFER_A, REQUEST_PPMOVE1_BATTLE + gCurrMovePos, 0,
                                         sizeof(gBattleMons[gBattlerAttacker].pp[gCurrMovePos]),
                                         &gBattleMons[gBattlerAttacker].pp[gCurrMovePos]);
            MarkBattlerForControllerExec(gBattlerAttacker);
        }
    }

    gHitMarker &= ~(1 << 11);
    gBattlescriptCurrInstr++;
}

static void Cmd_critcalc(void)
{
    u8 holdEffect;
    u16 item, critChance;

    item = gBattleMons[gBattlerAttacker].item;

    if (item == 175)
        holdEffect = gEnigmaBerries[gBattlerAttacker].holdEffect;
    else
        holdEffect = ItemId_GetHoldEffect(item);

    gPotentialItemEffectBattler = gBattlerAttacker;

    critChance = 2 * ((gBattleMons[gBattlerAttacker].status2 & (1 << 20)) != 0)
                + (gBattleMoves[gCurrentMove].effect == 43)
                + (gBattleMoves[gCurrentMove].effect == 75)
                + (gBattleMoves[gCurrentMove].effect == 200)
                + (gBattleMoves[gCurrentMove].effect == 209)
                + (holdEffect == 41)
                + 2 * (holdEffect == 63 && gBattleMons[gBattlerAttacker].species == 113)
                + 2 * (holdEffect == 66 && gBattleMons[gBattlerAttacker].species == 83);

    if (critChance >= (sizeof(sCriticalHitChance) / sizeof((sCriticalHitChance)[0])))
        critChance = (sizeof(sCriticalHitChance) / sizeof((sCriticalHitChance)[0])) - 1;

    if ((gBattleMons[gBattlerTarget].ability != 4 && gBattleMons[gBattlerTarget].ability != 75)
     && !(gStatuses3[gBattlerAttacker] & (1 << 15))
     && !(gBattleTypeFlags & (1 << 9))
     && !(Random() % sCriticalHitChance[critChance])
     && (!(gBattleTypeFlags & (1 << 4)) || BtlCtrl_OakOldMan_TestState2Flag(1))
     && !(gBattleTypeFlags & (1 << 16)))
        gCritMultiplier = 2;
    else
        gCritMultiplier = 1;

    gBattlescriptCurrInstr++;
}

static void Cmd_damagecalc(void)
{
    u16 sideStatus = gSideStatuses[((GetBattlerPosition(gBattlerTarget) & 1))];
    gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerTarget], gCurrentMove,
                                            sideStatus, gDynamicBasePower,
                                            gBattleStruct->dynamicMoveType, gBattlerAttacker, gBattlerTarget);
    gBattleMoveDamage = gBattleMoveDamage * gCritMultiplier * gBattleScripting.dmgMultiplier;

    if (gStatuses3[gBattlerAttacker] & (1 << 9) && gBattleMoves[gCurrentMove].type == 13)
        gBattleMoveDamage *= 2;
    if (gProtectStructs[gBattlerAttacker].helpingHand)
        gBattleMoveDamage = gBattleMoveDamage * 15 / 10;

    gBattlescriptCurrInstr++;
}

void AI_CalcDmg(u8 attacker, u8 defender)
{
    u16 sideStatus = gSideStatuses[((GetBattlerPosition(defender) & 1))];
    gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[attacker], &gBattleMons[defender], gCurrentMove,
                                            sideStatus, gDynamicBasePower,
                                            gBattleStruct->dynamicMoveType, attacker, defender);
    gDynamicBasePower = 0;
    gBattleMoveDamage = gBattleMoveDamage * gCritMultiplier * gBattleScripting.dmgMultiplier;

    if (gStatuses3[attacker] & (1 << 9) && gBattleMoves[gCurrentMove].type == 13)
        gBattleMoveDamage *= 2;
    if (gProtectStructs[attacker].helpingHand)
        gBattleMoveDamage = gBattleMoveDamage * 15 / 10;
}

static void ModulateDmgByType(u8 multiplier)
{
    gBattleMoveDamage = gBattleMoveDamage * multiplier / 10;
    if (gBattleMoveDamage == 0 && multiplier != 0)
        gBattleMoveDamage = 1;

    switch (multiplier)
    {
    case 0:
        gMoveResultFlags |= (1 << 3);
        gMoveResultFlags &= ~(1 << 2);
        gMoveResultFlags &= ~(1 << 1);
        break;
    case 5:
        if (gBattleMoves[gCurrentMove].power && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (gMoveResultFlags & (1 << 1))
                gMoveResultFlags &= ~(1 << 1);
            else
                gMoveResultFlags |= (1 << 2);
        }
        break;
    case 20:
        if (gBattleMoves[gCurrentMove].power && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (gMoveResultFlags & (1 << 2))
                gMoveResultFlags &= ~(1 << 2);
            else
                gMoveResultFlags |= (1 << 1);
        }
        break;
    }
}

static void Cmd_typecalc(void)
{
    s32 i = 0;
    u8 moveType;

    if (gCurrentMove == 165)
    {
        gBattlescriptCurrInstr++;
        return;
    }

    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & ((1 << 6) - 1); else moveType = gBattleMoves[gCurrentMove].type; };


    if (((gBattleMons[gBattlerAttacker].type1 == moveType || gBattleMons[gBattlerAttacker].type2 == moveType)))
    {
        gBattleMoveDamage = gBattleMoveDamage * 15;
        gBattleMoveDamage = gBattleMoveDamage / 10;
    }

    if (gBattleMons[gBattlerTarget].ability == 26 && moveType == 4)
    {
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gMoveResultFlags |= ((1 << 0) | (1 << 3));
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        gBattleCommunication[6] = 4;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                if (gBattleMons[gBattlerTarget].status2 & (1 << 29))
                    break;
                i += 3;
                continue;
            }
            else if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1)
                    ModulateDmgByType(((gTypeEffectiveness[i + 2])));

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2 &&
                    gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2)
                    ModulateDmgByType(((gTypeEffectiveness[i + 2])));
            }
            i += 3;
        }
    }

    if (gBattleMons[gBattlerTarget].ability == 25 && AttacksThisTurn(gBattlerAttacker, gCurrentMove) == 2
     && (!(gMoveResultFlags & (1 << 1)) || ((gMoveResultFlags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
     && gBattleMoves[gCurrentMove].power)
    {
        gLastUsedAbility = 25;
        gMoveResultFlags |= (1 << 0);
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        gBattleCommunication[6] = 3;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    if (gMoveResultFlags & (1 << 3))
        gProtectStructs[gBattlerAttacker].targetNotAffected = 1;

    gBattlescriptCurrInstr++;
}

static void CheckWonderGuardAndLevitate(void)
{
    u8 flags = 0;
    s32 i = 0;
    u8 moveType;

    if (gCurrentMove == 165 || !gBattleMoves[gCurrentMove].power)
        return;

    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & ((1 << 6) - 1); else moveType = gBattleMoves[gCurrentMove].type; };

    if (gBattleMons[gBattlerTarget].ability == 26 && moveType == 4)
    {
        gLastUsedAbility = 26;
        gBattleCommunication[6] = 4;
        RecordAbilityBattle(gBattlerTarget, 26);
        return;
    }

    while (((gTypeEffectiveness[i + 0])) != 0xFF)
    {
        if (((gTypeEffectiveness[i + 0])) == 0xFE)
        {
            if (gBattleMons[gBattlerTarget].status2 & (1 << 29))
                break;
            i += 3;
            continue;
        }
        if (((gTypeEffectiveness[i + 0])) == moveType)
        {

            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1
                && ((gTypeEffectiveness[i + 2])) == 0)
            {
                gMoveResultFlags |= (1 << 3);
                gProtectStructs[gBattlerAttacker].targetNotAffected = 1;
            }
            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2 &&
                gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2 &&
                ((gTypeEffectiveness[i + 2])) == 0)
            {
                gMoveResultFlags |= (1 << 3);
                gProtectStructs[gBattlerAttacker].targetNotAffected = 1;
            }


            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1 && ((gTypeEffectiveness[i + 2])) == 20)
                flags |= 1;
            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
             && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
             && ((gTypeEffectiveness[i + 2])) == 20)
                flags |= 1;


            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1 && ((gTypeEffectiveness[i + 2])) == 5)
                flags |= 2;
            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
             && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
             && ((gTypeEffectiveness[i + 2])) == 5)
                flags |= 2;
        }
        i += 3;
    }

    if (gBattleMons[gBattlerTarget].ability == 25 && AttacksThisTurn(gBattlerAttacker, gCurrentMove) == 2)
    {
        if (((flags & 2) || !(flags & 1)) && gBattleMoves[gCurrentMove].power)
        {
            gLastUsedAbility = 25;
            gBattleCommunication[6] = 3;
            RecordAbilityBattle(gBattlerTarget, 25);
        }
    }
}


static void ModulateDmgByType2(u8 multiplier, u16 move, u8 *flags)
{
    gBattleMoveDamage = gBattleMoveDamage * multiplier / 10;
    if (gBattleMoveDamage == 0 && multiplier != 0)
        gBattleMoveDamage = 1;

    switch (multiplier)
    {
    case 0:
        *flags |= (1 << 3);
        *flags &= ~(1 << 2);
        *flags &= ~(1 << 1);
        break;
    case 5:
        if (gBattleMoves[move].power && !(*flags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (*flags & (1 << 1))
                *flags &= ~(1 << 1);
            else
                *flags |= (1 << 2);
        }
        break;
    case 20:
        if (gBattleMoves[move].power && !(*flags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (*flags & (1 << 2))
                *flags &= ~(1 << 2);
            else
                *flags |= (1 << 1);
        }
        break;
    }
}

u8 TypeCalc(u16 move, u8 attacker, u8 defender)
{
    s32 i = 0;
    u8 flags = 0;
    u8 moveType;

    if (move == 165)
        return 0;

    moveType = gBattleMoves[move].type;


    if (((gBattleMons[attacker].type1 == moveType || gBattleMons[attacker].type2 == moveType)))
    {
        gBattleMoveDamage = gBattleMoveDamage * 15;
        gBattleMoveDamage = gBattleMoveDamage / 10;
    }

    if (gBattleMons[defender].ability == 26 && moveType == 4)
    {
        flags |= ((1 << 0) | (1 << 3));
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                if (gBattleMons[defender].status2 & (1 << 29))
                    break;
                i += 3;
                continue;
            }

            else if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[defender].type1)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[defender].type2 &&
                    gBattleMons[defender].type1 != gBattleMons[defender].type2)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);
            }
            i += 3;
        }
    }

    if (gBattleMons[defender].ability == 25 && !(flags & (1 << 0))
        && AttacksThisTurn(attacker, move) == 2
        && (!(flags & (1 << 1)) || ((flags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
        && gBattleMoves[move].power)
    {
        flags |= (1 << 0);
    }
    return flags;
}

u8 AI_TypeCalc(u16 move, u16 targetSpecies, u8 targetAbility)
{
    s32 i = 0;
    u8 flags = 0;
    u8 type1 = gSpeciesInfo[targetSpecies].types[0], type2 = gSpeciesInfo[targetSpecies].types[1];
    u8 moveType;

    if (move == 165)
        return 0;

    moveType = gBattleMoves[move].type;

    if (targetAbility == 26 && moveType == 4)
    {
        flags = (1 << 0) | (1 << 3);
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                i += 3;
                continue;
            }
            if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == type1)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);

                if (((gTypeEffectiveness[i + 1])) == type2 && type1 != type2)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);
            }
            i += 3;
        }
    }
    if (targetAbility == 25
     && (!(flags & (1 << 1)) || ((flags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
     && gBattleMoves[move].power)
        flags |= (1 << 3);
    return flags;
}


static inline void ApplyRandomDmgMultiplier(void)
{
    u16 rand = Random();
    u16 randPercent = 100 - (rand % 16);

    if (gBattleMoveDamage != 0)
    {
        gBattleMoveDamage *= randPercent;
        gBattleMoveDamage /= 100;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
    }
}

static void Unused_ApplyRandomDmgMultiplier(void)
{
    ApplyRandomDmgMultiplier();
}

static void Cmd_adjustnormaldamage(void)
{
    u8 holdEffect, param;

    ApplyRandomDmgMultiplier();

    if (gBattleMons[gBattlerTarget].item == 175)
    {
        holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
        param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, holdEffect);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }
    if (!(gBattleMons[gBattlerTarget].status2 & (1 << 24))
     && (gBattleMoves[gCurrentMove].effect == 101 || gProtectStructs[gBattlerTarget].endured || gSpecialStatuses[gBattlerTarget].focusBanded)
     && gBattleMons[gBattlerTarget].hp <= gBattleMoveDamage)
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
        if (gProtectStructs[gBattlerTarget].endured)
        {
            gMoveResultFlags |= (1 << 6);
        }
        else if (gSpecialStatuses[gBattlerTarget].focusBanded)
        {
            gMoveResultFlags |= (1 << 7);
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
        }
    }
    gBattlescriptCurrInstr++;
}


static void Cmd_adjustnormaldamage2(void)
{
    u8 holdEffect, param;

    ApplyRandomDmgMultiplier();

    if (gBattleMons[gBattlerTarget].item == 175)
    {
        holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
        param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, holdEffect);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }
    if (!(gBattleMons[gBattlerTarget].status2 & (1 << 24))
     && (gProtectStructs[gBattlerTarget].endured || gSpecialStatuses[gBattlerTarget].focusBanded)
     && gBattleMons[gBattlerTarget].hp <= gBattleMoveDamage)
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
        if (gProtectStructs[gBattlerTarget].endured)
        {
            gMoveResultFlags |= (1 << 6);
        }
        else if (gSpecialStatuses[gBattlerTarget].focusBanded)
        {
            gMoveResultFlags |= (1 << 7);
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_attackanimation(void)
{
    if (gBattleControllerExecFlags)
        return;

    if ((gHitMarker & (1 << 7)) && (gCurrentMove != 144 && gCurrentMove != 164))
    {
        BattleScriptPush(gBattlescriptCurrInstr + 1);
        gBattlescriptCurrInstr = BattleScript_Pausex20;
        gBattleScripting.animTurn++;
        gBattleScripting.animTargetsHit++;
    }
    else
    {
        if ((gBattleMoves[gCurrentMove].target & (1 << 3)
            || gBattleMoves[gCurrentMove].target & (1 << 5)
            || gBattleMoves[gCurrentMove].target & (1 << 0))
            && gBattleScripting.animTargetsHit)
        {
            gBattlescriptCurrInstr++;
            return;
        }
        if (!(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            gActiveBattler = gBattlerAttacker;

            BtlController_EmitMoveAnimation(BUFFER_A, gCurrentMove, gBattleScripting.animTurn, gBattleMovePower, gBattleMoveDamage, gBattleMons[gBattlerAttacker].friendship, &gDisableStructs[gBattlerAttacker]);
            gBattleScripting.animTurn++;
            gBattleScripting.animTargetsHit++;
            MarkBattlerForControllerExec(gBattlerAttacker);
            gBattlescriptCurrInstr++;
        }
        else
        {
            BattleScriptPush(gBattlescriptCurrInstr + 1);
            gBattlescriptCurrInstr = BattleScript_Pausex20;
        }
    }
}

static void Cmd_waitanimation(void)
{
    if (gBattleControllerExecFlags == 0)
        gBattlescriptCurrInstr++;
}

static void Cmd_healthbarupdate(void)
{
    if (gBattleControllerExecFlags)
        return;

    if (!(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

        if (gBattleMons[gActiveBattler].status2 & (1 << 24) && gDisableStructs[gActiveBattler].substituteHP && !(gHitMarker & (1 << 8)))
        {
            PrepareStringBattle(128, gActiveBattler);
        }
        else
        {
            s16 healthValue;

            s32 currDmg = gBattleMoveDamage;
            s32 maxPossibleDmgValue = 10000;

            if (currDmg <= maxPossibleDmgValue)
                healthValue = currDmg;
            else
                healthValue = maxPossibleDmgValue;

            BtlController_EmitHealthBarUpdate(BUFFER_A, healthValue);
            MarkBattlerForControllerExec(gActiveBattler);

            if (GetBattlerSide(gActiveBattler) == 0 && gBattleMoveDamage > 0)
                gBattleResults.playerMonWasDamaged = 1;
        }
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_datahpupdate(void)
{
    u32 moveType;

    if (gBattleControllerExecFlags)
        return;

    if (gBattleStruct->dynamicMoveType == 0)
        moveType = gBattleMoves[gCurrentMove].type;
    else if (!(gBattleStruct->dynamicMoveType & (1 << 6)))
        moveType = gBattleStruct->dynamicMoveType & ((1 << 6) - 1);
    else
        moveType = gBattleMoves[gCurrentMove].type;

    if (!(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gBattleMons[gActiveBattler].status2 & (1 << 24) && gDisableStructs[gActiveBattler].substituteHP && !(gHitMarker & (1 << 8)))
        {
            if (gDisableStructs[gActiveBattler].substituteHP >= gBattleMoveDamage)
            {
                if (gSpecialStatuses[gActiveBattler].dmg == 0)
                    gSpecialStatuses[gActiveBattler].dmg = gBattleMoveDamage;
                gDisableStructs[gActiveBattler].substituteHP -= gBattleMoveDamage;
                gHpDealt = gBattleMoveDamage;
            }
            else
            {
                if (gSpecialStatuses[gActiveBattler].dmg == 0)
                    gSpecialStatuses[gActiveBattler].dmg = gDisableStructs[gActiveBattler].substituteHP;
                gHpDealt = gDisableStructs[gActiveBattler].substituteHP;
                gDisableStructs[gActiveBattler].substituteHP = 0;
            }

            if (gDisableStructs[gActiveBattler].substituteHP == 0)
            {
                gBattlescriptCurrInstr += 2;
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_SubstituteFade;
                return;
            }
        }
        else
        {
            gHitMarker &= ~(1 << 8);
            if (gBattleMoveDamage < 0)
            {
                gBattleMons[gActiveBattler].hp -= gBattleMoveDamage;
                if (gBattleMons[gActiveBattler].hp > gBattleMons[gActiveBattler].maxHP)
                    gBattleMons[gActiveBattler].hp = gBattleMons[gActiveBattler].maxHP;

            }
            else
            {
                if (gHitMarker & (1 << 5))
                {
                    gHitMarker &= ~(1 << 5);
                }
                else
                {
                    gTakenDmg[gActiveBattler] += gBattleMoveDamage;
                    if (gBattlescriptCurrInstr[1] == 0)
                        gTakenDmgByBattler[gActiveBattler] = gBattlerAttacker;
                    else
                        gTakenDmgByBattler[gActiveBattler] = gBattlerTarget;
                }

                if (gBattleMons[gActiveBattler].hp > gBattleMoveDamage)
                {
                    gBattleMons[gActiveBattler].hp -= gBattleMoveDamage;
                    gHpDealt = gBattleMoveDamage;
                }
                else
                {
                    gHpDealt = gBattleMons[gActiveBattler].hp;
                    gBattleMons[gActiveBattler].hp = 0;
                }

                if (!gSpecialStatuses[gActiveBattler].dmg && !(gHitMarker & (1 << 20)))
                    gSpecialStatuses[gActiveBattler].dmg = gHpDealt;

                if ((moveType < 9) && !(gHitMarker & (1 << 20)) && gCurrentMove != 220)
                {
                    gProtectStructs[gActiveBattler].physicalDmg = gHpDealt;
                    gSpecialStatuses[gActiveBattler].physicalDmg = gHpDealt;
                    if (gBattlescriptCurrInstr[1] == 0)
                    {
                        gProtectStructs[gActiveBattler].physicalBattlerId = gBattlerAttacker;
                        gSpecialStatuses[gActiveBattler].physicalBattlerId = gBattlerAttacker;
                    }
                    else
                    {
                        gProtectStructs[gActiveBattler].physicalBattlerId = gBattlerTarget;
                        gSpecialStatuses[gActiveBattler].physicalBattlerId = gBattlerTarget;
                    }
                }
                else if (!(moveType < 9) && !(gHitMarker & (1 << 20)))
                {
                    gProtectStructs[gActiveBattler].specialDmg = gHpDealt;
                    gSpecialStatuses[gActiveBattler].specialDmg = gHpDealt;
                    if (gBattlescriptCurrInstr[1] == 0)
                    {
                        gProtectStructs[gActiveBattler].specialBattlerId = gBattlerAttacker;
                        gSpecialStatuses[gActiveBattler].specialBattlerId = gBattlerAttacker;
                    }
                    else
                    {
                        gProtectStructs[gActiveBattler].specialBattlerId = gBattlerTarget;
                        gSpecialStatuses[gActiveBattler].specialBattlerId = gBattlerTarget;
                    }
                }
            }
            gHitMarker &= ~(1 << 20);
            BtlController_EmitSetMonData(BUFFER_A, REQUEST_HP_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].hp), &gBattleMons[gActiveBattler].hp);
            MarkBattlerForControllerExec(gActiveBattler);
        }
    }
    else
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gSpecialStatuses[gActiveBattler].dmg == 0)
            gSpecialStatuses[gActiveBattler].dmg = 0xFFFF;
    }
    gBattlescriptCurrInstr += 2;
}

static void Cmd_critmessage(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        if (gCritMultiplier == 2 && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            PrepareStringBattle(217, gBattlerAttacker);
            gBattleCommunication[7] = 1;
        }
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_effectivenesssound(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = gBattlerTarget;
    if (!(gMoveResultFlags & (1 << 0)))
    {
        switch (gMoveResultFlags & (u8)(~(1 << 0)))
        {
        case (1 << 1):
            BtlController_EmitPlaySE(BUFFER_A, 14);
            MarkBattlerForControllerExec(gActiveBattler);
            break;
        case (1 << 2):
            BtlController_EmitPlaySE(BUFFER_A, 12);
            MarkBattlerForControllerExec(gActiveBattler);
            break;
        case (1 << 3):
        case (1 << 5):

            break;
        case (1 << 6):
        case (1 << 4):
        case (1 << 7):
        default:
            if (gMoveResultFlags & (1 << 1))
            {
                BtlController_EmitPlaySE(BUFFER_A, 14);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            else if (gMoveResultFlags & (1 << 2))
            {
                BtlController_EmitPlaySE(BUFFER_A, 12);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            else if (!(gMoveResultFlags & ((1 << 3) | (1 << 5))))
            {
                BtlController_EmitPlaySE(BUFFER_A, 13);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            break;
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_resultmessage(void)
{
    u32 stringId = 0;

    if (gBattleControllerExecFlags)
        return;

    if (gMoveResultFlags & (1 << 0) && (!(gMoveResultFlags & (1 << 3)) || gBattleCommunication[6] > 2))
    {
        stringId = gMissStringIds[gBattleCommunication[6]];
        gBattleCommunication[7] = 1;
    }
    else
    {
        gBattleCommunication[7] = 1;
        switch (gMoveResultFlags & (u8)(~(1 << 0)))
        {
        case (1 << 1):
            stringId = 222;
            break;
        case (1 << 2):
            stringId = 221;
            break;
        case (1 << 4):
            stringId = 218;
            break;
        case (1 << 6):
            stringId = 153;
            break;
        case (1 << 5):
            stringId = 229;
            break;
        case (1 << 3):
            stringId = 27;
            break;
        case (1 << 7):
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
            gPotentialItemEffectBattler = gBattlerTarget;
            gMoveResultFlags &= ~((1 << 6) | (1 << 7));
            BattleScriptPushCursor();
            gBattlescriptCurrInstr = BattleScript_FocusBandActivates;
            return;
        default:
            if (gMoveResultFlags & (1 << 3))
            {
                stringId = 27;
            }
            else if (gMoveResultFlags & (1 << 4))
            {
                gMoveResultFlags &= ~(1 << 4);
                gMoveResultFlags &= ~(1 << 1);
                gMoveResultFlags &= ~(1 << 2);
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_OneHitKOMsg;
                return;
            }
            else if (gMoveResultFlags & (1 << 6))
            {
                gMoveResultFlags &= ~((1 << 6) | (1 << 7));
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_EnduredMsg;
                return;
            }
            else if (gMoveResultFlags & (1 << 7))
            {
                gLastUsedItem = gBattleMons[gBattlerTarget].item;
                gPotentialItemEffectBattler = gBattlerTarget;
                gMoveResultFlags &= ~((1 << 6) | (1 << 7));
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_FocusBandActivates;
                return;
            }
            else if (gMoveResultFlags & (1 << 5))
            {
                stringId = 229;
            }
            else
            {
                gBattleCommunication[7] = 0;
            }
        }
    }

    if (stringId)
        PrepareStringBattle(stringId, gBattlerAttacker);

    gBattlescriptCurrInstr++;
}

static void Cmd_printstring(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        u16 var = ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8));
        PrepareStringBattle(var, gBattlerAttacker);
        gBattlescriptCurrInstr += 3;
        gBattleCommunication[7] = 1;
    }
}

static void Cmd_printselectionstring(void)
{
    gActiveBattler = gBattlerAttacker;

    BtlController_EmitPrintSelectionString(BUFFER_A, ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8)));
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;
    gBattleCommunication[7] = 1;
}

static void Cmd_waitmessage(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        if (!gBattleCommunication[7])
        {
            gBattlescriptCurrInstr += 3;
        }
        else
        {
            u16 toWait = ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8));
            if (++gPauseCounterBattle >= toWait)
            {
                gPauseCounterBattle = 0;
                gBattlescriptCurrInstr += 3;
                gBattleCommunication[7] = 0;
            }
        }
    }
}

static void Cmd_printfromtable(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        const u16 *ptr = (const u16 *) (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        ptr += gBattleCommunication[5];

        PrepareStringBattle(*ptr, gBattlerAttacker);

        gBattlescriptCurrInstr += 5;
        gBattleCommunication[7] = 1;
    }
}

static void Cmd_printselectionstringfromtable(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        const u16 *ptr = (const u16 *) (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        ptr += gBattleCommunication[5];

        gActiveBattler = gBattlerAttacker;
        BtlController_EmitPrintSelectionString(BUFFER_A, *ptr);
        MarkBattlerForControllerExec(gActiveBattler);

        gBattlescriptCurrInstr += 5;
        gBattleCommunication[7] = 1;
    }
}

u8 GetBattlerTurnOrderNum(u8 battlerId)
{
    s32 i;
    for (i = 0; i < gBattlersCount; i++)
    {
        if (gBattlerByTurnOrder[i] == battlerId)
            break;
    }
    return i;
}
# 2110 "src/battle_script_commands.c"
void SetMoveEffect(bool8 primary, u8 certain)
{
    bool32 statusChanged = 0;
    u8 affectsUser = 0;
    bool32 noSunCanFreeze = 1;

    if (gBattleCommunication[3] & (1 << 6))
    {
        gEffectBattler = gBattlerAttacker;
        gBattleCommunication[3] &= ~(1 << 6);
        affectsUser = (1 << 6);
        gBattleScripting.battler = gBattlerTarget;
    }
    else
    {
        gEffectBattler = gBattlerTarget;
        gBattleScripting.battler = gBattlerAttacker;
    }
    if (gBattleTypeFlags & (1 << 16) && gBattleCommunication[3] != 1
        && GetBattlerSide(gEffectBattler) == 1)
        { gBattlescriptCurrInstr++; return; }

    if (gBattleMons[gEffectBattler].ability == 19 && !(gHitMarker & (1 << 13))
        && !primary && gBattleCommunication[3] <= 9)
        { gBattlescriptCurrInstr++; return; }

    if (gSideStatuses[((GetBattlerPosition(gEffectBattler) & 1))] & (1 << 5) && !(gHitMarker & (1 << 13))
        && !primary && gBattleCommunication[3] <= 7)
        { gBattlescriptCurrInstr++; return; }

    if (gBattleMons[gEffectBattler].hp == 0
        && gBattleCommunication[3] != 11
        && gBattleCommunication[3] != 31)
        { gBattlescriptCurrInstr++; return; }

    if (gBattleMons[gEffectBattler].status2 & (1 << 24) && affectsUser != (1 << 6))
        { gBattlescriptCurrInstr++; return; }

    if (gBattleCommunication[3] <= 6)
    {
        switch (sStatusFlagsForMoveEffects[gBattleCommunication[3]])
        {
        case (1 << 0 | 1 << 1 | 1 << 2):

            if (gBattleMons[gEffectBattler].ability != 43)
            {
                for (gActiveBattler = 0;
                    gActiveBattler < gBattlersCount && !(gBattleMons[gActiveBattler].status2 & (1 << 4 | 1 << 5 | 1 << 6));
                    gActiveBattler++)
                {}
            }
            else
                gActiveBattler = gBattlersCount;

            if (gBattleMons[gEffectBattler].status1)
                break;
            if (gActiveBattler != gBattlersCount)
                break;
            if (gBattleMons[gEffectBattler].ability == 72)
                break;
            if (gBattleMons[gEffectBattler].ability == 15)
                break;

            CancelMultiTurnMoves(gEffectBattler);
            statusChanged = 1;
            break;
        case (1 << 3):
            if (gBattleMons[gEffectBattler].ability == 17
                && (primary == 1 || certain == (1 << 7)))
            {
                gLastUsedAbility = 17;
                RecordAbilityBattle(gEffectBattler, 17);

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                if (gHitMarker & (1 << 13))
                {
                    gBattleCommunication[5] = 1;
                    gHitMarker &= ~(1 << 13);
                }
                else
                {
                    gBattleCommunication[5] = 0;
                }
                return;
            }
            if ((((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)) || ((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
                && (gHitMarker & (1 << 13))
                && (primary == 1 || certain == (1 << 7)))
            {
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                gBattleCommunication[5] = 2;
                return;
            }
            if (((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)))
                break;
            if (((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
                break;
            if (gBattleMons[gEffectBattler].status1)
                break;
            if (gBattleMons[gEffectBattler].ability == 17)
                break;

            statusChanged = 1;
            break;
        case (1 << 4):
            if (gBattleMons[gEffectBattler].ability == 41
                && (primary == 1 || certain == (1 << 7)))
            {
                gLastUsedAbility = 41;
                RecordAbilityBattle(gEffectBattler, 41);

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_BRNPrevention;
                if (gHitMarker & (1 << 13))
                {
                    gBattleCommunication[5] = 1;
                    gHitMarker &= ~(1 << 13);
                }
                else
                {
                    gBattleCommunication[5] = 0;
                }
                return;
            }
            if (((gBattleMons[gEffectBattler].type1 == 10 || gBattleMons[gEffectBattler].type2 == 10))
                && (gHitMarker & (1 << 13))
                && (primary == 1 || certain == (1 << 7)))
            {
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_BRNPrevention;

                gBattleCommunication[5] = 2;
                return;
            }
            if (((gBattleMons[gEffectBattler].type1 == 10 || gBattleMons[gEffectBattler].type2 == 10)))
                break;
            if (gBattleMons[gEffectBattler].ability == 41)
                break;
            if (gBattleMons[gEffectBattler].status1)
                break;

            statusChanged = 1;
            break;
        case (1 << 5):
            if (((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))) && gBattleWeather & ((1 << 5) | (1 << 6)))
                noSunCanFreeze = 0;
            if (((gBattleMons[gEffectBattler].type1 == 15 || gBattleMons[gEffectBattler].type2 == 15)))
                break;
            if (gBattleMons[gEffectBattler].status1)
                break;
            if (noSunCanFreeze == 0)
                break;
            if (gBattleMons[gEffectBattler].ability == 40)
                break;

            CancelMultiTurnMoves(gEffectBattler);
            statusChanged = 1;
            break;
        case (1 << 6):
            if (gBattleMons[gEffectBattler].ability == 7)
            {
                if (primary == 1 || certain == (1 << 7))
                {
                    gLastUsedAbility = 7;
                    RecordAbilityBattle(gEffectBattler, 7);

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_PRLZPrevention;

                    if (gHitMarker & (1 << 13))
                    {
                        gBattleCommunication[5] = 1;
                        gHitMarker &= ~(1 << 13);
                    }
                    else
                    {
                        gBattleCommunication[5] = 0;
                    }
                    return;
                }
                else
                    break;
            }
            if (gBattleMons[gEffectBattler].status1)
                break;

            statusChanged = 1;
            break;
        case (1 << 7):
            if (gBattleMons[gEffectBattler].ability == 17 && (primary == 1 || certain == (1 << 7)))
            {
                gLastUsedAbility = 17;
                RecordAbilityBattle(gEffectBattler, 17);

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                if (gHitMarker & (1 << 13))
                {
                    gBattleCommunication[5] = 1;
                    gHitMarker &= ~(1 << 13);
                }
                else
                {
                    gBattleCommunication[5] = 0;
                }
                return;
            }
            if ((((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)) || ((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
                && (gHitMarker & (1 << 13))
                && (primary == 1 || certain == (1 << 7)))
            {
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                gBattleCommunication[5] = 2;
                return;
            }
            if (gBattleMons[gEffectBattler].status1)
                break;
            if (!((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)) && !((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
            {
                if (gBattleMons[gEffectBattler].ability == 17)
                    break;


                gBattleMons[gEffectBattler].status1 &= ~(1 << 7);
                gBattleMons[gEffectBattler].status1 &= ~(1 << 3);
                statusChanged = 1;
                break;
            }
            else
            {
                gMoveResultFlags |= (1 << 3);
            }
            break;
        }
        if (statusChanged == 1)
        {
            BattleScriptPush(gBattlescriptCurrInstr + 1);

            if (sStatusFlagsForMoveEffects[gBattleCommunication[3]] == (1 << 0 | 1 << 1 | 1 << 2))
                gBattleMons[gEffectBattler].status1 |= (((Random() & 3) + 2) << 0);
            else
                gBattleMons[gEffectBattler].status1 |= sStatusFlagsForMoveEffects[gBattleCommunication[3]];

            gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[3]];

            gActiveBattler = gEffectBattler;
            BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, 0, sizeof(gBattleMons[gEffectBattler].status1), &gBattleMons[gEffectBattler].status1);
            MarkBattlerForControllerExec(gActiveBattler);

            if (gHitMarker & (1 << 13))
            {
                gBattleCommunication[5] = 1;
                gHitMarker &= ~(1 << 13);
            }
            else
            {
                gBattleCommunication[5] = 0;
            }



            if (gBattleCommunication[3] == 2
             || gBattleCommunication[3] == 6
             || gBattleCommunication[3] == 5
             || gBattleCommunication[3] == 3)
             {
                u8 *synchronizeEffect = &gBattleStruct->synchronizeMoveEffect;
                *synchronizeEffect = gBattleCommunication[3];
                gHitMarker |= (1 << 14);
             }
        }
        else if (statusChanged == 0)
        {
            gBattlescriptCurrInstr++;
        }
        return;
    }
    else
    {
        if (gBattleMons[gEffectBattler].status2 & sStatusFlagsForMoveEffects[gBattleCommunication[3]])
        {
            gBattlescriptCurrInstr++;
        }
        else
        {
            u8 side;
            switch (gBattleCommunication[3])
            {
            case 7:
                if (gBattleMons[gEffectBattler].ability == 20
                    || gBattleMons[gEffectBattler].status2 & (1 << 0 | 1 << 1 | 1 << 2))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gEffectBattler].status2 |= ((((Random()) % 4) + 2) << 0);

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[3]];
                }
                break;
            case 8:
                if (gBattleMons[gEffectBattler].ability == 39)
                {
                    if (primary == 1 || certain == (1 << 7))
                    {
                        gLastUsedAbility = 39;
                        RecordAbilityBattle(gEffectBattler, 39);
                        gBattlescriptCurrInstr = BattleScript_FlinchPrevention;
                    }
                    else
                    {
                        gBattlescriptCurrInstr++;
                    }
                }
                else
                {
                    if (GetBattlerTurnOrderNum(gEffectBattler) > gCurrentTurnActionNumber)
                        gBattleMons[gEffectBattler].status2 |= sStatusFlagsForMoveEffects[gBattleCommunication[3]];
                    gBattlescriptCurrInstr++;
                }
                break;
            case 10:
                if (!(gBattleMons[gEffectBattler].status2 & (1 << 4 | 1 << 5 | 1 << 6)))
                {
                    gBattleMons[gEffectBattler].status2 |= (1 << 12);
                    gLockedMoves[gEffectBattler] = gCurrentMove;
                    gBattleMons[gEffectBattler].status2 |= (((Random() & 3) + 2) << 4);

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[3]];
                }
                else
                {
                    gBattlescriptCurrInstr++;
                }
                break;
            case 11:
                if (((GetBattlerPosition(gBattlerAttacker) & 1)) == 0)
                {
                    u16 payday = gPaydayMoney;
                    gPaydayMoney += (gBattleMons[gBattlerAttacker].level * 5);
                    if (payday > gPaydayMoney)
                        gPaydayMoney = 0xFFFF;
                }
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[3]];
                break;
            case 9:
                if (gBattleMons[gEffectBattler].status1)
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleCommunication[3] = Random() % 3 + 3;
                    SetMoveEffect(0, 0);
                }
                break;
            case 12:
                gBattleMons[gEffectBattler].status2 |= (1 << 12);
                gLockedMoves[gEffectBattler] = gCurrentMove;
                gProtectStructs[gEffectBattler].chargingTurn = 1;
                gBattlescriptCurrInstr++;
                break;
            case 13:
                if (gBattleMons[gEffectBattler].status2 & (1 << 13 | 1 << 14 | 1 << 15))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gEffectBattler].status2 |= (((Random() & 3) + 3) << 13);

                    *(gBattleStruct->wrappedMove + gEffectBattler * 2 + 0) = gCurrentMove;
                    *(gBattleStruct->wrappedMove + gEffectBattler * 2 + 1) = gCurrentMove >> 8;
                    *(gBattleStruct->wrappedBy + gEffectBattler) = gBattlerAttacker;

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[3]];

                    for (gBattleCommunication[5] = 0; ; gBattleCommunication[5]++)
                    {
                        if (gBattleCommunication[5] >= 6 - 1)
                            break;
                        if (gTrappingMoves[gBattleCommunication[5]] == gCurrentMove)
                            break;
                    }
                }
                break;
            case 14:
                gBattleMoveDamage = (gHpDealt) / 4;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[3]];
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                if (ChangeStatBuffs((((s8)(((s8)(1) << 4)) & 0xF0)),
                                    gBattleCommunication[3] - 15 + 1,
                                    affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[3] & ~((1 << 6) | (1 << 7));
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatUp;
                }
                break;
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
                if (ChangeStatBuffs((((s8)(((s8)(1) << 4)) & 0xF0)) | 0x80,
                                    gBattleCommunication[3] - 22 + 1,
                                    affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[3] & ~((1 << 6) | (1 << 7));
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatDown;
                }
                break;
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
                if (ChangeStatBuffs((((s8)(((s8)(2) << 4)) & 0xF0)),
                                    gBattleCommunication[3] - 39 + 1,
                                    affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[3] & ~((1 << 6) | (1 << 7));
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatUp;
                }
                break;
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
                if (ChangeStatBuffs((((s8)(((s8)(2) << 4)) & 0xF0)) | 0x80,
                                    gBattleCommunication[3] - 46 + 1,
                                    affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[3] & ~((1 << 6) | (1 << 7));
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatDown;
                }
                break;
            case 29:
                gBattleMons[gEffectBattler].status2 |= (1 << 22);
                gDisableStructs[gEffectBattler].rechargeTimer = 2;
                gLockedMoves[gEffectBattler] = gCurrentMove;
                gBattlescriptCurrInstr++;
                break;
            case 30:
                gBattleMons[gBattlerAttacker].status2 |= (1 << 23);
                gBattlescriptCurrInstr++;
                break;
            case 31:
                {
                    if (gBattleTypeFlags & (1 << 19))
                    {
                        gBattlescriptCurrInstr++;
                        break;
                    }

                    side = GetBattlerSide(gBattlerAttacker);
                    if (GetBattlerSide(gBattlerAttacker) == 1
                        && !(gBattleTypeFlags &
                            ((1 << 11)
                            | (1 << 8)
                            | (1 << 1)))
                        && gTrainerBattleOpponent_A != 0x400)
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else if (!(gBattleTypeFlags &
                            ((1 << 11)
                            | (1 << 8)
                            | (1 << 1)))
                        && gTrainerBattleOpponent_A != 0x400
                        && (gWishFutureKnock.knockedOffMons[side] & gBitTable[gBattlerPartyIndexes[gBattlerAttacker]]))
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else if (gBattleMons[gBattlerTarget].item
                        && gBattleMons[gBattlerTarget].ability == 60)
                    {
                        gBattlescriptCurrInstr = BattleScript_StickyHoldActivates;
                        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
                        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
                    }
                    else if (gBattleMons[gBattlerAttacker].item != 0
                        || gBattleMons[gBattlerTarget].item == 175
                        || ((gBattleMons[gBattlerTarget].item == 121 || gBattleMons[gBattlerTarget].item == 122 || gBattleMons[gBattlerTarget].item == 123 || gBattleMons[gBattlerTarget].item == 124 || gBattleMons[gBattlerTarget].item == 125 || gBattleMons[gBattlerTarget].item == 126 || gBattleMons[gBattlerTarget].item == 127 || gBattleMons[gBattlerTarget].item == 128 || gBattleMons[gBattlerTarget].item == 129 || gBattleMons[gBattlerTarget].item == 130 || gBattleMons[gBattlerTarget].item == 131 || gBattleMons[gBattlerTarget].item == 132))
                        || gBattleMons[gBattlerTarget].item == 0)
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else
                    {
                        u16 *changedItem = &gBattleStruct->changedItems[gBattlerAttacker];
                        gLastUsedItem = *changedItem = gBattleMons[gBattlerTarget].item;
                        gBattleMons[gBattlerTarget].item = 0;

                        gActiveBattler = gBattlerAttacker;
                        BtlController_EmitSetMonData(BUFFER_A, REQUEST_HELDITEM_BATTLE, 0, sizeof(gLastUsedItem), &gLastUsedItem);
                        MarkBattlerForControllerExec(gBattlerAttacker);

                        gActiveBattler = gBattlerTarget;
                        BtlController_EmitSetMonData(BUFFER_A, REQUEST_HELDITEM_BATTLE, 0, sizeof(gBattleMons[gBattlerTarget].item), &gBattleMons[gBattlerTarget].item);
                        MarkBattlerForControllerExec(gBattlerTarget);

                        BattleScriptPush(gBattlescriptCurrInstr + 1);
                        gBattlescriptCurrInstr = BattleScript_ItemSteal;

                        *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gBattlerTarget]) + 0) = 0;
                        *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gBattlerTarget]) + 1) = 0;
                    }
                }
                break;
            case 32:
                gBattleMons[gBattlerTarget].status2 |= (1 << 26);
                gDisableStructs[gBattlerTarget].battlerPreventingEscape = gBattlerAttacker;
                gBattlescriptCurrInstr++;
                break;
            case 33:
                gBattleMons[gBattlerTarget].status2 |= (1 << 27);
                gBattlescriptCurrInstr++;
                break;
            case 34:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_AllStatsUp;
                break;
            case 35:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_RapidSpinAway;
                break;
            case 36:
                if (!(gBattleMons[gBattlerTarget].status1 & (1 << 6)))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gBattlerTarget].status1 &= ~(1 << 6);

                    gActiveBattler = gBattlerTarget;
                    BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].status1), &gBattleMons[gActiveBattler].status1);
                    MarkBattlerForControllerExec(gActiveBattler);

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_TargetPRLZHeal;
                }
                break;
            case 37:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_AtkDefDown;
                break;
            case 38:
                gBattleMoveDamage = gHpDealt / 3;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[3]];
                break;
            case 53:
                if (gBattleMons[gEffectBattler].status2 & (1 << 10 | 1 << 11))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gEffectBattler].status2 |= (1 << 12);
                    gLockedMoves[gEffectBattler] = gCurrentMove;
                    gBattleMons[gEffectBattler].status2 |= (((Random() & 1) + 2) << 10);
                }
                break;
            case 54:
                if (gBattleMons[gEffectBattler].ability == 60)
                {
                    if (gBattleMons[gEffectBattler].item == 0)
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else
                    {
                        gLastUsedAbility = 60;
                        gBattlescriptCurrInstr = BattleScript_StickyHoldActivates;
                        RecordAbilityBattle(gEffectBattler, 60);
                    }
                    break;
                }
                if (gBattleMons[gEffectBattler].item)
                {
                    side = GetBattlerSide(gEffectBattler);

                    gLastUsedItem = gBattleMons[gEffectBattler].item;
                    gBattleMons[gEffectBattler].item = 0;
                    gWishFutureKnock.knockedOffMons[side] |= gBitTable[gBattlerPartyIndexes[gEffectBattler]];

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_KnockedOff;

                    *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gEffectBattler]) + 0) = 0;
                    *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gEffectBattler]) + 1) = 0;
                }
                else
                {
                    gBattlescriptCurrInstr++;
                }
                break;
            case 59:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_SAtkDown2;
                break;
            }
        }
    }
}

static void Cmd_seteffectwithchance(void)
{
    u32 percentChance;

    if (gBattleMons[gBattlerAttacker].ability == 32)
        percentChance = gBattleMoves[gCurrentMove].secondaryEffectChance * 2;
    else
        percentChance = gBattleMoves[gCurrentMove].secondaryEffectChance;

    if (gBattleCommunication[3] & (1 << 7)
        && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        gBattleCommunication[3] &= ~(1 << 7);
        SetMoveEffect(0, (1 << 7));
    }
    else if (Random() % 100 <= percentChance
             && gBattleCommunication[3]
             && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        if (percentChance >= 100)
            SetMoveEffect(0, (1 << 7));
        else
            SetMoveEffect(0, 0);
    }
    else
    {
        gBattlescriptCurrInstr++;
    }

    gBattleCommunication[3] = 0;
    gBattleScripting.multihitMoveEffect = 0;
}

static void Cmd_seteffectprimary(void)
{
    SetMoveEffect(1, 0);
}

static void Cmd_seteffectsecondary(void)
{
    SetMoveEffect(0, 0);
}

static void Cmd_clearstatusfromeffect(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gBattleCommunication[3] <= 6)
        gBattleMons[gActiveBattler].status1 &= (~sStatusFlagsForMoveEffects[gBattleCommunication[3]]);
    else
        gBattleMons[gActiveBattler].status2 &= (~sStatusFlagsForMoveEffects[gBattleCommunication[3]]);

    gBattleCommunication[3] = 0;
    gBattlescriptCurrInstr += 2;
    gBattleScripting.multihitMoveEffect = 0;
}

static void Cmd_tryfaintmon(void)
{
    const u8 *BS_ptr;

    if (gBattlescriptCurrInstr[2] != 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gHitMarker & (gBitTable[gActiveBattler] << 28))
        {
            BS_ptr = (u8 *) ((gBattlescriptCurrInstr + 3)[0] | ((gBattlescriptCurrInstr + 3)[1] << 8) | ((gBattlescriptCurrInstr + 3)[2] << 16) | ((gBattlescriptCurrInstr + 3)[3] << 24));

            BattleScriptPop();
            gBattlescriptCurrInstr = BS_ptr;
            gSideStatuses[GetBattlerSide(gActiveBattler)] &= ~(1 << 9);
        }
        else
        {
            gBattlescriptCurrInstr += 7;
        }
    }
    else
    {
        u8 battlerId;

        if (gBattlescriptCurrInstr[1] == 1)
        {
            gActiveBattler = gBattlerAttacker;
            battlerId = gBattlerTarget;
            BS_ptr = BattleScript_FaintAttacker;
        }
        else
        {
            gActiveBattler = gBattlerTarget;
            battlerId = gBattlerAttacker;
            BS_ptr = BattleScript_FaintTarget;
        }
        if (!(gAbsentBattlerFlags & gBitTable[gActiveBattler])
         && gBattleMons[gActiveBattler].hp == 0)
        {
            gHitMarker |= (gBitTable[gActiveBattler] << 28);
            BattleScriptPush(gBattlescriptCurrInstr + 7);
            gBattlescriptCurrInstr = BS_ptr;
            if (GetBattlerSide(gActiveBattler) == 0)
            {
                gHitMarker |= (1 << 22);
                if (gBattleResults.playerFaintCounter < 255)
                    gBattleResults.playerFaintCounter++;
                AdjustFriendshipOnBattleFaint(gActiveBattler);
            }
            else
            {
                if (gBattleResults.opponentFaintCounter < 255)
                    gBattleResults.opponentFaintCounter++;
                gBattleResults.lastOpponentSpecies = GetMonData(&gEnemyParty[gBattlerPartyIndexes[gActiveBattler]], 11);
                *(u8 *)(&gBattleStruct->lastAttackerToFaintOpponent) = gBattlerAttacker;
            }
            if ((gHitMarker & (1 << 6)) && gBattleMons[gBattlerAttacker].hp != 0)
            {
                gHitMarker &= ~(1 << 6);
                BattleScriptPush(gBattlescriptCurrInstr);
                gBattleMoveDamage = gBattleMons[battlerId].hp;
                gBattlescriptCurrInstr = BattleScript_DestinyBondTakesLife;
            }
            if ((gStatuses3[gBattlerTarget] & (1 << 14))
             && !(gHitMarker & (1 << 24))
             && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget)
             && gBattleMons[gBattlerAttacker].hp != 0
             && gCurrentMove != 165)
            {
                u8 moveIndex = *(gBattleStruct->chosenMovePositions + gBattlerAttacker);

                gBattleMons[gBattlerAttacker].pp[moveIndex] = 0;
                BattleScriptPush(gBattlescriptCurrInstr);
                gBattlescriptCurrInstr = BattleScript_GrudgeTakesPp;
                gActiveBattler = gBattlerAttacker;
                BtlController_EmitSetMonData(BUFFER_A, moveIndex + REQUEST_PPMOVE1_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].pp[moveIndex]), &gBattleMons[gActiveBattler].pp[moveIndex]);
                MarkBattlerForControllerExec(gActiveBattler);

                { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = gBattleMons[gBattlerAttacker].moves[moveIndex]; gBattleTextBuff1[3] = (gBattleMons[gBattlerAttacker].moves[moveIndex] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }
            }
        }
        else
        {
            gBattlescriptCurrInstr += 7;
        }
    }
}

static void Cmd_dofaintanimation(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        BtlController_EmitFaintAnimation(BUFFER_A);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_cleareffectsonfaint(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

        gBattleMons[gActiveBattler].status1 = 0;
        BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].status1), &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);

        FaintClearSetData();
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_jumpifstatus(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u32 flags = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8) + ((gBattlescriptCurrInstr + 6)[2] << 16) + ((gBattlescriptCurrInstr + 6)[3] << 24));

    if (gBattleMons[battlerId].status1 & flags && gBattleMons[battlerId].hp != 0)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 10;
}

static void Cmd_jumpifstatus2(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u32 flags = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8) + ((gBattlescriptCurrInstr + 6)[2] << 16) + ((gBattlescriptCurrInstr + 6)[3] << 24));

    if (gBattleMons[battlerId].status2 & flags && gBattleMons[battlerId].hp != 0)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 10;
}

static void Cmd_jumpifability(void)
{
    u8 battlerId;
    u8 ability = gBattlescriptCurrInstr[2];
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 3)[0] + ((gBattlescriptCurrInstr + 3)[1] << 8) + ((gBattlescriptCurrInstr + 3)[2] << 16) + ((gBattlescriptCurrInstr + 3)[3] << 24));

    if (gBattlescriptCurrInstr[1] == 8)
    {
        battlerId = AbilityBattleEffects(13, gBattlerAttacker, ability, 0, 0);
        if (battlerId)
        {
            gLastUsedAbility = ability;
            gBattlescriptCurrInstr = jumpPtr;
            RecordAbilityBattle(battlerId - 1, gLastUsedAbility);
            gBattleScripting.battlerWithAbility = battlerId - 1;
        }
        else
            gBattlescriptCurrInstr += 7;
    }
    else if (gBattlescriptCurrInstr[1] == 9)
    {
        battlerId = AbilityBattleEffects(12, gBattlerAttacker, ability, 0, 0);
        if (battlerId)
        {
            gLastUsedAbility = ability;
            gBattlescriptCurrInstr = jumpPtr;
            RecordAbilityBattle(battlerId - 1, gLastUsedAbility);
            gBattleScripting.battlerWithAbility = battlerId - 1;
        }
        else
            gBattlescriptCurrInstr += 7;
    }
    else
    {
        battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gBattleMons[battlerId].ability == ability)
        {
            gLastUsedAbility = ability;
            gBattlescriptCurrInstr = jumpPtr;
            RecordAbilityBattle(battlerId, gLastUsedAbility);
            gBattleScripting.battlerWithAbility = battlerId;
        }
        else
            gBattlescriptCurrInstr += 7;
    }
}

static void Cmd_jumpifsideaffecting(void)
{
    u8 side;
    u16 flags;
    const u8 *jumpPtr;

    if (gBattlescriptCurrInstr[1] == 1)
        side = ((GetBattlerPosition(gBattlerAttacker) & 1));
    else
        side = ((GetBattlerPosition(gBattlerTarget) & 1));

    flags = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8));
    jumpPtr = (void *) ((gBattlescriptCurrInstr + 4)[0] + ((gBattlescriptCurrInstr + 4)[1] << 8) + ((gBattlescriptCurrInstr + 4)[2] << 16) + ((gBattlescriptCurrInstr + 4)[3] << 24));

    if (gSideStatuses[side] & flags)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 8;
}

static void Cmd_jumpifstat(void)
{
    u8 ret = 0;
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u8 value = gBattleMons[battlerId].statStages[gBattlescriptCurrInstr[3]];

    switch (gBattlescriptCurrInstr[2])
    {
    case 0x0:
        if (value == gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x1:
        if (value != gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x2:
        if (value > gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x3:
        if (value < gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x4:
        if (value & gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x5:
        if (!(value & gBattlescriptCurrInstr[4]))
            ret++;
        break;
    }

    if (ret)
        gBattlescriptCurrInstr = (void *) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    else
        gBattlescriptCurrInstr += 9;
}

static void Cmd_jumpifstatus3condition(void)
{
    u32 status;
    const u8 *jumpPtr;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    status = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    jumpPtr = (void *) ((gBattlescriptCurrInstr + 7)[0] + ((gBattlescriptCurrInstr + 7)[1] << 8) + ((gBattlescriptCurrInstr + 7)[2] << 16) + ((gBattlescriptCurrInstr + 7)[3] << 24));

    if (gBattlescriptCurrInstr[6])
    {
        if ((gStatuses3[gActiveBattler] & status) != 0)
            gBattlescriptCurrInstr += 11;
        else
            gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        if ((gStatuses3[gActiveBattler] & status) != 0)
            gBattlescriptCurrInstr = jumpPtr;
        else
            gBattlescriptCurrInstr += 11;
    }
}

static void Cmd_jumpiftype(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u8 type = gBattlescriptCurrInstr[2];
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 3)[0] + ((gBattlescriptCurrInstr + 3)[1] << 8) + ((gBattlescriptCurrInstr + 3)[2] << 16) + ((gBattlescriptCurrInstr + 3)[3] << 24));

    if (((gBattleMons[battlerId].type1 == type || gBattleMons[battlerId].type2 == type)))
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 7;
}

static void Cmd_getexp(void)
{
    u16 item;
    s32 i;
    u8 holdEffect;
    s32 sentIn;
    s32 viaExpShare = 0;
    u16 *exp = &gBattleStruct->expValue;

    gBattlerFainted = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    sentIn = gSentPokesToOpponent[(gBattlerFainted & 2) >> 1];

    switch (gBattleScripting.getexpState)
    {
    case 0:
        if (GetBattlerSide(gBattlerFainted) != 1 || (gBattleTypeFlags &
             ((1 << 1)
              | (1 << 19)
              | (1 << 8)
              | (1 << 7)
              | (1 << 11))))
        {
            gBattleScripting.getexpState = 6;
        }
        else
        {
            gBattleScripting.getexpState++;
            gBattleStruct->givenExpMons |= gBitTable[gBattlerPartyIndexes[gBattlerFainted]];
        }
        break;
    case 1:
        {
            u16 calculatedExp;
            s32 viaSentIn;

            for (viaSentIn = 0, i = 0; i < 6; i++)
            {
                if (GetMonData(&gPlayerParty[i], 11) == 0 || GetMonData(&gPlayerParty[i], 57) == 0)
                    continue;
                if (gBitTable[i] & sentIn)
                    viaSentIn++;

                item = GetMonData(&gPlayerParty[i], 12);

                if (item == 175)
                    holdEffect = gSaveBlock1Ptr->enigmaBerry.holdEffect;
                else
                    holdEffect = ItemId_GetHoldEffect(item);

                if (holdEffect == 25)
                    viaExpShare++;
            }

            calculatedExp = gSpeciesInfo[gBattleMons[gBattlerFainted].species].expYield * gBattleMons[gBattlerFainted].level / 7;

            if (viaExpShare)
            {
                *exp = ((calculatedExp / 2) / (viaSentIn));
                if (*exp == 0)
                    *exp = 1;

                gExpShareExp = calculatedExp / 2 / viaExpShare;
                if (gExpShareExp == 0)
                    gExpShareExp = 1;
            }
            else
            {
                *exp = ((calculatedExp) / (viaSentIn));
                if (*exp == 0)
                    *exp = 1;
                gExpShareExp = 0;
            }

            gBattleScripting.getexpState++;
            gBattleStruct->expGetterMonId = 0;
            gBattleStruct->sentInPokes = sentIn;
        }

    case 2:
        if (gBattleControllerExecFlags == 0)
        {
            item = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 12);

            if (item == 175)
                holdEffect = gSaveBlock1Ptr->enigmaBerry.holdEffect;
            else
                holdEffect = ItemId_GetHoldEffect(item);

            if (holdEffect != 25 && !(gBattleStruct->sentInPokes & 1))
            {
                *(&gBattleStruct->sentInPokes) >>= 1;
                gBattleScripting.getexpState = 5;
                gBattleMoveDamage = 0;
            }
            else if (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56) == 100)
            {
                *(&gBattleStruct->sentInPokes) >>= 1;
                gBattleScripting.getexpState = 5;
                gBattleMoveDamage = 0;
            }
            else
            {

                if (!(gBattleTypeFlags & ((1 << 3) | (1 << 16))) && gBattleMons[0].hp != 0 && !gBattleStruct->wildVictorySong)
                {
                    BattleStopLowHpSound();
                    PlayBGM(311);
                    gBattleStruct->wildVictorySong++;
                }

                if (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57))
                {
                    if (gBattleStruct->sentInPokes & 1)
                        gBattleMoveDamage = *exp;
                    else
                        gBattleMoveDamage = 0;

                    if (holdEffect == 25)
                        gBattleMoveDamage += gExpShareExp;
                    if (holdEffect == 40)
                        gBattleMoveDamage = (gBattleMoveDamage * 150) / 100;
                    if (gBattleTypeFlags & (1 << 3))
                        gBattleMoveDamage = (gBattleMoveDamage * 150) / 100;
                    if (IsTradedMon(&gPlayerParty[gBattleStruct->expGetterMonId])
                     && !(gBattleTypeFlags & (1 << 16)))
                    {
                        gBattleMoveDamage = (gBattleMoveDamage * 150) / 100;
                        i = 330;
                    }
                    else
                    {
                        i = 329;
                    }


                    if (gBattleTypeFlags & (1 << 0))
                    {
                        if (gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId && !(gAbsentBattlerFlags & gBitTable[2]))
                            gBattleStruct->expGetterBattlerId = 2;
                        else
                        {
                            if (!(gAbsentBattlerFlags & gBitTable[0]))
                                gBattleStruct->expGetterBattlerId = 0;
                            else
                                gBattleStruct->expGetterBattlerId = 2;
                        }
                    }
                    else
                    {
                        gBattleStruct->expGetterBattlerId = 0;
                    }

                    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gBattleStruct->expGetterBattlerId; gBattleTextBuff1[3] = gBattleStruct->expGetterMonId; gBattleTextBuff1[4] = 0xFF; };

                    { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 0; gBattleTextBuff2[2] = i; gBattleTextBuff2[3] = (i & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; };
                    { gBattleTextBuff3[0] = 0xFD; gBattleTextBuff3[1] = 1; gBattleTextBuff3[2] = 4; gBattleTextBuff3[3] = 5; gBattleTextBuff3[4] = (gBattleMoveDamage); gBattleTextBuff3[5] = (gBattleMoveDamage & 0x0000FF00) >> 8; gBattleTextBuff3[6] = (gBattleMoveDamage & 0x00FF0000) >> 16; gBattleTextBuff3[7] = (gBattleMoveDamage & 0xFF000000) >> 24; gBattleTextBuff3[8] = 0xFF; };

                    PrepareStringBattle(13, gBattleStruct->expGetterBattlerId);
                    MonGainEVs(&gPlayerParty[gBattleStruct->expGetterMonId], gBattleMons[gBattlerFainted].species);
                }
                gBattleStruct->sentInPokes >>= 1;
                gBattleScripting.getexpState++;
            }
        }
        break;
    case 3:
        if (gBattleControllerExecFlags == 0)
        {
            gBattleBufferB[gBattleStruct->expGetterBattlerId][0] = 0;
            if (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57) && GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56) != 100)
            {
                gBattleResources->beforeLvlUp->stats[0] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 58);
                gBattleResources->beforeLvlUp->stats[1] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 59);
                gBattleResources->beforeLvlUp->stats[2] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 60);
                gBattleResources->beforeLvlUp->stats[3] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);
                gBattleResources->beforeLvlUp->stats[4] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 62);
                gBattleResources->beforeLvlUp->stats[5] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 63);

                gActiveBattler = gBattleStruct->expGetterBattlerId;
                BtlController_EmitExpUpdate(BUFFER_A, gBattleStruct->expGetterMonId, gBattleMoveDamage);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            gBattleScripting.getexpState++;
        }
        break;
    case 4:
        if (gBattleControllerExecFlags == 0)
        {
            gActiveBattler = gBattleStruct->expGetterBattlerId;
            if (gBattleBufferB[gActiveBattler][0] == CONTROLLER_TWORETURNVALUES && gBattleBufferB[gActiveBattler][1] == 11)
            {
                if (gBattleTypeFlags & (1 << 3) && gBattlerPartyIndexes[gActiveBattler] == gBattleStruct->expGetterMonId)
                    HandleLowHpMusicChange(&gPlayerParty[gBattlerPartyIndexes[gActiveBattler]], gActiveBattler);

                { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gActiveBattler; gBattleTextBuff1[3] = gBattleStruct->expGetterMonId; gBattleTextBuff1[4] = 0xFF; };
                { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 1; gBattleTextBuff2[2] = 1; gBattleTextBuff2[3] = 3; gBattleTextBuff2[4] = (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56)); gBattleTextBuff2[5] = 0xFF; };

                BattleScriptPushCursor();
                gLeveledUpInBattle |= gBitTable[gBattleStruct->expGetterMonId];
                gBattlescriptCurrInstr = BattleScript_LevelUp;
                gBattleMoveDamage = (gBattleBufferB[gActiveBattler][2] | (gBattleBufferB[gActiveBattler][3] << 8));
                AdjustFriendship(&gPlayerParty[gBattleStruct->expGetterMonId], 0);


                if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId && gBattleMons[0].hp)
                {
                    gBattleMons[0].level = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56);
                    gBattleMons[0].hp = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57);
                    gBattleMons[0].maxHP = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 58);
                    gBattleMons[0].attack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 59);
                    gBattleMons[0].defense = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 60);

                    gBattleMons[0].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);
                    gBattleMons[0].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);
                    gBattleMons[0].spAttack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 62);
                    gBattleMons[0].spDefense = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 63);
                }

                if (gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId && gBattleMons[2].hp && (gBattleTypeFlags & (1 << 0)))
                {
                    gBattleMons[2].level = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56);
                    gBattleMons[2].hp = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57);
                    gBattleMons[2].maxHP = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 58);
                    gBattleMons[2].attack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 59);
                    gBattleMons[2].defense = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 60);
                    gBattleMons[2].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);




                    gBattleMons[2].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);

                    gBattleMons[2].spAttack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 62);
                }
                gBattleScripting.getexpState = 5;
            }
            else
            {
                gBattleMoveDamage = 0;
                gBattleScripting.getexpState = 5;
            }
        }
        break;
    case 5:
        if (gBattleMoveDamage)
        {
            gBattleScripting.getexpState = 3;
        }
        else
        {
            gBattleStruct->expGetterMonId++;
            if (gBattleStruct->expGetterMonId < 6)
                gBattleScripting.getexpState = 2;
            else
                gBattleScripting.getexpState = 6;
        }
        break;
    case 6:
        if (gBattleControllerExecFlags == 0)
        {

            gBattleMons[gBattlerFainted].item = 0;
            gBattleMons[gBattlerFainted].ability = 0;
            gBattlescriptCurrInstr += 2;
        }
        break;
    }
}




static void Cmd_checkteamslost(void)
{
    u16 HP_count = 0;
    s32 i;

    if (gBattleControllerExecFlags)
        return;

    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&gPlayerParty[i], 11) && !GetMonData(&gPlayerParty[i], 45))
        {
            HP_count += GetMonData(&gPlayerParty[i], 57);
        }
    }
    if (HP_count == 0)
        gBattleOutcome |= 2;
    HP_count = 0;


    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&gEnemyParty[i], 11) && !GetMonData(&gEnemyParty[i], 45))
        {
            HP_count += GetMonData(&gEnemyParty[i], 57);
        }
    }
    if (HP_count == 0)
        gBattleOutcome |= 1;




    if (gBattleOutcome == 0 && (gBattleTypeFlags & (1 << 1)))
    {
        s32 emptyPlayerSpots;
        s32 emptyOpponentSpots;

        for (emptyPlayerSpots = 0, i = 0; i < gBattlersCount; i += 2)
        {
            u32 *ptr = &gHitMarker;
            u32 hitMarkerUnk = 0x10000000;

            i++;
            --i;
            if ((hitMarkerUnk << i) & *ptr && !gSpecialStatuses[i].faintedHasReplacement)
                emptyPlayerSpots++;
        }
        for (emptyOpponentSpots = 0, i = 1; i < gBattlersCount; i += 2)
        {
            u32 *ptr = &gHitMarker;
            u32 hitMarkerUnk = 0x10000000;

            {
                u8 match;

                ++match;
                --match;
            }
            if ((hitMarkerUnk << i) & *ptr && !gSpecialStatuses[i].faintedHasReplacement)
                emptyOpponentSpots++;
        }

        if (gBattleTypeFlags & (1 << 6))
        {
            if (emptyOpponentSpots + emptyPlayerSpots > 1)
                gBattlescriptCurrInstr = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
            else
                gBattlescriptCurrInstr += 5;
        }
        else
        {
            if (emptyOpponentSpots != 0 && emptyPlayerSpots != 0)
                gBattlescriptCurrInstr = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
            else
                gBattlescriptCurrInstr += 5;
        }
    }
    else
    {
        gBattlescriptCurrInstr += 5;
    }
}

static void MoveValuesCleanUp(void)
{
    gMoveResultFlags = 0;
    gBattleScripting.dmgMultiplier = 1;
    gCritMultiplier = 1;
    gBattleCommunication[3] = 0;
    gBattleCommunication[6] = 0;
    gHitMarker &= ~(1 << 6);
    gHitMarker &= ~(1 << 14);
}

static void Cmd_movevaluescleanup(void)
{
    MoveValuesCleanUp();
    gBattlescriptCurrInstr += 1;
}

static void Cmd_setmultihit(void)
{
    gMultiHitCounter = gBattlescriptCurrInstr[1];
    gBattlescriptCurrInstr += 2;
}

static void Cmd_decrementmultihit(void)
{
    if (--gMultiHitCounter == 0)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_goto(void)
{
    gBattlescriptCurrInstr = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_jumpifbyte(void)
{
    u8 caseID = gBattlescriptCurrInstr[1];
    const u8 *memByte = (void *) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    u8 value = gBattlescriptCurrInstr[6];
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 7)[0] + ((gBattlescriptCurrInstr + 7)[1] << 8) + ((gBattlescriptCurrInstr + 7)[2] << 16) + ((gBattlescriptCurrInstr + 7)[3] << 24));

    gBattlescriptCurrInstr += 11;

    switch (caseID)
    {
    case 0x0:
        if (*memByte == value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x1:
        if (*memByte != value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x2:
        if (*memByte > value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x3:
        if (*memByte < value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x4:
        if (*memByte & value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x5:
        if (!(*memByte & value))
            gBattlescriptCurrInstr = jumpPtr;
        break;
    }
}

static void Cmd_jumpifhalfword(void)
{
    u8 caseID = gBattlescriptCurrInstr[1];
    const u16 *memHword = (void *) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    u16 value = ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8));
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 8)[0] + ((gBattlescriptCurrInstr + 8)[1] << 8) + ((gBattlescriptCurrInstr + 8)[2] << 16) + ((gBattlescriptCurrInstr + 8)[3] << 24));

    gBattlescriptCurrInstr += 12;

    switch (caseID)
    {
    case 0x0:
        if (*memHword == value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x1:
        if (*memHword != value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x2:
        if (*memHword > value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x3:
        if (*memHword < value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x4:
        if (*memHword & value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x5:
        if (!(*memHword & value))
            gBattlescriptCurrInstr = jumpPtr;
        break;
    }
}

static void Cmd_jumpifword(void)
{
    u8 caseID = gBattlescriptCurrInstr[1];
    const u32 *memWord = (void *) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    u32 value = ((gBattlescriptCurrInstr + 6)[0] | ((gBattlescriptCurrInstr + 6)[1] << 8) | ((gBattlescriptCurrInstr + 6)[2] << 16) | ((gBattlescriptCurrInstr + 6)[3] << 24));
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 10)[0] + ((gBattlescriptCurrInstr + 10)[1] << 8) + ((gBattlescriptCurrInstr + 10)[2] << 16) + ((gBattlescriptCurrInstr + 10)[3] << 24));

    gBattlescriptCurrInstr += 14;

    switch (caseID)
    {
    case 0x0:
        if (*memWord == value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x1:
        if (*memWord != value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x2:
        if (*memWord > value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x3:
        if (*memWord < value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x4:
        if (*memWord & value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x5:
        if (!(*memWord & value))
            gBattlescriptCurrInstr = jumpPtr;
        break;
    }
}

static void Cmd_jumpifarrayequal(void)
{
    const u8 *mem1 = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8 *mem2 = (void *) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    u32 size = gBattlescriptCurrInstr[9];
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 10)[0] + ((gBattlescriptCurrInstr + 10)[1] << 8) + ((gBattlescriptCurrInstr + 10)[2] << 16) + ((gBattlescriptCurrInstr + 10)[3] << 24));

    u8 i;
    for (i = 0; i < size; i++)
    {
        if (*mem1 != *mem2)
        {
            gBattlescriptCurrInstr += 14;
            break;
        }
        mem1++, mem2++;
    }

    if (i == size)
        gBattlescriptCurrInstr = jumpPtr;
}

static void Cmd_jumpifarraynotequal(void)
{
    u8 equalBytes = 0;
    const u8 *mem1 = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8 *mem2 = (void *) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    u32 size = gBattlescriptCurrInstr[9];
    const u8 *jumpPtr = (void *) ((gBattlescriptCurrInstr + 10)[0] + ((gBattlescriptCurrInstr + 10)[1] << 8) + ((gBattlescriptCurrInstr + 10)[2] << 16) + ((gBattlescriptCurrInstr + 10)[3] << 24));

    u8 i;
    for (i = 0; i < size; i++)
    {
        if (*mem1 == *mem2)
            equalBytes++;
        mem1++, mem2++;
    }

    if (equalBytes != size)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 14;
}

static void Cmd_setbyte(void)
{
    u8 *memByte = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte = gBattlescriptCurrInstr[5];

    gBattlescriptCurrInstr += 6;
}

static void Cmd_addbyte(void)
{
    u8 *memByte = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte += gBattlescriptCurrInstr[5];
    gBattlescriptCurrInstr += 6;
}

static void Cmd_subbyte(void)
{
    u8 *memByte = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte -= gBattlescriptCurrInstr[5];
    gBattlescriptCurrInstr += 6;
}

static void Cmd_copyarray(void)
{
    u8 *dest = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8 *src = (void *) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    s32 size = gBattlescriptCurrInstr[9];

    s32 i;
    for (i = 0; i < size; i++)
        dest[i] = src[i];

    gBattlescriptCurrInstr += 10;
}

static void Cmd_copyarraywithindex(void)
{
    u8 *dest = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8 *src = (void *) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    const u8 *index = (void *) ((gBattlescriptCurrInstr + 9)[0] + ((gBattlescriptCurrInstr + 9)[1] << 8) + ((gBattlescriptCurrInstr + 9)[2] << 16) + ((gBattlescriptCurrInstr + 9)[3] << 24));
    s32 size = gBattlescriptCurrInstr[13];

    s32 i;
    for (i = 0; i < size; i++)
        dest[i] = src[i + *index];

    gBattlescriptCurrInstr += 14;
}

static void Cmd_orbyte(void)
{
    u8 *memByte = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte |= gBattlescriptCurrInstr[5];
    gBattlescriptCurrInstr += 6;
}

static void Cmd_orhalfword(void)
{
    u16 *memHword = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u16 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8));

    *memHword |= val;
    gBattlescriptCurrInstr += 7;
}

static void Cmd_orword(void)
{
    u32 *memWord = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u32 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));

    *memWord |= val;
    gBattlescriptCurrInstr += 9;
}

static void Cmd_bicbyte(void)
{
    u8 *memByte = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte &= ~(gBattlescriptCurrInstr[5]);
    gBattlescriptCurrInstr += 6;
}

static void Cmd_bichalfword(void)
{
    u16 *memHword = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u16 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8));

    *memHword &= ~val;
    gBattlescriptCurrInstr += 7;
}

static void Cmd_bicword(void)
{
    u32 *memWord = (void *) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u32 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));

    *memWord &= ~val;
    gBattlescriptCurrInstr += 9;
}

static void Cmd_pause(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        u16 value = ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8));
        if (++gPauseCounterBattle >= value)
        {
            gPauseCounterBattle = 0;
            gBattlescriptCurrInstr += 3;
        }
    }
}

static void Cmd_waitstate(void)
{
    if (gBattleControllerExecFlags == 0)
        gBattlescriptCurrInstr++;
}

static void Cmd_healthbar_update(void)
{
    if (gBattlescriptCurrInstr[1] == 0)
        gActiveBattler = gBattlerTarget;
    else
        gActiveBattler = gBattlerAttacker;

    BtlController_EmitHealthBarUpdate(BUFFER_A, gBattleMoveDamage);
    MarkBattlerForControllerExec(gActiveBattler);
    gBattlescriptCurrInstr += 2;
}

static void Cmd_return(void)
{
    BattleScriptPop();
}

static void Cmd_end(void)
{
    gMoveResultFlags = 0;
    gActiveBattler = 0;
    gCurrentActionFuncId = 11;
}

static void Cmd_end2(void)
{
    gActiveBattler = 0;
    gCurrentActionFuncId = 11;
}


static void Cmd_end3(void)
{
    BattleScriptPop();
    if (gBattleResources->battleCallbackStack->size != 0)
        gBattleResources->battleCallbackStack->size--;
    gBattleMainFunc = gBattleResources->battleCallbackStack->function[gBattleResources->battleCallbackStack->size];
}

static void Cmd_call(void)
{
    BattleScriptPush(gBattlescriptCurrInstr + 5);
    gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_jumpiftype2(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gBattlescriptCurrInstr[2] == gBattleMons[battlerId].type1 || gBattlescriptCurrInstr[2] == gBattleMons[battlerId].type2)
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 3)[0] | ((gBattlescriptCurrInstr + 3)[1] << 8) | ((gBattlescriptCurrInstr + 3)[2] << 16) | ((gBattlescriptCurrInstr + 3)[3] << 24));
    else
        gBattlescriptCurrInstr += 7;
}

static void Cmd_jumpifabilitypresent(void)
{
    if (AbilityBattleEffects(19, 0, gBattlescriptCurrInstr[1], 0, 0))
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_endselectionscript(void)
{
    *(gBattlerAttacker + gBattleStruct->selectionScriptFinished) = 1;
}

static void Cmd_playanimation(void)
{
    const u16 *argumentPtr;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    argumentPtr = (void *) ((gBattlescriptCurrInstr + 3)[0] + ((gBattlescriptCurrInstr + 3)[1] << 8) + ((gBattlescriptCurrInstr + 3)[2] << 16) + ((gBattlescriptCurrInstr + 3)[3] << 24));

    if (gBattlescriptCurrInstr[2] == 1
     || gBattlescriptCurrInstr[2] == 17
     || gBattlescriptCurrInstr[2] == 2
     || gBattlescriptCurrInstr[2] == 25)
    {
        BtlController_EmitBattleAnimation(BUFFER_A, gBattlescriptCurrInstr[2], *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 7;
    }
    else if (gHitMarker & (1 << 7))
    {
        BattleScriptPush(gBattlescriptCurrInstr + 7);
        gBattlescriptCurrInstr = BattleScript_Pausex20;
    }
    else if (gBattlescriptCurrInstr[2] == 10
          || gBattlescriptCurrInstr[2] == 11
          || gBattlescriptCurrInstr[2] == 12
          || gBattlescriptCurrInstr[2] == 13)
    {
        BtlController_EmitBattleAnimation(BUFFER_A, gBattlescriptCurrInstr[2], *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 7;
    }
    else if (gStatuses3[gActiveBattler] & ((1 << 7) | (1 << 6) | (1 << 18)))
    {
        gBattlescriptCurrInstr += 7;
    }
    else
    {
        BtlController_EmitBattleAnimation(BUFFER_A, gBattlescriptCurrInstr[2], *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 7;
    }
}


static void Cmd_playanimation_var(void)
{
    const u16 *argumentPtr;
    const u8 *animationIdPtr;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    animationIdPtr = (void *) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    argumentPtr = (void *) ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8) + ((gBattlescriptCurrInstr + 6)[2] << 16) + ((gBattlescriptCurrInstr + 6)[3] << 24));

    if (*animationIdPtr == 1
     || *animationIdPtr == 17
     || *animationIdPtr == 2)
    {
        BtlController_EmitBattleAnimation(BUFFER_A, *animationIdPtr, *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 10;
    }
    else if (gHitMarker & (1 << 7))
    {
        gBattlescriptCurrInstr += 10;
    }
    else if (*animationIdPtr == 10
          || *animationIdPtr == 11
          || *animationIdPtr == 12
          || *animationIdPtr == 13)
    {
        BtlController_EmitBattleAnimation(BUFFER_A, *animationIdPtr, *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 10;
    }
    else if (gStatuses3[gActiveBattler] & ((1 << 7) | (1 << 6) | (1 << 18)))
    {
        gBattlescriptCurrInstr += 10;
    }
    else
    {
        BtlController_EmitBattleAnimation(BUFFER_A, *animationIdPtr, *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 10;
    }
}

static void Cmd_setgraphicalstatchangevalues(void)
{
    u8 value = 0;
    switch (((gBattleScripting.statChanger & 0xF0)))
    {
    case (((s8)(((s8)(1) << 4)) & 0xF0)):
        value = 15;
        break;
    case (((s8)(((s8)(2) << 4)) & 0xF0)):
        value = 39;
        break;
    case (((s8)(((s8)(1) << 4)) & 0xF0)) | 0x80:
        value = 22;
        break;
    case (((s8)(((s8)(2) << 4)) & 0xF0)) | 0x80:
        value = 46;
        break;
    }
    gBattleScripting.animArg1 = ((gBattleScripting.statChanger & 0xF)) + value - 1;
    gBattleScripting.animArg2 = 0;
    gBattlescriptCurrInstr++;
}

static void Cmd_playstatchangeanimation(void)
{
    u32 currStat = 0;
    u16 statAnimId = 0;
    s32 changeableStatsCount = 0;
    u8 statsToCheck = 0;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    statsToCheck = gBattlescriptCurrInstr[2];

    if (gBattlescriptCurrInstr[3] & (1 << 0))
    {
        s16 startingStatAnimId;
        if (gBattlescriptCurrInstr[3] & (1 << 1))
            startingStatAnimId = 46 - 1;
        else
            startingStatAnimId = 22 - 1;

        while (statsToCheck != 0)
        {
            if (statsToCheck & 1)
            {
                if (gBattlescriptCurrInstr[3] & (1 << 3))
                {
                    if (gBattleMons[gActiveBattler].statStages[currStat] > 0)
                    {
                        statAnimId = startingStatAnimId + currStat;
                        changeableStatsCount++;
                    }
                }
                else if (!gSideTimers[((GetBattlerPosition(gActiveBattler) & 1))].mistTimer
                        && gBattleMons[gActiveBattler].ability != 29
                        && gBattleMons[gActiveBattler].ability != 73
                        && !(gBattleMons[gActiveBattler].ability == 51 && currStat == 6)
                        && !(gBattleMons[gActiveBattler].ability == 52 && currStat == 1))
                {
                    if (gBattleMons[gActiveBattler].statStages[currStat] > 0)
                    {
                        statAnimId = startingStatAnimId + currStat;
                        changeableStatsCount++;
                    }
                }
            }
            statsToCheck >>= 1, currStat++;
        }

        if (changeableStatsCount > 1)
        {
            if (gBattlescriptCurrInstr[3] & (1 << 1))
                statAnimId = 58;
            else
                statAnimId = 57;
        }
    }
    else
    {
        s16 startingStatAnimId;
        if (gBattlescriptCurrInstr[3] & (1 << 1))
            startingStatAnimId = 39 - 1;
        else
            startingStatAnimId = 15 - 1;

        while (statsToCheck != 0)
        {
            if (statsToCheck & 1 && gBattleMons[gActiveBattler].statStages[currStat] < 12)
            {
                statAnimId = startingStatAnimId + currStat;
                changeableStatsCount++;
            }
            statsToCheck >>= 1, currStat++;
        }

        if (changeableStatsCount > 1)
        {
            if (gBattlescriptCurrInstr[3] & (1 << 1))
                statAnimId = 56;
            else
                statAnimId = 55;
        }
    }

    if (gBattlescriptCurrInstr[3] & (1 << 2) && changeableStatsCount < 2)
    {
        gBattlescriptCurrInstr += 4;
    }
    else if (changeableStatsCount != 0 && !gBattleScripting.statAnimPlayed)
    {
        BtlController_EmitBattleAnimation(BUFFER_A, 1, statAnimId);
        MarkBattlerForControllerExec(gActiveBattler);
        if (gBattlescriptCurrInstr[3] & (1 << 2) && changeableStatsCount > 1)
            gBattleScripting.statAnimPlayed = 1;
        gBattlescriptCurrInstr += 4;
    }
    else
    {
        gBattlescriptCurrInstr += 4;
    }
}

static void Cmd_moveend(void)
{
    s32 i;
    bool32 effect = 0;
    u8 moveType = 0;
    u8 holdEffectAtk = 0;
    u16 *choicedMoveAtk = ((void *)0);
    u8 endMode, endState;
    u16 originallyUsedMove;

    if (gChosenMove == 0xFFFF)
        originallyUsedMove = 0;
    else
        originallyUsedMove = gChosenMove;

    endMode = gBattlescriptCurrInstr[1];
    endState = gBattlescriptCurrInstr[2];

    if (gBattleMons[gBattlerAttacker].item == 175)
        holdEffectAtk = gEnigmaBerries[gBattlerAttacker].holdEffect;
    else
        holdEffectAtk = ItemId_GetHoldEffect(gBattleMons[gBattlerAttacker].item);

    choicedMoveAtk = &gBattleStruct->choicedMove[gBattlerAttacker];
    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & ((1 << 6) - 1); else moveType = gBattleMoves[gCurrentMove].type; };

    do
    {
        switch (gBattleScripting.moveendState)
        {
        case 0:
            if (gBattleMons[gBattlerTarget].status2 & (1 << 23)
                && gBattleMons[gBattlerTarget].hp != 0
                && gBattlerAttacker != gBattlerTarget
                && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget)
                && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
                && ((gSpecialStatuses[gBattlerTarget].physicalDmg != 0 || gSpecialStatuses[gBattlerTarget].specialDmg != 0))
                && gBattleMoves[gCurrentMove].power != 0
                && gBattleMons[gBattlerTarget].statStages[1] < 12)
            {
                gBattleMons[gBattlerTarget].statStages[1]++;
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_RageIsBuilding;
                effect = 1;
            }
            gBattleScripting.moveendState++;
            break;
        case 1:
            if (gBattleMons[gBattlerTarget].status1 & (1 << 5)
                && gBattleMons[gBattlerTarget].hp != 0
                && gBattlerAttacker != gBattlerTarget
                && gSpecialStatuses[gBattlerTarget].specialDmg
                && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
                && moveType == 10)
            {
                gBattleMons[gBattlerTarget].status1 &= ~(1 << 5);
                gActiveBattler = gBattlerTarget;
                BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, 0, sizeof(gBattleMons[gBattlerTarget].status1), &gBattleMons[gBattlerTarget].status1);
                MarkBattlerForControllerExec(gActiveBattler);
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_DefrostedViaFireMove;
                effect = 1;
            }
            gBattleScripting.moveendState++;
            break;
        case 2:
            if (AbilityBattleEffects(7, gBattlerTarget, 0, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 3:
            if (AbilityBattleEffects(4, gBattlerTarget, 0, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 4:
            if (AbilityBattleEffects(5, 0, 0, 0, 0))
                effect = 1;
            else
                gBattleScripting.moveendState++;
            break;
        case 5:
            if (AbilityBattleEffects(8, gBattlerAttacker, 0, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 6:
            if (gHitMarker & (1 << 25)
             && holdEffectAtk == 29
             && gChosenMove != 165
             && (*choicedMoveAtk == 0 || *choicedMoveAtk == 0xFFFF))
            {
                if (gChosenMove == 226 && !(gMoveResultFlags & (1 << 5)))
                {
                    gBattleScripting.moveendState++;
                    break;
                }
                *choicedMoveAtk = gChosenMove;
            }
            for (i = 0; i < 4; i++)
            {
                if (gBattleMons[gBattlerAttacker].moves[i] == *choicedMoveAtk)
                    break;
            }
            if (i == 4)
                *choicedMoveAtk = 0;
            gBattleScripting.moveendState++;
            break;
        case 7:
            for (i = 0; i < gBattlersCount; i++)
            {
                u16 *changedItem = &gBattleStruct->changedItems[i];
                if (*changedItem != 0)
                {
                    gBattleMons[i].item = *changedItem;
                    *changedItem = 0;
                }
            }
            gBattleScripting.moveendState++;
            break;
        case 11:
            if (ItemBattleEffects(3, 0, 0))
                effect = 1;
            else
                gBattleScripting.moveendState++;
            break;
        case 12:
            if (ItemBattleEffects(4, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 8:
            if (gStatuses3[gBattlerAttacker] & (((1 << 7) | (1 << 6) | (1 << 18)))
                && gHitMarker & (1 << 7))
            {
                gActiveBattler = gBattlerAttacker;
                BtlController_EmitSpriteInvisibility(BUFFER_A, 1);
                MarkBattlerForControllerExec(gActiveBattler);
                gBattleScripting.moveendState++;
                return;
            }
            gBattleScripting.moveendState++;
            break;
        case 9:
            if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))
                || !(gStatuses3[gBattlerAttacker] & (((1 << 7) | (1 << 6) | (1 << 18))))
                || WasUnableToUseMove(gBattlerAttacker))
            {
                gActiveBattler = gBattlerAttacker;
                BtlController_EmitSpriteInvisibility(BUFFER_A, 0);
                MarkBattlerForControllerExec(gActiveBattler);
                gStatuses3[gBattlerAttacker] &= ~((1 << 7) | (1 << 6) | (1 << 18));
                gSpecialStatuses[gBattlerAttacker].restoredBattlerSprite = 1;
                gBattleScripting.moveendState++;
                return;
            }
            gBattleScripting.moveendState++;
            break;
        case 10:
            if (!gSpecialStatuses[gBattlerTarget].restoredBattlerSprite && gBattlerTarget < gBattlersCount
                && !(gStatuses3[gBattlerTarget] & ((1 << 7) | (1 << 6) | (1 << 18))))
            {
                gActiveBattler = gBattlerTarget;
                BtlController_EmitSpriteInvisibility(BUFFER_A, 0);
                MarkBattlerForControllerExec(gActiveBattler);
                gStatuses3[gBattlerTarget] &= ~((1 << 7) | (1 << 6) | (1 << 18));
                gBattleScripting.moveendState++;
                return;
            }
            gBattleScripting.moveendState++;
            break;
        case 13:
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gDisableStructs[i].substituteHP == 0)
                    gBattleMons[i].status2 &= ~(1 << 24);
            }
            gBattleScripting.moveendState++;
            break;
        case 14:
            if (gHitMarker & (1 << 12))
            {
                gActiveBattler = gBattlerAttacker;
                gBattlerAttacker = gBattlerTarget;
                gBattlerTarget = gActiveBattler;
                gHitMarker &= ~(1 << 12);
            }
            if (gHitMarker & (1 << 10))
            {
                gLastPrintedMoves[gBattlerAttacker] = gChosenMove;
            }
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerAttacker])
                && !(gBattleStruct->absentBattlerFlags & gBitTable[gBattlerAttacker])
                && gBattleMoves[originallyUsedMove].effect != 127)
            {
                if (gHitMarker & (1 << 25))
                {
                    gLastMoves[gBattlerAttacker] = gChosenMove;
                    gLastResultingMoves[gBattlerAttacker] = gCurrentMove;
                }
                else
                {
                    gLastMoves[gBattlerAttacker] = 0xFFFF;
                    gLastResultingMoves[gBattlerAttacker] = 0xFFFF;
                }

                if (!(gHitMarker & (gBitTable[gBattlerTarget] << 28)))
                    gLastHitBy[gBattlerTarget] = gBattlerAttacker;

                if (gHitMarker & (1 << 25) && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
                {
                    if (gChosenMove == 0xFFFF)
                    {
                        gLastLandedMoves[gBattlerTarget] = gChosenMove;
                    }
                    else
                    {
                        gLastLandedMoves[gBattlerTarget] = gCurrentMove;
                        { if (gBattleStruct->dynamicMoveType) gLastHitByType[gBattlerTarget] = gBattleStruct->dynamicMoveType & ((1 << 6) - 1); else gLastHitByType[gBattlerTarget] = gBattleMoves[gCurrentMove].type; };
                    }
                }
                else
                {
                    gLastLandedMoves[gBattlerTarget] = 0xFFFF;
                }
            }
            gBattleScripting.moveendState++;
            break;
        case 15:
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerAttacker])
                && !(gBattleStruct->absentBattlerFlags & gBitTable[gBattlerAttacker])
                && gBattleMoves[originallyUsedMove].flags & (1 << 4)
                && gHitMarker & (1 << 25)
                && gBattlerAttacker != gBattlerTarget
                && !(gHitMarker & (gBitTable[gBattlerTarget] << 28))
                && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
            {
                u8 target, attacker;

                *(gBattleStruct->lastTakenMove + gBattlerTarget * 2 + 0) = gChosenMove;
                *(gBattleStruct->lastTakenMove + gBattlerTarget * 2 + 1) = gChosenMove >> 8;

                target = gBattlerTarget;
                attacker = gBattlerAttacker;
                *(attacker * 2 + target * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 0) = gChosenMove;

                target = gBattlerTarget;
                attacker = gBattlerAttacker;
                *(attacker * 2 + target * 8 + (u8 *)(gBattleStruct->lastTakenMoveFrom) + 1) = gChosenMove >> 8;
            }
            gBattleScripting.moveendState++;
            break;
        case 16:
            if (!(gHitMarker & (1 << 19)) && gBattleTypeFlags & (1 << 0)
                && !gProtectStructs[gBattlerAttacker].chargingTurn && gBattleMoves[gCurrentMove].target == (1 << 3)
                && !(gHitMarker & (1 << 9)))
            {
                u8 battlerId = GetBattlerAtPosition(((GetBattlerPosition(gBattlerTarget)) ^ 2));
                if (gBattleMons[battlerId].hp != 0)
                {
                    gBattlerTarget = battlerId;
                    gHitMarker |= (1 << 9);
                    gBattleScripting.moveendState = 0;
                    MoveValuesCleanUp();
                    BattleScriptPush(gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect]);
                    gBattlescriptCurrInstr = BattleScript_FlushMessageBox;
                    return;
                }
                else
                {
                    gHitMarker |= (1 << 9);
                }
            }
            gBattleScripting.moveendState++;
            break;
        case 17:
            break;
        }

        if (endMode == 1 && effect == 0)
            gBattleScripting.moveendState = 17;
        if (endMode == 2 && endState == gBattleScripting.moveendState)
            gBattleScripting.moveendState = 17;

    } while (gBattleScripting.moveendState != 17 && effect == 0);

    if (gBattleScripting.moveendState == 17 && effect == 0)
        gBattlescriptCurrInstr += 3;
}

static void Cmd_typecalc2(void)
{
    u8 flags = 0;
    s32 i = 0;
    u8 moveType = gBattleMoves[gCurrentMove].type;

    if (gBattleMons[gBattlerTarget].ability == 26 && moveType == 4)
    {
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gMoveResultFlags |= ((1 << 0) | (1 << 3));
        gLastLandedMoves[gBattlerTarget] = 0;
        gBattleCommunication[6] = 4;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                if (gBattleMons[gBattlerTarget].status2 & (1 << 29))
                {
                    break;
                }
                else
                {
                    i += 3;
                    continue;
                }
            }

            if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1)
                {
                    if (((gTypeEffectiveness[i + 2])) == 0)
                    {
                        gMoveResultFlags |= (1 << 3);
                        break;
                    }
                    if (((gTypeEffectiveness[i + 2])) == 5)
                    {
                        flags |= (1 << 2);
                    }
                    if (((gTypeEffectiveness[i + 2])) == 20)
                    {
                        flags |= (1 << 1);
                    }
                }

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2)
                {
                    if (gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
                        && ((gTypeEffectiveness[i + 2])) == 0)
                    {
                        gMoveResultFlags |= (1 << 3);
                        break;
                    }
                    if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
                        && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
                        && ((gTypeEffectiveness[i + 2])) == 5)
                    {
                        flags |= (1 << 2);
                    }
                    if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
                        && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
                        && ((gTypeEffectiveness[i + 2])) == 20)
                    {
                        flags |= (1 << 1);
                    }
                }
            }
            i += 3;
        }
    }

    if (gBattleMons[gBattlerTarget].ability == 25
        && !(flags & ((1 << 0) | (1 << 3) | (1 << 5)))
        && AttacksThisTurn(gBattlerAttacker, gCurrentMove) == 2
        && (!(flags & (1 << 1)) || ((flags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
        && gBattleMoves[gCurrentMove].power)
    {
        gLastUsedAbility = 25;
        gMoveResultFlags |= (1 << 0);
        gLastLandedMoves[gBattlerTarget] = 0;
        gBattleCommunication[6] = 3;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    if (gMoveResultFlags & (1 << 3))
        gProtectStructs[gBattlerAttacker].targetNotAffected = 1;

    gBattlescriptCurrInstr++;
}

static void Cmd_returnatktoball(void)
{
    gActiveBattler = gBattlerAttacker;
    if (!(gHitMarker & (gBitTable[gActiveBattler] << 28)))
    {
        BtlController_EmitReturnMonToBall(BUFFER_A, 0);
        MarkBattlerForControllerExec(gActiveBattler);
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_getswitchedmondata(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    gBattlerPartyIndexes[gActiveBattler] = *(gBattleStruct->monToSwitchIntoId + gActiveBattler);

    BtlController_EmitGetMonData(BUFFER_A, REQUEST_ALL_BATTLE, gBitTable[gBattlerPartyIndexes[gActiveBattler]]);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_switchindataupdate(void)
{
    struct BattlePokemon oldData;
    s32 i;
    u8 *monData;

    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    oldData = gBattleMons[gActiveBattler];
    monData = (u8 *)(&gBattleMons[gActiveBattler]);

    for (i = 0; i < sizeof(struct BattlePokemon); i++)
        monData[i] = gBattleBufferB[gActiveBattler][4 + i];

    gBattleMons[gActiveBattler].type1 = gSpeciesInfo[gBattleMons[gActiveBattler].species].types[0];
    gBattleMons[gActiveBattler].type2 = gSpeciesInfo[gBattleMons[gActiveBattler].species].types[1];
    gBattleMons[gActiveBattler].ability = GetAbilityBySpecies(gBattleMons[gActiveBattler].species, gBattleMons[gActiveBattler].abilityNum);


    i = GetBattlerSide(gActiveBattler);
    if (gWishFutureKnock.knockedOffMons[i] & gBitTable[gBattlerPartyIndexes[gActiveBattler]])
    {
        gBattleMons[gActiveBattler].item = 0;
    }

    if (gBattleMoves[gCurrentMove].effect == 127)
    {
        for (i = 0; i < (6 + 2); i++)
        {
            gBattleMons[gActiveBattler].statStages[i] = oldData.statStages[i];
        }
        gBattleMons[gActiveBattler].status2 = oldData.status2;
    }

    SwitchInClearSetData();

    gBattleScripting.battler = gActiveBattler;

    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 7; gBattleTextBuff1[2] = gActiveBattler; gBattleTextBuff1[3] = gBattlerPartyIndexes[gActiveBattler]; gBattleTextBuff1[4] = 0xFF; };

    gBattlescriptCurrInstr += 2;
}

static void Cmd_switchinanim(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (GetBattlerSide(gActiveBattler) == 1
        && !(gBattleTypeFlags & ((1 << 1)
                                 | (1 << 13)
                                 | (1 << 9)
                                 | (1 << 16)
                                 | (1 << 11)
                                 | (1 << 15))))
        HandleSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gActiveBattler].species), FLAG_SET_SEEN, gBattleMons[gActiveBattler].personality);

    gAbsentBattlerFlags &= ~(gBitTable[gActiveBattler]);

    BtlController_EmitSwitchInAnim(BUFFER_A, gBattlerPartyIndexes[gActiveBattler], gBattlescriptCurrInstr[2]);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;
}

static void Cmd_jumpifcantswitch(void)
{
    s32 i;
    s32 lastMonId;
    struct Pokemon *party;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1] & ~(1 << 7));
    if (!(gBattlescriptCurrInstr[1] & (1 << 7))
        && ((gBattleMons[gActiveBattler].status2 & ((1 << 13 | 1 << 14 | 1 << 15) | (1 << 26)))
            || (gStatuses3[gActiveBattler] & (1 << 10))))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    }
    else if (gBattleTypeFlags & (1 << 6))
    {
        if (GetBattlerSide(gActiveBattler) == 1)
            party = gEnemyParty;
        else
            party = gPlayerParty;

        i = 0;
        if (GetLinkTrainerFlankId(GetBattlerMultiplayerId(gActiveBattler)) == 1)
            i = 3;
        for (lastMonId = i + 3; i < lastMonId; i++)
        {
            if (GetMonData(&party[i], 11) != 0
             && !GetMonData(&party[i], 45)
             && GetMonData(&party[i], 57) != 0
             && gBattlerPartyIndexes[gActiveBattler] != i)
                break;
        }

        if (i == lastMonId)
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;
    }
    else
    {
        u8 battlerIn1, battlerIn2;

        if (GetBattlerSide(gActiveBattler) == 1)
        {
            battlerIn1 = GetBattlerAtPosition(1);

            if (gBattleTypeFlags & (1 << 0))
                battlerIn2 = GetBattlerAtPosition(3);
            else
                battlerIn2 = battlerIn1;

            party = gEnemyParty;
        }
        else
        {
            battlerIn1 = GetBattlerAtPosition(0);

            if (gBattleTypeFlags & (1 << 0))
                battlerIn2 = GetBattlerAtPosition(2);
            else
                battlerIn2 = battlerIn1;

            party = gPlayerParty;
        }

        for (i = 0; i < 6; i++)
        {
            if (GetMonData(&party[i], 57) != 0
             && GetMonData(&party[i], 11) != 0
             && !GetMonData(&party[i], 45)
             && i != gBattlerPartyIndexes[battlerIn1] && i != gBattlerPartyIndexes[battlerIn2])
                break;
        }

        if (i == 6)
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;
    }
}




static void ChooseMonToSendOut(u8 slotId)
{
    *(gBattleStruct->battlerPartyIndexes + gActiveBattler) = gBattlerPartyIndexes[gActiveBattler];
    BtlController_EmitChoosePokemon(BUFFER_A, 1, slotId, 0, gBattleStruct->battlerPartyOrders[gActiveBattler]);
    MarkBattlerForControllerExec(gActiveBattler);
}

static void Cmd_openpartyscreen(void)
{
    u32 flags;
    u8 hitmarkerFaintBits;
    u8 battlerId;
    const u8 *jumpPtr;

    battlerId = 0;
    flags = 0;
    jumpPtr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));

    if (gBattlescriptCurrInstr[1] == 5)
    {
        if ((gBattleTypeFlags & ((1 << 0) | (1 << 6))) != (1 << 0))
        {
            for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            {
                if (gHitMarker & (gBitTable[gActiveBattler] << 28))
                {
                    if (HasNoMonsToSwitch(gActiveBattler, 6, 6))
                    {
                        gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                        gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
                        BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    else if (!gSpecialStatuses[gActiveBattler].faintedHasReplacement)
                    {
                        ChooseMonToSendOut(6);
                        gSpecialStatuses[gActiveBattler].faintedHasReplacement = 1;
                    }
                }
                else
                {
                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }
        }
        else if (gBattleTypeFlags & (1 << 0))
        {
            bool8 hasReplacement_0, hasReplacement_1, hasReplacement_2, hasReplacement_3;

            hitmarkerFaintBits = gHitMarker >> 28;

            if (gBitTable[0] & hitmarkerFaintBits)
            {
                gActiveBattler = 0;
                if (HasNoMonsToSwitch(gActiveBattler, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
                    BtlController_EmitCantSwitch(BUFFER_A);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].faintedHasReplacement)
                {
                    ChooseMonToSendOut(gBattleStruct->monToSwitchIntoId[2]);
                    gSpecialStatuses[gActiveBattler].faintedHasReplacement = 1;
                }
                else
                {
                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                    MarkBattlerForControllerExec(gActiveBattler);
                    flags |= 1;
                }
            }
            if (gBitTable[2] & hitmarkerFaintBits && !(gBitTable[0] & hitmarkerFaintBits))
            {
                gActiveBattler = 2;
                if (HasNoMonsToSwitch(gActiveBattler, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
                    BtlController_EmitCantSwitch(BUFFER_A);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].faintedHasReplacement)
                {
                    ChooseMonToSendOut(gBattleStruct->monToSwitchIntoId[0]);
                    gSpecialStatuses[gActiveBattler].faintedHasReplacement = 1;
                }
                else if (!(flags & 1))
                {
                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }
            if (gBitTable[1] & hitmarkerFaintBits)
            {
                gActiveBattler = 1;
                if (HasNoMonsToSwitch(gActiveBattler, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
                    BtlController_EmitCantSwitch(BUFFER_A);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].faintedHasReplacement)
                {
                    ChooseMonToSendOut(gBattleStruct->monToSwitchIntoId[3]);
                    gSpecialStatuses[gActiveBattler].faintedHasReplacement = 1;
                }
                else
                {
                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                    MarkBattlerForControllerExec(gActiveBattler);
                    flags |= 2;
                }
            }
            if (gBitTable[3] & hitmarkerFaintBits && !(gBitTable[1] & hitmarkerFaintBits))
            {
                gActiveBattler = 3;
                if (HasNoMonsToSwitch(gActiveBattler, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
                    BtlController_EmitCantSwitch(BUFFER_A);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].faintedHasReplacement)
                {
                    ChooseMonToSendOut(gBattleStruct->monToSwitchIntoId[1]);
                    gSpecialStatuses[gActiveBattler].faintedHasReplacement = 1;
                }
                else if (!(flags & 2))
                {
                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }

            hasReplacement_0 = gSpecialStatuses[0].faintedHasReplacement;
            if (!hasReplacement_0)
            {
                hasReplacement_2 = gSpecialStatuses[2].faintedHasReplacement;
                if (!hasReplacement_2 && hitmarkerFaintBits != 0)
                {
                    if (gAbsentBattlerFlags & gBitTable[0])
                        gActiveBattler = 2;
                    else
                        gActiveBattler = 0;

                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                    MarkBattlerForControllerExec(gActiveBattler);
                }

            }
            hasReplacement_1 = gSpecialStatuses[1].faintedHasReplacement;
            if (!hasReplacement_1)
            {
                hasReplacement_3 = gSpecialStatuses[3].faintedHasReplacement;
                if (!hasReplacement_3 && hitmarkerFaintBits != 0)
                {
                    if (gAbsentBattlerFlags & gBitTable[1])
                        gActiveBattler = 3;
                    else
                        gActiveBattler = 1;

                    BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }
        }
        gBattlescriptCurrInstr += 6;
    }
    else if (gBattlescriptCurrInstr[1] == 6)
    {
        if (!(gBattleTypeFlags & (1 << 6)))
        {
            if (gBattleTypeFlags & (1 << 0))
            {
                hitmarkerFaintBits = gHitMarker >> 28;
                if (gBitTable[2] & hitmarkerFaintBits && gBitTable[0] & hitmarkerFaintBits)
                {
                    gActiveBattler = 2;
                    if (HasNoMonsToSwitch(gActiveBattler, gBattleBufferB[0][1], 6))
                    {
                        gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                        gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
                        BtlController_EmitCantSwitch(BUFFER_A);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    else if (!gSpecialStatuses[gActiveBattler].faintedHasReplacement)
                    {
                        ChooseMonToSendOut(gBattleStruct->monToSwitchIntoId[0]);
                        gSpecialStatuses[gActiveBattler].faintedHasReplacement = 1;
                    }
                }
                if (gBitTable[3] & hitmarkerFaintBits && hitmarkerFaintBits & gBitTable[1])
                {
                    gActiveBattler = 3;
                    if (HasNoMonsToSwitch(gActiveBattler, gBattleBufferB[1][1], 6))
                    {
                        gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                        gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
                        BtlController_EmitCantSwitch(BUFFER_A);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    else if (!gSpecialStatuses[gActiveBattler].faintedHasReplacement)
                    {
                        ChooseMonToSendOut(gBattleStruct->monToSwitchIntoId[1]);
                        gSpecialStatuses[gActiveBattler].faintedHasReplacement = 1;
                    }
                }
                gBattlescriptCurrInstr += 6;
            }
            else
            {

                gBattlescriptCurrInstr += 6;
            }
        }
        else
        {

            gBattlescriptCurrInstr += 6;
        }

        hitmarkerFaintBits = gHitMarker >> 28;

        gBattlerFainted = 0;
        while (!(gBitTable[gBattlerFainted] & hitmarkerFaintBits)
               && gBattlerFainted < gBattlersCount)
            gBattlerFainted++;

        if (gBattlerFainted == gBattlersCount)
            gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        if (gBattlescriptCurrInstr[1] & (1 << 7))
            hitmarkerFaintBits = 0;
        else
            hitmarkerFaintBits = 1;

        battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1] & ~(1 << 7));
        if (gSpecialStatuses[battlerId].faintedHasReplacement)
        {
            gBattlescriptCurrInstr += 6;
        }
        else if (HasNoMonsToSwitch(battlerId, 6, 6))
        {
            gActiveBattler = battlerId;
            gAbsentBattlerFlags |= gBitTable[gActiveBattler];
            gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
            gBattlescriptCurrInstr = jumpPtr;
        }
        else
        {
            gActiveBattler = battlerId;
            *(gBattleStruct->battlerPartyIndexes + gActiveBattler) = gBattlerPartyIndexes[gActiveBattler];

            BtlController_EmitChoosePokemon(BUFFER_A, hitmarkerFaintBits, *(gBattleStruct->monToSwitchIntoId + (gActiveBattler ^ 2)), 0, gBattleStruct->battlerPartyOrders[gActiveBattler]);
            MarkBattlerForControllerExec(gActiveBattler);

            gBattlescriptCurrInstr += 6;

            if (GetBattlerPosition(gActiveBattler) == 0 && gBattleResults.playerSwitchesCounter < 255)
                gBattleResults.playerSwitchesCounter++;

            if (gBattleTypeFlags & (1 << 6))
            {
                for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
                {
                    if (gActiveBattler != battlerId)
                    {
                        BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                }
            }
            else
            {
                gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(battlerId) ^ 1);
                if (gAbsentBattlerFlags & gBitTable[gActiveBattler])
                    gActiveBattler ^= 2;

                BtlController_EmitLinkStandbyMsg(BUFFER_A, LINK_STANDBY_MSG_ONLY);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
    }
}

static void Cmd_switchhandleorder(void)
{
    s32 i;
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattlescriptCurrInstr[2])
    {
    case 0:
        for (i = 0; i < gBattlersCount; i++)
        {
            if (gBattleBufferB[i][0] == CONTROLLER_CHOSENMONRETURNVALUE)
            {
                *(gBattleStruct->monToSwitchIntoId + i) = gBattleBufferB[i][1];
            }
        }
        break;
    case 1:
        if (!(gBattleTypeFlags & (1 << 6)))
            UpdatePartyOwnerOnSwitch_NonMulti(gActiveBattler);
        break;
    case 2:
        gBattleCommunication[0] = gBattleBufferB[gActiveBattler][1];
        *(gBattleStruct->monToSwitchIntoId + gActiveBattler) = gBattleBufferB[gActiveBattler][1];

        if (gBattleTypeFlags & (1 << 6))
        {
            *(gActiveBattler * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) &= 0xF;
            *(gActiveBattler * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) |= (gBattleBufferB[gActiveBattler][2] & 0xF0);
            *(gActiveBattler * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 1) = gBattleBufferB[gActiveBattler][3];

            *((gActiveBattler ^ 2) * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) &= (0xF0);
            *((gActiveBattler ^ 2) * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 0) |= (gBattleBufferB[gActiveBattler][2] & 0xF0) >> 4;
            *((gActiveBattler ^ 2) * 3 + (u8 *)(gBattleStruct->battlerPartyOrders) + 2) = gBattleBufferB[gActiveBattler][3];
        }
        else
        {
            UpdatePartyOwnerOnSwitch_NonMulti(gActiveBattler);
        }
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 6; gBattleTextBuff1[2] = gBattleMons[gBattlerAttacker].species; gBattleTextBuff1[3] = (gBattleMons[gBattlerAttacker].species & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }
        { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 7; gBattleTextBuff2[2] = gActiveBattler; gBattleTextBuff2[3] = gBattleBufferB[gActiveBattler][1]; gBattleTextBuff2[4] = 0xFF; }

        break;
    }

    gBattlescriptCurrInstr += 3;
}

static void Cmd_switchineffects(void)
{
    s32 i;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    UpdateSentPokesToOpponentValue(gActiveBattler);

    gHitMarker &= ~(gBitTable[gActiveBattler] << 28);
    gSpecialStatuses[gActiveBattler].faintedHasReplacement = 0;

    if (!(gSideStatuses[GetBattlerSide(gActiveBattler)] & (1 << 9))
        && (gSideStatuses[GetBattlerSide(gActiveBattler)] & (1 << 4))
        && !((gBattleMons[gActiveBattler].type1 == 2 || gBattleMons[gActiveBattler].type2 == 2))
        && gBattleMons[gActiveBattler].ability != 26)
    {
        u8 spikesDmg;

        gSideStatuses[GetBattlerSide(gActiveBattler)] |= (1 << 9);





        spikesDmg = (5 - gSideTimers[GetBattlerSide(gActiveBattler)].spikesAmount) * 2;
        gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / (spikesDmg);
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattleScripting.battler = gActiveBattler;
        BattleScriptPushCursor();

        if (gBattlescriptCurrInstr[1] == 0)
            gBattlescriptCurrInstr = BattleScript_SpikesOnTarget;
        else if (gBattlescriptCurrInstr[1] == 1)
            gBattlescriptCurrInstr = BattleScript_SpikesOnAttacker;
        else
            gBattlescriptCurrInstr = BattleScript_SpikesOnFaintedBattler;
    }
    else
    {


        if (gBattleMons[gActiveBattler].ability == 54)

            gDisableStructs[gActiveBattler].truantCounter = 1;



        if (!AbilityBattleEffects(0, gActiveBattler, 0, 0, 0)
            && !ItemBattleEffects(0, gActiveBattler, 0))
        {
            gSideStatuses[GetBattlerSide(gActiveBattler)] &= ~(1 << 9);

            for (i = 0; i < gBattlersCount; i++)
            {
                if (gBattlerByTurnOrder[i] == gActiveBattler)
                    gActionsByTurnOrder[i] = 12;
            }

            for (i = 0; i < gBattlersCount; i++)
            {
                u16 *hpOnSwitchout = &gBattleStruct->hpOnSwitchout[GetBattlerSide(i)];
                *hpOnSwitchout = gBattleMons[i].hp;
            }

            if (gBattlescriptCurrInstr[1] == 5)
            {
                u32 hitmarkerFaintBits = gHitMarker >> 28;

                gBattlerFainted++;
                while (1)
                {
                    if (hitmarkerFaintBits & gBitTable[gBattlerFainted] && !(gAbsentBattlerFlags & gBitTable[gBattlerFainted]))
                        break;
                    if (gBattlerFainted >= gBattlersCount)
                        break;
                    gBattlerFainted++;
                }
            }
            gBattlescriptCurrInstr += 2;
        }
    }
}

static void Cmd_trainerslidein(void)
{
    if (!gBattlescriptCurrInstr[1])
        gActiveBattler = GetBattlerAtPosition(0);
    else
        gActiveBattler = GetBattlerAtPosition(1);
    BtlController_EmitTrainerSlide(BUFFER_A);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_playse(void)
{
    gActiveBattler = gBattlerAttacker;
    BtlController_EmitPlaySE(BUFFER_A, ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8)));
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;
}

static void Cmd_fanfare(void)
{
    gActiveBattler = gBattlerAttacker;
    BtlController_EmitPlayFanfare(BUFFER_A, ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8)));
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;
}

static void Cmd_playfaintcry(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitFaintingCry(BUFFER_A);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_endlinkbattle(void)
{
    gActiveBattler = GetBattlerAtPosition(0);
    BtlController_EmitEndLinkBattle(BUFFER_A, gBattleOutcome);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 1;
}

static void Cmd_returntoball(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitReturnMonToBall(BUFFER_A, 1);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_handlelearnnewmove(void)
{
    const u8 *learnedMovePtr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8 *nothingToLearnPtr = (u8 *) ((gBattlescriptCurrInstr + 5)[0] | ((gBattlescriptCurrInstr + 5)[1] << 8) | ((gBattlescriptCurrInstr + 5)[2] << 16) | ((gBattlescriptCurrInstr + 5)[3] << 24));

    u16 learnMove = MonTryLearningNewMove(&gPlayerParty[gBattleStruct->expGetterMonId], gBattlescriptCurrInstr[9]);
    while (learnMove == 0xFFFE)
        learnMove = MonTryLearningNewMove(&gPlayerParty[gBattleStruct->expGetterMonId], 0);

    if (learnMove == 0)
    {
        gBattlescriptCurrInstr = nothingToLearnPtr;
    }
    else if (learnMove == 0xFFFF)
    {
        gBattlescriptCurrInstr += 10;
    }
    else
    {
        gActiveBattler = GetBattlerAtPosition(0);

        if (gBattlerPartyIndexes[gActiveBattler] == gBattleStruct->expGetterMonId
            && !(gBattleMons[gActiveBattler].status2 & (1 << 21)))
        {
            GiveMoveToBattleMon(&gBattleMons[gActiveBattler], learnMove);
        }
        if (gBattleTypeFlags & (1 << 0))
        {
            gActiveBattler = GetBattlerAtPosition(2);
            if (gBattlerPartyIndexes[gActiveBattler] == gBattleStruct->expGetterMonId
                && !(gBattleMons[gActiveBattler].status2 & (1 << 21)))
            {
                GiveMoveToBattleMon(&gBattleMons[gActiveBattler], learnMove);
            }
        }

        gBattlescriptCurrInstr = learnedMovePtr;
    }
}

static void Cmd_yesnoboxlearnmove(void)
{
    gActiveBattler = 0;

    switch (gBattleScripting.learnMoveState)
    {
    case 0:
        HandleBattleWindow(23, 8, 29, 13, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 14);
        gBattleScripting.learnMoveState++;
        gBattleCommunication[1] = 0;
        BattleCreateYesNoCursorAt();
        break;
    case 1:
        if (({(gMain.newKeys) & (0x0040);}) && gBattleCommunication[1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 0;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0080);}) && gBattleCommunication[1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 1;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0001);}))
        {
            PlaySE(5);
            if (gBattleCommunication[1] == 0)
            {
                HandleBattleWindow(23, 8, 29, 13, (1 << 0));
                BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
                gBattleScripting.learnMoveState++;
            }
            else
            {
                gBattleScripting.learnMoveState = 4;
            }
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            PlaySE(5);
            gBattleScripting.learnMoveState = 4;
        }
        break;
    case 2:
        if (!gPaletteFade.active)
        {
            FreeAllWindowBuffers();
            ShowSelectMovePokemonSummaryScreen(gPlayerParty, gBattleStruct->expGetterMonId, gPlayerPartyCount - 1, ReshowBattleScreenAfterMenu, gMoveToLearn);
            gBattleScripting.learnMoveState++;
        }
        break;
    case 3:
        if (!gPaletteFade.active && gMain.callback2 == BattleMainCB2)
        {
            u8 movePosition = GetMoveSlotToReplace();
            if (movePosition == 4)
            {
                gBattleScripting.learnMoveState = 4;
            }
            else
            {
                u16 moveId = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 13 + movePosition);

                if (IsHMMove2(moveId))
                {
                    PrepareStringBattle(319, gActiveBattler);
                    gBattleScripting.learnMoveState = 5;
                }
                else
                {
                    gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

                    { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 2; gBattleTextBuff2[2] = moveId; gBattleTextBuff2[3] = (moveId & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; }

                    RemoveMonPPBonus(&gPlayerParty[gBattleStruct->expGetterMonId], movePosition);
                    SetMonMoveSlot(&gPlayerParty[gBattleStruct->expGetterMonId], gMoveToLearn, movePosition);

                    if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId && (!(gBattleMons[0].status2 & (1 << 21)) && !(gDisableStructs[0].mimickedMoves & gBitTable[movePosition])))
                    {
                        RemoveBattleMonPPBonus(&gBattleMons[0], movePosition);
                        SetBattleMonMoveSlot(&gBattleMons[0], gMoveToLearn, movePosition);
                    }
                    if (gBattleTypeFlags & (1 << 0)
                        && gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId
                        && (!(gBattleMons[2].status2 & (1 << 21)) && !(gDisableStructs[2].mimickedMoves & gBitTable[movePosition])))
                    {
                        RemoveBattleMonPPBonus(&gBattleMons[2], movePosition);
                        SetBattleMonMoveSlot(&gBattleMons[2], gMoveToLearn, movePosition);
                    }
                }
            }
        }
        break;
    case 4:
        HandleBattleWindow(23, 8, 29, 13, (1 << 0));
        gBattlescriptCurrInstr += 5;
        break;
    case 5:
        if (gBattleControllerExecFlags == 0)
        {
            gBattleScripting.learnMoveState = 2;
        }
        break;
    }
}

static void Cmd_yesnoboxstoplearningmove(void)
{
    switch (gBattleScripting.learnMoveState)
    {
    case 0:
        HandleBattleWindow(23, 8, 29, 13, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 14);
        gBattleScripting.learnMoveState++;
        gBattleCommunication[1] = 0;
        BattleCreateYesNoCursorAt();
        break;
    case 1:
        if (({(gMain.newKeys) & (0x0040);}) && gBattleCommunication[1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 0;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0080);}) && gBattleCommunication[1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 1;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0001);}))
        {
            PlaySE(5);

            if (gBattleCommunication[1] != 0)
                gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
            else
                gBattlescriptCurrInstr += 5;

            HandleBattleWindow(23, 8, 29, 13, (1 << 0));
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            PlaySE(5);
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
            HandleBattleWindow(23, 8, 29, 13, (1 << 0));
        }
        break;
    }
}

static void Cmd_hitanimation(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        gBattlescriptCurrInstr += 2;
    }
    else if (!(gHitMarker & (1 << 8)) || !(gBattleMons[gActiveBattler].status2 & (1 << 24)) || gDisableStructs[gActiveBattler].substituteHP == 0)
    {
        BtlController_EmitHitAnimation(BUFFER_A);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 2;
    }
    else
    {
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_getmoneyreward(void)
{
    u32 i = 0;
    u32 moneyReward;
    u8 lastMonLevel = 0;

    const struct TrainerMonItemCustomMoves *party4;

    if (gBattleOutcome == 1)
    {
        if (gTrainerBattleOpponent_A == 0x400)
        {
            moneyReward = gBattleResources->secretBase->party.levels[0] * 20 * gBattleStruct->moneyMultiplier;
        }
        else
        {
            switch (gTrainers[gTrainerBattleOpponent_A].partyFlags)
            {
            case 0:
                {
                    const struct TrainerMonNoItemDefaultMoves *party1 = gTrainers[gTrainerBattleOpponent_A].party.NoItemDefaultMoves;

                    lastMonLevel = party1[gTrainers[gTrainerBattleOpponent_A].partySize - 1].lvl;
                }
                break;
            case (1 << 0):
                {
                    const struct TrainerMonNoItemCustomMoves *party2 = gTrainers[gTrainerBattleOpponent_A].party.NoItemCustomMoves;

                    lastMonLevel = party2[gTrainers[gTrainerBattleOpponent_A].partySize - 1].lvl;
                }
                break;
            case (1 << 1):
                {
                    const struct TrainerMonItemDefaultMoves *party3 = gTrainers[gTrainerBattleOpponent_A].party.ItemDefaultMoves;

                    lastMonLevel = party3[gTrainers[gTrainerBattleOpponent_A].partySize - 1].lvl;
                }
                break;
            case ((1 << 0) | (1 << 1)):
                {
                    party4 = gTrainers[gTrainerBattleOpponent_A].party.ItemCustomMoves;

                    lastMonLevel = party4[gTrainers[gTrainerBattleOpponent_A].partySize - 1].lvl;
                }
                break;
            }
            for (; gTrainerMoneyTable[i].classId != 0xFF; i++)
            {
                if (gTrainerMoneyTable[i].classId == gTrainers[gTrainerBattleOpponent_A].trainerClass)
                    break;
            }
            party4 = gTrainers[gTrainerBattleOpponent_A].party.ItemCustomMoves;
            moneyReward = 4 * lastMonLevel * gBattleStruct->moneyMultiplier * (gBattleTypeFlags & (1 << 0) ? 2 : 1) * gTrainerMoneyTable[i].value;
        }
        AddMoney(&gSaveBlock1Ptr->money, moneyReward);
    }
    else
    {
        moneyReward = ComputeWhiteOutMoneyLoss();
    }
    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 4; gBattleTextBuff1[3] = 5; gBattleTextBuff1[4] = (moneyReward); gBattleTextBuff1[5] = (moneyReward & 0x0000FF00) >> 8; gBattleTextBuff1[6] = (moneyReward & 0x00FF0000) >> 16; gBattleTextBuff1[7] = (moneyReward & 0xFF000000) >> 24; gBattleTextBuff1[8] = 0xFF; };
    if (moneyReward)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
}


static void Cmd_updatebattlermoves(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattleCommunication[0])
    {
    case 0:
        BtlController_EmitGetMonData(BUFFER_A, REQUEST_ALL_BATTLE, 0);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattleCommunication[0]++;
        break;
    case 1:
         if (gBattleControllerExecFlags == 0)
         {
            s32 i;
            struct BattlePokemon *bufferPoke = (struct BattlePokemon *) &gBattleBufferB[gActiveBattler][4];
            for (i = 0; i < 4; i++)
            {
                gBattleMons[gActiveBattler].moves[i] = bufferPoke->moves[i];
                gBattleMons[gActiveBattler].pp[i] = bufferPoke->pp[i];
            }
            gBattlescriptCurrInstr += 2;
         }
         break;
    }
}

static void Cmd_swapattackerwithtarget(void)
{
    gActiveBattler = gBattlerAttacker;
    gBattlerAttacker = gBattlerTarget;
    gBattlerTarget = gActiveBattler;

    if (gHitMarker & (1 << 12))
        gHitMarker &= ~(1 << 12);
    else
        gHitMarker |= (1 << 12);

    gBattlescriptCurrInstr++;
}

static void Cmd_incrementgamestat(void)
{
    if (GetBattlerSide(gBattlerAttacker) == 0)
        IncrementGameStat(gBattlescriptCurrInstr[1]);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_drawpartystatussummary(void)
{
    s32 i;
    struct Pokemon *party;
    struct HpAndStatus hpStatuses[6];

    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (GetBattlerSide(gActiveBattler) == 0)
        party = gPlayerParty;
    else
        party = gEnemyParty;

    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&party[i], 65) == 0
            || GetMonData(&party[i], 65) == 413)
        {
            hpStatuses[i].hp = 0xFFFF;
            hpStatuses[i].status = 0;
        }
        else
        {
            hpStatuses[i].hp = GetMonData(&party[i], 57);
            hpStatuses[i].status = GetMonData(&party[i], 55);
        }
    }

    BtlController_EmitDrawPartyStatusSummary(BUFFER_A, hpStatuses, 1);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_hidepartystatussummary(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitHidePartyStatusSummary(BUFFER_A);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_jumptocalledmove(void)
{
    if (gBattlescriptCurrInstr[1])
        gCurrentMove = gCalledMove;
    else
        gChosenMove = gCurrentMove = gCalledMove;

    gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
}

static void Cmd_statusanimation(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (!(gStatuses3[gActiveBattler] & ((1 << 7) | (1 << 6) | (1 << 18)))
            && gDisableStructs[gActiveBattler].substituteHP == 0
            && !(gHitMarker & (1 << 7)))
        {
            BtlController_EmitStatusAnimation(BUFFER_A, 0, gBattleMons[gActiveBattler].status1);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_status2animation(void)
{
    u32 wantedToAnimate;

    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        wantedToAnimate = ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        if (!(gStatuses3[gActiveBattler] & ((1 << 7) | (1 << 6) | (1 << 18)))
            && gDisableStructs[gActiveBattler].substituteHP == 0
            && !(gHitMarker & (1 << 7)))
        {
            BtlController_EmitStatusAnimation(BUFFER_A, 1, gBattleMons[gActiveBattler].status2 & wantedToAnimate);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        gBattlescriptCurrInstr += 6;
    }
}

static void Cmd_chosenstatusanimation(void)
{
    u32 wantedStatus;

    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        wantedStatus = ((gBattlescriptCurrInstr + 3)[0] | ((gBattlescriptCurrInstr + 3)[1] << 8) | ((gBattlescriptCurrInstr + 3)[2] << 16) | ((gBattlescriptCurrInstr + 3)[3] << 24));
        if (!(gStatuses3[gActiveBattler] & ((1 << 7) | (1 << 6) | (1 << 18)))
            && gDisableStructs[gActiveBattler].substituteHP == 0
            && !(gHitMarker & (1 << 7)))
        {
            BtlController_EmitStatusAnimation(BUFFER_A, gBattlescriptCurrInstr[2], wantedStatus);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        gBattlescriptCurrInstr += 7;
    }
}

static void Cmd_yesnobox(void)
{
    switch (gBattleCommunication[0])
    {
    case 0:
        HandleBattleWindow(23, 8, 29, 13, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 14);
        gBattleCommunication[0]++;
        gBattleCommunication[1] = 0;
        BattleCreateYesNoCursorAt();
        break;
    case 1:
        if (({(gMain.newKeys) & (0x0040);}) && gBattleCommunication[1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 0;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0080);}) && gBattleCommunication[1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 1;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0002);}))
        {
            gBattleCommunication[1] = 1;
            PlaySE(5);
            HandleBattleWindow(23, 8, 29, 13, (1 << 0));
            gBattlescriptCurrInstr++;
        }
        else if (({(gMain.newKeys) & (0x0001);}))
        {
            PlaySE(5);
            HandleBattleWindow(23, 8, 29, 13, (1 << 0));
            gBattlescriptCurrInstr++;
        }
        break;
    }
}

static void Cmd_cancelallactions(void)
{
    s32 i;

    for (i = 0; i < gBattlersCount; i++)
        gActionsByTurnOrder[i] = 12;

    gBattlescriptCurrInstr++;
}


static void Cmd_adjustsetdamage(void)
{
    u8 holdEffect, param;

    if (gBattleMons[gBattlerTarget].item == 175)
    {
        holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
        param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, holdEffect);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }
    if (!(gBattleMons[gBattlerTarget].status2 & (1 << 24))
     && (gBattleMoves[gCurrentMove].effect == 101 || gProtectStructs[gBattlerTarget].endured || gSpecialStatuses[gBattlerTarget].focusBanded)
     && gBattleMons[gBattlerTarget].hp <= gBattleMoveDamage)
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
        if (gProtectStructs[gBattlerTarget].endured)
        {
            gMoveResultFlags |= (1 << 6);
        }
        else if (gSpecialStatuses[gBattlerTarget].focusBanded)
        {
            gMoveResultFlags |= (1 << 7);
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_removeitem(void)
{
    u16 *usedHeldItem;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    usedHeldItem = &gBattleStruct->usedHeldItems[gActiveBattler];
    *usedHeldItem = gBattleMons[gActiveBattler].item;
    gBattleMons[gActiveBattler].item = 0;

    BtlController_EmitSetMonData(BUFFER_A, REQUEST_HELDITEM_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].item), &gBattleMons[gActiveBattler].item);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_atknameinbuff1(void)
{
    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 7; gBattleTextBuff1[2] = gBattlerAttacker; gBattleTextBuff1[3] = gBattlerPartyIndexes[gBattlerAttacker]; gBattleTextBuff1[4] = 0xFF; }

    gBattlescriptCurrInstr++;
}

static void Cmd_drawlvlupbox(void)
{
    if (gBattleScripting.drawlvlupboxState == 0)
    {



        if (IsMonGettingExpSentOut())
            gBattleScripting.drawlvlupboxState = 3;
        else
            gBattleScripting.drawlvlupboxState = 1;
    }

    switch (gBattleScripting.drawlvlupboxState)
    {
    case 1:

        gBattle_BG2_Y = 96;
        SetBgAttribute(2, BG_ATTR_PRIORITY, 0);
        ShowBg(2);
        InitLevelUpBanner();
        gBattleScripting.drawlvlupboxState = 2;
        break;
    case 2:
        if (!SlideInLevelUpBanner())
            gBattleScripting.drawlvlupboxState = 3;
        break;
    case 3:

        gBattle_BG1_X = 0;
        gBattle_BG1_Y = 256;
        SetBgAttribute(0, BG_ATTR_PRIORITY, 1);
        SetBgAttribute(1, BG_ATTR_PRIORITY, 0);
        ShowBg(0);
        ShowBg(1);
        HandleBattleWindow(18, 7, 29, 19, (1 << 7));
        gBattleScripting.drawlvlupboxState = 4;
        break;
    case 4:

        DrawLevelUpWindow1();
        PutWindowTilemap(12);
        CopyWindowToVram(12, COPYWIN_FULL);
        gBattleScripting.drawlvlupboxState++;
        break;
    case 5:
    case 7:

        if (!IsDma3ManagerBusyWithBgCopy())
        {
            gBattle_BG1_Y = 0;
            gBattleScripting.drawlvlupboxState++;
        }
        break;
    case 6:
        if (gMain.newKeys != 0)
        {

            PlaySE(5);
            DrawLevelUpWindow2();
            CopyWindowToVram(12, COPYWIN_GFX);
            gBattleScripting.drawlvlupboxState++;
        }
        break;
    case 8:
        if (gMain.newKeys != 0)
        {

            PlaySE(5);
            HandleBattleWindow(18, 7, 29, 19, (1 << 7) | (1 << 0));
            gBattleScripting.drawlvlupboxState++;
        }
        break;
    case 9:
        if (!SlideOutLevelUpBanner())
        {
            ClearWindowTilemap(13);
            CopyWindowToVram(13, COPYWIN_MAP);

            ClearWindowTilemap(12);
            CopyWindowToVram(12, COPYWIN_MAP);

            SetBgAttribute(2, BG_ATTR_PRIORITY, 2);
            ShowBg(2);

            gBattleScripting.drawlvlupboxState = 10;
        }
        break;
    case 10:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            SetBgAttribute(0, BG_ATTR_PRIORITY, 0);
            SetBgAttribute(1, BG_ATTR_PRIORITY, 1);
            ShowBg(0);
            ShowBg(1);
            gBattlescriptCurrInstr++;
        }
        break;
    }
}

static void DrawLevelUpWindow1(void)
{
    u16 currStats[6];

    GetMonLevelUpWindowStats(&gPlayerParty[gBattleStruct->expGetterMonId], currStats);
    DrawLevelUpWindowPg1(12, gBattleResources->beforeLvlUp->stats, currStats, 0xE, 0xD, 0xF);
}

static void DrawLevelUpWindow2(void)
{
    u16 currStats[6];

    GetMonLevelUpWindowStats(&gPlayerParty[gBattleStruct->expGetterMonId], currStats);
    DrawLevelUpWindowPg2(12, currStats, 0xE, 0xD, 0xF);
}

static void InitLevelUpBanner(void)
{
    gBattle_BG2_Y = 0;
    gBattle_BG2_X = 416;

    LoadPalette(sLevelUpBanner_Pal, (0x000 + ((6) * 16)), sizeof(sLevelUpBanner_Pal));
    CopyToWindowPixelBuffer(13, sLevelUpBanner_Gfx, 0, 0);
    PutWindowTilemap(13);
    CopyWindowToVram(13, COPYWIN_FULL);

    PutMonIconOnLvlUpBanner();
}

static bool8 SlideInLevelUpBanner(void)
{
    if (IsDma3ManagerBusyWithBgCopy())
        return 1;

    if (gBattle_BG2_X == 512)
        return 0;

    if (gBattle_BG2_X == 416)
        DrawLevelUpBannerText();

    gBattle_BG2_X += 8;
    if (gBattle_BG2_X >= 512)
        gBattle_BG2_X = 512;

    return (gBattle_BG2_X != 512);
}

static void DrawLevelUpBannerText(void)
{
    u16 monLevel;
    u8 monGender;
    struct TextPrinterTemplate printerTemplate;
    u8 *txtPtr;
    u8 *txtPtr2;

    monLevel = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56);
    monGender = GetMonGender(&gPlayerParty[gBattleStruct->expGetterMonId]);
    GetMonNickname(&gPlayerParty[gBattleStruct->expGetterMonId], gStringVar4);

    printerTemplate.currentChar = gStringVar4;
    printerTemplate.windowId = 13;
    printerTemplate.fontId = FONT_SMALL;
    printerTemplate.x = 32;
    printerTemplate.y = 0;
    printerTemplate.currentX = 32;
    printerTemplate.currentY = 0;
    printerTemplate.letterSpacing = 0;
    printerTemplate.lineSpacing = 0;
    printerTemplate.unk = 0;
    printerTemplate.fgColor = 0x1;
    printerTemplate.bgColor = 0x0;
    printerTemplate.shadowColor = 0x2;

    AddTextPrinter(&printerTemplate, 0xFF, ((void *)0));

    txtPtr = gStringVar4;
    gStringVar4[0] = 0xF9;
    *++txtPtr = 0x05;
    *++txtPtr = 0;
    txtPtr2 = txtPtr + 1;
    txtPtr = ConvertIntToDecimalStringN(++txtPtr, monLevel, STR_CONV_MODE_LEFT_ALIGN, 3);
    txtPtr = StringFill(txtPtr, 0, 5);
    txtPtr = txtPtr2 + 4;
    if (monGender != 0xFF)
    {
        if (monGender == 0x00)
        {
            txtPtr = WriteColorChangeControlCode(txtPtr, 0, 0xC);
            txtPtr = WriteColorChangeControlCode(txtPtr, 1, 0xD);
            *(txtPtr++) = 0xB5;
        }
        else
        {
            txtPtr = WriteColorChangeControlCode(txtPtr, 0, 0xE);
            txtPtr = WriteColorChangeControlCode(txtPtr, 1, 0xF);
            *(txtPtr++) = 0xB6;
        }
        *(txtPtr++) = 0xFF;
    }

    printerTemplate.y = 10;
    printerTemplate.currentY = 10;
    AddTextPrinter(&printerTemplate, 0xFF, ((void *)0));

    CopyWindowToVram(13, COPYWIN_GFX);
}

static bool8 SlideOutLevelUpBanner(void)
{
    if (gBattle_BG2_X == 416)
        return 0;

    if (gBattle_BG2_X - 16 < 416)
        gBattle_BG2_X = 416;
    else
        gBattle_BG2_X -= 16;

    return (gBattle_BG2_X != 416);
}




static void PutMonIconOnLvlUpBanner(void)
{
    u8 spriteId;
    const u16 *iconPal;
    struct SpriteSheet iconSheet;
    struct SpritePalette iconPalSheet;

    u16 species = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 11);
    u32 personality = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 0);

    const u8 *iconPtr = GetMonIconPtr(species, personality, 1);
    iconSheet.data = iconPtr;
    iconSheet.size = 0x200;
    iconSheet.tag = 55130;

    iconPal = GetValidMonIconPalettePtr(species);
    iconPalSheet.data = iconPal;
    iconPalSheet.tag = 55130;

    LoadSpriteSheet(&iconSheet);
    LoadSpritePalette(&iconPalSheet);

    spriteId = CreateSprite(&sSpriteTemplate_MonIconOnLvlUpBanner, 256, 10, 0);
    gSprites[spriteId].data[0] = 0;
    gSprites[spriteId].data[1] = gBattle_BG2_X;
}

static void SpriteCB_MonIconOnLvlUpBanner(struct Sprite* sprite)
{
    sprite->x2 = sprite->data[1] - gBattle_BG2_X;

    if (sprite->x2 != 0)
    {
        sprite->data[0] = 1;
    }
    else if (sprite->data[0])
    {
        DestroySprite(sprite);
        FreeSpriteTilesByTag(55130);
        FreeSpritePaletteByTag(55130);
    }
}




bool32 IsMonGettingExpSentOut(void)
{
    if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId)
        return 1;
    if (gBattleTypeFlags & (1 << 0) && gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId)
        return 1;

    return 0;
}

static void Cmd_resetsentmonsvalue(void)
{
    ResetSentPokesToOpponentValue();
    gBattlescriptCurrInstr++;
}

static void Cmd_setatktoplayer0(void)
{
    gBattlerAttacker = GetBattlerAtPosition(0);
    gBattlescriptCurrInstr++;
}

static void Cmd_makevisible(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitSpriteInvisibility(BUFFER_A, 0);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_recordlastability(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    RecordAbilityBattle(gActiveBattler, gLastUsedAbility);





    gBattlescriptCurrInstr += 1;

}

void BufferMoveToLearnIntoBattleTextBuff2(void)
{
    { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 2; gBattleTextBuff2[2] = gMoveToLearn; gBattleTextBuff2[3] = (gMoveToLearn & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; };
}

static void Cmd_buffermovetolearn(void)
{
    BufferMoveToLearnIntoBattleTextBuff2();
    gBattlescriptCurrInstr++;
}

static void Cmd_jumpifplayerran(void)
{
    if (TryRunFromBattle(gBattlerFainted))
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    else
        gBattlescriptCurrInstr += 5;
}

static void Cmd_hpthresholds(void)
{
    u8 opposingBattler;
    s32 result;

    if (!(gBattleTypeFlags & (1 << 0)))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        opposingBattler = gActiveBattler ^ 1;

        result = gBattleMons[opposingBattler].hp * 100 / gBattleMons[opposingBattler].maxHP;
        if (result == 0)
            result = 1;

        if (result > 69 || gBattleMons[opposingBattler].hp == 0)
            gBattleStruct->hpScale = 0;
        else if (result > 39)
            gBattleStruct->hpScale = 1;
        else if (result > 9)
            gBattleStruct->hpScale = 2;
        else
            gBattleStruct->hpScale = 3;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_hpthresholds2(void)
{
    u8 opposingBattler;
    s32 result;
    u8 hpSwitchout;

    if (!(gBattleTypeFlags & (1 << 0)))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        opposingBattler = gActiveBattler ^ 1;
        hpSwitchout = *(gBattleStruct->hpOnSwitchout + GetBattlerSide(opposingBattler));
        result = (hpSwitchout - gBattleMons[opposingBattler].hp) * 100 / hpSwitchout;

        if (gBattleMons[opposingBattler].hp >= hpSwitchout)
            gBattleStruct->hpScale = 0;
        else if (result <= 29)
            gBattleStruct->hpScale = 1;
        else if (result <= 69)
            gBattleStruct->hpScale = 2;
        else
            gBattleStruct->hpScale = 3;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_useitemonopponent(void)
{
    gBattlerInMenuId = gBattlerAttacker;
    PokemonUseItemEffects(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker]], gLastUsedItem, gBattlerPartyIndexes[gBattlerAttacker], 0, 1);
    gBattlescriptCurrInstr++;
}

static void Cmd_various(void)
{
    u8 side;
    s32 i;
    u32 monToCheck, status;
    u16 species;
    u8 abilityNum;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattlescriptCurrInstr[2])
    {
    case 0:
        CancelMultiTurnMoves(gActiveBattler);
        break;
    case 1:
        gBattlerAttacker = gBattlerTarget;
        side = GetBattlerSide(gBattlerAttacker) ^ 1;
        if (gSideTimers[side].followmeTimer != 0 && gBattleMons[gSideTimers[side].followmeTarget].hp != 0)
            gBattlerTarget = gSideTimers[side].followmeTarget;
        else
            gBattlerTarget = gActiveBattler;
        break;
    case 2:
        gBattleCommunication[0] = IsRunningFromBattleImpossible();
        break;
    case 3:
        gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
        break;
    case 4:
        if (gHitMarker & (gBitTable[gActiveBattler] << 28))
            gBattleCommunication[0] = 1;
        else
            gBattleCommunication[0] = 0;
        break;
    case 5:
        gSpecialStatuses[gActiveBattler].intimidatedMon = 0;
        gSpecialStatuses[gActiveBattler].traced = 0;
        break;
    case 6:
        if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId || gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId)
        {
            u16 *choicedMove;

            if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId)
                gActiveBattler = 0;
            else
                gActiveBattler = 2;

            choicedMove = &gBattleStruct->choicedMove[gActiveBattler];

            for (i = 0; i < 4; i++)
            {
                if (gBattleMons[gActiveBattler].moves[i] == *choicedMove)
                    break;
            }
            if (i == 4)
                *choicedMove = 0;
        }
        break;
    case 7:
        if (!(gBattleTypeFlags & ((1 << 1) | (1 << 0)))
            && gBattleTypeFlags & (1 << 3)
            && gBattleMons[0].hp != 0
            && gBattleMons[1].hp != 0)
        {
            gHitMarker &= ~(1 << 22);
        }
        break;
    case 8:
        i = 0;
        gBattleCommunication[5] = 0;
        gActiveBattler = 1;
        for (i = 0; gActiveBattler < 4; gActiveBattler += 2)
        {
            if (gActiveBattler < gBattlersCount && gBattleMons[gActiveBattler].hp != 0)
                gBattleCommunication[5] |= gBitTable[i];
            i++;
        }
        break;
    case 9:
        gActiveBattler = 1;
        if (gBattleMons[gActiveBattler].hp != 0)
        {
            BtlController_EmitReturnMonToBall(BUFFER_A, 0);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        break;
    case 10:
        if (gBattlersCount > 3)
        {
            gActiveBattler = 3;
            if (gBattleMons[gActiveBattler].hp != 0)
            {
                BtlController_EmitReturnMonToBall(BUFFER_A, 0);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
        break;
    case 11:
        gBattleCommunication[5] = 0;
        monToCheck = 0;
        for (i = 0; i < gBattlersCount; i++)
        {
            if (gBattleMons[i].ability != 43)
            {
                gBattleMons[i].status1 &= ~(1 << 0 | 1 << 1 | 1 << 2);
                gBattleMons[i].status2 &= ~(1 << 27);

            }
        }
        for (i = 0; i < 6; i++)
        {
            species = GetMonData(&gPlayerParty[i], 65);
            abilityNum = GetMonData(&gPlayerParty[i], 46);
            status = GetMonData(&gPlayerParty[i], 55);
            if (species != 0
             && species != 413
             && status & 7
             && GetAbilityBySpecies(species, abilityNum) != 43)
                monToCheck |= (1 << i);
        }
        if (monToCheck)
        {
            gActiveBattler = GetBattlerAtPosition(0);
            status = 0;
            BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, monToCheck, 4, &status);
            MarkBattlerForControllerExec(gActiveBattler);
            gBattleCommunication[5] = 1;
        }
        monToCheck = 0;
        for (i = 0; i < 6; i++)
        {
            species = GetMonData(&gEnemyParty[i], 65);
            abilityNum = GetMonData(&gEnemyParty[i], 46);
            status = GetMonData(&gEnemyParty[i], 55);

            if (species != 0
             && species != 413
             && status & 7
             && GetAbilityBySpecies(species, abilityNum) != 43)
                monToCheck |= (1 << i);
        }
        if (monToCheck)
        {
            gActiveBattler = GetBattlerAtPosition(1);
            status = 0;
            BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, monToCheck, 4, &status);
            MarkBattlerForControllerExec(gActiveBattler);
            gBattleCommunication[5] = 1;
        }
        break;
    case 12:
        if (!IsFanfareTaskInactive())
            return;
        break;
    }

    gBattlescriptCurrInstr += 3;
}


static void Cmd_setprotectlike(void)
{
    bool8 notLastTurn = 1;
    u16 lastMove = gLastResultingMoves[gBattlerAttacker];

    if (lastMove != 182 && lastMove != 197 && lastMove != 203)
        gDisableStructs[gBattlerAttacker].protectUses = 0;

    if (gCurrentTurnActionNumber == (gBattlersCount - 1))
        notLastTurn = 0;

    if (sProtectSuccessRates[gDisableStructs[gBattlerAttacker].protectUses] >= Random() && notLastTurn)
    {
        if (gBattleMoves[gCurrentMove].effect == 111)
        {
            gProtectStructs[gBattlerAttacker].protected = 1;
            gBattleCommunication[5] = 0;
        }
        if (gBattleMoves[gCurrentMove].effect == 116)
        {
            gProtectStructs[gBattlerAttacker].endured = 1;
            gBattleCommunication[5] = 1;
        }
        gDisableStructs[gBattlerAttacker].protectUses++;
    }
    else
    {
        gDisableStructs[gBattlerAttacker].protectUses = 0;
        gBattleCommunication[5] = 2;
        gMoveResultFlags |= (1 << 0);
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_tryexplosion(void)
{
    if (gBattleControllerExecFlags)
        return;


    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (gBattleMons[gBattlerTarget].ability == 6)
            break;
    }

    if (gBattlerTarget == gBattlersCount)
    {

        gActiveBattler = gBattlerAttacker;
        gBattleMoveDamage = gBattleMons[gActiveBattler].hp;
        BtlController_EmitHealthBarUpdate(BUFFER_A, 0x7FFF);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr++;


        for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
        {
            if (gBattlerTarget == gBattlerAttacker)
                continue;
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
                break;
        }
    }
    else
    {

        gLastUsedAbility = 6;
        RecordAbilityBattle(gBattlerTarget, gBattleMons[gBattlerTarget].ability);
        gBattlescriptCurrInstr = BattleScript_DampStopsExplosion;
    }
}

static void Cmd_setatkhptozero(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = gBattlerAttacker;
    gBattleMons[gActiveBattler].hp = 0;
    BtlController_EmitSetMonData(BUFFER_A, REQUEST_HP_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].hp), &gBattleMons[gActiveBattler].hp);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr++;
}

static void Cmd_jumpifnexttargetvalid(void)
{
    const u8 *jumpPtr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gBattleTypeFlags & (1 << 0))
    {
        for (gBattlerTarget++; ; gBattlerTarget++)
        {
            if (gBattlerTarget == gBattlerAttacker)
                continue;
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
                break;
        }

        if (gBattlerTarget >= gBattlersCount)
            gBattlescriptCurrInstr += 5;
        else
            gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_tryhealhalfhealth(void)
{
    const u8 *failPtr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gBattlescriptCurrInstr[5] == 1)
        gBattlerTarget = gBattlerAttacker;

    gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 2;
    if (gBattleMoveDamage == 0)
        gBattleMoveDamage = 1;
    gBattleMoveDamage *= -1;

    if (gBattleMons[gBattlerTarget].hp == gBattleMons[gBattlerTarget].maxHP)
        gBattlescriptCurrInstr = failPtr;
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_trymirrormove(void)
{
    s32 validMovesCount;
    s32 i;
    u16 move;
    u16 validMoves[4 - 1];

    for (i = 0; i < (4 - 1); i++)
        validMoves[i] = 0;

    for (validMovesCount = 0, i = 0; i < gBattlersCount; i++)
    {
        if (i != gBattlerAttacker)
        {
            move = ((i * 2 + gBattlerAttacker * 8 + gBattleStruct->lastTakenMoveFrom)[0] | ((i * 2 + gBattlerAttacker * 8 + gBattleStruct->lastTakenMoveFrom)[1] << 8));

            if (move != 0 && move != 0xFFFF)
            {
                validMoves[validMovesCount] = move;
                validMovesCount++;
            }
        }
    }

    move = ((gBattleStruct->lastTakenMove + gBattlerAttacker * 2)[0] | ((gBattleStruct->lastTakenMove + gBattlerAttacker * 2)[1] << 8));
    move++;move--;

    if (move != 0 && move != 0xFFFF)
    {
        gHitMarker &= ~(1 << 10);
        gCurrentMove = move;
        gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
        gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
    }
    else if (validMovesCount != 0)
    {
        gHitMarker &= ~(1 << 10);
        i = Random() % validMovesCount;
        gCurrentMove = validMoves[i];
        gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
        gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
    }
    else
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_setrain(void)
{
    if (gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 0);
        gBattleCommunication[5] = 0;
        gWishFutureKnock.weatherDuration = 5;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_setreflect(void)
{
    if (gSideStatuses[((GetBattlerPosition(gBattlerAttacker) & 1))] & (1 << 0))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 0;
    }
    else
    {
        gSideStatuses[((GetBattlerPosition(gBattlerAttacker) & 1))] |= (1 << 0);
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].reflectTimer = 5;
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].reflectBattlerId = gBattlerAttacker;

        if (gBattleTypeFlags & (1 << 0) && CountAliveMonsInBattle(1) == 2)
            gBattleCommunication[5] = 2;
        else
            gBattleCommunication[5] = 1;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_setseeded(void)
{
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)) || gStatuses3[gBattlerTarget] & (1 << 2))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 1;
    }
    else if (((gBattleMons[gBattlerTarget].type1 == 12 || gBattleMons[gBattlerTarget].type2 == 12)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 2;
    }
    else
    {
        gStatuses3[gBattlerTarget] |= gBattlerAttacker;
        gStatuses3[gBattlerTarget] |= (1 << 2);
        gBattleCommunication[5] = 0;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_manipulatedamage(void)
{
    switch (gBattlescriptCurrInstr[1])
    {
    case 0:
        gBattleMoveDamage *= -1;
        break;
    case 1:
        gBattleMoveDamage /= 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        if ((gBattleMons[gBattlerTarget].maxHP / 2) < gBattleMoveDamage)
            gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 2;
        break;
    case 2:
        gBattleMoveDamage *= 2;
        break;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_trysetrest(void)
{
    const u8 *failJump = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    gActiveBattler = gBattlerTarget = gBattlerAttacker;
    gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP * (-1);

    if (gBattleMons[gBattlerTarget].hp == gBattleMons[gBattlerTarget].maxHP)
    {
        gBattlescriptCurrInstr = failJump;
    }
    else
    {
        if (gBattleMons[gBattlerTarget].status1 & ((u8)(~(1 << 0 | 1 << 1 | 1 << 2))))
            gBattleCommunication[5] = 1;
        else
            gBattleCommunication[5] = 0;

        gBattleMons[gBattlerTarget].status1 = ((3) << 0);
        BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].status1), &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_jumpifnotfirstturn(void)
{
    const u8 *failJump = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gDisableStructs[gBattlerAttacker].isFirstTurn)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = failJump;
}

static void Cmd_nop(void)
{
    gBattlescriptCurrInstr++;
}

bool8 UproarWakeUpCheck(u8 battlerId)
{
    s32 i;

    for (i = 0; i < gBattlersCount; i++)
    {
        if (!(gBattleMons[i].status2 & (1 << 4 | 1 << 5 | 1 << 6)) || gBattleMons[battlerId].ability == 43)
            continue;

        gBattleScripting.battler = i;

        if (gBattlerTarget == 0xFF)
            gBattlerTarget = i;
        else if (gBattlerTarget == i)
            gBattleCommunication[5] = 0;
        else
            gBattleCommunication[5] = 1;

        break;
    }

    if (i == gBattlersCount)
        return 0;
    else
        return 1;
}

static void Cmd_jumpifcantmakeasleep(void)
{
    const u8 *jumpPtr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (UproarWakeUpCheck(gBattlerTarget))
    {
        gBattlescriptCurrInstr = jumpPtr;
    }
    else if (gBattleMons[gBattlerTarget].ability == 15
            || gBattleMons[gBattlerTarget].ability == 72)
    {
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gBattleCommunication[5] = 2;
        gBattlescriptCurrInstr = jumpPtr;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else
    {
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_stockpile(void)
{
    if (gDisableStructs[gBattlerAttacker].stockpileCounter == 3)
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 1;
    }
    else
    {
        gDisableStructs[gBattlerAttacker].stockpileCounter++;

        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 1; gBattleTextBuff1[3] = 1; gBattleTextBuff1[4] = (gDisableStructs[gBattlerAttacker].stockpileCounter); gBattleTextBuff1[5] = 0xFF; }

        gBattleCommunication[5] = 0;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_stockpiletobasedamage(void)
{
    const u8 *jumpPtr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    if (gDisableStructs[gBattlerAttacker].stockpileCounter == 0)
    {
        gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        if (gBattleCommunication[6] != 1)
        {
            gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerTarget], gCurrentMove,
                                                    gSideStatuses[((GetBattlerPosition(gBattlerTarget) & 1))], 0,
                                                    0, gBattlerAttacker, gBattlerTarget)
                                * gDisableStructs[gBattlerAttacker].stockpileCounter;
            gBattleScripting.animTurn = gDisableStructs[gBattlerAttacker].stockpileCounter;

            if (gProtectStructs[gBattlerAttacker].helpingHand)
                gBattleMoveDamage = gBattleMoveDamage * 15 / 10;
        }

        gDisableStructs[gBattlerAttacker].stockpileCounter = 0;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_stockpiletohpheal(void)
{
    const u8 *jumpPtr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gDisableStructs[gBattlerAttacker].stockpileCounter == 0)
    {
        gBattlescriptCurrInstr = jumpPtr;
        gBattleCommunication[5] = 0;
    }
    else if (gBattleMons[gBattlerAttacker].maxHP == gBattleMons[gBattlerAttacker].hp)
    {
        gDisableStructs[gBattlerAttacker].stockpileCounter = 0;
        gBattlescriptCurrInstr = jumpPtr;
        gBattlerTarget = gBattlerAttacker;
        gBattleCommunication[5] = 1;
    }
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / (1 << (3 - gDisableStructs[gBattlerAttacker].stockpileCounter));

        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;

        gBattleScripting.animTurn = gDisableStructs[gBattlerAttacker].stockpileCounter;
        gDisableStructs[gBattlerAttacker].stockpileCounter = 0;
        gBattlescriptCurrInstr += 5;
        gBattlerTarget = gBattlerAttacker;
    }
}

static void Cmd_negativedamage(void)
{
    gBattleMoveDamage = -(gHpDealt / 2);
    if (gBattleMoveDamage == 0)
        gBattleMoveDamage = -1;

    gBattlescriptCurrInstr++;
}




static u8 ChangeStatBuffs(s8 statValue, u8 statId, u8 flags, const u8 *BS_ptr)
{
    bool8 certain = 0;
    bool8 notProtectAffected = 0;
    u32 index;

    if (flags & (1 << 6))
        gActiveBattler = gBattlerAttacker;
    else
        gActiveBattler = gBattlerTarget;

    flags &= ~(1 << 6);

    if (flags & (1 << 7))
        certain++;
    flags &= ~(1 << 7);

    if (flags & (1 << 5))
        notProtectAffected++;
    flags &= ~(1 << 5);

    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 5; gBattleTextBuff1[2] = statId; gBattleTextBuff1[3] = 0xFF; }

    if (statValue <= -1)
    {
        if (gSideTimers[((GetBattlerPosition(gActiveBattler) & 1))].mistTimer
            && !certain && gCurrentMove != 174)
        {
            if (flags == (1 << 0))
            {
                if (gSpecialStatuses[gActiveBattler].statLowered)
                {
                    gBattlescriptCurrInstr = BS_ptr;
                }
                else
                {
                    BattleScriptPush(BS_ptr);
                    gBattleScripting.battler = gActiveBattler;
                    gBattlescriptCurrInstr = BattleScript_MistProtected;
                    gSpecialStatuses[gActiveBattler].statLowered = 1;
                }
            }
            return 1;
        }
        else if (gCurrentMove != 174
                 && notProtectAffected != 1 && JumpIfMoveAffectedByProtect(0))
        {
            gBattlescriptCurrInstr = BattleScript_ButItFailed;
            return 1;
        }
        else if ((gBattleMons[gActiveBattler].ability == 29
                  || gBattleMons[gActiveBattler].ability == 73)
                 && !certain && gCurrentMove != 174)
        {
            if (flags == (1 << 0))
            {
                if (gSpecialStatuses[gActiveBattler].statLowered)
                {
                    gBattlescriptCurrInstr = BS_ptr;
                }
                else
                {
                    BattleScriptPush(BS_ptr);
                    gBattleScripting.battler = gActiveBattler;
                    gBattlescriptCurrInstr = BattleScript_AbilityNoStatLoss;
                    gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                    RecordAbilityBattle(gActiveBattler, gLastUsedAbility);
                    gSpecialStatuses[gActiveBattler].statLowered = 1;
                }
            }
            return 1;
        }
        else if (gBattleMons[gActiveBattler].ability == 51
                 && !certain && statId == 6)
        {
            if (flags == (1 << 0))
            {
                BattleScriptPush(BS_ptr);
                gBattleScripting.battler = gActiveBattler;
                gBattlescriptCurrInstr = BattleScript_AbilityNoSpecificStatLoss;
                gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                RecordAbilityBattle(gActiveBattler, gLastUsedAbility);
            }
            return 1;
        }
        else if (gBattleMons[gActiveBattler].ability == 52
                 && !certain && statId == 1)
        {
            if (flags == (1 << 0))
            {
                BattleScriptPush(BS_ptr);
                gBattleScripting.battler = gActiveBattler;
                gBattlescriptCurrInstr = BattleScript_AbilityNoSpecificStatLoss;
                gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                RecordAbilityBattle(gActiveBattler, gLastUsedAbility);
            }
            return 1;
        }
        else if (gBattleMons[gActiveBattler].ability == 19 && flags == 0)
        {
            return 1;
        }
        else
        {
            statValue = -(((statValue >> 4) & 7));
            gBattleTextBuff2[0] = 0xFD;
            index = 1;
            if (statValue == -2)
            {
                gBattleTextBuff2[1] = 0;
                gBattleTextBuff2[2] = 211;
                gBattleTextBuff2[3] = 211 >> 8;
                index = 4;
            }
            gBattleTextBuff2[index++] = 0;
            gBattleTextBuff2[index++] = 212;
            gBattleTextBuff2[index++] = 212 >> 8;
            gBattleTextBuff2[index] = 0xFF;

            if (gBattleMons[gActiveBattler].statStages[statId] == 0)
                gBattleCommunication[5] = 2;
            else
                gBattleCommunication[5] = (gBattlerTarget == gActiveBattler);
        }
    }
    else
    {
        statValue = (((statValue >> 4) & 7));
        gBattleTextBuff2[0] = 0xFD;
        index = 1;
        if (statValue == 2)
        {
            gBattleTextBuff2[1] = 0;
            gBattleTextBuff2[2] = 209;
            gBattleTextBuff2[3] = 209 >> 8;
            index = 4;
        }
        gBattleTextBuff2[index++] = 0;
        gBattleTextBuff2[index++] = 210;
        gBattleTextBuff2[index++] = 210 >> 8;
        gBattleTextBuff2[index] = 0xFF;

        if (gBattleMons[gActiveBattler].statStages[statId] == 12)
            gBattleCommunication[5] = 2;
        else
            gBattleCommunication[5] = (gBattlerTarget == gActiveBattler);
    }

    gBattleMons[gActiveBattler].statStages[statId] += statValue;
    if (gBattleMons[gActiveBattler].statStages[statId] < 0)
        gBattleMons[gActiveBattler].statStages[statId] = 0;
    if (gBattleMons[gActiveBattler].statStages[statId] > 12)
        gBattleMons[gActiveBattler].statStages[statId] = 12;

    if (gBattleCommunication[5] == 2 && flags & (1 << 0))
        gMoveResultFlags |= (1 << 0);

    if (gBattleCommunication[5] == 2 && !(flags & (1 << 0)))
        return 1;

    return 0;
}

static void Cmd_statbuffchange(void)
{
    const u8 *jumpPtr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    if (ChangeStatBuffs(gBattleScripting.statChanger & 0xF0, ((gBattleScripting.statChanger & 0xF)), gBattlescriptCurrInstr[1], jumpPtr) == 0)
        gBattlescriptCurrInstr += 6;
}


static void Cmd_normalisebuffs(void)
{
    s32 i, j;

    for (i = 0; i < gBattlersCount; i++)
    {
        for (j = 0; j < (6 + 2); j++)
            gBattleMons[i].statStages[j] = 6;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_setbide(void)
{
    gBattleMons[gBattlerAttacker].status2 |= (1 << 12);
    gLockedMoves[gBattlerAttacker] = gCurrentMove;
    gTakenDmg[gBattlerAttacker] = 0;
    gBattleMons[gBattlerAttacker].status2 |= (((2) << 8) & (1 << 8 | 1 << 9));

    gBattlescriptCurrInstr++;
}

static void Cmd_confuseifrepeatingattackends(void)
{
    if (!(gBattleMons[gBattlerAttacker].status2 & (1 << 10 | 1 << 11)))
        gBattleCommunication[3] = (53 | (1 << 6));

    gBattlescriptCurrInstr++;
}

static void Cmd_setmultihitcounter(void)
{
    if (gBattlescriptCurrInstr[1])
    {
        gMultiHitCounter = gBattlescriptCurrInstr[1];
    }
    else
    {
        gMultiHitCounter = Random() & 3;
        if (gMultiHitCounter > 1)
            gMultiHitCounter = (Random() & 3) + 2;
        else
            gMultiHitCounter += 2;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_initmultihitstring(void)
{
    { gBattleScripting.multihitString[0] = 0xFD; gBattleScripting.multihitString[1] = 1; gBattleScripting.multihitString[2] = 1; gBattleScripting.multihitString[3] = 1; gBattleScripting.multihitString[4] = (0); gBattleScripting.multihitString[5] = 0xFF; }

    gBattlescriptCurrInstr++;
}

static bool8 TryDoForceSwitchOut(void)
{
    if (gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
    {
        *(gBattleStruct->battlerPartyIndexes + gBattlerTarget) = gBattlerPartyIndexes[gBattlerTarget];
    }
    else
    {
        u16 random = Random() & 0xFF;
        if ((u32)((random * (gBattleMons[gBattlerAttacker].level + gBattleMons[gBattlerTarget].level) >> 8) + 1) <= (gBattleMons[gBattlerTarget].level / 4))
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
            return 0;
        }
        *(gBattleStruct->battlerPartyIndexes + gBattlerTarget) = gBattlerPartyIndexes[gBattlerTarget];
    }

    gBattlescriptCurrInstr = BattleScript_SuccessForceOut;
    return 1;
}



static void Cmd_forcerandomswitch(void)
{
    if (gBattleTypeFlags & (1 << 3))
    {
        u8 i;
        struct Pokemon *party;
        u8 valid;
        u8 val;

        if (GetBattlerSide(gBattlerTarget) == 0)
            party = gPlayerParty;
        else
            party = gEnemyParty;

        if (gBattleTypeFlags & (1 << 6))
        {
            valid = 0;
            val = 0;
            if (GetLinkTrainerFlankId(GetBattlerMultiplayerId(gBattlerTarget)) == 1)
                val = 6 / 2;
            for (i = val; i < val + (6 / 2); i++)
            {
                if (GetMonData(&party[i], 11) != 0
                 && !GetMonData(&party[i], 45)
                 && GetMonData(&party[i], 57) != 0)
                    ++valid;
            }
        }
        else
        {
            valid = 0;
            for (i = 0; i < 6; i++)
            {
                if (GetMonData(&party[i], 11) != 0
                 && !GetMonData(&party[i], 45)
                 && GetMonData(&party[i], 57) != 0)
                    ++valid;
            }
        }


        if ((valid < 2 && (gBattleTypeFlags & ((1 << 0) | (1 << 6))) != (1 << 0))
         || (valid < 3 && (gBattleTypeFlags & (1 << 0)) && !(gBattleTypeFlags & (1 << 6))))
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        else if (TryDoForceSwitchOut())
        {
            if (gBattleTypeFlags & (1 << 6))
            {
                do
                {
                    val = Random() % (6 / 2);
                    if (GetLinkTrainerFlankId(GetBattlerMultiplayerId(gBattlerTarget)) == 1)
                        i = val + (6 / 2);
                    else
                        i = val;
                }
                while (i == gBattlerPartyIndexes[gBattlerTarget]
                      || i == gBattlerPartyIndexes[gBattlerTarget ^ 2]
                      || !(((GetMonData(&party[i], 11) && GetMonData(&party[i], 45) != 1 && GetMonData(&party[i], 57)))));
            }
            else
            {
                if (gBattleTypeFlags & (1 << 0))
                {
                    do
                    {
                        i = Random() % 6;
                    }
                    while (i == gBattlerPartyIndexes[gBattlerTarget]
                        || i == gBattlerPartyIndexes[gBattlerTarget ^ 2]
                        || !(((GetMonData(&party[i], 11) && GetMonData(&party[i], 45) != 1 && GetMonData(&party[i], 57)))));
                }
                else
                {
                    do
                    {
                        i = Random() % 6;
                    }
                    while (i == gBattlerPartyIndexes[gBattlerTarget]
                        || !(((GetMonData(&party[i], 11) && GetMonData(&party[i], 45) != 1 && GetMonData(&party[i], 57)))));
                }
            }
            *(gBattleStruct->monToSwitchIntoId + gBattlerTarget) = i;
            if (!IsMultiBattle())
                UpdatePartyOwnerOnSwitch_NonMulti(gBattlerTarget);
            SwitchPartyOrderLinkMulti(gBattlerTarget, i, 0);
            SwitchPartyOrderLinkMulti(gBattlerTarget ^ 2, i, 1);
        }
    }
    else
    {
        TryDoForceSwitchOut();
    }
}


static void Cmd_tryconversiontypechange(void)
{
    u8 validMoves = 0;
    u8 moveChecked;
    u8 moveType;

    while (validMoves < 4)
    {
        if (gBattleMons[gBattlerAttacker].moves[validMoves] == 0)
            break;

        validMoves++;
    }

    for (moveChecked = 0; moveChecked < validMoves; moveChecked++)
    {
        moveType = gBattleMoves[gBattleMons[gBattlerAttacker].moves[moveChecked]].type;

        if (moveType == 9)
        {
            if (((gBattleMons[gBattlerAttacker].type1 == 7 || gBattleMons[gBattlerAttacker].type2 == 7)))
                moveType = 7;
            else
                moveType = 0;
        }
        if (moveType != gBattleMons[gBattlerAttacker].type1
            && moveType != gBattleMons[gBattlerAttacker].type2)
        {
            break;
        }
    }

    if (moveChecked == validMoves)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        do
        {
            while ((moveChecked = Random() & (4 - 1)) >= validMoves);

            moveType = gBattleMoves[gBattleMons[gBattlerAttacker].moves[moveChecked]].type;

            if (moveType == 9)
            {
                if (((gBattleMons[gBattlerAttacker].type1 == 7 || gBattleMons[gBattlerAttacker].type2 == 7)))
                    moveType = 7;
                else
                    moveType = 0;
            }
        }
        while (moveType == gBattleMons[gBattlerAttacker].type1 || moveType == gBattleMons[gBattlerAttacker].type2);

        { gBattleMons[gBattlerAttacker].type1 = moveType; gBattleMons[gBattlerAttacker].type2 = moveType; };
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = moveType; gBattleTextBuff1[3] = 0xFF; };

        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_givepaydaymoney(void)
{
    if (!(gBattleTypeFlags & (1 << 1)) && gPaydayMoney != 0)
    {
        u32 bonusMoney = gPaydayMoney * gBattleStruct->moneyMultiplier;
        AddMoney(&gSaveBlock1Ptr->money, bonusMoney);

        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 2; gBattleTextBuff1[3] = 5; gBattleTextBuff1[4] = (bonusMoney); gBattleTextBuff1[5] = (bonusMoney & 0x0000FF00) >> 8; gBattleTextBuff1[6] = 0xFF; }

        BattleScriptPush(gBattlescriptCurrInstr + 1);
        gBattlescriptCurrInstr = BattleScript_PrintPayDayMoneyString;
    }
    else
    {
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_setlightscreen(void)
{
    if (gSideStatuses[((GetBattlerPosition(gBattlerAttacker) & 1))] & (1 << 1))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 0;
    }
    else
    {
        gSideStatuses[((GetBattlerPosition(gBattlerAttacker) & 1))] |= (1 << 1);
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].lightscreenTimer = 5;
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].lightscreenBattlerId = gBattlerAttacker;

        if (gBattleTypeFlags & (1 << 0) && CountAliveMonsInBattle(1) == 2)
            gBattleCommunication[5] = 4;
        else
            gBattleCommunication[5] = 3;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_tryKO(void)
{
    u8 holdEffect, param;

    if (gBattleMons[gBattlerTarget].item == 175)
    {
       holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
       param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, 39);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }

    if (gBattleMons[gBattlerTarget].ability == 5)
    {
        gMoveResultFlags |= (1 << 0);
        gLastUsedAbility = 5;
        gBattlescriptCurrInstr = BattleScript_SturdyPreventsOHKO;
        RecordAbilityBattle(gBattlerTarget, 5);
    }
    else
    {
        u16 chance;
        if (!(gStatuses3[gBattlerTarget] & (1 << 3 | 1 << 4)))
        {
            chance = gBattleMoves[gCurrentMove].accuracy + (gBattleMons[gBattlerAttacker].level - gBattleMons[gBattlerTarget].level);
            if (Random() % 100 + 1 < chance && gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
                chance = 1;
            else
                chance = 0;
        }
        else if (gDisableStructs[gBattlerTarget].battlerWithSureHit == gBattlerAttacker
                 && gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
        {
            chance = 1;
        }
        else
        {
            chance = gBattleMoves[gCurrentMove].accuracy + (gBattleMons[gBattlerAttacker].level - gBattleMons[gBattlerTarget].level);
            if (Random() % 100 + 1 < chance && gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
                chance = 1;
            else
                chance = 0;
        }
        if (chance)
        {
            if (gProtectStructs[gBattlerTarget].endured)
            {
                gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
                gMoveResultFlags |= (1 << 6);
            }
            else if (gSpecialStatuses[gBattlerTarget].focusBanded)
            {
                gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
                gMoveResultFlags |= (1 << 7);
                gLastUsedItem = gBattleMons[gBattlerTarget].item;
            }
            else
            {
                gBattleMoveDamage = gBattleMons[gBattlerTarget].hp;
                gMoveResultFlags |= (1 << 4);
            }
            gBattlescriptCurrInstr += 5;
        }
        else
        {
            gMoveResultFlags |= (1 << 0);
            if (gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
                gBattleCommunication[5] = 0;
            else
                gBattleCommunication[5] = 1;
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
    }
}


static void Cmd_damagetohalftargethp(void)
{
    gBattleMoveDamage = gBattleMons[gBattlerTarget].hp / 2;
    if (gBattleMoveDamage == 0)
        gBattleMoveDamage = 1;

    gBattlescriptCurrInstr++;
}

static void Cmd_setsandstorm(void)
{
    if (gBattleWeather & ((1 << 3) | (1 << 4)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 3);
        gBattleCommunication[5] = 3;
        gWishFutureKnock.weatherDuration = 5;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_weatherdamage(void)
{
    if (((gBattleTypeFlags) & (1 << 15) && !((gBattleTypeFlags) & (1 << 13)))
     && (GetBattlerSide(gBattlerAttacker) == 1))
    {
        gBattleMoveDamage = 0;
        gBattlescriptCurrInstr++;
        return;
    }
    if (((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))))
    {
        if (gBattleWeather & ((1 << 3) | (1 << 4)))
        {
            if (gBattleMons[gBattlerAttacker].type1 != 5
                && gBattleMons[gBattlerAttacker].type1 != 8
                && gBattleMons[gBattlerAttacker].type1 != 4
                && gBattleMons[gBattlerAttacker].type2 != 5
                && gBattleMons[gBattlerAttacker].type2 != 8
                && gBattleMons[gBattlerAttacker].type2 != 4
                && gBattleMons[gBattlerAttacker].ability != 8
                && !(gStatuses3[gBattlerAttacker] & (1 << 7))
                && !(gStatuses3[gBattlerAttacker] & (1 << 18)))
            {
                gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 16;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;
            }
            else
            {
                gBattleMoveDamage = 0;
            }
        }
        if (gBattleWeather & ((1 << 7)))
        {
            if (!((gBattleMons[gBattlerAttacker].type1 == 15 || gBattleMons[gBattlerAttacker].type2 == 15))
                && !(gStatuses3[gBattlerAttacker] & (1 << 7))
                && !(gStatuses3[gBattlerAttacker] & (1 << 18)))
            {
                gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 16;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;
            }
            else
            {
                gBattleMoveDamage = 0;
            }
        }
    }
    else
    {
        gBattleMoveDamage = 0;
    }

    if (gAbsentBattlerFlags & gBitTable[gBattlerAttacker])
        gBattleMoveDamage = 0;

    gBattlescriptCurrInstr++;
}

static void Cmd_tryinfatuating(void)
{
    struct Pokemon *monAttacker, *monTarget;
    u16 speciesAttacker, speciesTarget;
    u32 personalityAttacker, personalityTarget;

    if (GetBattlerSide(gBattlerAttacker) == 0)
        monAttacker = &gPlayerParty[gBattlerPartyIndexes[gBattlerAttacker]];
    else
        monAttacker = &gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker]];

    if (GetBattlerSide(gBattlerTarget) == 0)
        monTarget = &gPlayerParty[gBattlerPartyIndexes[gBattlerTarget]];
    else
        monTarget = &gEnemyParty[gBattlerPartyIndexes[gBattlerTarget]];

    speciesAttacker = GetMonData(monAttacker, 11);
    personalityAttacker = GetMonData(monAttacker, 0);

    speciesTarget = GetMonData(monTarget, 11);
    personalityTarget = GetMonData(monTarget, 0);

    if (gBattleMons[gBattlerTarget].ability == 12)
    {
        gBattlescriptCurrInstr = BattleScript_ObliviousPreventsAttraction;
        gLastUsedAbility = 12;
        RecordAbilityBattle(gBattlerTarget, 12);
    }
    else
    {
        if (GetGenderFromSpeciesAndPersonality(speciesAttacker, personalityAttacker) == GetGenderFromSpeciesAndPersonality(speciesTarget, personalityTarget)
            || gBattleMons[gBattlerTarget].status2 & (1 << 16 | 1 << 17 | 1 << 18 | 1 << 19)
            || GetGenderFromSpeciesAndPersonality(speciesAttacker, personalityAttacker) == 0xFF
            || GetGenderFromSpeciesAndPersonality(speciesTarget, personalityTarget) == 0xFF)
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        else
        {
            gBattleMons[gBattlerTarget].status2 |= (gBitTable[gBattlerAttacker] << 16);
            gBattlescriptCurrInstr += 5;
        }
    }
}

static void Cmd_updatestatusicon(void)
{
    if (gBattleControllerExecFlags)
        return;

    if (gBattlescriptCurrInstr[1] == 13)
    {
        for (gActiveBattler = gBattleControllerExecFlags; gActiveBattler < gBattlersCount; gActiveBattler++)
        {
            if (!(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
            {
                BtlController_EmitStatusIconUpdate(BUFFER_A, gBattleMons[gActiveBattler].status1, gBattleMons[gActiveBattler].status2);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
        gBattlescriptCurrInstr += 2;
    }
    else if (gBattlescriptCurrInstr[1] == 4)
    {
        gActiveBattler = gBattlerAttacker;
        if (!(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
        {
            BtlController_EmitStatusIconUpdate(BUFFER_A, gBattleMons[gActiveBattler].status1, gBattleMons[gActiveBattler].status2);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        if ((gBattleTypeFlags & (1 << 0)))
        {
            gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);
            if (!(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
            {
                BtlController_EmitStatusIconUpdate(BUFFER_A, gBattleMons[gActiveBattler].status1, gBattleMons[gActiveBattler].status2);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
        gBattlescriptCurrInstr += 2;
    }
    else
    {

        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        BtlController_EmitStatusIconUpdate(BUFFER_A, gBattleMons[gActiveBattler].status1, gBattleMons[gActiveBattler].status2);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_setmist(void)
{
    if (gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].mistTimer)
    {
        gMoveResultFlags |= (1 << 5);
        gBattleCommunication[5] = 1;
    }
    else
    {
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].mistTimer = 5;
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].mistBattlerId = gBattlerAttacker;
        gSideStatuses[((GetBattlerPosition(gBattlerAttacker) & 1))] |= (1 << 8);
        gBattleCommunication[5] = 0;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_setfocusenergy(void)
{
    if (gBattleMons[gBattlerAttacker].status2 & (1 << 20))
    {
        gMoveResultFlags |= (1 << 5);
        gBattleCommunication[5] = 1;
    }
    else
    {
        gBattleMons[gBattlerAttacker].status2 |= (1 << 20);
        gBattleCommunication[5] = 0;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_transformdataexecution(void)
{
    gChosenMove = 0xFFFF;
    gBattlescriptCurrInstr++;
    if (gBattleMons[gBattlerTarget].status2 & (1 << 21)
        || gStatuses3[gBattlerTarget] & ((1 << 7) | (1 << 6) | (1 << 18)))
    {
        gMoveResultFlags |= (1 << 5);
        gBattleCommunication[5] = 1;
    }
    else
    {
        s32 i;
        u8 *battleMonAttacker, *battleMonTarget;

        gBattleMons[gBattlerAttacker].status2 |= (1 << 21);
        gDisableStructs[gBattlerAttacker].disabledMove = 0;
        gDisableStructs[gBattlerAttacker].disableTimer = 0;
        gDisableStructs[gBattlerAttacker].transformedMonPersonality = gBattleMons[gBattlerTarget].personality;
        gDisableStructs[gBattlerAttacker].mimickedMoves = 0;

        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 6; gBattleTextBuff1[2] = gBattleMons[gBattlerTarget].species; gBattleTextBuff1[3] = (gBattleMons[gBattlerTarget].species & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

        battleMonAttacker = (u8 *)(&gBattleMons[gBattlerAttacker]);
        battleMonTarget = (u8 *)(&gBattleMons[gBattlerTarget]);

        for (i = 0; i < ((size_t)&((struct BattlePokemon *)0)->pp); i++)
            battleMonAttacker[i] = battleMonTarget[i];

        for (i = 0; i < 4; i++)
        {
            if (gBattleMoves[gBattleMons[gBattlerAttacker].moves[i]].pp < 5)
                gBattleMons[gBattlerAttacker].pp[i] = gBattleMoves[gBattleMons[gBattlerAttacker].moves[i]].pp;
            else
                gBattleMons[gBattlerAttacker].pp[i] = 5;
        }

        gActiveBattler = gBattlerAttacker;
        BtlController_EmitResetActionMoveSelection(BUFFER_A, RESET_MOVE_SELECTION);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattleCommunication[5] = 0;
    }
}

static void Cmd_setsubstitute(void)
{
    u32 hp = gBattleMons[gBattlerAttacker].maxHP / 4;
    if (gBattleMons[gBattlerAttacker].maxHP / 4 == 0)
        hp = 1;

    if (gBattleMons[gBattlerAttacker].hp <= hp)
    {
        gBattleMoveDamage = 0;
        gBattleCommunication[5] = 1;
    }
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 4;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattleMons[gBattlerAttacker].status2 |= (1 << 24);
        gBattleMons[gBattlerAttacker].status2 &= ~(1 << 13 | 1 << 14 | 1 << 15);
        gDisableStructs[gBattlerAttacker].substituteHP = gBattleMoveDamage;
        gBattleCommunication[5] = 0;
        gHitMarker |= (1 << 8);
    }

    gBattlescriptCurrInstr++;
}

static bool8 IsMoveUncopyableByMimic(u16 move)
{
    s32 i;
    for (i = 0; sMovesForbiddenToCopy[i] != 0xFFFE
                && sMovesForbiddenToCopy[i] != move; i++);

    return (sMovesForbiddenToCopy[i] != 0xFFFE);
}

static void Cmd_mimicattackcopy(void)
{
    gChosenMove = 0xFFFF;

    if (IsMoveUncopyableByMimic(gLastMoves[gBattlerTarget])
        || gBattleMons[gBattlerAttacker].status2 & (1 << 21)
        || gLastMoves[gBattlerTarget] == 0
        || gLastMoves[gBattlerTarget] == 0xFFFF)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        int i;

        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[gBattlerAttacker].moves[i] == gLastMoves[gBattlerTarget])
                break;
        }

        if (i == 4)
        {
            gBattleMons[gBattlerAttacker].moves[gCurrMovePos] = gLastMoves[gBattlerTarget];
            if (gBattleMoves[gLastMoves[gBattlerTarget]].pp < 5)
                gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = gBattleMoves[gLastMoves[gBattlerTarget]].pp;
            else
                gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = 5;

            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = gLastMoves[gBattlerTarget]; gBattleTextBuff1[3] = (gLastMoves[gBattlerTarget] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

            gDisableStructs[gBattlerAttacker].mimickedMoves |= gBitTable[gCurrMovePos];
            gBattlescriptCurrInstr += 5;
        }
        else
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
    }
}

static void Cmd_metronome(void)
{
    while (1)
    {
        s32 i;

        gCurrentMove = (Random() & 0x1FF) + 1;
        if (gCurrentMove >= 355)
            continue;

        for (i = 0; i < 4; i++);

        i = -1;
        while (1)
        {
            i++;
            if (sMovesForbiddenToCopy[i] == gCurrentMove)
                break;
            if (sMovesForbiddenToCopy[i] == 0xFFFF)
                break;
        }

        if (sMovesForbiddenToCopy[i] == 0xFFFF)
        {
            gHitMarker &= ~(1 << 10);
            gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
            gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
            return;
        }
    }
}

static void Cmd_dmgtolevel(void)
{
    gBattleMoveDamage = gBattleMons[gBattlerAttacker].level;
    gBattlescriptCurrInstr++;
}

static void Cmd_psywavedamageeffect(void)
{
    s32 randDamage;

    while ((randDamage = Random() % 16) > 10);

    randDamage *= 10;
    gBattleMoveDamage = gBattleMons[gBattlerAttacker].level * (randDamage + 50) / 100;
    gBattlescriptCurrInstr++;
}

static void Cmd_counterdamagecalculator(void)
{
    u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
    u8 sideTarget = GetBattlerSide(gProtectStructs[gBattlerAttacker].physicalBattlerId);

    if (gProtectStructs[gBattlerAttacker].physicalDmg
        && sideAttacker != sideTarget
        && gBattleMons[gProtectStructs[gBattlerAttacker].physicalBattlerId].hp)
    {
        gBattleMoveDamage = gProtectStructs[gBattlerAttacker].physicalDmg * 2;

        if (gSideTimers[sideTarget].followmeTimer && gBattleMons[gSideTimers[sideTarget].followmeTarget].hp)
            gBattlerTarget = gSideTimers[sideTarget].followmeTarget;
        else
            gBattlerTarget = gProtectStructs[gBattlerAttacker].physicalBattlerId;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}


static void Cmd_mirrorcoatdamagecalculator(void)
{
    u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
    u8 sideTarget = GetBattlerSide(gProtectStructs[gBattlerAttacker].specialBattlerId);

    if (gProtectStructs[gBattlerAttacker].specialDmg && sideAttacker != sideTarget && gBattleMons[gProtectStructs[gBattlerAttacker].specialBattlerId].hp)
    {
        gBattleMoveDamage = gProtectStructs[gBattlerAttacker].specialDmg * 2;

        if (gSideTimers[sideTarget].followmeTimer && gBattleMons[gSideTimers[sideTarget].followmeTarget].hp)
            gBattlerTarget = gSideTimers[sideTarget].followmeTarget;
        else
            gBattlerTarget = gProtectStructs[gBattlerAttacker].specialBattlerId;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_disablelastusedattack(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if (gBattleMons[gBattlerTarget].moves[i] == gLastMoves[gBattlerTarget])
            break;
    }
    if (gDisableStructs[gBattlerTarget].disabledMove == 0
        && i != 4 && gBattleMons[gBattlerTarget].pp[i] != 0)
    {
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = gBattleMons[gBattlerTarget].moves[i]; gBattleTextBuff1[3] = (gBattleMons[gBattlerTarget].moves[i] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

        gDisableStructs[gBattlerTarget].disabledMove = gBattleMons[gBattlerTarget].moves[i];
        gDisableStructs[gBattlerTarget].disableTimer = (Random() & 3) + 2;
        gDisableStructs[gBattlerTarget].disableTimerStartValue = gDisableStructs[gBattlerTarget].disableTimer;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysetencore(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if (gBattleMons[gBattlerTarget].moves[i] == gLastMoves[gBattlerTarget])
            break;
    }

    if (gLastMoves[gBattlerTarget] == 165
        || gLastMoves[gBattlerTarget] == 227
        || gLastMoves[gBattlerTarget] == 119)
    {
        i = 4;
    }

    if (gDisableStructs[gBattlerTarget].encoredMove == 0
        && i != 4 && gBattleMons[gBattlerTarget].pp[i] != 0)
    {
        gDisableStructs[gBattlerTarget].encoredMove = gBattleMons[gBattlerTarget].moves[i];
        gDisableStructs[gBattlerTarget].encoredMovePos = i;
        gDisableStructs[gBattlerTarget].encoreTimer = (Random() & 3) + 3;
        gDisableStructs[gBattlerTarget].encoreTimerStartValue = gDisableStructs[gBattlerTarget].encoreTimer;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_painsplitdmgcalc(void)
{
    if (!(gBattleMons[gBattlerTarget].status2 & (1 << 24)))
    {
        s32 hpDiff = (gBattleMons[gBattlerAttacker].hp + gBattleMons[gBattlerTarget].hp) / 2;
        s32 painSplitHp = gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - hpDiff;
        u8 *storeLoc = (void *)(&gBattleScripting.painSplitHp);

        storeLoc[0] = (painSplitHp);
        storeLoc[1] = (painSplitHp & 0x0000FF00) >> 8;
        storeLoc[2] = (painSplitHp & 0x00FF0000) >> 16;
        storeLoc[3] = (painSplitHp & 0xFF000000) >> 24;

        gBattleMoveDamage = gBattleMons[gBattlerAttacker].hp - hpDiff;
        gSpecialStatuses[gBattlerTarget].dmg = 0xFFFF;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}


static void Cmd_settypetorandomresistance(void)
{
    if (gLastLandedMoves[gBattlerAttacker] == 0
     || gLastLandedMoves[gBattlerAttacker] == 0xFFFF)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else if (IsTwoTurnsMove(gLastLandedMoves[gBattlerAttacker])
            && gBattleMons[gLastHitBy[gBattlerAttacker]].status2 & (1 << 12))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        s32 i, j, rands;

        for (rands = 0; rands < 1000; rands++)
        {
            while (((i = Random() % 128) > sizeof(gTypeEffectiveness) / 3));

            i *= 3;

            if (((gTypeEffectiveness[i + 0])) == gLastHitByType[gBattlerAttacker]
                && ((gTypeEffectiveness[i + 2])) <= 5
                && !((gBattleMons[gBattlerAttacker].type1 == ((gTypeEffectiveness[i + 1])) || gBattleMons[gBattlerAttacker].type2 == ((gTypeEffectiveness[i + 1])))))
            {
                { gBattleMons[gBattlerAttacker].type1 = ((gTypeEffectiveness[i + 1])); gBattleMons[gBattlerAttacker].type2 = ((gTypeEffectiveness[i + 1])); };
                { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = ((gTypeEffectiveness[i + 1])); gBattleTextBuff1[3] = 0xFF; };

                gBattlescriptCurrInstr += 5;
                return;
            }
        }

        for (j = 0, rands = 0; rands < sizeof(gTypeEffectiveness); j += 3, rands += 3)
        {
            switch (((gTypeEffectiveness[j + 0])))
            {
            case 0xFF:
            case 0xFE:
                break;
            default:
                if (((gTypeEffectiveness[j + 0])) == gLastHitByType[gBattlerAttacker]
                 && ((gTypeEffectiveness[j + 2])) <= 5
                 && !((gBattleMons[gBattlerAttacker].type1 == ((gTypeEffectiveness[i + 1])) || gBattleMons[gBattlerAttacker].type2 == ((gTypeEffectiveness[i + 1])))))
                {
                    { gBattleMons[gBattlerAttacker].type1 = ((gTypeEffectiveness[rands + 1])); gBattleMons[gBattlerAttacker].type2 = ((gTypeEffectiveness[rands + 1])); };
                    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = ((gTypeEffectiveness[rands + 1])); gBattleTextBuff1[3] = 0xFF; }

                    gBattlescriptCurrInstr += 5;
                    return;
                }
                break;
            }
        }

        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_setalwayshitflag(void)
{
    gStatuses3[gBattlerTarget] &= ~(1 << 3 | 1 << 4);
    gStatuses3[gBattlerTarget] |= (((2) << 3) & (1 << 3 | 1 << 4));
    gDisableStructs[gBattlerTarget].battlerWithSureHit = gBattlerAttacker;
    gBattlescriptCurrInstr++;
}


static void Cmd_copymovepermanently(void)
{
    gChosenMove = 0xFFFF;

    if (!(gBattleMons[gBattlerAttacker].status2 & (1 << 21))
        && gLastPrintedMoves[gBattlerTarget] != 165
        && gLastPrintedMoves[gBattlerTarget] != 0
        && gLastPrintedMoves[gBattlerTarget] != 0xFFFF
        && gLastPrintedMoves[gBattlerTarget] != 166)
    {
        s32 i;

        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[gBattlerAttacker].moves[i] == 166)
                continue;
            if (gBattleMons[gBattlerAttacker].moves[i] == gLastPrintedMoves[gBattlerTarget])
                break;
        }

        if (i != 4)
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        else
        {
            struct MovePpInfo movePpData;

            gBattleMons[gBattlerAttacker].moves[gCurrMovePos] = gLastPrintedMoves[gBattlerTarget];
            gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = gBattleMoves[gLastPrintedMoves[gBattlerTarget]].pp;
            gActiveBattler = gBattlerAttacker;

            for (i = 0; i < 4; i++)
            {
                movePpData.moves[i] = gBattleMons[gBattlerAttacker].moves[i];
                movePpData.pp[i] = gBattleMons[gBattlerAttacker].pp[i];
            }
            movePpData.ppBonuses = gBattleMons[gBattlerAttacker].ppBonuses;

            BtlController_EmitSetMonData(BUFFER_A, REQUEST_MOVES_PP_BATTLE, 0, sizeof(movePpData), &movePpData);
            MarkBattlerForControllerExec(gActiveBattler);

            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = gLastPrintedMoves[gBattlerTarget]; gBattleTextBuff1[3] = (gLastPrintedMoves[gBattlerTarget] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

            gBattlescriptCurrInstr += 5;
        }
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static bool8 IsTwoTurnsMove(u16 move)
{
    if (gBattleMoves[move].effect == 145
     || gBattleMoves[move].effect == 39
     || gBattleMoves[move].effect == 75
     || gBattleMoves[move].effect == 151
     || gBattleMoves[move].effect == 155
     || gBattleMoves[move].effect == 26)
        return 1;
    else
        return 0;
}

static bool8 IsInvalidForSleepTalkOrAssist(u16 move)
{
    if (move == 0
     || move == 214
     || move == 274
     || move == 119
     || move == 118)
        return 1;
    else
        return 0;
}

static u8 AttacksThisTurn(u8 battlerId, u16 move)
{

    if (gBattleMoves[move].effect == 151
        && (gBattleWeather & ((1 << 5) | (1 << 6))))
        return 2;

    if (gBattleMoves[move].effect == 145
     || gBattleMoves[move].effect == 39
     || gBattleMoves[move].effect == 75
     || gBattleMoves[move].effect == 151
     || gBattleMoves[move].effect == 155
     || gBattleMoves[move].effect == 26)
    {
        if ((gHitMarker & (1 << 27)))
            return 1;
    }
    return 2;
}

static void Cmd_trychoosesleeptalkmove(void)
{
    s32 i;
    u8 unusableMovesBits = 0;

    for (i = 0; i < 4; i++)
    {
        if (IsInvalidForSleepTalkOrAssist(gBattleMons[gBattlerAttacker].moves[i])
            || gBattleMons[gBattlerAttacker].moves[i] == 264
            || gBattleMons[gBattlerAttacker].moves[i] == 253
            || IsTwoTurnsMove(gBattleMons[gBattlerAttacker].moves[i]))
        {
            unusableMovesBits |= gBitTable[i];
        }
    }

    unusableMovesBits = CheckMoveLimitations(gBattlerAttacker, unusableMovesBits, ~(1 << 1));
    if (unusableMovesBits == (1 << 4) - 1)
    {
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        u32 movePosition;

        do
        {
            movePosition = Random() & (4 - 1);
        } while ((gBitTable[movePosition] & unusableMovesBits));

        gCalledMove = gBattleMons[gBattlerAttacker].moves[movePosition];
        gCurrMovePos = movePosition;
        gHitMarker &= ~(1 << 10);
        gBattlerTarget = GetMoveTarget(gCalledMove, 0);
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_setdestinybond(void)
{
    gBattleMons[gBattlerAttacker].status2 |= (1 << 25);
    gBattlescriptCurrInstr++;
}

static void TrySetDestinyBondToHappen(void)
{
    u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
    u8 sideTarget = GetBattlerSide(gBattlerTarget);
    if (gBattleMons[gBattlerTarget].status2 & (1 << 25)
        && sideAttacker != sideTarget
        && !(gHitMarker & (1 << 24)))
    {
        gHitMarker |= (1 << 6);
    }
}

static void Cmd_trysetdestinybondtohappen(void)
{
    TrySetDestinyBondToHappen();
    gBattlescriptCurrInstr++;
}

static void Cmd_remaininghptopower(void)
{
    s32 i;
    s32 hpFraction = GetScaledHPFraction(gBattleMons[gBattlerAttacker].hp, gBattleMons[gBattlerAttacker].maxHP, 48);

    for (i = 0; i < (s32) sizeof(sFlailHpScaleToPowerTable); i += 2)
    {
        if (hpFraction <= sFlailHpScaleToPowerTable[i])
            break;
    }

    gDynamicBasePower = sFlailHpScaleToPowerTable[i + 1];
    gBattlescriptCurrInstr++;
}

static void Cmd_tryspiteppreduce(void)
{
    if (gLastMoves[gBattlerTarget] != 0
     && gLastMoves[gBattlerTarget] != 0xFFFF)
    {
        s32 i;

        for (i = 0; i < 4; i++)
        {
            if (gLastMoves[gBattlerTarget] == gBattleMons[gBattlerTarget].moves[i])
                break;
        }

        if (i != 4 && gBattleMons[gBattlerTarget].pp[i] > 1)
        {
            s32 ppToDeduct = (Random() & 3) + 2;
            if (gBattleMons[gBattlerTarget].pp[i] < ppToDeduct)
                ppToDeduct = gBattleMons[gBattlerTarget].pp[i];

            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = gLastMoves[gBattlerTarget]; gBattleTextBuff1[3] = (gLastMoves[gBattlerTarget] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

            ConvertIntToDecimalStringN(gBattleTextBuff2, ppToDeduct, STR_CONV_MODE_LEFT_ALIGN, 1);

            { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 1; gBattleTextBuff2[2] = 1; gBattleTextBuff2[3] = 1; gBattleTextBuff2[4] = (ppToDeduct); gBattleTextBuff2[5] = 0xFF; }

            gBattleMons[gBattlerTarget].pp[i] -= ppToDeduct;
            gActiveBattler = gBattlerTarget;


            if (!(gDisableStructs[gActiveBattler].mimickedMoves & gBitTable[i])
                && !(gBattleMons[gActiveBattler].status2 & (1 << 21)))
            {
                BtlController_EmitSetMonData(BUFFER_A, REQUEST_PPMOVE1_BATTLE + i, 0, sizeof(gBattleMons[gActiveBattler].pp[i]), &gBattleMons[gActiveBattler].pp[i]);
                MarkBattlerForControllerExec(gActiveBattler);
            }

            gBattlescriptCurrInstr += 5;

            if (gBattleMons[gBattlerTarget].pp[i] == 0)
                CancelMultiTurnMoves(gBattlerTarget);
        }
        else
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_healpartystatus(void)
{
    u32 zero = 0;
    u8 toHeal = 0;

    if (gCurrentMove == 215)
    {
        struct Pokemon *party;
        s32 i;

        gBattleCommunication[5] = 0;

        if (GetBattlerSide(gBattlerAttacker) == 0)
            party = gPlayerParty;
        else
            party = gEnemyParty;

        if (gBattleMons[gBattlerAttacker].ability != 43)
        {
            gBattleMons[gBattlerAttacker].status1 = 0;
            gBattleMons[gBattlerAttacker].status2 &= ~(1 << 27);
        }
        else
        {
            RecordAbilityBattle(gBattlerAttacker, gBattleMons[gBattlerAttacker].ability);
            gBattleCommunication[5] |= 1;
        }

        gActiveBattler = gBattleScripting.battler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);

        if (gBattleTypeFlags & (1 << 0)
            && !(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
        {
            if (gBattleMons[gActiveBattler].ability != 43)
            {
                gBattleMons[gActiveBattler].status1 = 0;
                gBattleMons[gActiveBattler].status2 &= ~(1 << 27);
            }
            else
            {
                RecordAbilityBattle(gActiveBattler, gBattleMons[gActiveBattler].ability);
                gBattleCommunication[5] |= 2;
            }
        }



        for (i = 0; i < 6; i++)
        {
            u16 species = GetMonData(&party[i], 65);
            u8 abilityNum = GetMonData(&party[i], 46);

            if (species != 0 && species != 413)
            {
                u8 ability;

                if (gBattlerPartyIndexes[gBattlerAttacker] == i)
                    ability = gBattleMons[gBattlerAttacker].ability;
                else if (gBattleTypeFlags & (1 << 0)
                         && gBattlerPartyIndexes[gActiveBattler] == i
                         && !(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
                    ability = gBattleMons[gActiveBattler].ability;
                else
                    ability = GetAbilityBySpecies(species, abilityNum);

                if (ability != 43)
                    toHeal |= (1 << i);
            }
        }
    }
    else
    {
        gBattleCommunication[5] = 4;
        toHeal = (1 << 6) - 1;

        gBattleMons[gBattlerAttacker].status1 = 0;
        gBattleMons[gBattlerAttacker].status2 &= ~(1 << 27);

        gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);
        if (gBattleTypeFlags & (1 << 0)
            && !(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
        {
            gBattleMons[gActiveBattler].status1 = 0;
            gBattleMons[gActiveBattler].status2 &= ~(1 << 27);
        }

    }

    if (toHeal)
    {
        gActiveBattler = gBattlerAttacker;
        BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, toHeal, sizeof(zero), &zero);
        MarkBattlerForControllerExec(gActiveBattler);
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_cursetarget(void)
{
    if (gBattleMons[gBattlerTarget].status2 & (1 << 28))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gBattleMons[gBattlerTarget].status2 |= (1 << 28);
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_trysetspikes(void)
{
    u8 targetSide = GetBattlerSide(gBattlerAttacker) ^ 1;

    if (gSideTimers[targetSide].spikesAmount == 3)
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gSideStatuses[targetSide] |= (1 << 4);
        gSideTimers[targetSide].spikesAmount++;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_setforesight(void)
{
    gBattleMons[gBattlerTarget].status2 |= (1 << 29);
    gBattlescriptCurrInstr++;
}

static void Cmd_trysetperishsong(void)
{
    s32 i;
    s32 notAffectedCount = 0;

    for (i = 0; i < gBattlersCount; i++)
    {
        if (gStatuses3[i] & (1 << 5)
            || gBattleMons[i].ability == 43)
        {
            notAffectedCount++;
        }
        else
        {
            gStatuses3[i] |= (1 << 5);
            gDisableStructs[i].perishSongTimer = 3;
            gDisableStructs[i].perishSongTimerStartValue = 3;
        }
    }

    PressurePPLoseOnUsingPerishSong(gBattlerAttacker);

    if (notAffectedCount == gBattlersCount)
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    else
        gBattlescriptCurrInstr += 5;
}

static void Cmd_rolloutdamagecalculation(void)
{
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        CancelMultiTurnMoves(gBattlerAttacker);
        gBattlescriptCurrInstr = BattleScript_MoveMissedPause;
    }
    else
    {
        s32 i;

        if (!(gBattleMons[gBattlerAttacker].status2 & (1 << 12)))
        {
            gDisableStructs[gBattlerAttacker].rolloutTimer = 5;
            gDisableStructs[gBattlerAttacker].rolloutTimerStartValue = 5;
            gBattleMons[gBattlerAttacker].status2 |= (1 << 12);
            gLockedMoves[gBattlerAttacker] = gCurrentMove;
        }
        if (--gDisableStructs[gBattlerAttacker].rolloutTimer == 0)
        {
            gBattleMons[gBattlerAttacker].status2 &= ~(1 << 12);
        }

        gDynamicBasePower = gBattleMoves[gCurrentMove].power;

        for (i = 1; i < (5 - gDisableStructs[gBattlerAttacker].rolloutTimer); i++)
            gDynamicBasePower *= 2;

        if (gBattleMons[gBattlerAttacker].status2 & (1 << 30))
            gDynamicBasePower *= 2;

        gBattlescriptCurrInstr++;
    }
}

static void Cmd_jumpifconfusedandstatmaxed(void)
{
    if (gBattleMons[gBattlerTarget].status2 & (1 << 0 | 1 << 1 | 1 << 2)
        && gBattleMons[gBattlerTarget].statStages[gBattlescriptCurrInstr[1]] == 12)
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_furycuttercalc(void)
{
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        gDisableStructs[gBattlerAttacker].furyCutterCounter = 0;
        gBattlescriptCurrInstr = BattleScript_MoveMissedPause;
    }
    else
    {
        s32 i;

        if (gDisableStructs[gBattlerAttacker].furyCutterCounter != 5)
            gDisableStructs[gBattlerAttacker].furyCutterCounter++;

        gDynamicBasePower = gBattleMoves[gCurrentMove].power;

        for (i = 1; i < gDisableStructs[gBattlerAttacker].furyCutterCounter; i++)
            gDynamicBasePower *= 2;

        gBattlescriptCurrInstr++;
    }
}

static void Cmd_friendshiptodamagecalculation(void)
{
    if (gBattleMoves[gCurrentMove].effect == 121)
        gDynamicBasePower = 10 * (gBattleMons[gBattlerAttacker].friendship) / 25;
    else
        gDynamicBasePower = 10 * (255 - gBattleMons[gBattlerAttacker].friendship) / 25;

    gBattlescriptCurrInstr++;
}

static void Cmd_presentdamagecalculation(void)
{
    s32 rand = Random() & 0xFF;

    if (rand < 102)
        gDynamicBasePower = 40;
    else if (rand < 178)
        gDynamicBasePower = 80;
    else if (rand < 204)
        gDynamicBasePower = 120;
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 4;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;
    }
    if (rand < 204)
        gBattlescriptCurrInstr = BattleScript_HitFromCritCalc;
    else if (gBattleMons[gBattlerTarget].maxHP == gBattleMons[gBattlerTarget].hp)
        gBattlescriptCurrInstr = BattleScript_AlreadyAtFullHp;
    else
    {
        gMoveResultFlags &= ~(1 << 3);
        gBattlescriptCurrInstr = BattleScript_PresentHealTarget;
    }
}

static void Cmd_setsafeguard(void)
{
    if (gSideStatuses[((GetBattlerPosition(gBattlerAttacker) & 1))] & (1 << 5))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 0;
    }
    else
    {
        gSideStatuses[((GetBattlerPosition(gBattlerAttacker) & 1))] |= (1 << 5);
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].safeguardTimer = 5;
        gSideTimers[((GetBattlerPosition(gBattlerAttacker) & 1))].safeguardBattlerId = gBattlerAttacker;
        gBattleCommunication[5] = 5;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_magnitudedamagecalculation(void)
{
    s32 magnitude = Random() % 100;

    if (magnitude < 5)
    {
        gDynamicBasePower = 10;
        magnitude = 4;
    }
    else if (magnitude < 15)
    {
        gDynamicBasePower = 30;
        magnitude = 5;
    }
    else if (magnitude < 35)
    {
        gDynamicBasePower = 50;
        magnitude = 6;
    }
    else if (magnitude < 65)
    {
        gDynamicBasePower = 70;
        magnitude = 7;
    }
    else if (magnitude < 85)
    {
        gDynamicBasePower = 90;
        magnitude = 8;
    }
    else if (magnitude < 95)
    {
        gDynamicBasePower = 110;
        magnitude = 9;
    }
    else
    {
        gDynamicBasePower = 150;
        magnitude = 10;
    }

    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 1; gBattleTextBuff1[3] = 2; gBattleTextBuff1[4] = (magnitude); gBattleTextBuff1[5] = 0xFF; }

    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (gBattlerTarget == gBattlerAttacker)
            continue;
        if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
            break;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_jumpifnopursuitswitchdmg(void)
{
    if (gMultiHitCounter == 1)
    {
        if (GetBattlerSide(gBattlerAttacker) == 0)
            gBattlerTarget = GetBattlerAtPosition(1);
        else
            gBattlerTarget = GetBattlerAtPosition(0);
    }
    else
    {
        if (GetBattlerSide(gBattlerAttacker) == 0)
            gBattlerTarget = GetBattlerAtPosition(3);
        else
            gBattlerTarget = GetBattlerAtPosition(2);
    }

    if (gChosenActionByBattler[gBattlerTarget] == 0
        && gBattlerAttacker == *(gBattleStruct->moveTarget + gBattlerTarget)
        && !(gBattleMons[gBattlerTarget].status1 & ((1 << 0 | 1 << 1 | 1 << 2) | (1 << 5)))
        && gBattleMons[gBattlerAttacker].hp
        && !gDisableStructs[gBattlerTarget].truantCounter
        && gChosenMoveByBattler[gBattlerTarget] == 228)
    {
        s32 i;

        for (i = 0; i < gBattlersCount; i++)
        {
            if (gBattlerByTurnOrder[i] == gBattlerTarget)
                gActionsByTurnOrder[i] = 11;
        }

        gCurrentMove = 228;
        gCurrMovePos = gChosenMovePos = *(gBattleStruct->chosenMovePositions + gBattlerTarget);
        gBattlescriptCurrInstr += 5;
        gBattleScripting.animTurn = 1;
        gHitMarker &= ~(1 << 10);
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_setsunny(void)
{
    if (gBattleWeather & ((1 << 5) | (1 << 6)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 5);
        gBattleCommunication[5] = 4;
        gWishFutureKnock.weatherDuration = 5;
    }

    gBattlescriptCurrInstr++;
}


static void Cmd_maxattackhalvehp(void)
{
    u32 halfHp = gBattleMons[gBattlerAttacker].maxHP / 2;

    if (!(gBattleMons[gBattlerAttacker].maxHP / 2))
        halfHp = 1;

    if (gBattleMons[gBattlerAttacker].statStages[1] < 12
        && gBattleMons[gBattlerAttacker].hp > halfHp)
    {
        gBattleMons[gBattlerAttacker].statStages[1] = 12;
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}


static void Cmd_copyfoestats(void)
{
    s32 i;

    for (i = 0; i < (6 + 2); i++)
    {
        gBattleMons[gBattlerAttacker].statStages[i] = gBattleMons[gBattlerTarget].statStages[i];
    }

    gBattlescriptCurrInstr += 5;
}

static void Cmd_rapidspinfree(void)
{
    if (gBattleMons[gBattlerAttacker].status2 & (1 << 13 | 1 << 14 | 1 << 15))
    {
        gBattleScripting.battler = gBattlerTarget;
        gBattleMons[gBattlerAttacker].status2 &= ~(1 << 13 | 1 << 14 | 1 << 15);
        gBattlerTarget = *(gBattleStruct->wrappedBy + gBattlerAttacker);

        gBattleTextBuff1[0] = 0xFD;
        gBattleTextBuff1[1] = 2;
        gBattleTextBuff1[2] = *(gBattleStruct->wrappedMove + gBattlerAttacker * 2 + 0);
        gBattleTextBuff1[3] = *(gBattleStruct->wrappedMove + gBattlerAttacker * 2 + 1);
        gBattleTextBuff1[4] = 0xFF;

        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_WrapFree;
    }
    else if (gStatuses3[gBattlerAttacker] & (1 << 2))
    {
        gStatuses3[gBattlerAttacker] &= ~(1 << 2);
        gStatuses3[gBattlerAttacker] &= ~(1 << 0 | 1 << 1);
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_LeechSeedFree;
    }
    else if (gSideStatuses[GetBattlerSide(gBattlerAttacker)] & (1 << 4))
    {
        gSideStatuses[GetBattlerSide(gBattlerAttacker)] &= ~(1 << 4);
        gSideTimers[GetBattlerSide(gBattlerAttacker)].spikesAmount = 0;
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_SpikesFree;
    }
    else
    {
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_setdefensecurlbit(void)
{
    gBattleMons[gBattlerAttacker].status2 |= (1 << 30);
    gBattlescriptCurrInstr++;
}

static void Cmd_recoverbasedonsunlight(void)
{
    gBattlerTarget = gBattlerAttacker;

    if (gBattleMons[gBattlerAttacker].hp != gBattleMons[gBattlerAttacker].maxHP)
    {
        if (gBattleWeather == 0 || !((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))))
            gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 2;
        else if (gBattleWeather & ((1 << 5) | (1 << 6)))
            gBattleMoveDamage = 20 * gBattleMons[gBattlerAttacker].maxHP / 30;
        else
            gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 4;

        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_hiddenpowercalc(void)
{
    s32 powerBits, typeBits;

    powerBits = ((gBattleMons[gBattlerAttacker].hpIV & 2) >> 1)
              | ((gBattleMons[gBattlerAttacker].attackIV & 2) << 0)
              | ((gBattleMons[gBattlerAttacker].defenseIV & 2) << 1)
              | ((gBattleMons[gBattlerAttacker].speedIV & 2) << 2)
              | ((gBattleMons[gBattlerAttacker].spAttackIV & 2) << 3)
              | ((gBattleMons[gBattlerAttacker].spDefenseIV & 2) << 4);
    typeBits = ((gBattleMons[gBattlerAttacker].hpIV & 1) << 0)
              | ((gBattleMons[gBattlerAttacker].attackIV & 1) << 1)
              | ((gBattleMons[gBattlerAttacker].defenseIV & 1) << 2)
              | ((gBattleMons[gBattlerAttacker].speedIV & 1) << 3)
              | ((gBattleMons[gBattlerAttacker].spAttackIV & 1) << 4)
              | ((gBattleMons[gBattlerAttacker].spDefenseIV & 1) << 5);

    gDynamicBasePower = (40 * powerBits) / 63 + 30;



    gBattleStruct->dynamicMoveType = ((18 - 3) * typeBits) / 63 + 1;
    if (gBattleStruct->dynamicMoveType >= 9)
        gBattleStruct->dynamicMoveType++;
    gBattleStruct->dynamicMoveType |= (1 << 6) | (1 << 7);

    gBattlescriptCurrInstr++;
}

static void Cmd_selectfirstvalidtarget(void)
{
    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (gBattlerTarget == gBattlerAttacker)
            continue;
        if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
            break;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_trysetfutureattack(void)
{
    if (gWishFutureKnock.futureSightCounter[gBattlerTarget] != 0)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gWishFutureKnock.futureSightMove[gBattlerTarget] = gCurrentMove;
        gWishFutureKnock.futureSightAttacker[gBattlerTarget] = gBattlerAttacker;
        gWishFutureKnock.futureSightCounter[gBattlerTarget] = 3;
        gWishFutureKnock.futureSightDmg[gBattlerTarget] = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerTarget], gCurrentMove,
                                                    gSideStatuses[((GetBattlerPosition(gBattlerTarget) & 1))], 0,
                                                    0, gBattlerAttacker, gBattlerTarget);

        if (gProtectStructs[gBattlerAttacker].helpingHand)
            gWishFutureKnock.futureSightDmg[gBattlerTarget] = gWishFutureKnock.futureSightDmg[gBattlerTarget] * 15 / 10;

        if (gCurrentMove == 353)
            gBattleCommunication[5] = 1;
        else
            gBattleCommunication[5] = 0;

        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_trydobeatup(void)
{
    struct Pokemon *party;

    if (GetBattlerSide(gBattlerAttacker) == 0)
        party = gPlayerParty;
    else
        party = gEnemyParty;

    if (gBattleMons[gBattlerTarget].hp == 0)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        u8 beforeLoop = gBattleCommunication[0];
        for (;gBattleCommunication[0] < 6; gBattleCommunication[0]++)
        {
            if (GetMonData(&party[gBattleCommunication[0]], 57)
                && GetMonData(&party[gBattleCommunication[0]], 65)
                && GetMonData(&party[gBattleCommunication[0]], 65) != 413
                && !GetMonData(&party[gBattleCommunication[0]], 55))
                break;
        }
        if (gBattleCommunication[0] < 6)
        {
            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gBattlerAttacker; gBattleTextBuff1[3] = gBattleCommunication[0]; gBattleTextBuff1[4] = 0xFF; }

            gBattlescriptCurrInstr += 9;

            gBattleMoveDamage = gSpeciesInfo[GetMonData(&party[gBattleCommunication[0]], 11)].baseAttack;
            gBattleMoveDamage *= gBattleMoves[gCurrentMove].power;
            gBattleMoveDamage *= (GetMonData(&party[gBattleCommunication[0]], 56) * 2 / 5 + 2);
            gBattleMoveDamage /= gSpeciesInfo[gBattleMons[gBattlerTarget].species].baseDefense;
            gBattleMoveDamage = (gBattleMoveDamage / 50) + 2;
            if (gProtectStructs[gBattlerAttacker].helpingHand)
                gBattleMoveDamage = gBattleMoveDamage * 15 / 10;

            gBattleCommunication[0]++;
        }
        else if (beforeLoop != 0)
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        else
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 5)[0] | ((gBattlescriptCurrInstr + 5)[1] << 8) | ((gBattlescriptCurrInstr + 5)[2] << 16) | ((gBattlescriptCurrInstr + 5)[3] << 24));
    }
}

static void Cmd_setsemiinvulnerablebit(void)
{
    switch (gCurrentMove)
    {
    case 19:
    case 340:
        gStatuses3[gBattlerAttacker] |= (1 << 6);
        break;
    case 91:
        gStatuses3[gBattlerAttacker] |= (1 << 7);
        break;
    case 291:
        gStatuses3[gBattlerAttacker] |= (1 << 18);
        break;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_clearsemiinvulnerablebit(void)
{
    switch (gCurrentMove)
    {
    case 19:
    case 340:
        gStatuses3[gBattlerAttacker] &= ~(1 << 6);
        break;
    case 91:
        gStatuses3[gBattlerAttacker] &= ~(1 << 7);
        break;
    case 291:
        gStatuses3[gBattlerAttacker] &= ~(1 << 18);
        break;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_setminimize(void)
{
    if (gHitMarker & (1 << 25))
        gStatuses3[gBattlerAttacker] |= (1 << 8);

    gBattlescriptCurrInstr++;
}

static void Cmd_sethail(void)
{
    if (gBattleWeather & ((1 << 7)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 7);
        gBattleCommunication[5] = 5;
        gWishFutureKnock.weatherDuration = 5;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_trymemento(void)
{
    if (gBattleMons[gBattlerTarget].statStages[1] == 0
        && gBattleMons[gBattlerTarget].statStages[4] == 0
        && gBattleCommunication[6] != 1)
    {

        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {

        gActiveBattler = gBattlerAttacker;
        gBattleMoveDamage = gBattleMons[gActiveBattler].hp;
        BtlController_EmitHealthBarUpdate(BUFFER_A, 0x7FFF);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 5;
    }
}


static void Cmd_setforcedtarget(void)
{
    gSideTimers[GetBattlerSide(gBattlerAttacker)].followmeTimer = 1;
    gSideTimers[GetBattlerSide(gBattlerAttacker)].followmeTarget = gBattlerAttacker;
    gBattlescriptCurrInstr++;
}

static void Cmd_setcharge(void)
{
    gStatuses3[gBattlerAttacker] |= (1 << 9);
    gDisableStructs[gBattlerAttacker].chargeTimer = 2;
    gDisableStructs[gBattlerAttacker].chargeTimerStartValue = 2;
    gBattlescriptCurrInstr++;
}


static void Cmd_callterrainattack(void)
{
    gHitMarker &= ~(1 << 10);
    gCurrentMove = sNaturePowerMoves[gBattleTerrain];
    gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
    BattleScriptPush(gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect]);
    gBattlescriptCurrInstr++;
}


static void Cmd_cureifburnedparalysedorpoisoned(void)
{
    if (gBattleMons[gBattlerAttacker].status1 & ((1 << 3) | (1 << 4) | (1 << 6) | (1 << 7)))
    {
        gBattleMons[gBattlerAttacker].status1 = 0;
        gBattlescriptCurrInstr += 5;
        gActiveBattler = gBattlerAttacker;
        BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].status1), &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_settorment(void)
{
    if (gBattleMons[gBattlerTarget].status2 & (1 << 31))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gBattleMons[gBattlerTarget].status2 |= (1 << 31);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_jumpifnodamage(void)
{
    if (gProtectStructs[gBattlerAttacker].physicalDmg || gProtectStructs[gBattlerAttacker].specialDmg)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_settaunt(void)
{
    if (gDisableStructs[gBattlerTarget].tauntTimer == 0)
    {
        gDisableStructs[gBattlerTarget].tauntTimer = 2;
        gDisableStructs[gBattlerTarget].tauntTimer2 = 2;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysethelpinghand(void)
{
    gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);

    if (gBattleTypeFlags & (1 << 0)
        && !(gAbsentBattlerFlags & gBitTable[gBattlerTarget])
        && !gProtectStructs[gBattlerAttacker].helpingHand
        && !gProtectStructs[gBattlerTarget].helpingHand)
    {
        gProtectStructs[gBattlerTarget].helpingHand = 1;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}


static void Cmd_tryswapitems(void)
{

    if (gBattleTypeFlags & (1 << 19)
        || (GetBattlerSide(gBattlerAttacker) == 1
            && !(gBattleTypeFlags & ((1 << 1)
                                  | (1 << 8)
                                  | (1 << 11)))
                && gTrainerBattleOpponent_A != 0x400))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
        u8 sideTarget = GetBattlerSide(gBattlerTarget);


        if (!(gBattleTypeFlags & ((1 << 1)
                             | (1 << 8)
                             | (1 << 11)))
            && gTrainerBattleOpponent_A != 0x400
            && (gWishFutureKnock.knockedOffMons[sideAttacker] & gBitTable[gBattlerPartyIndexes[gBattlerAttacker]]
                || gWishFutureKnock.knockedOffMons[sideTarget] & gBitTable[gBattlerPartyIndexes[gBattlerTarget]]))
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }


        else if ((gBattleMons[gBattlerAttacker].item == 0 && gBattleMons[gBattlerTarget].item == 0)
                 || gBattleMons[gBattlerAttacker].item == 175
                 || gBattleMons[gBattlerTarget].item == 175
                 || ((gBattleMons[gBattlerAttacker].item == 121 || gBattleMons[gBattlerAttacker].item == 122 || gBattleMons[gBattlerAttacker].item == 123 || gBattleMons[gBattlerAttacker].item == 124 || gBattleMons[gBattlerAttacker].item == 125 || gBattleMons[gBattlerAttacker].item == 126 || gBattleMons[gBattlerAttacker].item == 127 || gBattleMons[gBattlerAttacker].item == 128 || gBattleMons[gBattlerAttacker].item == 129 || gBattleMons[gBattlerAttacker].item == 130 || gBattleMons[gBattlerAttacker].item == 131 || gBattleMons[gBattlerAttacker].item == 132))
                 || ((gBattleMons[gBattlerTarget].item == 121 || gBattleMons[gBattlerTarget].item == 122 || gBattleMons[gBattlerTarget].item == 123 || gBattleMons[gBattlerTarget].item == 124 || gBattleMons[gBattlerTarget].item == 125 || gBattleMons[gBattlerTarget].item == 126 || gBattleMons[gBattlerTarget].item == 127 || gBattleMons[gBattlerTarget].item == 128 || gBattleMons[gBattlerTarget].item == 129 || gBattleMons[gBattlerTarget].item == 130 || gBattleMons[gBattlerTarget].item == 131 || gBattleMons[gBattlerTarget].item == 132)))
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }

        else if (gBattleMons[gBattlerTarget].ability == 60)
        {
            gBattlescriptCurrInstr = BattleScript_StickyHoldActivates;
            gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
            RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
        }

        else
        {
            u16 oldItemAtk, *newItemAtk;

            newItemAtk = &gBattleStruct->changedItems[gBattlerAttacker];
            oldItemAtk = gBattleMons[gBattlerAttacker].item;
            *newItemAtk = gBattleMons[gBattlerTarget].item;

            gBattleMons[gBattlerAttacker].item = 0;
            gBattleMons[gBattlerTarget].item = oldItemAtk;

            gActiveBattler = gBattlerAttacker;
            BtlController_EmitSetMonData(BUFFER_A, REQUEST_HELDITEM_BATTLE, 0, sizeof(*newItemAtk), newItemAtk);
            MarkBattlerForControllerExec(gBattlerAttacker);

            gActiveBattler = gBattlerTarget;
            BtlController_EmitSetMonData(BUFFER_A, REQUEST_HELDITEM_BATTLE, 0, sizeof(gBattleMons[gBattlerTarget].item), &gBattleMons[gBattlerTarget].item);
            MarkBattlerForControllerExec(gBattlerTarget);

            *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gBattlerTarget]) + 0) = 0;
            *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gBattlerTarget]) + 1) = 0;

            *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gBattlerAttacker]) + 0) = 0;
            *(u8 *)((u8 *)(&gBattleStruct->choicedMove[gBattlerAttacker]) + 1) = 0;

            gBattlescriptCurrInstr += 5;

            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 10; gBattleTextBuff1[2] = *newItemAtk; gBattleTextBuff1[3] = (*newItemAtk & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }
            { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 10; gBattleTextBuff2[2] = oldItemAtk; gBattleTextBuff2[3] = (oldItemAtk & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; }

            if (oldItemAtk != 0 && *newItemAtk != 0)
                gBattleCommunication[5] = 2;
            else if (oldItemAtk == 0 && *newItemAtk != 0)
                gBattleCommunication[5] = 0;
            else
                gBattleCommunication[5] = 1;
        }
    }
}


static void Cmd_trycopyability(void)
{
    if (gBattleMons[gBattlerTarget].ability != 0
        && gBattleMons[gBattlerTarget].ability != 25)
    {
        gBattleMons[gBattlerAttacker].ability = gBattleMons[gBattlerTarget].ability;
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trywish(void)
{
    switch (gBattlescriptCurrInstr[1])
    {
    case 0:
        if (gWishFutureKnock.wishCounter[gBattlerAttacker] == 0)
        {
            gWishFutureKnock.wishCounter[gBattlerAttacker] = 2;
            gWishFutureKnock.wishMonId[gBattlerAttacker] = gBattlerPartyIndexes[gBattlerAttacker];
            gBattlescriptCurrInstr += 6;
        }
        else
        {
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        }
        break;
    case 1:
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gBattlerTarget; gBattleTextBuff1[3] = gWishFutureKnock.wishMonId[gBattlerTarget]; gBattleTextBuff1[4] = 0xFF; }

        gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;

        if (gBattleMons[gBattlerTarget].hp == gBattleMons[gBattlerTarget].maxHP)
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;

        break;
    }
}


static void Cmd_trysetroots(void)
{
    if (gStatuses3[gBattlerAttacker] & (1 << 10))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gStatuses3[gBattlerAttacker] |= (1 << 10);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_doubledamagedealtifdamaged(void)
{
    if ((gProtectStructs[gBattlerAttacker].physicalDmg != 0
         && gProtectStructs[gBattlerAttacker].physicalBattlerId == gBattlerTarget)
        || (gProtectStructs[gBattlerAttacker].specialDmg != 0
            && gProtectStructs[gBattlerAttacker].specialBattlerId == gBattlerTarget))
    {
        gBattleScripting.dmgMultiplier = 2;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_setyawn(void)
{
    if (gStatuses3[gBattlerTarget] & (1 << 11 | 1 << 12)
        || gBattleMons[gBattlerTarget].status1 & ((1 << 0 | 1 << 1 | 1 << 2) | (1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 7)))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gStatuses3[gBattlerTarget] |= (((2) << 11) & (1 << 11 | 1 << 12));
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_setdamagetohealthdifference(void)
{
    if (gBattleMons[gBattlerTarget].hp <= gBattleMons[gBattlerAttacker].hp)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - gBattleMons[gBattlerAttacker].hp;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_scaledamagebyhealthratio(void)
{
    if (gDynamicBasePower == 0)
    {
        u8 power = gBattleMoves[gCurrentMove].power;
        gDynamicBasePower = gBattleMons[gBattlerAttacker].hp * power / gBattleMons[gBattlerAttacker].maxHP;
        if (gDynamicBasePower == 0)
            gDynamicBasePower = 1;
    }
    gBattlescriptCurrInstr++;
}


static void Cmd_tryswapabilities(void)
{
    if ((gBattleMons[gBattlerAttacker].ability == 0
        && gBattleMons[gBattlerTarget].ability == 0)
     || gBattleMons[gBattlerAttacker].ability == 25
     || gBattleMons[gBattlerTarget].ability == 25
     || gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
     {
         gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
     }
    else
    {
        u8 abilityAtk = gBattleMons[gBattlerAttacker].ability;
        gBattleMons[gBattlerAttacker].ability = gBattleMons[gBattlerTarget].ability;
        gBattleMons[gBattlerTarget].ability = abilityAtk;

            gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_tryimprison(void)
{
    if ((gStatuses3[gBattlerAttacker] & (1 << 13)))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        u8 battlerId, sideAttacker;

        sideAttacker = GetBattlerSide(gBattlerAttacker);
        PressurePPLoseOnUsingImprison(gBattlerAttacker);
        for (battlerId = 0; battlerId < gBattlersCount; battlerId++)
        {
            if (sideAttacker != GetBattlerSide(battlerId))
            {
                s32 attackerMoveId;
                for (attackerMoveId = 0; attackerMoveId < 4; attackerMoveId++)
                {
                    s32 i;
                    for (i = 0; i < 4; i++)
                    {
                        if (gBattleMons[gBattlerAttacker].moves[attackerMoveId] == gBattleMons[battlerId].moves[i]
                            && gBattleMons[gBattlerAttacker].moves[attackerMoveId] != 0)
                            break;
                    }
                    if (i != 4)
                        break;
                }
                if (attackerMoveId != 4)
                {
                    gStatuses3[gBattlerAttacker] |= (1 << 13);
                    gBattlescriptCurrInstr += 5;
                    break;
                }
            }
        }
        if (battlerId == gBattlersCount)
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysetgrudge(void)
{
    if (gStatuses3[gBattlerAttacker] & (1 << 14))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gStatuses3[gBattlerAttacker] |= (1 << 14);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_weightdamagecalculation(void)
{
    s32 i;
    for (i = 0; sWeightToDamageTable[i] != 0xFFFF; i += 2)
    {
        if (sWeightToDamageTable[i] > GetPokedexHeightWeight(SpeciesToNationalPokedexNum(gBattleMons[gBattlerTarget].species), 1))
            break;
    }

    if (sWeightToDamageTable[i] != 0xFFFF)
        gDynamicBasePower = sWeightToDamageTable[i + 1];
    else
        gDynamicBasePower = 120;

    gBattlescriptCurrInstr++;
}

static void Cmd_assistattackselect(void)
{
    s32 chooseableMovesNo = 0;
    struct Pokemon* party;
    s32 monId, moveId;
    u16 *validMoves = gBattleStruct->assistPossibleMoves;

    if (((GetBattlerPosition(gBattlerAttacker) & 1)) != 0)
        party = gEnemyParty;
    else
        party = gPlayerParty;

    for (monId = 0; monId < 6; monId++)
    {
        if (monId == gBattlerPartyIndexes[gBattlerAttacker])
            continue;
        if (GetMonData(&party[monId], 65) == 0)
            continue;
        if (GetMonData(&party[monId], 65) == 413)
            continue;

        for (moveId = 0; moveId < 4; moveId++)
        {
            s32 i = 0;
            u16 move = GetMonData(&party[monId], 13 + moveId);

            if (IsInvalidForSleepTalkOrAssist(move))
                continue;

            for (; sMovesForbiddenToCopy[i] != 0xFFFF && move != sMovesForbiddenToCopy[i]; i++);

            if (sMovesForbiddenToCopy[i] != 0xFFFF)
                continue;
            if (move == 0)
                continue;

            validMoves[chooseableMovesNo] = move;
            chooseableMovesNo++;
        }
    }
    if (chooseableMovesNo)
    {
        gHitMarker &= ~(1 << 10);
        gCalledMove = validMoves[((Random() & 0xFF) * chooseableMovesNo) >> 8];
        gBattlerTarget = GetMoveTarget(gCalledMove, 0);
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysetmagiccoat(void)
{
    gBattlerTarget = gBattlerAttacker;
    gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
    if (gCurrentTurnActionNumber == gBattlersCount - 1)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gProtectStructs[gBattlerAttacker].bounceMove = 1;
        gBattlescriptCurrInstr += 5;
    }
}


static void Cmd_trysetsnatch(void)
{
    gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
    if (gCurrentTurnActionNumber == gBattlersCount - 1)
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gProtectStructs[gBattlerAttacker].stealMove = 1;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_trygetintimidatetarget(void)
{
    u8 side;

    gBattleScripting.battler = gBattleStruct->intimidateBattler;
    side = GetBattlerSide(gBattleScripting.battler);

    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 9; gBattleTextBuff1[2] = gBattleMons[gBattleScripting.battler].ability; gBattleTextBuff1[3] = 0xFF; }

    for (;gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (GetBattlerSide(gBattlerTarget) == side)
            continue;
        if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
            break;
    }

    if (gBattlerTarget >= gBattlersCount)
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    else
        gBattlescriptCurrInstr += 5;
}

static void Cmd_switchoutabilities(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattleMons[gActiveBattler].ability)
    {
    case 30:
        gBattleMons[gActiveBattler].status1 = 0;
        BtlController_EmitSetMonData(BUFFER_A, REQUEST_STATUS_BATTLE,
                                     gBitTable[*(gBattleStruct->battlerPartyIndexes + gActiveBattler)],
                                     sizeof(gBattleMons[gActiveBattler].status1),
                                     &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);
        break;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_jumpifhasnohp(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gBattleMons[gActiveBattler].hp == 0)
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_getsecretpowereffect(void)
{
    switch (gBattleTerrain)
    {
    case 0:
        gBattleCommunication[3] = 2;
        break;
    case 1:
        gBattleCommunication[3] = 1;
        break;
    case 2:
        gBattleCommunication[3] = 27;
        break;
    case 3:
        gBattleCommunication[3] = 23;
        break;
    case 4:
        gBattleCommunication[3] = 22;
        break;
    case 5:
        gBattleCommunication[3] = 24;
        break;
    case 6:
        gBattleCommunication[3] = 7;
        break;
    case 7:
        gBattleCommunication[3] = 8;
        break;
    default:
        gBattleCommunication[3] = 5;
        break;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_pickup(void)
{
    s32 i;
    u32 j;
    u16 species, heldItem;
    u32 ability;

    for (i = 0; i < 6; i++)
    {
        species = GetMonData(&gPlayerParty[i], 65);
        heldItem = GetMonData(&gPlayerParty[i], 12);
        if (GetMonData(&gPlayerParty[i], 46) != 0)
            ability = gSpeciesInfo[species].abilities[1];
        else
            ability = gSpeciesInfo[species].abilities[0];
        if (ability == 53 && species != 0 && species != 413 && heldItem == 0 && !(Random() % 10))
        {
            s32 random = Random() % 100;

            for (j = 0; j < 15; ++j)
                if (sPickupItems[j].chance > random)
                    break;
            SetMonData(&gPlayerParty[i], 12, &sPickupItems[j]);
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_docastformchangeanimation(void)
{
    gActiveBattler = gBattleScripting.battler;

    if (gBattleMons[gActiveBattler].status2 & (1 << 24))
        *(&gBattleStruct->formToChangeInto) |= (1 << 7);

    BtlController_EmitBattleAnimation(BUFFER_A, 0, gBattleStruct->formToChangeInto);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr++;
}

static void Cmd_trycastformdatachange(void)
{
    u8 form;

    gBattlescriptCurrInstr++;
    form = CastformDataTypeChange(gBattleScripting.battler);
    if (form)
    {
        BattleScriptPushCursorAndCallback(BattleScript_CastformChange);
        *(&gBattleStruct->formToChangeInto) = form - 1;
    }
}


static void Cmd_settypebasedhalvers(void)
{
    bool8 worked = 0;

    if (gBattleMoves[gCurrentMove].effect == 201)
    {
        if (!(gStatuses3[gBattlerAttacker] & (1 << 16)))
        {
            gStatuses3[gBattlerAttacker] |= (1 << 16);
            gBattleCommunication[5] = 0;
            worked = 1;
        }
    }
    else
    {
        if (!(gStatuses3[gBattlerAttacker] & (1 << 17)))
        {
            gStatuses3[gBattlerAttacker] |= (1 << 17);
            gBattleCommunication[5] = 1;
            worked = 1;
        }
    }

    if (worked)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_setweatherballtype(void)
{
    if (((!AbilityBattleEffects(19, 0, 13, 0, 0) && !AbilityBattleEffects(19, 0, 77, 0, 0))))
    {
        if (gBattleWeather & (((1 << 0) | (1 << 1) | (1 << 2)) | ((1 << 3) | (1 << 4)) | ((1 << 5) | (1 << 6)) | ((1 << 7))))
            gBattleScripting.dmgMultiplier = 2;
        if (gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2)))
            *(&gBattleStruct->dynamicMoveType) = 11 | (1 << 7);
        else if (gBattleWeather & ((1 << 3) | (1 << 4)))
            *(&gBattleStruct->dynamicMoveType) = 5 | (1 << 7);
        else if (gBattleWeather & ((1 << 5) | (1 << 6)))
            *(&gBattleStruct->dynamicMoveType) = 10 | (1 << 7);
        else if (gBattleWeather & ((1 << 7)))
            *(&gBattleStruct->dynamicMoveType) = 15 | (1 << 7);
        else
            *(&gBattleStruct->dynamicMoveType) = 0 | (1 << 7);
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_tryrecycleitem(void)
{
    u16 *usedHeldItem;

    gActiveBattler = gBattlerAttacker;
    usedHeldItem = &gBattleStruct->usedHeldItems[gActiveBattler];
    if (*usedHeldItem != 0 && gBattleMons[gActiveBattler].item == 0)
    {
        gLastUsedItem = *usedHeldItem;
        *usedHeldItem = 0;
        gBattleMons[gActiveBattler].item = gLastUsedItem;

        BtlController_EmitSetMonData(BUFFER_A, REQUEST_HELDITEM_BATTLE, 0, sizeof(gBattleMons[gActiveBattler].item), &gBattleMons[gActiveBattler].item);
        MarkBattlerForControllerExec(gActiveBattler);

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_settypetoterrain(void)
{
    if (!((gBattleMons[gBattlerAttacker].type1 == sTerrainToType[gBattleTerrain] || gBattleMons[gBattlerAttacker].type2 == sTerrainToType[gBattleTerrain])))
    {
        { gBattleMons[gBattlerAttacker].type1 = sTerrainToType[gBattleTerrain]; gBattleMons[gBattlerAttacker].type2 = sTerrainToType[gBattleTerrain]; };
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = sTerrainToType[gBattleTerrain]; gBattleTextBuff1[3] = 0xFF; };

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}


static void Cmd_pursuitdoubles(void)
{
    gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);

    if (gBattleTypeFlags & (1 << 0)
        && !(gAbsentBattlerFlags & gBitTable[gActiveBattler])
        && gChosenActionByBattler[gActiveBattler] == 0
        && gChosenMoveByBattler[gActiveBattler] == 228)
    {
        gActionsByTurnOrder[gActiveBattler] = 11;
        gCurrentMove = 228;
        gBattlescriptCurrInstr += 5;
        gBattleScripting.animTurn = 1;
        gBattleScripting.pursuitDoublesAttacker = gBattlerAttacker;
        gBattlerAttacker = gActiveBattler;
    }
    else
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_snatchsetbattlers(void)
{
    gEffectBattler = gBattlerAttacker;

    if (gBattlerAttacker == gBattlerTarget)
        gBattlerAttacker = gBattlerTarget = gBattleScripting.battler;
    else
        gBattlerTarget = gBattleScripting.battler;

    gBattleScripting.battler = gEffectBattler;
    gBattlescriptCurrInstr++;
}


static void Cmd_removelightscreenreflect(void)
{
    u8 opposingSide = GetBattlerSide(gBattlerAttacker) ^ 1;

    if (gSideTimers[opposingSide].reflectTimer || gSideTimers[opposingSide].lightscreenTimer)
    {
        gSideStatuses[opposingSide] &= ~(1 << 0);
        gSideStatuses[opposingSide] &= ~(1 << 1);
        gSideTimers[opposingSide].reflectTimer = 0;
        gSideTimers[opposingSide].lightscreenTimer = 0;
        gBattleScripting.animTurn = 1;
        gBattleScripting.animTargetsHit = 1;
    }
    else
    {
        gBattleScripting.animTurn = 0;
        gBattleScripting.animTargetsHit = 0;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_handleballthrow(void)
{
    u8 ballMultiplier = 0;

    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = gBattlerAttacker;
    gBattlerTarget = gBattlerAttacker ^ 1;

    if (gBattleTypeFlags & (1 << 15))
    {
        BtlController_EmitBallThrowAnim(BUFFER_A, BALL_GHOST_DODGE);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr = BattleScript_GhostBallDodge;
    }
    else if (gBattleTypeFlags & (1 << 3))
    {
        BtlController_EmitBallThrowAnim(BUFFER_A, BALL_TRAINER_BLOCK);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr = BattleScript_TrainerBallBlock;
    }
    else if (gBattleTypeFlags & ((1 << 16) | (1 << 9)))
    {
        BtlController_EmitBallThrowAnim(BUFFER_A, BALL_3_SHAKES_SUCCESS);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr = BattleScript_OldMan_Pokedude_CaughtMessage;
    }
    else
    {
        u32 odds;
        u8 catchRate;

        if (gLastUsedItem == 5)
            catchRate = gBattleStruct->safariCatchFactor * 1275 / 100;
        else
            catchRate = gSpeciesInfo[gBattleMons[gBattlerTarget].species].catchRate;

        if (gLastUsedItem > 5)
        {
            switch (gLastUsedItem)
            {
            case 6:
                if (((gBattleMons[gBattlerTarget].type1 == 11 || gBattleMons[gBattlerTarget].type2 == 11)) || ((gBattleMons[gBattlerTarget].type1 == 6 || gBattleMons[gBattlerTarget].type2 == 6)))
                    ballMultiplier = 30;
                else
                    ballMultiplier = 10;
                break;
            case 7:
                if (GetCurrentMapType() == 5)
                    ballMultiplier = 35;
                else
                    ballMultiplier = 10;
                break;
            case 8:
                if (gBattleMons[gBattlerTarget].level < 40)
                {
                    ballMultiplier = 40 - gBattleMons[gBattlerTarget].level;
                    if (ballMultiplier <= 9)
                        ballMultiplier = 10;
                }
                else
                {
                    ballMultiplier = 10;
                }
                break;
            case 9:
                if (GetSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gBattlerTarget].species), FLAG_GET_CAUGHT))
                    ballMultiplier = 30;
                else
                    ballMultiplier = 10;
                break;
            case 10:
                ballMultiplier = gBattleResults.battleTurnCounter + 10;
                if (ballMultiplier > 40)
                    ballMultiplier = 40;
                break;
            case 11:
            case 12:
                ballMultiplier = 10;
                break;
            }
        }
        else
            ballMultiplier = sBallCatchBonuses[gLastUsedItem - 2];

        odds = (catchRate * ballMultiplier / 10)
            * (gBattleMons[gBattlerTarget].maxHP * 3 - gBattleMons[gBattlerTarget].hp * 2)
            / (3 * gBattleMons[gBattlerTarget].maxHP);

        if (gBattleMons[gBattlerTarget].status1 & ((1 << 0 | 1 << 1 | 1 << 2) | (1 << 5)))
            odds *= 2;
        if (gBattleMons[gBattlerTarget].status1 & ((1 << 3) | (1 << 4) | (1 << 6) | (1 << 7)))
            odds = (odds * 15) / 10;

        if (gLastUsedItem != 5)
        {
            if (gLastUsedItem == 1)
            {
                gBattleResults.usedMasterBall = 1;
            }
            else
            {
                if (gBattleResults.catchAttempts[gLastUsedItem - 2] < 255)
                    gBattleResults.catchAttempts[gLastUsedItem - 2]++;
            }
        }

        if (odds > 254)
        {
            BtlController_EmitBallThrowAnim(BUFFER_A, BALL_3_SHAKES_SUCCESS);
            MarkBattlerForControllerExec(gActiveBattler);
            gBattlescriptCurrInstr = BattleScript_SuccessBallThrow;
            SetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerTarget]], 38, &gLastUsedItem);

            if (CalculatePlayerPartyCount() == 6)
                gBattleCommunication[5] = 0;
            else
                gBattleCommunication[5] = 1;
        }
        else
        {
            u8 shakes;

            odds = Sqrt(Sqrt(16711680 / odds));
            odds = 1048560 / odds;

            for (shakes = 0; shakes < BALL_3_SHAKES_SUCCESS && Random() < odds; shakes++);

            if (gLastUsedItem == 1)
                shakes = BALL_3_SHAKES_SUCCESS;

            BtlController_EmitBallThrowAnim(BUFFER_A, shakes);
            MarkBattlerForControllerExec(gActiveBattler);

            if (shakes == BALL_3_SHAKES_SUCCESS)
            {
                gBattlescriptCurrInstr = BattleScript_SuccessBallThrow;
                SetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerTarget]], 38, &gLastUsedItem);

                if (CalculatePlayerPartyCount() == 6)
                    gBattleCommunication[5] = 0;
                else
                    gBattleCommunication[5] = 1;
            }
            else
            {
                gBattleCommunication[5] = shakes;
                gBattlescriptCurrInstr = BattleScript_ShakeBallThrow;
            }
        }
    }
}

static void Cmd_givecaughtmon(void)
{
    if (GiveMonToPlayer(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]]) != 0)
    {
        if (!ShouldShowBoxWasFullMessage())
        {
            gBattleCommunication[5] = 0;
            StringCopy(gStringVar1, GetBoxNamePtr(VarGet(0x4037)));
            GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gStringVar2);
        }
        else
        {
            StringCopy(gStringVar1, GetBoxNamePtr(VarGet(0x4037)));
            GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gStringVar2);
            StringCopy(gStringVar3, GetBoxNamePtr(GetPCBoxToSendMon()));
            gBattleCommunication[5] = 2;
        }


        if (FlagGet(((((0x500 + 1) + 768 - 1) + 1) + 0x34)))
            gBattleCommunication[5]++;
    }

    gBattleResults.caughtMonSpecies = gBattleMons[gBattlerAttacker ^ 1].species;
    GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gBattleResults.caughtMonNick);

    gBattlescriptCurrInstr++;
}

static void Cmd_trysetcaughtmondexflags(void)
{
    u16 species = GetMonData(&gEnemyParty[0], 11, ((void *)0));
    u32 personality = GetMonData(&gEnemyParty[0], 0, ((void *)0));

    if (GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_CAUGHT))
    {
        gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        HandleSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_SET_CAUGHT, personality);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_displaydexinfo(void)
{
    u16 species = GetMonData(&gEnemyParty[0], 11, ((void *)0));

    switch (gBattleCommunication[0])
    {
    case 0:
        BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((31) | ((31) << 5) | ((31) << 10)));
        gBattleCommunication[0]++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
            FreeAllWindowBuffers();
            gBattleCommunication[1] = DexScreen_RegisterMonToPokedex(species);
            gBattleCommunication[0]++;
        }
        break;
    case 2:
        if (!gPaletteFade.active
            && gMain.callback2 == BattleMainCB2
            && !gTasks[gBattleCommunication[1]].isActive)
        {
            { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, (void *)0x6000000, 0x04000000 | 0x01000000 | ((0x18000)/(32/8) & 0x1FFFFF)); };
            SetVBlankCallback(VBlankCB_Battle);
            gBattleCommunication[0]++;
        }
        break;
    case 3:
        InitBattleBgsVideo();
        LoadBattleTextboxAndBackground();
        gBattle_BG3_X = 256;
        gBattleCommunication[0]++;
        break;
    case 4:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            CreateMonPicSprite_HandleDeoxys(species,
                                            gBattleMons[1].otId,
                                            gBattleMons[1].personality,
                                            1,
                                            120,
                                            64,
                                            0,
                                            0xFFFF);
            { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, gPlttBufferFaded, 0x04000000 | 0x01000000 | ((0x200)/(32/8) & 0x1FFFFF)); };
            BeginNormalPaletteFade(0x1FFFF, 0, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
            ShowBg(0);
            ShowBg(3);
            gBattleCommunication[0]++;
        }
        break;
    case 5:
        if (!gPaletteFade.active)
            gBattlescriptCurrInstr++;
        break;
    }
}

void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags)
{
    s32 destY, destX;
    u16 var = 0;

    for (destY = yStart; destY <= yEnd; destY++)
    {
        for (destX = xStart; destX <= xEnd; destX++)
        {
            if (destY == yStart)
            {
                if (destX == xStart)
                    var = 0x1022;
                else if (destX == xEnd)
                    var = 0x1024;
                else
                    var = 0x1023;
            }
            else if (destY == yEnd)
            {
                if (destX == xStart)
                    var = 0x1028;
                else if (destX == xEnd)
                    var = 0x102A;
                else
                    var = 0x1029;
            }
            else
            {
                if (destX == xStart)
                    var = 0x1025;
                else if (destX == xEnd)
                    var = 0x1027;
                else
                    var = 0x1026;
            }

            if (flags & (1 << 0))
                var = 0;

            if (flags & (1 << 7))
                CopyToBgTilemapBufferRect_ChangePalette(1, &var, destX, destY, 1, 1, 0x11);
            else
                CopyToBgTilemapBufferRect_ChangePalette(0, &var, destX, destY, 1, 1, 0x11);
        }
    }
    CopyBgTilemapBufferToVram(1);
}

void BattleCreateYesNoCursorAt(void)
{
    u16 src[2];
    src[0] = 1;
    src[1] = 2;
    CopyToBgTilemapBufferRect_ChangePalette(0, src, 0x18, 9 + (2 * gBattleCommunication[1]), 1, 2, 0x11);
    CopyBgTilemapBufferToVram(0);
}

void BattleDestroyYesNoCursorAt(void)
{
    u16 src[2];
    src[0] = 32;
    src[1] = 32;

    CopyToBgTilemapBufferRect_ChangePalette(0, src, 0x18, 9 + (2 * gBattleCommunication[1]), 1, 2, 0x11);
    CopyBgTilemapBufferToVram(0);
}

static void Cmd_trygivecaughtmonnick(void)
{
    switch (gBattleCommunication[0])
    {
    case 0:
        HandleBattleWindow(23, 8, 29, 13, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 14);
        gBattleCommunication[0]++;
        gBattleCommunication[1] = 0;
        BattleCreateYesNoCursorAt();
        break;
    case 1:
        if (({(gMain.newKeys) & (0x0040);}) && gBattleCommunication[1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 0;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0080);}) && gBattleCommunication[1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt();
            gBattleCommunication[1] = 1;
            BattleCreateYesNoCursorAt();
        }
        if (({(gMain.newKeys) & (0x0001);}))
        {
            PlaySE(5);
            if (gBattleCommunication[1] == 0)
            {
                gBattleCommunication[0]++;
                BeginFastPaletteFade(3);
            }
            else
            {
                gBattleCommunication[0] = 4;
            }
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            PlaySE(5);
            gBattleCommunication[0] = 4;
        }
        break;
    case 2:
        if (!gPaletteFade.active)
        {
            GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gBattleStruct->caughtMonNick);
            FreeAllWindowBuffers();

            DoNamingScreen(2, gBattleStruct->caughtMonNick,
                           GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 11),
                           GetMonGender(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]]),
                           GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 0, ((void *)0)),
                           BattleMainCB2);

            gBattleCommunication[0]++;
        }
        break;
    case 3:
        if (gMain.callback2 == BattleMainCB2 && !gPaletteFade.active)
        {
            SetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gBattleStruct->caughtMonNick);
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        break;
    case 4:
        if (CalculatePlayerPartyCount() == 6)
            gBattlescriptCurrInstr += 5;
        else
            gBattlescriptCurrInstr = (u8 *) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        break;
    }
}

static void Cmd_subattackerhpbydmg(void)
{
    gBattleMons[gBattlerAttacker].hp -= gBattleMoveDamage;
    gBattlescriptCurrInstr++;
}

static void Cmd_removeattackerstatus1(void)
{
    gBattleMons[gBattlerAttacker].status1 = 0;
    gBattlescriptCurrInstr++;
}

static void Cmd_finishaction(void)
{
    gCurrentActionFuncId = 12;
}

static void Cmd_finishturn(void)
{
    gCurrentActionFuncId = 12;
    gCurrentTurnActionNumber = gBattlersCount;
}
