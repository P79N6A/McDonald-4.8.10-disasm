.class final Lcom/threatmetrix/TrustDefender/v;
.super Lcom/threatmetrix/TrustDefender/at;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/reflect/Method;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Landroid/location/Location;

    const-string v1, "isFromMockProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/v;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/v;->a:Ljava/lang/reflect/Method;

    .line 16
    return-void
.end method

.method constructor <init>(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/at;-><init>()V

    .line 11
    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefender/v;->b:Z

    .line 20
    sget v1, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v2, Lcom/threatmetrix/TrustDefender/g$b$b;->k:I

    if-lt v1, v2, :cond_0

    .line 22
    sget-object v1, Lcom/threatmetrix/TrustDefender/v;->a:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/threatmetrix/TrustDefender/v;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 23
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/v;->b:Z

    .line 26
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/v;->b:Z

    return v0
.end method
