.class final Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;->a(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper$1;->a:Lcom/threatmetrix/TrustDefender/NativeGatherer$NativeGathererHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "tdm-4.0-90-jni"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
