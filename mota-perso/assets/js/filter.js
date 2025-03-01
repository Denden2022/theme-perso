/*** 
 * 
 * Script Filtre pour : I-Rendre le filtre CATEGORIES fonctionnel
 *                      II-Fonction pour charger les images en fonction de la CATEGORIE sélectionnée
 *                      III-Rendre le filtre FORMATS fonctionnel
 *                      IV-Fonction pour charger les images en fonction du FORMAT sélectionné
 *                      V-Rendre le filtre TRIER PAR fonctionnel
 *                      VI-Fonction pour charger les images en fonction du TRIE sélectionné 
 * 
 * ***/

/**** I-Rendre le filtre CATEGORIES fonctionnel ****/ 


function toggleOptionsCategories() {
    let optionsDiv = document.querySelector('.sel .options');
    if (optionsDiv) {
        if (optionsDiv.style.display === 'none' || optionsDiv.style.display === '') {
            optionsDiv.style.display = 'block';
        } else {
            optionsDiv.style.display = 'none';
        }
    } else {
        console.error("L'élément .sel .options n'a pas été trouvé.");
    }
}

document.addEventListener('DOMContentLoaded', function() {
    let options = document.querySelectorAll('.sel .options div');
    options.forEach(function(option) {
        option.addEventListener('click', function() {
            let selectedValue = this.textContent.trim();
            let label = document.querySelector('.sel .label');
            if (label) {
                label.textContent = selectedValue;
            } else {
                console.error("L'élément .sel .label n'a pas été trouvé.");
            }
            let optionsDiv = document.querySelector('.sel .options');
            if (optionsDiv) {
                optionsDiv.style.display = 'none';
            } else {
                console.error("L'élément .sel .options n'a pas été trouvé.");
            }
            // Charger les images en fonction de la catégorie sélectionnée
            loadImagesByCategory(selectedValue);
        });
    });

    /*var element = document.querySelector('.single-item');
    if (element) {
        element.addEventListener('click', function() {
            element.classList.add('clicked');
        });
    } else {
        console.error("L'élément .single-item n'a pas été trouvé.");
    }*/
});


/**** II-Fonction pour charger les images en fonction de la CATEGORIE sélectionnée***/
function loadImagesByCategory(category) {
    var data = {
        action: 'load_filters_categories',
        nonce: jQuery('#customSelect').data('nonce'),
        category: category
    };

    jQuery.post(jQuery('#customSelect').data('ajaxurl'), data, function(response) {
        if (response.success) {
            jQuery('#images-container').html(response.data);
            // Ferme le filtre une fois que la catégorie est sélectionnée
            toggleOptionsCategories();
            // Met à jour le texte du bouton de catégories avec la catégorie sélectionnée

        } else {
            console.log(response.data); // Affiche les erreurs dans la console
        }
    });
}



/****FILTRE FORMAT */
/**** III-Rendre le filtre FORMATS fonctionnel ****/ 
function toggleOptionsFormats() {
    var optionsDiv = document.querySelector('.select .options-formats');
    if (optionsDiv) {
        if (optionsDiv.style.display === 'none' || optionsDiv.style.display === '') {
            optionsDiv.style.display = 'block';
        } else {
            optionsDiv.style.display = 'none';
        }
    } else {
        console.error("L'élément .select .options-formats n'a pas été trouvé.");
    }
}

document.addEventListener('DOMContentLoaded', function() {
    var options = document.querySelectorAll('.select .options-formats div');
    options.forEach(function(option) {
        option.addEventListener('click', function() {
            var selectedValue = this.textContent.trim();
            var label = document.querySelector('.select .label-format');
            if (label) {
                label.textContent = selectedValue;
            } else {
                console.error("L'élément .select .label-format n'a pas été trouvé.");
            }
            var optionsDiv = document.querySelector('.select .options-formats');
            if (optionsDiv) {
                optionsDiv.style.display = 'none';
            } else {
                console.error("L'élément .select .options-formats n'a pas été trouvé.");
            }
            // Charger les images en fonction du format sélectionné
            loadImagesByFormat(selectedValue);
        });
    });

   /* var element = document.querySelector('.single-item-format');
    if (element) {
        element.addEventListener('click', function() {
            element.classList.add('clicked');
        });
    } else {
        console.error("L'élément .single-item-format n'a pas été trouvé.");
    }*/
});


/**** IV-Fonction pour charger les images en fonction du FORMAT sélectionné***/
function loadImagesByFormat(format) {
    var data = {
        action: 'load_filters_formats',
        nonce: jQuery('#selectFormats').data('nonce'),
        format: format
    };

    jQuery.post(jQuery('#selectFormats').data('ajaxurl'), data, function(response) {
        if (response.success) {
            jQuery('.image-container').html(response.data);
            // Ferme le filtre une fois que le format est sélectionnée
            toggleOptionsFormats();
            // Met à jour le texte du bouton de formats avec le format sélectionnée
            jQuery('.label-format').text(format);
            // Réinitialise l'écouteur d'événement sur les formats pour permettre de réafficher "Formats"
            resetFormatListener();
        } else {
            console.log(response.data); // Affiche les erreurs dans la console
        }
    });
}


/****FILTRE TRIER PAR */
/**** V-Rendre le filtre TRIER PAR fonctionnel  ****/ 
function toggleOptionsOrders() {
    var options = document.querySelector('.options-tries');
    if (options.style.display === 'none') {
        options.style.display = 'block';
    } else {
        options.style.display = 'none';
    }
}

function setOrder(order) {
    var selectOrders = document.getElementById('selectOrders');
    selectOrders.setAttribute('data-allorders', order);
    // Réaliser une action supplémentaire si nécessaire, comme soumettre le formulaire ou effectuer une requête AJAX
}

/**** VI-Fonction pour charger les images en fonction du trie sélectionné***/
function loadImagesByOrder(order) {
    var data = {
        action: 'load_filters_orders',
        nonce: jQuery('#selectOrders').data('nonce'),
        order: order
    };

    jQuery.post(jQuery('#selectOrders').data('ajaxurl'), data, function(response) {
        if (response.success) {
            jQuery('').html(response.data);
            // Ferme le filtre une fois que le trie est sélectionnée
            toggleOptionsOrders();
            // Met à jour le texte du bouton de trier par avec le trie sélectionnée
            jQuery('.label-trie').text('Trier par');
            // Réinitialise l'écouteur d'événement sur les tries pour permettre de réafficher "Trier par"
            resetOrderListener();
        } else {
            console.log(response.data); // Affiche les erreurs dans la console
        }
    });
}

// Écouteur d'événement initial pour le changement de format
var resetOrderListener = function() {
    jQuery('.label-trie').off('click').on('click', function() {
        jQuery('.label-trie').text('Trier par');
        // Ajoutez ici toute autre logique nécessaire lors du clic sur "trier par"
    });
};

jQuery(document).ready(function() {
    resetOrderListener(); // Initialise l'écouteur d'événement
});

// Écouteur d'événement pour le changement de format
jQuery(document).on('click', '.single-item-order', function(event) {
    var order = jQuery(this).text().trim();
    loadImagesByOrder(order);
});


//test
