#  Copyright (c) 16-11-2020 Muhammad Valodia
import hashlib
import binascii
import uuid

class Hash():          
    def get_token(self,phoneNumber,udid):
        phone_hash = self.get_hash(phoneNumber)
        f =  phone_hash[0:8]
        udid_hash = self.get_hash(udid)
        l = udid_hash[len(udid_hash)-8:len(udid_hash)]
        n = l + f
        token =self.get_hash(n)
        return token
    
    def get_hash(self,text):
        hash_object = hashlib.md5(text.encode()).hexdigest()
        return hash_object
    
    def get_uuid(self):
        return str(uuid.uuid1())