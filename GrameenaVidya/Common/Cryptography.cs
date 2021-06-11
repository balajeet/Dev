#region FileHeaderComment
//<FileHeader>
// Copyright		2006 ConedTec.  All rights are reserved. Reproduction or transmission in whole or part, in any form or by ay means, ///electronic, mechanical, or otherwise, is // prohibited without the prior written consent of the copyright owner.
// File Name		: Cryptography.cs
// Author     		: Raghu Penumarthi (Init: RP)
// Creation Date	: 24-May-2006
//</FileHeader>
#endregion FileHeaderComment

#region "Namespaces"
using System;
using System.IO;
using System.Text;
using System.Security.Cryptography;
#endregion "Namespaces"

#region Modification History
//<ModificationHistory >
// 
//</ModificationHistory >
#endregion
namespace GrameenaVidya.Common
{
    public class Cryptography
    {

        #region Private Constants
        //******************************************************************************************
        // Note: 
        //These constants can be changed if desired. Be aware that if these constants are changed,
        //any values previously encrypted will not be able to be Decrypted as these values are 
        //used to generate the encryption in the first place.
        //Please Change With Caution.
        //******************************************************************************************

        //	private const string C_INITVECTOR  = "@MhaLL*%(i7qBr1d"; //Must be exactly 16 characters in length.
        private const string C_SALTVALUE = "3.14157284><;CETapp?+|-";  //Any valid string           
        private const string C_PASSPHRASE = "<CET><RAGHU><Kareem>..!";

        private const int passwordIterations = 2;
        private const int keySize = 128;
        private const string hashAlgorithm = "SHA1";

        //public const string Key = "ACADAMY@BIMA^~!#";
        public const string Key = "H@NK@CET%VSRK^*!";

        #endregion

        #region constructor

        private Cryptography()
        {
            //
            // TODO: Add constructor logic here
            //

        }


        #endregion

        #region Encryption function

        /// <summary>
        /// Encrypts specified plain text string using Rijndael symmetric key algorithm
        /// </summary>
        /// <param name="StringToEncrypt">Plain text value to be Encrypted.</param>
        /// <param name="Key"> Key for encryption</param>
        /// <returns>Returns Encrypted string value.</returns>

        public static string Encrypt(string StringToEncrypt)
        {

            ICryptoTransform encryptor;
            byte[] initVectorBytes;
            byte[] saltValueBytes;
            PasswordDeriveBytes password;
            byte[] plainTextBytes;
            byte[] keyBytes;
            RijndaelManaged symmetricKey;
            MemoryStream memoryStream;
            CryptoStream cryptoStream;
            byte[] bytEncryptedText;
            string strEncryptedText;

            try
            {

                if (Key.Length != 16)
                {
                    throw new Exception("Key value must be 16 character long");
                }
                if (StringToEncrypt == null || StringToEncrypt.Length == 0)
                {
                    throw new Exception("String to be encrypted should be specified");
                }
                // Convert strings into byte arrays.
                // Assumes that strings only contain ASCII codes.
                // If strings include Unicode characters, use Unicode, UTF7, or UTF8 encoding.
                initVectorBytes = Encoding.ASCII.GetBytes(Key);

                saltValueBytes = Encoding.ASCII.GetBytes(C_SALTVALUE);

                // Convert plaintext into a byte array.
                // Assumes that plaintext contains UTF8-encoded characters.
                plainTextBytes = Encoding.UTF8.GetBytes(StringToEncrypt);

                // First, we must create a password, from which the key will be derived.
                // This password will be generated from the specified passphrase and 
                // salt value. The password will be created using the specified hash 
                // algorithm. Password creation can be done in several iterations.

                password = new PasswordDeriveBytes(C_PASSPHRASE, saltValueBytes, hashAlgorithm, passwordIterations);

                // Use the password to generate pseudo-random bytes for the encryption
                // key. Specify the size of the key in bytes (instead of bits).
                keyBytes = password.GetBytes((int)keySize / 8);

                // Create uninitialized Rijndael encryption object.
                symmetricKey = new RijndaelManaged();

                // It is reasonable to set encryption mode to Cipher Block Chaining
                // (CBC). Use default options for other symmetric key parameters.
                symmetricKey.Mode = CipherMode.CBC;

                // Generate encryptor from the existing key bytes and initialization 
                // vector. Key size will be defined based on the number of the key 
                // bytes.
                encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);

                // Define memory stream which will be used to hold encrypted data.
                memoryStream = new MemoryStream();

                // Define cryptographic stream (always use Write mode for encryption).
                cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);

                // Start encrypting.
                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);

                // Finish encrypting.
                cryptoStream.FlushFinalBlock();

                // Convert our encrypted data from a memory stream into a byte array.
                bytEncryptedText = memoryStream.ToArray();

                // Close both streams.
                memoryStream.Close();
                cryptoStream.Close();

                // Convert encrypted data into a base64-encoded string.
                strEncryptedText = Convert.ToBase64String(bytEncryptedText);

                // Return encrypted string.
                return strEncryptedText;

            }
            catch (Exception exception)
            {
                throw (exception);
            }
        }

        #endregion

        #region Decryption function

        /// <summary>
        /// Decrypts specified encrypted string using Rijndael symmetric key algorithm
        /// </summary>
        /// <param name="StringToDecrypt">Encrypted text value to be Decrypted.</param>
        /// <param name="Key"> Key for decryption</param>
        /// <returns>Returns Decrypted string value.</returns>

        public static string Decrypt(string StringToDecrypt)
        {

            ICryptoTransform decryptor;
            byte[] initVectorBytes;
            byte[] saltValueBytes;
            PasswordDeriveBytes password;
            byte[] plainTextBytes;
            byte[] keyBytes;
            RijndaelManaged symmetricKey;
            MemoryStream memoryStream;
            CryptoStream cryptoStream;
            byte[] bytEncryptedText;
            string strUnencryptedText;
            int decryptedByteCount;

            try
            {

                if (Key.Length != 16)
                {
                    throw new Exception("Key value must be 16 character long");
                }
                if (StringToDecrypt == null || StringToDecrypt.Length == 0)
                {
                    throw new Exception("String to be decrypted is empty");
                }
                // Convert strings defining encryption key characteristics into byte
                // arrays. Assumes that strings only contain ASCII codes.
                // If strings include Unicode characters, use Unicode, UTF7, or UTF8
                // encoding.

                initVectorBytes = Encoding.ASCII.GetBytes(Key);

                saltValueBytes = Encoding.ASCII.GetBytes(C_SALTVALUE);

                // Convert our ciphertext into a byte array.

                bytEncryptedText = Convert.FromBase64String(StringToDecrypt);

                // First, we must create a password, from which the key will be 
                // derived. This password will be generated from the specified 
                // passphrase and salt value. The password will be created using
                // the specified hash algorithm. Password creation can be done in
                // several iterations.

                password = new PasswordDeriveBytes(C_PASSPHRASE, saltValueBytes, hashAlgorithm, passwordIterations);

                // Use the password to generate pseudo-random bytes for the encryption
                // key. Specify the size of the key in bytes (instead of bits).
                keyBytes = password.GetBytes((int)keySize / 8);

                // Create uninitialized Rijndael encryption object.
                symmetricKey = new RijndaelManaged();

                // It is reasonable to set encryption mode to Cipher Block Chaining
                // (CBC). Use default options for other symmetric key parameters.
                symmetricKey.Mode = CipherMode.CBC;

                // Generate decryptor from the existing key bytes and initialization 
                // vector. Key size will be defined based on the number of the key 
                // bytes.
                decryptor = symmetricKey.CreateDecryptor(keyBytes, initVectorBytes);

                // Define memory stream which will be used to hold encrypted data.
                memoryStream = new MemoryStream(bytEncryptedText);

                // Define memory stream which will be used to hold encrypted data.
                cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);

                // Since at this point we don//t know what the size of decrypted data
                // will be, allocate the buffer long enough to hold ciphertext;
                // plaintext is never longer than ciphertext.
                plainTextBytes = new byte[bytEncryptedText.Length];

                // Start decrypting.
                try
                {
                    decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
                    // Convert decrypted data into a string. 
                    // Let us assume that the original plaintext string was UTF8-encoded.
                    strUnencryptedText = Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
                    cryptoStream.Close();
                }
                catch
                {
                    strUnencryptedText = "";
                }

                memoryStream.Close();

                return strUnencryptedText;
            }
            catch (Exception err)
            {
                throw (err);
            }
        }

        #endregion

        #region Encrypt URL Function
        public static string EncryptURL(string StringValue)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(StringValue);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    StringValue = Convert.ToBase64String(ms.ToArray());
                }
            }
            return StringValue;
        }
        #endregion

        #region DecryptURL function
        public static string DecryptURL(string StringValue)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            //StringValue = StringValue.Replace(" ", "+");
            byte[] cipherBytes = Convert.FromBase64String(StringValue);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    StringValue = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return StringValue;
        }
        #endregion


    }
}