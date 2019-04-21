.class public Lcom/admaster/square/utils/j;
.super Ljava/lang/Object;
.source "EncryptionUtil.java"


# static fields
.field static final synthetic a:Z

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, -0x5

    const/16 v4, -0x9

    .line 28
    const-class v0, Lcom/admaster/square/utils/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/admaster/square/utils/j;->a:Z

    .line 90
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/admaster/square/utils/j;->b:[B

    .line 103
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 104
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

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

    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 105
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 106
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

    .line 107
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

    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 108
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

    .line 109
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2c

    .line 110
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 111
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x30

    .line 112
    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 113
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 114
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 115
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x41

    .line 116
    aput-byte v7, v0, v2

    const/16 v2, 0x42

    aput-byte v6, v0, v2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

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

    .line 117
    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0xe

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

    .line 118
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

    .line 119
    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 120
    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 121
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

    .line 122
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

    .line 123
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

    .line 124
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

    .line 125
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

    .line 126
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

    .line 127
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

    .line 128
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

    .line 129
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

    .line 130
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

    .line 103
    sput-object v0, Lcom/admaster/square/utils/j;->c:[B

    .line 133
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/admaster/square/utils/j;->d:[B

    .line 146
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 147
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

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

    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 148
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    aput-byte v5, v0, v2

    const/16 v2, 0xe

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

    .line 149
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

    .line 150
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 151
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

    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 152
    aput-byte v4, v0, v2

    const/16 v2, 0x2d

    .line 153
    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v2, 0x2e

    .line 154
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 155
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 156
    const/16 v3, 0x3d

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x3c

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x3b

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/16 v3, 0x3a

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x39

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x38

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x37

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x36

    aput-byte v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x34

    aput-byte v3, v0, v2

    const/16 v2, 0x3a

    .line 157
    aput-byte v4, v0, v2

    const/16 v2, 0x3b

    aput-byte v4, v0, v2

    const/16 v2, 0x3c

    aput-byte v4, v0, v2

    const/16 v2, 0x3d

    .line 158
    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0x3e

    .line 159
    aput-byte v4, v0, v2

    const/16 v2, 0x3f

    aput-byte v4, v0, v2

    const/16 v2, 0x40

    aput-byte v4, v0, v2

    const/16 v2, 0x41

    .line 160
    aput-byte v7, v0, v2

    const/16 v2, 0x42

    aput-byte v6, v0, v2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    const/16 v2, 0x45

    const/4 v3, 0x4

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

    .line 161
    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0xe

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

    .line 162
    aput-byte v4, v0, v2

    const/16 v2, 0x5c

    aput-byte v4, v0, v2

    const/16 v2, 0x5d

    aput-byte v4, v0, v2

    const/16 v2, 0x5e

    aput-byte v4, v0, v2

    const/16 v2, 0x5f

    .line 163
    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    const/16 v2, 0x60

    .line 164
    aput-byte v4, v0, v2

    const/16 v2, 0x61

    .line 165
    const/16 v3, 0x33

    aput-byte v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/16 v2, 0x65

    const/16 v3, 0x2f

    aput-byte v3, v0, v2

    const/16 v2, 0x66

    const/16 v3, 0x2e

    aput-byte v3, v0, v2

    const/16 v2, 0x67

    const/16 v3, 0x2d

    aput-byte v3, v0, v2

    const/16 v2, 0x68

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    const/16 v2, 0x69

    const/16 v3, 0x2b

    aput-byte v3, v0, v2

    const/16 v2, 0x6a

    const/16 v3, 0x2a

    aput-byte v3, v0, v2

    const/16 v2, 0x6b

    const/16 v3, 0x29

    aput-byte v3, v0, v2

    const/16 v2, 0x6c

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, 0x6d

    const/16 v3, 0x27

    aput-byte v3, v0, v2

    const/16 v2, 0x6e

    .line 166
    const/16 v3, 0x26

    aput-byte v3, v0, v2

    const/16 v2, 0x6f

    const/16 v3, 0x25

    aput-byte v3, v0, v2

    const/16 v2, 0x70

    const/16 v3, 0x24

    aput-byte v3, v0, v2

    const/16 v2, 0x71

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/16 v2, 0x72

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/16 v2, 0x73

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/16 v2, 0x74

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/16 v2, 0x75

    const/16 v3, 0x1f

    aput-byte v3, v0, v2

    const/16 v2, 0x76

    const/16 v3, 0x1e

    aput-byte v3, v0, v2

    const/16 v2, 0x77

    const/16 v3, 0x1d

    aput-byte v3, v0, v2

    const/16 v2, 0x78

    const/16 v3, 0x1c

    aput-byte v3, v0, v2

    const/16 v2, 0x79

    const/16 v3, 0x1b

    aput-byte v3, v0, v2

    const/16 v2, 0x7a

    const/16 v3, 0x1a

    aput-byte v3, v0, v2

    const/16 v2, 0x7b

    .line 167
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

    .line 168
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

    .line 169
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

    .line 170
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

    .line 171
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

    .line 172
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

    .line 173
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

    .line 174
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

    .line 175
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

    .line 176
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

    .line 177
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

    .line 146
    sput-object v0, Lcom/admaster/square/utils/j;->e:[B

    .line 181
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/admaster/square/utils/j;->f:[B

    .line 197
    const/16 v0, 0x101

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 198
    aput-byte v4, v0, v2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/4 v2, 0x4

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

    .line 199
    aput-byte v5, v0, v2

    const/16 v2, 0xa

    aput-byte v5, v0, v2

    const/16 v2, 0xb

    .line 200
    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    .line 201
    aput-byte v5, v0, v2

    const/16 v2, 0xe

    .line 202
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

    .line 203
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

    .line 204
    aput-byte v5, v0, v2

    const/16 v2, 0x21

    .line 205
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

    .line 206
    aput-byte v4, v0, v2

    const/16 v2, 0x2c

    .line 207
    aput-byte v4, v0, v2

    const/16 v2, 0x2e

    .line 209
    aput-byte v4, v0, v2

    const/16 v2, 0x2f

    .line 210
    aput-byte v4, v0, v2

    const/16 v2, 0x30

    .line 211
    const/16 v3, 0xa

    aput-byte v3, v0, v2

    const/16 v2, 0x31

    const/16 v3, 0x9

    aput-byte v3, v0, v2

    const/16 v2, 0x32

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    const/16 v2, 0x33

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    const/16 v2, 0x34

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    const/16 v2, 0x35

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/16 v2, 0x36

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/16 v2, 0x37

    aput-byte v7, v0, v2

    const/16 v2, 0x38

    aput-byte v6, v0, v2

    const/16 v2, 0x39

    aput-byte v1, v0, v2

    const/16 v1, 0x3a

    .line 212
    aput-byte v4, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    .line 213
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 214
    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    .line 215
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xb

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

    .line 216
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x19

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

    .line 217
    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    .line 218
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    .line 219
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 220
    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 221
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

    .line 222
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

    .line 223
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

    .line 224
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

    .line 225
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

    .line 226
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

    .line 227
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

    .line 228
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

    .line 229
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

    .line 230
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

    .line 197
    sput-object v0, Lcom/admaster/square/utils/j;->g:[B

    .line 231
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 90
    :array_0
    .array-data 1
        0x44t
        0x43t
        0x42t
        0x41t
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
        0x52t
        0x51t
        0x50t
        0x4ft
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x7at
        0x79t
        0x78t
        0x77t
        0x76t
        0x75t
        0x74t
        0x73t
        0x72t
        0x71t
        0x70t
        0x6ft
        0x6et
        0x6dt
        0x6ct
        0x6bt
        0x6at
        0x69t
        0x68t
        0x67t
        0x66t
        0x65t
        0x64t
        0x63t
        0x62t
        0x61t
        0x39t
        0x38t
        0x37t
        0x36t
        0x35t
        0x34t
        0x33t
        0x32t
        0x31t
        0x30t
        0x2bt
        0x2ft
    .end array-data

    .line 133
    :array_1
    .array-data 1
        0x44t
        0x43t
        0x42t
        0x41t
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
        0x52t
        0x51t
        0x50t
        0x4ft
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x7at
        0x79t
        0x78t
        0x77t
        0x76t
        0x75t
        0x74t
        0x73t
        0x72t
        0x71t
        0x70t
        0x6ft
        0x6et
        0x6dt
        0x6ct
        0x6bt
        0x6at
        0x69t
        0x68t
        0x67t
        0x66t
        0x65t
        0x64t
        0x63t
        0x62t
        0x61t
        0x39t
        0x38t
        0x37t
        0x36t
        0x35t
        0x34t
        0x33t
        0x32t
        0x31t
        0x30t
        0x2dt
        0x5ft
    .end array-data

    .line 181
    :array_2
    .array-data 1
        0x2dt
        0x39t
        0x38t
        0x37t
        0x36t
        0x35t
        0x34t
        0x33t
        0x32t
        0x31t
        0x30t
        0x44t
        0x43t
        0x42t
        0x41t
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
        0x52t
        0x51t
        0x50t
        0x4ft
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x7at
        0x79t
        0x78t
        0x77t
        0x76t
        0x75t
        0x74t
        0x73t
        0x72t
        0x71t
        0x70t
        0x6ft
        0x6et
        0x6dt
        0x6ct
        0x6bt
        0x6at
        0x69t
        0x68t
        0x67t
        0x66t
        0x65t
        0x64t
        0x63t
        0x62t
        0x61t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([BI[BII)I
    .locals 1

    .prologue
    .line 569
    invoke-static {p0, p1, p2, p3, p4}, Lcom/admaster/square/utils/j;->b([BI[BII)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/admaster/square/utils/j;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 396
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/admaster/square/utils/j;->a([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :cond_0
    sget-boolean v1, Lcom/admaster/square/utils/j;->a:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 397
    :catch_0
    move-exception v1

    .line 398
    sget-boolean v2, Lcom/admaster/square/utils/j;->a:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 401
    :cond_1
    return-object v0
.end method

.method public static a([BIII)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p0, p1, p2, p3}, Lcom/admaster/square/utils/j;->b([BIII)[B

    move-result-object v1

    .line 433
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-object v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method static synthetic a(I)[B
    .locals 1

    .prologue
    .line 244
    invoke-static {p0}, Lcom/admaster/square/utils/j;->c(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 726
    if-nez p0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input string was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_0
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 740
    :goto_0
    array-length v1, v0

    invoke-static {v0, v4, v1, p1}, Lcom/admaster/square/utils/j;->c([BIII)[B

    move-result-object v0

    .line 744
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    move v1, v2

    .line 745
    :goto_1
    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    if-nez v1, :cond_1

    .line 747
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 748
    const v2, 0x8b1f

    if-ne v2, v1, :cond_1

    .line 752
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 756
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 758
    :try_start_3
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 760
    :goto_2
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_3

    .line 765
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    .line 773
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 774
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 775
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 781
    :cond_1
    :goto_5
    return-object v0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v4

    .line 744
    goto :goto_1

    .line 761
    :cond_3
    const/4 v6, 0x0

    :try_start_8
    invoke-virtual {v2, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    .line 768
    :catch_1
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    .line 769
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 773
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 774
    :goto_7
    :try_start_b
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 775
    :goto_8
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_5

    .line 772
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    .line 773
    :goto_9
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 774
    :goto_a
    :try_start_e
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 775
    :goto_b
    :try_start_f
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 776
    :goto_c
    throw v0

    .line 773
    :catch_3
    move-exception v1

    goto :goto_7

    .line 774
    :catch_4
    move-exception v1

    goto :goto_8

    .line 773
    :catch_5
    move-exception v1

    goto :goto_a

    .line 774
    :catch_6
    move-exception v1

    goto :goto_b

    .line 775
    :catch_7
    move-exception v1

    goto :goto_c

    .line 773
    :catch_8
    move-exception v1

    goto :goto_3

    .line 774
    :catch_9
    move-exception v1

    goto :goto_4

    .line 775
    :catch_a
    move-exception v1

    goto :goto_5

    .line 772
    :catchall_1
    move-exception v0

    move-object v5, v3

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v5, v4

    goto :goto_9

    .line 768
    :catch_b
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_6

    :catch_c
    move-exception v1

    move-object v4, v3

    goto :goto_6

    :catch_d
    move-exception v1

    move-object v4, v5

    goto :goto_6
.end method

.method private static a([BII[BII)[B
    .locals 5

    .prologue
    const/16 v4, 0x3d

    const/4 v0, 0x0

    .line 265
    invoke-static {p5}, Lcom/admaster/square/utils/j;->b(I)[B

    move-result-object v3

    .line 267
    if-lez p2, :cond_1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    .line 268
    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    .line 267
    :goto_1
    or-int/2addr v1, v2

    .line 269
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    .line 267
    :cond_0
    or-int/2addr v0, v1

    .line 271
    packed-switch p2, :pswitch_data_0

    .line 295
    :goto_2
    return-object p3

    :cond_1
    move v2, v0

    .line 267
    goto :goto_0

    :cond_2
    move v1, v0

    .line 268
    goto :goto_1

    .line 274
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 275
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 276
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 277
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    goto :goto_2

    .line 281
    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 282
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 283
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 284
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 288
    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 289
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 290
    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    .line 291
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a([B[BII)[B
    .locals 1

    .prologue
    .line 255
    invoke-static {p0, p1, p2, p3}, Lcom/admaster/square/utils/j;->b([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static b([BI[BII)I
    .locals 6

    .prologue
    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 574
    if-nez p0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    if-nez p2, :cond_1

    .line 578
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination array was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v2, p1, 0x3

    array-length v3, p0

    if-lt v2, v3, :cond_3

    .line 581
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 582
    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 581
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :cond_3
    if-ltz p3, :cond_4

    add-int/lit8 v2, p3, 0x2

    array-length v3, p2

    if-lt v2, v3, :cond_5

    .line 585
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 586
    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 585
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :cond_5
    invoke-static {p4}, Lcom/admaster/square/utils/j;->c(I)[B

    move-result-object v2

    .line 593
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_6

    .line 597
    aget-byte v1, p0, p1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    .line 598
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    .line 597
    or-int/2addr v1, v2

    .line 600
    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 636
    :goto_0
    return v0

    .line 605
    :cond_6
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_7

    .line 610
    aget-byte v0, p0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    .line 611
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 610
    or-int/2addr v0, v3

    .line 612
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    .line 610
    or-int/2addr v0, v2

    .line 614
    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 615
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    move v0, v1

    .line 616
    goto :goto_0

    .line 626
    :cond_7
    aget-byte v0, p0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    .line 627
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xc

    .line 626
    or-int/2addr v0, v1

    .line 628
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x6

    .line 626
    or-int/2addr v0, v1

    .line 629
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 626
    or-int/2addr v0, v1

    .line 632
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 633
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 634
    add-int/lit8 v1, p3, 0x2

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 636
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/admaster/square/utils/j;->c(Ljava/lang/String;)[B

    move-result-object v1

    .line 82
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final b(I)[B
    .locals 2

    .prologue
    .line 234
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 235
    sget-object v0, Lcom/admaster/square/utils/j;->d:[B

    .line 239
    :goto_0
    return-object v0

    .line 236
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 237
    sget-object v0, Lcom/admaster/square/utils/j;->f:[B

    goto :goto_0

    .line 239
    :cond_1
    sget-object v0, Lcom/admaster/square/utils/j;->b:[B

    goto :goto_0
.end method

.method public static b([BIII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 456
    if-nez p0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    if-gez p1, :cond_1

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have negative offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_1
    if-gez p2, :cond_2

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot have length offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_2
    add-int v1, p1, p2

    array-length v4, p0

    if-le v1, v4, :cond_3

    .line 469
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 470
    const-string v3, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_3
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_5

    .line 483
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    :try_start_1
    new-instance v1, Lcom/admaster/square/utils/k;

    or-int/lit8 v0, p3, 0x1

    invoke-direct {v1, v4, v0}, Lcom/admaster/square/utils/k;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 485
    :try_start_2
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 487
    :try_start_3
    invoke-virtual {v2, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 488
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 496
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 497
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/admaster/square/utils/k;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 498
    :goto_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 501
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 556
    :cond_4
    :goto_3
    return-object v3

    .line 490
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 493
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 495
    :catchall_0
    move-exception v0

    move-object v4, v2

    .line 496
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 497
    :goto_6
    :try_start_9
    invoke-virtual {v1}, Lcom/admaster/square/utils/k;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 498
    :goto_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 499
    :goto_8
    throw v0

    .line 506
    :cond_5
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_8

    move v6, v0

    .line 515
    :goto_9
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, v0, 0x4

    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_9

    const/4 v0, 0x4

    :goto_a
    add-int/2addr v0, v1

    .line 516
    if-eqz v6, :cond_6

    .line 517
    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    .line 519
    :cond_6
    new-array v3, v0, [B

    .line 524
    add-int/lit8 v10, p2, -0x2

    move v8, v7

    move v4, v7

    move v9, v7

    .line 526
    :goto_b
    if-lt v9, v10, :cond_a

    .line 538
    if-ge v9, p2, :cond_7

    .line 539
    add-int v1, v9, p1

    sub-int v2, p2, v9

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/admaster/square/utils/j;->a([BII[BII)[B

    .line 540
    add-int/lit8 v4, v4, 0x4

    .line 545
    :cond_7
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-gt v4, v0, :cond_4

    .line 550
    new-array v0, v4, [B

    .line 551
    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    .line 553
    goto :goto_3

    :cond_8
    move v6, v7

    .line 506
    goto :goto_9

    :cond_9
    move v0, v7

    .line 515
    goto :goto_a

    .line 527
    :cond_a
    add-int v1, v9, p1

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/admaster/square/utils/j;->a([BII[BII)[B

    .line 529
    add-int/lit8 v0, v8, 0x4

    .line 530
    if-eqz v6, :cond_b

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_b

    .line 532
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 533
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    .line 526
    :cond_b
    add-int/lit8 v1, v9, 0x3

    add-int/lit8 v4, v4, 0x4

    move v8, v0

    move v9, v1

    goto :goto_b

    .line 496
    :catch_1
    move-exception v2

    goto :goto_6

    .line 497
    :catch_2
    move-exception v1

    goto :goto_7

    .line 498
    :catch_3
    move-exception v1

    goto :goto_8

    .line 496
    :catch_4
    move-exception v0

    goto :goto_0

    .line 497
    :catch_5
    move-exception v0

    goto :goto_1

    .line 498
    :catch_6
    move-exception v0

    goto :goto_2

    .line 495
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 490
    :catch_7
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v2, v4

    goto/16 :goto_4

    :catch_9
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_4
.end method

.method private static b([B[BII)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 256
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/admaster/square/utils/j;->a([BII[BII)[B

    .line 257
    return-object p0
.end method

.method private static final c(I)[B
    .locals 2

    .prologue
    .line 245
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 246
    sget-object v0, Lcom/admaster/square/utils/j;->e:[B

    .line 250
    :goto_0
    return-object v0

    .line 247
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 248
    sget-object v0, Lcom/admaster/square/utils/j;->g:[B

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/admaster/square/utils/j;->c:[B

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/admaster/square/utils/j;->a(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static c([BIII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 659
    if-nez p0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot decode null source array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    if-ltz p1, :cond_1

    add-int v0, p1, p2

    array-length v2, p0

    if-le v0, v2, :cond_2

    .line 663
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 664
    const-string v2, "Source array with length %d cannot have offset of %d and process %d bytes."

    new-array v3, v11, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    .line 663
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_2
    if-nez p2, :cond_3

    .line 668
    new-array v0, v1, [B

    .line 715
    :goto_0
    return-object v0

    .line 669
    :cond_3
    if-ge p2, v3, :cond_4

    .line 670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_4
    invoke-static {p3}, Lcom/admaster/square/utils/j;->c(I)[B

    move-result-object v5

    .line 676
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 677
    new-array v6, v0, [B

    .line 680
    new-array v7, v3, [B

    move v4, p1

    move v2, v1

    move v3, v1

    .line 685
    :goto_1
    add-int v0, p1, p2

    if-lt v4, v0, :cond_6

    move v0, v3

    .line 713
    :cond_5
    new-array v2, v0, [B

    .line 714
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 715
    goto :goto_0

    .line 687
    :cond_6
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v5, v0

    .line 692
    const/4 v8, -0x5

    if-lt v0, v8, :cond_7

    .line 693
    const/4 v8, -0x1

    if-lt v0, v8, :cond_9

    .line 694
    add-int/lit8 v0, v2, 0x1

    aget-byte v8, p0, v4

    aput-byte v8, v7, v2

    .line 695
    if-le v0, v11, :cond_8

    .line 696
    invoke-static {v7, v1, v6, v3, p3}, Lcom/admaster/square/utils/j;->b([BI[BII)I

    move-result v0

    add-int/2addr v0, v3

    .line 700
    aget-byte v2, p0, v4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_5

    move v2, v0

    move v0, v1

    .line 685
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 708
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 709
    const-string v2, "Bad Base64 input character decimal %d in array position %d"

    new-array v3, v10, [Ljava/lang/Object;

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    .line 708
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v0, v2

    move v2, v3

    goto :goto_2
.end method
