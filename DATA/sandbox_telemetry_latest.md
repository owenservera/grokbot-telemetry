# sandbox_telemetry_parse — 2026-10-30 17:22:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1174084 lines=3162
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2318 |
| `chrome_profile_sample` | 543 |
| `egress_tunnel_connect` | 196 |
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
| `chromeBrowserPssKb` | {'int': 2318} |
| `chromeGpuPssKb` | {'int': 2318} |
| `chromeOtherPssKb` | {'int': 2318} |
| `chromeProcesses` | {'int': 2318} |
| `chromeProfiles` | {'int': 2318} |
| `chromeRendererMaxPssKb` | {'int': 2318} |
| `chromeRendererPssKb` | {'int': 2318} |
| `chromeRenderers` | {'int': 2318} |
| `chromeTabs` | {'int': 2318} |
| `chromeTabsProbedProfiles` | {'int': 2318} |
| `chromeUtilityPssKb` | {'int': 2318} |
| `desktopPssKb` | {'int': 2318} |
| `hostPssKb` | {'int': 2318} |
| `kind` | {'str': 2318} |
| `memAvailableKb` | {'int': 2318} |
| `memTotalKb` | {'int': 2318} |
| `otherPssKb` | {'int': 2318} |
| `processes` | {'int': 2318} |
| `pssFallbackProcesses` | {'int': 2318} |

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
| `cpuMillicores` | {'int': 534} |
| `display` | {'int': 543} |
| `kind` | {'str': 543} |
| `processes` | {'int': 543} |
| `pssKb` | {'int': 543} |
| `rendererMaxPssKb` | {'int': 543} |
| `renderers` | {'int': 543} |
| `tabs` | {'int': 543} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 196} |
| `failClosed` | {'bool': 196} |
| `kind` | {'str': 196} |
| `route` | {'str': 196} |
| `strict` | {'bool': 196} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
