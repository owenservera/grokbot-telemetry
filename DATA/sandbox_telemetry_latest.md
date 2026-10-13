# sandbox_telemetry_parse — 2026-10-13 08:43:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=957948 lines=2369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1950 |
| `chrome_profile_sample` | 411 |
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
| `chromeBrowserPssKb` | {'int': 1950} |
| `chromeGpuPssKb` | {'int': 1950} |
| `chromeOtherPssKb` | {'int': 1950} |
| `chromeProcesses` | {'int': 1950} |
| `chromeProfiles` | {'int': 1950} |
| `chromeRendererMaxPssKb` | {'int': 1950} |
| `chromeRendererPssKb` | {'int': 1950} |
| `chromeRenderers` | {'int': 1950} |
| `chromeTabs` | {'int': 1950} |
| `chromeTabsProbedProfiles` | {'int': 1950} |
| `chromeUtilityPssKb` | {'int': 1950} |
| `desktopPssKb` | {'int': 1950} |
| `hostPssKb` | {'int': 1950} |
| `kind` | {'str': 1950} |
| `memAvailableKb` | {'int': 1950} |
| `memTotalKb` | {'int': 1950} |
| `otherPssKb` | {'int': 1950} |
| `processes` | {'int': 1950} |
| `pssFallbackProcesses` | {'int': 1950} |

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
| `cpuMillicores` | {'int': 410} |
| `display` | {'int': 411} |
| `kind` | {'str': 411} |
| `processes` | {'int': 411} |
| `pssKb` | {'int': 411} |
| `rendererMaxPssKb` | {'int': 411} |
| `renderers` | {'int': 411} |
| `tabs` | {'int': 411} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
