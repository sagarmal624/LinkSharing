package com.intelligrape.linksharing

import Enums.UserStatus
import LinkSharing.DataTableCO
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {
	private static final long serialVersionUID = 1
	transient springSecurityService
	String username
	String password
	boolean enabled = true
	String firstname
	String lastname
	String email
	Boolean admin
	Boolean active
	String imagePath
	Date dateCreated
	Date lastUpdated
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	static transients = ['springSecurityService','name']
	static hasMany = [topics: Topic, subscriptions: Subscription, resources: Resource, resource_ratings: ResourceRating, readingItems: ReadingItem]
	User(String username, String password,String firstname,String lastname,String email,Boolean admin,Boolean active,
	String imagePath) {
		this()
		this.username = username
		this.password = password
		this.firstname=firstname;
		this.lastname=lastname;
		this.admin=admin;
		this.active=active;
		this.email=email;
		this.imagePath=imagePath;
	}
	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
	}
	def beforeInsert() {
		encodePassword()
	}
	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}
	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
	static constraints = {
		username blank: false, unique: true
		password blank: false
		firstname(blank: false, nullable: false)
		lastname(blank: true, nullable: true)
		email(email: true, blank: false, nullable: false, unique: true)
		admin(defaultValue: true, nullable: true)
		imagePath(nullable: true)
		active(defaultValue: true, nullable: true)
		dateCreated(nullable: true, blank: true)
		lastUpdated(nullable: true, blank: true)
		topics(nullable: true)
		subscriptions(nullable: true)
		resources(nullable: true)
		resource_ratings(nullable: true)
		readingItems(nullable: true)
	}
	static mapping = {
		password column: '`password`'
	}
	public String getName() {
		if (lastname)
			return "${firstname} ${lastname}"
		else
			return "${firstname}"

	}

	public static List<Subscription> getSubscribedTopic(String emailid) {

		List<Subscription> topics = Subscription.createCriteria().list {
			projections {
				property('topic')
			}
			eq('user', User.findByEmail(emailid))
		}
		return topics
	}

	boolean isSubscribed(long topicId) {
		return (Subscription.findByUserAndTopic(this, Topic.get(topicId)))
	}

	public static Map getTotalResourceAndSubscription(User user) {
		int totalSubscription = Subscription.countByUser(user)
		int totalTopic = Topic.countByCreatedBy(user)
		int totalPost = Resource.countByCreatedBy(user)
		return [totalSubscription: totalSubscription, totalTopic: totalTopic, totalPost: totalPost]
	}
	static namedQueries = {
		search { DataTableCO userSearchCO ->
			if (userSearchCO.q) {
				or {
					ilike('firstname', "%${userSearchCO.q}%")
					ilike('lastname', "%${userSearchCO.q}%")
					ilike('username', "%${userSearchCO.q}%")
					ilike('email', "%${userSearchCO.q}%")
				}
				if (userSearchCO.isActive == UserStatus.ACTIVE) {
					eq('active', true)
				} else if (userSearchCO.isActive == UserStatus.INACTIVE) {
					eq('active', false)
				}
			}
		}
	}
}
