# Lazy Cd Command 

### How to run this APP (Basic Usage)

- start app
```
./lazy_cd_command folder_name(args) 
```
- real example 
```shell
./lazy_cd_command Documents 
```

- search using folder
  - if folder exist, you will see result like this 
    ```
    please choose your path number
    0. /home/xxxxx/Documents
    1. /home/xxxxx/snap/snapd-desktop-integration/43/Documents
    2. /home/xxxxx/snap/snapd-desktop-integration/49/Documents
    ```
  - if not, you will see result like this
      ```
        you don't have folder with this name
      ```

- if you choose **0** for example, you will see result like this 
```shell
your choose /xxxxx/Documents
your default shell is 'zsh' do you need use it?  Y/N
```

- choose terminal 
    - if user choose **y**, you will see result like this 
        ```
        your path change to new folder
        ```
      - if user choose **n**, you will see result like this
          ```
              Choose your running shell
              0. sh
              1. bash
              2. rbash
              3. dash
              4. zsh
          ```
         - then
           ```
            your path change to new folder
            ```
         - if index didn't exist, you will see result like this
            ```
            please choose correct terminal
            ```