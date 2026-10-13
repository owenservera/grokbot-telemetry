# sandbox_telemetry_parse — 2026-10-13 09:03:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=970037 lines=2407
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1969 |
| `chrome_profile_sample` | 430 |
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
| `chromeBrowserPssKb` | {'int': 1969} |
| `chromeGpuPssKb` | {'int': 1969} |
| `chromeOtherPssKb` | {'int': 1969} |
| `chromeProcesses` | {'int': 1969} |
| `chromeProfiles` | {'int': 1969} |
| `chromeRendererMaxPssKb` | {'int': 1969} |
| `chromeRendererPssKb` | {'int': 1969} |
| `chromeRenderers` | {'int': 1969} |
| `chromeTabs` | {'int': 1969} |
| `chromeTabsProbedProfiles` | {'int': 1969} |
| `chromeUtilityPssKb` | {'int': 1969} |
| `desktopPssKb` | {'int': 1969} |
| `hostPssKb` | {'int': 1969} |
| `kind` | {'str': 1969} |
| `memAvailableKb` | {'int': 1969} |
| `memTotalKb` | {'int': 1969} |
| `otherPssKb` | {'int': 1969} |
| `processes` | {'int': 1969} |
| `pssFallbackProcesses` | {'int': 1969} |

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
| `cpuMillicores` | {'int': 429} |
| `display` | {'int': 430} |
| `kind` | {'str': 430} |
| `processes` | {'int': 430} |
| `pssKb` | {'int': 430} |
| `rendererMaxPssKb` | {'int': 430} |
| `renderers` | {'int': 430} |
| `tabs` | {'int': 430} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
