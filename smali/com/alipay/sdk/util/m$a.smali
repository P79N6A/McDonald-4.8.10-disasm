.class public final Lcom/alipay/sdk/util/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/util/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/pm/PackageInfo;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    .line 397
    iput p2, p0, Lcom/alipay/sdk/util/m$a;->b:I

    .line 398
    iput-object p3, p0, Lcom/alipay/sdk/util/m$a;->c:Ljava/lang/String;

    .line 399
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    iget-object v2, p0, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 404
    if-eqz v3, :cond_0

    array-length v2, v3

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 417
    :goto_0
    return v0

    .line 409
    :cond_1
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 410
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/sdk/util/m;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 411
    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/alipay/sdk/util/m$a;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 413
    const-string v2, "biz"

    const-string v3, "PublicKeyUnmatch"

    const-string v4, "Got %s, expected %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v1

    iget-object v1, p0, Lcom/alipay/sdk/util/m$a;->c:Ljava/lang/String;

    aput-object v1, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alipay/sdk/util/m$a;->a:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 423
    iget v1, p0, Lcom/alipay/sdk/util/m$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
