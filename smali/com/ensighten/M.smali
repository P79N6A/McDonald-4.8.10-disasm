.class public final Lcom/ensighten/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Landroid/view/View;

.field public c:I

.field public d:Landroid/view/View;

.field public e:I

.field public f:Lorg/json/JSONObject;

.field g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/content/Context;

.field public i:Z

.field public j:Z

.field public k:Z

.field private l:Z

.field private final m:J

.field private n:Landroid/support/v4/app/Fragment;

.field private o:Landroid/app/Fragment;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/ensighten/M;->l:Z

    .line 71
    iput-boolean v2, p0, Lcom/ensighten/M;->a:Z

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ensighten/M;->m:J

    .line 75
    iput v3, p0, Lcom/ensighten/M;->c:I

    .line 77
    iput v3, p0, Lcom/ensighten/M;->e:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/M;->p:Ljava/lang/CharSequence;

    .line 92
    iput-boolean v2, p0, Lcom/ensighten/M;->j:Z

    .line 97
    iput-boolean v2, p0, Lcom/ensighten/M;->k:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/M;->i:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/ensighten/M;->l:Z

    .line 71
    iput-boolean v2, p0, Lcom/ensighten/M;->a:Z

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ensighten/M;->m:J

    .line 75
    iput v3, p0, Lcom/ensighten/M;->c:I

    .line 77
    iput v3, p0, Lcom/ensighten/M;->e:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/M;->p:Ljava/lang/CharSequence;

    .line 92
    iput-boolean v2, p0, Lcom/ensighten/M;->j:Z

    .line 97
    iput-boolean v2, p0, Lcom/ensighten/M;->k:Z

    .line 105
    iput-object p1, p0, Lcom/ensighten/M;->h:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/ensighten/M;->q:Landroid/content/res/Configuration;

    .line 107
    iput-boolean v2, p0, Lcom/ensighten/M;->i:Z

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/M;->g:Ljava/util/HashSet;

    .line 2560
    invoke-direct {p0}, Lcom/ensighten/M;->c()V

    .line 112
    return-void
.end method

.method private a(ILjava/lang/String;Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1170
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v2

    .line 1172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ensighten/M;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1173
    iget-boolean v3, p0, Lcom/ensighten/M;->l:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/ensighten/M;->k:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/ensighten/M;->j:Z

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 1174
    iget-boolean v3, p0, Lcom/ensighten/M;->a:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1177
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v0, v1

    .line 1195
    :goto_1
    return v0

    .line 1174
    :cond_3
    invoke-virtual {v2, p1, v0}, Lcom/ensighten/W;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1181
    :cond_4
    check-cast v0, Landroid/widget/TextView;

    .line 1182
    const-string/jumbo v2, "type"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1183
    const-string/jumbo v3, "value"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1185
    const-string v4, "text"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1186
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1187
    :cond_6
    const-string v4, "textColor"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "color"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1188
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1194
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_7
    move v0, v1

    .line 1195
    goto :goto_1
.end method

.method private a(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 796
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ensighten/M;->a(I)Landroid/view/View;

    move-result-object v0

    .line 797
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v2

    .line 799
    iget-boolean v3, p0, Lcom/ensighten/M;->l:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/ensighten/M;->k:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/ensighten/M;->j:Z

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 800
    iget-boolean v3, p0, Lcom/ensighten/M;->a:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 803
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-class v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v0, v1

    .line 817
    :goto_1
    return v0

    .line 800
    :cond_3
    invoke-virtual {v2, p1, v0}, Lcom/ensighten/W;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 807
    :cond_4
    check-cast v0, Landroid/widget/ImageView;

    .line 809
    const-string v2, "src"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 810
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p3}, Lcom/ensighten/M;->a(Landroid/view/View;ZLorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 812
    goto :goto_1

    .line 814
    :catch_0
    move-exception v0

    .line 815
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 816
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_6
    move v0, v1

    .line 817
    goto :goto_1
.end method

.method private a(Landroid/view/View;ZLorg/json/JSONObject;)I
    .locals 12

    .prologue
    .line 826
    :try_start_0
    const-string/jumbo v1, "type"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    const-string/jumbo v1, "value"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 829
    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    move-object v5, v1

    .line 831
    :goto_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v1

    .line 832
    invoke-virtual {v1}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v1

    .line 833
    const-string v3, "base64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 835
    :cond_0
    const-string v1, "base64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crc32"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 839
    const-string v2, "crc32"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 844
    :goto_1
    :try_start_2
    invoke-direct {p0, p3, v1}, Lcom/ensighten/M;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    .line 845
    if-eqz v2, :cond_1

    move-object v6, v1

    .line 852
    :cond_1
    new-instance v1, Lcom/ensighten/M$1;

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/ensighten/M$1;-><init>(Lcom/ensighten/M;ZLandroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 905
    const/4 v1, -0x1

    .line 1164
    :goto_2
    return v1

    .line 829
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rand-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 906
    :cond_3
    const-string v3, "color"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 907
    const-string v2, "R.color."

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 908
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 909
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 910
    const-string v4, "color"

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 911
    if-nez v1, :cond_4

    .line 912
    const/4 v1, 0x0

    goto :goto_2

    .line 914
    :cond_4
    if-eqz p2, :cond_6

    .line 915
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1160
    :cond_5
    :goto_3
    const/4 v1, 0x1

    goto :goto_2

    .line 917
    :cond_6
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1161
    :catch_1
    move-exception v1

    .line 1162
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1163
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    .line 1164
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 920
    :cond_8
    if-eqz p2, :cond_9

    .line 921
    :try_start_3
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 923
    :cond_9
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 926
    :cond_a
    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 928
    const-string v2, "R.drawable."

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 929
    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 931
    if-nez v1, :cond_b

    .line 932
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 934
    :cond_b
    if-eqz p2, :cond_c

    .line 935
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 937
    :cond_c
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 940
    :cond_d
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 941
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 942
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 945
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".img"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 946
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 948
    new-instance v8, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    new-instance v1, Lcom/ensighten/M$2;

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move-object v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/ensighten/M$2;-><init>(Lcom/ensighten/M;ZLandroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1157
    const/4 v1, -0x1

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1303
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v1

    .line 5960
    :try_start_0
    iget-object v1, v1, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    .line 1305
    sget-object v2, Lcom/ensighten/V;->g:Lcom/ensighten/V;

    if-eq v1, v2, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v0

    .line 1309
    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1310
    const-string/jumbo v2, "value"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1312
    const-string v3, "text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1313
    iput-object v2, p0, Lcom/ensighten/M;->p:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v1

    .line 1319
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 745
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/ensighten/M;->a(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 752
    const-string v0, "background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const-string v0, "background"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 754
    const-string v2, "background"

    move-object v0, p0

    move v1, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ensighten/M;->b(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 790
    :goto_0
    return v0

    .line 755
    :cond_0
    const-string v0, "layout_height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    const-string v0, "layout_height"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 757
    const-string v1, "layout_height"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->b(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 758
    :cond_1
    const-string v0, "layout_width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    const-string v0, "layout_width"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 760
    const-string v1, "layout_width"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->b(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 761
    :cond_2
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    const-string v0, "src"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 763
    const-string v2, "src"

    move-object v0, p0

    move v1, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ensighten/M;->a(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 764
    :cond_3
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 765
    const-string v0, "text"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 766
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v1

    .line 4960
    iget-object v1, v1, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    .line 768
    sget-object v2, Lcom/ensighten/V;->g:Lcom/ensighten/V;

    if-eq v1, v2, :cond_4

    .line 769
    const-string v1, "text"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->a(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 771
    :cond_4
    const-string v1, "text"

    invoke-direct {p0, v1, v0}, Lcom/ensighten/M;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 773
    :cond_5
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 774
    const-string v0, "textColor"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 775
    const-string v1, "textColor"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->a(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 776
    :cond_6
    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 777
    const-string/jumbo v0, "translationX"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 778
    const-string/jumbo v1, "translationX"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->b(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto/16 :goto_0

    .line 779
    :cond_7
    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 780
    const-string/jumbo v0, "translationY"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 781
    const-string/jumbo v1, "translationY"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->b(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto/16 :goto_0

    .line 782
    :cond_8
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 783
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 784
    const-string/jumbo v1, "translationZ"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->b(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto/16 :goto_0

    .line 785
    :cond_9
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 786
    const-string/jumbo v0, "visibility"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 787
    const-string/jumbo v1, "visibility"

    invoke-direct {p0, p3, v1, v0}, Lcom/ensighten/M;->b(ILjava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    goto/16 :goto_0

    .line 790
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static a([B)Landroid/content/res/XmlResourceParser;
    .locals 4

    .prologue
    .line 125
    :try_start_0
    const-string v0, "android.content.res.XmlBlock"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, [B

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 127
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 128
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    const-string v2, "newParser"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 134
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 155
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    .line 155
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 141
    :catch_2
    move-exception v0

    .line 142
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 144
    :catch_3
    move-exception v0

    .line 145
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 147
    :catch_4
    move-exception v0

    .line 148
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 150
    :catch_5
    move-exception v0

    .line 151
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ensighten/M;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 61
    invoke-static {p1, p2, p3, p4, p5}, Lcom/ensighten/M;->a(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1392
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-object v0

    .line 1398
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1400
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 1401
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 1404
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_3

    .line 1405
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 1411
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1412
    invoke-virtual {p2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1413
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1414
    const/4 v4, 0x0

    :try_start_2
    invoke-static {v2, v4, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 1415
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v1, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 1430
    :goto_1
    if-eqz v2, :cond_4

    .line 1432
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    .line 1439
    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    .line 1441
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v1

    .line 1443
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1444
    :goto_3
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1417
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 1418
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1419
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1430
    :cond_5
    if-eqz v2, :cond_6

    .line 1432
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 1439
    :cond_6
    :goto_5
    if-eqz v3, :cond_0

    .line 1441
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 1442
    :catch_2
    move-exception v1

    .line 1443
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 1420
    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 1421
    :goto_6
    :try_start_9
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1422
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1430
    :cond_7
    if-eqz v2, :cond_8

    .line 1432
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 1439
    :cond_8
    :goto_7
    if-eqz v3, :cond_0

    .line 1441
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_0

    .line 1442
    :catch_4
    move-exception v1

    .line 1443
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 1423
    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 1424
    :goto_8
    :try_start_c
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1425
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1430
    :cond_9
    if-eqz v2, :cond_a

    .line 1432
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 1439
    :cond_a
    :goto_9
    if-eqz v3, :cond_0

    .line 1441
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 1442
    :catch_6
    move-exception v1

    .line 1443
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 1426
    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 1427
    :goto_a
    :try_start_f
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1428
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1430
    :cond_b
    if-eqz v2, :cond_c

    .line 1432
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 1439
    :cond_c
    :goto_b
    if-eqz v3, :cond_0

    .line 1441
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    .line 1442
    :catch_8
    move-exception v1

    .line 1443
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 1430
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_c
    if-eqz v2, :cond_d

    .line 1432
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 1439
    :cond_d
    :goto_d
    if-eqz v3, :cond_e

    .line 1441
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 1430
    :cond_e
    :goto_e
    throw v0

    .line 1433
    :catch_9
    move-exception v1

    .line 1434
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1435
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_d

    .line 1442
    :catch_a
    move-exception v1

    .line 1443
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1444
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_e

    .line 1433
    :catch_b
    move-exception v1

    .line 1434
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1435
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 1433
    :catch_c
    move-exception v1

    .line 1434
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1435
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_7

    .line 1433
    :catch_d
    move-exception v1

    .line 1434
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1435
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_9

    .line 1433
    :catch_e
    move-exception v1

    .line 1434
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1435
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_b

    .line 1433
    :catch_f
    move-exception v1

    .line 1434
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1435
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 1430
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_c

    .line 1426
    :catch_10
    move-exception v1

    move-object v2, v0

    goto/16 :goto_a

    :catch_11
    move-exception v1

    goto/16 :goto_a

    :catch_12
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_a

    .line 1423
    :catch_13
    move-exception v1

    move-object v2, v0

    goto/16 :goto_8

    :catch_14
    move-exception v1

    goto/16 :goto_8

    :catch_15
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_8

    .line 1420
    :catch_16
    move-exception v1

    move-object v2, v0

    goto/16 :goto_6

    :catch_17
    move-exception v1

    goto/16 :goto_6

    :catch_18
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_6

    .line 1417
    :catch_19
    move-exception v1

    move-object v2, v0

    goto/16 :goto_4

    :catch_1a
    move-exception v1

    goto/16 :goto_4

    :catch_1b
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_4

    :cond_f
    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_1
.end method

.method private a(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 1353
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v1

    .line 1355
    iget-object v2, p0, Lcom/ensighten/M;->o:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/ensighten/M;->o:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1370
    :goto_0
    return-object v0

    .line 1358
    :cond_0
    iget-object v2, p0, Lcom/ensighten/M;->n:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/ensighten/M;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1360
    :cond_1
    iget-boolean v2, p0, Lcom/ensighten/M;->l:Z

    if-eqz v2, :cond_2

    .line 6956
    iget-object v0, v0, Lcom/ensighten/W;->e:Landroid/view/View;

    goto :goto_0

    .line 1362
    :cond_2
    iget-boolean v0, p0, Lcom/ensighten/M;->j:Z

    if-eqz v0, :cond_3

    .line 1363
    iget-object v0, p0, Lcom/ensighten/M;->b:Landroid/view/View;

    goto :goto_0

    .line 1364
    :cond_3
    iget-boolean v0, p0, Lcom/ensighten/M;->k:Z

    if-eqz v0, :cond_4

    .line 1365
    iget-object v0, p0, Lcom/ensighten/M;->d:Landroid/view/View;

    goto :goto_0

    .line 1367
    :cond_4
    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 561
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 562
    new-array v1, v4, [Ljava/lang/Class;

    .line 563
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 565
    new-array v1, v4, [Ljava/lang/Object;

    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v3

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 569
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 1327
    const/4 v0, 0x0

    .line 1329
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1335
    :cond_0
    :goto_0
    return-object v0

    .line 1330
    :catch_0
    move-exception v1

    .line 1331
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1332
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(ILorg/json/JSONObject;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 640
    const v0, 0x1020002

    if-ne p1, v0, :cond_0

    move v6, v1

    .line 641
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ensighten/M;->b(I)Landroid/view/View;

    move-result-object v0

    .line 642
    const-class v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 735
    :goto_1
    return v0

    :cond_0
    move v6, v2

    .line 640
    goto :goto_0

    .line 646
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 647
    const-string/jumbo v3, "type"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v5

    .line 652
    invoke-virtual {v5}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v7

    .line 653
    const-string v5, "base64"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 654
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_layout.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-direct {p0, p2, v0}, Lcom/ensighten/M;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 657
    :cond_2
    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 658
    const-string/jumbo v3, "value"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 660
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 661
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 668
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 669
    invoke-virtual {v5, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 670
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 671
    :try_start_3
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 672
    const/16 v9, 0x2000

    new-array v9, v9, [B

    .line 674
    :goto_2
    invoke-virtual {v3, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 675
    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 680
    :catch_0
    move-exception v1

    .line 681
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 682
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 693
    :cond_3
    if-eqz v3, :cond_4

    .line 695
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/view/InflateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 703
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 705
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Landroid/view/InflateException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    :goto_5
    move v1, v2

    .line 715
    :cond_6
    :goto_6
    :try_start_7
    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v4}, Lcom/ensighten/M;->a([B)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 716
    if-eqz v6, :cond_13

    .line 717
    invoke-virtual {v7, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    :try_end_7
    .catch Landroid/view/InflateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    move v0, v1

    goto/16 :goto_1

    .line 678
    :cond_7
    :try_start_8
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v4

    .line 693
    :goto_7
    if-eqz v3, :cond_8

    .line 695
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Landroid/view/InflateException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    .line 703
    :cond_8
    :goto_8
    if-eqz v5, :cond_6

    .line 705
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/view/InflateException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    .line 706
    :catch_1
    move-exception v1

    .line 707
    :try_start_b
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 708
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_b
    .catch Landroid/view/InflateException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    :cond_9
    move v1, v2

    .line 709
    goto :goto_6

    .line 684
    :catch_2
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    .line 685
    :goto_9
    :try_start_c
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 686
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 693
    :cond_a
    if-eqz v3, :cond_b

    .line 695
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Landroid/view/InflateException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    .line 703
    :cond_b
    :goto_a
    if-eqz v5, :cond_c

    .line 705
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catch Landroid/view/InflateException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    :cond_c
    :goto_b
    move v1, v2

    .line 712
    goto :goto_6

    .line 688
    :catch_3
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    .line 689
    :goto_c
    :try_start_f
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 690
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 693
    :cond_d
    if-eqz v3, :cond_e

    .line 695
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Landroid/view/InflateException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6

    .line 703
    :cond_e
    :goto_d
    if-eqz v5, :cond_f

    .line 705
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Landroid/view/InflateException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6

    :cond_f
    :goto_e
    move v1, v2

    .line 712
    goto :goto_6

    .line 693
    :catchall_0
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_f
    if-eqz v3, :cond_10

    .line 695
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Landroid/view/InflateException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_6

    .line 703
    :cond_10
    :goto_10
    if-eqz v5, :cond_11

    .line 705
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Landroid/view/InflateException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6

    .line 693
    :cond_11
    :goto_11
    :try_start_14
    throw v0
    :try_end_14
    .catch Landroid/view/InflateException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_6

    .line 724
    :catch_4
    move-exception v0

    .line 725
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 726
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    move v0, v2

    .line 735
    goto/16 :goto_1

    .line 719
    :cond_13
    :try_start_15
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_15
    .catch Landroid/view/InflateException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_6

    :cond_14
    move v0, v1

    goto/16 :goto_1

    .line 727
    :catch_5
    move-exception v0

    .line 728
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 729
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_12

    .line 730
    :catch_6
    move-exception v0

    .line 731
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 732
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_12

    .line 696
    :catch_7
    move-exception v1

    .line 697
    :try_start_16
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 698
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_10

    .line 706
    :catch_8
    move-exception v1

    .line 707
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 708
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_11

    .line 696
    :catch_9
    move-exception v1

    .line 697
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 698
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 706
    :catch_a
    move-exception v1

    .line 707
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 708
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 696
    :catch_b
    move-exception v1

    .line 697
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 698
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_a

    .line 706
    :catch_c
    move-exception v1

    .line 707
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 708
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_b

    .line 696
    :catch_d
    move-exception v1

    .line 697
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 698
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_d

    .line 706
    :catch_e
    move-exception v1

    .line 707
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 708
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_e

    .line 696
    :catch_f
    move-exception v1

    .line 697
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 698
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_16
    .catch Landroid/view/InflateException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_6

    :cond_15
    move v1, v2

    .line 699
    goto/16 :goto_8

    .line 693
    :catchall_1
    move-exception v0

    move-object v3, v4

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    .line 688
    :catch_10
    move-exception v1

    move-object v3, v4

    goto/16 :goto_c

    :catch_11
    move-exception v1

    goto/16 :goto_c

    .line 684
    :catch_12
    move-exception v1

    move-object v3, v4

    goto/16 :goto_9

    :catch_13
    move-exception v1

    goto/16 :goto_9

    .line 680
    :catch_14
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_3

    :catch_15
    move-exception v1

    move-object v3, v4

    goto/16 :goto_3

    :cond_16
    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_7
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 574
    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ensighten/M;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/ensighten/O;->a(Ljava/io/File;)J

    move-result-wide v4

    .line 577
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    .line 578
    invoke-static {v1, v0}, Lcom/ensighten/P;->a(Ljava/lang/String;I)[B

    move-result-object v8

    .line 581
    cmp-long v1, v6, v4

    if-lez v1, :cond_1

    .line 582
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string v1, "Not writing file to storage due to insufficient space on disk."

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 587
    :cond_1
    const/4 v1, 0x1

    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/ensighten/M;->h:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 592
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 593
    :try_start_2
    invoke-virtual {v2, v8}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 603
    if-eqz v2, :cond_2

    .line 605
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 613
    :cond_2
    :goto_1
    if-eqz v4, :cond_c

    .line 615
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    move v0, v1

    .line 625
    :cond_3
    :goto_2
    if-eqz v0, :cond_a

    .line 626
    const-string/jumbo v1, "type"

    const-string v2, "file"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    invoke-virtual {p0}, Lcom/ensighten/M;->a()V

    goto :goto_0

    .line 594
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 595
    :goto_3
    :try_start_5
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 596
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 603
    :cond_4
    if-eqz v2, :cond_5

    .line 605
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 613
    :cond_5
    :goto_4
    if-eqz v3, :cond_3

    .line 615
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 616
    :catch_1
    move-exception v1

    .line 617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 618
    :goto_5
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 598
    :catch_2
    move-exception v1

    move-object v4, v3

    .line 599
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 600
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 603
    :cond_6
    if-eqz v3, :cond_7

    .line 605
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 613
    :cond_7
    :goto_7
    if-eqz v4, :cond_3

    .line 615
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 616
    :catch_3
    move-exception v1

    .line 617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    .line 603
    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_8
    if-eqz v3, :cond_8

    .line 605
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 613
    :cond_8
    :goto_9
    if-eqz v4, :cond_9

    .line 615
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 603
    :cond_9
    :goto_a
    throw v0

    .line 630
    :cond_a
    invoke-static {}, Lcom/ensighten/Ensighten;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 606
    :catch_4
    move-exception v1

    .line 607
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 608
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_9

    .line 616
    :catch_5
    move-exception v1

    .line 617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 618
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_a

    .line 606
    :catch_6
    move-exception v1

    .line 607
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 608
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_4

    .line 606
    :catch_7
    move-exception v1

    .line 607
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 608
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_7

    .line 606
    :catch_8
    move-exception v1

    .line 607
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 608
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_b
    move v1, v0

    .line 609
    goto/16 :goto_1

    .line 616
    :catch_9
    move-exception v1

    .line 617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    .line 603
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_8

    .line 598
    :catch_a
    move-exception v1

    goto :goto_6

    :catch_b
    move-exception v1

    move-object v3, v2

    goto :goto_6

    .line 594
    :catch_c
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3

    :catch_d
    move-exception v1

    move-object v3, v4

    goto/16 :goto_3

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method private b(ILjava/lang/String;Lorg/json/JSONObject;)I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1228
    :try_start_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v3

    .line 1229
    invoke-direct {p0, p1}, Lcom/ensighten/M;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1230
    iget-boolean v4, p0, Lcom/ensighten/M;->l:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/ensighten/M;->k:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/ensighten/M;->j:Z

    if-eqz v4, :cond_14

    :cond_0
    if-eqz v0, :cond_14

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_14

    .line 1231
    iget-boolean v4, p0, Lcom/ensighten/M;->a:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 1234
    :goto_1
    if-nez v3, :cond_2

    move v0, v1

    .line 1297
    :goto_2
    return v0

    .line 1231
    :cond_1
    invoke-virtual {v3, p1, v0}, Lcom/ensighten/W;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1238
    :cond_2
    const-string/jumbo v0, "type"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1239
    const-string/jumbo v0, "value"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1241
    const-string v0, "layout_height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "layout_width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1242
    :cond_3
    const/4 v0, 0x0

    .line 1244
    const-string v6, "int"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1245
    invoke-static {v5}, Lcom/ensighten/M;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1254
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 1255
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1257
    const-string v5, "layout_height"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1258
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1263
    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    move v0, v2

    .line 1266
    goto :goto_2

    .line 1246
    :cond_6
    const-string v6, "string"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1247
    const-string v4, "fill_parent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "match_parent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1248
    :cond_7
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 1249
    :cond_8
    const-string/jumbo v4, "wrap_content"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1250
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 1260
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1296
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_a
    move v0, v1

    .line 1297
    goto/16 :goto_2

    .line 1268
    :cond_b
    :try_start_1
    const-string/jumbo v0, "translationX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "translationY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "translationZ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_c
    const-string v0, "float"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1269
    invoke-static {v5}, Lcom/ensighten/M;->a(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 1271
    if-nez v0, :cond_d

    move v0, v1

    .line 1272
    goto/16 :goto_2

    .line 1275
    :cond_d
    const-string/jumbo v4, "translationX"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_e
    :goto_5
    move v0, v2

    .line 1283
    goto/16 :goto_2

    .line 1277
    :cond_f
    const-string/jumbo v4, "translationY"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1278
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    .line 1279
    :cond_10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_e

    .line 1280
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_5

    .line 1284
    :cond_11
    const-string/jumbo v0, "visibility"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "int"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1285
    invoke-static {v5}, Lcom/ensighten/M;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1286
    if-nez v0, :cond_12

    move v0, v1

    .line 1287
    goto/16 :goto_2

    .line 1289
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 1290
    goto/16 :goto_2

    :cond_13
    move v0, v1

    .line 1293
    goto/16 :goto_2

    :cond_14
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private b(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1202
    :try_start_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v2

    .line 1203
    invoke-direct {p0, p1}, Lcom/ensighten/M;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1204
    iget-boolean v3, p0, Lcom/ensighten/M;->l:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/ensighten/M;->k:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/ensighten/M;->j:Z

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 1205
    iget-boolean v3, p0, Lcom/ensighten/M;->a:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1208
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    move v0, v1

    .line 1220
    :goto_1
    return v0

    .line 1205
    :cond_2
    invoke-virtual {v2, p1, v0}, Lcom/ensighten/W;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1212
    :cond_3
    const-string v2, "background"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1213
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p3}, Lcom/ensighten/M;->a(Landroid/view/View;ZLorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1215
    goto :goto_1

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1219
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_5
    move v0, v1

    .line 1220
    goto :goto_1
.end method

.method private b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/ensighten/M;->o:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/ensighten/M;->o:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1385
    :goto_0
    return-object v0

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/ensighten/M;->n:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/ensighten/M;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1382
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 1339
    const/4 v0, 0x0

    .line 1341
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1347
    :cond_0
    :goto_0
    return-object v0

    .line 1342
    :catch_0
    move-exception v1

    .line 1343
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1344
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1566
    .line 1570
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    const-string v0, "Loading the optimization configuration file."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/ensighten/M;->h:Landroid/content/Context;

    const-string v2, "ensightenOptimizationConfig"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1573
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1574
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1575
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_29
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_20
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1595
    if-eqz v2, :cond_1

    .line 1597
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1b

    .line 1604
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 1606
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1c

    .line 1613
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 1615
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1d

    .line 1621
    :cond_3
    :goto_2
    return-void

    .line 1576
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 1577
    :goto_3
    :try_start_7
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1578
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1595
    :cond_4
    if-eqz v1, :cond_5

    .line 1597
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f

    .line 1604
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 1606
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    .line 1613
    :cond_6
    :goto_5
    if-eqz v3, :cond_3

    .line 1615
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 1616
    :catch_1
    move-exception v0

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1618
    :goto_6
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 1579
    :catch_2
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    .line 1580
    :goto_7
    :try_start_b
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1581
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1595
    :cond_7
    if-eqz v1, :cond_8

    .line 1597
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    .line 1604
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 1606
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12

    .line 1613
    :cond_9
    :goto_9
    if-eqz v4, :cond_3

    .line 1615
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_2

    .line 1616
    :catch_3
    move-exception v0

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_6

    .line 1582
    :catch_4
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    .line 1583
    :goto_a
    :try_start_f
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1584
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1595
    :cond_a
    if-eqz v1, :cond_b

    .line 1597
    :try_start_10
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_13

    .line 1604
    :cond_b
    :goto_b
    if-eqz v3, :cond_c

    .line 1606
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14

    .line 1613
    :cond_c
    :goto_c
    if-eqz v4, :cond_3

    .line 1615
    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto :goto_2

    .line 1616
    :catch_5
    move-exception v0

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_6

    .line 1585
    :catch_6
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    .line 1586
    :goto_d
    :try_start_13
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1587
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1595
    :cond_d
    if-eqz v1, :cond_e

    .line 1597
    :try_start_14
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15

    .line 1604
    :cond_e
    :goto_e
    if-eqz v3, :cond_f

    .line 1606
    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_16

    .line 1613
    :cond_f
    :goto_f
    if-eqz v4, :cond_3

    .line 1615
    :try_start_16
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_2

    .line 1616
    :catch_7
    move-exception v0

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_6

    .line 1588
    :catch_8
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    .line 1589
    :goto_10
    :try_start_17
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1590
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1595
    :cond_10
    if-eqz v1, :cond_11

    .line 1597
    :try_start_18
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_17

    .line 1604
    :cond_11
    :goto_11
    if-eqz v3, :cond_12

    .line 1606
    :try_start_19
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_18

    .line 1613
    :cond_12
    :goto_12
    if-eqz v4, :cond_3

    .line 1615
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9

    goto/16 :goto_2

    .line 1616
    :catch_9
    move-exception v0

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 1591
    :catch_a
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    .line 1592
    :goto_13
    :try_start_1b
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1593
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 1595
    :cond_13
    if-eqz v1, :cond_14

    .line 1597
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_19

    .line 1604
    :cond_14
    :goto_14
    if-eqz v3, :cond_15

    .line 1606
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1a

    .line 1613
    :cond_15
    :goto_15
    if-eqz v4, :cond_3

    .line 1615
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_b

    goto/16 :goto_2

    .line 1616
    :catch_b
    move-exception v0

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 1595
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_16
    if-eqz v1, :cond_16

    .line 1597
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_c

    .line 1604
    :cond_16
    :goto_17
    if-eqz v3, :cond_17

    .line 1606
    :try_start_20
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_d

    .line 1613
    :cond_17
    :goto_18
    if-eqz v4, :cond_18

    .line 1615
    :try_start_21
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_e

    .line 1595
    :cond_18
    :goto_19
    throw v0

    .line 1598
    :catch_c
    move-exception v1

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1600
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_17

    .line 1607
    :catch_d
    move-exception v1

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1609
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_18

    .line 1616
    :catch_e
    move-exception v1

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1618
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_19

    .line 1598
    :catch_f
    move-exception v0

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1600
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 1607
    :catch_10
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1609
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 1598
    :catch_11
    move-exception v0

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1600
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_8

    .line 1607
    :catch_12
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1609
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_9

    .line 1598
    :catch_13
    move-exception v0

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1600
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_b

    .line 1607
    :catch_14
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1609
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_c

    .line 1598
    :catch_15
    move-exception v0

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1600
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_e

    .line 1607
    :catch_16
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1609
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_f

    .line 1598
    :catch_17
    move-exception v0

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1600
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_11

    .line 1607
    :catch_18
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1609
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 1598
    :catch_19
    move-exception v0

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1600
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_14

    .line 1607
    :catch_1a
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1609
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_15

    .line 1598
    :catch_1b
    move-exception v0

    .line 1599
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1607
    :catch_1c
    move-exception v0

    .line 1608
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1609
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 1616
    :catch_1d
    move-exception v0

    .line 1617
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 1595
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_16

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_16

    .line 1591
    :catch_1e
    move-exception v0

    move-object v3, v1

    goto/16 :goto_13

    :catch_1f
    move-exception v0

    goto/16 :goto_13

    :catch_20
    move-exception v0

    move-object v1, v2

    goto/16 :goto_13

    .line 1588
    :catch_21
    move-exception v0

    move-object v3, v1

    goto/16 :goto_10

    :catch_22
    move-exception v0

    goto/16 :goto_10

    :catch_23
    move-exception v0

    move-object v1, v2

    goto/16 :goto_10

    .line 1585
    :catch_24
    move-exception v0

    move-object v3, v1

    goto/16 :goto_d

    :catch_25
    move-exception v0

    goto/16 :goto_d

    :catch_26
    move-exception v0

    move-object v1, v2

    goto/16 :goto_d

    .line 1582
    :catch_27
    move-exception v0

    move-object v3, v1

    goto/16 :goto_a

    :catch_28
    move-exception v0

    goto/16 :goto_a

    :catch_29
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    .line 1579
    :catch_2a
    move-exception v0

    move-object v3, v1

    goto/16 :goto_7

    :catch_2b
    move-exception v0

    goto/16 :goto_7

    :catch_2c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    .line 1576
    :catch_2d
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto/16 :goto_3

    :catch_2e
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3

    :catch_2f
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 1454
    invoke-static {}, Lcom/ensighten/Ensighten;->getPersistentStoreEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1455
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const-string v0, "The optimization configuration was not saved due to persistent storage being disabled."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ensighten/M;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1471
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ensighten/O;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 1472
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v4, v0

    .line 1475
    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 1476
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    const-string v0, "Not writing file to storage due to insufficient space on disk."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1463
    :cond_2
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1466
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_3
    :try_start_2
    new-instance v0, Lcom/ensighten/M$3;

    invoke-direct {v0, p0, v1}, Lcom/ensighten/M$3;-><init>(Lcom/ensighten/M;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/ensighten/M$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1553
    :catch_1
    move-exception v0

    .line 1554
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1555
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1482
    :cond_4
    :try_start_3
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 33

    .prologue
    .line 187
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 188
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-string v2, "Not running optimization on device with Android API %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/ensighten/M;->m:J

    const-wide/32 v4, 0x2000000

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 192
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string v2, "Not running optimization on device with total memory %d MB that is less than the required %d MB."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/ensighten/M;->m:J

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ensighten/M;->l:Z

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ensighten/M;->a:Z

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    if-nez v2, :cond_3

    .line 202
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "The optimization configuratino is null."

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    move v14, v2

    :goto_1
    if-lez v14, :cond_0

    .line 211
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 218
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 220
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    move v13, v2

    :goto_2
    if-lez v13, :cond_2f

    .line 221
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 226
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "tests"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 227
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 229
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v19

    move v12, v2

    :goto_3
    if-lez v12, :cond_2e

    .line 230
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 232
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 233
    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 235
    if-eqz v2, :cond_2d

    .line 239
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "elements"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 240
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 242
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v21

    .line 243
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v22

    move v11, v2

    :goto_4
    if-lez v11, :cond_2d

    .line 244
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ensighten/M;->n:Landroid/support/v4/app/Fragment;

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ensighten/M;->o:Landroid/app/Fragment;

    .line 248
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 249
    const-string v2, "fragment"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    const-string v2, "fragment"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ensighten/W;->b(Ljava/lang/String;)I

    move-result v5

    .line 254
    const-class v2, Landroid/support/v4/app/FragmentActivity;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 255
    if-eqz v2, :cond_5

    .line 256
    move-object/from16 v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 257
    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ensighten/M;->n:Landroid/support/v4/app/Fragment;

    .line 264
    :cond_4
    :goto_5
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/ensighten/W;->a(Ljava/lang/String;)I

    move-result v5

    .line 265
    if-eqz v5, :cond_2c

    .line 269
    const-string v2, "actions"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 270
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v24

    .line 271
    const/4 v2, 0x0

    move v10, v2

    :goto_6
    move/from16 v0, v24

    if-ge v10, v0, :cond_2c

    .line 272
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 273
    const-string/jumbo v2, "type"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3422
    const/4 v3, 0x0

    .line 3425
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v26

    .line 3960
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ensighten/W;->a:Lcom/ensighten/V;

    move-object/from16 v27, v0

    .line 3427
    const-string v2, "qualifiers"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3428
    const-string v2, "qualifiers"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 3430
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 3432
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v29

    move v4, v2

    :goto_7
    if-lez v4, :cond_20

    .line 3433
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3434
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3436
    const-string v31, "densityDpi"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 3437
    invoke-static/range {v30 .. v30}, Lcom/ensighten/M;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 3439
    if-nez v30, :cond_6

    .line 3440
    const/4 v2, 0x0

    .line 275
    :goto_8
    if-eqz v2, :cond_24

    .line 280
    const-string v2, "append"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 281
    const-string/jumbo v2, "viewClass"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    const-string v2, "data"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 284
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v3

    .line 286
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ensighten/M;->b(I)Landroid/view/View;

    move-result-object v25

    .line 288
    if-eqz v25, :cond_0

    .line 292
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 293
    if-eqz v2, :cond_0

    .line 295
    const-class v5, Landroid/widget/AdapterView;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 299
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 302
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/ensighten/M;->a(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 303
    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 305
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x11

    move/from16 v0, v27

    if-lt v5, v0, :cond_22

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    .line 306
    :goto_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 308
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v27

    move v4, v3

    :goto_a
    if-lez v4, :cond_23

    .line 309
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v5}, Lcom/ensighten/M;->a(Ljava/lang/String;Lorg/json/JSONObject;I)I

    .line 308
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_a

    .line 259
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ensighten/M;->o:Landroid/app/Fragment;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8

    goto/16 :goto_5

    .line 390
    :catch_0
    move-exception v2

    .line 391
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 3443
    :cond_6
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x11

    move/from16 v0, v31

    if-lt v2, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/M;->q:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 3444
    :goto_b
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v0, v30

    if-eq v0, v2, :cond_8

    .line 3445
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3443
    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_b

    :cond_8
    move-object v2, v3

    .line 3432
    :goto_c
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    move-object v3, v2

    goto/16 :goto_7

    .line 3447
    :cond_9
    const-string v31, "orientation"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 3448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/M;->q:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 3450
    const-string v31, "landscape"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    const/16 v31, 0x2

    move/from16 v0, v31

    if-eq v2, v0, :cond_a

    .line 3451
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3452
    :cond_a
    const-string v31, "portrait"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v2, v0, :cond_b

    .line 3453
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_b
    move-object v2, v3

    .line 3455
    goto :goto_c

    :cond_c
    const-string v31, "position"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 3457
    const-string v2, "getPageTitle"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "getView"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_d
    sget-object v2, Lcom/ensighten/V;->b:Lcom/ensighten/V;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_e

    sget-object v2, Lcom/ensighten/V;->g:Lcom/ensighten/V;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_30

    .line 3461
    :cond_e
    const-string v2, "*"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 3462
    if-eqz v31, :cond_f

    const/4 v2, -0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3464
    if-nez v31, :cond_10

    if-nez v2, :cond_10

    .line 3465
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3462
    :cond_f
    invoke-static/range {v30 .. v30}, Lcom/ensighten/M;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_d

    .line 3468
    :cond_10
    if-nez v31, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3986
    move-object/from16 v0, v26

    iget v0, v0, Lcom/ensighten/W;->k:I

    move/from16 v30, v0

    .line 3468
    move/from16 v0, v30

    if-eq v2, v0, :cond_11

    .line 3469
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3472
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ensighten/M;->l:Z

    move-object v2, v3

    .line 3473
    goto/16 :goto_c

    :cond_12
    const-string v31, "childPosition"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 3474
    const-string v2, "getChildView"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object v2, Lcom/ensighten/V;->c:Lcom/ensighten/V;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_30

    .line 3478
    const-string v2, "*"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 3479
    if-eqz v31, :cond_13

    const/4 v2, 0x0

    .line 3481
    :goto_e
    if-nez v31, :cond_14

    if-nez v2, :cond_14

    .line 3482
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3479
    :cond_13
    invoke-static/range {v30 .. v30}, Lcom/ensighten/M;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_e

    .line 3485
    :cond_14
    if-nez v31, :cond_15

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ensighten/M;->c:I

    move/from16 v32, v0

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    .line 3486
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3489
    :cond_15
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ensighten/M;->j:Z

    .line 3490
    if-eqz v31, :cond_16

    const/4 v2, -0x1

    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object v2, v3

    .line 3491
    goto/16 :goto_c

    .line 3490
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_f

    .line 3491
    :cond_17
    const-string v31, "groupPosition"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 3492
    sget-object v2, Lcom/ensighten/V;->c:Lcom/ensighten/V;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_30

    .line 3496
    const-string v2, "*"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3497
    if-eqz v3, :cond_18

    const/4 v2, 0x0

    .line 3499
    :goto_10
    if-nez v3, :cond_19

    if-nez v2, :cond_19

    .line 3500
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3497
    :cond_18
    invoke-static/range {v30 .. v30}, Lcom/ensighten/M;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10

    .line 3503
    :cond_19
    if-nez v3, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ensighten/M;->e:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    .line 3504
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3507
    :cond_1a
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ensighten/M;->k:Z

    .line 3508
    if-eqz v3, :cond_1b

    const/4 v2, -0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_c

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_11

    .line 3509
    :cond_1c
    const-string v31, "smallestScreenWidthDp"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3510
    invoke-static/range {v30 .. v30}, Lcom/ensighten/M;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3512
    if-nez v2, :cond_1d

    .line 3513
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3516
    :cond_1d
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0xd

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1f

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ensighten/M;->q:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v30, v0

    .line 3518
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v30

    if-eq v2, v0, :cond_1e

    .line 3519
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_1e
    move-object v2, v3

    .line 3521
    goto/16 :goto_c

    .line 3523
    :cond_1f
    invoke-virtual/range {v26 .. v26}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    .line 3524
    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v31, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 3525
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v30, v0

    div-float v30, v31, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 3528
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v30

    if-eq v2, v0, :cond_30

    .line 3529
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3537
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ensighten/M;->j:Z

    if-eqz v2, :cond_21

    const-string v2, "getChildView"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    .line 3538
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ensighten/M;->e:I

    if-eq v2, v3, :cond_21

    .line 3539
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3543
    :cond_21
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 305
    :cond_22
    invoke-static {}, Lcom/ensighten/Q;->a()I

    move-result v5

    goto/16 :goto_9

    .line 314
    :cond_23
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 271
    :cond_24
    :goto_12
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_6

    .line 316
    :cond_25
    const-string v2, "hide"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 318
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ensighten/M;->l:Z

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v2

    .line 4956
    iget-object v2, v2, Lcom/ensighten/W;->e:Landroid/view/View;

    .line 319
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ensighten/M;->l:Z

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ensighten/M;->a:Z

    if-eqz v3, :cond_26

    if-eqz v2, :cond_26

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_26

    .line 320
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 323
    :cond_26
    if-eqz v2, :cond_0

    .line 327
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_12

    .line 393
    :catch_1
    move-exception v2

    .line 394
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 318
    :cond_27
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ensighten/M;->b(I)Landroid/view/View;

    move-result-object v2

    goto :goto_13

    .line 328
    :cond_28
    const-string v2, "inflate"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 329
    const-string v2, "data"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 332
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    move v3, v2

    :goto_14
    if-lez v3, :cond_24

    .line 333
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    const-string v25, "layout"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 337
    const-string v2, "layout"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 338
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lcom/ensighten/M;->a(ILorg/json/JSONObject;)Z

    .line 332
    :cond_29
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_14

    .line 342
    :cond_2a
    const-string v2, "modify"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 345
    const-string v2, "data"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 346
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    .line 348
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v25

    move v9, v2

    :goto_15
    if-lez v9, :cond_24

    .line 349
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    .line 351
    invoke-direct/range {v2 .. v8}, Lcom/ensighten/M;->a(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    add-int/lit8 v2, v9, -0x1

    move v9, v2

    goto :goto_15

    .line 353
    :cond_2b
    const-string v2, "replace"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 355
    const-string/jumbo v2, "viewClass"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    const-string v2, "data"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 358
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v3

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ensighten/M;->b(I)Landroid/view/View;

    move-result-object v25

    .line 361
    if-eqz v25, :cond_0

    .line 365
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 366
    if-eqz v2, :cond_0

    .line 368
    const-class v26, Landroid/widget/AdapterView;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 372
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v26

    .line 375
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 376
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/ensighten/M;->a(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 377
    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 378
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 380
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    if-lez v3, :cond_24

    .line 381
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v5}, Lcom/ensighten/M;->a(Ljava/lang/String;Lorg/json/JSONObject;I)I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8

    .line 380
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_16

    .line 243
    :cond_2c
    add-int/lit8 v2, v11, -0x1

    move v11, v2

    goto/16 :goto_4

    .line 229
    :cond_2d
    add-int/lit8 v2, v12, -0x1

    move v12, v2

    goto/16 :goto_3

    .line 220
    :cond_2e
    add-int/lit8 v2, v13, -0x1

    move v13, v2

    goto/16 :goto_2

    .line 210
    :cond_2f
    add-int/lit8 v2, v14, -0x1

    move v14, v2

    goto/16 :goto_1

    .line 396
    :catch_2
    move-exception v2

    .line 397
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 399
    :catch_3
    move-exception v2

    .line 400
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 402
    :catch_4
    move-exception v2

    .line 403
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 405
    :catch_5
    move-exception v2

    .line 406
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 408
    :catch_6
    move-exception v2

    .line 409
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 411
    :catch_7
    move-exception v2

    .line 412
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 414
    :catch_8
    move-exception v2

    .line 415
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_30
    move-object v2, v3

    goto/16 :goto_c
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1722
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1723
    :cond_0
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1724
    const-string v0, "The test was not added due to one or more arguments being null."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 1771
    :goto_0
    return v0

    .line 1728
    :cond_2
    invoke-static {}, Lcom/ensighten/Ensighten;->isPrivacyMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/ensighten/Ensighten;->isBatteryKillEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1729
    :cond_3
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1730
    const-string v0, "The test was not added due to privacy mode or battery kill enabled."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 1731
    goto :goto_0

    .line 1735
    :cond_5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1737
    iget-object v3, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    if-nez v3, :cond_b

    .line 1738
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "tests"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    .line 1743
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1744
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1745
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "tests"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1748
    :cond_7
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1749
    const-string v5, "tests"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1750
    const-string v5, "tests"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1753
    :cond_8
    const-string v5, "tests"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1754
    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1755
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1756
    const-string v2, "tests"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1757
    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1758
    iget-object v2, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1760
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1761
    const-string v2, "Added test %s to the optimization configuration."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1763
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addTestToClass test "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ensighten/M;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1768
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    :cond_a
    move v0, v1

    .line 1771
    goto/16 :goto_0

    .line 1739
    :cond_b
    :try_start_1
    iget-object v3, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1740
    iget-object v3, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "tests"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/M;->f:Lorg/json/JSONObject;

    .line 1668
    invoke-static {}, Lcom/ensighten/Ensighten;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ensightenOptimizationConfig"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1669
    return-void
.end method
