# sandbox_telemetry_parse — 2026-10-16 23:49:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=933887 lines=3490
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2314 |
| `memory_sample` | 1167 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1167} |
| `chromeGpuPssKb` | {'int': 1167} |
| `chromeOtherPssKb` | {'int': 1167} |
| `chromeProcesses` | {'int': 1167} |
| `chromeProfiles` | {'int': 1167} |
| `chromeRendererMaxPssKb` | {'int': 1167} |
| `chromeRendererPssKb` | {'int': 1167} |
| `chromeRenderers` | {'int': 1167} |
| `chromeTabs` | {'int': 1167} |
| `chromeTabsProbedProfiles` | {'int': 1167} |
| `chromeUtilityPssKb` | {'int': 1167} |
| `desktopPssKb` | {'int': 1167} |
| `hostPssKb` | {'int': 1167} |
| `kind` | {'str': 1167} |
| `memAvailableKb` | {'int': 1167} |
| `memTotalKb` | {'int': 1167} |
| `otherPssKb` | {'int': 1167} |
| `processes` | {'int': 1167} |
| `pssFallbackProcesses` | {'int': 1167} |

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
| `cpuMillicores` | {'int': 2311} |
| `display` | {'int': 2314} |
| `kind` | {'str': 2314} |
| `processes` | {'int': 2314} |
| `pssKb` | {'int': 2314} |
| `rendererMaxPssKb` | {'int': 2314} |
| `renderers` | {'int': 2314} |
| `tabs` | {'int': 2313} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
