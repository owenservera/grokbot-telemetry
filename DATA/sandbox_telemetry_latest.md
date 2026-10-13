# sandbox_telemetry_parse — 2026-10-13 06:50:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=898131 lines=2181
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1856 |
| `chrome_profile_sample` | 317 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1856} |
| `chromeGpuPssKb` | {'int': 1856} |
| `chromeOtherPssKb` | {'int': 1856} |
| `chromeProcesses` | {'int': 1856} |
| `chromeProfiles` | {'int': 1856} |
| `chromeRendererMaxPssKb` | {'int': 1856} |
| `chromeRendererPssKb` | {'int': 1856} |
| `chromeRenderers` | {'int': 1856} |
| `chromeTabs` | {'int': 1856} |
| `chromeTabsProbedProfiles` | {'int': 1856} |
| `chromeUtilityPssKb` | {'int': 1856} |
| `desktopPssKb` | {'int': 1856} |
| `hostPssKb` | {'int': 1856} |
| `kind` | {'str': 1856} |
| `memAvailableKb` | {'int': 1856} |
| `memTotalKb` | {'int': 1856} |
| `otherPssKb` | {'int': 1856} |
| `processes` | {'int': 1856} |
| `pssFallbackProcesses` | {'int': 1856} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 316} |
| `display` | {'int': 317} |
| `kind` | {'str': 317} |
| `processes` | {'int': 317} |
| `pssKb` | {'int': 317} |
| `rendererMaxPssKb` | {'int': 317} |
| `renderers` | {'int': 317} |
| `tabs` | {'int': 317} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
