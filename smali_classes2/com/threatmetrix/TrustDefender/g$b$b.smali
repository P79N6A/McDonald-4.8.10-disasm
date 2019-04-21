.class final Lcom/threatmetrix/TrustDefender/g$b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I

.field static g:I

.field static h:I

.field static i:I

.field static j:I

.field static k:I

.field static l:I

.field static m:I

.field static n:I

.field static o:I

.field private static p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 234
    sput v2, Lcom/threatmetrix/TrustDefender/g$b$b;->a:I

    .line 235
    sput v3, Lcom/threatmetrix/TrustDefender/g$b$b;->b:I

    .line 236
    sput v4, Lcom/threatmetrix/TrustDefender/g$b$b;->c:I

    .line 237
    sput v5, Lcom/threatmetrix/TrustDefender/g$b$b;->d:I

    .line 238
    sput v6, Lcom/threatmetrix/TrustDefender/g$b$b;->e:I

    .line 239
    const/16 v0, 0xd

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->f:I

    .line 240
    const/16 v0, 0xe

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->g:I

    .line 241
    const/16 v0, 0xf

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->h:I

    .line 242
    const/16 v0, 0x10

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->i:I

    .line 243
    const/16 v0, 0x11

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->j:I

    .line 244
    const/16 v0, 0x12

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->k:I

    .line 245
    const/16 v0, 0x13

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->l:I

    .line 246
    const/16 v0, 0x14

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->m:I

    .line 247
    const/16 v0, 0x15

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->n:I

    .line 248
    const/16 v0, 0x16

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->o:I

    .line 254
    const-string v0, "android.os.Build$VERSION_CODES"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "FROYO"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    sput v2, Lcom/threatmetrix/TrustDefender/g$b$b;->a:I

    .line 261
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "GINGERBREAD"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    sput v3, Lcom/threatmetrix/TrustDefender/g$b$b;->b:I

    .line 265
    :cond_1
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "GINGERBREAD_MR1"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    sput v4, Lcom/threatmetrix/TrustDefender/g$b$b;->c:I

    .line 269
    :cond_2
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "HONEYCOMB"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 271
    sput v5, Lcom/threatmetrix/TrustDefender/g$b$b;->d:I

    .line 273
    :cond_3
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "HONEYCOMB_MR1"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 275
    sput v6, Lcom/threatmetrix/TrustDefender/g$b$b;->e:I

    .line 277
    :cond_4
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "HONEYCOMB_MR2"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 279
    const/16 v0, 0xd

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->f:I

    .line 281
    :cond_5
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "ICE_CREAM_SANDWICH"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 283
    const/16 v0, 0xe

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->g:I

    .line 285
    :cond_6
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "ICE_CREAM_SANDWICH_MR1"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 287
    const/16 v0, 0xf

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->h:I

    .line 289
    :cond_7
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "JELLY_BEAN"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 291
    const/16 v0, 0x10

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->i:I

    .line 293
    :cond_8
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "JELLY_BEAN_MR1"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 295
    const/16 v0, 0x11

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->j:I

    .line 297
    :cond_9
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "JELLY_BEAN_MR2"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 299
    const/16 v0, 0x12

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->k:I

    .line 301
    :cond_a
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "KITKAT"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 303
    const/16 v0, 0x13

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->l:I

    .line 305
    :cond_b
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "KITKAT_WATCH"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 307
    const/16 v0, 0x14

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->m:I

    .line 309
    :cond_c
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "LOLLIPOP"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 311
    const/16 v0, 0x15

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->n:I

    .line 313
    :cond_d
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$b;->p:Ljava/lang/Class;

    const-string v1, "LOLLIPOP_MR1"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 315
    const/16 v0, 0x16

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$b;->o:I

    .line 317
    :cond_e
    return-void
.end method
