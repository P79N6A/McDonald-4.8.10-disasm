.class final Lcom/threatmetrix/TrustDefender/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/g$b$b;,
        Lcom/threatmetrix/TrustDefender/g$b$a;
    }
.end annotation


# static fields
.field static a:J

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;

.field private static n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/threatmetrix/TrustDefender/g$b;->a:J

    .line 123
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->b:Ljava/lang/String;

    .line 124
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->c:Ljava/lang/String;

    .line 125
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->d:Ljava/lang/String;

    .line 126
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->e:Ljava/lang/String;

    .line 127
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->f:Ljava/lang/String;

    .line 128
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->g:Ljava/lang/String;

    .line 129
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->h:Ljava/lang/String;

    .line 130
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->i:Ljava/lang/String;

    .line 131
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->j:Ljava/lang/String;

    .line 132
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->k:Ljava/lang/String;

    .line 133
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->l:Ljava/lang/String;

    .line 134
    sput-object v2, Lcom/threatmetrix/TrustDefender/g$b;->m:Ljava/lang/String;

    .line 140
    const-string v0, "android.os.Build"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 142
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "TIME"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    sget-wide v0, Landroid/os/Build;->TIME:J

    sput-wide v0, Lcom/threatmetrix/TrustDefender/g$b;->a:J

    .line 146
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "TYPE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->b:Ljava/lang/String;

    .line 150
    :cond_1
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "TAGS"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->c:Ljava/lang/String;

    .line 154
    :cond_2
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "HOST"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->d:Ljava/lang/String;

    .line 158
    :cond_3
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "BRAND"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 160
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->e:Ljava/lang/String;

    .line 162
    :cond_4
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "USER"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 164
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->f:Ljava/lang/String;

    .line 166
    :cond_5
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "ID"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 168
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->g:Ljava/lang/String;

    .line 170
    :cond_6
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "SERIAL"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 172
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->h:Ljava/lang/String;

    .line 174
    :cond_7
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "DEVICE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 176
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->i:Ljava/lang/String;

    .line 178
    :cond_8
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 180
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->j:Ljava/lang/String;

    .line 182
    :cond_9
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "DISPLAY"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 184
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->k:Ljava/lang/String;

    .line 186
    :cond_a
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "PRODUCT"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 188
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->l:Ljava/lang/String;

    .line 190
    :cond_b
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b;->n:Ljava/lang/Class;

    const-string v1, "MANUFACTURER"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 192
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b;->m:Ljava/lang/String;

    .line 195
    :cond_c
    return-void
.end method
