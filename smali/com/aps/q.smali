.class public Lcom/aps/q;
.super Ljava/lang/Object;
.source "Req.java"


# instance fields
.field public A:[B

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "1"

    iput-object v0, p0, Lcom/aps/q;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/aps/q;->b:S

    .line 31
    iput-object v1, p0, Lcom/aps/q;->c:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/aps/q;->d:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/aps/q;->e:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/aps/q;->f:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/aps/q;->g:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/aps/q;->h:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/aps/q;->i:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/aps/q;->j:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/aps/q;->k:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/aps/q;->l:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/aps/q;->m:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/aps/q;->n:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/aps/q;->o:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/aps/q;->p:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/aps/q;->q:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/aps/q;->r:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/aps/q;->s:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/aps/q;->t:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/aps/q;->u:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/aps/q;->v:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/aps/q;->w:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/aps/q;->x:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/aps/q;->y:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/aps/q;->z:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/aps/q;->A:[B

    .line 80
    iput-object v1, p0, Lcom/aps/q;->B:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/aps/q;->C:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/aps/q;->D:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/aps/q;->E:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/aps/q;->w:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 945
    aget-object v0, v0, p2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 946
    const-string v1, "lac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 953
    :goto_0
    return-object v0

    .line 948
    :cond_0
    const-string v1, "cellid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 950
    :cond_1
    const-string v1, "signal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 951
    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 953
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v1, 0x0

    .line 897
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eq v2, v4, :cond_2

    .line 902
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    move v0, v1

    .line 903
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 904
    const-string v3, "0"

    aput-object v3, v2, v0

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 907
    :cond_2
    new-array v3, v4, [B

    move v2, v1

    .line 908
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_4

    .line 909
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 913
    aget-object v4, v0, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 915
    :cond_3
    aget-object v4, v0, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 916
    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 918
    :cond_4
    return-object v3
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 928
    iget-object v0, p0, Lcom/aps/q;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    const-string v0, "0"

    .line 933
    :goto_0
    return-object v0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/aps/q;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/aps/q;->v:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 933
    iget-object v2, p0, Lcom/aps/q;->v:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 965
    iget-object v0, p0, Lcom/aps/q;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->a:Ljava/lang/String;

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/aps/q;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->c:Ljava/lang/String;

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/aps/q;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 972
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->d:Ljava/lang/String;

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/aps/q;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->e:Ljava/lang/String;

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/aps/q;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->f:Ljava/lang/String;

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/aps/q;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->g:Ljava/lang/String;

    .line 983
    :cond_5
    iget-object v0, p0, Lcom/aps/q;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 984
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->h:Ljava/lang/String;

    .line 986
    :cond_6
    iget-object v0, p0, Lcom/aps/q;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 987
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->i:Ljava/lang/String;

    .line 989
    :cond_7
    iget-object v0, p0, Lcom/aps/q;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 990
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->j:Ljava/lang/String;

    .line 994
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/aps/q;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 995
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->D:Ljava/lang/String;

    .line 999
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/aps/q;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1000
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->k:Ljava/lang/String;

    .line 1008
    :goto_2
    iget-object v0, p0, Lcom/aps/q;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1009
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->l:Ljava/lang/String;

    .line 1014
    :goto_3
    iget-object v0, p0, Lcom/aps/q;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1015
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->m:Ljava/lang/String;

    .line 1017
    :cond_a
    iget-object v0, p0, Lcom/aps/q;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1018
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->n:Ljava/lang/String;

    .line 1020
    :cond_b
    iget-object v0, p0, Lcom/aps/q;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->o:Ljava/lang/String;

    .line 1023
    :cond_c
    iget-object v0, p0, Lcom/aps/q;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1024
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->p:Ljava/lang/String;

    .line 1026
    :cond_d
    iget-object v0, p0, Lcom/aps/q;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1027
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->q:Ljava/lang/String;

    .line 1029
    :cond_e
    iget-object v0, p0, Lcom/aps/q;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1030
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->r:Ljava/lang/String;

    .line 1032
    :cond_f
    iget-object v0, p0, Lcom/aps/q;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1033
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->B:Ljava/lang/String;

    .line 1035
    :cond_10
    iget-object v0, p0, Lcom/aps/q;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1036
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->C:Ljava/lang/String;

    .line 1038
    :cond_11
    iget-object v0, p0, Lcom/aps/q;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1039
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->s:Ljava/lang/String;

    .line 1041
    :cond_12
    iget-object v0, p0, Lcom/aps/q;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1042
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->t:Ljava/lang/String;

    .line 1046
    :cond_13
    :goto_4
    iget-object v0, p0, Lcom/aps/q;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1047
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->u:Ljava/lang/String;

    .line 1051
    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/aps/q;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1052
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->v:Ljava/lang/String;

    .line 1054
    :cond_15
    iget-object v0, p0, Lcom/aps/q;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1055
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->w:Ljava/lang/String;

    .line 1057
    :cond_16
    iget-object v0, p0, Lcom/aps/q;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1058
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->x:Ljava/lang/String;

    .line 1060
    :cond_17
    iget-object v0, p0, Lcom/aps/q;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1061
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->y:Ljava/lang/String;

    .line 1063
    :cond_18
    iget-object v0, p0, Lcom/aps/q;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1064
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->E:Ljava/lang/String;

    .line 1066
    :cond_19
    iget-object v0, p0, Lcom/aps/q;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1067
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/q;->z:Ljava/lang/String;

    .line 1069
    :cond_1a
    iget-object v0, p0, Lcom/aps/q;->A:[B

    if-nez v0, :cond_1b

    .line 1070
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/aps/q;->A:[B

    .line 1072
    :cond_1b
    return-void

    .line 991
    :cond_1c
    iget-object v0, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 992
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 996
    :cond_1d
    iget-object v0, p0, Lcom/aps/q;->D:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/aps/q;->D:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 997
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->D:Ljava/lang/String;

    goto/16 :goto_1

    .line 1005
    :cond_1e
    iget-object v0, p0, Lcom/aps/q;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x41324f8000000000L    # 1200000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1006
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/q;->k:Ljava/lang/String;

    goto/16 :goto_2

    .line 1011
    :cond_1f
    iget-object v0, p0, Lcom/aps/q;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 1012
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/q;->l:Ljava/lang/String;

    goto/16 :goto_3

    .line 1043
    :cond_20
    iget-object v0, p0, Lcom/aps/q;->t:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/aps/q;->t:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1044
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->t:Ljava/lang/String;

    goto/16 :goto_4

    .line 1048
    :cond_21
    iget-object v0, p0, Lcom/aps/q;->u:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/aps/q;->u:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1049
    const-string v0, "0"

    iput-object v0, p0, Lcom/aps/q;->u:Ljava/lang/String;

    goto/16 :goto_5
.end method


# virtual methods
.method public a()[B
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, -0x80

    const/16 v9, 0x7f

    const/4 v1, 0x0

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/aps/q;->b()V

    .line 138
    const/16 v0, 0xc00

    .line 139
    iget-object v2, p0, Lcom/aps/q;->A:[B

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/aps/q;->A:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 142
    :cond_0
    new-array v4, v0, [B

    .line 147
    iget-object v0, p0, Lcom/aps/q;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v4, v1

    .line 152
    iget-short v0, p0, Lcom/aps/q;->b:S

    invoke-static {v0}, Lcom/aps/s;->b(I)[B

    move-result-object v0

    .line 153
    array-length v2, v0

    invoke-static {v0, v1, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/aps/q;->c:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 161
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    .line 177
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/aps/q;->d:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 178
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v0, v2

    .line 194
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/aps/q;->n:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 195
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 197
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v0, v2

    .line 211
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/aps/q;->e:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 212
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v0, v2

    .line 228
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/aps/q;->f:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 229
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    .line 231
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    array-length v2, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v0, v2

    .line 245
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/aps/q;->g:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 246
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 248
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    array-length v2, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v0, v2

    .line 262
    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/aps/q;->r:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 263
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 265
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    array-length v2, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v0, v2

    .line 279
    :goto_6
    :try_start_7
    iget-object v2, p0, Lcom/aps/q;->h:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 280
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 282
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    array-length v2, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v0, v2

    .line 296
    :goto_7
    :try_start_8
    iget-object v2, p0, Lcom/aps/q;->o:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 297
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    .line 299
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    array-length v2, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v0, v2

    .line 313
    :goto_8
    :try_start_9
    iget-object v2, p0, Lcom/aps/q;->p:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 314
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    .line 316
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    array-length v2, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v0, v2

    .line 329
    :goto_9
    iget-object v2, p0, Lcom/aps/q;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 330
    aput-byte v1, v4, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    .line 347
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/aps/q;->B:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 348
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    .line 350
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    array-length v2, v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    add-int/2addr v0, v2

    .line 364
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/aps/q;->C:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 365
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 367
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    array-length v2, v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v0, v2

    .line 384
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/aps/q;->s:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 385
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    .line 387
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    array-length v2, v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v0, v2

    .line 400
    :goto_d
    iget-object v2, p0, Lcom/aps/q;->t:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    .line 405
    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 410
    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    :try_start_d
    iget-object v2, p0, Lcom/aps/q;->D:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 413
    add-int/lit8 v0, v0, 0x1

    .line 430
    :cond_1
    :goto_e
    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/aps/q;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/s;->a(I)[B

    move-result-object v2

    .line 432
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    array-length v2, v2

    add-int/2addr v0, v2

    .line 439
    :cond_3
    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 440
    :cond_4
    iget-object v2, p0, Lcom/aps/q;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/s;->a(I)[B

    move-result-object v2

    .line 441
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    array-length v2, v2

    add-int/2addr v0, v2

    .line 448
    :cond_5
    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/aps/q;->j:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 449
    :cond_6
    iget-object v2, p0, Lcom/aps/q;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 450
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    array-length v2, v2

    add-int/2addr v0, v2

    .line 457
    :cond_7
    iget-object v2, p0, Lcom/aps/q;->u:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    .line 459
    iget-object v2, p0, Lcom/aps/q;->u:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 466
    const-string v2, "mcc"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 475
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    array-length v2, v2

    add-int/2addr v0, v2

    .line 481
    const-string v2, "mnc"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 482
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    array-length v2, v2

    add-int/2addr v0, v2

    .line 488
    const-string v2, "lac"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 489
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    array-length v2, v2

    add-int/2addr v0, v2

    .line 495
    const-string v2, "cellid"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 496
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 497
    array-length v2, v2

    add-int/2addr v2, v0

    .line 505
    const-string v0, "signal"

    invoke-direct {p0, v0}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 506
    if-le v0, v9, :cond_f

    move v0, v1

    .line 511
    :cond_8
    :goto_f
    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 512
    add-int/lit8 v0, v2, 0x1

    .line 516
    iget-object v2, p0, Lcom/aps/q;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 517
    aput-byte v1, v4, v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 623
    :cond_9
    :goto_10
    iget-object v2, p0, Lcom/aps/q;->x:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 624
    aput-byte v1, v4, v0

    .line 625
    add-int/lit8 v0, v0, 0x1

    .line 693
    :goto_11
    iget-object v2, p0, Lcom/aps/q;->y:Ljava/lang/String;

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 694
    iget-object v2, p0, Lcom/aps/q;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    array-length v2, v5

    if-nez v2, :cond_19

    .line 695
    :cond_a
    aput-byte v1, v4, v0

    .line 696
    add-int/lit8 v0, v0, 0x1

    .line 770
    :cond_b
    :goto_12
    :try_start_e
    iget-object v2, p0, Lcom/aps/q;->z:Ljava/lang/String;

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 771
    array-length v3, v2

    if-le v3, v9, :cond_c

    .line 772
    const/4 v2, 0x0

    .line 774
    :cond_c
    if-nez v2, :cond_1d

    .line 778
    const/4 v2, 0x0

    aput-byte v2, v4, v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    .line 779
    add-int/lit8 v0, v0, 0x1

    .line 798
    :goto_13
    iget-object v2, p0, Lcom/aps/q;->A:[B

    if-eqz v2, :cond_1e

    .line 799
    iget-object v2, p0, Lcom/aps/q;->A:[B

    array-length v2, v2

    .line 801
    :goto_14
    invoke-static {v2}, Lcom/aps/s;->b(I)[B

    move-result-object v3

    .line 802
    array-length v5, v3

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    array-length v3, v3

    add-int/2addr v0, v3

    .line 805
    if-lez v2, :cond_d

    .line 806
    iget-object v2, p0, Lcom/aps/q;->A:[B

    iget-object v3, p0, Lcom/aps/q;->A:[B

    array-length v3, v3

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    iget-object v2, p0, Lcom/aps/q;->A:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 819
    :cond_d
    new-array v2, v0, [B

    .line 820
    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 826
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 827
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 832
    invoke-static {v4, v5}, Lcom/aps/s;->a(J)[B

    move-result-object v3

    .line 833
    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [B

    .line 834
    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 835
    array-length v2, v3

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    array-length v1, v3

    add-int/2addr v0, v1

    .line 887
    return-object v4

    .line 166
    :catch_0
    move-exception v2

    .line 170
    aput-byte v1, v4, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 183
    :catch_1
    move-exception v2

    .line 187
    aput-byte v1, v4, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 200
    :catch_2
    move-exception v2

    .line 204
    aput-byte v1, v4, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 217
    :catch_3
    move-exception v2

    .line 221
    aput-byte v1, v4, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 234
    :catch_4
    move-exception v2

    .line 238
    aput-byte v1, v4, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 251
    :catch_5
    move-exception v2

    .line 255
    aput-byte v1, v4, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 268
    :catch_6
    move-exception v2

    .line 272
    aput-byte v1, v4, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 285
    :catch_7
    move-exception v2

    .line 289
    aput-byte v1, v4, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 302
    :catch_8
    move-exception v2

    .line 306
    aput-byte v1, v4, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 319
    :catch_9
    move-exception v2

    .line 323
    aput-byte v1, v4, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 333
    :cond_e
    iget-object v2, p0, Lcom/aps/q;->q:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 334
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 336
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    array-length v2, v2

    add-int/2addr v0, v2

    .line 338
    goto/16 :goto_a

    .line 353
    :catch_a
    move-exception v2

    .line 357
    aput-byte v1, v4, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 370
    :catch_b
    move-exception v2

    .line 374
    aput-byte v1, v4, v0

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 390
    :catch_c
    move-exception v2

    .line 394
    aput-byte v1, v4, v0

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 414
    :catch_d
    move-exception v2

    .line 418
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    .line 508
    :cond_f
    if-ge v0, v10, :cond_8

    move v0, v1

    .line 509
    goto/16 :goto_f

    .line 520
    :cond_10
    iget-object v2, p0, Lcom/aps/q;->w:Ljava/lang/String;

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    .line 521
    int-to-byte v2, v5

    aput-byte v2, v4, v0

    .line 522
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .line 523
    :goto_15
    if-ge v2, v5, :cond_9

    .line 527
    const-string v3, "lac"

    invoke-direct {p0, v3, v2}, Lcom/aps/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v3

    .line 528
    array-length v6, v3

    invoke-static {v3, v1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    array-length v3, v3

    add-int/2addr v0, v3

    .line 533
    const-string v3, "cellid"

    invoke-direct {p0, v3, v2}, Lcom/aps/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aps/s;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 534
    array-length v6, v3

    invoke-static {v3, v1, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    array-length v3, v3

    add-int/2addr v3, v0

    .line 539
    const-string v0, "signal"

    invoke-direct {p0, v0, v2}, Lcom/aps/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 540
    if-le v0, v9, :cond_12

    move v0, v1

    .line 545
    :cond_11
    :goto_16
    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 546
    add-int/lit8 v3, v3, 0x1

    .line 523
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_15

    .line 542
    :cond_12
    if-ge v0, v10, :cond_11

    move v0, v1

    .line 543
    goto :goto_16

    .line 549
    :cond_13
    iget-object v2, p0, Lcom/aps/q;->u:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 556
    const-string v2, "mcc"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 565
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    array-length v2, v2

    add-int/2addr v0, v2

    .line 571
    const-string v2, "sid"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 572
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    array-length v2, v2

    add-int/2addr v0, v2

    .line 578
    const-string v2, "nid"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 579
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 580
    array-length v2, v2

    add-int/2addr v0, v2

    .line 585
    const-string v2, "bid"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 586
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    array-length v2, v2

    add-int/2addr v0, v2

    .line 592
    const-string v2, "lon"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 593
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    array-length v2, v2

    add-int/2addr v0, v2

    .line 599
    const-string v2, "lat"

    invoke-direct {p0, v2}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/s;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 600
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    array-length v2, v2

    add-int/2addr v2, v0

    .line 606
    const-string v0, "signal"

    invoke-direct {p0, v0}, Lcom/aps/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 607
    if-le v0, v9, :cond_15

    move v0, v1

    .line 612
    :cond_14
    :goto_17
    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 613
    add-int/lit8 v0, v2, 0x1

    .line 617
    aput-byte v1, v4, v0

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 609
    :cond_15
    if-ge v0, v10, :cond_14

    move v0, v1

    .line 610
    goto :goto_17

    .line 627
    :cond_16
    aput-byte v11, v4, v0

    .line 628
    add-int/lit8 v0, v0, 0x1

    .line 630
    :try_start_f
    iget-object v2, p0, Lcom/aps/q;->x:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 634
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 635
    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    array-length v3, v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    add-int/2addr v0, v3

    .line 642
    const/4 v3, 0x2

    :try_start_10
    aget-object v3, v2, v3

    const-string v5, "GBK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 643
    array-length v5, v3

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    .line 645
    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    array-length v3, v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_f

    add-int/2addr v0, v3

    .line 658
    :goto_18
    const/4 v3, 0x1

    :try_start_11
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 662
    if-le v2, v9, :cond_18

    move v2, v1

    .line 667
    :cond_17
    :goto_19
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 648
    :catch_e
    move-exception v3

    .line 652
    const/4 v3, 0x0

    aput-byte v3, v4, v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_f

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 664
    :cond_18
    if-ge v2, v10, :cond_17

    move v2, v1

    .line 665
    goto :goto_19

    .line 669
    :catch_f
    move-exception v2

    .line 677
    const-string v2, "00:00:00:00:00:00"

    invoke-direct {p0, v2}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 678
    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    array-length v2, v2

    add-int/2addr v0, v2

    .line 681
    aput-byte v1, v4, v0

    .line 682
    add-int/lit8 v0, v0, 0x1

    .line 686
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 698
    :cond_19
    array-length v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 699
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    .line 701
    :goto_1a
    array-length v2, v5

    if-ge v3, v2, :cond_1c

    .line 702
    aget-object v2, v5, v3

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 706
    aget-object v6, v2, v1

    invoke-direct {p0, v6}, Lcom/aps/q;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 707
    array-length v7, v6

    invoke-static {v6, v1, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    array-length v6, v6

    add-int/2addr v0, v6

    .line 714
    const/4 v6, 0x2

    :try_start_12
    aget-object v6, v2, v6

    const-string v7, "GBK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 715
    array-length v7, v6

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    .line 716
    add-int/lit8 v0, v0, 0x1

    .line 717
    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    array-length v6, v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    add-int/2addr v0, v6

    .line 733
    :goto_1b
    aget-object v2, v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 734
    if-le v2, v9, :cond_1b

    move v2, v1

    .line 739
    :cond_1a
    :goto_1c
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v4, v0

    .line 740
    add-int/lit8 v2, v0, 0x1

    .line 701
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_1a

    .line 720
    :catch_10
    move-exception v6

    .line 724
    aput-byte v1, v4, v0

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 736
    :cond_1b
    if-ge v2, v10, :cond_1a

    move v2, v1

    .line 737
    goto :goto_1c

    .line 748
    :cond_1c
    iget-object v2, p0, Lcom/aps/q;->E:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/aps/q;->E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 750
    :try_start_13
    iget-object v2, p0, Lcom/aps/q;->E:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/aps/s;->b(I)[B

    move-result-object v2

    .line 751
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    array-length v2, v2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_11

    add-int/2addr v0, v2

    .line 753
    goto/16 :goto_12

    .line 754
    :catch_11
    move-exception v2

    .line 758
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_12

    .line 781
    :cond_1d
    :try_start_14
    array-length v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 782
    add-int/lit8 v0, v0, 0x1

    .line 783
    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    array-length v2, v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    add-int/2addr v0, v2

    goto/16 :goto_13

    .line 787
    :catch_12
    move-exception v2

    .line 791
    aput-byte v1, v4, v0

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_1e
    move v2, v1

    goto/16 :goto_14
.end method
