% I, for one, welcome our robot overlords.
% Finlay Maguire
% December 27th 2014 

# Science sucks

---

![Sucks to do](assets/presentation/human_bad.jpg)

---

![Lots of bad science is being done](assets/presentation/nhm.jpg)

# Technology is improving

---

![2nd generation DNA sequencers](assets/presentation/hiseq.jpg)

---

![3rd generation DNA sequencer](assets/presentation/minion.jpg)

---

Aside about nanopore

![](assets/presentation/nanopore.jpg)

# The robots are rising

---

![and that is cool](assets/presentation/robot_2.jpg)

---

![very cool](assets/presentation/robot_schemati.jpg)

---

![and they are our friends](assets/presentation/robot_better.jpg)


## But that is still not enough

# Time to get SAAS-y

---

![Science-as-a-Service](assets/presentation/logo.png)

- web-based on-demand remote life science lab
- live results
- currently expanding... jobs available... tons of start-up funding

---

## Robots + Internet 

        run = requests.post(url("%s/runs" % PROJECT), json.dumps({
          "run": {
            "title": "Synthesize pri-F",
            "request": {
              "type": "synthesis",
              "sequence": {
                "sequence": "acatctgagcgagcgac",
                "name": "pri-F"
              }
            }
          }
        }), headers = headers).json()
        print run['id']

---

![Transcriptic](assets/presentation/transcriptic.jpg)

---

## Robots + Internet + Life

        {
          "title": "Incubate bacteria",
          "protocol": {
            "refs": {
              "plate1": {
                "id": "ct139xhhctkphy",
                "store": { "where": "cold_4" }
              }
            },
            "instructions": [
              {
                "op": "incubate",
                "object": "plate1",
                "where": "warm_37",
                "duration": "2:hour",
                "shaking": true
              }
            ]
          }
        }
---

![](assets/presentation/matrix.jpg)


# In summary:

---

- Science sucks to do
- Robots are awesome
- Robots + the internet are even more awesome
- Robots + internet + machine learning + utilitarian political philosophies = Bow down human worms.
