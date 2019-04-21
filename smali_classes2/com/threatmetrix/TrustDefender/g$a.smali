.class final Lcom/threatmetrix/TrustDefender/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/g;

.field private b:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/g$a;->a:Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    .line 678
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$d;->g()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    .line 682
    :cond_0
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 690
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 699
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$a;->b:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 708
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
