.class public Lcom/alipay/sdk/auth/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/alipay/sdk/widget/a;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/alipay/sdk/auth/g;->c:Lcom/alipay/sdk/widget/a;

    .line 77
    sput-object v0, Lcom/alipay/sdk/auth/g;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alipay/sdk/widget/a;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/sdk/auth/g;->c:Lcom/alipay/sdk/widget/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/alipay/sdk/auth/g;->c:Lcom/alipay/sdk/widget/a;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/alipay/sdk/auth/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/sdk/auth/g;->d:Ljava/lang/String;

    return-object v0
.end method
