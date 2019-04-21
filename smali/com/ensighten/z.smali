.class public final Lcom/ensighten/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/z$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/ensighten/z$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v3, p0, Lcom/ensighten/z;->b:I

    .line 30
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/ensighten/z;->c:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/ensighten/z$a;->c:Lcom/ensighten/z$a;

    iput-object v0, p0, Lcom/ensighten/z;->e:Lcom/ensighten/z$a;

    .line 35
    const-string v0, "ensightenPrevVersion"

    invoke-static {v0}, Lcom/ensighten/Ensighten;->getStringFromSharedPrefsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/z;->d:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/ensighten/z;->b:I

    .line 39
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ensighten/z;->c:Ljava/lang/String;

    .line 40
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ensighten/z;->a:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    iget-object v0, p0, Lcom/ensighten/z;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/ensighten/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    :cond_0
    const-string v0, "ensightenPrevVersion"

    iget-object v1, p0, Lcom/ensighten/z;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ensighten/Ensighten;->saveStringToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    sget-object v0, Lcom/ensighten/z$a;->a:Lcom/ensighten/z$a;

    iput-object v0, p0, Lcom/ensighten/z;->e:Lcom/ensighten/z$a;

    :cond_1
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v0

    const-string v0, "0.0"

    iput-object v0, p0, Lcom/ensighten/z;->a:Ljava/lang/String;

    goto :goto_0

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/ensighten/z;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ensighten/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ensighten/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ensighten/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/z;->d:Ljava/lang/String;

    .line 1055
    const-string v0, "ensightenPrevVersion"

    iget-object v1, p0, Lcom/ensighten/z;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ensighten/Ensighten;->saveStringToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v0, Lcom/ensighten/z$a;->b:Lcom/ensighten/z$a;

    iput-object v0, p0, Lcom/ensighten/z;->e:Lcom/ensighten/z$a;

    goto :goto_1
.end method
