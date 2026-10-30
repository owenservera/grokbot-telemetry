# sandbox_telemetry_parse — 2026-10-30 17:56:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1203530 lines=3290
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2351 |
| `chrome_profile_sample` | 609 |
| `egress_tunnel_connect` | 225 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 8 |
| `egress_time_zone` | 8 |
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
| `chromeBrowserPssKb` | {'int': 2351} |
| `chromeGpuPssKb` | {'int': 2351} |
| `chromeOtherPssKb` | {'int': 2351} |
| `chromeProcesses` | {'int': 2351} |
| `chromeProfiles` | {'int': 2351} |
| `chromeRendererMaxPssKb` | {'int': 2351} |
| `chromeRendererPssKb` | {'int': 2351} |
| `chromeRenderers` | {'int': 2351} |
| `chromeTabs` | {'int': 2351} |
| `chromeTabsProbedProfiles` | {'int': 2351} |
| `chromeUtilityPssKb` | {'int': 2351} |
| `desktopPssKb` | {'int': 2351} |
| `hostPssKb` | {'int': 2351} |
| `kind` | {'str': 2351} |
| `memAvailableKb` | {'int': 2351} |
| `memTotalKb` | {'int': 2351} |
| `otherPssKb` | {'int': 2351} |
| `processes` | {'int': 2351} |
| `pssFallbackProcesses` | {'int': 2351} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 8} |
| `display` | {'int': 8} |
| `durationMs` | {'int': 8} |
| `kind` | {'str': 8} |
| `launcher` | {'int': 8} |
| `launcherSource` | {'str': 8} |
| `mode` | {'str': 8} |
| `outcome` | {'str': 8} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 8} |
| `kind` | {'str': 8} |
| `outcome` | {'str': 8} |
| `provider` | {'str': 8} |
| `source` | {'str': 8} |

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
| `cpuMillicores` | {'int': 600} |
| `display` | {'int': 609} |
| `kind` | {'str': 609} |
| `processes` | {'int': 609} |
| `pssKb` | {'int': 609} |
| `rendererMaxPssKb` | {'int': 609} |
| `renderers` | {'int': 609} |
| `tabs` | {'int': 609} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 225} |
| `failClosed` | {'bool': 225} |
| `kind` | {'str': 225} |
| `route` | {'str': 225} |
| `strict` | {'bool': 225} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
