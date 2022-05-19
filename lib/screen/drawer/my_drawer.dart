// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(80),
        bottomRight: Radius.circular(80),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANsAAADmCAMAAABruQABAAABU1BMVEX39/fs5vX+F0T/ViL+37L/xnu/Ngx4Rxns5/b+5rn/Wyfy7/b19Pfr7f7/SgD/Txf+2q26Mwrw7Pbr7v/3///+ADv+ADX/YCm9MAD2////5bjLVijXcj7/zH/+ADH+Cz//Tw7wztLzubZtNwD8hmb/zIn/AC33npHv1dz8gV/4cIr8Tmv5vMXt4ez9akL0s6/+xpnxycyuh11yPw26IADprIP+0ZT+2KXvxtj3eZL+k4Tt2On+qZLwvM/+R1r+am39LVP7Y3z36Ov7dlj8bUn6iG/4lof+YTT1rKT+uY3+onb/eUv+lWj/eEr5jHf0trKKXDGWa0DRrYPox5vGonilfVSSZjzfvZHEUzHUeVPglm7zw5jPZ0LJTBnJVybdKSv+3aPRLx/vIDj+zanbIBf0nbL+fHf/PyDzqr/7RGX+upz2jaP+VWL+0qv+g3v2g5r6mKfgpkuGAAANWElEQVR4nO2d/UPTSBrHIdSSapP0aFOx3rapCFagIMJSgUVLEXR373ZR1vN2vTtPPTxZ1oX//6ebNGmbNPMk88xMXtzr95ddbVPz6fd5mZmkk6mpiSaaaKKJJppoov8jFYvFG7bm5ub6/yV/TvuUhEWQ5uamIRHQL5MxlMorlRCmfbIIES4mLI+FXwYfmmvEl/aph4sbLOv2CYJl172iDDAXL1vmSbFsJDU75t2QCuYoG3RyLRtpLm2w2MjSp4sjGrNBFzeZrXTyrqgmgEaUQkeIM9H8SjowkwjHkRINzORMc5TcUKWYMJmthKxL2jRHSWRdGqY5ij0uky0ifsUcl+nE40CxxmW6aNMxxmV6qTZSTHBZQIsp6dKsIl7FAJcVtBgqSnbQpMOlXiB9kgqXLTSpcFkKSEfS4LKHJg0ui2iS4LLRsoOS0OckoKmq5qo8lCa+kiQMJ4jWx2pvrN87Pjp8unbTo7Y4nOjYUgiMYN25d2joum5ZhmHMeGQdlYXZpsXQ+BsbAWs9f0qofEgj6Xc0YTZVBI27RKpa+/kayOVoWjwqBYolb7KpWusHSw8FkxSV/PWEm+xIt8LB+lG5IR6V3PWEL9m09nGUZaOoJBKE40PjSjZVuzPD4Jkbla1Wq213CQFArpTjSjZ1+q7OSEZkdwf9+uHueksAjycqef4drclsmofQ0vVnx02NN/vwaDwRqa0jTPPL0tfWOenQUckRkWr5mBvNln59nS8ysVGJ/0dU7UgIzaZba3JZh0PDR6QENLu43OOxDheV+M+XgUakH/JMEDBRie/amliujWTcbOHjEmEcvpBozyWhETiDA47dOLRt2oY0NCKrhQ5L5tkO2ja1LZGMyMDnHOuEAG/bIePgmJXtGXoIzWgc2jaJyebKOkSnHJtxWNvUlmw00gqeo+Fisa0sOSIduCY2KlmMw9qm3ZFvm51yMRiHtU1VYyAjIqMv5JlEG4e27R5+xubKWgsLZh3b5aJLJRJNbfOiGTe/LXwXcrBxhDUuanCCnQBox3xsxsx3tVqu8H2Ic+hyEjWqxMZBm6uQGNZfSrUcUel6yJvQTS4cDVtJ+LLN+v5znyyXqz0IOR5tXHg1QVYSdZqHbO1BITdQLSTljLtI48KrCe6zeBZ/SAmp5Tyq/RVOOXSpDKsm6EqyhiUz7BLiUwl+t3WMNC6smmBDEjltM3S3hPiMC0k5A3utR2JI/oAaSerDEuKHg1NO/xFpHByUyJDE9W1fCfHDgSmHbgNwUGJDEjFKNq5/S/MsKuXQ1URaSN5nDUlSQnIwGkk56EuysPM4KCiRjZs5JIejEBgOSjnjKZINat8xhaRFLyFsKYcNSijhkKGtHbGEJCkhkWQhKaevI42Tk24sk1K7hLCggSmHHnfREw7bAaIbd0QJ8QmayxnI5Tx6wiHTLXIKEF1C/M7RU07fkJFw2HR7Gp5uZBQC9GpA9JSzsOsmEtItYlZqPYNGIbBxD2hfFnpoQks4bHcLSzdSQgqIcHRVoE7CLQkTVGQpCUk3TAmJZsPOvmkJhy0l0GoydSIj4huyw0lgUwE0llEIis3YFS8mOOehCxy+ElKzBbOMv0pnm1kTZ8N9ADCYNHyJ9vDk5MVLCK72+sXJycNTz8sAm47s3sFCiSyTwJqrURqd6unm5uzs5sILAO3hQv/l1yM4iA1ZTIKFElsm6aXEyzbraOEhdSHhpwX35dNItjsJs5Wpp+FhG5787EKJwjYgn90coQNs2JFJsFDiyiQ0KvGwvdgcsL2koJ0OyGdPotiwFz2E2YBRCQfbbBTbzBruxubg6jKOTfsxku3hkO2UwlYasG2+iGTTRdeDcIdDIy5PLRk4s3lCrSWvNgOugmzI201E2YD1BA+bW0w2qbYR42b7cAuvInsAugmIsgGXc709oPZydmFh4W+nQPMuvSKvbv4U3bvRTSDQvJFs0Jqbt97XcqevITL75dLrU98wBmLDLlKKsYETU4PayxgFsiEv54yz4YZc4K1AsbBhG5wgGzTpjocNuawgyAYtKcfCNoO8R2h8QIlj056z1BJpbFaibNBdJfGw6bjLp2IxCV4wjYkNNzAR6wHwQlA8bLiLOYJs0JpyTGy4QZcg203gLGJiw10TEGSD1l1jYsMNKMXY5qD18kywjaOhlifh6xwxseGWlgNsmHl30mzIZXMxNvCu+ZjYUJMcsfWSbLMF17kw65NqM2E21AplkA0z6IKvKxpveC/iEJ1CF5lxbMF1ZTlsM3kB2/4OfagoG6bBhbDN/4y9zD1E+2UL+lDcr3MoF7wxbPDdTvmtr/misvZm608QGu7+mSAaplCGseW33nCxlebzABtBExuWyGPL57lq5W2IDYtGu96NaALhbPO38XC1f8zn6WxYNOo9GIhCGeEbHq6PRmWzsGj0m9UQx8O/wsy7cLiC0kejseHR6Pc8YUZdWvMmfQqXd+DyiB5eK93uo1HYONDobKirwtAmLHkXbutr1j5XeDPvoAXZeNDo9+Ehl1/L1LjMD7T1M9t9T7VftgaHjLPxoEE3LCM/RWteD8blkI0xLt/cHqKNs1n3efbEAG40R//4WQ3GZd4D98/FyHq5/ef5PMDGhwbdr4zetEQN1ksPW/72V9e2Q+m2r30FsnGiQfeZc+yjE6iXY2zXri12ALDOInkVZONEg3/ex/FZ4/UywEa0HcTrbDsvQWy8aPBvVng2UhuLSxqb7d52p+OEZ6nT2V4c/j3Axo0G/3KRb28/X70E2CDR2bjRwn5xyveB3riUwcaPFvajTM6tND1xKYHNus+9AWDYj2m5d3cdxqUHbZ6PTQAt/EfQvB9K4vK+Ps72Lx42EbTwH6+L7O/aj8vBeb59ryhdBrbfGsr7t+9GbEJo4ZsOiGw53N/E0AFTHHUi2f7ddd751mUTQova5UNkG087LvP5d+9dMsX8sB2BtphrDN78/h1hE6iQtsLRxDYvJ/Oe/ygjmd/UFsPZch9Mz/vfGnfnRNAid1cT+GxNPet6TlVpfCzkQtE6teOG94D/nqki29tGbq7GXU1U7VO3qvj0uJALS7ntXOGJj02pKmf8QcmwKR4nWfnRed1/osS4kj2PgZMtV1DGVT/fL3PSMeyJx2WcOr0TIOsnHAxH0Pzp5n4f9eU2V2Cy7GXItRvqfjd4lk7C5XL0emKj1XaD3wf5RhQu65i2MkQbp2o7S7STJOqvmNDgbLRc4TH9qKVlfJdj2xAPva/O3nmVfo6K+SsA10fLfaaZ3T+uuyd/dy4O48r7JmAaCconBXdhhIZGD0nnwOq+6A8eJBhX/rQEnaB9joM1hLHi31ehG3Lk0hkKjnnjUIRx5YswNKVx7K5RlkZxOVgdqv0KhaQDt4OoKIgNX9nRLuth50fmAsOl886ij4zY9hsYkn3Vl9nhEBv1so4qI9GcFjfE63hWvGofoAo0UJUZDrXBMiPaRRQaMQ5aOI+yzYbbYcw5DBpbOSmfRaMp5i79gk5EtjmqXzDBIZ9swVBOtH0GNFJOPtN9YzlWqX9i6HPox61Ef+JeZEw5bI9pUTk+A4BUfRSdcuinI0SVE1U9Zzs7xfwYjMrCMUNE9r+ZbuT98xxPtYiIyvJlVJkbwQVSrvANIxo5eDkq5fBoEVGpPgrt2WPn93uBzzVbUSnH9RSZ0FqpdRkj0oH7zbNPSy33BIFGFBqVnE//CYlK7YI5IvtqNH7/UCjYGygUPu8qmK+FfDFhXY77qU3gJ6ptHJpNZ3Y/7h7vfnwMzxogLe3BxvGiwVFZ3sFFlYtni+e4A9A4gUfAAXDqHlPXlqYlqMkJPbqPnnIal238gowTfJ4kDU6dTtY2KOOEHm1ni/Kh2CIpLnOH1uNE0WjFEtfbpKhB6XESHlMeqCcq2/hfqqrBwYmUJ7CPwyVdSWwFq4mkR5SPwamJkxFVx6qJtKev++DUR8mHpB2Uaixo/smcdpF8SI5PdSSi+eC0lcSrpK2uGhOaJyzV6TRs87VvyWgjuHTSzZtw0tGGcNpZ0oMSR+al2+Gk9LWAUututhor5RjRnIFzOZ1SQopJ37eYyBy4FAaTjsy2KjqpCdcNdTolNKW+p8ZQRbwq7iHW7qRqaT+uVBvpMh24peX40aYqG0oK84DqaiV+NAJXPEjauvpKLxE0oluriVpnVs9uJUQ2ZVu3DN0tI18JmubSbYzfdBeTqspqgqa5cFNXZvyBaVYvi8ma5tL1durx0jXqBwmHo4eudUC5s1Ae2cpG4uHo0a3mQUzeNernySdaInQm8aySVjh6VGnt1OXWTLN+0Ezbs4EqxauuNPMa1cZFahWEpsqtjYN6VbyuNKr1ldUsBKNfleKnlSUhvIa5dH7Vyx6ZrUqld7ZS5cQjjp1ftbIJ5ojgrS4r9Sou+QiXcvApo455ValUWmcHXcLHYmDDtLmumlPZB3NFTrS3enXQNQmhSb03odEwCVVVWblc7X05XAMR/yq95urVzkqXDHmr9XrVkf0/ptJd2bla3ejZb0r7RLlV6Z/9jV6rubHqaKPZ6vXcv//j6I/GM9FEE0000UQTTTTRRBNlT/8DYSEHuQb1U+AAAAAASUVORK5CYII='),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.donut_large_outlined),
                title: Text('Home'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.donut_large_outlined),
                title: Text('Tela 2'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.donut_large_outlined),
                title: Text('Tela 3'),
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
