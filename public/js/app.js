(function() {
  var data;

  data = {};

  data.jobs = [
    {
      name: 'Insights Analyst',
      date: 'July 12, 2013'
    }, {
      name: 'Enterprise Relationship Manager, Sales Solutions',
      date: 'July 12, 2013'
    }, {
      name: 'Partner Engineer',
      date: 'July 11, 2013'
    }, {
      name: 'Internal Audit Senior Manager, Investigations',
      date: 'July 11, 2013'
    }, {
      name: 'Content Marketing Consultant- Bay Area',
      date: 'July 11, 2013'
    }, {
      name: 'Marketing Solutions Consultant- NYC',
      date: 'July 11, 2013'
    }, {
      name: 'Marketing Solutions Consultant- Central',
      date: 'July 11, 2013'
    }, {
      name: 'Program Manager, Sales Effectiveness',
      date: 'July 11, 2013'
    }, {
      name: 'Americas Facilities Operations Manager',
      date: 'July 11, 2013'
    }, {
      name: 'HR Manager',
      date: 'July 10, 2013'
    }, {
      name: 'Content Campaign Strategist',
      date: 'July 10, 2013'
    }, {
      name: 'Pricing Analyst- New York',
      date: 'July 10, 2013'
    }, {
      name: 'Technical Program Manager- Security',
      date: 'July 10, 2013'
    }, {
      name: 'Contract Campus Recruiter',
      date: 'July 10, 2013'
    }, {
      name: 'Data Scientist',
      date: 'July 10, 2013'
    }
  ];

  $(function() {
    $('ol#results').append(Handlebars.compile($('#result-tmpl').html())(data));
    return $('[data-job-id]').click(function(e) {
      e.preventDefault();
      if ($(window).width() >= 1600) {
        return $('body').toggleClass('responsive', true);
      } else {
        return alert('You are on a small screen. The job will open in a new page (current behaviour on linkedin.com). Try expanding your browser to 1600px+.');
      }
    });
  });

}).call(this);
