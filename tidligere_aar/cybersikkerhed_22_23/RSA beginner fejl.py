from Crypto.Util.number import inverse

flag = b"HKN{a_beginner_rsa_challenge}"

import binascii
hex_flag=binascii.hexlify(flag)
int_flag=int(hex_flag,16)
print(int_flag)
p=56071706520419311198103263781
q=77706821840278501303995553379
#n=4357154108862605780749720015720425804891685449291102865999
e=65537
n=p*q

phi=(p-1)*(q-1)

d=inverse(e,phi)

hack_int_encrypted=pow(int_flag,e,n)

print ("Transmitted integer",hack_int_encrypted)

cipher=hex(hack_int_encrypted)

print (cipher)

hack_int_decrypted=pow(hack_int_encrypted,d,n)
print("")
print("Nu kommer dekrypterede talværdi")
print("")
print (hack_int_decrypted)
hex_int_decrypted = hex(hack_int_decrypted)
print (hex_int_decrypted)

# Converter til ascii

hex_string = hex_int_decrypted[2:]
#Slice string to remove leading `0x`


bytes_object = bytes.fromhex(hex_string)
#Convert to bytes object


ascii_string = bytes_object.decode("ASCII")
#Convert to ASCII representation

print(ascii_string)

