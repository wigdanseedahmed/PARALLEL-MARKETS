class AppUrl {
  static const String liveBaseURL = "https://remote-ur/api/v1";
  static const String localBaseURL = "http://192.168.1.37:3300";

  // "http://172.20.10.3:3300/api"; for iphone 14
  // "http://172.20.172.221:3300/api"; GUEST
  // "http://192.168.1.138:3300/api"; LAB TEMP

  static const String baseURL = localBaseURL;
  static const String parallelMarketsBaseURL = "$baseURL/parallel_markets";
  static const String userBaseURL = "$baseURL/user"; //liveBaseURL;
  static const String physiciansBaseURL = "$baseURL/physician";
  static const String newsPostsBaseURL = "$baseURL/new_posts";


  ///------------------------------------------------------------- INTERVENTIONS -------------------------------------------------------------///
  static const String projects = "$parallelMarketsBaseURL/project";
  static const String projectTotalDonatedAmount = '$parallelMarketsBaseURL/project/totalDonatedAmount/'; //:projectName
  static const String states = "$parallelMarketsBaseURL/state";
  static const String localities = "$parallelMarketsBaseURL/locality";

  ///------------------------------------------------------------- PARALLEL MARKETS -------------------------------------------------------------///

  ///------ Get a list of Parallel Markets from the DB ------///
  static const String getParallelMarkets = "$parallelMarketsBaseURL/";

  // router.get('/', getParallelMarkets);

  static const String getParallelMarket = "$parallelMarketsBaseURL/";

  // router.route("/:parallelMarketsName").get(middleware.checkToken, getParallelMarkets);

  ///------ Update Parallel Markets information in the DB ------///
  static const String updateParallelMarketsInformationByID =
      "$parallelMarketsBaseURL/update/id/";

  // router.put("/update/id/:id", updateParallelMarketsInformationByID);

  static const String updateParallelMarketsInformationByParallelMarketsName =
      "$parallelMarketsBaseURL/update/parallelMarketsName/";

  // router.put("/update/parallelMarketsName/:parallelMarketsName", updateParallelMarketsInformationByParallelMarketsName);

  ///------ Delete a Parallel Markets from the DB ------///
  static const String deleteParallelMarketsByID =
      "$parallelMarketsBaseURL/delete/id/";

  // router.delete("/delete/id/:id", deleteParallelMarketsByID);

  static const String deleteParallelMarketsByParallelMarketsName =
      "$parallelMarketsBaseURL/delete/parallelMarketsName/";

  // router.delete("/delete/parallelMarketsName/:parallelMarketsName", deleteParallelMarketsByParallelMarketsName);


  ///------------------------------------------------------------- USER -------------------------------------------------------------///

  ///------ Adding and Uploading Image ------///
  static const String addAndUpdateProfileImage = "$userBaseURL/add/image/";

  // router.post("/add/image/:email", upload.single("myFile"), addAndUpdateProfileImage);

  ///------ Get a list of Locations from the DB ------///
  static const String getUsers = "$userBaseURL/";

  // router.get('/', getUsers);

  static const String getUserUsingUsername =
      "$userBaseURL/getUserUsingUsername/";

  // router.get("/getUserUsingUsername/:username", getUserUsingUsername);

  static const String getUserUsingEmail = "$userBaseURL/getUserUsingEmail/";

  // router.get("/getUserUsingEmail/:email", getUserUsingEmail);

  ///------ Check to see if user exists ------///
  static const String checkUsernameExists = "$userBaseURL/checkUsername/";

  // router.route("/checkusername/:username").get(checkUsernameExists);

  static const String checkEmailExists = "$userBaseURL/checkEmail/";

  // router.route("/checkemail/:email").get(checkEmailExists);

  ///------ Login User ------///
  static const String login = "$userBaseURL/login";

  // router.route("/login").post(logIn);

  ///------ Register User ------///
  static const String register = "$userBaseURL/register";

  // router.route("/register").post(register);

  ///------ Update user information in the DB ------///
  static const String updateUserInformationByID = "$userBaseURL/update/id/";

  // router.put("/update/id/:id", updateUserInformationByID);

  static const String updateUserInformationByUsername =
      "$userBaseURL/update/username/";

  // router.put("/update/username/:username", updateUserInformationByUsername);

  static const String updateUserInformationByEmail =
      "$userBaseURL/update/email/";

  // router.put("/update/email/:email", updateUserInformationByEmail);

  ///------ Update user password in the DB ------///
  static const String forgotPasswordUpdateWithUsername =
      "$userBaseURL/users/forgetPassword/username/";

  // router.put("/update/forgetPassword/username/:username", forgotPasswordUpdateWithUsername);

  static const String forgotPasswordUpdateWithEmail =
      "$userBaseURL/update/forgetPassword/email/";

  // router.put("/update/forgetPassword/email/:email", forgotPasswordUpdateWithEmail);

  ///------ Delete a user from the DB ------///
  static const String deleteUserByID = "$userBaseURL/delete/id/";

  // router.delete("/delete/id/:id", deleteUserByID);

  static const String deleteUserByUsername = "$userBaseURL/delete/username/";

  // router.delete("/delete/username/:username", deleteUserByUsername);

  static const String deleteUserByEmail = "$userBaseURL/delete/email/";
// router.delete("/delete/email/:email", deleteUserByEmail);

}
