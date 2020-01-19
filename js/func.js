(function () {

    let row = document.createElement('div');
        row.className = 'row';

        let col = document.createElement('div');
    col.className = 'col-md-6';

        let col2 = document.createElement('div');
        col2.className = 'col-md-6';
        
    for (let i = 0; i < 5 ; i++) {

        let inmate = document.createElement('div');
        inmate.className = 'probootstrap-service-2 probootstrap-animate';

        let imgDiv = document.createElement('div');
        imgDiv.className = 'image';

        let imgBG = document.createElement('div');
        imgBG.className = 'image-bg';

        let img = document.createElement('img');
        img.src = 'img/java.png'

        //
        imgBG.appendChild(img);
        imgDiv.appendChild(imgBG);


        /** text******/
    
        let text = document.createElement('div');
        text.className = "text";

        let spanMeta = document.createElement('span');
        spanMeta.className = "probootstrap-meta";

        let icon = document.createElement('i');
        icon.classList.add('icon-calendar2');

        let header = document.createElement('h3');
        header.textContent = "introduction to Java";

        let info = document.createElement('p');
        info.textContent = 'This course is your gate to one of the most popular Programming Langauges of all time';

        let p = document.createElement('p');
        let btn = document.createElement('a');
        btn.classList.add('btn');
        btn.classList.add('btn-primary');
        btn.classList.add('c1');
        btn.href = '#';
        btn.textContent = 'Enroll now';
        p.appendChild(btn);

        ///
        text.appendChild(spanMeta);
        text.appendChild(icon);
        text.appendChild(header);
        text.appendChild(info);
        text.appendChild(p);




        ///
        inmate.appendChild(imgDiv);
        inmate.appendChild(text);
        if (i >=3) {
            col2.appendChild(inmate);
            row.appendChild(col2);
        }
        else {
            col.appendChild(inmate);
            row.appendChild(col);
        }
        

        document.querySelectorAll('.container')[1].appendChild(row);
    }
    
})();
/*document.querySelectorAll('.btn').forEach(e => e.addEventListener('click', function (e) {
    
    e.target.classList.forEach(name => { 
        
        if (name == 'c1')
            e.target.textContent = "hi";
    })
}));*/