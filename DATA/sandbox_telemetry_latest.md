# sandbox_telemetry_parse — 2026-10-29 14:22:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=413039 lines=1068
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 841 |
| `chrome_profile_sample` | 138 |
| `egress_tunnel_desktop` | 39 |
| `egress_tunnel_connect` | 39 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 841} |
| `chromeGpuPssKb` | {'int': 841} |
| `chromeOtherPssKb` | {'int': 841} |
| `chromeProcesses` | {'int': 841} |
| `chromeProfiles` | {'int': 841} |
| `chromeRendererMaxPssKb` | {'int': 841} |
| `chromeRendererPssKb` | {'int': 841} |
| `chromeRenderers` | {'int': 841} |
| `chromeTabs` | {'int': 841} |
| `chromeTabsProbedProfiles` | {'int': 841} |
| `chromeUtilityPssKb` | {'int': 841} |
| `desktopPssKb` | {'int': 841} |
| `hostPssKb` | {'int': 841} |
| `kind` | {'str': 841} |
| `memAvailableKb` | {'int': 841} |
| `memTotalKb` | {'int': 841} |
| `otherPssKb` | {'int': 841} |
| `processes` | {'int': 841} |
| `pssFallbackProcesses` | {'int': 841} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 39} |
| `graceS` | {'int': 21} |
| `kind` | {'str': 39} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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
| `cpuMillicores` | {'int': 136} |
| `display` | {'int': 138} |
| `kind` | {'str': 138} |
| `processes` | {'int': 138} |
| `pssKb` | {'int': 138} |
| `rendererMaxPssKb` | {'int': 138} |
| `renderers` | {'int': 138} |
| `tabs` | {'int': 138} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 39} |
| `failClosed` | {'bool': 39} |
| `kind` | {'str': 39} |
| `route` | {'str': 39} |
| `strict` | {'bool': 39} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
