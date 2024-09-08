CREATE DATABASE  IF NOT EXISTS `server_basket` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `server_basket`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: server_basket
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_token`
--

DROP TABLE IF EXISTS `auth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_token` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `token` varchar(2048) NOT NULL,
  `expires_at` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `auth_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_token`
--

LOCK TABLES `auth_token` WRITE;
/*!40000 ALTER TABLE `auth_token` DISABLE KEYS */;
INSERT INTO `auth_token` VALUES (1,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjgsImlhdCI6MTcxNzQ0MTAwNywiZXhwIjoxNzI1MjE3MDA3fQ.dq20HZaTfX97XEgR8NwzytQTdLkhxPQUBV1a921LzzRZJ0mG8IGoPX7L4SO73wnXepyUPOrCUTp46uP3M8KXV96OlDW1YhBYdX0xYDJC8GmBZylIPv9RtsosmUrFzvunfVLCxRJbO3YAv72sEYqhqUYbd5dYNxnk3ZM1hQeMQ28a7SdZSzfgoEJxqI1NAOrf0WRWPDLBhIIbJi48JM-hvB739wCNresXvhTC2YtgUh3C0xmKVeM5NgTJmLCYpzCdzzB7yVeMWVN5qkJgHd1vr3FuTyxE-_dMfqhcz0SLAoNc6fCU2kPiCVMwA1L8DX7ph0gUhwZTjMhLpm2X9k9u_w','2024-09-01 18:56:47',NULL,'2024-06-03 18:56:47','2024-06-03 18:56:47'),(2,9,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjksImlhdCI6MTcxNzQ0MTA3MiwiZXhwIjoxNzI1MjE3MDcyfQ.KdbB3d2LL-ckIk6muX_STqYyXdpgX_7LhXCa_OZa1ncXFI5WuC33CSiGBd26-K5YOaqFfUuoEC1yYlDHg8ZVBuvz9ww7f1Fj0m067a1OPc_BgEzFbzgHCa4QSGtSzQu_Fvt8AxERZU-FiIEPStSqTow3ZtFfhSxNTLumBlxEz6dVT1Y75Z_lAzkLVoeOj6D-JJ33yK64Cst1Er5MpUl6SotqMyz4HMXCzkz0qIvY5er3twN9rc1heqZcedFxKwMDdZYQ5QTY3yJMpte74JTwrnnrHEoqIMfejFn00ybMtwoFwq3U_9FjcDPsQahGXHJiaz_mFE8rnm4rEh9pIDNyWg','2024-09-01 18:57:52',NULL,'2024-06-03 18:57:52','2024-06-03 18:57:52'),(3,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3NDcyNSwiZXhwIjoxNzI1MjUwNzI1fQ.KnHv8WB01SwfWbqoyMv1JtCWbqXZp0alhN77JvJ6An4KowiWr3Pd-_vMLm_WswSuwJmOEEce89Lo8SLtWksFg_OLm4heNemHHBrgFnmdeK5b3RsMOAbhTVe88TtcaPrE3gfef_eEQOGDZsscUcU7skf2HWK2r7vKdBCjtayy108iZUnXldVK-kgYdhytPvTSFo4e_oJRkYllrcWcgFuCHpcVyv5k6eJgTR8EaTqEj-T55rGjR7vGe7Ej0551kjIgU1NoeqUE6mL2RoB59EWk50nh0_nWr6zJvrrBikHEb8JsBVbywpThWk58x_E2XiUHApSDr8TJZGfJePm-vNiCYQ','2024-09-02 04:18:45',NULL,'2024-06-04 04:18:45','2024-06-04 04:18:45'),(4,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3NDczMCwiZXhwIjoxNzI1MjUwNzMwfQ.jj9NiaF7egCJ5lOFxRZ8Voo_dslkd53v2Oj0-IdzmJ6Avc1oM7Puk02-C_zbkzm46e2zhCZKRc7a887ogNa7xlDb26AY5k1cIlb4HVL-SbdY9w5Cldbxu43UHKDK5mIDsNlrCoNGXeKlzTtOCMkpVdjxZYcV83w-ivvXMb5wtaaFBx4HHw_fpYRhSiPmwWZY_t4nDDldCBrcnNgx-dndBn7MeaA4NZ4MfcbUV9hkPoQyKBHrTp6JnK-sFsMn67AQK7iHdl6BxKM78BFBRrRCOqck39DvUyXQlB_Zqmn03hYr_lC0nd8mkJF_-9M_yEZKDr0txz_R8s3YsjpEZn9zAQ','2024-09-02 04:18:50',NULL,'2024-06-04 04:18:50','2024-06-04 04:18:50'),(5,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3NzI3MCwiZXhwIjoxNzI1MjUzMjcwfQ.bu_-AkilWIm45TxoxQuWSd5Pl1Ukepvv_Y47EwULuMHAib_QJ_eJ-Bv5c-qtThn6ae-Md6rL9fbq_G-z0OVMUa4q_r3Rv6ouTWRR63CuVBfNa-i4peGR355QoL4Gb5_HxPdbTZoil187reGLLZwbpRT_bDw4ibHNnOF8zEZEcECjWS3E84_cZCqitUrqdBwoLz0gXzVCkkCTNCgRdvAr1U5XQR7W-fNr9jrnRcZ0RV6EefEKoyHAZxPCd2NxciKZaoPk5DFoCtuxphRKN4BsL_Kdmlcisl3FEpwtSCjXZUOrCs6W70zalr5iIOAmQs1Ekdsw_bUjJL_7aIF1rR2oQQ','2024-09-02 05:01:10',NULL,'2024-06-04 05:01:10','2024-06-04 05:01:10'),(6,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3NzUwMSwiZXhwIjoxNzI1MjUzNTAxfQ.V40yqEymAB13Njryh4hI9LkXwPwid9hQrmbXxvvkDzryOfWuI1vYh1z5D75EOuEtXkbcR6nCEPwim2Bv0QMNxYx8MfvXK6RkTlJwdujOBXyeI2ZKr3R8n0eGwj7pNEs21Y7GiYGXlivGzGp4f6fPjkzdVifXy2FKCgC6w_1mqINN7mnQBoBbDU1kFSkMpWxAouLZ1ka8UuJjiny9s_3DGxkaI9kXF0hzECyGBHflsnDK7DzYk3lLEsdxYshUHl9YTxl5q7ZHgAFRlfoi-_bAKxU3qft4SOkZkmXUak7nm4WireHwPeKNwKGF9ZQmrQ-OtTd7Y_FpJb1pLUTvbWf24w','2024-09-02 05:05:01',NULL,'2024-06-04 05:05:01','2024-06-04 05:05:01'),(7,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3NzUxOCwiZXhwIjoxNzI1MjUzNTE4fQ.W7XD-MBBNvHrE1igl0N2HQoqWfwwKxa5SV2s49Mpl92XI_sZxT1ir-LkRepZbQ_YiU3Z7M-_7iJktAx_kHoqUBAsQx9iyIOBF_eppPnRAT7XWiN15yC-dofWe9sKfojCtDr6Au5rb9ZecUP3zdlLuesqIPp_YtCrUan8NEunAma7hzrOYNORDN1ENTILsBTLbasWAedqUjZYZ2MOBu9SKMNNZqCJ1voN0z5IK7QxNlKvLatUP-ugMkzUCqkUa1984Mn2Fm2BYY57hcDgSPOgUigg1DBxPb8AS5jiEl4JutgAKoxtLxX9iqOk1FrsEFNofcRn0QxZ08CFBEjbWEY1ew','2024-09-02 05:05:18',NULL,'2024-06-04 05:05:18','2024-06-04 05:05:18'),(8,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3NzU3NiwiZXhwIjoxNzI1MjUzNTc2fQ.etmmzk-rQZK8qjXk5-hh69YjFQVJ3xv7G-IKubvcHVG2SATTK4eX5ReNoFWOOLxPF1UNL6FhK_KPUr60-ToETKYUSNVT2F55Ph0CbACdScxLFeyDUgu0Nd1zW1ZAr0ZCqg9TKWXyp3ja42XIylEdOFXPY3ydUWtC9BTdy2Rtq2cHFxwoPzI_dtK2e_22eciphIwPUHUUUtI0if3Ss8i9wabyilZjVpSANu_wSnYWv99J_mT2StKJ8awsknwrEba9Z-ndbAi_KYqbBpod_HsFEKy3KkXkHmzIgmX0OuEdbgykNoZaOz_HOHH0QcxV1TmRV9KzBbZsbXRr3zL1JFieaQ','2024-09-02 05:06:16',NULL,'2024-06-04 05:06:16','2024-06-04 05:06:16'),(9,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3NzU4MiwiZXhwIjoxNzI1MjUzNTgyfQ.VNz1JtihLJSP2bGcs1X-9d1IvA5d06n-fUzkkJVhDJ1YSw8mzNau6wT0px8PDMxadTq59iQhsNQSWpVWrY6uwr3gYTtgQ2HCWRROEeyIjLduZZNpZIXNWEr_BMzDfZtvu3jHXiRirK_Rw0qKq_v_mVRDy4-yhm4MWv6eaSJAGGceNnBFvJRovq0k1lAhF7wX3AjeZMg3pUspJJgKip8k76na8hRK9mVfQDh_8u7wRJG-e7moKhiJY73YhqLwg3GHwzE8YWU9KPLJeK9iDnVSUx0Rxp4A9_rGYA7iRORbi6r4CK7uacRmNdjaSry2YkMmdUSwHyzkZBTfV3O1zJMRgA','2024-09-02 05:06:22',NULL,'2024-06-04 05:06:22','2024-06-04 05:06:22'),(10,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzQ3ODMwNCwiZXhwIjoxNzI1MjU0MzA0fQ.UitFAibwosmuobUS9azx1caN3u0CTLKFBNVnzbXz3Xb58OBWb_-o9-KyThiDGPSJ0Eg2A5Pyde15Hk_nzjn_yY9cJY3oBbTAkofM5wzz5QXzcaRk30fsDX35sZk2N5OO-vqVhkrLauW_Jag48jjCH_WKTECPJ8yIxKqlFCWlK8ple8WsQ0njcne-c6ENvPCQoAxC1wfvZI8HapneDPt2v_jib3AwBr6zOwOyjBwKbMy6AHZEqD5fEtArOib-eDdntPavTIzfwfBdjaYo_dbOPg1KBrAXHFxr7PzfER0G8jn3iPGg7DbJviN2A1KK_uUxckZCRg7yebok6kETHZNYMg','2024-09-02 05:18:24',NULL,'2024-06-04 05:18:24','2024-06-04 05:18:24'),(11,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzUyNTY0NiwiZXhwIjoxNzI1MzAxNjQ2fQ.aKxioLNoZrWd7NaS9ITgia2Tc77hFajGM1xMplJHUClwKyoRFBGlEDAIWVsnXQ8JvtR9LgWHHr7xqyFWHK-HwHHD-t5cBh2HRh7gopQtPIOKFZXI4Vn7zZQG8pNM0F0M7u6VhwGoCXhmMitJy4wAVeh5k4Q33J9yBx-_YmanIWO_Z_gfiXtn7ouKV8k-T6vx8-kpCeC12HZETrCSYJUGaDYg8vrdNCgxJmIrAaMTs-gbOirLu8DsqgSYTFOlgyCKVCDQ2N9ikBJ7gWjPBmgILmCSXR0PJrdbdjOs0fEBKTd2dhNA7CaiHT8Zh_1pi4L4hVNHIFYeHZQXoMrTtWQ4oQ','2024-09-02 18:27:26',NULL,'2024-06-04 18:27:26','2024-06-04 18:27:26'),(12,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzYwNTY0OCwiZXhwIjoxNzI1MzgxNjQ4fQ.Kp1GtXyoiz9-ApBQrJeIxtvWvh3ffb1nV8Nqlp-rHBfA6YvWnBFa579JzpsZXKKDx5-QKV4wG4ltZ9ud_toMXsaFTFoolOY-a-3kPS1pjTOmaLm8dpRFHmxWC2rex2JBFNIcadMRiafEovIu7kj6s0wBqM8Lgq7zFCGlDuvq2jpWN2qZ79zaawo7P7tGD9ixu7MvO4NkggHe4cssgGdBmrmT-Go78ZRi-pCWfF0OBAkMr55Tmc3JTJhPl4_p119nW18ZCwsNaUBxAu5lZ6hQ-3p7URSRJVisGJ-LrsbBcjNaFJNcC3dd_8U6dI4HyLoVfZlGIsQ634sB6y-LuZKvQA','2024-09-03 16:40:48',NULL,'2024-06-05 16:40:48','2024-06-05 16:40:48'),(13,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxNzYxMjQ3MywiZXhwIjoxNzI1Mzg4NDczfQ.MqA9ufybXZkUg5TLgH_qfiJ9N8c-nUcQ692qKoLcafEpcmrLslf0xVuvVBm3aWR_2a482xVZlZ1znMTm0abj1OUJvYow09uxZzxREBIY-lQPd-oUvROEsNQTIu5LYq84r4m65OMJbg9yOVMx3hGMTDnC_iNApyiqdpqBPj6olG7bv1_wBaK5cTc3GA2nP1ac-eaAjEpUZGSJYKNUaXL7T4e02kBz6R_DMzT9zHpaZp94MW98fHPb0p2LwkHIKHSCCKG1sdunlGXPQ8oPCcLRr9Sm1NPF5Fns58DAhgryVmXg-M1ytv-tubUcjCpnTtPkNJfO5J7EyfFqrXOPtKDbxA','2024-09-03 18:34:33',NULL,'2024-06-05 18:34:33','2024-06-05 18:34:33'),(14,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MTc1NCwiZXhwIjoxNzI2ODI3NzU0fQ.DPe4IUKmNim7DRTqiv8pDARqoP38SrBoXQY_MMYbd7aCYhKVX1BFhya0kb8KjceM1suY5mLtEZk9ymmX-n94vfOfdBL1Di5B95HJKmDfR4hS_HMiMQkSvS_wb2GNtJRGqqQcAwZh_G0b8Qsc-S2CkkVPKgsxQoMAKlLzmYPzMZCgXYIuVIDk93Yr5AXY8bchVrZAZgeCrmnZstMOJzwRH_JHwNSO9ktxMYMkdDVnT9TCBRNUeGZJ6FoQ7Al3mCfwtFnfgqYGwg3pBSUBNCrVIiYsV2AjKXgnaAr-twIvNu7n6gOCCu9AOp-lIL1yKIYB3LlufyGJlMJ5gupTSA4x5w','2024-09-20 10:22:34',NULL,'2024-06-22 10:22:34','2024-06-22 10:22:34'),(15,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MTk5MSwiZXhwIjoxNzI2ODI3OTkxfQ.Ratpfspau13S6aM43Z_a7_-ccC9oj044DPEc0f1V5uA-SNkL_W8Mz-efpwhfMJ2J19GWUsU9BUQ_lrJIjvxz7QBA_GDilVHObwb23M32dGQyUqqj-TtKrJzjg_cQuI24913vwyaTt2PtqDelNiXTbGGdr4EozO1sbbnZ7yoPdH747llPC3OUeiu1ZyYYFC6GBqRLOoo9qO0x1-20aBNqYla0jfgwJySnZbZwCqkJRYnJSkK6I0jvd3a7KghX6NCqdXkxZpA7EYDlMWPp81bu9uvk0PV2qxMNuWwRrVMXEIwWY7fj2F4c43OdTAWLuY9FOab3vkdEFqynTenSephxyw','2024-09-20 10:26:31',NULL,'2024-06-22 10:26:31','2024-06-22 10:26:31'),(16,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MjAxNCwiZXhwIjoxNzI2ODI4MDE0fQ.Px6w1PorCnCI1TI6_UNFfvYqXR2srwkVAQtCdTuvMl_iIeSax6GeGJl0GnHrraskgpHed4zyoKD4gDHJLa2UGGoOgzBleoA2zRapG80B6fd7tFvaRE-AjKilyNkH3JE77Zil-HXgiAKgj-aGl89v_UimJsnNX6HhZE6ooHFQkF9aLjQrhMfQvOV2bujZwv_9lUtKFd10UB5y8BV6jbuWfGCmoW0xKqJWpa2YWkypY8qf6paUa-cD9suOuRqwoolFmY1b3Ck_GyCBUTK3jdtATuV-5Sf6gONJpP7DqmEPFv04M1cWxe_xRbSRw_Upt3DtPRZxikvQQHhrFF_nvchLFg','2024-09-20 10:26:54',NULL,'2024-06-22 10:26:54','2024-06-22 10:26:54'),(17,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MjA0MCwiZXhwIjoxNzI2ODI4MDQwfQ.dChLV97RVEt1bo2VyAN_Et1JXkfDr2Xa9Qi2p17hXFiYd9uxzLxz80VJsKO93Xp9AIhDotyi_9ii7Ak47NArgrvnf5awZlrwTCqv5lsJnHEdXpyRniZBVYGtHNC9_yC-bD5KgWOIn3zBPEMVyIgr0pFnQzfErx0RdfpBSqnVcp_9rmJnEHnsKu_WuEvYt7AboA0GsjsMry7-taV9spM34NZHmEQAGmEkKQ8mWa9hMjrFC6_kEWEy9AjmBKHh3g5QSVljf83nXJ43RQ8IETdGgSpeo0ecsrLgqYYKLlCjqpKyvw0o6LkY7oWKzM43NwQT76gtmj9dy8Gg3C63UuUK4Q','2024-09-20 10:27:20',NULL,'2024-06-22 10:27:20','2024-06-22 10:27:20'),(18,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MjA4OSwiZXhwIjoxNzI2ODI4MDg5fQ.YMUuV07tNVVO3aUynmnPj1vPle0nvHl65a3_spCEopKpDfl44xILuWu6qQ5dbcw2nLcXawwFYDwTUqU_tmv5hXf-4tNe_gaFvNGGYC1p8e6H0GgTpwf-tUa8SRohsM0lO3f1Z4GQf88VFCHYXceynfKGpFpGrx5bHCEa8_Fpz-_RkaEaMls6nb3WuRmidAZPn53NUxGQ31vev_ZwLo8026WoUH-wW3jBraB3-CrjsXQWjr2KlFlUtRjPN70ehUMFpiAdCQFEV1zZfs0abKojq1IS9phkJIYY5X9KFceWGO9rfkwPoHjD_9NC5ls_Oqm_EK6wr7gVhKlRwm_0kv3NyA','2024-09-20 10:28:09',NULL,'2024-06-22 10:28:09','2024-06-22 10:28:09'),(19,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MjEwMSwiZXhwIjoxNzI2ODI4MTAxfQ.HCaTAVaXKS9vr2VIj5gcedJyJXJpD2OWtasU605boKvLUTqN_d6_zsa00EMNG3fN8oaH6XsOFOXpPfLRNePNACaSYvrGpkTdkYZ0exm_08cZpNjjxOwPAV3y_8jsdDR58IGAU9Uel9f7hbzrDyN_awg6P3j2jAh3KVJOVhm9mz6xqBoaWysEVO83YUZ3mkk8jNcYQbmWQLPTrpJm7m1fcMYtklyWlnzSd4V_DXP5j4ZkrdJ3J2Gd8XnS52hOcBMpv746rwqEZCUOOfJFHzLIqbI0n1ny-EvbriZ2Fl-IXh8XsPg8PUacSF1Mn46TMRd6tTNOHXj-WDPrEnK_WGCsTQ','2024-09-20 10:28:21',NULL,'2024-06-22 10:28:21','2024-06-22 10:28:21'),(20,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MjExNywiZXhwIjoxNzI2ODI4MTE3fQ.O4mr9Yc_LupYhembep3q8ni6eKkv4q56C0r6xl8p0QPi9eUfM2tRNnBiMvaslTBVEYsxkN1Myv2dqj_sOZV4rdbpPJjxjQRVV2qnZoLvlnaiT16buOJOeF_8uTHFo4oj4TbMRP4eXZQCTr9NqV-2kL13mnffTQQIQje4OsOSR64tpRaXDc9nxgdK5JRx8xisKI6lagpZAE8ooFwre9xyo4SkXNsEqHAxkpLCFbI_f8IFu41zNto-VwMwyDYHIDg_soJAn8QfPKXaj0ZMb7BsSFYiYn_gdfJl5ecD20P3XvLSBxmG3yKvXFBXBxFIdhhy4v6CDLUf-NhN4E3rqN3U4g','2024-09-20 10:28:37',NULL,'2024-06-22 10:28:37','2024-06-22 10:28:37'),(21,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MjEzMCwiZXhwIjoxNzI2ODI4MTMwfQ.TRE5lgYzHHv6Vcpliisf2lWEXrUf359j5rOCyiXJXoimlUi0UMs_rkT7FuKxL2b1q4fQ4ri5L3MV0B5xobWegRrPlCwfbTHUFAvX97668I9ifQVE3zE1JQEuumbiENEVts1ly0AWxorF2YUzYTEh8EE9jdaa5KN0KVF2Z8m498R-pMhCdchIDS19NRt_8h9euXLrfO0LPePbY5IjBc0Dv6nhkZLNnUSGDzciuJs8TH_xqpUmNce_17fItk-Z7jSQhKLhsixwLm7S9f1G7i4Qg8YNYlr-7V4El3Fqm4xki-g9lvMofwM9AjczG6613NdN7zuRq4vxKwrVMBT_bNfGRA','2024-09-20 10:28:50',NULL,'2024-06-22 10:28:50','2024-06-22 10:28:50'),(22,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MjM1MiwiZXhwIjoxNzI2ODI4MzUyfQ.Q1UBEdL3ws83XgGtnBy2fRVUy4_XLoeMmNPyIBvZV9Df4Zyf826sjfofXn_UAQ7eqeH425XZHrrU4bg582CNM4-PGN4_thig-AQAeG2VSzJglLheTfagSE73nWfFB-lt2NanIxq-BjviG7CjlaJwU7Kwglb-yCCToSAXCtrw-6LwPKIyrXzFui2fluNdJGjut1uts3HQofLYs_Y4LzuG0LPXkO7b748_Yz9h-L1X766WvL-KsfET6DbwXPKNZR5lUNzqC0lq8SDUx7At4pkxG3oPe9CZdygf5kEjmG0L66KzzL-4OBQEJCdFQmH3GTKumiOS9nz4vytxJk1dZuPA9g','2024-09-20 10:32:32',NULL,'2024-06-22 10:32:32','2024-06-22 10:32:32'),(23,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1Mjc1MCwiZXhwIjoxNzI2ODI4NzUwfQ.EjHiacr4jl67w5rgyPWbEG0Rpd-y2bZ-EaKgqrZPgRhF3vKCftcH_hEF_FFkBRGLS93lce8FjjL1c1jb7UXz62u4jrIR1qNCpwolCWlZiOTGYRNChrbG9WrsjMN1z4kIAkWynfT-rzO0OnAxl0MFdDrfq_D6E6gY8HFp1cZSDH-FPZFUApSmlyrv0lXOH4XnbLNh3hJLwPDavGcb94zaL67iafhm5l1kI3ViVVcey_YU6-aTxjNVnaTB-cZKlGzNqvA5TiegiYaBimkCFXTgx_zMbsaRrw796dAVtDL4t2KU-QrsUFjZ66T9WBProsAP9pz7o9ddBp5bctfzVx4mAQ','2024-09-20 10:39:10',NULL,'2024-06-22 10:39:10','2024-06-22 10:39:10'),(24,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1Mjg3OSwiZXhwIjoxNzI2ODI4ODc5fQ.R6HisE3FOBgXG2QHpbXgbn5HEmjBy1DVOnybIyL0A9lBdj7cvdGU1l8HilKnpV56FyhKxzVH_ekX5GEfZ262cH1NMzsdZBqEMQsHkF-zXp2L8DFuD7yeaEzlMjQhgc6gFFBTJYgaSCDTsubtJVt4_TK1xz9aUP1e_zxgFrkrKSH5pwKedt643tizDGsdEFXSD9o4ivxPJiQvXQLuacrr3H915D1v41TOdkbMu9TDycJrS5toB1W-GcgjWnwVFDZ_tD6jGmWScd0NcZcOtedyPwtAxD0tMATp9spb36BN-eW2MZcUBsoSnnjsi1ysoa13tnkfvbNpAofmzw5Rx0HYOA','2024-09-20 10:41:19',NULL,'2024-06-22 10:41:19','2024-06-22 10:41:19'),(25,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA1MzcxMSwiZXhwIjoxNzI2ODI5NzExfQ.GVM6pCtKzgZIQ33AuIfqtrOhMEw1CYX4po__Lf99ReRt9CdyHvMEYsmTnBp1lKXQA_jfz0HPJt112wDyPcQ4N05nreYQ9NzYz0UY7S2AScgrqnpACxDB9Qdzt-aDO1uQ_Q4TsZhth_FviL5LvjFnLX-wQdJRyXXgM4pCeHA2dai1q1b9IEakGsgeXH9L5nw80RgidFPogRbxAbIoVZsnguI64ZTZuC0UrzhExyT1Z8DSXx-KXoFKeZrPuFHf3vMxh8kdK1AZBo7HhJQiZrvXAwfdA0N3lL7Sfk8PkvXSN2iFDX1Zqtf0KwXIoSLhYdDXZ0sGkP1R9FXXY4AkBP_c0Q','2024-09-20 10:55:11',NULL,'2024-06-22 10:55:11','2024-06-22 10:55:11'),(26,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcxOTA2NzU4MywiZXhwIjoxNzI2ODQzNTgzfQ.PInTm5-vbUpug9Et3L-Iu9-mds1bEmg8KS3X0gC_2UJkOrw3KHAD8IyP6sUgksmpIniOfi9n--J9GJTBELcc_zXQTq4CCYOmz0ZBbVaX_AYwTCYpc0t75Sqj_vsTadSeUbLEVN4tQybMm1Qa6dRuL_nIo6tGsiCgr0cSmqPhdvSRNPbpDiI1GSQ20Jm65VJWM3iwtjAzP3tv64v_EnZg734uSDXAD1mxSF-Sk1eqEJLXYvd4BOp4O23T1sxZwZI_vdAkWO-1Gz3D9DdM7A760d-X-dcf4d0qYY9Z_w6EuKFo_MzHEB_qGiJpQ4kiR9vg7HY7TumR7Y3AOmEL9u7CBQ','2024-09-20 14:46:23',NULL,'2024-06-22 14:46:23','2024-06-22 14:46:23'),(27,10,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEwLCJpYXQiOjE3MjA2MzI5ODEsImV4cCI6MTcyODQwODk4MX0.WN6Yq86xBkoqaXU7DyBhNid9J5zZt6GJ9LCFyUpS2JLF6Cmo5D1d5kDzdT-A9nucP8sRqbRKBm_QpkWwdM1iBkT2Vy81QClTMHTCYUvgn_1wNiOUVcJzLnSd4PfOETFLWhQYKm7YhZkIZv5Tt11EoLkg5E0Rrq9oWlWyQ53AHha9qkA0VGKYJFH8_mTk6TGQu0mYvpt1Eioff6aUxVQu8Qu-Wr_Af-lVhRU8e_MkKtRMfX9r3Zqs7pGAG-WlM0KZhcqut0PDV71U9aONIh7ev8mcVCIdymzF-W1TBRrh_AGzu0yE0vA_b488lysBHZmWWjuEdSaevj76kGxkzpkTvQ','2024-10-04 06:39:30',NULL,'2024-07-06 06:39:30','2024-07-10 17:36:21'),(28,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyMDU4NDk1MywiZXhwIjoxNzI4MzYwOTUzfQ.J6hNYTAMCKjDUVf5lYVZPmA28cOMUwDSC5KFF70_wRbEkVO_55JPAvBtmsvzQTNWUkaT7h4X9MTMaFQ7FdAEKO9O-t5HFJbyhADr0xz6YoJ-0DfbONToE6WbvRGbSWw5KjaCt7NqsKCbO1QnRtCFe9As96qiqNvkeGJM-er6f3K5unypUpe75t7HhlnkTGpqoltEEnJcAZKfR6ExBearQUE_tSsc69z_tzgnffV4BqZoBCg5Axty-7hqM_sKSuy3PfxGXX9BsDbGO2KLnnfXCn8XjQTbh_6_zCmoLNgQEJt0MZs-VLdru1xhOLeeAJ6SNa3S3jUlPv5IGeYMQY_rNA','2024-10-08 04:15:53',NULL,'2024-07-10 04:15:53','2024-07-10 04:15:53'),(29,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyMDU4NTAyMCwiZXhwIjoxNzI4MzYxMDIwfQ.k950Om2OmCeI3-xJZqbg2h1M9HgMd4g5ttHI0ArZkkXWxLyywudDrYhA-hsz3LxDZyIfZk0EOuHfrlN6Gxhiz_AJ1UkZT7iGqLsqEZA76_59Hqd2-ZkTONgR2nUsOo-Chk0riEuciD5OGkByvvpLO2qT8B00mgeZVTgq32lQWIOt7Ka0Sj9BZSsEHvfgeKfM_n3v5uvY1nKCpFiyINHdhy2KRaaAs4iEzNiGVOnOVj3Ndk427V3PeHIVJr4mOYeFn7YqWOWk5KfEUd54KNbF6xgRIkv2THomUja4jBvnZU1mkOmMAAp5zUrJ5lohkooQ34wRkmY1IRMKW6EFKQVAsw','2024-10-08 04:17:00',NULL,'2024-07-10 04:17:00','2024-07-10 04:17:00'),(30,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyMDYzMjA2MSwiZXhwIjoxNzI4NDA4MDYxfQ.W55qQVLPm_aFdRe35yhSeNsCxBT3PFOiciUnyK1k8ULxQG8EjKmfaWer06it_0XszmjARpoBvjsuRlRYEEitiz6xwwHhhhI5ug2iF1TYQvMum4JP_vkJe0WR3YwN6MFLEbc57D3DF97iSec9kndBYNkGyinB9nSo5yW6_j0OR00MtBf-RuG1HlKCrZJztyM0u-F6OpiG8WH1W8SupVBH_-lpCXu9KxBLCgp3ovq2ozQj5th6SBWt3dk8pMG1IK-rAm-w9zguVgshS7CdEhCDdVRcSV3brmqSsXMztFZLwLnSGrdq7YgKr_Iu66ODMpvrSK30KDYieK50-K23sQjvzw','2024-10-08 17:21:01',NULL,'2024-07-10 17:21:01','2024-07-10 17:21:01'),(31,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyMDcxNDUwNiwiZXhwIjoxNzI4NDkwNTA2fQ.b3TLu6NGkkvFHN5zB1fFwgFzS_mdsCBwRUErGaTNwZXeDqv0lG5i47F-o7-sn2_uZh9jslDyckFA5CYk--PPa5ietE-eu9jz3DE4_PdItnhT2loNuWYnwGAVWIGKpOSw0EkaRvehvhbHhjzEMNbfZtRs-7eJ44mPv4O8q52KW9PD2VOoJIExxGyNxin-xJcD10qrqqURubzTOe-tUsgrhp-MHNHuNYPX6GiiHFec1ptzOVtbyREi1FnIzq4Z-2jYoPbDJEixP6V5zOcLoxOtKbLntGf5c0CxmogBWUc1Hn7GO93g-C-nNe79g5h2fy0R1Wi-VonqspMhsS0SlfIU6w','2024-10-09 16:15:06',NULL,'2024-07-11 16:15:06','2024-07-11 16:15:06'),(32,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyMDg1OTc1NSwiZXhwIjoxNzI4NjM1NzU1fQ.XjXBKBAw4WdGJEcxTMCFO1ud91JW8oQGW50wz00cB5HDrC23hcnZ9rUl0w-9sWknWu7-I1ILoJZ8-bklv6kPtlczfi3xrpiyyFduCDvgHwGAT4yBclig7hKLCIHXsMQ84spHoQr5xbQUAyZ3Q-QRj_jEKRtXULQpj2O82HR7VhqC2GeV7sCdm0RT3E5EdEv8jI2UcGAzaZejO_WyjmfiSEfwUaVYd1t21AnQ0vRBQe_pfd24hcFVrq5efHcALi81ziZsLWLlivbBM1g_ro5_6D9qzHZE4HNcotYq2HbdFdR75LFhrUp_zz1AtUOGdWpnpqglJTyVxWtwu8gvbDxF9g','2024-10-11 08:35:55',NULL,'2024-07-13 08:35:55','2024-07-13 08:35:55'),(33,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyMjc3MjM1NCwiZXhwIjoxNzMwNTQ4MzU0fQ.FdRIxIRnFqIDo-aV8w-44sEEGRscVBpUx4jvGXMPSLSJxoH8sT__2LX-Jvo9qnvC4wk96P8BAlCfnTUuus1lyGchhA2SjQub2qRwo2ekh1U6UIbyKRNod9wXY8mtQ5KTKZSL2VTd5UcU8QY2-4OH1SBaxIfoIwdJgI6xtcGZNFi7my0R4B-v2rHHZIZChi9Jc2NiON6SAzpA-QrM_L912INXM_txl9tyDy5leAYECznjThCBxcDQdhP65UMcedDN_4_dFmXf169Mbr55xe6Kf8GnoBCU-6AauAWd7WUh0oyKUsQU8XCWE8UKFB02QJUY88VPXkLW-sOgvLgpbqZkVQ','2024-11-02 11:52:34',NULL,'2024-08-04 11:52:34','2024-08-04 11:52:34'),(34,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyMjgyODg1MCwiZXhwIjoxNzMwNjA0ODUwfQ.XZZ_PjNyJlXHZ0KyPBpea1LfiLoahFm3YYkyT0leoZ31mrKTFbhcznqRWEYrulr_9kSbuhYFtVCUask8E0Qrq3sDwJPA4P-WYMmfuc4jL5I2OCYCrb3OJhv96Is46rkkbT8XnkEWtDj00iGQBsZWJEqX0RRMNGxhfC51h6Mebz74MCB9TMAbY6GZSE4gG_JuRRNM2C-meo-9H8yxGKm81m6RgBEcPuRR9YwHzJpFyCp4JAo0XWXZMzZTY1GCNgGaEtmHHs4SCf4TcEyv4qaIq_8YsfnjmuKcA_VY-tVh51AfRcRKGJIDNZpa7fUq2Z4v0AJBWXmhZsQe_iNdd8tK1w','2024-11-03 03:34:10',NULL,'2024-08-05 03:34:10','2024-08-05 03:34:10'),(35,NULL,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTcyNDUzMDU1NSwiZXhwIjoxNzMyMzA2NTU1fQ.OzByfuHWrNx0f-V7eMkAHtIafZ0C8hgSux3c0rPafOEjkfRda6Tv7rhoQJya9difouSInLDGDoUe3eTpSKYqJubjgy-DlAq7IhVLwGUksDPupKHFQnPs0lQVqOeEG1PTcpZkPPgWepDW90bMc4xci-vrOZiXSKpWSHdfANy2uAg3aLbLbHxJzOdnKzokdXpsEUZjLzSrNw5K_EE09Gk0xLiyiKeLVZ3biEXh2OoxHap0-Zc8u_doPca-voVDaQPtMfUEsvvmB5vp6IpzGqc_jOmOeop0ILRzbNO7eoFhVJBtaOZzx5PdbxhFpk50wDhIAmNNdVmsGPZf1wZgmvswOg','2024-11-22 20:15:55',NULL,'2024-08-24 20:15:55','2024-08-24 20:15:55'),(36,11,'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjExLCJpYXQiOjE3MjUxOTU5NzQsImV4cCI6MTczMjk3MTk3NH0.K0t4JLQvV9yPGwYBKlbKUYpKNmQnBSMWRF6hN37wORePD6Utl2r_xmbPVJbQAnjN_nB3zvJyNfGPI-Kq3BfQ_OhYa_rhgdCKY2d0JnbpyZQ6MjhYJLx8bULnXjW2sxtrrej4c4p6h5w7SJ-f75d2F5hr1iksL50wr3PIhysiiNLFd-AAKnB-mShd3GZ7vOpW1BSOiY28DDyyTjFzHx6BuaaGaninZaEzhKp926p2L5YZ7XgphAcwDl8Epmc1Uc4yXAvD3VFyZTSn2f4vPg8UtFNHStjGCwPeF4ERXW0ryi7h-V6DfJIGGCy9s0CsCUCR1fGlo8vfM9X490iyVhcsnQ','2024-11-30 13:06:14',NULL,'2024-09-01 13:06:14','2024-09-01 13:06:14');
/*!40000 ALTER TABLE `auth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `all_day` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `calendar_events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_events`
--

LOCK TABLES `calendar_events` WRITE;
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
INSERT INTO `calendar_events` VALUES (1,1,'Updated Event Title','Updated description','2023-12-31 12:00:00','2023-12-31 14:00:00',1,NULL,'2024-06-23 03:43:08','2024-06-23 03:45:02'),(2,1,'New Event 2','Event description','2024-06-22 12:00:00','2024-06-28 14:00:00',1,NULL,'2024-06-23 03:43:44','2024-06-23 03:43:44'),(3,1,'New Event 3','Event description','2024-06-22 12:00:00','2024-06-28 14:00:00',1,NULL,'2024-06-23 03:43:46','2024-06-23 03:43:46'),(4,1,'New Event 4','Event description','2024-06-22 12:00:00','2024-06-28 14:00:00',1,NULL,'2024-06-23 03:43:47','2024-06-23 03:43:47'),(5,1,'New Event 4','Event description','2024-06-22 12:00:00','2024-06-28 14:00:00',1,NULL,'2024-06-23 03:43:48','2024-06-23 03:43:48'),(6,1,'dsfasfsdf','asdfdsads','2024-06-23 00:00:00','2024-06-24 00:00:00',1,NULL,'2024-06-23 04:59:16','2024-06-23 04:59:16'),(7,1,'dasfdasfdsfd','dsfsadfdsf','2024-06-24 00:00:00','2024-06-25 00:00:00',1,NULL,'2024-06-23 05:07:53','2024-06-23 05:07:53'),(8,1,'','','2024-06-23 14:50:00','2024-06-24 14:50:00',1,NULL,'2024-06-23 09:20:37','2024-06-23 09:20:37'),(9,1,'New Event 2','Event description','2024-06-22 12:00:00','2024-06-28 14:00:00',1,NULL,'2024-06-23 11:19:33','2024-06-23 11:19:33'),(10,1,'New Event 2','Event description','2024-06-22 12:00:00','2024-06-28 14:00:00',1,NULL,'2024-06-23 11:19:35','2024-06-23 11:19:35'),(11,1,'saddsdsfdsa','dsafdsfdsfd','2024-06-15 19:56:00','2024-06-28 20:00:00',1,NULL,'2024-06-23 11:26:48','2024-06-23 11:26:48');
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ftp_images`
--

DROP TABLE IF EXISTS `ftp_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ftp_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `original_file_name` varchar(255) NOT NULL,
  `storage_file_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ftp_images_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ftp_images_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ftp_images`
--

LOCK TABLES `ftp_images` WRITE;
/*!40000 ALTER TABLE `ftp_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `ftp_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `product_details` json DEFAULT NULL COMMENT 'Details of the products associated with the invoice',
  `credentials` json DEFAULT NULL COMMENT 'Credentials associated with the invoice',
  `utr` varchar(255) DEFAULT NULL,
  `type` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (48,1,400.00,2,'2024-08-31 21:03:02','2024-08-31 21:09:58','{\"os\": \"windows\", \"ram\": \"4 RAM 2 CORES\", \"port\": \"\", \"type\": \"VPS\", \"ipSeries\": \"102\", \"password\": \"\", \"username\": \"\"}','{\"ip\": \"127.0.0.1\", \"password\": \"1234567\", \"username\": \"ezmohit\"}','12345',1);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_records`
--

DROP TABLE IF EXISTS `ip_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` tinyint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_records_user_id_foreign_idx` (`user_id`),
  CONSTRAINT `ip_records_user_id_foreign_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_records`
--

LOCK TABLES `ip_records` WRITE;
/*!40000 ALTER TABLE `ip_records` DISABLE KEYS */;
INSERT INTO `ip_records` VALUES (20,1,'127.0.0.1:3000',1,NULL,'2024-06-01 06:53:38','2024-06-23 11:54:35'),(21,1,'127.0.0.1:8000',2,NULL,'2024-06-01 06:53:48','2024-06-23 11:54:35'),(22,1,'127.0.0.1:9000',1,NULL,'2024-06-01 08:05:29','2024-06-23 11:54:35'),(24,1,'127.0.0.1:12000',2,NULL,'2024-06-01 08:08:00','2024-06-23 11:54:35'),(25,1,'64.227.142.201:22',1,NULL,'2024-06-01 08:13:43','2024-06-23 11:54:35'),(26,1,'142.93.221.139:4321',1,NULL,'2024-06-01 08:13:43','2024-06-23 11:54:35'),(27,1,'64.227.142.201:221',2,NULL,'2024-06-01 08:13:55','2024-06-23 11:54:35'),(28,1,'142.93.221.139:4322',2,NULL,'2024-06-01 08:13:57','2024-06-23 11:54:35'),(29,1,'127.0.0.1:1',2,NULL,'2024-06-01 10:33:26','2024-06-23 11:54:35'),(121,1,'139.59.31.117:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(122,1,'142.93.217.71:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(123,1,'157.245.219.3:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(124,1,'139.59.2.188:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(125,1,'142.93.218.141:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(126,1,'157.245.106.64:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(127,1,' 134.209.156.106:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(128,1,'152.42.218.97:4321',2,NULL,'2024-06-01 15:40:46','2024-06-23 11:54:35'),(129,1,'139.59.59.4:4321',2,NULL,'2024-06-01 15:40:47','2024-06-23 11:54:35'),(130,1,'64.227.133.91:4321',2,NULL,'2024-06-01 15:40:47','2024-06-23 11:54:35'),(131,1,'134.209.156.106:4322',2,NULL,'2024-06-01 15:41:18','2024-06-23 11:54:35'),(132,6,'134.209.156.106:22',1,NULL,'2024-06-01 15:41:31','2024-06-01 15:41:31'),(134,1,'159.89.162.138:3000',2,NULL,'2024-06-05 17:49:07','2024-06-23 11:54:35');
/*!40000 ALTER TABLE `ip_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `product` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `payment_status` tinyint unsigned NOT NULL,
  `data` json NOT NULL,
  `details` json NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `utr_number` varchar(255) DEFAULT NULL,
  `payment_screenshot` varchar(255) DEFAULT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocodes`
--

DROP TABLE IF EXISTS `promocodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `discount` float NOT NULL,
  `max_uses` int NOT NULL,
  `times_used` int NOT NULL DEFAULT '0',
  `expires_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocodes`
--

LOCK TABLES `promocodes` WRITE;
/*!40000 ALTER TABLE `promocodes` DISABLE KEYS */;
INSERT INTO `promocodes` VALUES (1,'123',20,2,0,'2024-07-24 00:00:00','2024-08-24 14:25:51','2024-07-16 18:48:00','2024-08-24 14:25:51'),(2,'1',11,111,0,'2024-07-08 00:00:00','2024-08-24 14:25:52','2024-07-16 18:53:12','2024-08-24 14:25:52'),(3,'I97LHLYZ',20,11,4,'2024-12-05 00:00:00',NULL,'2024-07-16 19:02:43','2024-08-24 14:38:42'),(4,'DYHK975I',20,3,0,'2024-07-19 00:00:00',NULL,'2024-07-16 19:44:46','2024-07-16 19:45:06'),(5,'72KTR7DS',20,4,0,'2024-07-03 00:00:00',NULL,'2024-07-16 20:00:58','2024-07-16 20:00:58'),(6,'NJL79IW4',20,11,0,'2024-07-20 00:00:00',NULL,'2024-07-16 20:01:12','2024-07-16 20:01:12'),(7,'BORJR4WA',30,1,1,'2024-08-25 00:00:00',NULL,'2024-08-24 15:55:39','2024-08-24 15:55:58');
/*!40000 ALTER TABLE `promocodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies`
--

DROP TABLE IF EXISTS `proxies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `port_number` int NOT NULL,
  `series` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `pricing` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies`
--

LOCK TABLES `proxies` WRITE;
/*!40000 ALTER TABLE `proxies` DISABLE KEYS */;
INSERT INTO `proxies` VALUES (1,10000,'103','2 RAM 2 CPU',100.00,'2024-07-13 06:29:05'),(2,8888,'102','4 RAM 2 CPU',110.00,'2024-07-13 06:29:26'),(3,1111,'103','8 RAM 4 CPU',1000.00,'2024-07-13 06:29:45'),(4,1111,'104','8 RAM 4 CPU',1000.00,'2024-07-13 06:29:45'),(5,111,'1111','4 RAM 2 CPU',1111.00,'2024-07-16 18:30:18');
/*!40000 ALTER TABLE `proxies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20240601055905-create-ipLog.js'),('20240602050828-create-UserTable.js'),('20240602051431-add-userId-in-IpRecord.js'),('20240603183342-create-AuthToken.js'),('20240622140612-create-calenderEvent.js'),('20240706112543-createInvoiceTable.js'),('20240706112703-createPaymentsTable.js'),('20240706125624-createFtpImagesTable.js'),('20240706175445-createProxyTable.js'),('20240706183656-createVpsTable.js'),('20240716173846-create-table-promocode.js'),('20240802175451-createNewTableOrder.js'),('20240831172833-add-product-details-and-credentials-to-invoices.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `role` tinyint unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dddd','serverBasket',2,'dddd@gmail.com','$2a$08$O3oGz8mAOM/L3G8L4l3Hv.fK5TBaP5HmDqaix3ZLX6yJQhA8GuIce',NULL,NULL,'2024-06-02 07:59:13','2024-07-10 04:52:55',NULL),(6,'dddd','serverBasket',1,'q@gmail.com','$2a$08$mQSnbNp5R8.LtSjtdZgETuH./.pG89BRfqM8jz9evi/dNCQNqLwyS',NULL,NULL,'2024-06-03 18:53:05','2024-07-06 07:08:17',NULL),(7,'dddd','serverBasket',1,'q1@gmail.com','$2a$08$wFHln2Ogg8AKwRiLktapruba6ylkJbyj8bK7dSIR3qYk2AX3gcrrq',NULL,NULL,'2024-06-03 18:55:09','2024-07-06 07:08:17',NULL),(8,'dddd','serverBasket',1,'q11@gmail.com','$2a$08$CCk07zTt8Fsq1T7NJb8e8es4/6Jp8bs2Odd7.lKeIxXVOnjyHx3vW',NULL,NULL,'2024-06-03 18:56:47','2024-07-06 07:08:17',NULL),(9,'dddd','serverBasket',1,'aq11@gmail.com','$2a$08$ddlPALUnKEgbhngpOLUS2uff90s5kK7JFwubj/wIDY9M6YFf8hAW2',NULL,NULL,'2024-06-03 18:57:52','2024-07-06 07:08:17',NULL),(10,'Mohit','Uchit',1,'test@gmail.com','$2a$08$RfiVy3Stbc90QsEgaZwuveziLwiYb1L9KKuhg7tfQXfIZY00TQBkO',NULL,NULL,'2024-07-06 06:39:30','2024-07-06 19:57:07',NULL),(11,'Mohit','Uchit',0,'dddd1@gmail.com','$2a$08$ha68heuo/7kubyfZ0Em/ZeEdhiYzAaMliTve6JO8fDNsSNrXb81ba',NULL,NULL,'2024-09-01 13:06:14','2024-09-01 13:06:14',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vps`
--

DROP TABLE IF EXISTS `vps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `series` varchar(255) NOT NULL,
  `os` enum('windows','linux') NOT NULL,
  `ram` varchar(255) NOT NULL,
  `pricing` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vps`
--

LOCK TABLES `vps` WRITE;
/*!40000 ALTER TABLE `vps` DISABLE KEYS */;
INSERT INTO `vps` VALUES (2,'102','windows','4 RAM 2 CORES',400.00,'2024-07-13 06:26:31'),(3,'104','linux','4 RAM 2 CORES',250.00,'2024-07-13 06:26:50'),(4,'101','linux','8 RAM 4 CORES',500.00,'2024-07-13 06:27:29'),(5,'104','windows','8 RAM 4 CORES',550.00,'2024-07-13 06:28:03'),(6,'103','linux','8 RAM 4 CORES',600.00,'2024-07-13 06:28:41');
/*!40000 ALTER TABLE `vps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-01 21:01:04
