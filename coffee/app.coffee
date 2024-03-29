data = {}
data.jobs = [
  {
    name: 'Insights Analyst'
    date: 'July 12, 2013'
  }
  {
    name: 'Enterprise Relationship Manager, Sales Solutions'
    date: 'July 12, 2013'
  }
  {
    name: 'Partner Engineer'
    date: 'July 11, 2013'
  }
  {
    name: 'Internal Audit Senior Manager, Investigations'
    date: 'July 11, 2013'
  }
  {
    name: 'Content Marketing Consultant- Bay Area'
    date: 'July 11, 2013'
  }
  {
    name: 'Marketing Solutions Consultant- NYC'
    date: 'July 11, 2013'
  }
  {
    name: 'Marketing Solutions Consultant- Central'
    date: 'July 11, 2013'
  }
  {
    name: 'Program Manager, Sales Effectiveness'
    date: 'July 11, 2013'
  }
  {
    name: 'Americas Facilities Operations Manager'
    date: 'July 11, 2013'
  }
  {
    name: 'HR Manager'
    date: 'July 10, 2013'
  }
  {
    name: 'Content Campaign Strategist'
    date: 'July 10, 2013'
  }
  {
    name: 'Pricing Analyst- New York'
    date: 'July 10, 2013'
  }
  {
    name: 'Technical Program Manager- Security'
    date: 'July 10, 2013'
  }
  {
    name: 'Contract Campus Recruiter'
    date: 'July 10, 2013'
  }
  {
    name: 'Data Scientist'
    date: 'July 10, 2013'
  }
]

$ ->
  # Dummy data for search results
  $('ol#results').append Handlebars.compile($('#result-tmpl').html())(data)

  # Bind to clicks on results
  $('[data-job-id]').click (e) ->
    e.preventDefault()
    if $(window).width() >= 1600
      $('body').toggleClass 'responsive', true
    else
      alert 'You are on a small screen. The job will open in a new page (current behaviour on linkedin.com). Try expanding your browser to 1600px+.'

  # If a job is open in the 4col layout and the user shrinks their browser,
  # we should hide the results and just show the job related columns
  $(window).resize ->
    if $('body').hasClass('responsive') and $(window).width() < 1600
      console.log 'hide the results'
      $('#facets-col, #results-col, .srp-title').hide()
      $('#details-col, #extra-col').show()
    else
      $('#facets-col, #results-col, .srp-title').show()
