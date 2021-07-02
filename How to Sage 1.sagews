︠f952965f-3584-4a2e-b605-6aa1417ce85d︠
R.<x,y,z> = PolynomialRing(QQ, 3, order='lex')
I = Ideal([x^4*y-z^6,x^2-y^3*z, x^3*z^2-y^3])
B = I.groebner_basis(); B
︡147793c8-0f1c-4d18-bc93-39a2b44f5444︡{"stdout":"[x^2 - z^55, x*z^6 - z^64, y^3 - z^54, y*z^6 - z^24, z^67 - z^6]\n"}︡{"done":true}︡
︠263a6ecd-ceb4-4296-8f7e-dd729ffaa09a︠
R.<v,w,x,y,z> = PolynomialRing(QQ, 5, order='degrevlex')
I = Ideal([x-v^2, y-v*w, w*y-v*z, y^2-x*z])
B = I.groebner_basis(); B
︡71cb55ba-751a-47db-a9e9-f4a4f0b3e18b︡{"stdout":"[v^2 - x, v*w - y, w*x - v*y, w*y - v*z, y^2 - x*z]\n"}︡{"done":true}︡
︠f037539c-8cd6-4229-a06b-a7f5e174e301︠
R.<x,y,z> = PolynomialRing(QQ, 3, order='lex')
I = Ideal([x-z, x**2-y*x])
p1 = x*z + 1
p2 = p1.reduce(I)
q1 = y**3-2
q2 = q1.reduce(I)
r1 = p1*q1
r2 = r1.reduce(I)
s1 = p2*q2
s2 = s1.reduce(I); s2
︡25cdad09-0491-457c-a138-53600f8b201d︡{"stdout":"y^3 + y^2*z^3 - 2*z^2 - 2\n"}︡{"done":true}︡
︠7ef812a9-5a9d-42aa-bfb4-a1f7562ec386︠
R.<x> = QQ[['x']]
f = x - x
for i in range(1000):
    f = f + 2^((i-1)*i/2)/factorial(i)*x^i
g = 1 + ln(f.change_ring(GF(663224321)).change_ring(QQ))
h = g.derivative().change_ring(GF(663224321))
print(h.derivative(50)(0))
︡45160305-ab65-4dfb-a12f-5855006d99cf︡{"stderr":"Error in lines 7-7\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1013, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/rings/power_series_poly.pyx\", line 338, in sage.rings.power_series_poly.PowerSeries_poly.__call__ (build/cythonized/sage/rings/power_series_poly.c:5892)\n    return self[0]\n  File \"sage/rings/power_series_poly.pyx\", line 457, in sage.rings.power_series_poly.PowerSeries_poly.__getitem__ (build/cythonized/sage/rings/power_series_poly.c:7476)\n    raise IndexError(\"coefficient not known\")\nIndexError: coefficient not known\n"}︡{"done":true}︡
︠b1c4a5ac-8cbf-45f7-ae69-3cab818ae351︠









