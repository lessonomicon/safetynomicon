# Hygiene

## Think Before Opening

Much of the software we use was designed in more innocent times, and
since companies are almost never held liable for the damage caused by
their software, they have consistently prioritized convenience for the
many over harm to the few. One common example is documents that contain
code called "macros" that automatically execute when the document is
opened. Used for good, a macro can check that an address field has been
filled in correctly. Used for evil, it can email everyone in your
address book, or send a copy of those addresses to anyone in the world.
Microsoft Word and Excel are particularly notorious for this
vulnerability, but many other kinds of documents have the same flaw.

Attempts to get you to open an email attachment, click on a link,
install software, or log into a website are called
[phishing](g:phishing) attacks.  The strongest defense is to never do
these things, but in the modern world that would make most work
impossible. The second-best defense is to take sensible
precautions. If you are able, invest in virus scanning software such
as [Proofpoint][proofpoint] to scan email attachments before you
download them. While many email clients have virus scanning technology
built-in, this will offer an extra layer of protection.

Similarly, don't click links in emails without checking them first:
instead, hover over the link and see if it matches the site it claims to
be. Alternatively, log into the site manually rather than following the
provided link. It takes more time, but is still faster than fixing your
credit rating. And when you go to a web site, check the real domain name
in the URL: paypaI.com with an upper-case "I" instead of a lower-case
"l" is not the site it pretends to be, and `wwwpaypal.com` is a
different domain than `www.paypal.com`.

> Many sites send an email with a random URL to confirm your identity
> when you are resetting your password. On the one hand, this means that
> an attacker has to get access to your email in order to break into
> your account. On the other hand, random URLs are hard to type in, so
> these emails encourage us to click on links in emails. If you are not
> expecting a password reset email, *don't click on the link*.

While phishing attacks are wide-ranging,
[spearphishing](g:spearphishing) describes the use of data harvested
from previous victims to attack specific targets.  Here, the best
defense is to very suspicious emails, e.g., by phoning people to
confirm their identity. It's particularly important to do this when
you are sent things like password reset instructions. Many IT
departments send out messages that are indistinguishable from
spearphishing attacks, which just trains people to be victims.

## Erase Before Discarding

Moving files into the trash and then emptying it does not actually erase
the data: it just tells the computer that the space is available for
reuse. (This is why reporters and private investigators regularly go
dumpster diving.) The best way to address this problem is to encrypt
your hard drive, which is a quick setup option for all major operating
systems these days.

Even with that, you should act as if any device you throw away is going
to fall into unfriendly hands. Use a secure deletion tool like BleachBit
(Linux or Windows) or FileShredder (MacOS) before selling, recycling, or
discarding your hardware, but keep in mind that this doesn't affect
backups or files stored online on sites like Dropbox. And keep in mind
that it is practically impossible to truly delete data from social
networking sites: in most cases, their "delete" usually means "don't
show any more" rather than "erase all past record of".

## Check Devices and Accounts Regularly

Many tech companies who offer free products and services make money by
selling targeted advertising to you using the data they have about you.
They do give users some control over personal data, but they frequently
change their terms of service in opaque ways. Seemingly-innocuous
information can give attackers valuable clues: restaurant "likes" reveal
where you were at specific times, while funny stories about childhood
birthday parties reveal likely answers to security questions. Again,
it's a good practice to get into the habit of checking your privacy
settings every time you do some other regular task.

Unfortunately, even if you do this, information may leak through other
means. For example, attackers can friend your friends in an attempt to
get information about you, such as the name of your first school. And
as bad as social media sites are for social engineering in this way,
cell phone applications are often worse (not even counting the ones
that turn out to be government-sponsored spyware [[Schneier2019](b:Schneier2019)].
In general, if a game wants access to your camera and address book,
you should probably find a different game to play.

Since social media is a fact of life for most of us, you should check
your settings periodically, just as you would take your car in for an
oil change. (The authors do these things at the same time in order to
remember both.) Turn off everything you can and then use a tracking
blocker such as Ghostery to reduce information leakage.

Many experts recommend using separate devices or accounts for work and
personal life, but this is increasingly unrealistic. Everyone checks
their personal email from their work device eventually, and everyone
uses their personal phone for 2FA. However, you should consider getting
a second phone for international travel: the legalities around who can
take your devices and/or force you to unlock them are complicated and
frequently overstepped, so you should assume that anything on or
connected to the devices you are traveling with will be compromised.

> *Never* plug a random USB drive into your device: it's like letting a
> complete stranger into your home unsupervised.

[proofpoint]: https://www.proofpoint.com/us/products/email-protection
