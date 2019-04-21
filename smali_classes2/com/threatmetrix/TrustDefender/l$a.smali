.class final enum Lcom/threatmetrix/TrustDefender/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefender/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum b:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum c:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum d:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum e:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum f:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum g:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum h:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum i:Lcom/threatmetrix/TrustDefender/l$a;

.field public static final enum j:Lcom/threatmetrix/TrustDefender/l$a;

.field private static final synthetic l:[Lcom/threatmetrix/TrustDefender/l$a;


# instance fields
.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "LIBRARY_NOT_AVAILABLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->a:Lcom/threatmetrix/TrustDefender/l$a;

    .line 170
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "API_NOT_INITIATED"

    invoke-direct {v0, v1, v4, v3}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->b:Lcom/threatmetrix/TrustDefender/l$a;

    .line 174
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "API_AVAILABLE"

    invoke-direct {v0, v1, v5, v3}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->c:Lcom/threatmetrix/TrustDefender/l$a;

    .line 178
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v6, v3}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->d:Lcom/threatmetrix/TrustDefender/l$a;

    .line 185
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "LOCATION_SERVICES_CONNECT_REQUEST_SENT"

    invoke-direct {v0, v1, v7, v3}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->e:Lcom/threatmetrix/TrustDefender/l$a;

    .line 192
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "LOCATION_SERVICES_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->f:Lcom/threatmetrix/TrustDefender/l$a;

    .line 198
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "LOCATION_UPDATE_REGISTER_REQUEST_SENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->g:Lcom/threatmetrix/TrustDefender/l$a;

    .line 202
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "LOCATION_LISTENER_REGISTERED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->h:Lcom/threatmetrix/TrustDefender/l$a;

    .line 207
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "LOCATION_SERVICES_PAUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->i:Lcom/threatmetrix/TrustDefender/l$a;

    .line 213
    new-instance v0, Lcom/threatmetrix/TrustDefender/l$a;

    const-string v1, "LOCATION_SERVICES_DISCONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/threatmetrix/TrustDefender/l$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->j:Lcom/threatmetrix/TrustDefender/l$a;

    .line 160
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/threatmetrix/TrustDefender/l$a;

    sget-object v1, Lcom/threatmetrix/TrustDefender/l$a;->a:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/threatmetrix/TrustDefender/l$a;->b:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/threatmetrix/TrustDefender/l$a;->c:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/threatmetrix/TrustDefender/l$a;->d:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/threatmetrix/TrustDefender/l$a;->e:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/threatmetrix/TrustDefender/l$a;->f:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/threatmetrix/TrustDefender/l$a;->g:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/threatmetrix/TrustDefender/l$a;->h:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/threatmetrix/TrustDefender/l$a;->i:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/threatmetrix/TrustDefender/l$a;->j:Lcom/threatmetrix/TrustDefender/l$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/threatmetrix/TrustDefender/l$a;->l:[Lcom/threatmetrix/TrustDefender/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "isAccessible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput-boolean p3, p0, Lcom/threatmetrix/TrustDefender/l$a;->k:Z

    .line 220
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/l$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    const-class v0, Lcom/threatmetrix/TrustDefender/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefender/l$a;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefender/l$a;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/threatmetrix/TrustDefender/l$a;->l:[Lcom/threatmetrix/TrustDefender/l$a;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefender/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefender/l$a;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/l$a;->k:Z

    return v0
.end method
