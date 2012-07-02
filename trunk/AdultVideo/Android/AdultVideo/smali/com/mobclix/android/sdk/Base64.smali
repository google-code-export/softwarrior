.class public Lcom/mobclix/android/sdk/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/Base64$InputStream;,
        Lcom/mobclix/android/sdk/Base64$OutputStream;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v5, -0x5

    #v5=(Byte);
    const/16 v4, -0x9

    .line 150
    #v4=(Byte);
    const-class v0, Lcom/mobclix/android/sdk/Base64;

    #v0=(Reference,Ljava/lang/Class;);
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mobclix/android/sdk/Base64;->$assertionsDisabled:Z

    .line 222
    const/16 v0, 0x40

    #v0=(PosByte);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobclix/android/sdk/Base64;->_STANDARD_ALPHABET:[B

    .line 240
    const/16 v0, 0x100

    #v0=(PosShort);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    const/4 v2, 0x0

    .line 241
    #v2=(Null);
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    #v2=(PosByte);
    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 242
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 243
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 244
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 245
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 246
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 247
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 248
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 249
    const/16 v3, 0x3e

    #v3=(PosByte);
    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    .line 250
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 251
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x30

    .line 252
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 253
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 254
    const/4 v3, -0x1

    #v3=(Byte);
    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 255
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 256
    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v6, v0, v2

    const/16 v2, 0x44

    aput-byte v7, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

    #v3=(PosByte);
    aput-byte v3, v0, v2

    const/16 v2, 0x46

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x47

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x48

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    const/16 v2, 0x4f

    .line 257
    const/16 v3, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x18

    aput-byte v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    .line 258
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    aput-byte v4, v0, v2

    const/16 v2, 0x60

    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 259
    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 260
    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 261
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    const/16 v2, 0x80

    .line 262
    #v2=(PosShort);
    aput-byte v4, v0, v2

    const/16 v2, 0x81

    aput-byte v4, v0, v2

    const/16 v2, 0x82

    aput-byte v4, v0, v2

    const/16 v2, 0x83

    aput-byte v4, v0, v2

    const/16 v2, 0x84

    aput-byte v4, v0, v2

    const/16 v2, 0x85

    aput-byte v4, v0, v2

    const/16 v2, 0x86

    aput-byte v4, v0, v2

    const/16 v2, 0x87

    aput-byte v4, v0, v2

    const/16 v2, 0x88

    aput-byte v4, v0, v2

    const/16 v2, 0x89

    aput-byte v4, v0, v2

    const/16 v2, 0x8a

    aput-byte v4, v0, v2

    const/16 v2, 0x8b

    aput-byte v4, v0, v2

    const/16 v2, 0x8c

    .line 263
    aput-byte v4, v0, v2

    const/16 v2, 0x8d

    aput-byte v4, v0, v2

    const/16 v2, 0x8e

    aput-byte v4, v0, v2

    const/16 v2, 0x8f

    aput-byte v4, v0, v2

    const/16 v2, 0x90

    aput-byte v4, v0, v2

    const/16 v2, 0x91

    aput-byte v4, v0, v2

    const/16 v2, 0x92

    aput-byte v4, v0, v2

    const/16 v2, 0x93

    aput-byte v4, v0, v2

    const/16 v2, 0x94

    aput-byte v4, v0, v2

    const/16 v2, 0x95

    aput-byte v4, v0, v2

    const/16 v2, 0x96

    aput-byte v4, v0, v2

    const/16 v2, 0x97

    aput-byte v4, v0, v2

    const/16 v2, 0x98

    aput-byte v4, v0, v2

    const/16 v2, 0x99

    .line 264
    aput-byte v4, v0, v2

    const/16 v2, 0x9a

    aput-byte v4, v0, v2

    const/16 v2, 0x9b

    aput-byte v4, v0, v2

    const/16 v2, 0x9c

    aput-byte v4, v0, v2

    const/16 v2, 0x9d

    aput-byte v4, v0, v2

    const/16 v2, 0x9e

    aput-byte v4, v0, v2

    const/16 v2, 0x9f

    aput-byte v4, v0, v2

    const/16 v2, 0xa0

    aput-byte v4, v0, v2

    const/16 v2, 0xa1

    aput-byte v4, v0, v2

    const/16 v2, 0xa2

    aput-byte v4, v0, v2

    const/16 v2, 0xa3

    aput-byte v4, v0, v2

    const/16 v2, 0xa4

    aput-byte v4, v0, v2

    const/16 v2, 0xa5

    aput-byte v4, v0, v2

    const/16 v2, 0xa6

    .line 265
    aput-byte v4, v0, v2

    const/16 v2, 0xa7

    aput-byte v4, v0, v2

    const/16 v2, 0xa8

    aput-byte v4, v0, v2

    const/16 v2, 0xa9

    aput-byte v4, v0, v2

    const/16 v2, 0xaa

    aput-byte v4, v0, v2

    const/16 v2, 0xab

    aput-byte v4, v0, v2

    const/16 v2, 0xac

    aput-byte v4, v0, v2

    const/16 v2, 0xad

    aput-byte v4, v0, v2

    const/16 v2, 0xae

    aput-byte v4, v0, v2

    const/16 v2, 0xaf

    aput-byte v4, v0, v2

    const/16 v2, 0xb0

    aput-byte v4, v0, v2

    const/16 v2, 0xb1

    aput-byte v4, v0, v2

    const/16 v2, 0xb2

    aput-byte v4, v0, v2

    const/16 v2, 0xb3

    .line 266
    aput-byte v4, v0, v2

    const/16 v2, 0xb4

    aput-byte v4, v0, v2

    const/16 v2, 0xb5

    aput-byte v4, v0, v2

    const/16 v2, 0xb6

    aput-byte v4, v0, v2

    const/16 v2, 0xb7

    aput-byte v4, v0, v2

    const/16 v2, 0xb8

    aput-byte v4, v0, v2

    const/16 v2, 0xb9

    aput-byte v4, v0, v2

    const/16 v2, 0xba

    aput-byte v4, v0, v2

    const/16 v2, 0xbb

    aput-byte v4, v0, v2

    const/16 v2, 0xbc

    aput-byte v4, v0, v2

    const/16 v2, 0xbd

    aput-byte v4, v0, v2

    const/16 v2, 0xbe

    aput-byte v4, v0, v2

    const/16 v2, 0xbf

    aput-byte v4, v0, v2

    const/16 v2, 0xc0

    .line 267
    aput-byte v4, v0, v2

    const/16 v2, 0xc1

    aput-byte v4, v0, v2

    const/16 v2, 0xc2

    aput-byte v4, v0, v2

    const/16 v2, 0xc3

    aput-byte v4, v0, v2

    const/16 v2, 0xc4

    aput-byte v4, v0, v2

    const/16 v2, 0xc5

    aput-byte v4, v0, v2

    const/16 v2, 0xc6

    aput-byte v4, v0, v2

    const/16 v2, 0xc7

    aput-byte v4, v0, v2

    const/16 v2, 0xc8

    aput-byte v4, v0, v2

    const/16 v2, 0xc9

    aput-byte v4, v0, v2

    const/16 v2, 0xca

    aput-byte v4, v0, v2

    const/16 v2, 0xcb

    aput-byte v4, v0, v2

    const/16 v2, 0xcc

    aput-byte v4, v0, v2

    const/16 v2, 0xcd

    .line 268
    aput-byte v4, v0, v2

    const/16 v2, 0xce

    aput-byte v4, v0, v2

    const/16 v2, 0xcf

    aput-byte v4, v0, v2

    const/16 v2, 0xd0

    aput-byte v4, v0, v2

    const/16 v2, 0xd1

    aput-byte v4, v0, v2

    const/16 v2, 0xd2

    aput-byte v4, v0, v2

    const/16 v2, 0xd3

    aput-byte v4, v0, v2

    const/16 v2, 0xd4

    aput-byte v4, v0, v2

    const/16 v2, 0xd5

    aput-byte v4, v0, v2

    const/16 v2, 0xd6

    aput-byte v4, v0, v2

    const/16 v2, 0xd7

    aput-byte v4, v0, v2

    const/16 v2, 0xd8

    aput-byte v4, v0, v2

    const/16 v2, 0xd9

    aput-byte v4, v0, v2

    const/16 v2, 0xda

    .line 269
    aput-byte v4, v0, v2

    const/16 v2, 0xdb

    aput-byte v4, v0, v2

    const/16 v2, 0xdc

    aput-byte v4, v0, v2

    const/16 v2, 0xdd

    aput-byte v4, v0, v2

    const/16 v2, 0xde

    aput-byte v4, v0, v2

    const/16 v2, 0xdf

    aput-byte v4, v0, v2

    const/16 v2, 0xe0

    aput-byte v4, v0, v2

    const/16 v2, 0xe1

    aput-byte v4, v0, v2

    const/16 v2, 0xe2

    aput-byte v4, v0, v2

    const/16 v2, 0xe3

    aput-byte v4, v0, v2

    const/16 v2, 0xe4

    aput-byte v4, v0, v2

    const/16 v2, 0xe5

    aput-byte v4, v0, v2

    const/16 v2, 0xe6

    aput-byte v4, v0, v2

    const/16 v2, 0xe7

    .line 270
    aput-byte v4, v0, v2

    const/16 v2, 0xe8

    aput-byte v4, v0, v2

    const/16 v2, 0xe9

    aput-byte v4, v0, v2

    const/16 v2, 0xea

    aput-byte v4, v0, v2

    const/16 v2, 0xeb

    aput-byte v4, v0, v2

    const/16 v2, 0xec

    aput-byte v4, v0, v2

    const/16 v2, 0xed

    aput-byte v4, v0, v2

    const/16 v2, 0xee

    aput-byte v4, v0, v2

    const/16 v2, 0xef

    aput-byte v4, v0, v2

    const/16 v2, 0xf0

    aput-byte v4, v0, v2

    const/16 v2, 0xf1

    aput-byte v4, v0, v2

    const/16 v2, 0xf2

    aput-byte v4, v0, v2

    const/16 v2, 0xf3

    aput-byte v4, v0, v2

    const/16 v2, 0xf4

    .line 271
    aput-byte v4, v0, v2

    const/16 v2, 0xf5

    aput-byte v4, v0, v2

    const/16 v2, 0xf6

    aput-byte v4, v0, v2

    const/16 v2, 0xf7

    aput-byte v4, v0, v2

    const/16 v2, 0xf8

    aput-byte v4, v0, v2

    const/16 v2, 0xf9

    aput-byte v4, v0, v2

    const/16 v2, 0xfa

    aput-byte v4, v0, v2

    const/16 v2, 0xfb

    aput-byte v4, v0, v2

    const/16 v2, 0xfc

    aput-byte v4, v0, v2

    const/16 v2, 0xfd

    aput-byte v4, v0, v2

    const/16 v2, 0xfe

    aput-byte v4, v0, v2

    const/16 v2, 0xff

    aput-byte v4, v0, v2

    .line 240
    sput-object v0, Lcom/mobclix/android/sdk/Base64;->_STANDARD_DECODABET:[B

    .line 282
    const/16 v0, 0x40

    #v0=(PosByte);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    fill-array-data v0, :array_1

    sput-object v0, Lcom/mobclix/android/sdk/Base64;->_URL_SAFE_ALPHABET:[B

    .line 298
    const/16 v0, 0x100

    #v0=(PosShort);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    const/4 v2, 0x0

    .line 299
    #v2=(Null);
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    #v2=(PosByte);
    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 300
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 301
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 302
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 303
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 304
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 305
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 306
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 307
    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 308
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    .line 309
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2e

    .line 310
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 311
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 312
    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 313
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 314
    const/4 v3, -0x1

    #v3=(Byte);
    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 315
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x42

    .line 316
    aput-byte v1, v0, v2

    const/16 v2, 0x43

    aput-byte v6, v0, v2

    const/16 v2, 0x44

    aput-byte v7, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

    #v3=(PosByte);
    aput-byte v3, v0, v2

    const/16 v2, 0x46

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x47

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x48

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0xb

    aput-byte v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0xd

    aput-byte v3, v0, v2

    const/16 v2, 0x4f

    .line 317
    const/16 v3, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x15

    aput-byte v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x16

    aput-byte v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x17

    aput-byte v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x18

    aput-byte v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x19

    aput-byte v3, v0, v2

    const/16 v2, 0x5b

    .line 318
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    .line 319
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x60

    .line 320
    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 321
    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 322
    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 323
    aput-byte v4, v0, v2

    const/16 v2, 0x7c

    aput-byte v4, v0, v2

    const/16 v2, 0x7d

    aput-byte v4, v0, v2

    const/16 v2, 0x7e

    aput-byte v4, v0, v2

    const/16 v2, 0x7f

    aput-byte v4, v0, v2

    const/16 v2, 0x80

    .line 324
    #v2=(PosShort);
    aput-byte v4, v0, v2

    const/16 v2, 0x81

    aput-byte v4, v0, v2

    const/16 v2, 0x82

    aput-byte v4, v0, v2

    const/16 v2, 0x83

    aput-byte v4, v0, v2

    const/16 v2, 0x84

    aput-byte v4, v0, v2

    const/16 v2, 0x85

    aput-byte v4, v0, v2

    const/16 v2, 0x86

    aput-byte v4, v0, v2

    const/16 v2, 0x87

    aput-byte v4, v0, v2

    const/16 v2, 0x88

    aput-byte v4, v0, v2

    const/16 v2, 0x89

    aput-byte v4, v0, v2

    const/16 v2, 0x8a

    aput-byte v4, v0, v2

    const/16 v2, 0x8b

    aput-byte v4, v0, v2

    const/16 v2, 0x8c

    .line 325
    aput-byte v4, v0, v2

    const/16 v2, 0x8d

    aput-byte v4, v0, v2

    const/16 v2, 0x8e

    aput-byte v4, v0, v2

    const/16 v2, 0x8f

    aput-byte v4, v0, v2

    const/16 v2, 0x90

    aput-byte v4, v0, v2

    const/16 v2, 0x91

    aput-byte v4, v0, v2

    const/16 v2, 0x92

    aput-byte v4, v0, v2

    const/16 v2, 0x93

    aput-byte v4, v0, v2

    const/16 v2, 0x94

    aput-byte v4, v0, v2

    const/16 v2, 0x95

    aput-byte v4, v0, v2

    const/16 v2, 0x96

    aput-byte v4, v0, v2

    const/16 v2, 0x97

    aput-byte v4, v0, v2

    const/16 v2, 0x98

    aput-byte v4, v0, v2

    const/16 v2, 0x99

    .line 326
    aput-byte v4, v0, v2

    const/16 v2, 0x9a

    aput-byte v4, v0, v2

    const/16 v2, 0x9b

    aput-byte v4, v0, v2

    const/16 v2, 0x9c

    aput-byte v4, v0, v2

    const/16 v2, 0x9d

    aput-byte v4, v0, v2

    const/16 v2, 0x9e

    aput-byte v4, v0, v2

    const/16 v2, 0x9f

    aput-byte v4, v0, v2

    const/16 v2, 0xa0

    aput-byte v4, v0, v2

    const/16 v2, 0xa1

    aput-byte v4, v0, v2

    const/16 v2, 0xa2

    aput-byte v4, v0, v2

    const/16 v2, 0xa3

    aput-byte v4, v0, v2

    const/16 v2, 0xa4

    aput-byte v4, v0, v2

    const/16 v2, 0xa5

    aput-byte v4, v0, v2

    const/16 v2, 0xa6

    .line 327
    aput-byte v4, v0, v2

    const/16 v2, 0xa7

    aput-byte v4, v0, v2

    const/16 v2, 0xa8

    aput-byte v4, v0, v2

    const/16 v2, 0xa9

    aput-byte v4, v0, v2

    const/16 v2, 0xaa

    aput-byte v4, v0, v2

    const/16 v2, 0xab

    aput-byte v4, v0, v2

    const/16 v2, 0xac

    aput-byte v4, v0, v2

    const/16 v2, 0xad

    aput-byte v4, v0, v2

    const/16 v2, 0xae

    aput-byte v4, v0, v2

    const/16 v2, 0xaf

    aput-byte v4, v0, v2

    const/16 v2, 0xb0

    aput-byte v4, v0, v2

    const/16 v2, 0xb1

    aput-byte v4, v0, v2

    const/16 v2, 0xb2

    aput-byte v4, v0, v2

    const/16 v2, 0xb3

    .line 328
    aput-byte v4, v0, v2

    const/16 v2, 0xb4

    aput-byte v4, v0, v2

    const/16 v2, 0xb5

    aput-byte v4, v0, v2

    const/16 v2, 0xb6

    aput-byte v4, v0, v2

    const/16 v2, 0xb7

    aput-byte v4, v0, v2

    const/16 v2, 0xb8

    aput-byte v4, v0, v2

    const/16 v2, 0xb9

    aput-byte v4, v0, v2

    const/16 v2, 0xba

    aput-byte v4, v0, v2

    const/16 v2, 0xbb

    aput-byte v4, v0, v2

    const/16 v2, 0xbc

    aput-byte v4, v0, v2

    const/16 v2, 0xbd

    aput-byte v4, v0, v2

    const/16 v2, 0xbe

    aput-byte v4, v0, v2

    const/16 v2, 0xbf

    aput-byte v4, v0, v2

    const/16 v2, 0xc0

    .line 329
    aput-byte v4, v0, v2

    const/16 v2, 0xc1

    aput-byte v4, v0, v2

    const/16 v2, 0xc2

    aput-byte v4, v0, v2

    const/16 v2, 0xc3

    aput-byte v4, v0, v2

    const/16 v2, 0xc4

    aput-byte v4, v0, v2

    const/16 v2, 0xc5

    aput-byte v4, v0, v2

    const/16 v2, 0xc6

    aput-byte v4, v0, v2

    const/16 v2, 0xc7

    aput-byte v4, v0, v2

    const/16 v2, 0xc8

    aput-byte v4, v0, v2

    const/16 v2, 0xc9

    aput-byte v4, v0, v2

    const/16 v2, 0xca

    aput-byte v4, v0, v2

    const/16 v2, 0xcb

    aput-byte v4, v0, v2

    const/16 v2, 0xcc

    aput-byte v4, v0, v2

    const/16 v2, 0xcd

    .line 330
    aput-byte v4, v0, v2

    const/16 v2, 0xce

    aput-byte v4, v0, v2

    const/16 v2, 0xcf

    aput-byte v4, v0, v2

    const/16 v2, 0xd0

    aput-byte v4, v0, v2

    const/16 v2, 0xd1

    aput-byte v4, v0, v2

    const/16 v2, 0xd2

    aput-byte v4, v0, v2

    const/16 v2, 0xd3

    aput-byte v4, v0, v2

    const/16 v2, 0xd4

    aput-byte v4, v0, v2

    const/16 v2, 0xd5

    aput-byte v4, v0, v2

    const/16 v2, 0xd6

    aput-byte v4, v0, v2

    const/16 v2, 0xd7

    aput-byte v4, v0, v2

    const/16 v2, 0xd8

    aput-byte v4, v0, v2

    const/16 v2, 0xd9

    aput-byte v4, v0, v2

    const/16 v2, 0xda

    .line 331
    aput-byte v4, v0, v2

    const/16 v2, 0xdb

    aput-byte v4, v0, v2

    const/16 v2, 0xdc

    aput-byte v4, v0, v2

    const/16 v2, 0xdd

    aput-byte v4, v0, v2

    const/16 v2, 0xde

    aput-byte v4, v0, v2

    const/16 v2, 0xdf

    aput-byte v4, v0, v2

    const/16 v2, 0xe0

    aput-byte v4, v0, v2

    const/16 v2, 0xe1

    aput-byte v4, v0, v2

    const/16 v2, 0xe2

    aput-byte v4, v0, v2

    const/16 v2, 0xe3

    aput-byte v4, v0, v2

    const/16 v2, 0xe4

    aput-byte v4, v0, v2

    const/16 v2, 0xe5

    aput-byte v4, v0, v2

    const/16 v2, 0xe6

    aput-byte v4, v0, v2

    const/16 v2, 0xe7

    .line 332
    aput-byte v4, v0, v2

    const/16 v2, 0xe8

    aput-byte v4, v0, v2

    const/16 v2, 0xe9

    aput-byte v4, v0, v2

    const/16 v2, 0xea

    aput-byte v4, v0, v2

    const/16 v2, 0xeb

    aput-byte v4, v0, v2

    const/16 v2, 0xec

    aput-byte v4, v0, v2

    const/16 v2, 0xed

    aput-byte v4, v0, v2

    const/16 v2, 0xee

    aput-byte v4, v0, v2

    const/16 v2, 0xef

    aput-byte v4, v0, v2

    const/16 v2, 0xf0

    aput-byte v4, v0, v2

    const/16 v2, 0xf1

    aput-byte v4, v0, v2

    const/16 v2, 0xf2

    aput-byte v4, v0, v2

    const/16 v2, 0xf3

    aput-byte v4, v0, v2

    const/16 v2, 0xf4

    .line 333
    aput-byte v4, v0, v2

    const/16 v2, 0xf5

    aput-byte v4, v0, v2

    const/16 v2, 0xf6

    aput-byte v4, v0, v2

    const/16 v2, 0xf7

    aput-byte v4, v0, v2

    const/16 v2, 0xf8

    aput-byte v4, v0, v2

    const/16 v2, 0xf9

    aput-byte v4, v0, v2

    const/16 v2, 0xfa

    aput-byte v4, v0, v2

    const/16 v2, 0xfb

    aput-byte v4, v0, v2

    const/16 v2, 0xfc

    aput-byte v4, v0, v2

    const/16 v2, 0xfd

    aput-byte v4, v0, v2

    const/16 v2, 0xfe

    aput-byte v4, v0, v2

    const/16 v2, 0xff

    aput-byte v4, v0, v2

    .line 298
    sput-object v0, Lcom/mobclix/android/sdk/Base64;->_URL_SAFE_DECODABET:[B

    .line 345
    const/16 v0, 0x40

    #v0=(PosByte);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    fill-array-data v0, :array_2

    sput-object v0, Lcom/mobclix/android/sdk/Base64;->_ORDERED_ALPHABET:[B

    .line 363
    const/16 v0, 0x101

    #v0=(PosShort);
    new-array v0, v0, [B

    #v0=(Reference,[B);
    const/4 v2, 0x0

    .line 364
    #v2=(Null);
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

    #v2=(PosByte);
    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    const/16 v2, 0x8

    aput-byte v4, v0, v2

    const/16 v2, 0x9

    .line 365
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 366
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 367
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 368
    aput-byte v4, v0, v2

    const/16 v2, 0xf

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    aput-byte v4, v0, v2

    const/16 v2, 0x13

    aput-byte v4, v0, v2

    const/16 v2, 0x14

    aput-byte v4, v0, v2

    const/16 v2, 0x15

    aput-byte v4, v0, v2

    const/16 v2, 0x16

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aput-byte v4, v0, v2

    const/16 v2, 0x18

    aput-byte v4, v0, v2

    const/16 v2, 0x19

    aput-byte v4, v0, v2

    const/16 v2, 0x1a

    aput-byte v4, v0, v2

    const/16 v2, 0x1b

    .line 369
    aput-byte v4, v0, v2

    const/16 v2, 0x1c

    aput-byte v4, v0, v2

    const/16 v2, 0x1d

    aput-byte v4, v0, v2

    const/16 v2, 0x1e

    aput-byte v4, v0, v2

    const/16 v2, 0x1f

    aput-byte v4, v0, v2

    const/16 v2, 0x20

    .line 370
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 371
    aput-byte v4, v0, v2

    const/16 v2, 0x22

    aput-byte v4, v0, v2

    const/16 v2, 0x23

    aput-byte v4, v0, v2

    const/16 v2, 0x24

    aput-byte v4, v0, v2

    const/16 v2, 0x25

    aput-byte v4, v0, v2

    const/16 v2, 0x26

    aput-byte v4, v0, v2

    const/16 v2, 0x27

    aput-byte v4, v0, v2

    const/16 v2, 0x28

    aput-byte v4, v0, v2

    const/16 v2, 0x29

    aput-byte v4, v0, v2

    const/16 v2, 0x2a

    aput-byte v4, v0, v2

    const/16 v2, 0x2b

    .line 372
    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 373
    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    .line 375
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 376
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 377
    aput-byte v1, v0, v2

    const/16 v1, 0x31

    #v1=(PosByte);
    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 378
    aput-byte v4, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    .line 379
    const/4 v2, -0x1

    #v2=(Byte);
    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 380
    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    .line 381
    const/16 v2, 0xb

    #v2=(PosByte);
    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    .line 382
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 383
    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    .line 384
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 385
    aput-byte v4, v0, v1

    const/16 v1, 0x61

    .line 386
    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 387
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 388
    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    const/16 v1, 0x80

    .line 389
    #v1=(PosShort);
    aput-byte v4, v0, v1

    const/16 v1, 0x81

    aput-byte v4, v0, v1

    const/16 v1, 0x82

    aput-byte v4, v0, v1

    const/16 v1, 0x83

    aput-byte v4, v0, v1

    const/16 v1, 0x84

    aput-byte v4, v0, v1

    const/16 v1, 0x85

    aput-byte v4, v0, v1

    const/16 v1, 0x86

    aput-byte v4, v0, v1

    const/16 v1, 0x87

    aput-byte v4, v0, v1

    const/16 v1, 0x88

    aput-byte v4, v0, v1

    const/16 v1, 0x89

    aput-byte v4, v0, v1

    const/16 v1, 0x8a

    aput-byte v4, v0, v1

    const/16 v1, 0x8b

    aput-byte v4, v0, v1

    const/16 v1, 0x8c

    aput-byte v4, v0, v1

    const/16 v1, 0x8d

    .line 390
    aput-byte v4, v0, v1

    const/16 v1, 0x8e

    aput-byte v4, v0, v1

    const/16 v1, 0x8f

    aput-byte v4, v0, v1

    const/16 v1, 0x90

    aput-byte v4, v0, v1

    const/16 v1, 0x91

    aput-byte v4, v0, v1

    const/16 v1, 0x92

    aput-byte v4, v0, v1

    const/16 v1, 0x93

    aput-byte v4, v0, v1

    const/16 v1, 0x94

    aput-byte v4, v0, v1

    const/16 v1, 0x95

    aput-byte v4, v0, v1

    const/16 v1, 0x96

    aput-byte v4, v0, v1

    const/16 v1, 0x97

    aput-byte v4, v0, v1

    const/16 v1, 0x98

    aput-byte v4, v0, v1

    const/16 v1, 0x99

    aput-byte v4, v0, v1

    const/16 v1, 0x9a

    .line 391
    aput-byte v4, v0, v1

    const/16 v1, 0x9b

    aput-byte v4, v0, v1

    const/16 v1, 0x9c

    aput-byte v4, v0, v1

    const/16 v1, 0x9d

    aput-byte v4, v0, v1

    const/16 v1, 0x9e

    aput-byte v4, v0, v1

    const/16 v1, 0x9f

    aput-byte v4, v0, v1

    const/16 v1, 0xa0

    aput-byte v4, v0, v1

    const/16 v1, 0xa1

    aput-byte v4, v0, v1

    const/16 v1, 0xa2

    aput-byte v4, v0, v1

    const/16 v1, 0xa3

    aput-byte v4, v0, v1

    const/16 v1, 0xa4

    aput-byte v4, v0, v1

    const/16 v1, 0xa5

    aput-byte v4, v0, v1

    const/16 v1, 0xa6

    aput-byte v4, v0, v1

    const/16 v1, 0xa7

    .line 392
    aput-byte v4, v0, v1

    const/16 v1, 0xa8

    aput-byte v4, v0, v1

    const/16 v1, 0xa9

    aput-byte v4, v0, v1

    const/16 v1, 0xaa

    aput-byte v4, v0, v1

    const/16 v1, 0xab

    aput-byte v4, v0, v1

    const/16 v1, 0xac

    aput-byte v4, v0, v1

    const/16 v1, 0xad

    aput-byte v4, v0, v1

    const/16 v1, 0xae

    aput-byte v4, v0, v1

    const/16 v1, 0xaf

    aput-byte v4, v0, v1

    const/16 v1, 0xb0

    aput-byte v4, v0, v1

    const/16 v1, 0xb1

    aput-byte v4, v0, v1

    const/16 v1, 0xb2

    aput-byte v4, v0, v1

    const/16 v1, 0xb3

    aput-byte v4, v0, v1

    const/16 v1, 0xb4

    .line 393
    aput-byte v4, v0, v1

    const/16 v1, 0xb5

    aput-byte v4, v0, v1

    const/16 v1, 0xb6

    aput-byte v4, v0, v1

    const/16 v1, 0xb7

    aput-byte v4, v0, v1

    const/16 v1, 0xb8

    aput-byte v4, v0, v1

    const/16 v1, 0xb9

    aput-byte v4, v0, v1

    const/16 v1, 0xba

    aput-byte v4, v0, v1

    const/16 v1, 0xbb

    aput-byte v4, v0, v1

    const/16 v1, 0xbc

    aput-byte v4, v0, v1

    const/16 v1, 0xbd

    aput-byte v4, v0, v1

    const/16 v1, 0xbe

    aput-byte v4, v0, v1

    const/16 v1, 0xbf

    aput-byte v4, v0, v1

    const/16 v1, 0xc0

    aput-byte v4, v0, v1

    const/16 v1, 0xc1

    .line 394
    aput-byte v4, v0, v1

    const/16 v1, 0xc2

    aput-byte v4, v0, v1

    const/16 v1, 0xc3

    aput-byte v4, v0, v1

    const/16 v1, 0xc4

    aput-byte v4, v0, v1

    const/16 v1, 0xc5

    aput-byte v4, v0, v1

    const/16 v1, 0xc6

    aput-byte v4, v0, v1

    const/16 v1, 0xc7

    aput-byte v4, v0, v1

    const/16 v1, 0xc8

    aput-byte v4, v0, v1

    const/16 v1, 0xc9

    aput-byte v4, v0, v1

    const/16 v1, 0xca

    aput-byte v4, v0, v1

    const/16 v1, 0xcb

    aput-byte v4, v0, v1

    const/16 v1, 0xcc

    aput-byte v4, v0, v1

    const/16 v1, 0xcd

    aput-byte v4, v0, v1

    const/16 v1, 0xce

    .line 395
    aput-byte v4, v0, v1

    const/16 v1, 0xcf

    aput-byte v4, v0, v1

    const/16 v1, 0xd0

    aput-byte v4, v0, v1

    const/16 v1, 0xd1

    aput-byte v4, v0, v1

    const/16 v1, 0xd2

    aput-byte v4, v0, v1

    const/16 v1, 0xd3

    aput-byte v4, v0, v1

    const/16 v1, 0xd4

    aput-byte v4, v0, v1

    const/16 v1, 0xd5

    aput-byte v4, v0, v1

    const/16 v1, 0xd6

    aput-byte v4, v0, v1

    const/16 v1, 0xd7

    aput-byte v4, v0, v1

    const/16 v1, 0xd8

    aput-byte v4, v0, v1

    const/16 v1, 0xd9

    aput-byte v4, v0, v1

    const/16 v1, 0xda

    aput-byte v4, v0, v1

    const/16 v1, 0xdb

    .line 396
    aput-byte v4, v0, v1

    const/16 v1, 0xdc

    aput-byte v4, v0, v1

    const/16 v1, 0xdd

    aput-byte v4, v0, v1

    const/16 v1, 0xde

    aput-byte v4, v0, v1

    const/16 v1, 0xdf

    aput-byte v4, v0, v1

    const/16 v1, 0xe0

    aput-byte v4, v0, v1

    const/16 v1, 0xe1

    aput-byte v4, v0, v1

    const/16 v1, 0xe2

    aput-byte v4, v0, v1

    const/16 v1, 0xe3

    aput-byte v4, v0, v1

    const/16 v1, 0xe4

    aput-byte v4, v0, v1

    const/16 v1, 0xe5

    aput-byte v4, v0, v1

    const/16 v1, 0xe6

    aput-byte v4, v0, v1

    const/16 v1, 0xe7

    aput-byte v4, v0, v1

    const/16 v1, 0xe8

    .line 397
    aput-byte v4, v0, v1

    const/16 v1, 0xe9

    aput-byte v4, v0, v1

    const/16 v1, 0xea

    aput-byte v4, v0, v1

    const/16 v1, 0xeb

    aput-byte v4, v0, v1

    const/16 v1, 0xec

    aput-byte v4, v0, v1

    const/16 v1, 0xed

    aput-byte v4, v0, v1

    const/16 v1, 0xee

    aput-byte v4, v0, v1

    const/16 v1, 0xef

    aput-byte v4, v0, v1

    const/16 v1, 0xf0

    aput-byte v4, v0, v1

    const/16 v1, 0xf1

    aput-byte v4, v0, v1

    const/16 v1, 0xf2

    aput-byte v4, v0, v1

    const/16 v1, 0xf3

    aput-byte v4, v0, v1

    const/16 v1, 0xf4

    aput-byte v4, v0, v1

    const/16 v1, 0xf5

    .line 398
    aput-byte v4, v0, v1

    const/16 v1, 0xf6

    aput-byte v4, v0, v1

    const/16 v1, 0xf7

    aput-byte v4, v0, v1

    const/16 v1, 0xf8

    aput-byte v4, v0, v1

    const/16 v1, 0xf9

    aput-byte v4, v0, v1

    const/16 v1, 0xfa

    aput-byte v4, v0, v1

    const/16 v1, 0xfb

    aput-byte v4, v0, v1

    const/16 v1, 0xfc

    aput-byte v4, v0, v1

    const/16 v1, 0xfd

    aput-byte v4, v0, v1

    const/16 v1, 0xfe

    aput-byte v4, v0, v1

    const/16 v1, 0xff

    aput-byte v4, v0, v1

    const/16 v1, 0x100

    aput-byte v4, v0, v1

    .line 363
    sput-object v0, Lcom/mobclix/android/sdk/Base64;->_ORDERED_DECODABET:[B

    return-void

    .line 150
    :cond_0
    #v0=(Boolean);v1=(One);v2=(Uninit);v3=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto/16 :goto_0

    .line 222
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 282
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 345
    :array_2
    .array-data 0x1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/Base64;);
    return-void
.end method

.method static synthetic access$0(I)[B
    .locals 1
    .parameter

    .prologue
    .line 430
    invoke-static {p0}, Lcom/mobclix/android/sdk/Base64;->getDecodabet(I)[B

    move-result-object v0

    #v0=(Reference,[B);
    return-object v0
.end method

.method static synthetic access$1([BII[BII)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-static/range {p0 .. p5}, Lcom/mobclix/android/sdk/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    #v0=(Reference,[B);
    return-object v0
.end method

.method static synthetic access$2([BI[BII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1030
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mobclix/android/sdk/Base64;->decode4to3([BI[BII)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$3([B[BII)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-static {p0, p1, p2, p3}, Lcom/mobclix/android/sdk/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    #v0=(Reference,[B);
    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, v0}, Lcom/mobclix/android/sdk/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    #v0=(Reference,[B);
    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 17
    .parameter "s"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1242
    if-nez p0, :cond_0

    .line 1243
    new-instance v14, Ljava/lang/NullPointerException;

    #v14=(UninitRef,Ljava/lang/NullPointerException;);
    const-string v15, "Input string was null."

    #v15=(Reference,Ljava/lang/String;);
    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v14=(Reference,Ljava/lang/NullPointerException;);
    throw v14

    .line 1248
    :cond_0
    :try_start_0
    #v14=(Uninit);v15=(Uninit);
    const-string v14, "US-ASCII"

    #v14=(Reference,Ljava/lang/String;);
    move-object/from16 v0, p0

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1256
    .local v6, bytes:[B
    :goto_0
    #v0=(Conflicted);v6=(Reference,[B);v13=(Conflicted);v14=(Conflicted);
    const/4 v14, 0x0

    #v14=(Null);
    array-length v15, v6

    #v15=(Integer);
    move/from16 v0, p1

    #v0=(Integer);
    invoke-static {v6, v14, v15, v0}, Lcom/mobclix/android/sdk/Base64;->decode([BIII)[B

    move-result-object v6

    .line 1260
    and-int/lit8 v14, p1, 0x4

    #v14=(Integer);
    if-eqz v14, :cond_2

    const/4 v7, 0x1

    .line 1261
    .local v7, dontGunzip:Z
    :goto_1
    #v7=(Boolean);
    if-eqz v6, :cond_1

    array-length v14, v6

    const/4 v15, 0x4

    #v15=(PosByte);
    if-lt v14, v15, :cond_1

    if-nez v7, :cond_1

    .line 1263
    const/4 v14, 0x0

    #v14=(Null);
    aget-byte v14, v6, v14

    #v14=(Byte);
    and-int/lit16 v14, v14, 0xff

    #v14=(Integer);
    const/4 v15, 0x1

    #v15=(One);
    aget-byte v15, v6, v15

    #v15=(Byte);
    shl-int/lit8 v15, v15, 0x8

    #v15=(Integer);
    const v16, 0xff00

    #v16=(Char);
    and-int v15, v15, v16

    or-int v11, v14, v15

    .line 1264
    .local v11, head:I
    #v11=(Integer);
    const v14, 0x8b1f

    #v14=(Char);
    if-ne v14, v11, :cond_1

    .line 1265
    const/4 v1, 0x0

    .line 1266
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    #v1=(Null);
    const/4 v9, 0x0

    .line 1267
    .local v9, gzis:Ljava/util/zip/GZIPInputStream;
    #v9=(Null);
    const/4 v3, 0x0

    .line 1268
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    #v3=(Null);
    const/16 v14, 0x800

    #v14=(PosShort);
    new-array v5, v14, [B

    .line 1269
    .local v5, buffer:[B
    #v5=(Reference,[B);
    const/4 v12, 0x0

    .line 1272
    .local v12, length:I
    :try_start_1
    #v12=(Null);
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #v4=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 1273
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    #v4=(Reference,Ljava/io/ByteArrayOutputStream;);
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #v2=(UninitRef,Ljava/io/ByteArrayInputStream;);
    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 1274
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .local v2, bais:Ljava/io/ByteArrayInputStream;
    :try_start_3
    #v2=(Reference,Ljava/io/ByteArrayInputStream;);
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    #v10=(UninitRef,Ljava/util/zip/GZIPInputStream;);
    invoke-direct {v10, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 1276
    .end local v9           #gzis:Ljava/util/zip/GZIPInputStream;
    .local v10, gzis:Ljava/util/zip/GZIPInputStream;
    :goto_2
    :try_start_4
    #v10=(Reference,Ljava/util/zip/GZIPInputStream;);v12=(Integer);
    invoke-virtual {v10, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v12

    if-gez v12, :cond_3

    .line 1281
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v6

    .line 1289
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1290
    :goto_3
    :try_start_6
    #v14=(Conflicted);
    invoke-virtual {v10}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 1291
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 1297
    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #buffer:[B
    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .end local v11           #head:I
    .end local v12           #length:I
    :cond_1
    :goto_5
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v16=(Conflicted);
    return-object v6

    .line 1250
    .end local v6           #bytes:[B
    .end local v7           #dontGunzip:Z
    :catch_0
    #v0=(Conflicted);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v15=(Uninit);v16=(Uninit);
    move-exception v13

    .line 1251
    .local v13, uee:Ljava/io/UnsupportedEncodingException;
    #v13=(Reference,Ljava/io/UnsupportedEncodingException;);
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .restart local v6       #bytes:[B
    #v6=(Reference,[B);
    goto :goto_0

    .line 1260
    .end local v13           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_2
    #v0=(Integer);v13=(Conflicted);v14=(Integer);v15=(Integer);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_1

    .line 1277
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buffer:[B
    .restart local v7       #dontGunzip:Z
    .restart local v10       #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v11       #head:I
    .restart local v12       #length:I
    :cond_3
    #v1=(Null);v2=(Reference,Ljava/io/ByteArrayInputStream;);v3=(Null);v4=(Reference,Ljava/io/ByteArrayOutputStream;);v5=(Reference,[B);v7=(Boolean);v9=(Null);v10=(Reference,Ljava/util/zip/GZIPInputStream;);v11=(Integer);v12=(Integer);v14=(PosShort);v16=(Char);
    const/4 v14, 0x0

    :try_start_8
    #v14=(Null);
    invoke-virtual {v4, v5, v14, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 1284
    :catch_1
    #v14=(PosShort);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    #v3=(Reference,Ljava/io/ByteArrayOutputStream;);
    move-object v9, v10

    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v9       #gzis:Ljava/util/zip/GZIPInputStream;
    #v9=(Reference,Ljava/util/zip/GZIPInputStream;);
    move-object v1, v2

    .line 1285
    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .local v8, e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    #v1=(Reference,Ljava/io/ByteArrayInputStream;);v2=(Conflicted);v4=(Conflicted);v10=(Conflicted);
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1289
    :try_start_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 1290
    :goto_7
    :try_start_b
    #v14=(Conflicted);
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1291
    :goto_8
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    :catch_2
    move-exception v14

    #v14=(Reference,Ljava/lang/Exception;);
    goto :goto_5

    .line 1288
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    #v8=(Conflicted);v14=(PosShort);
    move-exception v14

    .line 1289
    :goto_9
    :try_start_d
    #v14=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 1290
    :goto_a
    :try_start_e
    #v15=(Conflicted);
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1291
    :goto_b
    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 1292
    :goto_c
    throw v14

    .line 1289
    .restart local v8       #e:Ljava/io/IOException;
    :catch_3
    #v8=(Reference,Ljava/io/IOException;);v14=(PosShort);v15=(Integer);
    move-exception v14

    #v14=(Reference,Ljava/lang/Exception;);
    goto :goto_7

    .line 1290
    :catch_4
    #v14=(Conflicted);
    move-exception v14

    #v14=(Reference,Ljava/lang/Exception;);
    goto :goto_8

    .line 1289
    .end local v8           #e:Ljava/io/IOException;
    :catch_5
    #v8=(Conflicted);
    move-exception v15

    #v15=(Reference,Ljava/lang/Exception;);
    goto :goto_a

    .line 1290
    :catch_6
    #v15=(Conflicted);
    move-exception v15

    #v15=(Reference,Ljava/lang/Exception;);
    goto :goto_b

    .line 1291
    :catch_7
    #v15=(Conflicted);
    move-exception v15

    #v15=(Reference,Ljava/lang/Exception;);
    goto :goto_c

    .line 1289
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #gzis:Ljava/util/zip/GZIPInputStream;
    :catch_8
    #v1=(Null);v2=(Reference,Ljava/io/ByteArrayInputStream;);v3=(Null);v4=(Reference,Ljava/io/ByteArrayOutputStream;);v8=(Uninit);v9=(Null);v10=(Reference,Ljava/util/zip/GZIPInputStream;);v14=(PosShort);v15=(Integer);
    move-exception v14

    #v14=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .line 1290
    :catch_9
    #v14=(Conflicted);
    move-exception v14

    #v14=(Reference,Ljava/lang/Exception;);
    goto :goto_4

    .line 1291
    :catch_a
    #v14=(Conflicted);
    move-exception v14

    #v14=(Reference,Ljava/lang/Exception;);
    goto :goto_5

    .line 1288
    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v9       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    #v2=(Conflicted);v10=(Uninit);v12=(Null);v14=(PosShort);
    move-exception v14

    #v14=(Reference,Ljava/lang/Throwable;);
    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    #v3=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_9

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    #v2=(Reference,Ljava/io/ByteArrayInputStream;);v3=(Null);v10=(Conflicted);v14=(PosShort);
    move-exception v14

    #v14=(Reference,Ljava/lang/Throwable;);
    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    #v3=(Reference,Ljava/io/ByteArrayOutputStream;);
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    #v1=(Reference,Ljava/io/ByteArrayInputStream;);
    goto :goto_9

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #gzis:Ljava/util/zip/GZIPInputStream;
    :catchall_3
    #v1=(Null);v3=(Null);v10=(Reference,Ljava/util/zip/GZIPInputStream;);v12=(Integer);v14=(PosShort);
    move-exception v14

    #v14=(Reference,Ljava/lang/Throwable;);
    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    #v3=(Reference,Ljava/io/ByteArrayOutputStream;);
    move-object v9, v10

    .end local v10           #gzis:Ljava/util/zip/GZIPInputStream;
    .restart local v9       #gzis:Ljava/util/zip/GZIPInputStream;
    #v9=(Reference,Ljava/util/zip/GZIPInputStream;);
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    #v1=(Reference,Ljava/io/ByteArrayInputStream;);
    goto :goto_9

    .line 1284
    :catch_b
    #v1=(Null);v2=(Uninit);v3=(Null);v4=(Conflicted);v9=(Null);v10=(Uninit);v12=(Null);v14=(PosShort);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    goto :goto_6

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_c
    #v2=(Conflicted);v4=(Reference,Ljava/io/ByteArrayOutputStream;);v8=(Uninit);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    #v3=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_6

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_d
    #v2=(Reference,Ljava/io/ByteArrayInputStream;);v3=(Null);v8=(Uninit);v10=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v3, v4

    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    #v3=(Reference,Ljava/io/ByteArrayOutputStream;);
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    #v1=(Reference,Ljava/io/ByteArrayInputStream;);
    goto :goto_6
.end method

.method public static decode([B)[B
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1120
    #v2=(Null);
    const/4 v0, 0x0

    #v0=(Null);
    check-cast v0, [B

    .line 1122
    .local v0, decoded:[B
    #v0=(Reference,[B);
    array-length v1, p0

    #v1=(Integer);
    invoke-static {p0, v2, v1, v2}, Lcom/mobclix/android/sdk/Base64;->decode([BIII)[B

    move-result-object v0

    .line 1126
    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 16
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    if-nez p0, :cond_0

    .line 1153
    new-instance v11, Ljava/lang/NullPointerException;

    #v11=(UninitRef,Ljava/lang/NullPointerException;);
    const-string v12, "Cannot decode null source array."

    #v12=(Reference,Ljava/lang/String;);
    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/NullPointerException;);
    throw v11

    .line 1155
    :cond_0
    #v11=(Uninit);v12=(Uninit);
    if-ltz p1, :cond_1

    add-int v11, p1, p2

    #v11=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,[B);
    array-length v12, v0

    #v12=(Integer);
    if-le v11, v12, :cond_2

    .line 1156
    :cond_1
    #v0=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 1157
    #v11=(UninitRef,Ljava/lang/IllegalArgumentException;);
    const-string v12, "Source array with length %d cannot have offset of %d and process %d bytes."

    #v12=(Reference,Ljava/lang/String;);
    const/4 v13, 0x3

    #v13=(PosByte);
    new-array v13, v13, [Ljava/lang/Object;

    #v13=(Reference,[Ljava/lang/Object;);
    const/4 v14, 0x0

    #v14=(Null);
    move-object/from16 v0, p0

    #v0=(Reference,[B);
    array-length v15, v0

    #v15=(Integer);
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    #v15=(Reference,Ljava/lang/Integer;);
    aput-object v15, v13, v14

    const/4 v14, 0x1

    #v14=(One);
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    #v14=(PosByte);
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1156
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v11

    .line 1160
    :cond_2
    #v11=(Integer);v12=(Integer);v13=(Uninit);v14=(Uninit);v15=(Uninit);
    if-nez p2, :cond_3

    .line 1161
    const/4 v11, 0x0

    #v11=(Null);
    new-array v7, v11, [B

    .line 1208
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Reference,[B);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-object v7

    .line 1162
    :cond_3
    #v0=(Reference,[B);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Integer);
    const/4 v11, 0x4

    #v11=(PosByte);
    move/from16 v0, p2

    #v0=(Integer);
    if-ge v0, v11, :cond_4

    .line 1163
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 1164
    #v11=(UninitRef,Ljava/lang/IllegalArgumentException;);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v13, "Base64-encoded string must have at least four characters, but length specified was "

    #v13=(Reference,Ljava/lang/String;);
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v12=(Reference,Ljava/lang/StringBuilder;);
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1163
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v11

    .line 1167
    :cond_4
    #v11=(PosByte);v12=(Integer);v13=(Uninit);
    invoke-static/range {p3 .. p3}, Lcom/mobclix/android/sdk/Base64;->getDecodabet(I)[B

    move-result-object v1

    .line 1169
    .local v1, DECODABET:[B
    #v1=(Reference,[B);
    mul-int/lit8 v11, p2, 0x3

    #v11=(Integer);
    div-int/lit8 v6, v11, 0x4

    .line 1170
    .local v6, len34:I
    #v6=(Integer);
    new-array v8, v6, [B

    .line 1171
    .local v8, outBuff:[B
    #v8=(Reference,[B);
    const/4 v9, 0x0

    .line 1173
    .local v9, outBuffPosn:I
    #v9=(Null);
    const/4 v11, 0x4

    #v11=(PosByte);
    new-array v2, v11, [B

    .line 1174
    .local v2, b4:[B
    #v2=(Reference,[B);
    const/4 v3, 0x0

    .line 1175
    .local v3, b4Posn:I
    #v3=(Null);
    const/4 v5, 0x0

    .line 1176
    .local v5, i:I
    #v5=(Null);
    const/4 v10, 0x0

    .line 1178
    .local v10, sbiDecode:B
    #v10=(Null);
    move/from16 v5, p1

    #v5=(Integer);
    move v4, v3

    .end local v3           #b4Posn:I
    .local v4, b4Posn:I
    :goto_1
    #v3=(Integer);v4=(Integer);v9=(Integer);v10=(Byte);v11=(Byte);
    add-int v11, p1, p2

    #v11=(Integer);
    if-lt v5, v11, :cond_6

    move v3, v4

    .line 1206
    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    :cond_5
    new-array v7, v9, [B

    .line 1207
    .local v7, out:[B
    #v7=(Reference,[B);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x0

    #v12=(Null);
    invoke-static {v8, v11, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1180
    .end local v3           #b4Posn:I
    .end local v7           #out:[B
    .restart local v4       #b4Posn:I
    :cond_6
    #v7=(Uninit);v11=(Integer);v12=(Integer);
    aget-byte v11, p0, v5

    #v11=(Byte);
    and-int/lit16 v11, v11, 0xff

    #v11=(Integer);
    aget-byte v10, v1, v11

    .line 1185
    const/4 v11, -0x5

    #v11=(Byte);
    if-lt v10, v11, :cond_8

    .line 1186
    const/4 v11, -0x1

    if-lt v10, v11, :cond_9

    .line 1187
    add-int/lit8 v3, v4, 0x1

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    aget-byte v11, p0, v5

    aput-byte v11, v2, v4

    .line 1188
    const/4 v11, 0x3

    #v11=(PosByte);
    if-le v3, v11, :cond_7

    .line 1189
    const/4 v11, 0x0

    #v11=(Null);
    move/from16 v0, p3

    invoke-static {v2, v11, v8, v9, v0}, Lcom/mobclix/android/sdk/Base64;->decode4to3([BI[BII)I

    move-result v11

    #v11=(Integer);
    add-int/2addr v9, v11

    .line 1190
    const/4 v3, 0x0

    .line 1193
    #v3=(Null);
    aget-byte v11, p0, v5

    #v11=(Byte);
    const/16 v12, 0x3d

    #v12=(PosByte);
    if-eq v11, v12, :cond_5

    .line 1178
    :cond_7
    :goto_2
    #v3=(Integer);v12=(Integer);
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #b4Posn:I
    .restart local v4       #b4Posn:I
    goto :goto_1

    .line 1201
    :cond_8
    new-instance v11, Ljava/io/IOException;

    .line 1202
    #v11=(UninitRef,Ljava/io/IOException;);
    const-string v12, "Bad Base64 input character decimal %d in array position %d"

    #v12=(Reference,Ljava/lang/String;);
    const/4 v13, 0x2

    #v13=(PosByte);
    new-array v13, v13, [Ljava/lang/Object;

    #v13=(Reference,[Ljava/lang/Object;);
    const/4 v14, 0x0

    #v14=(Null);
    aget-byte v15, p0, v5

    #v15=(Byte);
    and-int/lit16 v15, v15, 0xff

    #v15=(Integer);
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    #v15=(Reference,Ljava/lang/Integer;);
    aput-object v15, v13, v14

    const/4 v14, 0x1

    #v14=(One);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 1201
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v11=(Reference,Ljava/io/IOException;);
    throw v11

    :cond_9
    #v11=(Byte);v12=(Integer);v13=(Uninit);v14=(Uninit);v15=(Uninit);
    move v3, v4

    .end local v4           #b4Posn:I
    .restart local v3       #b4Posn:I
    goto :goto_2
.end method

.method private static decode4to3([BI[BII)I
    .locals 8
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v6, 0x3d

    #v6=(PosByte);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v2, 0x1

    .line 1035
    #v2=(One);
    if-nez p0, :cond_0

    .line 1036
    new-instance v2, Ljava/lang/NullPointerException;

    #v2=(UninitRef,Ljava/lang/NullPointerException;);
    const-string v3, "Source array was null."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/NullPointerException;);
    throw v2

    .line 1038
    :cond_0
    #v2=(One);v3=(PosByte);
    if-nez p2, :cond_1

    .line 1039
    new-instance v2, Ljava/lang/NullPointerException;

    #v2=(UninitRef,Ljava/lang/NullPointerException;);
    const-string v3, "Destination array was null."

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v2=(Reference,Ljava/lang/NullPointerException;);
    throw v2

    .line 1041
    :cond_1
    #v2=(One);v3=(PosByte);
    if-ltz p1, :cond_2

    add-int/lit8 v4, p1, 0x3

    #v4=(Integer);
    array-length v5, p0

    #v5=(Integer);
    if-lt v4, v5, :cond_3

    .line 1042
    :cond_2
    #v4=(Conflicted);v5=(Conflicted);
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 1043
    #v4=(UninitRef,Ljava/lang/IllegalArgumentException;);
    const-string v5, "Source array with length %d cannot have offset of %d and still process four bytes."

    #v5=(Reference,Ljava/lang/String;);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference,[Ljava/lang/Object;);
    array-length v6, p0

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    aput-object v6, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1042
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v4

    .line 1045
    :cond_3
    #v2=(One);v3=(PosByte);v4=(Integer);v5=(Integer);v6=(PosByte);
    if-ltz p3, :cond_4

    add-int/lit8 v4, p3, 0x2

    array-length v5, p2

    if-lt v4, v5, :cond_5

    .line 1046
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 1047
    #v4=(UninitRef,Ljava/lang/IllegalArgumentException;);
    const-string v5, "Destination array with length %d cannot have offset of %d and still store three bytes."

    #v5=(Reference,Ljava/lang/String;);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference,[Ljava/lang/Object;);
    array-length v6, p2

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    #v6=(Reference,Ljava/lang/Integer;);
    aput-object v6, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1046
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v4

    .line 1051
    :cond_5
    #v2=(One);v3=(PosByte);v4=(Integer);v5=(Integer);v6=(PosByte);
    invoke-static {p4}, Lcom/mobclix/android/sdk/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 1054
    .local v0, DECODABET:[B
    #v0=(Reference,[B);
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    #v4=(Byte);
    if-ne v4, v6, :cond_6

    .line 1058
    aget-byte v3, p0, p1

    #v3=(Byte);
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    #v3=(Integer);
    shl-int/lit8 v3, v3, 0x12

    .line 1059
    add-int/lit8 v4, p1, 0x1

    #v4=(Integer);
    aget-byte v4, p0, v4

    #v4=(Byte);
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0xc

    .line 1058
    or-int v1, v3, v4

    .line 1061
    .local v1, outBuff:I
    #v1=(Integer);
    ushr-int/lit8 v3, v1, 0x10

    #v3=(Char);
    int-to-byte v3, v3

    #v3=(Byte);
    aput-byte v3, p2, p3

    .line 1097
    :goto_0
    #v2=(PosByte);
    return v2

    .line 1066
    .end local v1           #outBuff:I
    :cond_6
    #v1=(Uninit);v2=(One);v3=(PosByte);v4=(Byte);
    add-int/lit8 v2, p1, 0x3

    #v2=(Integer);
    aget-byte v2, p0, v2

    #v2=(Byte);
    if-ne v2, v6, :cond_7

    .line 1071
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    #v2=(Integer);
    shl-int/lit8 v2, v2, 0x12

    .line 1072
    add-int/lit8 v4, p1, 0x1

    #v4=(Integer);
    aget-byte v4, p0, v4

    #v4=(Byte);
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0xc

    .line 1071
    or-int/2addr v2, v4

    .line 1073
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    #v4=(Byte);
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    shl-int/lit8 v4, v4, 0x6

    .line 1071
    or-int v1, v2, v4

    .line 1075
    .restart local v1       #outBuff:I
    #v1=(Integer);
    ushr-int/lit8 v2, v1, 0x10

    #v2=(Char);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, p2, p3

    .line 1076
    add-int/lit8 v2, p3, 0x1

    #v2=(Integer);
    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    #v4=(Byte);
    aput-byte v4, p2, v2

    move v2, v3

    .line 1077
    #v2=(PosByte);
    goto :goto_0

    .line 1087
    .end local v1           #outBuff:I
    :cond_7
    #v1=(Uninit);v2=(Byte);
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    #v2=(Integer);
    shl-int/lit8 v2, v2, 0x12

    .line 1088
    add-int/lit8 v3, p1, 0x1

    #v3=(Integer);
    aget-byte v3, p0, v3

    #v3=(Byte);
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    #v3=(Integer);
    shl-int/lit8 v3, v3, 0xc

    .line 1087
    or-int/2addr v2, v3

    .line 1089
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    #v3=(Byte);
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    #v3=(Integer);
    shl-int/lit8 v3, v3, 0x6

    .line 1087
    or-int/2addr v2, v3

    .line 1090
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    #v3=(Byte);
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 1087
    #v3=(Integer);
    or-int v1, v2, v3

    .line 1093
    .restart local v1       #outBuff:I
    #v1=(Integer);
    shr-int/lit8 v2, v1, 0x10

    #v2=(Short);
    int-to-byte v2, v2

    #v2=(Byte);
    aput-byte v2, p2, p3

    .line 1094
    add-int/lit8 v2, p3, 0x1

    #v2=(Integer);
    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    #v3=(Byte);
    aput-byte v3, p2, v2

    .line 1095
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 1097
    const/4 v2, 0x3

    #v2=(PosByte);
    goto :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    invoke-static {p0}, Lcom/mobclix/android/sdk/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1613
    .local v0, decoded:[B
    #v0=(Reference,[B);
    const/4 v2, 0x0

    .line 1615
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    #v2=(Null);
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1616
    #v3=(UninitRef,Ljava/io/BufferedOutputStream;);
    new-instance v4, Ljava/io/FileOutputStream;

    #v4=(UninitRef,Ljava/io/FileOutputStream;);
    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1615
    #v4=(Reference,Ljava/io/FileOutputStream;);
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    #v3=(Reference,Ljava/io/BufferedOutputStream;);
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1623
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1626
    :goto_0
    return-void

    .line 1619
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_0
    #v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    .line 1620
    .local v1, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    #v1=(Reference,Ljava/io/IOException;);v2=(Reference,Ljava/io/BufferedOutputStream;);
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1622
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    #v1=(Conflicted);
    move-exception v4

    .line 1623
    :goto_2
    :try_start_4
    #v4=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1625
    :goto_3
    #v5=(Conflicted);
    throw v4

    .line 1624
    :catch_1
    #v5=(Uninit);
    move-exception v5

    #v5=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_2
    #v1=(Uninit);v2=(Null);v3=(Reference,Ljava/io/BufferedOutputStream;);v5=(Uninit);
    move-exception v4

    goto :goto_0

    .line 1622
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    #v2=(Reference,Ljava/io/BufferedOutputStream;);
    goto :goto_2

    .line 1619
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    #v2=(Null);
    move-exception v1

    #v1=(Reference,Ljava/io/IOException;);
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    #v2=(Reference,Ljava/io/BufferedOutputStream;);
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 12
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1478
    #v3=(Null);
    check-cast v3, [B

    .line 1479
    .local v3, decodedData:[B
    #v3=(Reference,[B);
    const/4 v0, 0x0

    .line 1483
    .local v0, bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :try_start_0
    #v0=(Null);
    new-instance v5, Ljava/io/File;

    #v5=(UninitRef,Ljava/io/File;);
    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v5, file:Ljava/io/File;
    #v5=(Reference,Ljava/io/File;);
    const/4 v2, 0x0

    #v2=(Null);
    check-cast v2, [B

    .line 1485
    .local v2, buffer:[B
    #v2=(Reference,[B);
    const/4 v6, 0x0

    .line 1486
    .local v6, length:I
    #v6=(Null);
    const/4 v7, 0x0

    .line 1489
    .local v7, numBytes:I
    #v7=(Null);
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    const-wide/32 v10, 0x7fffffff

    #v10=(LongLo);v11=(LongHi);
    cmp-long v8, v8, v10

    #v8=(Byte);
    if-lez v8, :cond_0

    .line 1491
    new-instance v8, Ljava/io/IOException;

    #v8=(UninitRef,Ljava/io/IOException;);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v10, "File is too big for this convenience method ("

    #v10=(Reference,Ljava/lang/String;);
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v9=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    #v10=(LongLo);
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)."

    #v10=(Reference,Ljava/lang/String;);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v8=(Reference,Ljava/io/IOException;);
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v4

    .line 1511
    .local v4, e:Ljava/io/IOException;
    :goto_0
    :try_start_1
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);v4=(Reference,Ljava/io/IOException;);
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    #v4=(Conflicted);
    move-exception v8

    .line 1514
    :goto_1
    :try_start_2
    #v8=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1515
    :goto_2
    throw v8

    .line 1493
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :cond_0
    :try_start_3
    #v0=(Null);v1=(Uninit);v2=(Reference,[B);v4=(Uninit);v5=(Reference,Ljava/io/File;);v6=(Null);v7=(Null);v8=(Byte);v9=(LongHi);v10=(LongLo);v11=(LongHi);
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    #v8=(LongLo);
    long-to-int v8, v8

    #v8=(Integer);
    new-array v2, v8, [B

    .line 1496
    new-instance v1, Lcom/mobclix/android/sdk/Base64$InputStream;

    .line 1497
    #v1=(UninitRef,Lcom/mobclix/android/sdk/Base64$InputStream;);
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1498
    #v8=(UninitRef,Ljava/io/BufferedInputStream;);
    new-instance v9, Ljava/io/FileInputStream;

    #v9=(UninitRef,Ljava/io/FileInputStream;);
    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1497
    #v9=(Reference,Ljava/io/FileInputStream;);
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1498
    #v8=(Reference,Ljava/io/BufferedInputStream;);
    const/4 v9, 0x0

    .line 1496
    #v9=(Null);
    invoke-direct {v1, v8, v9}, Lcom/mobclix/android/sdk/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1501
    .end local v0           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .local v1, bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :goto_3
    #v1=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);v6=(Integer);v7=(Integer);v8=(Conflicted);
    const/16 v8, 0x1000

    :try_start_4
    #v8=(PosShort);
    invoke-virtual {v1, v2, v6, v8}, Lcom/mobclix/android/sdk/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_1

    .line 1506
    new-array v3, v6, [B

    .line 1507
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1514
    :try_start_5
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1517
    :goto_4
    #v8=(Reference,Ljava/lang/Exception;);
    return-object v3

    .line 1502
    :cond_1
    #v8=(PosShort);
    add-int/2addr v6, v7

    goto :goto_3

    .line 1514
    .end local v1           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :catch_1
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Reference,Ljava/lang/Throwable;);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v9

    #v9=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .end local v0           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v1       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_2
    #v0=(Null);v1=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);v2=(Reference,[B);v4=(Uninit);v5=(Reference,Ljava/io/File;);v6=(Integer);v7=(Integer);v8=(Null);v9=(Null);v10=(LongLo);v11=(LongHi);
    move-exception v8

    #v8=(Reference,Ljava/lang/Exception;);
    goto :goto_4

    .line 1513
    :catchall_1
    #v8=(PosShort);
    move-exception v8

    #v8=(Reference,Ljava/lang/Throwable;);
    move-object v0, v1

    .end local v1           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v0       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);
    goto :goto_1

    .line 1510
    .end local v0           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v1       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :catch_3
    #v0=(Null);v8=(PosShort);
    move-exception v4

    #v4=(Reference,Ljava/io/IOException;);
    move-object v0, v1

    .end local v1           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v0       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);
    goto :goto_0
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "dataToDecode"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1443
    const/4 v0, 0x0

    .line 1445
    .local v0, bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :try_start_0
    #v0=(Null);
    new-instance v1, Lcom/mobclix/android/sdk/Base64$OutputStream;

    .line 1446
    #v1=(UninitRef,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    new-instance v3, Ljava/io/FileOutputStream;

    #v3=(UninitRef,Ljava/io/FileOutputStream;);
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/io/FileOutputStream;);
    const/4 v4, 0x0

    .line 1445
    #v4=(Null);
    invoke-direct {v1, v3, v4}, Lcom/mobclix/android/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    .end local v0           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .local v1, bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :try_start_1
    #v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    const-string v3, "US-ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mobclix/android/sdk/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1453
    :try_start_2
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1456
    :goto_0
    return-void

    .line 1449
    .end local v1           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v0       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :catch_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    .line 1450
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Reference,Ljava/io/IOException;);
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1452
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    #v2=(Conflicted);
    move-exception v3

    .line 1453
    :goto_2
    :try_start_4
    #v3=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1454
    :goto_3
    throw v3

    .line 1453
    :catch_1
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .end local v0           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v1       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :catch_2
    #v0=(Null);v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Uninit);v4=(Null);
    move-exception v3

    goto :goto_0

    .line 1452
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v0       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    goto :goto_2

    .line 1449
    .end local v0           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v1       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :catch_3
    #v0=(Null);
    move-exception v2

    #v2=(Reference,Ljava/io/IOException;);
    move-object v0, v1

    .end local v1           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v0       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    goto :goto_1
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "encodedObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1316
    const/4 v0, 0x0

    #v0=(Null);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {p0, v0, v1}, Lcom/mobclix/android/sdk/Base64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference,Ljava/lang/Object;);
    return-object v0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 9
    .parameter "encodedObject"
    .parameter "options"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-static {p0, p1}, Lcom/mobclix/android/sdk/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1343
    .local v4, objBytes:[B
    #v4=(Reference,[B);
    const/4 v0, 0x0

    .line 1344
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    #v0=(Null);
    const/4 v5, 0x0

    .line 1345
    .local v5, ois:Ljava/io/ObjectInputStream;
    #v5=(Null);
    const/4 v3, 0x0

    .line 1348
    .local v3, obj:Ljava/lang/Object;
    :try_start_0
    #v3=(Null);
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #v1=(UninitRef,Ljava/io/ByteArrayInputStream;);
    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1351
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    #v1=(Reference,Ljava/io/ByteArrayInputStream;);
    if-nez p2, :cond_0

    .line 1352
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    #v6=(UninitRef,Ljava/io/ObjectInputStream;);
    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .local v6, ois:Ljava/io/ObjectInputStream;
    #v6=(Reference,Ljava/io/ObjectInputStream;);
    move-object v5, v6

    .line 1372
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :goto_0
    #v5=(Reference,Ljava/io/ObjectInputStream;);
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    .line 1381
    :try_start_2
    #v3=(Reference,Ljava/lang/Object;);
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1382
    :goto_1
    :try_start_3
    #v7=(Conflicted);
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1385
    :goto_2
    return-object v3

    .line 1358
    :cond_0
    :try_start_4
    #v3=(Null);v5=(Null);v6=(Uninit);v7=(Uninit);
    new-instance v6, Lcom/mobclix/android/sdk/Base64$1;

    #v6=(UninitRef,Lcom/mobclix/android/sdk/Base64$1;);
    invoke-direct {v6, v1, p2}, Lcom/mobclix/android/sdk/Base64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v6       #ois:Ljava/io/ObjectInputStream;
    #v6=(Reference,Lcom/mobclix/android/sdk/Base64$1;);
    move-object v5, v6

    .end local v6           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    #v5=(Reference,Lcom/mobclix/android/sdk/Base64$1;);
    goto :goto_0

    .line 1374
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    :catch_0
    #v1=(Conflicted);v5=(Null);v6=(Uninit);
    move-exception v2

    .line 1375
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    #v0=(Reference,Ljava/io/ByteArrayInputStream;);v2=(Reference,Ljava/io/IOException;);v5=(Reference,Ljava/io/ObjectInputStream;);v6=(Conflicted);
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1380
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    #v2=(Conflicted);
    move-exception v7

    .line 1381
    :goto_4
    :try_start_6
    #v7=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1382
    :goto_5
    :try_start_7
    #v8=(Conflicted);
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1383
    :goto_6
    throw v7

    .line 1377
    :catch_1
    #v0=(Null);v2=(Uninit);v5=(Null);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    move-exception v2

    .line 1378
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :goto_7
    :try_start_8
    #v0=(Reference,Ljava/io/ByteArrayInputStream;);v2=(Reference,Ljava/lang/ClassNotFoundException;);v5=(Reference,Ljava/io/ObjectInputStream;);v6=(Conflicted);
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1381
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    #v2=(Conflicted);v7=(Reference,Ljava/lang/Throwable;);
    move-exception v8

    #v8=(Reference,Ljava/lang/Exception;);
    goto :goto_5

    .line 1382
    :catch_3
    #v8=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/lang/Exception;);
    goto :goto_6

    .line 1381
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_4
    #v0=(Null);v1=(Reference,Ljava/io/ByteArrayInputStream;);v2=(Uninit);v3=(Reference,Ljava/lang/Object;);v6=(Reference,Ljava/io/ObjectInputStream;);v7=(Uninit);v8=(Uninit);
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 1382
    :catch_5
    #v7=(Conflicted);
    move-exception v7

    #v7=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 1380
    :catchall_1
    #v3=(Null);v6=(Conflicted);v7=(Uninit);
    move-exception v7

    #v7=(Reference,Ljava/lang/Throwable;);
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    #v0=(Reference,Ljava/io/ByteArrayInputStream;);
    goto :goto_4

    .line 1377
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_6
    #v0=(Null);v7=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/lang/ClassNotFoundException;);
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    #v0=(Reference,Ljava/io/ByteArrayInputStream;);
    goto :goto_7

    .line 1374
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_7
    #v0=(Null);v2=(Uninit);
    move-exception v2

    #v2=(Reference,Ljava/io/IOException;);
    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    #v0=(Reference,Ljava/io/ByteArrayInputStream;);
    goto :goto_3
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "raw"
    .parameter "encoded"

    .prologue
    const/4 v5, 0x3

    #v5=(PosByte);
    const/4 v4, 0x0

    .line 558
    #v4=(Null);
    new-array v1, v5, [B

    .line 559
    .local v1, raw3:[B
    #v1=(Reference,[B);
    const/4 v3, 0x4

    #v3=(PosByte);
    new-array v0, v3, [B

    .line 561
    .local v0, enc4:[B
    :goto_0
    #v0=(Reference,[B);v2=(Conflicted);v3=(Integer);
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 567
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    #v3=(Integer);
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 563
    .local v2, rem:I
    #v2=(Integer);
    invoke-virtual {p0, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 564
    invoke-static {v0, v1, v2, v4}, Lcom/mobclix/android/sdk/Base64;->encode3to4([B[BII)[B

    .line 565
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 8
    .parameter "raw"
    .parameter "encoded"

    .prologue
    const/4 v7, 0x4

    #v7=(PosByte);
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x0

    .line 582
    #v5=(Null);
    new-array v2, v6, [B

    .line 583
    .local v2, raw3:[B
    #v2=(Reference,[B);
    new-array v0, v7, [B

    .line 585
    .local v0, enc4:[B
    :cond_0
    #v0=(Reference,[B);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 593
    return-void

    .line 586
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    #v4=(Integer);
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 587
    .local v3, rem:I
    #v3=(Integer);
    invoke-virtual {p0, v2, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 588
    invoke-static {v0, v2, v3, v5}, Lcom/mobclix/android/sdk/Base64;->encode3to4([B[BII)[B

    .line 589
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);
    if-ge v1, v7, :cond_0

    .line 590
    aget-byte v4, v0, v1

    #v4=(Byte);
    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    int-to-char v4, v4

    #v4=(Char);
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static encode3to4([BII[BII)[B
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"
    .parameter "options"

    .prologue
    const/16 v5, 0x3d

    #v5=(PosByte);
    const/4 v2, 0x0

    .line 499
    #v2=(Null);
    invoke-static {p5}, Lcom/mobclix/android/sdk/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 512
    .local v0, ALPHABET:[B
    #v0=(Reference,[B);
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    #v3=(Byte);
    shl-int/lit8 v3, v3, 0x18

    #v3=(Integer);
    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    .line 513
    :goto_0
    #v3=(Conflicted);v4=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    #v3=(Integer);
    aget-byte v3, p0, v3

    #v3=(Byte);
    shl-int/lit8 v3, v3, 0x18

    #v3=(Integer);
    ushr-int/lit8 v3, v3, 0x10

    .line 512
    :goto_1
    #v3=(Char);
    or-int/2addr v3, v4

    .line 514
    #v3=(Integer);
    const/4 v4, 0x2

    #v4=(PosByte);
    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    #v2=(Integer);
    aget-byte v2, p0, v2

    #v2=(Byte);
    shl-int/lit8 v2, v2, 0x18

    #v2=(Integer);
    ushr-int/lit8 v2, v2, 0x18

    .line 512
    :cond_0
    #v2=(Char);
    or-int v1, v3, v2

    .line 516
    .local v1, inBuff:I
    #v1=(Integer);
    packed-switch p2, :pswitch_data_0

    .line 540
    :goto_2
    #v2=(Integer);
    return-object p3

    .end local v1           #inBuff:I
    :cond_1
    #v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);
    move v4, v2

    .line 512
    #v4=(Null);
    goto :goto_0

    :cond_2
    #v3=(One);v4=(Integer);
    move v3, v2

    .line 513
    #v3=(Null);
    goto :goto_1

    .line 519
    .restart local v1       #inBuff:I
    :pswitch_0
    #v1=(Integer);v2=(Char);v3=(Integer);v4=(PosByte);
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    #v2=(Byte);
    aput-byte v2, p3, p4

    .line 520
    add-int/lit8 v2, p4, 0x1

    #v2=(Integer);
    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    #v3=(Byte);
    aput-byte v3, p3, v2

    .line 521
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    #v3=(Integer);
    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    #v3=(Byte);
    aput-byte v3, p3, v2

    .line 522
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    #v3=(Integer);
    aget-byte v3, v0, v3

    #v3=(Byte);
    aput-byte v3, p3, v2

    goto :goto_2

    .line 526
    :pswitch_1
    #v2=(Char);v3=(Integer);
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    #v2=(Byte);
    aput-byte v2, p3, p4

    .line 527
    add-int/lit8 v2, p4, 0x1

    #v2=(Integer);
    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    #v3=(Byte);
    aput-byte v3, p3, v2

    .line 528
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    #v3=(Integer);
    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    #v3=(Byte);
    aput-byte v3, p3, v2

    .line 529
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 533
    :pswitch_2
    #v2=(Char);v3=(Integer);
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    #v2=(Byte);
    aput-byte v2, p3, p4

    .line 534
    add-int/lit8 v2, p4, 0x1

    #v2=(Integer);
    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    #v3=(Byte);
    aput-byte v3, p3, v2

    .line 535
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 536
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .parameter "b4"
    .parameter "threeBytes"
    .parameter "numSigBytes"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 467
    #v1=(Null);
    move-object v0, p1

    #v0=(Reference,[B);
    move v2, p2

    #v2=(Integer);
    move-object v3, p0

    #v3=(Reference,[B);
    move v4, v1

    #v4=(Null);
    move v5, p3

    #v5=(Integer);
    invoke-static/range {v0 .. v5}, Lcom/mobclix/android/sdk/Base64;->encode3to4([BII[BII)[B

    .line 468
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 5
    .parameter "source"

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, encoded:Ljava/lang/String;
    #v0=(Null);
    const/4 v2, 0x0

    :try_start_0
    #v2=(Null);
    array-length v3, p0

    #v3=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p0, v2, v3, v4}, Lcom/mobclix/android/sdk/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 724
    :cond_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    sget-boolean v2, Lcom/mobclix/android/sdk/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    #v2=(UninitRef,Ljava/lang/AssertionError;);
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #v2=(Reference,Ljava/lang/AssertionError;);
    throw v2

    .line 721
    :catch_0
    #v0=(Null);v1=(Uninit);v2=(Null);
    move-exception v1

    .line 722
    .local v1, ex:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    sget-boolean v2, Lcom/mobclix/android/sdk/Base64;->$assertionsDisabled:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    #v2=(UninitRef,Ljava/lang/AssertionError;);
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #v2=(Reference,Ljava/lang/AssertionError;);
    throw v2

    .line 725
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    const/4 v0, 0x0

    #v0=(Null);
    array-length v1, p0

    #v1=(Integer);
    invoke-static {p0, v0, v1, p1}, Lcom/mobclix/android/sdk/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, encoded:Ljava/lang/String;
    #v0=(Null);
    const/4 v2, 0x0

    :try_start_0
    #v2=(Null);
    invoke-static {p0, p1, p2, v2}, Lcom/mobclix/android/sdk/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 792
    :cond_0
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);v2=(Boolean);
    sget-boolean v2, Lcom/mobclix/android/sdk/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    #v2=(UninitRef,Ljava/lang/AssertionError;);
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #v2=(Reference,Ljava/lang/AssertionError;);
    throw v2

    .line 789
    :catch_0
    #v0=(Null);v1=(Uninit);v2=(Null);
    move-exception v1

    .line 790
    .local v1, ex:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    sget-boolean v2, Lcom/mobclix/android/sdk/Base64;->$assertionsDisabled:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    #v2=(UninitRef,Ljava/lang/AssertionError;);
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #v2=(Reference,Ljava/lang/AssertionError;);
    throw v2

    .line 793
    .end local v1           #ex:Ljava/io/IOException;
    :cond_1
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);v2=(Boolean);v3=(Uninit);
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {p0, p1, p2, p3}, Lcom/mobclix/android/sdk/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object v0

    .line 835
    .local v0, encoded:[B
    :try_start_0
    #v0=(Reference,[B);
    new-instance v2, Ljava/lang/String;

    #v2=(UninitRef,Ljava/lang/String;);
    const-string v3, "US-ASCII"

    #v3=(Reference,Ljava/lang/String;);
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    #v1=(Conflicted);v2=(Reference,Ljava/lang/String;);v3=(Conflicted);
    return-object v2

    .line 837
    :catch_0
    #v1=(Uninit);v2=(Conflicted);
    move-exception v1

    .line 838
    .local v1, uue:Ljava/io/UnsupportedEncodingException;
    #v1=(Reference,Ljava/io/UnsupportedEncodingException;);
    new-instance v2, Ljava/lang/String;

    #v2=(UninitRef,Ljava/lang/String;);
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    #v2=(Reference,Ljava/lang/String;);
    goto :goto_0
.end method

.method public static encodeBytesToBytes([B)[B
    .locals 5
    .parameter "source"

    .prologue
    .line 858
    const/4 v0, 0x0

    #v0=(Null);
    check-cast v0, [B

    .line 860
    .local v0, encoded:[B
    #v0=(Reference,[B);
    const/4 v2, 0x0

    :try_start_0
    #v2=(Null);
    array-length v3, p0

    #v3=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {p0, v2, v3, v4}, Lcom/mobclix/android/sdk/Base64;->encodeBytesToBytes([BIII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 864
    :cond_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return-object v0

    .line 861
    :catch_0
    #v1=(Uninit);v2=(Null);
    move-exception v1

    .line 862
    .local v1, ex:Ljava/io/IOException;
    #v1=(Reference,Ljava/io/IOException;);
    sget-boolean v2, Lcom/mobclix/android/sdk/Base64;->$assertionsDisabled:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    #v2=(UninitRef,Ljava/lang/AssertionError;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "IOExceptions only come from GZipping, which is turned off: "

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/StringBuilder;);
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #v2=(Reference,Ljava/lang/AssertionError;);
    throw v2
.end method

.method public static encodeBytesToBytes([BIII)[B
    .locals 23
    .parameter "source"
    .parameter "off"
    .parameter "len"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    if-nez p0, :cond_0

    .line 889
    new-instance v4, Ljava/lang/NullPointerException;

    #v4=(UninitRef,Ljava/lang/NullPointerException;);
    const-string v5, "Cannot serialize a null array."

    #v5=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/NullPointerException;);
    throw v4

    .line 892
    :cond_0
    #v4=(Uninit);v5=(Uninit);
    if-gez p1, :cond_1

    .line 893
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #v4=(UninitRef,Ljava/lang/IllegalArgumentException;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "Cannot have negative offset: "

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    move/from16 v0, p1

    #v0=(Integer);
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v4

    .line 896
    :cond_1
    #v0=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    if-gez p2, :cond_2

    .line 897
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #v4=(UninitRef,Ljava/lang/IllegalArgumentException;);
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v6, "Cannot have length offset: "

    #v6=(Reference,Ljava/lang/String;);
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v5=(Reference,Ljava/lang/StringBuilder;);
    move/from16 v0, p2

    #v0=(Integer);
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v4

    .line 900
    :cond_2
    #v0=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    add-int v4, p1, p2

    #v4=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference,[B);
    array-length v5, v0

    #v5=(Integer);
    if-le v4, v5, :cond_3

    .line 901
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 902
    #v4=(UninitRef,Ljava/lang/IllegalArgumentException;);
    const-string v5, "Cannot have offset of %d and length of %d with array of length %d"

    #v5=(Reference,Ljava/lang/String;);
    const/4 v6, 0x3

    #v6=(PosByte);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference,[Ljava/lang/Object;);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    #v22=(Reference,Ljava/lang/Integer;);
    aput-object v22, v6, v9

    const/4 v9, 0x1

    #v9=(One);
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v6, v9

    const/4 v9, 0x2

    #v9=(PosByte);
    move-object/from16 v0, p0

    array-length v0, v0

    #v0=(Integer);
    move/from16 v22, v0

    #v22=(Integer);
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    #v22=(Reference,Ljava/lang/Integer;);
    aput-object v22, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 901
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v4=(Reference,Ljava/lang/IllegalArgumentException;);
    throw v4

    .line 908
    :cond_3
    #v0=(Reference,[B);v4=(Integer);v5=(Integer);v6=(Uninit);v9=(Uninit);v22=(Uninit);
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_4

    .line 909
    const/4 v12, 0x0

    .line 910
    .local v12, baos:Ljava/io/ByteArrayOutputStream;
    #v12=(Null);
    const/16 v18, 0x0

    .line 911
    .local v18, gzos:Ljava/util/zip/GZIPOutputStream;
    #v18=(Null);
    const/4 v10, 0x0

    .line 915
    .local v10, b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :try_start_0
    #v10=(Null);
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    #v13=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .local v13, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    #v13=(Reference,Ljava/io/ByteArrayOutputStream;);
    new-instance v11, Lcom/mobclix/android/sdk/Base64$OutputStream;

    #v11=(UninitRef,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    or-int/lit8 v4, p3, 0x1

    invoke-direct {v11, v13, v4}, Lcom/mobclix/android/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 917
    .end local v10           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .local v11, b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :try_start_2
    #v11=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    #v19=(UninitRef,Ljava/util/zip/GZIPOutputStream;);
    move-object/from16 v0, v19

    #v0=(UninitRef,Ljava/util/zip/GZIPOutputStream;);
    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 919
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v19, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    #v0=(Reference,Ljava/util/zip/GZIPOutputStream;);v19=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    #v1=(Reference,[B);
    move/from16 v2, p1

    #v2=(Integer);
    move/from16 v3, p2

    #v3=(Integer);
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 920
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 928
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 929
    :goto_0
    :try_start_5
    #v4=(Conflicted);
    invoke-virtual {v11}, Lcom/mobclix/android/sdk/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 930
    :goto_1
    :try_start_6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 933
    :goto_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 988
    .end local v11           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Reference,[B);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    return-object v17

    .line 922
    .restart local v10       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_0
    #v0=(Reference,[B);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Null);v11=(Uninit);v12=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(Uninit);v20=(Uninit);v21=(Uninit);
    move-exception v8

    .line 925
    .local v8, e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v8=(Reference,Ljava/io/IOException;);v10=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v11=(Conflicted);v12=(Reference,Ljava/io/ByteArrayOutputStream;);v18=(Reference,Ljava/util/zip/GZIPOutputStream;);v19=(Conflicted);
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 927
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    #v8=(Conflicted);
    move-exception v4

    .line 928
    :goto_5
    :try_start_8
    #v4=(Reference,Ljava/lang/Throwable;);
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 929
    :goto_6
    :try_start_9
    #v5=(Conflicted);
    invoke-virtual {v10}, Lcom/mobclix/android/sdk/Base64$OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 930
    :goto_7
    :try_start_a
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 931
    :goto_8
    throw v4

    .line 938
    .end local v10           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    :cond_4
    #v0=(Reference,[B);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Integer);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v18=(Uninit);v19=(Uninit);
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_7

    const/4 v14, 0x1

    .line 947
    .local v14, breakLines:Z
    :goto_9
    #v14=(Boolean);
    div-int/lit8 v4, p2, 0x3

    mul-int/lit8 v5, v4, 0x4

    rem-int/lit8 v4, p2, 0x3

    if-lez v4, :cond_8

    const/4 v4, 0x4

    :goto_a
    #v4=(PosByte);
    add-int v16, v5, v4

    .line 948
    .local v16, encLen:I
    #v16=(Integer);
    if-eqz v14, :cond_5

    .line 949
    div-int/lit8 v4, v16, 0x4c

    #v4=(Integer);
    add-int v16, v16, v4

    .line 951
    :cond_5
    move/from16 v0, v16

    #v0=(Integer);
    new-array v7, v0, [B

    .line 954
    .local v7, outBuff:[B
    #v7=(Reference,[B);
    const/4 v15, 0x0

    .line 955
    .local v15, d:I
    #v15=(Null);
    const/4 v8, 0x0

    .line 956
    .local v8, e:I
    #v8=(Null);
    add-int/lit8 v20, p2, -0x2

    .line 957
    .local v20, len2:I
    #v20=(Integer);
    const/16 v21, 0x0

    .line 958
    .local v21, lineLength:I
    :goto_b
    #v4=(Conflicted);v6=(Conflicted);v8=(Integer);v9=(Conflicted);v15=(Integer);v21=(Integer);
    move/from16 v0, v20

    if-lt v15, v0, :cond_9

    .line 970
    move/from16 v0, p2

    if-ge v15, v0, :cond_6

    .line 971
    add-int v5, v15, p1

    sub-int v6, p2, v15

    #v6=(Integer);
    move-object/from16 v4, p0

    #v4=(Reference,[B);
    move/from16 v9, p3

    #v9=(Integer);
    invoke-static/range {v4 .. v9}, Lcom/mobclix/android/sdk/Base64;->encode3to4([BII[BII)[B

    .line 972
    add-int/lit8 v8, v8, 0x4

    .line 977
    :cond_6
    #v4=(Conflicted);v6=(Conflicted);v9=(Conflicted);
    array-length v4, v7

    #v4=(Integer);
    add-int/lit8 v4, v4, -0x1

    if-gt v8, v4, :cond_b

    .line 982
    new-array v0, v8, [B

    #v0=(Reference,[B);
    move-object/from16 v17, v0

    .line 983
    .local v17, finalOut:[B
    #v17=(Reference,[B);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v0, v17

    invoke-static {v7, v4, v0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 938
    .end local v7           #outBuff:[B
    .end local v8           #e:I
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v16           #encLen:I
    .end local v17           #finalOut:[B
    .end local v20           #len2:I
    .end local v21           #lineLength:I
    :cond_7
    #v4=(Integer);v5=(Integer);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v20=(Uninit);v21=(Uninit);
    const/4 v14, 0x0

    #v14=(Null);
    goto :goto_9

    .line 947
    .restart local v14       #breakLines:Z
    :cond_8
    #v14=(Boolean);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_a

    .line 959
    .restart local v7       #outBuff:[B
    .restart local v8       #e:I
    .restart local v15       #d:I
    .restart local v16       #encLen:I
    .restart local v20       #len2:I
    .restart local v21       #lineLength:I
    :cond_9
    #v0=(Integer);v4=(Conflicted);v6=(Conflicted);v7=(Reference,[B);v8=(Integer);v9=(Conflicted);v15=(Integer);v16=(Integer);v20=(Integer);v21=(Integer);
    add-int v5, v15, p1

    const/4 v6, 0x3

    #v6=(PosByte);
    move-object/from16 v4, p0

    #v4=(Reference,[B);
    move/from16 v9, p3

    #v9=(Integer);
    invoke-static/range {v4 .. v9}, Lcom/mobclix/android/sdk/Base64;->encode3to4([BII[BII)[B

    .line 961
    add-int/lit8 v21, v21, 0x4

    .line 962
    if-eqz v14, :cond_a

    const/16 v4, 0x4c

    #v4=(PosByte);
    move/from16 v0, v21

    if-lt v0, v4, :cond_a

    .line 964
    add-int/lit8 v4, v8, 0x4

    #v4=(Integer);
    const/16 v5, 0xa

    #v5=(PosByte);
    aput-byte v5, v7, v4

    .line 965
    add-int/lit8 v8, v8, 0x1

    .line 966
    const/16 v21, 0x0

    .line 958
    :cond_a
    #v4=(Conflicted);v5=(Integer);
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_b

    :cond_b
    #v4=(Integer);v6=(Conflicted);v9=(Conflicted);
    move-object/from16 v17, v7

    .line 988
    #v17=(Reference,[B);
    goto :goto_3

    .line 928
    .end local v7           #outBuff:[B
    .end local v8           #e:I
    .end local v14           #breakLines:Z
    .end local v15           #d:I
    .end local v16           #encLen:I
    .end local v20           #len2:I
    .end local v21           #lineLength:I
    .restart local v10       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference,Ljava/lang/Throwable;);v6=(Uninit);v7=(Uninit);v8=(Conflicted);v9=(Uninit);v10=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v11=(Conflicted);v12=(Reference,Ljava/io/ByteArrayOutputStream;);v13=(Conflicted);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Reference,Ljava/util/zip/GZIPOutputStream;);v19=(Conflicted);v20=(Uninit);v21=(Uninit);
    move-exception v5

    #v5=(Reference,Ljava/lang/Exception;);
    goto :goto_6

    .line 929
    :catch_2
    #v5=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Exception;);
    goto :goto_7

    .line 930
    :catch_3
    #v5=(Conflicted);
    move-exception v5

    #v5=(Reference,Ljava/lang/Exception;);
    goto :goto_8

    .line 928
    .end local v10           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_4
    #v0=(Reference,Ljava/util/zip/GZIPOutputStream;);v1=(Reference,[B);v2=(Integer);v3=(Integer);v4=(Integer);v5=(Integer);v8=(Uninit);v10=(Null);v11=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v12=(Null);v13=(Reference,Ljava/io/ByteArrayOutputStream;);v18=(Null);v19=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_0

    .line 929
    :catch_5
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_1

    .line 930
    :catch_6
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto/16 :goto_2

    .line 927
    .end local v11           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v10       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v11=(Conflicted);v19=(Uninit);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    #v12=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto/16 :goto_5

    .end local v10           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    #v0=(Conflicted);v4=(Integer);v11=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v12=(Null);v19=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    move-object v10, v11

    .end local v11           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v10=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    #v12=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto/16 :goto_5

    .end local v10           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    #v0=(Reference,Ljava/util/zip/GZIPOutputStream;);v1=(Reference,[B);v2=(Integer);v3=(Integer);v4=(Integer);v10=(Null);v12=(Null);v19=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-exception v4

    #v4=(Reference,Ljava/lang/Throwable;);
    move-object v10, v11

    .end local v11           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v10=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    #v18=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    #v12=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto/16 :goto_5

    .line 922
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_7
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Integer);v10=(Null);v11=(Conflicted);v12=(Null);v18=(Null);v19=(Uninit);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    #v12=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto/16 :goto_4

    .end local v10           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_8
    #v0=(Conflicted);v8=(Uninit);v11=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v12=(Null);v19=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v10, v11

    .end local v11           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v10=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    #v12=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto/16 :goto_4

    .end local v10           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .end local v12           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v11       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v13       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_9
    #v0=(Reference,Ljava/util/zip/GZIPOutputStream;);v1=(Reference,[B);v2=(Integer);v3=(Integer);v8=(Uninit);v10=(Null);v12=(Null);v19=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-exception v8

    #v8=(Reference,Ljava/io/IOException;);
    move-object v10, v11

    .end local v11           #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v10       #b64os:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v10=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object/from16 v18, v19

    .end local v19           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v18       #gzos:Ljava/util/zip/GZIPOutputStream;
    #v18=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-object v12, v13

    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #baos:Ljava/io/ByteArrayOutputStream;
    #v12=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto/16 :goto_4
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1584
    invoke-static {p0}, Lcom/mobclix/android/sdk/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, encoded:Ljava/lang/String;
    #v1=(Reference,Ljava/lang/String;);
    const/4 v2, 0x0

    .line 1587
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    #v2=(Null);
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1588
    #v3=(UninitRef,Ljava/io/BufferedOutputStream;);
    new-instance v4, Ljava/io/FileOutputStream;

    #v4=(UninitRef,Ljava/io/FileOutputStream;);
    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1587
    #v4=(Reference,Ljava/io/FileOutputStream;);
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    #v3=(Reference,Ljava/io/BufferedOutputStream;);
    const-string v4, "US-ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1595
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1598
    :goto_0
    return-void

    .line 1591
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_0
    #v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 1592
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    #v0=(Reference,Ljava/io/IOException;);v2=(Reference,Ljava/io/BufferedOutputStream;);
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1594
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    #v0=(Conflicted);
    move-exception v4

    .line 1595
    :goto_2
    :try_start_4
    #v4=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1597
    :goto_3
    #v5=(Conflicted);
    throw v4

    .line 1596
    :catch_1
    #v5=(Uninit);
    move-exception v5

    #v5=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_2
    #v0=(Uninit);v2=(Null);v3=(Reference,Ljava/io/BufferedOutputStream;);v5=(Uninit);
    move-exception v4

    goto :goto_0

    .line 1594
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    #v2=(Reference,Ljava/io/BufferedOutputStream;);
    goto :goto_2

    .line 1591
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    #v2=(Null);
    move-exception v0

    #v0=(Reference,Ljava/io/IOException;);
    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    #v2=(Reference,Ljava/io/BufferedOutputStream;);
    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1539
    const/4 v4, 0x0

    .line 1540
    .local v4, encodedData:Ljava/lang/String;
    #v4=(Null);
    const/4 v0, 0x0

    .line 1544
    .local v0, bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :try_start_0
    #v0=(Null);
    new-instance v5, Ljava/io/File;

    #v5=(UninitRef,Ljava/io/File;);
    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v5, file:Ljava/io/File;
    #v5=(Reference,Ljava/io/File;);
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    long-to-double v8, v8

    #v8=(DoubleLo);v9=(DoubleHi);
    const-wide v10, 0x3ff6666666666666L

    #v10=(LongLo);v11=(LongHi);
    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    add-double/2addr v8, v10

    double-to-int v8, v8

    #v8=(Integer);
    const/16 v9, 0x28

    #v9=(PosByte);
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v2, v8, [B

    .line 1546
    .local v2, buffer:[B
    #v2=(Reference,[B);
    const/4 v6, 0x0

    .line 1547
    .local v6, length:I
    #v6=(Null);
    const/4 v7, 0x0

    .line 1550
    .local v7, numBytes:I
    #v7=(Null);
    new-instance v1, Lcom/mobclix/android/sdk/Base64$InputStream;

    .line 1551
    #v1=(UninitRef,Lcom/mobclix/android/sdk/Base64$InputStream;);
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1552
    #v8=(UninitRef,Ljava/io/BufferedInputStream;);
    new-instance v9, Ljava/io/FileInputStream;

    #v9=(UninitRef,Ljava/io/FileInputStream;);
    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1551
    #v9=(Reference,Ljava/io/FileInputStream;);
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1552
    #v8=(Reference,Ljava/io/BufferedInputStream;);
    const/4 v9, 0x1

    .line 1550
    #v9=(One);
    invoke-direct {v1, v8, v9}, Lcom/mobclix/android/sdk/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    .end local v0           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .local v1, bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :goto_0
    #v1=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);v6=(Integer);v7=(Integer);v8=(Conflicted);
    const/16 v8, 0x1000

    :try_start_1
    #v8=(PosShort);
    invoke-virtual {v1, v2, v6, v8}, Lcom/mobclix/android/sdk/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_0

    .line 1560
    new-instance v4, Ljava/lang/String;

    .end local v4           #encodedData:Ljava/lang/String;
    #v4=(UninitRef,Ljava/lang/String;);
    const/4 v8, 0x0

    #v8=(Null);
    const-string v9, "US-ASCII"

    #v9=(Reference,Ljava/lang/String;);
    invoke-direct {v4, v2, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1567
    .restart local v4       #encodedData:Ljava/lang/String;
    :try_start_2
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1570
    :goto_1
    #v8=(Reference,Ljava/lang/Exception;);
    return-object v4

    .line 1556
    :cond_0
    #v4=(Null);v8=(PosShort);v9=(One);
    add-int/2addr v6, v7

    goto :goto_0

    .line 1563
    .end local v1           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .end local v2           #buffer:[B
    .end local v5           #file:Ljava/io/File;
    .end local v6           #length:I
    .end local v7           #numBytes:I
    .restart local v0       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v3

    .line 1564
    .end local v4           #encodedData:Ljava/lang/String;
    .local v3, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);v3=(Reference,Ljava/io/IOException;);v4=(Conflicted);
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1566
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    #v3=(Conflicted);
    move-exception v8

    .line 1567
    :goto_3
    :try_start_4
    #v8=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1568
    :goto_4
    throw v8

    .line 1567
    :catch_1
    move-exception v9

    #v9=(Reference,Ljava/lang/Exception;);
    goto :goto_4

    .end local v0           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v1       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #encodedData:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #length:I
    .restart local v7       #numBytes:I
    :catch_2
    #v0=(Null);v1=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);v2=(Reference,[B);v3=(Uninit);v4=(Reference,Ljava/lang/String;);v5=(Reference,Ljava/io/File;);v6=(Integer);v7=(Integer);v8=(Null);v10=(LongLo);v11=(LongHi);
    move-exception v8

    #v8=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 1566
    .end local v4           #encodedData:Ljava/lang/String;
    :catchall_1
    #v4=(Conflicted);v8=(PosShort);v9=(Conflicted);
    move-exception v8

    #v8=(Reference,Ljava/lang/Throwable;);
    move-object v0, v1

    .end local v1           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v0       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);
    goto :goto_3

    .line 1563
    .end local v0           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v1       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    :catch_3
    #v0=(Null);v8=(PosShort);
    move-exception v3

    #v3=(Reference,Ljava/io/IOException;);
    move-object v0, v1

    .end local v1           #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    .restart local v0       #bis:Lcom/mobclix/android/sdk/Base64$InputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$InputStream;);
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .parameter "serializableObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, v0}, Lcom/mobclix/android/sdk/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference,Ljava/lang/String;);
    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 13
    .parameter "serializableObject"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    if-nez p0, :cond_0

    .line 656
    new-instance v10, Ljava/lang/NullPointerException;

    #v10=(UninitRef,Ljava/lang/NullPointerException;);
    const-string v11, "Cannot serialize a null object."

    #v11=(Reference,Ljava/lang/String;);
    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v10=(Reference,Ljava/lang/NullPointerException;);
    throw v10

    .line 660
    :cond_0
    #v10=(Uninit);v11=(Uninit);
    const/4 v2, 0x0

    .line 661
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    #v2=(Null);
    const/4 v0, 0x0

    .line 662
    .local v0, b64os:Ljava/io/OutputStream;
    #v0=(Null);
    const/4 v5, 0x0

    .line 663
    .local v5, gzos:Ljava/util/zip/GZIPOutputStream;
    #v5=(Null);
    const/4 v7, 0x0

    .line 668
    .local v7, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    #v7=(Null);
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #v3=(UninitRef,Ljava/io/ByteArrayOutputStream;);
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    #v3=(Reference,Ljava/io/ByteArrayOutputStream;);
    new-instance v1, Lcom/mobclix/android/sdk/Base64$OutputStream;

    #v1=(UninitRef,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    or-int/lit8 v10, p1, 0x1

    #v10=(Integer);
    invoke-direct {v1, v3, v10}, Lcom/mobclix/android/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 670
    .end local v0           #b64os:Ljava/io/OutputStream;
    .local v1, b64os:Ljava/io/OutputStream;
    #v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_1

    .line 672
    :try_start_2
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    #v6=(UninitRef,Ljava/util/zip/GZIPOutputStream;);
    invoke-direct {v6, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 673
    .end local v5           #gzos:Ljava/util/zip/GZIPOutputStream;
    .local v6, gzos:Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    #v6=(Reference,Ljava/util/zip/GZIPOutputStream;);
    new-instance v8, Ljava/io/ObjectOutputStream;

    #v8=(UninitRef,Ljava/io/ObjectOutputStream;);
    invoke-direct {v8, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .local v8, oos:Ljava/io/ObjectOutputStream;
    #v8=(Reference,Ljava/io/ObjectOutputStream;);
    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    #v7=(Reference,Ljava/io/ObjectOutputStream;);
    move-object v5, v6

    .line 678
    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #gzos:Ljava/util/zip/GZIPOutputStream;
    :goto_0
    :try_start_4
    #v5=(Reference,Ljava/util/zip/GZIPOutputStream;);v6=(Conflicted);
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 686
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 687
    :goto_1
    :try_start_6
    #v10=(Conflicted);
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 688
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 689
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 694
    :goto_4
    :try_start_9
    new-instance v10, Ljava/lang/String;

    #v10=(UninitRef,Ljava/lang/String;);
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    #v11=(Reference,[B);
    const-string v12, "US-ASCII"

    #v12=(Reference,Ljava/lang/String;);
    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    .line 698
    :goto_5
    #v9=(Conflicted);v10=(Reference,Ljava/lang/String;);v12=(Conflicted);
    return-object v10

    .line 676
    :cond_1
    :try_start_a
    #v5=(Null);v6=(Uninit);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Integer);v11=(Uninit);v12=(Uninit);
    new-instance v8, Ljava/io/ObjectOutputStream;

    #v8=(UninitRef,Ljava/io/ObjectOutputStream;);
    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    #v8=(Reference,Ljava/io/ObjectOutputStream;);
    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    #v7=(Reference,Ljava/io/ObjectOutputStream;);
    goto :goto_0

    .line 680
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_0
    #v1=(Uninit);v3=(Conflicted);v7=(Null);v8=(Uninit);v10=(Uninit);
    move-exception v4

    .line 683
    .local v4, e:Ljava/io/IOException;
    :goto_6
    :try_start_b
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v1=(Conflicted);v2=(Reference,Ljava/io/ByteArrayOutputStream;);v4=(Reference,Ljava/io/IOException;);v5=(Reference,Ljava/util/zip/GZIPOutputStream;);v6=(Conflicted);v7=(Reference,Ljava/io/ObjectOutputStream;);v8=(Conflicted);v10=(Conflicted);
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 685
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    #v4=(Conflicted);
    move-exception v10

    .line 686
    :goto_7
    :try_start_c
    #v10=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 687
    :goto_8
    :try_start_d
    #v11=(Conflicted);
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 688
    :goto_9
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 689
    :goto_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 690
    :goto_b
    throw v10

    .line 696
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    #v0=(Null);v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Null);v3=(Reference,Ljava/io/ByteArrayOutputStream;);v4=(Uninit);v8=(Reference,Ljava/io/ObjectOutputStream;);v10=(Conflicted);v12=(Conflicted);
    move-exception v9

    .line 698
    .local v9, uue:Ljava/io/UnsupportedEncodingException;
    #v9=(Reference,Ljava/io/UnsupportedEncodingException;);
    new-instance v10, Ljava/lang/String;

    #v10=(UninitRef,Ljava/lang/String;);
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    #v11=(Reference,[B);
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    #v10=(Reference,Ljava/lang/String;);
    goto :goto_5

    .line 686
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #uue:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v1=(Conflicted);v2=(Reference,Ljava/io/ByteArrayOutputStream;);v3=(Conflicted);v4=(Conflicted);v8=(Conflicted);v9=(Uninit);v11=(Uninit);v12=(Uninit);
    move-exception v11

    #v11=(Reference,Ljava/lang/Exception;);
    goto :goto_8

    .line 687
    :catch_3
    #v11=(Conflicted);
    move-exception v11

    #v11=(Reference,Ljava/lang/Exception;);
    goto :goto_9

    .line 688
    :catch_4
    #v11=(Conflicted);
    move-exception v11

    #v11=(Reference,Ljava/lang/Exception;);
    goto :goto_a

    .line 689
    :catch_5
    #v11=(Conflicted);
    move-exception v11

    #v11=(Reference,Ljava/lang/Exception;);
    goto :goto_b

    .line 686
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_6
    #v0=(Null);v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Null);v3=(Reference,Ljava/io/ByteArrayOutputStream;);v4=(Uninit);v8=(Reference,Ljava/io/ObjectOutputStream;);v10=(Integer);v11=(Uninit);
    move-exception v10

    #v10=(Reference,Ljava/lang/Exception;);
    goto :goto_1

    .line 687
    :catch_7
    #v10=(Conflicted);
    move-exception v10

    #v10=(Reference,Ljava/lang/Exception;);
    goto :goto_2

    .line 688
    :catch_8
    #v10=(Conflicted);
    move-exception v10

    #v10=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .line 689
    :catch_9
    #v10=(Conflicted);
    move-exception v10

    #v10=(Reference,Ljava/lang/Exception;);
    goto :goto_4

    .line 685
    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    :catchall_1
    #v1=(Conflicted);v5=(Null);v6=(Uninit);v7=(Null);v8=(Uninit);v10=(Conflicted);
    move-exception v10

    #v10=(Reference,Ljava/lang/Throwable;);
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    #v2=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_7

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    #v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Null);v5=(Reference,Ljava/util/zip/GZIPOutputStream;);v6=(Conflicted);v7=(Reference,Ljava/io/ObjectOutputStream;);v8=(Conflicted);v10=(Integer);
    move-exception v10

    #v10=(Reference,Ljava/lang/Throwable;);
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    #v2=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_7

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    #v0=(Null);v2=(Null);v5=(Null);v6=(Reference,Ljava/util/zip/GZIPOutputStream;);v7=(Null);v10=(Integer);
    move-exception v10

    #v10=(Reference,Ljava/lang/Throwable;);
    move-object v5, v6

    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #gzos:Ljava/util/zip/GZIPOutputStream;
    #v5=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    #v2=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_7

    .line 680
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_a
    #v0=(Null);v1=(Conflicted);v2=(Null);v5=(Null);v6=(Uninit);v8=(Uninit);v10=(Conflicted);
    move-exception v4

    #v4=(Reference,Ljava/io/IOException;);
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    #v2=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_b
    #v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Null);v4=(Uninit);v5=(Reference,Ljava/util/zip/GZIPOutputStream;);v6=(Conflicted);v7=(Reference,Ljava/io/ObjectOutputStream;);v8=(Conflicted);v10=(Integer);
    move-exception v4

    #v4=(Reference,Ljava/io/IOException;);
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    #v2=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_6

    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #gzos:Ljava/util/zip/GZIPOutputStream;
    :catch_c
    #v0=(Null);v2=(Null);v4=(Uninit);v5=(Null);v6=(Reference,Ljava/util/zip/GZIPOutputStream;);v7=(Null);
    move-exception v4

    #v4=(Reference,Ljava/io/IOException;);
    move-object v5, v6

    .end local v6           #gzos:Ljava/util/zip/GZIPOutputStream;
    .restart local v5       #gzos:Ljava/util/zip/GZIPOutputStream;
    #v5=(Reference,Ljava/util/zip/GZIPOutputStream;);
    move-object v0, v1

    .end local v1           #b64os:Ljava/io/OutputStream;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    move-object v2, v3

    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    #v2=(Reference,Ljava/io/ByteArrayOutputStream;);
    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .locals 5
    .parameter "dataToEncode"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1407
    if-nez p0, :cond_0

    .line 1408
    new-instance v3, Ljava/lang/NullPointerException;

    #v3=(UninitRef,Ljava/lang/NullPointerException;);
    const-string v4, "Data to encode was null."

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/lang/NullPointerException;);
    throw v3

    .line 1411
    :cond_0
    #v3=(Uninit);v4=(Uninit);
    const/4 v0, 0x0

    .line 1413
    .local v0, bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :try_start_0
    #v0=(Null);
    new-instance v1, Lcom/mobclix/android/sdk/Base64$OutputStream;

    .line 1414
    #v1=(UninitRef,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    new-instance v3, Ljava/io/FileOutputStream;

    #v3=(UninitRef,Ljava/io/FileOutputStream;);
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #v3=(Reference,Ljava/io/FileOutputStream;);
    const/4 v4, 0x1

    .line 1413
    #v4=(One);
    invoke-direct {v1, v3, v4}, Lcom/mobclix/android/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    .end local v0           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .local v1, bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :try_start_1
    #v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    invoke-virtual {v1, p0}, Lcom/mobclix/android/sdk/Base64$OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1421
    :try_start_2
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1424
    :goto_0
    return-void

    .line 1417
    .end local v1           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v0       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :catch_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    .line 1418
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Reference,Ljava/io/IOException;);
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1420
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    #v2=(Conflicted);
    move-exception v3

    .line 1421
    :goto_2
    :try_start_4
    #v3=(Reference,Ljava/lang/Throwable;);
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1422
    :goto_3
    throw v3

    .line 1421
    :catch_1
    move-exception v4

    #v4=(Reference,Ljava/lang/Exception;);
    goto :goto_3

    .end local v0           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v1       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :catch_2
    #v0=(Null);v1=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);v2=(Uninit);v4=(One);
    move-exception v3

    goto :goto_0

    .line 1420
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v0       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    goto :goto_2

    .line 1417
    .end local v0           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v1       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    :catch_3
    #v0=(Null);
    move-exception v2

    #v2=(Reference,Ljava/io/IOException;);
    move-object v0, v1

    .end local v1           #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    .restart local v0       #bos:Lcom/mobclix/android/sdk/Base64$OutputStream;
    #v0=(Reference,Lcom/mobclix/android/sdk/Base64$OutputStream;);
    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 413
    and-int/lit8 v0, p0, 0x10

    #v0=(Integer);
    const/16 v1, 0x10

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 414
    sget-object v0, Lcom/mobclix/android/sdk/Base64;->_URL_SAFE_ALPHABET:[B

    .line 418
    :goto_0
    #v0=(Reference,[B);
    return-object v0

    .line 415
    :cond_0
    #v0=(Integer);
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 416
    sget-object v0, Lcom/mobclix/android/sdk/Base64;->_ORDERED_ALPHABET:[B

    #v0=(Reference,[B);
    goto :goto_0

    .line 418
    :cond_1
    #v0=(Integer);
    sget-object v0, Lcom/mobclix/android/sdk/Base64;->_STANDARD_ALPHABET:[B

    #v0=(Reference,[B);
    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .parameter "options"

    .prologue
    .line 431
    and-int/lit8 v0, p0, 0x10

    #v0=(Integer);
    const/16 v1, 0x10

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 432
    sget-object v0, Lcom/mobclix/android/sdk/Base64;->_URL_SAFE_DECODABET:[B

    .line 436
    :goto_0
    #v0=(Reference,[B);
    return-object v0

    .line 433
    :cond_0
    #v0=(Integer);
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 434
    sget-object v0, Lcom/mobclix/android/sdk/Base64;->_ORDERED_DECODABET:[B

    #v0=(Reference,[B);
    goto :goto_0

    .line 436
    :cond_1
    #v0=(Integer);
    sget-object v0, Lcom/mobclix/android/sdk/Base64;->_STANDARD_DECODABET:[B

    #v0=(Reference,[B);
    goto :goto_0
.end method
