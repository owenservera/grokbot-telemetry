# sandbox_telemetry_parse — 2026-10-13 09:31:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=984035 lines=2451
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1991 |
| `chrome_profile_sample` | 452 |
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
| `chromeBrowserPssKb` | {'int': 1991} |
| `chromeGpuPssKb` | {'int': 1991} |
| `chromeOtherPssKb` | {'int': 1991} |
| `chromeProcesses` | {'int': 1991} |
| `chromeProfiles` | {'int': 1991} |
| `chromeRendererMaxPssKb` | {'int': 1991} |
| `chromeRendererPssKb` | {'int': 1991} |
| `chromeRenderers` | {'int': 1991} |
| `chromeTabs` | {'int': 1991} |
| `chromeTabsProbedProfiles` | {'int': 1991} |
| `chromeUtilityPssKb` | {'int': 1991} |
| `desktopPssKb` | {'int': 1991} |
| `hostPssKb` | {'int': 1991} |
| `kind` | {'str': 1991} |
| `memAvailableKb` | {'int': 1991} |
| `memTotalKb` | {'int': 1991} |
| `otherPssKb` | {'int': 1991} |
| `processes` | {'int': 1991} |
| `pssFallbackProcesses` | {'int': 1991} |

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
| `cpuMillicores` | {'int': 451} |
| `display` | {'int': 452} |
| `kind` | {'str': 452} |
| `processes` | {'int': 452} |
| `pssKb` | {'int': 452} |
| `rendererMaxPssKb` | {'int': 452} |
| `renderers` | {'int': 452} |
| `tabs` | {'int': 452} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
