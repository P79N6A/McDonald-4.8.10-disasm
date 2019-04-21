.class final Lcom/threatmetrix/TrustDefender/g$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/g;

.field private b:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/g$i;->a:Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;

    .line 558
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 562
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    goto :goto_0

    .line 569
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v4, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->b()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->f()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_1

    .line 636
    :try_start_0
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 638
    .local v1, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 640
    .local v0, "a":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v6, "/system/app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v6, "/system/priv-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 643
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 649
    .end local v0    # "a":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    .line 657
    :cond_1
    :goto_1
    const-string v5, "/system/app"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v5, "/system/priv-app"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    return-object v4

    .line 651
    :catch_1
    move-exception v2

    .line 653
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final a(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 599
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->b()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->a()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 606
    const/4 v1, 0x1

    .line 623
    :goto_0
    return v1

    .line 610
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    .line 623
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 615
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    goto :goto_1

    .line 617
    :catch_2
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 578
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->e()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/g$i;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 594
    :cond_0
    :goto_0
    return v1

    .line 587
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    goto :goto_0

    .line 589
    :catch_1
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
