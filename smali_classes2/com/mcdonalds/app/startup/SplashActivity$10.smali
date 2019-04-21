.class Lcom/mcdonalds/app/startup/SplashActivity$10;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity;->directBinaryDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/startup/SplashActivity;

.field final synthetic val$directDlLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$10;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/startup/SplashActivity$10;->val$directDlLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(ILjava/lang/String;I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantResult"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onRequestPermissionsResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity$10;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/startup/SplashActivity;->finish()V

    .line 894
    :goto_0
    return-void

    .line 889
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mcdonalds/app/startup/DownloadApkFileFromUrl;

    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$10;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/startup/DownloadApkFileFromUrl;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/mcdonalds/app/startup/SplashActivity$10;->val$directDlLink:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/startup/DownloadApkFileFromUrl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    goto :goto_0

    .line 889
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
