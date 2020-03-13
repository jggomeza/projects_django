import base64
import hashlib
from django.utils.crypto import (constant_time_compare, get_random_string, pbkdf2,)

algorithm = "pbkdf2_sha256"
iterations = 180000
digest = hashlib.sha256
salt=get_random_string()
# password=input("Introduzca su password:")
password="django"

def encode(password, salt, iterations=None):
    assert password is not None
    assert salt and '$' not in salt
    iterations = iterations or iterations
    hash = pbkdf2(password, salt, iterations, digest=digest)
    hash = base64.b64encode(hash).decode('ascii').strip()
    return "%s$%d$%s$%s" % (algorithm, iterations, salt, hash)

print( encode(password,salt,iterations) )

# encoded=encode(password,salt,iterations)
encoded="pbkdf2_sha256$180000$P3jiTOl5Q3MB$XLdJRj9gqIcpQFB09PJRWtFYVOEQKM6Ty/EdphOkgeM="


algorithm, iterations, salt, hash =encoded.split('$', 3)


# print("\n")

# print(algorithm)
# print(iterations)
# print(salt)
# print(hash)

def verify(password, encoded):
    algorithm, iterations, salt, hash = encoded.split('$', 3)
    assert algorithm == algorithm
    encoded_2 = encode(password, salt, int(iterations))
    return constant_time_compare(encoded, encoded_2)

print(verify(password, encoded))