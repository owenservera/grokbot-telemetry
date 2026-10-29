# sandbox_telemetry_parse — 2026-10-29 17:11:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=499514 lines=1337
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 997 |
| `chrome_profile_sample` | 201 |
| `egress_tunnel_connect` | 66 |
| `egress_tunnel_desktop` | 58 |
| `chrome_launch` | 4 |
| `egress_time_zone` | 4 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 997} |
| `chromeGpuPssKb` | {'int': 997} |
| `chromeOtherPssKb` | {'int': 997} |
| `chromeProcesses` | {'int': 997} |
| `chromeProfiles` | {'int': 997} |
| `chromeRendererMaxPssKb` | {'int': 997} |
| `chromeRendererPssKb` | {'int': 997} |
| `chromeRenderers` | {'int': 997} |
| `chromeTabs` | {'int': 997} |
| `chromeTabsProbedProfiles` | {'int': 997} |
| `chromeUtilityPssKb` | {'int': 997} |
| `desktopPssKb` | {'int': 997} |
| `hostPssKb` | {'int': 997} |
| `kind` | {'str': 997} |
| `memAvailableKb` | {'int': 997} |
| `memTotalKb` | {'int': 997} |
| `otherPssKb` | {'int': 997} |
| `processes` | {'int': 997} |
| `pssFallbackProcesses` | {'int': 997} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 58} |
| `graceS` | {'int': 32} |
| `kind` | {'str': 58} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `launcher` | {'int': 4} |
| `launcherSource` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 4} |
| `kind` | {'str': 4} |
| `outcome` | {'str': 4} |
| `provider` | {'str': 4} |
| `source` | {'str': 4} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 197} |
| `display` | {'int': 201} |
| `kind` | {'str': 201} |
| `processes` | {'int': 201} |
| `pssKb` | {'int': 201} |
| `rendererMaxPssKb` | {'int': 201} |
| `renderers` | {'int': 201} |
| `tabs` | {'int': 201} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 66} |
| `failClosed` | {'bool': 66} |
| `kind` | {'str': 66} |
| `route` | {'str': 66} |
| `strict` | {'bool': 66} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
