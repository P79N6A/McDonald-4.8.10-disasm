.class public Lcom/aps/g;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field public static g:I

.field static h:Z

.field static i:Z

.field static j:J

.field static k:J

.field static l:Z

.field static final m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final n:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 119
    sput-object v0, Lcom/aps/g;->a:Ljava/lang/String;

    .line 123
    sput-object v0, Lcom/aps/g;->b:Ljava/lang/String;

    .line 127
    sput-object v0, Lcom/aps/g;->c:Ljava/lang/String;

    .line 131
    const-string v0, ""

    sput-object v0, Lcom/aps/g;->d:Ljava/lang/String;

    .line 138
    const-string v0, ""

    sput-object v0, Lcom/aps/g;->e:Ljava/lang/String;

    .line 145
    const-string v0, ""

    sput-object v0, Lcom/aps/g;->f:Ljava/lang/String;

    .line 152
    const/16 v0, 0x7530

    sput v0, Lcom/aps/g;->g:I

    .line 168
    sput-boolean v4, Lcom/aps/g;->h:Z

    .line 200
    sput-boolean v3, Lcom/aps/g;->i:Z

    .line 257
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/aps/g;->j:J

    .line 265
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/aps/g;->k:J

    .line 273
    sput-boolean v3, Lcom/aps/g;->l:Z

    .line 393
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    .line 395
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 396
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const-string v1, "GPRS"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const-string v1, "EDGE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 398
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const-string v1, "UMTS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 400
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "EVDO_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 401
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "EVDO_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "HSDPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "HSUPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 405
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 406
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "IDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "EVDO_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 408
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "LTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 409
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "EHRPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/aps/g;->m:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "HSPAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 415
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/aps/g;->n:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    sput-object p0, Lcom/aps/g;->d:Ljava/lang/String;

    .line 134
    return-void
.end method

.method static a(Z)V
    .locals 0

    .prologue
    .line 171
    sput-boolean p0, Lcom/aps/g;->h:Z

    .line 172
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    sput-object p0, Lcom/aps/g;->e:Ljava/lang/String;

    .line 141
    return-void
.end method

.method static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    sput-object p0, Lcom/aps/g;->f:Ljava/lang/String;

    .line 148
    return-void
.end method
