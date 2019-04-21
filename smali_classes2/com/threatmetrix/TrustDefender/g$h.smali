.class final Lcom/threatmetrix/TrustDefender/g$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/g;

.field private b:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .prologue
    .line 501
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/g$h;->a:Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/g$h;->b:Landroid/content/pm/PackageInfo;

    .line 502
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->a()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/g$h;->b:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    goto :goto_0

    .line 516
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    goto :goto_0

    .line 518
    :catch_2
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$h;->b:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$h;->b:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->d()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$h;->b:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$h;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 540
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
