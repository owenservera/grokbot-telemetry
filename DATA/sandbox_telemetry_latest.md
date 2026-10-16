# sandbox_telemetry_parse — 2026-10-16 06:49:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=202608 lines=757
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 492 |
| `memory_sample` | 256 |
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
| `chromeBrowserPssKb` | {'int': 256} |
| `chromeGpuPssKb` | {'int': 256} |
| `chromeOtherPssKb` | {'int': 256} |
| `chromeProcesses` | {'int': 256} |
| `chromeProfiles` | {'int': 256} |
| `chromeRendererMaxPssKb` | {'int': 256} |
| `chromeRendererPssKb` | {'int': 256} |
| `chromeRenderers` | {'int': 256} |
| `chromeTabs` | {'int': 256} |
| `chromeTabsProbedProfiles` | {'int': 256} |
| `chromeUtilityPssKb` | {'int': 256} |
| `desktopPssKb` | {'int': 256} |
| `hostPssKb` | {'int': 256} |
| `kind` | {'str': 256} |
| `memAvailableKb` | {'int': 256} |
| `memTotalKb` | {'int': 256} |
| `otherPssKb` | {'int': 256} |
| `processes` | {'int': 256} |
| `pssFallbackProcesses` | {'int': 256} |

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
| `cpuMillicores` | {'int': 489} |
| `display` | {'int': 492} |
| `kind` | {'str': 492} |
| `processes` | {'int': 492} |
| `pssKb` | {'int': 492} |
| `rendererMaxPssKb` | {'int': 492} |
| `renderers` | {'int': 492} |
| `tabs` | {'int': 491} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
